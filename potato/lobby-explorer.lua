-- Luau · Anonymous_Potato_Explorer.luau · Peel THE Potato · Roblox / Delta
-- Leitura de objetos replicados e observação de transições manuais.
local EXPECTED_GAME=10767408330
local SAVE_FILE="Anonymous_Potato_Explorer.json"
local Players=game:GetService("Players")
local Http=game:GetService("HttpService")
local PromptService=game:GetService("ProximityPromptService")
local Storage=game:GetService("ReplicatedStorage")
local player=Players.LocalPlayer
local playerGui=player:WaitForChild("PlayerGui")
if game.GameId~=EXPECTED_GAME then
    warn("Evolvy Lobby: abra Peel THE Potato antes de executar o leitor.")
    return
end

local name="EvolvyLobbyInspector"
local old=playerGui:FindFirstChild(name)
if old then old:Destroy() end
local function make(class,props,parent)
    local object=Instance.new(class)
    for key,value in pairs(props) do object[key]=value end
    object.Parent=parent
    return object
end
local green=Color3.fromRGB(116,231,196)
local pale=Color3.fromRGB(230,241,253)
local dark=Color3.fromRGB(20,30,45)
local gui=make("ScreenGui",{Name=name,ResetOnSpawn=false,DisplayOrder=10002},playerGui)
local panel=make("Frame",{AnchorPoint=Vector2.new(0.5,0),Position=UDim2.new(0.5,0,0,12),
    Size=UDim2.new(0.96,0,0,132),BackgroundColor3=dark,BorderSizePixel=0},gui)
make("UISizeConstraint",{MaxSize=Vector2.new(490,360)},panel)
local function corner(object,radius)
    make("UICorner",{CornerRadius=UDim.new(0,radius)},object)
end
corner(panel,12)
make("TextLabel",{Position=UDim2.fromOffset(12,4),Size=UDim2.new(1,-60,0,23),
    BackgroundTransparency=1,Text="EVOLVY  /  EXPLORADOR V2",TextColor3=green,TextSize=14,
    Font=Enum.Font.GothamBold,TextXAlignment=Enum.TextXAlignment.Left},panel)
local status=make("TextLabel",{Position=UDim2.fromOffset(12,28),Size=UDim2.new(1,-24,0,36),
    BackgroundTransparency=1,Text="Preparando leitura…",TextColor3=pale,TextSize=12,
    Font=Enum.Font.Gotham,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left},panel)
local function button(label,x,y,width,height)
    local object=make("TextButton",{Position=x and UDim2.new(x,7,0,y) or UDim2.new(1,-34,0,y),
        Size=x and UDim2.new(width,-10,0,height) or UDim2.fromOffset(28,height),
        BackgroundColor3=Color3.fromRGB(37,58,77),BorderSizePixel=0,Text=label,TextSize=11,
        TextColor3=pale,Font=Enum.Font.GothamBold},panel)
    corner(object,7)
    return object
end
local scanButton=button("LER AGORA",0,69,1/3,27)
local recordButton=button("GRAVAR 90s",1/3,69,1/3,27)
local copyButton=button("COPIAR JSON",2/3,69,1/3,27)
local savedButton=button("COPIAR SESSÕES SALVAS",0,100,1,25)
local closeButton=button("×",nil,5,nil,23)
local box=make("TextBox",{Position=UDim2.fromOffset(8,132),Size=UDim2.new(1,-16,0,162),
    BackgroundColor3=Color3.fromRGB(10,17,29),BorderSizePixel=0,TextColor3=pale,
    Font=Enum.Font.Code,TextSize=11,TextWrapped=true,MultiLine=true,ClearTextOnFocus=false,
    TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,Visible=false},panel)
corner(box,7)

local terms={"chapter","capitulo","capítulo","queue","fila","lobby","portal","join","play","start",
    "jogar","entrar","skip","pular","teleport","solo","party","elevator","ready","pronto",
    "dificuldade","difficulty","create","criar","server","grupo","match"}
local ignoredScreens={Chat=true,ChatWindow=true,ExperienceChat=true,TextChatService=true,
    AnonymousPotatoHub=true,AnonymousPotatoAccess=true,ExpressivePromptsGui=true,[name]=true}
local function matches(text)
    text=string.lower(text)
    for _,term in ipairs(terms) do
        if string.find(text,term,1,true) then return true end
    end
    return false
