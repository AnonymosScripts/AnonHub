-- Luau · Anonymous_Potato_Lobby.luau · Peel THE Potato · Roblox / Delta
-- Inspeciona objetos replicados e observa interações manuais no lobby.
local EXPECTED_GAME=10767408330
local SAVE_FILE="Anonymous_Potato_Lobby.json"
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
    BackgroundTransparency=1,Text="EVOLVY  /  LEITOR DO LOBBY",TextColor3=green,TextSize=14,
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
local recordButton=button("GRAVAR 40s",1/3,69,1/3,27)
local copyButton=button("COPIAR JSON",2/3,69,1/3,27)
local savedButton=button("COPIAR GRAVAÇÃO SALVA",0,100,1,25)
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
    AnonymousPotatoHub=true,AnonymousPotatoAccess=true,[name]=true}
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
        if screen:IsA("ScreenGui") and not ignoredScreens[screen.Name] then
            if #result.screens<35 then table.insert(result.screens,{screen.Name,screen.Enabled}) end
            if screen.Enabled then
                for _,item in ipairs(screen:GetDescendants()) do
                    if item:IsA("GuiButton") and #result.buttons<24 and visible(item) then
                        local path=relativePath(item,playerGui)
                        local label=buttonLabel(item)
                        if matches(path.." "..label) then table.insert(result.buttons,{path,label,item.Active}) end
                    elseif item:IsA("TextLabel") and #result.labels<10 and visible(item) then
                        local path=relativePath(item,playerGui)
                        if matches(path) then table.insert(result.labels,{path,short(item.Text)}) end
                    end
                end
            end
        end
    end
    return result
end
local function readWorld()
    local result={roots={},prompts={},markers={},signs={}}
    local queue={}
    local publicAttributes={Chapter=true,ChapterId=true,ChapterIndex=true,QueueId=true,QueueSize=true,
        MaxPlayers=true,MinPlayers=true,PlayerCount=true,Countdown=true,PlaceId=true,Locked=true,
        Enabled=true,Difficulty=true}
    local exclude={Camera=true,CurrentCamera=true,PotatoPile=true,PotatoStacks=true,ConveyorPotatoes=true}
    for _,root in ipairs(workspace:GetChildren()) do
        if not exclude[root.Name] and root~=player.Character
            and not (root:IsA("Model") and Players:GetPlayerFromCharacter(root)) then
            table.insert(queue,{root,1})
            if #result.roots<28 then table.insert(result.roots,{root.Name,root.ClassName}) end
        end
    end
    local index=1
    while index<=#queue and index<=4500 do
        local node,depth=queue[index][1],queue[index][2]
        index+=1
        local matched=matches(node.Name)
        if #result.signs<12 and node:IsA("TextLabel") and matches(node.Text) then
            table.insert(result.signs,{relativePath(node,workspace),short(node.Text)})
        end
        if node:IsA("ProximityPrompt") and #result.prompts<25 then
            local row=promptData(node)
            if matches(row.path.." "..row.action.." "..row.object) or #result.prompts<8 then
                table.insert(result.prompts,row)
            end
        elseif #result.markers<28 and (matched or node:IsA("ClickDetector") or node:IsA("TouchTransmitter")) then
            local pos=node:IsA("BasePart") and node.Position or nil
            local values={}
            for key,value in pairs(node:GetAttributes()) do
                if publicAttributes[key] then
                    if type(value)=="boolean" or type(value)=="number" then values[key]=value
                    elseif type(value)=="string" then values[key]=short(value,48) end
                end
            end
            table.insert(result.markers,{path=relativePath(node,workspace),class=node.ClassName,
                pos=pos and {math.round(pos.X),math.round(pos.Y),math.round(pos.Z)} or nil,
                attributes=next(values) and values or nil})
        end
        if depth<9 and not exclude[node.Name] and #queue<4700 then
            for _,child in ipairs(node:GetChildren()) do
                table.insert(queue,{child,depth+1})
                if #queue>=4700 then break end
            end
        end
        if index%550==0 then
            task.wait()
            if not gui.Parent then break end
        end
    end
    result.scan_limit_reached=index>4500
    return result
end
local function readModules()
    local result={modules={},remote_instances={},packet_ids={}}
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
    return result
end
local report={schema=1,game_id=game.GameId,place_id=game.PlaceId,place_version=game.PlaceVersion,
    actions={},ui_changes={}}
local watching,reading=false,false
local started=0
local dirty=false
local connections={}
local watched=setmetatable({},{__mode="k"})
local function saveRecord()
    if type(writefile)=="function" then
        pcall(function() writefile(SAVE_FILE,Http:JSONEncode(report)) end)
    end
end
local function seconds()
    return math.round((os.clock()-started)*100)/100
end
local function record(kind,value)
    if not watching or #report.actions>=24 then return end
    table.insert(report.actions,{t=seconds(),kind=kind,value=value})
    dirty=true
    saveRecord()
end
local function watchButton(item)
    if not item:IsA("GuiButton") or watched[item] then return end
    local screen=item:FindFirstAncestorWhichIsA("ScreenGui")
    if not screen or ignoredScreens[screen.Name] then return end
    if #connections>=170 or not matches(relativePath(item,playerGui).." "..buttonLabel(item)) then return end
    watched[item]=true
    table.insert(connections,item.Activated:Connect(function()
        local path=relativePath(item,playerGui)
        local label=buttonLabel(item)
        if matches(path.." "..label) then record("button",{path,label}) end
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
    recordButton.Text="GRAVAR 40s"
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
    report.actions={} report.ui_changes={} report.recorded_seconds=nil
    watching=true started=os.clock() dirty=false
    recordButton.Text="PARAR"
    status.Text="Gravando. Selecione o capítulo e a fila manualmente."
    table.insert(connections,playerGui.DescendantAdded:Connect(watchButton))
    for _,item in ipairs(playerGui:GetDescendants()) do watchButton(item) end
    table.insert(connections,PromptService.PromptTriggered:Connect(function(prompt,who)
        if who==player then record("prompt",promptData(prompt)) end
    end))
    table.insert(connections,player.OnTeleport:Connect(function(state,placeId)
        record("teleport",{state=state.Name,place_id=placeId})
    end))
    saveRecord()
    local run=started
    task.spawn(function()
        local last=report.ui and Http:JSONEncode(report.ui.buttons)
        while watching and started==run and gui.Parent and seconds()<40 do
            task.wait(0.7)
            if not watching or started~=run or not gui.Parent then return end
            local ui=readUi()
            local digest=Http:JSONEncode(ui.buttons)
            if digest~=last and (dirty or last~=nil) and #report.ui_changes<4 then
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
    copy(Http:JSONEncode(report))
end)
savedButton.Activated:Connect(function()
    if type(readfile)=="function" then
        local ok,value=pcall(readfile,SAVE_FILE)
        if ok and type(value)=="string" and #value>0 then copy(value) return end
    end
    status.Text="Nenhuma gravação anterior disponível neste executor."
end)
closeButton.Activated:Connect(function() stop() gui:Destroy() end)
gui.Destroying:Connect(stop)
task.defer(capture)
