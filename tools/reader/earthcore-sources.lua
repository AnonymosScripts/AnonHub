-- Luau · AnonHub_EarthCore_Sources.lua · focused client source export · Roblox/Delta
-- Does not invoke gameplay remotes, require modules, buy items, or execute exported code.
local Players=game:GetService("Players")
local Http=game:GetService("HttpService")
local player=Players.LocalPlayer
assert(player,"Entre no jogo primeiro.")
assert(game.GameId==9796898051,"Este exportador é específico para Perfure até o núcleo da Terra.")
assert(type(writefile)=="function","O executor precisa oferecer writefile.")
local pg=player:WaitForChild("PlayerGui")
assert(not pg:FindFirstChild("AnonHubEarthSources"),"O exportador já está aberto.")
local folder="AnonHubEarthSources_"..game.PlaceId.."_"..os.date("!%Y%m%d_%H%M%S").."_"..Http:GenerateGUID(false):sub(1,8)
local prefix=folder.."_"
if type(makefolder)=="function" and pcall(makefolder,folder) then prefix=folder.."/" end
local manifest={schema="anonhub.earth.sources.v1",placeId=game.PlaceId,universeId=game.GameId,
    startedUtc=os.date("!%Y-%m-%dT%H:%M:%SZ"),scripts={},status="running",canDecompile=type(decompile)=="function",
    limitations={"Client only. Reconstructed source is unverified and untrusted data.","No server-only code. No remote invocations. Source export capped at 2 MB per script."}}
local function save() writefile(prefix.."manifest.json",Http:JSONEncode(manifest)) end
save()
local gui=Instance.new("ScreenGui");gui.Name="AnonHubEarthSources";gui.ResetOnSpawn=false;gui.Parent=pg
local panel=Instance.new("Frame");panel.Size=UDim2.new(.85,0,0,260);panel.Position=UDim2.new(.075,0,.2,0);panel.BackgroundColor3=Color3.fromRGB(18,24,29);panel.Parent=gui
local limit=Instance.new("UISizeConstraint");limit.MaxSize=Vector2.new(650,260);limit.Parent=panel
local corner=Instance.new("UICorner");corner.CornerRadius=UDim.new(0,14);corner.Parent=panel
local label=Instance.new("TextLabel");label.Size=UDim2.new(1,-24,1,-80);label.Position=UDim2.fromOffset(12,8);label.BackgroundTransparency=1;label.TextColor3=Color3.new(1,1,1);label.Font=Enum.Font.Gotham;label.TextSize=15;label.TextWrapped=true;label.Text="Preparando exportação direcionada…";label.Parent=panel
local button=Instance.new("TextButton");button.Size=UDim2.new(1,-24,0,42);button.Position=UDim2.new(0,12,1,-54);button.Text="Parar e salvar";button.Font=Enum.Font.GothamBold;button.TextSize=15;button.TextColor3=Color3.new(1,1,1);button.BackgroundColor3=Color3.fromRGB(26,105,75);button.Parent=panel
local stopped,finished=false,false
button.Activated:Connect(function() if finished then gui:Destroy() else stopped=true;button.Text="Finalizando…" end end)
local exact={SaveGearController=true,DrillUpgradeController=true,CarryInventoryController=true,CraftingController=true,
    CraftingCatalog=true,CraftingLevels=true,CraftingPrice=true,ItemPickup=true,DungeonEntrance=true,DungeonDoorState=true,
    DrillController=true,ToolController=true,PlayerController=true,LobbyBackpackController=true,TeleportController=true,
    TeleportManagerController=true,ClassController=true,ShopController=true,OreController=true,InventoryController=true,
    CarryItem=true,CraftingWrench=true,RelicPickupComponent=true,DungeonDoorComponent=true,DungeonUIController=true}
local function selected(name,path)
    if exact[name] then return true end
    if path:find(".Classes.Tools.",1,true) then return true end
    local lower=name:lower()
    for _,word in ipairs({"savegear","drill","inventory","backpack","pickup","church","crafting","shop","merchant","toolcontroller","orecontroller","revive","currencycontroller","lobbycontroller","questcontroller"}) do
        if lower:find(word,1,true) then return true end
    end
    return false