end
local function short(value,limit)
    local clean=tostring(value or ""):gsub("[%c]"," ")
    local offset=utf8.offset(clean,(limit or 90)+1)
    return offset and clean:sub(1,offset-1) or clean
end
local function relativePath(object,root)
    local parts={}
    while object and object~=root and #parts<12 do
        table.insert(parts,1,object.Name)
        object=object.Parent
    end
    return short(table.concat(parts,"."),180)
end
local function get(root,path)
    for _,piece in ipairs(path) do
        if not root then return nil end
        root=root:FindFirstChild(piece)
    end
    return root
end
local function rounded(number)
    return math.round(number*100)/100
end
local function vector(value)
    return {rounded(value.X),rounded(value.Y),rounded(value.Z)}
end
local function stage()
    local zones=get(workspace,{"Map","Zones","MatchmakingZones"})
    local stations=get(workspace,{"Map","PeelingMachines"})
    local pile=workspace:FindFirstChild("PotatoPile")
    if zones and not stations and not pile then return "lobby" end
    if not zones and (stations or pile) then return "chapter" end
    return "transition"
end
local function actor()
    local character=player.Character
    return character and character:FindFirstChild("HumanoidRootPart")
end
local function screenInScope(screen)
    if not screen or ignoredScreens[screen.Name] then return false end
    local n=string.lower(screen.Name)
    return n=="queue" or n=="teleporting" or n=="timer" or n=="keyreveal" or n=="crates"
        or n=="delivery" or n=="peeling" or string.find(n,"cutscene",1,true)
        or string.find(n,"intro",1,true) or string.find(n,"outro",1,true)
        or string.find(n,"report",1,true) or string.find(n,"escape",1,true)
        or string.find(n,"lobby",1,true) or string.find(n,"victory",1,true)
end
local function visible(object)
    while object and object~=playerGui do
        if object:IsA("GuiObject") and not object.Visible then return false end
        if object:IsA("LayerCollector") and not object.Enabled then return false end
        object=object.Parent
    end
    return object==playerGui
end
local function buttonLabel(button)
    if button:IsA("TextButton") and button.Text~="" then return short(button.Text) end
    for _,child in ipairs(button:GetChildren()) do
        if child:IsA("TextLabel") and child.Visible and child.Text~="" then return short(child.Text) end
    end
    return ""
end
local function promptData(prompt)
    local parent=prompt.Parent
    local pos=parent and (parent:IsA("Attachment") and parent.WorldPosition
        or parent:IsA("BasePart") and parent.Position or nil)
    return {path=relativePath(prompt,workspace),action=short(prompt.ActionText),
        object=short(prompt.ObjectText),enabled=prompt.Enabled,hold=prompt.HoldDuration,
        key=prompt.KeyboardKeyCode.Name,distance=prompt.MaxActivationDistance,
        pos=pos and {math.round(pos.X),math.round(pos.Y),math.round(pos.Z)} or nil}
end
local function readUi()
    local result={screens={},buttons={},labels={}}
    for _,screen in ipairs(playerGui:GetChildren()) do
        if screen:IsA("ScreenGui") and screenInScope(screen) then
            if #result.screens<35 then table.insert(result.screens,{screen.Name,screen.Enabled}) end
            if screen.Enabled then
                for _,item in ipairs(screen:GetDescendants()) do
                    if item:IsA("GuiButton") and #result.buttons<24 and visible(item) then
                        local path=relativePath(item,playerGui)
                        local label=buttonLabel(item)
                        if screen.Name=="Queue" or screen.Name=="Teleporting" or matches(path.." "..label) then
                            table.insert(result.buttons,{path,label,item.Active})
                        end
                    elseif item:IsA("TextLabel") and #result.labels<10 and visible(item) then
                        local path=relativePath(item,playerGui)
                        if screen.Name=="Queue" or screen.Name=="Teleporting" or matches(path) then
                            table.insert(result.labels,{path,short(item.Text)})
                        end
                    end
                end
            end
        end
    end
    return result
end
local publicAttributes={Chapter=true,ChapterId=true,ChapterIndex=true,QueueId=true,QueueSize=true,
    MaxPlayers=true,MinPlayers=true,PlayerCount=true,Countdown=true,PlaceId=true,Locked=true,
    Enabled=true,Difficulty=true,Selected=true,Checked=true,Active=true,SkipIntro=true,FriendsOnly=true}
