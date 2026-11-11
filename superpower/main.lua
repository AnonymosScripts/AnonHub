-- Luau · Superpower standalone · Roblox/Delta · Luau
local BOOT_VERSION="0.38.2"
local hub=...
assert(type(hub)=="table" and hub.access,"Abra pelo loader autenticado")
local Players=game:GetService("Players")
local Input=game:GetService("UserInputService")
local Http=game:GetService("HttpService")
local player=Players.LocalPlayer
local links,painted={},{}
local cleanup,quickAction
local alive=true
local accent=Color3.fromRGB(94,190,255)
local function make(class,p,parent)
 local o=Instance.new(class);for k,v in pairs(p) do o[k]=v end;o.Parent=parent;return o
end
local function listen(signal,fn) links[#links+1]=signal:Connect(fn) end
local screen=make("ScreenGui",{Name="AnonHubSuperpower",ResetOnSpawn=false,DisplayOrder=95},player:WaitForChild("PlayerGui"))
local panel=make("Frame",{Size=UDim2.fromScale(.92,.82),Position=UDim2.fromScale(.04,.09),BackgroundColor3=Color3.fromRGB(17,21,30)},screen)
make("UISizeConstraint",{MaxSize=Vector2.new(700,660)},panel)
make("UICorner",{CornerRadius=UDim.new(0,14)},panel)
local title=make("TextLabel",{Text="AnonHub  /  SUPERPOWER",Size=UDim2.new(1,-90,0,48),Position=UDim2.fromOffset(15,0),BackgroundTransparency=1,TextColor3=accent,TextSize=18,Font=Enum.Font.GothamBold,TextXAlignment=Enum.TextXAlignment.Left},panel)
painted[#painted+1]=title
local float=make("TextButton",{Text="SP",Size=UDim2.fromOffset(52,52),Position=UDim2.fromScale(.02,.7),BackgroundColor3=accent,TextColor3=Color3.new(0,0,0),TextSize=18,Font=Enum.Font.GothamBold},screen)
make("UICorner",{CornerRadius=UDim.new(1,0)},float)
local tabs=make("Frame",{Size=UDim2.new(1,-20,0,38),Position=UDim2.fromOffset(10,51),BackgroundTransparency=1},panel)
local pages,buttons={},{}
local function selectPage(name)
 for key,p in pairs(pages) do p.Visible=key==name;buttons[key].BackgroundColor3=key==name and accent or Color3.fromRGB(35,43,58) end
end
local current="Farm"
local function section(name)
 if pages[name] then return pages[name] end
 local p=make("ScrollingFrame",{Name=name,Size=UDim2.new(1,-24,1,-104),Position=UDim2.fromOffset(12,96),BackgroundTransparency=1,ScrollBarThickness=4,CanvasSize=UDim2.new(),AutomaticCanvasSize=Enum.AutomaticSize.Y,Visible=name=="Farm"},panel)
 make("UIListLayout",{Padding=UDim.new(0,7),SortOrder=Enum.SortOrder.LayoutOrder},p)
 local n=0;for _ in pairs(pages) do n+=1 end
 local b=make("TextButton",{Text=name,TextSize=13,TextColor3=Color3.new(1,1,1),Size=UDim2.new(.25,-5,1,0),Position=UDim2.new(n*.25,0,0,0),BackgroundColor3=name=="Farm" and accent or Color3.fromRGB(35,43,58)},tabs)
 pages[name]=p;buttons[name]=b
 listen(b.Activated,function() current=name;selectPage(name) end)
 return p
end
local ui={}
function ui.label(parent,class,text,height,order)
 local o=make(class,{Text=text,Size=UDim2.new(1,-8,0,height),LayoutOrder=order,BackgroundTransparency=class=="TextBox" and 0 or 1,BackgroundColor3=Color3.fromRGB(35,43,58),TextColor3=Color3.fromRGB(231,237,246),TextSize=13,Font=Enum.Font.Gotham,TextWrapped=true},parent)
 return o
end
function ui.button(parent,text,order)
 local b=ui.label(parent,"TextButton",text,42,order);b.BackgroundTransparency=0
 make("UICorner",{CornerRadius=UDim.new(0,8)},b)
 return b
end
local function close()
 if not alive then return end;alive=false
 if cleanup then pcall(cleanup) end
 for _,c in ipairs(links) do c:Disconnect() end
 screen:Destroy()
end
hub.attach(close)
local hide=make("TextButton",{Text="—",Size=UDim2.fromOffset(32,32),Position=UDim2.new(1,-76,0,8)},panel)
local exit=make("TextButton",{Text="×",Size=UDim2.fromOffset(32,32),Position=UDim2.new(1,-38,0,8)},panel)
listen(hide.Activated,function() panel.Visible=false end)
listen(exit.Activated,function() hub.unload() end)
local drag,origin,startPosition,pressedAt,moved
listen(float.InputBegan,function(i)
 if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
  drag=i;origin=i.Position;startPosition=float.Position;pressedAt=os.clock();moved=false
 end
end)
listen(Input.InputChanged,function(i)
 if drag and (i==drag or i.UserInputType==Enum.UserInputType.MouseMovement) then
  local delta=i.Position-origin
  if delta.Magnitude>8 then moved=true end
  if moved then
   local size=screen.AbsoluteSize
   local x=math.clamp(startPosition.X.Scale*size.X+startPosition.X.Offset+delta.X,0,math.max(0,size.X-52))
   local y=math.clamp(startPosition.Y.Scale*size.Y+startPosition.Y.Offset+delta.Y,0,math.max(0,size.Y-52))
   float.Position=UDim2.fromOffset(x,y)
  end
 end
end)
listen(Input.InputEnded,function(i)
 if drag and (i==drag or i.UserInputType==Enum.UserInputType.MouseButton1) then
  if not moved then
   if os.clock()-pressedAt>=.65 then if quickAction then quickAction() end
   else panel.Visible=not panel.Visible end
  end
  drag=nil
 end
end)
listen(Input.InputBegan,function(i,processed)
 if not processed and i.KeyCode==Enum.KeyCode.RightControl then panel.Visible=not panel.Visible end
end)
local init=(function()
-- Luau · superpower/module.lua · AnonHub integration · Roblox/Delta · Luau
-- Implemented against the client inventory captured on 2026-11-11. No Luarmor code used.
local Logic={}
function Logic.protected(data,id,keep)
    local card=data.Cards and data.Cards[id]
    return not card or keep[id] or card.Favorite==true or card.Locked==true
        or table.find(data.Equipped or {},id)~=nil
end
function Logic.sacrificeCount(data,id,keep,reserve,rank,spare,maxRank)
    if Logic.protected(data,id,keep) or rank>(maxRank or 3) then return 0 end
    for _,held in pairs(data.Base and data.Base.Holders or {}) do if held==id then return 0 end end
    return math.min(1000,spare,math.max(0,math.floor(data.Cards[id].Count)-reserve))
end
function Logic.nextBoss(pads,gates)
    for _,pad in ipairs(pads) do if pad.gate and not gates[pad.gate] then return pad end end
end
function Logic.sameList(a,b)
    if #a~=#b then return false end
    for i,v in ipairs(a) do if b[i]~=v then return false end end
    return true
end
-- END PURE LOGIC
return function(ctx)
    assert(game.PlaceId==74183246285569 and game.GameId==10770228857,"Wrong game")
    local ui,page,T=ctx.ui,ctx.page,ctx.T
    local RS=game:GetService("ReplicatedStorage")
    local Players=game:GetService("Players")
    local Http=game:GetService("HttpService")
    local Input=game:GetService("UserInputService")
    local player=Players.LocalPlayer
    local alive=true
    local connections,patches,enemyConnections={},{},{}
    local restoreSettings
    local function cleanup()
        alive=false
        for _,connection in ipairs(connections) do connection:Disconnect() end
        for _,list in pairs(enemyConnections) do for _,connection in ipairs(list) do connection:Disconnect() end end
        table.clear(enemyConnections)
        for i=#patches,1,-1 do local p=patches[i]; if p.object[p.key]==p.replacement then p.object[p.key]=p.original end end
        if restoreSettings then pcall(restoreSettings) end
    end
    ctx.attach(cleanup)
    local order=0
    local function label(text,height)
        order=order+1
        local l=ui.label(page,"TextLabel",text,height or 42,order)
        l.TextSize=12; l.TextWrapped=true
        return l
    end
    local info=label(T("Carregando interfaces do jogo...","Loading game interfaces..."),62)
    local bossInfo=label("",110)
    local log={}
    local function report(text)
        log[#log+1]=os.date("%H:%M:%S").." "..tostring(text)
        if #log>30 then table.remove(log,1) end
        info.Text=tostring(text)
    end
    local cfg={farm=false,progress=false,boss=false,open=false,equip=false,place=false,fuse=false,
        sacrifice=false,tree=false,upgrades=false,abilities=false,boost=false,guard=false,stun=false,
        multiplier=1e12,reserve=1,maxRank=3,protected="",branch="Power",farmMode="Auto",bossId=2,npcId=1,rarities={Common=true,Uncommon=true,Rare=true}}
    local settingsFile="AnonHub_Superpower_"..player.UserId..".json"
    if type(readfile)=="function" then
        local ok,s=pcall(function() return Http:JSONDecode(readfile(settingsFile)) end)
        if ok and type(s)=="table" then
            if type(s.protected)=="string" then cfg.protected=s.protected:sub(1,2000) end
            if type(s.multiplier)=="number" and s.multiplier==s.multiplier then cfg.multiplier=math.clamp(s.multiplier,1,1e12) end
            if type(s.reserve)=="number" and s.reserve==s.reserve then cfg.reserve=math.clamp(math.floor(s.reserve),1,1000) end
            if table.find({"Auto","Boss","NPC"},s.farmMode) then cfg.farmMode=s.farmMode end
            if type(s.bossId)=="number" then cfg.bossId=s.bossId end
            if type(s.npcId)=="number" then cfg.npcId=s.npcId end
            if type(s.rarities)=="table" then cfg.rarities=s.rarities end
            if table.find({"Cash","Luck","Power","Speed","Boss"},s.branch) then cfg.branch=s.branch end
        end
    end
    local function save()
        if type(writefile)=="function" then pcall(writefile,settingsFile,Http:JSONEncode({protected=cfg.protected,multiplier=cfg.multiplier,reserve=cfg.reserve,branch=cfg.branch,farmMode=cfg.farmMode,bossId=cfg.bossId,npcId=cfg.npcId,rarities=cfg.rarities})) end
    end
    local function connect(signal,fn)
        connections[#connections+1]=signal:Connect(fn)
    end
    local function module(path)
        local obj=RS
        for name in path:gmatch("[^/]+") do obj=obj:FindFirstChild(name); assert(obj,"Missing module: "..path) end
        return require(obj)
    end
    local modules={}
    local names={State="Client/Core/PlayerState",Cards="Shared/Config/CardConfig",Stats="Shared/Rules/CardStats",
        Base="Shared/Config/BaseConfig",Shrine="Shared/Rules/Shrine",Progress="Shared/Rules/Progression",
        Big="Shared/Util/Big",Packs="Shared/Config/PackConfig",Opening="Client/UI/Packs/PackOpening",
        Registry="Client/Core/LocalEnemyRegistry",Shields="Shared/Combat/Shields",Ability="Shared/Config/AbilityConfig",
        Settings="Client/Controllers/SettingsController",Power="Shared/Config/PowerConfig"}
    local ok,reason=pcall(function() for name,path in pairs(names) do modules[name]=module(path) end end)
    if not ok then report(reason); return function() alive=false end end
    local State=modules.State
    local remotes=RS:FindFirstChild("Remotes")
    assert(remotes,"Remotes missing")
    local oldAuto=modules.Settings.Get("AutoAttack")
    local changedAuto=false
    restoreSettings=function() if changedAuto then modules.Settings.Set("AutoAttack",oldAuto) end end
    local function setAuto(value)
        if modules.Settings.Get("AutoAttack")~=value then modules.Settings.Set("AutoAttack",value) end
        changedAuto=true
    end
    local function patch(object,key,wrap)
        assert(type(object[key])=="function","Missing function: "..key)
        local original=object[key]
        local replacement=wrap(original)
        object[key]=replacement
        patches[#patches+1]={object=object,key=key,original=original,replacement=replacement}
    end
    local patchOK,patchError=pcall(function()
        patch(modules.Registry,"Damage",function(original)
            return function(target,damage,...)
                if alive and cfg.boost and typeof(target)=="Instance" and target:GetAttribute("Local")==true
                    and type(damage)=="number" and damage>0 and damage<math.huge then
                    damage=math.min(damage*cfg.multiplier,1e100)
                end
                return original(target,damage,...)
            end
        end)
        patch(modules.Shields,"Absorb",function(original)
            return function(target,...)
                if alive and cfg.guard and target==player.Character then return true,false end
                return original(target,...)
            end
        end)
        patch(modules.Shields,"Guarded",function(original)
            return function(target,...)
                if alive and cfg.stun and target==player.Character then return true end
                return original(target,...)
            end
        end)
    end)
    if not patchOK then
        for i=#patches,1,-1 do local p=patches[i]; if p.object[p.key]==p.replacement then p.object[p.key]=p.original end end
        table.clear(patches)
        report("Combate experimental indisponivel: "..tostring(patchError))
    end
    local updates={}
    local function toggle(key,pt,en)
        order=order+1
        local b=ui.button(page,"",order)
        local function update() b.Text=T(pt,en).."  ·  "..(cfg[key] and "ON" or "OFF") end
        updates[#updates+1]=update; update()
        connect(b.Activated,function()
            if (key=="boost" or key=="guard" or key=="stun") and not patchOK then
                report("Interfaces de combate indisponiveis: "..tostring(patchError)); return
            end
            cfg[key]=not cfg[key]
            if key=="progress" then
                for _,k in ipairs({"farm","boss","open","equip","place","fuse","tree","upgrades","abilities"}) do cfg[k]=cfg.progress end
                for _,refresh in ipairs(updates) do refresh() end
            end
            if key=="abilities" or key=="progress" then pcall(setAuto,cfg.abilities) end
            update()
        end)
    end
    ctx.quick(function()
        cfg.progress=not cfg.progress
        for _,k in ipairs({"farm","boss","open","equip","place","fuse","tree","upgrades","abilities"}) do cfg[k]=cfg.progress end
        pcall(setAuto,cfg.abilities)
        for _,refresh in ipairs(updates) do refresh() end
        report(cfg.progress and "Progressao ligada" or "Progressao desligada")
    end)
    toggle("progress","Auto progressao","Auto progression")
    toggle("farm","Farm de inimigos","Enemy farm")
    toggle("boss","Priorizar bosses","Prioritize bosses")
    toggle("abilities","Habilidades automaticas","Automatic abilities")
    page=ctx.section("Cartas")
    toggle("open","Abrir packs","Open packs")
    toggle("equip","Equipar melhor carta","Equip best card")
    toggle("place","Melhores cartas na base","Best cards on base")
    toggle("fuse","Fundir cartas","Fuse cards")
    toggle("tree","Comprar nos da arvore","Buy skill tree nodes")
    toggle("upgrades","Upgrades com dinheiro do jogo","Upgrades with game cash")
    toggle("sacrifice","Sacrificar sobras conforme Ajustes","Sacrifice spares according to Settings")
    label(T("Sacrificio preserva cartas equipadas, posicionadas, protegidas e a reserva. Desligado por padrao.","Sacrifice preserves equipped, placed, protected cards and the reserve. Off by default."),54)
    page=ctx.section("Combate")
    toggle("boost","Dano NPC local ampliado (experimental)","Boost local NPC damage (experimental)")
    toggle("guard","Bloquear dano local (experimental)","Block local damage (experimental)")
    toggle("stun","Bloquear stun local (experimental)","Block local stun (experimental)")
    label(T("Nao garante imunidade no servidor. Multiplicador atua em NPCs marcados Local.","Does not guarantee server immunity. Multiplier affects NPCs marked Local."),42)
    label(T("Farm usa teleporte ate o alvo selecionado.","Farm teleports to the selected target."),36)
    page=ctx.section("Ajustes")
    local function textbox(key,caption,parse)
        label(caption,28); order=order+1
        local box=ui.label(page,"TextBox",tostring(cfg[key]),38,order)
        box.TextEditable=true; box.ClearTextOnFocus=false
        connect(box.FocusLost,function()
            local v=parse(box.Text)
            if v~=nil then cfg[key]=v; save() end
            box.Text=tostring(cfg[key])
        end)
    end
    textbox("multiplier",T("Multiplicador (1 ate 1000000000000)","Multiplier (1 to 1000000000000)"),function(s)
        local n=tonumber(s); if n and n==n and n<math.huge then return math.clamp(n,1,1e12) end
    end)
    textbox("reserve",T("Copias reservadas por carta","Reserved copies per card"),function(s)
        local n=tonumber(s); if n and n==n and n<math.huge then return math.clamp(math.floor(n),1,1000) end
    end)
    textbox("protected",T("IDs de cartas protegidas, separados por virgula","Protected card IDs, comma separated"),function(s) return s:sub(1,2000) end)
    label(T("Raridades permitidas no sacrificio (selecao individual)","Allowed sacrifice rarities (individual selection)"),42)
    local rarityNames={Common="Comum",Uncommon="Incomum",Rare="Rara",Epic="Epica",Legendary="Lendaria",Mythic="Mitica",God="Divina",Secret="Secreta",Cosmic="Cosmica",Ancient="Ancestral"}
    for _,rarity in ipairs(modules.Cards.RarityOrder) do
        order=order+1
        local b=ui.button(page,"",order)
        local function refresh() b.Text=T(rarityNames[rarity] or rarity,rarity).." · "..(cfg.rarities[rarity]==true and "ON" or "OFF") end
        refresh()
        connect(b.Activated,function() cfg.rarities[rarity]=not cfg.rarities[rarity];save();refresh() end)
    end
    textbox("branch",T("Ramo: Cash, Luck, Power, Speed ou Boss","Branch: Cash, Luck, Power, Speed or Boss"),function(s)
        return table.find({"Cash","Luck","Power","Speed","Boss"},s) and s or nil
    end)
    local function keepSet()
        local keep={}; for s in cfg.protected:gmatch("[^,]+") do keep[s:match("^%s*(.-)%s*$")]=true end; return keep
    end
    local pads={}
    local padRoot=RS:FindFirstChild("EnemyPads")
    if padRoot then for _,p in ipairs(padRoot:GetChildren()) do
        local a=p:GetAttributes()
        pads[#pads+1]={id=tonumber(p.Name),level=a.Level or 1,gate=a.Gate,enemy=a.Enemy,name=a.Name or a.Enemy,
            respawn=a.RespawnTime or 90,cf=a.PadCFrame}
    end end
    table.sort(pads,function(a,b) return a.level<b.level end)
    local padById={}; for _,p in ipairs(pads) do padById[p.id]=p end
    local settingsPage=page
    page=ctx.section("Farm")
    local targetInfo=label("",54)
    local function selector(caption,key,options)
        order=order+1
        local b=ui.button(page,"",order)
        order=order+1
        local list=Instance.new("ScrollingFrame")
        list.Size=UDim2.new(1,-8,0,160);list.LayoutOrder=order;list.Visible=false
        list.BackgroundTransparency=1;list.ScrollBarThickness=5
        list.CanvasSize=UDim2.new();list.AutomaticCanvasSize=Enum.AutomaticSize.Y;list.Parent=page
        local layout=Instance.new("UIListLayout");layout.Padding=UDim.new(0,4);layout.SortOrder=Enum.SortOrder.LayoutOrder;layout.Parent=list
        local function update()
            local selected="Selecione"
            for _,option in ipairs(options) do if option.id==cfg[key] then selected=option.text end end
            b.Text=caption..": "..selected.." ▼"
        end
        for i,option in ipairs(options) do
            local row=ui.button(list,option.text,i)
            connect(row.Activated,function() cfg[key]=option.id;list.Visible=false;save();update() end)
        end
        connect(b.Activated,function() list.Visible=not list.Visible end)
        update()
    end
    selector(T("Modo de farm","Farm mode"),"farmMode",{{id="Auto",text="Progressao automatica"},{id="Boss",text="Boss escolhido"},{id="NPC",text="Area de NPCs escolhida"}})
    local bosses,areas={},{}
    for _,pad in ipairs(pads) do
        local option={id=pad.id,text=pad.name.." / "..pad.enemy.." · Lv "..pad.level.." · "..pad.respawn.."s"}
        if pad.gate then bosses[#bosses+1]=option else areas[#areas+1]=option end
    end
    selector("Boss","bossId",bosses)
    selector(T("Area de NPCs","NPC area"),"npcId",areas)
    label(T("Escolher o alvo nao liga o farm. Ative Farm ou Auto progressao acima.","Selecting a target does not start farming. Enable Farm or Auto progression above."),46)
    page=settingsPage
    local enemyRoot=workspace:FindFirstChild("Enemies")
    local watched=setmetatable({}, {__mode="k"})
    local respawns={}
    local function watch(enemy)
        if watched[enemy] then return end
        local h=enemy:FindFirstChildOfClass("Humanoid")
        if not h then return end
        watched[enemy]=true
        local list={}
        enemyConnections[enemy]=list
        list[#list+1]=h.Died:Connect(function()
            local pad=padById[enemy:GetAttribute("PadId")]
            if pad and pad.gate then respawns[pad.id]=os.clock()+pad.respawn end
        end)
        list[#list+1]=enemy.AncestryChanged:Connect(function()
            if enemy.Parent~=enemyRoot then
                for _,connection in ipairs(list) do connection:Disconnect() end
                enemyConnections[enemy]=nil; watched[enemy]=nil
            end
        end)
        if enemy:GetAttribute("Boss")==true then respawns[enemy:GetAttribute("PadId")]=nil end
    end
    local pending=false
    local backoff={}
    local function call(name,...)
        if not alive or pending or os.clock()<(backoff[name] or 0) then return nil end
        local remote=remotes:FindFirstChild(name)
        if not remote or not remote:IsA("RemoteFunction") then report("RemoteFunction ausente: "..name); return nil end
        pending=true
        local args=table.pack(...)
        local finished,result=false,nil
        task.spawn(function() result=table.pack(pcall(remote.InvokeServer,remote,table.unpack(args,1,args.n))); finished=true; pending=false end)
        local start=os.clock()
        while alive and not finished and os.clock()-start<10 do task.wait(0.1) end
        if not alive then return nil end
        if not finished then report(name..": aguardando servidor; sem repeticao concorrente"); backoff[name]=os.clock()+15; return nil end
        if not result[1] or result[2]==false then
            report(name..": "..tostring(result[3] or result[2])); backoff[name]=os.clock()+8; return nil
        end
        report(name..": resposta recebida")
        return table.unpack(result,2,result.n)
    end
    local actions={}
    actions[1]=function(data)
        if not cfg.open or modules.Opening.Playing then return end
        for pack,count in pairs(data.Packs or {}) do
            if type(count)=="number" and count>0 then
                local n=math.min(count,modules.Packs.MaxOpenAtOnce or 1)
                local previous={}; for card,v in pairs(data.Cards or {}) do previous[card]=v.Level end
                local result=call("OpenPack",pack,n)
                if alive and type(result)=="table" then modules.Opening.Play(pack,function() return result end,previous,nil,n) end
                return
            end
        end
    end
    actions[2]=function(data)
        if not cfg.fuse then return end
        local keep=keepSet()
        for card,v in pairs(data.Cards or {}) do
            if not keep[card] and not v.Favorite and not v.Locked and modules.Stats.Fuse(v) then call("Fuse",card); return end
        end
    end
    actions[3]=function(data)
        if not cfg.equip then return end
        local best=modules.Stats.Best(data.Cards,function(card) return modules.Base.SlotOf(data,card)~=nil end)
        if not Logic.sameList(best,data.Equipped or {}) then call("EquipBest") end
    end
    actions[4]=function(data)
        if not cfg.place or not data.Base then return end
        local best,changed=modules.Base.BestHolders(data)
        if changed then for slot,card in pairs(best) do
            if data.Base.Holders[slot]~=card then call("BasePlace",tonumber(slot),card); return end
        end end
    end
    actions[5]=function(data)
        if not cfg.tree then return end
        if not modules.Shrine.Open(data) then report("Arvore bloqueada: derrote Dominus Infernus (Volcano)."); return end
        local candidates={}
        for _,node in pairs(modules.Shrine.Tree or {}) do
            if node.Branch==cfg.branch and not modules.Shrine.CantBuy(data,node.Id) then candidates[#candidates+1]=node end
        end
        table.sort(candidates,function(a,b) return a.Cost==b.Cost and a.Id<b.Id or a.Cost<b.Cost end)
        if candidates[1] then call("TreeBuy",candidates[1].Id)
        else
            local explanation="Nenhum no elegivel no ramo "..cfg.branch
            for _,node in pairs(modules.Shrine.Tree or {}) do
                if node.Branch==cfg.branch and not modules.Shrine.Owns(data,node.Id) then explanation=tostring(modules.Shrine.CantBuy(data,node.Id)); break end
            end
            report("Arvore: "..explanation)
        end
    end
    actions[6]=function(data)
        if not cfg.sacrifice then return end
        if not modules.Shrine.Open(data) then report("Sacrificio bloqueado: derrote Dominus Infernus (Volcano)."); return end
        local keep=keepSet()
        for card in pairs(data.Cards or {}) do
            local def=modules.Cards.ById[card]
            local rank=def and modules.Cards.RarityRank[def.Rarity] or 999
            local n=Logic.sacrificeCount(data,card,keep,cfg.reserve,rank,modules.Shrine.Spare(data,card),cfg.rarities[def and def.Rarity or ""]==true and 999 or 0)
            if n>0 then call("Sacrifice",card,n); return end
        end
        report("Sacrificio: nenhuma sobra elegivel. Confira reserva, raridade e cartas protegidas em Ajustes.")
    end
    actions[7]=function(data)
        if not cfg.upgrades then return end
        local chosen,price
        for _,up in pairs(modules.Progress.Upgrades or {}) do
            local level=modules.Progress.UpgradeLevel(data,up.Id)
            if level<up.MaxLevel then
                local cost=modules.Progress.UpgradePrice(data,up.Id,level)
                if not modules.Big.lt(data.Cash,cost) and (not price or modules.Big.lt(cost,price)) then chosen=up.Id; price=cost end
            end
        end
        if chosen then call("BuyUpgrade",chosen) end
    end
    local nextAction=1
    task.spawn(function()
        while alive do
            local data=State.Data
            if data and not pending and not modules.Opening.Playing then
                local success,err=pcall(actions[nextAction],data)
                if not success then report(err) end
                nextAction=nextAction%#actions+1
            end
            task.wait(0.8)
        end
    end)
    local nextKey=1
    local lastKey=0
    local function step()
        local data=State.Data
        if not data then report("Aguardando dados replicados..."); return end
        enemyRoot=workspace:FindFirstChild("Enemies")
        local enemies=enemyRoot and enemyRoot:GetChildren() or {}
        local bossLines={}
        local currentBoss=Logic.nextBoss(pads,data.Gates or {})
        local char=player.Character
        local root=char and char:FindFirstChild("HumanoidRootPart")
        local humanoid=char and char:FindFirstChildOfClass("Humanoid")
        local target,score=nil,math.huge
        local level=modules.Power.Level(data.Power or 0)
        local livePads={}
        for _,enemy in ipairs(enemies) do
            watch(enemy)
            local h=enemy:FindFirstChildOfClass("Humanoid")
            local er=enemy:FindFirstChild("HumanoidRootPart")
            if h and h.Health>0 and er then
                local pid=enemy:GetAttribute("PadId")
                if pid then livePads[pid]=true end
                if root then
                    local boss=enemy:GetAttribute("Boss")==true
                    local el=enemy:GetAttribute("Level") or 1
                    local available=cfg.boost or el<=level
                    if cfg.farmMode=="Boss" then available=boss and pid==cfg.bossId
                    elseif cfg.farmMode=="NPC" then available=not boss and pid==cfg.npcId
                    elseif cfg.progress and boss then available=available and currentBoss and pid==currentBoss.id end
                    if available and (cfg.farm or (cfg.boss and boss)) then
                        local rank=(root.Position-er.Position).Magnitude
                        if cfg.boss and boss then rank=rank-100000 end
                        if rank<score then score=rank; target=er end
                    end
                end
            end
        end
        for _,pad in ipairs(pads) do if pad.gate then
            local state=livePads[pad.id] and "VIVO" or (respawns[pad.id] and (math.ceil(math.max(0,respawns[pad.id]-os.clock())).."s estimados") or "nao observado")
            bossLines[#bossLines+1]=pad.enemy..": "..state
        end end
        bossInfo.Text=table.concat(bossLines," | ")
        local selected=cfg.farmMode=="Boss" and padById[cfg.bossId] or cfg.farmMode=="NPC" and padById[cfg.npcId] or currentBoss
        targetInfo.Text=cfg.farmMode.." · "..(selected and selected.name or "Sem alvo").." · "..(target and "Alvo encontrado" or "Aguardando spawn/streaming ou liberacao da area")
        if not (root and humanoid and humanoid.Health>0) or modules.Opening.Playing then return end
        if cfg.farm or cfg.boss then
            if target then
                local delta=root.Position-target.Position
                if delta.Magnitude>10 then
                    local destination=target.Position+(delta.Magnitude>0 and delta.Unit or Vector3.new(0,0,1))*7
                    root.CFrame=CFrame.lookAt(destination,target.Position)
                end
            else
                local chosen=cfg.farmMode=="Boss" and padById[cfg.bossId] or cfg.farmMode=="NPC" and padById[cfg.npcId] or cfg.progress and currentBoss
                if chosen and typeof(chosen.cf)=="CFrame" and (cfg.farmMode~="Auto" or cfg.boost or chosen.level<=level) then
                    local destination=chosen.cf.Position+Vector3.new(0,4,0)
                    if (root.Position-destination).Magnitude>15 then root.CFrame=CFrame.new(destination) end
                end
            end
        end
        if cfg.abilities and target and os.clock()-lastKey>0.6 and not Input:GetFocusedTextBox() then
            lastKey=os.clock()
            local loadout=modules.Ability.Loadout(data)
            if #loadout>0 then
                nextKey=(nextKey-1)%#loadout+1
                local key=modules.Ability.Keys[nextKey]
                if key then
                    local vim=game:GetService("VirtualInputManager")
                    vim:SendKeyEvent(true,key,false,game); vim:SendKeyEvent(false,key,false,game)
                end
                nextKey=nextKey+1
            end
        end
    end
    task.spawn(function()
        while alive do
            local success,err=pcall(step)
            if not success then report(err) end
            task.wait(0.4)
        end
    end)
    order=order+1
    local stop=ui.button(page,T("Parar todas as automacoes","Stop all automation"),order)
    connect(stop.Activated,function()
        for key,value in pairs(cfg) do if type(value)=="boolean" then cfg[key]=false end end
        pcall(setAuto,oldAuto)
        for _,update in ipairs(updates) do update() end
        report(T("Automacoes paradas.","Automation stopped."))
    end)
    order=order+1
    local export=ui.button(page,T("Exportar diagnostico de teste","Export test diagnostics"),order)
    connect(export.Activated,function()
        if type(writefile)=="function" then
            local name="AnonHub_Superpower_Test_"..os.time()..".json"
            local saved,err=pcall(writefile,name,Http:JSONEncode({placeId=game.PlaceId,version=game.PlaceVersion,log=log,config=cfg,patches=patchOK,pending=pending}))
            report(saved and name or tostring(err))
        end
    end)
    report(T("Pronto para teste. Automacoes desligadas.","Ready for testing. Automation is off."))
    return cleanup
end

end)()
local ok,err=pcall(init,{ui=ui,page=section("Farm"),T=function(pt,en) return hub.language=="pt" and pt or en end,
 attach=function(fn) cleanup=fn end,section=section,quick=function(fn) quickAction=fn end})
if not ok then if cleanup then pcall(cleanup);cleanup=nil end;ui.label(section("Farm"),"TextLabel",tostring(err),100,999) end
local settings=section("Ajustes")
ui.label(settings,"TextLabel","Toque SP: abrir/fechar. Segure 0,65s e solte: alternar progressao. Arraste: mover. RightCtrl: painel.",68,900)
local theme=ui.label(settings,"TextBox","5EBEFF",40,902)
theme.ClearTextOnFocus=false
ui.label(settings,"TextLabel","Cor de destaque: hexadecimal (ex.: 5EBEFF)",30,901)
local themeFile="AnonHub_Superpower_Theme.json"
local function apply(hex)
 if not hex:match("^%x%x%x%x%x%x$") then return false end
 accent=Color3.fromRGB(tonumber(hex:sub(1,2),16),tonumber(hex:sub(3,4),16),tonumber(hex:sub(5,6),16))
 float.BackgroundColor3=accent;title.TextColor3=accent;selectPage(current);theme.Text=hex;return true
end
if type(readfile)=="function" then pcall(function() apply(Http:JSONDecode(readfile(themeFile)).hex) end) end
listen(theme.FocusLost,function() local hex=theme.Text:gsub("#",""):upper();if apply(hex) and type(writefile)=="function" then pcall(writefile,themeFile,Http:JSONEncode({hex=hex})) end end)
hub.ready()