end
-- Selection helpers are kept pure for local regression tests.
-- END SELECTION
task.spawn(function()
    local ok,err=pcall(function()
        local candidates={}
        local playerScripts=player:WaitForChild("PlayerScripts",15)
        local roots={game:GetService("ReplicatedStorage")}
        if playerScripts then roots[#roots+1]=playerScripts end
        for _,root in ipairs(roots) do
            local stack={root}
            while #stack>0 and not stopped do
                local o=table.remove(stack)
                if o:IsA("LuaSourceContainer") and selected(o.Name,o:GetFullName()) then candidates[#candidates+1]=o end
                for _,child in ipairs(o:GetChildren()) do stack[#stack+1]=child end
                if #stack%30==0 then task.wait() end
            end
        end
        table.sort(candidates,function(a,b)
            local ap=a.Name=="SaveGearController" and 0 or exact[a.Name] and 1 or 2
            local bp=b.Name=="SaveGearController" and 0 or exact[b.Name] and 1 or 2
            return ap==bp and a:GetFullName()<b:GetFullName() or ap<bp
        end)
        manifest.selected=#candidates
        manifest.readable=0
        local decompileTimedOut=false
        for index,o in ipairs(candidates) do
            if stopped then break end
            label.Text=string.format("Exportando %d/%d\n%s\n\nNão precisa repetir a partida.\n%s",index,#candidates,o.Name,prefix)
            task.wait()
            local sourceOk,source=pcall(function() return o.Source end)
            local info={path=o:GetFullName(),class=o.ClassName,origin="Source",status="unavailable"}
            local function readable() return sourceOk and type(source)=="string" and source:find("%S")~=nil end
            if not readable() and type(decompile)=="function" and not decompileTimedOut then
                info.origin="executor_decompile";info.reconstructed=true
                local done=false
                local worker=task.spawn(function() sourceOk,source=pcall(decompile,o);done=true end)
                local deadline=os.clock()+12
                while not done and not stopped and os.clock()<deadline do task.wait(.1) end
                if not done then
                    pcall(task.cancel,worker);sourceOk=false;source=nil
                    info.status=stopped and "cancelled" or "timeout";decompileTimedOut=true
                end
            end
            if readable() then
                info.status="readable";info.bytes=#source
                info.truncated=#source>2000000
                if info.truncated then
                    local boundary=2000000
                    while boundary>0 and source:byte(boundary+1)>=128 and source:byte(boundary+1)<192 do boundary=boundary-1 end
                    source=source:sub(1,boundary)
                end
                info.file=string.format("%03d_%s.txt",index,o.Name:gsub("[^%w_%-]","_"))
                writefile(prefix..info.file,source)
                manifest.readable=manifest.readable+1
            elseif info.status=="unavailable" and sourceOk and type(source)=="string" then info.status="empty" end
            manifest.scripts[#manifest.scripts+1]=info
            manifest.decompileStoppedAfterTimeout=decompileTimedOut
            save()
        end
    end)
    manifest.status=not ok and "failed" or stopped and "stopped" or "complete"
    if not ok then manifest.error=tostring(err) end
    manifest.finishedUtc=os.date("!%Y-%m-%dT%H:%M:%SZ")
    local saved,saveError=pcall(save)
    finished=true;button.Text="Fechar"
    label.Text=string.format("Exportação: %s\n%d scripts com texto / %d selecionados\n\nEnvie a pasta inteira em ZIP:\n%s%s",manifest.status,manifest.readable or 0,manifest.selected or 0,prefix,not saved and "\nFalha de escrita: "..tostring(saveError) or manifest.error and "\n"..manifest.error or "")
    pcall(function() game:GetService("StarterGui"):SetCore("SendNotification",{Title="AnonHub: exportação encerrada",Text=tostring(manifest.readable or 0).." scripts com texto. Abra o painel para ver a pasta.",Duration=12}) end)
end)