local function attributes(object)
    local values={}
    for key,value in pairs(object:GetAttributes()) do
        if publicAttributes[key] then
            if type(value)=="boolean" or type(value)=="number" then values[key]=value
            elseif type(value)=="string" then values[key]=short(value,48) end
        end
    end
    return next(values) and values or nil
end
local function readBranch(root,limit)
    local result={nodes={},prompts={},signs={}}
    if not root then return nil end
    local queue={root}
    local index=1
    while index<=#queue and index<=limit do
        local object=queue[index]
        index+=1
        local path=relativePath(object,workspace)
        if object:IsA("ProximityPrompt") and #result.prompts<20 then
            table.insert(result.prompts,promptData(object))
        elseif object:IsA("TextLabel") and object.Text~="" and #result.signs<12 then
            table.insert(result.signs,{path,short(object.Text,60)})
        elseif #result.nodes<40 and (object:IsA("BasePart") or object:IsA("Model")
            or object:IsA("Attachment") or object:IsA("Folder") or object:IsA("TouchTransmitter") or object:IsA("ClickDetector")) then
            local row={path=path,class=object.ClassName,attributes=attributes(object)}
            if object:IsA("BasePart") then
                row.pos=vector(object.Position)
                row.size=vector(object.Size)
                row.yaw=rounded(object.Orientation.Y)
                row.touch=object.CanTouch
                row.query=object.CanQuery
                row.collision=object.CanCollide
            elseif object:IsA("Attachment") then row.pos=vector(object.WorldPosition) end
            table.insert(result.nodes,row)
        end
        for _,child in ipairs(object:GetChildren()) do
            if #queue>=limit+1 then break end
            table.insert(queue,child)
        end
        if index%250==0 then task.wait() end
    end
    result.truncated=index<=#queue
    return result
end
local function readWorld()
    local result={branches={},lobby_signs={}}
    local map=workspace:FindFirstChild("Map")
    local zones=map and map:FindFirstChild("Zones")
    local matchmaking=zones and zones:FindFirstChild("MatchmakingZones")
    result.branches.matchmaking=readBranch(matchmaking,320)
    if zones then
        result.zone_names={}
        for index,child in ipairs(zones:GetChildren()) do
            if index>20 then break end
            result.zone_names[index]={child.Name,child.ClassName}
        end
    end
    local terrain=workspace:FindFirstChildOfClass("Terrain")
    for _,sign in ipairs(terrain and terrain:GetChildren() or {}) do
        if sign.Name=="ChapterSign" and #result.lobby_signs<8 then
            table.insert(result.lobby_signs,readBranch(sign,35))
        end
    end
    result.branches.stations=readBranch(map and map:FindFirstChild("PeelingMachines"),230)
    result.branches.exit=readBranch(map and map:FindFirstChild("Cutscene"),180)
    result.branches.water=readBranch(map and map:FindFirstChild("Water"),90)
    local pile=workspace:FindFirstChild("PotatoPile")
    if pile then
        local children=pile:GetChildren()
        local sample={}
        for index=1,math.min(#children,5) do sample[index]={children[index].Name,children[index].ClassName} end
        result.pile={count=#children,sample=sample}
    end
    return result
end
local packetTable=nil
local packetNames={"QueueJoined","QueueLeft","QueueTeleporting","QueueCreate","QueueLeave",
    "IntroCutscenePlay","IntroCutsceneFinished","Escaped","EscapeFailed","RunReportShown",
    "CinematicBarsEnabled","CinematicBarsDisabled"}
local function exportsOf(value,withConstants)
    local rows={}
    local keys={}
    for key in pairs(value) do
        if type(key)=="string" and key:sub(1,1)~="_" then table.insert(keys,key) end
    end
    table.sort(keys)
    for index=1,math.min(#keys,24) do
        local key=keys[index]
        local item=rawget(value,key)
        local row={name=key,kind=typeof(item)}
        if type(item)=="function" then
            local ok,arity,variadic=pcall(debug.info,item,"a")
            if ok then row.args=arity row.variadic=variadic end
        elseif withConstants then
            if type(item)=="number" or type(item)=="boolean" then row.value=item
            elseif type(item)=="string" then row.value=short(item,48)
            elseif type(item)=="table" then
                row.keys={}
                for sub in pairs(item) do
                    if #row.keys>=10 then break end
                    if type(sub)=="string" or type(sub)=="number" then table.insert(row.keys,short(sub,36)) end
                end
            end
        end
        table.insert(rows,row)
    end
    return rows
end
local function readModules()
    local result={modules={},remote_instances={},packet_ids={},exports={},packet_shapes={}}
    local inspected={
        {"Controllers","QueueController"},{"Controllers","LobbyZoneController"},{"Controllers","ServerTypeController"},
        {"Controllers","Chapter2IntroController"},{"Controllers","Chapter2OutroController"},
        {"Shared","QueueShared"},{"Shared","ChapterShared"},{"Modules","Resources","Packets"},
    }
    for _,path in ipairs({{"Controllers"},{"Shared"},{"Modules","Resources"}}) do
        local folder=Storage
        for _,namePart in ipairs(path) do folder=folder and folder:FindFirstChild(namePart) end
        for _,item in ipairs(folder and folder:GetChildren() or {}) do
            if #result.modules<32 and item:IsA("ModuleScript") and matches(item.Name) then
                table.insert(result.modules,relativePath(item,Storage))
            end
        end
    end
    local packets=Storage:FindFirstChild("ModifiedPackages")
    packets=packets and packets:FindFirstChild("Packet")
    if packets then
        for _,remote in ipairs(packets:GetChildren()) do
            if remote:IsA("RemoteEvent") or remote:IsA("RemoteFunction") then
                table.insert(result.remote_instances,relativePath(remote,Storage))
                local count=0
                for attribute,id in pairs(remote:GetAttributes()) do
                    if count<30 and type(id)=="number" and matches(attribute) then
                        result.packet_ids[attribute]=id
                        count+=1
                    end
                end
            end
        end
    end
    if type(getloadedmodules)~="function" then result.export_status="getloadedmodules indisponivel" return result end
    local ok,loaded=pcall(getloadedmodules)
    if not ok or type(loaded)~="table" then result.export_status="lista de modulos indisponivel" return result end
    local known={}
    for _,item in pairs(loaded) do known[item]=true end
    for _,path in ipairs(inspected) do
        local module=get(Storage,path)
        local label=table.concat(path,".")
        if module and known[module] then
            local done,success,value=false,false,nil
            task.spawn(function()
                success,value=pcall(require,module)
                done=true
            end)
            local deadline=os.clock()+0.45
            while not done and gui.Parent and os.clock()<deadline do task.wait() end
            if success and type(value)=="table" then
                if label=="Modules.Resources.Packets" then
                    packetTable=value
                    for _,name in ipairs(packetNames) do
                        local packet=value[name]
                        if type(packet)=="table" then
                            result.packet_shapes[name]={id=packet.Id,
                                writes=type(packet.Writes)=="table" and #packet.Writes or nil,
                                reads=type(packet.Reads)=="table" and #packet.Reads or nil}
                        end
                    end
                else result.exports[label]=exportsOf(value,path[1]=="Shared") end
            else result.exports[label]={status=done and "exportacao indisponivel" or "tempo limite"} end
        else result.exports[label]={status=module and "nao listado entre os carregados" or "modulo ausente"} end
    end
    return result
end
local function childIndicator(button)
    if not button or not button:IsA("GuiButton") then return nil end
    local row={visible=visible(button),active=button.Active,attributes=attributes(button),visual={}}
    row.background=button.BackgroundColor3:ToHex()
    if button:IsA("ImageButton") then row.tint=button.ImageColor3:ToHex() end
    for _,child in ipairs(button:GetDescendants()) do
        if #row.visual>=8 then break end
        local n=string.lower(child.Name)
        if n:find("select",1,true) or n:find("check",1,true) or n:find("toggle",1,true)
            or n:find("active",1,true) or n:find("enabled",1,true) or n=="on" or n=="off" then
            if child:IsA("GuiObject") then table.insert(row.visual,{child.Name,child.Visible,child.BackgroundColor3:ToHex()})
            elseif child:IsA("UIStroke") then table.insert(row.visual,{child.Name,child.Enabled}) end
        end
    end
    return row
end
local function queueState()
    local queue=playerGui:FindFirstChild("Queue")
    local setup=queue and queue:FindFirstChild("Setup")
    local selectors=queue and queue:FindFirstChild("ChapterSelect")
    local content=setup and setup:FindFirstChild("Content")
    local data={phase=stage(),select=selectors and visible(selectors) or false,setup=setup and visible(setup) or false}
    local teleport=playerGui:FindFirstChild("Teleporting")
    data.teleport_screen=teleport and teleport:IsA("ScreenGui") and teleport.Enabled or false
    if data.setup then
        data.sizes={}
        for index=1,4 do data.sizes[index]=childIndicator(get(content,{"Sizes",tostring(index)})) or false end
        data.friends_only=childIndicator(get(content,{"Options","FriendsOnly"}))
        data.skip_intro=childIndicator(get(content,{"Options","SkipIntro"}))
        local create=get(content,{"CreateHolder","Create"})
        data.deploy=create and visible(create) and create.Active or false
    end
    local leave=queue and queue:FindFirstChild("Leave")
    data.leave=leave and visible(leave) or false
    return data
end
local function zoneAtSelector()
    local root=actor()
    local position=root and root.Position
    local zones=get(workspace,{"Map","Zones","MatchmakingZones"})
    if not position or not zones then return nil end
    local parts={}
    for _,item in ipairs(zones:GetDescendants()) do
        if item:IsA("BasePart") then
            local p=item.CFrame:PointToObjectSpace(position)
            local half=item.Size/2
            local x,z=math.max(0,math.abs(p.X)-half.X),math.max(0,math.abs(p.Z)-half.Z)
            local distance=math.sqrt(x*x+z*z)
            if distance<=12 and math.abs(p.Y)<=half.Y+10 then
                table.insert(parts,{path=relativePath(item,workspace),horizontal_distance=rounded(distance),
                    inside_xz=distance==0,area=rounded(item.Size.X*item.Size.Z),
                    pos=vector(item.Position),size=vector(item.Size),yaw=rounded(item.Orientation.Y)})
            end
        end
    end
    table.sort(parts,function(a,b)
        if a.horizontal_distance~=b.horizontal_distance then return a.horizontal_distance<b.horizontal_distance end
        return a.area<b.area
    end)
    while #parts>8 do table.remove(parts) end
    return {position=vector(position),nearby=parts}
end
local function readArchive()
    if type(readfile)~="function" then return {schema=2,sessions={}} end
    local ok,value=pcall(function()
        local saved=readfile(SAVE_FILE)
        if #saved>160000 then return nil end
        return Http:JSONDecode(saved)
    end)
    if ok and type(value)=="table" and value.schema==2 and type(value.sessions)=="table" then return value end
    return {schema=2,sessions={}}
end
local archive=readArchive()
local report={schema=2,game_id=game.GameId,place_id=game.PlaceId,place_version=game.PlaceVersion,
    actions={},ui_changes={},route={},phase=stage()}
local archiveSlot=nil
local watching,reading=false,false
local started=0
local dirty=false
local connections={}
local watched=setmetatable({},{__mode="k"})
local function saveRecord()
    if not archiveSlot and report.phase~="transition" then
        archiveSlot=report.phase
        if archiveSlot=="lobby" and archive.sessions.chapter and archive.sessions.lobby then
            archiveSlot="return_lobby"
        end
    end
    archive.sessions[archiveSlot or "transition"]=report
    if type(writefile)=="function" then
        pcall(function() writefile(SAVE_FILE,Http:JSONEncode(archive)) end)
    end
end
local function seconds()
    return math.round((os.clock()-started)*100)/100
end
local function record(kind,value)
    if not watching or #report.actions>=35 then return end
    table.insert(report.actions,{t=seconds(),kind=kind,value=value})
    dirty=true
    saveRecord()
end
local function watchButton(item)
    if not item:IsA("GuiButton") or watched[item] then return end
    local screen=item:FindFirstAncestorWhichIsA("ScreenGui")
    if not screenInScope(screen) or #connections>=170 then return end
    watched[item]=true
    table.insert(connections,item.Activated:Connect(function()
        local path=relativePath(item,playerGui)
        local label=buttonLabel(item)
        if screen.Name=="Queue" or matches(path.." "..label) then record("button",{path,label}) end
    end))
end
local function stop()
    if not watching then return end
    watching=false
    for _,connection in ipairs(connections) do connection:Disconnect() end
    table.clear(connections)
    table.clear(watched)
    report.recorded_seconds=seconds()
    saveRecord()
    recordButton.Text="GRAVAR 90s"
    status.Text="Gravação pronta. Toque em COPIAR JSON."
end
local function capture()
    if reading or watching then return end
    reading=true
    status.Text="Lendo capítulos, botões e prompts…"
    local ok,err=pcall(function()
        report.world=readWorld()
        report.ui=readUi()
        report.resources=readModules()
        if report.phase=="transition" then report.phase=stage() end
    end)
    reading=false
    if gui.Parent then
        status.Text=ok and "Leitura pronta. Copie agora ou grave enquanto navega no lobby."
            or "Leitura interrompida: "..short(err,100)
    end
end
local function begin()
    if watching then stop() return end
    if reading then return end
    capture()
    if not gui.Parent then return end
    report.actions={} report.ui_changes={} report.route={} report.selector_zone=nil report.recorded_seconds=nil
    watching=true started=os.clock() dirty=false
    recordButton.Text="PARAR"
    status.Text="Gravando. Selecione o capítulo e a fila manualmente."
    table.insert(connections,playerGui.DescendantAdded:Connect(watchButton))
    for _,item in ipairs(playerGui:GetDescendants()) do watchButton(item) end
    table.insert(connections,PromptService.PromptTriggered:Connect(function(prompt,who)
        local map=workspace:FindFirstChild("Map")
        if who==player and map and prompt:IsDescendantOf(map) then record("prompt",promptData(prompt)) end
    end))
    table.insert(connections,player.OnTeleport:Connect(function(state,placeId)
        record("teleport",{state=state.Name,place_id=placeId})
    end))
    for _,name in ipairs(packetNames) do
        local packet=packetTable and packetTable[name]
        local signal=type(packet)=="table" and packet.OnClientEvent
        if signal and type(signal.Connect)=="function" then
            local packetName=name
            local ok,connection=pcall(signal.Connect,signal,function(...)
                local types={}
                for index=1,math.min(select("#",...),8) do types[index]=typeof(select(index,...)) end
                record("packet_received",{name=packetName,types=types})
            end)
            if ok and connection then table.insert(connections,connection) end
        end
    end
    saveRecord()
    local run=started
    task.spawn(function()
        local last=report.ui and Http:JSONEncode(report.ui.buttons)
        local lastRoute=nil
        local nextUiAt=0
        while watching and started==run and gui.Parent and seconds()<90 do
            task.wait(0.35)
            if not watching or started~=run or not gui.Parent then return end
            local route=queueState()
            if report.phase=="transition" and route.phase~="transition" then report.phase=route.phase end
            if (route.select or route.setup) and not report.selector_zone then report.selector_zone=zoneAtSelector() end
            local stateDigest=Http:JSONEncode(route)
            if lastRoute~=stateDigest and #report.route<15 then
                lastRoute=stateDigest
                table.insert(report.route,{t=seconds(),state=route})
                saveRecord()
            end
            if os.clock()>=nextUiAt and #report.ui_changes<6 then
                nextUiAt=os.clock()+1
                local ui=readUi()
                local digest=Http:JSONEncode(ui.buttons)
                if digest~=last and (dirty or last~=nil) then
                    local compact={}
                    for index,row in ipairs(ui.buttons) do
                        if index>10 then break end
                        compact[index]=row
                    end
                    table.insert(report.ui_changes,{t=seconds(),buttons=compact})
                    saveRecord()
                end
                last=digest dirty=false
            end
        end
        if watching and started==run and gui.Parent then stop() end
    end)
end
local function copy(value)
    local copier=type(setclipboard)=="function" and setclipboard or type(toclipboard)=="function" and toclipboard
    if copier and pcall(copier,value) then
        status.Text="JSON copiado. Cole aqui no chat."
    else
        box.Text=value box.Visible=true
        panel.Size=UDim2.new(0.96,0,0,302)
        status.Text="O executor não liberou a cópia. Selecione o JSON abaixo."
    end
end
scanButton.Activated:Connect(capture)
recordButton.Activated:Connect(begin)
copyButton.Activated:Connect(function()
    if reading then return end
    stop()
    saveRecord()
    copy(Http:JSONEncode(report))
end)
savedButton.Activated:Connect(function()
    if next(archive.sessions) then copy(Http:JSONEncode(archive))
    else status.Text="Nenhuma sessão anterior disponível neste executor." end
end)
closeButton.Activated:Connect(function() stop() gui:Destroy() end)
gui.Destroying:Connect(stop)
task.defer(capture)
