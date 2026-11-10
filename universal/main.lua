-- Luau · AnonHub universal tools
local BOOT_VERSION="0.37.4"
local hub=...
if type(hub)~="table" then return end

local Players=game:GetService("Players")
local Run=game:GetService("RunService")
local Input=game:GetService("UserInputService")
local world=game:GetService("Workspace")
local touchAvailable=Input.TouchEnabled
local function usingTouch()
    return touchAvailable and (Input.PreferredInput==nil or Input.PreferredInput==Enum.PreferredInput.Touch)
end
local silentAllowed=game.GameId~=8795154789 and game.PlaceId~=136801880565837
    and game.GameId~=6035872082 and game.PlaceId~=17625359962
local player=Players.LocalPlayer
local ui=hub.ui
local color=ui.color
local function T(pt,en) return hub.language=="pt" and pt or en end
local defaults={
    theme="carbon",width=560,height=610,scale=100,launcher=48,opacity=100,
    panelX=0.5,panelY=0.5,buttonX=0,buttonY=1,
    espMode="outline",espColor="theme",espHex="FF7A8D",espRange=850,espThrough=true,
    espNick="display",espDistance=true,espTeam=true,espLabels="screen",espCustomRigs=true,
    aimActivation="auto",aimResponse="smooth",aimTouchSide="left",aimAdaptiveFov=true,
    aimPriority="center",aimPart="head",aimCircle="enabled",aimCircleColor="theme",
    aimRadius=175,aimOffsetX=0,aimOffsetY=0,aimWidth=1,aimRange=850,aimSpeed=24,cameraFov=80,
    aimTeam=true,aimObstacles="visible",aimSticky=true,aimCustomCamera=true,aimLabel=true,
}
local limits={
    width={300,900},height={340,880},scale={65,140},launcher={40,90},opacity={60,100},
    panelX={0,1},panelY={0,1},buttonX={0,1},buttonY={0,1},espRange={100,1500},
    aimRadius={30,500},aimOffsetX={-130,130},aimOffsetY={-130,130},aimWidth={1,4},aimRange={75,1500},
    aimSpeed={3,70},cameraFov={35,120},
}
local modes={
    {"outline","Contorno","Outline"},
    {"box","Caixa 2D","2D box"},
    {"names","Nome e distância","Name and distance"},
    {"full","Completo","Full"},
}
local colors={
    {"theme","Tema","Theme"}, {"team","Equipe","Team"},
    {"red","Vermelho","Red","FF6778"}, {"cyan","Ciano","Cyan","57E5FF"},
    {"lime","Lima","Lime","B3F760"}, {"gold","Dourado","Gold","FFD166"},
    {"violet","Violeta","Violet","CE9BFF"}, {"white","Branco","White","F9F8FF"},
    {"custom","Hexadecimal","Custom hex"},
}
local nickModes={{"display","Nome de exibição","Display name"},{"username","@Usuário","@Username"},
    {"both","Nome + @usuário","Name + @username"},{"off","Ocultar nome","Hide name"}}
local activationModes={{"auto","Automático","Automatic"},{"hold","Segurar","Hold"},{"toggle","Toque alterna","Tap to toggle"},
    {"always","Contínua","Continuous"}}
local touchSides={{"left","Esquerda","Left"},{"right","Direita","Right"}}
local responses={{"smooth","Suave","Smooth"},{"snap","Direta","Direct"}}
if silentAllowed then table.insert(responses,{"silent","Silenciosa","Silent"}) end
local obstacles={{"visible","Linha livre","Clear line"},{"effects","Ignorar efeitos","Ignore effects"},
    {"through","Atrás de obstáculos","Behind obstacles"}}
local labelModes={{"screen","Na tela (2D)","Screen (2D)"},{"world","No personagem (3D)","On character (3D)"}}
local priorities={{"center","Perto da mira","Near crosshair"},{"distance","Perto do jogador","Near player"}}
local aimParts={{"head","Cabeça","Head"},{"body","Tronco","Torso"},{"root","Centro","Root"}}
local circles={{"enabled","Ao ligar a mira","While enabled"},{"active","Só ao mirar","While aiming"},
    {"off","Oculto","Hidden"}}
local circleColors={colors[1],colors[3],colors[4],colors[8]}
local function lookup(list,id)
    for _,entry in ipairs(list) do if entry[1]==id then return entry end end
end
local function hex(value)
    local match=type(value)=="string" and value:match("^%s*#?(%x%x%x%x%x%x)%s*$")
    return match and match:upper() or nil
end
local settings=table.clone(defaults)
local saved=type(hub.settings)=="table" and hub.settings or {}
for key,range in pairs(limits) do
    local value=saved[key]
    if type(value)=="number" and value==value then settings[key]=math.clamp(value,range[1],range[2]) end
end
if lookup(ui.themes,saved.theme) then settings.theme=saved.theme end
if lookup(modes,saved.espMode) then settings.espMode=saved.espMode end
if lookup(colors,saved.espColor) then settings.espColor=saved.espColor end
settings.espHex=hex(saved.espHex) or defaults.espHex
for key,list in pairs({espNick=nickModes,espLabels=labelModes,aimActivation=activationModes,aimResponse=responses,aimTouchSide=touchSides,
    aimObstacles=obstacles,
    aimPriority=priorities,aimPart=aimParts,aimCircle=circles,aimCircleColor=circleColors}) do
    if lookup(list,saved[key]) then settings[key]=saved[key] end
end
if not lookup(obstacles,saved.aimObstacles) and saved.aimVisible==false then settings.aimObstacles="through" end
for _,key in ipairs({"espThrough","espDistance","espHealth","espTeam","espCustomRigs","aimTeam","aimAdaptiveFov",
    "aimSticky","aimCustomCamera","aimLabel"}) do
    if type(saved[key])=="boolean" then settings[key]=saved[key] end
end
local function save() hub.saveSettings(settings) end
local function activationMode()
    if settings.aimActivation~="auto" then return settings.aimActivation end
    return usingTouch() and "toggle" or "hold"
end
local function espHealthEnabled()
    if settings.espHealth~=nil then return settings.espHealth end
    return settings.espMode=="full"
end
ui.setTheme(settings.theme)

local playerGui=player:WaitForChild("PlayerGui")
local screen=ui.make("ScreenGui",{Name="AnonHubUniversal",ResetOnSpawn=false,DisplayOrder=10030},playerGui)
local canvas=ui.make("Frame",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1},screen)
local body=ui.make("Frame",{Name="UniversalPanel",AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),
    BackgroundColor3="@dark",BorderSizePixel=0,ClipsDescendants=true},canvas)
local scale=ui.make("UIScale",{Scale=1},body)
ui.make("UICorner",{CornerRadius=UDim.new(0,16)},body)
ui.make("UIStroke",{Color="@edge",Thickness=1},body)
local header=ui.make("Frame",{Size=UDim2.new(1,0,0,62),BackgroundColor3="@dark",
    BorderSizePixel=0,Active=true,ClipsDescendants=true},body)
ui.make("Frame",{Size=UDim2.new(1,0,0,1),Position=UDim2.new(0,0,1,-1),
    BackgroundColor3="@edge",BorderSizePixel=0},header)
local mark=ui.label(header,"TextLabel","A",30,0)
mark.Position,mark.Size=UDim2.fromOffset(16,16),UDim2.fromOffset(30,30)
mark.BackgroundTransparency=0
mark.Font,mark.TextSize=Enum.Font.GothamBlack,17
ui.paint(mark,"BackgroundColor3","accent")
ui.paint(mark,"TextColor3","dark")
ui.make("UICorner",{CornerRadius=UDim.new(0,9)},mark)
if hub.decorateArtwork then
    local art=ui.make("ImageLabel",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,
        ScaleType=Enum.ScaleType.Crop,ZIndex=mark.ZIndex+1},mark)
    ui.make("UICorner",{CornerRadius=UDim.new(0,9)},art)
    hub.decorateArtwork(art)
end
local brand=ui.label(header,"TextLabel","AnonHub",25,1)
brand.Position,brand.Size=UDim2.fromOffset(56,11),UDim2.new(1,-110,0,25)
brand.Font,brand.TextSize,brand.TextXAlignment=Enum.Font.GothamBold,19,Enum.TextXAlignment.Left
local tag=ui.label(header,"TextLabel",T("CENTRAL UNIVERSAL","UNIVERSAL WORKSPACE"),16,2)
tag.Position,tag.Size=UDim2.fromOffset(57,35),UDim2.new(1,-112,0,16)
tag.Font,tag.TextSize,tag.TextXAlignment=Enum.Font.Code,10,Enum.TextXAlignment.Left
ui.paint(tag,"TextColor3","muted")
local nav=ui.make("Frame",{Name="Navigation",BackgroundColor3="@tile",BorderSizePixel=0},body)
ui.make("UICorner",{CornerRadius=UDim.new(0,10)},nav)
local navTitle=ui.label(nav,"TextLabel",T("ÁREA DE TRABALHO","WORKSPACE"),18,0)
navTitle.Position,navTitle.Size=UDim2.fromOffset(14,10),UDim2.new(1,-24,0,18)
navTitle.Font,navTitle.TextSize,navTitle.TextXAlignment=Enum.Font.Code,9,Enum.TextXAlignment.Left
ui.paint(navTitle,"TextColor3","muted")
local statusHeight=32
local footer=ui.make("Frame",{Name="SessionStatus",Position=UDim2.new(0,0,1,-statusHeight),Size=UDim2.new(1,0,0,statusHeight),
    BorderSizePixel=0,BackgroundColor3="@dark"},body)
ui.make("Frame",{Size=UDim2.new(1,0,0,1),BackgroundColor3="@edge",BorderSizePixel=0},footer)
local sessionDot=ui.make("Frame",{Position=UDim2.fromOffset(15,13),Size=UDim2.fromOffset(6,6),
    BorderSizePixel=0,BackgroundColor3="@accent"},footer)
ui.make("UICorner",{CornerRadius=UDim.new(1,0)},sessionDot)
local sessionStatus=ui.label(footer,"TextLabel","",32,0)
sessionStatus.Position,sessionStatus.Size=UDim2.fromOffset(28,0),UDim2.new(1,-104,1,0)
sessionStatus.Font,sessionStatus.TextSize,sessionStatus.TextXAlignment=Enum.Font.Code,11,Enum.TextXAlignment.Left
local versionLabel=ui.label(footer,"TextLabel","v"..BOOT_VERSION,32,0)
versionLabel.Position,versionLabel.Size=UDim2.new(1,-77,0,0),UDim2.fromOffset(61,32)
versionLabel.Font,versionLabel.TextSize,versionLabel.TextXAlignment=Enum.Font.Code,11,Enum.TextXAlignment.Right
ui.paint(versionLabel,"TextColor3","muted")
local pages={}
local tabButtons={}
local tabs={}
local tabCount=0
local connections={}
local alive=true
local flags={}
local function refreshStatus()
    local input=usingTouch() and T("TOQUE","TOUCH") or T("TECLADO","KEYBOARD")
    local aim=flags.aim and T("MIRA ON","AIM ON") or T("MIRA OFF","AIM OFF")
    sessionStatus.Text=input.."  /  "..aim.."  /  ESP "..(flags.esp and "ON" or "OFF")
    ui.paint(sessionStatus,"TextColor3","muted")
    ui.paint(sessionDot,"BackgroundColor3",(flags.aim or flags.esp) and "active" or "accent")
end
local values={speed=24,fly=55}
local updates={}
local highlights={}
local clipParts={}
local clipCharacter,clipAdded,flight,speedOwner,fovOwner
local espFolder,espScreen,aimLayer,aimTarget,aimMotion
local silentSession
local aimLatched=false
local held={up=false,down=false,aim=false}

local function connect(signal,callback)
    local connection=signal:Connect(callback)
    table.insert(connections,connection)
    return connection
end

local function characterParts(character)
    local humanoid=character and character:FindFirstChildOfClass("Humanoid")
    local root=character and character:FindFirstChild("HumanoidRootPart")
    if humanoid and humanoid.Health>0 and root and root:IsA("BasePart") then return humanoid,root end
end

local function partNamed(model,name)
    local part=model:FindFirstChild(name) or model:FindFirstChild(name,true)
    if part and part:IsA("BasePart") then return part end
end

local function modelRig(model)
    if not model or not model.Parent or not model:IsA("Model") then return end
    local humanoid=model:FindFirstChildOfClass("Humanoid")
    local root=partNamed(model,"HumanoidRootPart") or (humanoid and humanoid.RootPart) or model.PrimaryPart or partNamed(model,"UpperTorso")
        or partNamed(model,"Torso") or partNamed(model,"Head")
    if root then return model,root,humanoid end
end

local rigFolders={"Characters","PlayerCharacters","Alive","Players"}
local rigReferences={"CharacterModel","Character"}
local function playerRig(other,custom)
    local model,root,humanoid=modelRig(other.Character)
    if model or not custom then return model,root,humanoid end
    for _,name in ipairs(rigReferences) do
        local reference=other:FindFirstChild(name)
        if reference and reference:IsA("ObjectValue") then
            model,root,humanoid=modelRig(reference.Value)
            if model then return model,root,humanoid end
        end
    end
    for _,name in ipairs(rigFolders) do
        local folder=world:FindFirstChild(name)
        if folder then
            model,root,humanoid=modelRig(folder:FindFirstChild(other.Name) or folder:FindFirstChild(tostring(other.UserId)))
            if model then return model,root,humanoid end
        end
    end
end

local function enemy(other,ignoreTeam)
    return other~=player and (not ignoreTeam or player.Neutral or other.Neutral or not player.Team
        or other.Team~=player.Team)
end

local function restoreProperty(owner)
    if owner and owner.object.Parent and owner.object[owner.property]==owner.applied then
        owner.object[owner.property]=owner.original
    end
end

local function applyProperty(owner,object,property,value)
    if not owner or owner.object~=object then
        restoreProperty(owner)
        owner={object=object,property=property,original=object[property]}
    elseif owner.applied~=nil and object[property]~=owner.applied then
        owner.original=object[property]
    end
    object[property]=value
    owner.applied=value
    return owner
end

local function restoreCollision()
    if clipAdded then clipAdded:Disconnect() clipAdded=nil end
    clipCharacter=nil
    for part,changed in pairs(clipParts) do
        if changed and part.Parent and not part.CanCollide then part.CanCollide=true end
    end
    table.clear(clipParts)
end

local function trackCollision(character)
    restoreCollision()
    clipCharacter=character
    local function track(item)
        if item:IsA("BasePart") and clipParts[item]==nil then clipParts[item]=false end
    end
    for _,item in ipairs(character:GetDescendants()) do track(item) end
    clipAdded=character.DescendantAdded:Connect(track)
end

local function stopFlight()
    if not flight then return end
    flight.velocity:Destroy()
    flight.attachment:Destroy()
    flight=nil
end

local function clearHighlights()
    if espFolder then espFolder:Destroy() espFolder=nil end
    if espScreen then espScreen:Destroy() espScreen=nil end
    table.clear(highlights)
end

local function releaseCharacter()
    restoreCollision()
    stopFlight()
    restoreProperty(speedOwner)
    speedOwner=nil
end

local function reset()
    table.clear(flags)
    held.up,held.down,held.aim=false,false,false
    aimTarget,aimMotion,aimLatched=nil,nil,false
    if silentSession then table.clear(silentSession) silentSession=nil end
    releaseCharacter()
    clearHighlights()
    restoreProperty(fovOwner)
    fovOwner=nil
    for _,update in ipairs(updates) do update() end
end

local renderName="AnonHubUniversal_"..tostring(player.UserId)
local function close()
    if not alive then return end
    alive=false
    Run:UnbindFromRenderStep(renderName)
    for _,connection in ipairs(connections) do connection:Disconnect() end
    table.clear(connections)
    reset()
    if aimLayer then aimLayer:Destroy() end
    screen:Destroy()
end
hub.attach(close)
if not alive then return end

local function showTab(id)
    for key,page in pairs(pages) do
        local selected=key==id
        page.Visible=selected
        tabButtons[key].BackgroundTransparency=selected and 0 or 1
        ui.paint(tabButtons[key],"BackgroundColor3","dark")
        local tabInfo=tabs[key]
        ui.paint(tabInfo.caption,"TextColor3",selected and "accent" or "muted")
        tabInfo.marker.Visible=selected
    end
end
local function tab(id,caption,description,compactCaption)
    tabCount+=1
    local index=tabCount
    local control=ui.label(nav,"TextButton","",40,0)
    control.Name=id.."Tab"
    control.AutoButtonColor=false
    ui.make("UICorner",{CornerRadius=UDim.new(0,7)},control)
    local captionLabel=ui.label(control,"TextLabel",caption,40,0)
    captionLabel.Font,captionLabel.TextSize=Enum.Font.GothamBold,12
    local marker=ui.make("Frame",{BackgroundColor3="@accent",BorderSizePixel=0},control)
    ui.make("UICorner",{CornerRadius=UDim.new(1,0)},marker)
    local number=ui.label(control,"TextLabel",string.format("%02d",index),18,0)
    number.Position,number.Size=UDim2.fromOffset(10,11),UDim2.fromOffset(21,18)
    number.Font,number.TextSize=Enum.Font.Code,10
    ui.paint(number,"TextColor3","muted")
    local page=ui.make("ScrollingFrame",{Name=id,
        BackgroundTransparency=1,BorderSizePixel=0,CanvasSize=UDim2.fromOffset(0,0),
        AutomaticCanvasSize=Enum.AutomaticSize.Y,ScrollBarThickness=3,ScrollBarImageColor3="@accent",
        ScrollingDirection=Enum.ScrollingDirection.Y,ElasticBehavior=Enum.ElasticBehavior.Never,Visible=false},body)
    ui.make("UIPadding",{PaddingRight=UDim.new(0,6),PaddingBottom=UDim.new(0,8)},page)
    ui.make("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,8)},page)
    local introduction=ui.make("Frame",{Size=UDim2.new(1,0,0,60),LayoutOrder=0,BackgroundTransparency=1},page)
    local title=ui.label(introduction,"TextLabel",caption,28,0)
    title.Font,title.TextSize,title.TextXAlignment=Enum.Font.GothamBold,23,Enum.TextXAlignment.Left
    local detail=ui.label(introduction,"TextLabel",description,28,0)
    detail.Position=UDim2.fromOffset(0,29)
    detail.TextSize,detail.TextXAlignment,detail.TextYAlignment=12,Enum.TextXAlignment.Left,Enum.TextYAlignment.Top
    ui.paint(detail,"TextColor3","muted")
    pages[id],tabButtons[id]=page,control
    tabs[id]={index=index,marker=marker,number=number,caption=captionLabel,
        title=caption,compactTitle=compactCaption or caption}
    connect(control.Activated,function() showTab(id) end)
    return page
end
local controls=tab("controls",T("Controles","Controls"),T("Jogo atual e atalhos de movimento.","Current game and movement shortcuts."),T("Início","Home"))
local gamesPage=tab("games",T("Jogos","Games"),T("Módulos dedicados disponíveis no AnonHub.","Dedicated modules available in AnonHub."))
local aimPage=tab("aim",T("Mira","Aim"),T("Ajuste a resposta, os alvos e o campo de visão.","Adjust response, targets, and field of view."))
local visionPage=tab("vision","ESP",T("Configure a apresentação dos jogadores na tela.","Choose how players are displayed on screen."))
local settingsPage=tab("settings",T("Ajustes","Settings"),T("Personalize a aparência e a posição do painel.","Customize the appearance and panel position."))
showTab("controls")
ui.gameCatalog(gamesPage,hub.language,1)
ui.gameCard(controls,hub.identity,T("SESSÃO ATIVA · MÓDULO UNIVERSAL","ACTIVE SESSION · UNIVERSAL MODULE"),2,true)
local access=hub.access
local membershipInset=0
local layoutMembership
if type(access)=="table" then
    local height,gap=62,8
    membershipInset=height+gap
    local premium=access.plan=="Premium"
    local card=ui.make("Frame",{Name="Membership",
        Position=UDim2.new(0,12,1,-statusHeight-membershipInset),Size=UDim2.new(1,-24,0,height),
        BackgroundColor3="@tile",BorderSizePixel=0},body)
    ui.make("UICorner",{CornerRadius=UDim.new(0,9)},card)
    local border=ui.make("UIStroke",{Color="@edge",Thickness=1},card)
    local portrait=ui.make("ImageLabel",{Position=UDim2.fromOffset(11,10),Size=UDim2.fromOffset(42,42),
        Image=string.format("rbxthumb://type=AvatarHeadShot&id=%d&w=100&h=100",player.UserId),
        BackgroundColor3="@dark",BorderSizePixel=0},card)
    ui.make("UICorner",{CornerRadius=UDim.new(1,0)},portrait)
    local member=ui.label(card,"TextLabel",player.DisplayName or player.Name,19,0)
    member.Position,member.Size=UDim2.fromOffset(63,5),UDim2.new(1,-151,0,19)
    member.Font,member.TextSize,member.TextXAlignment=Enum.Font.GothamBold,13,Enum.TextXAlignment.Left
    member.TextWrapped,member.TextTruncate=false,Enum.TextTruncate.AtEnd
    local username=ui.label(card,"TextLabel","@"..player.Name,16,0)
    username.Position,username.Size=UDim2.fromOffset(63,23),UDim2.new(1,-151,0,16)
    username.TextSize,username.TextXAlignment=11,Enum.TextXAlignment.Left
    username.TextWrapped,username.TextTruncate=false,Enum.TextTruncate.AtEnd
    ui.paint(username,"TextColor3","muted")
    local badge=ui.label(card,"TextLabel",premium and "PREMIUM" or "MEMBER",23,0)
    badge.Position,badge.Size=UDim2.new(1,-79,0,9),UDim2.fromOffset(68,23)
    badge.Font,badge.TextSize,badge.BackgroundTransparency=Enum.Font.GothamBold,10,0
    ui.make("UICorner",{CornerRadius=UDim.new(0,6)},badge)
    ui.paint(badge,"TextColor3","dark")
    if premium then
        local gold=Color3.fromRGB(248,208,130)
        badge.BackgroundColor3,border.Color=gold,gold
    else
        ui.paint(badge,"BackgroundColor3","accent")
    end
    local countdown=ui.label(card,"TextLabel","",17,0)
    countdown.Position=UDim2.fromOffset(63,39)
    countdown.Font,countdown.TextSize,countdown.TextXAlignment=Enum.Font.GothamMedium,12,Enum.TextXAlignment.Left
    countdown.TextWrapped,countdown.TextTruncate=false,Enum.TextTruncate.AtEnd
    ui.paint(countdown,"TextColor3","active")
    local expiry=access.expiresAt and os.date(T("!%d/%m/%Y %H:%M UTC","!%Y-%m-%d %H:%M UTC"),access.expiresAt)
    local key=ui.label(card,"TextLabel",access.keyLabel,18,0)
    key.Position,key.Size=UDim2.new(1,-79,0,35),UDim2.fromOffset(68,18)
    key.Font,key.TextSize=Enum.Font.Code,10
    ui.paint(key,"TextColor3","muted")
    local expiryDate=ui.label(card,"TextLabel",expiry or "",17,0)
    expiryDate.Position,expiryDate.Size=UDim2.new(1,-241,0,39),UDim2.fromOffset(151,17)
    expiryDate.Font,expiryDate.TextSize,expiryDate.TextXAlignment=Enum.Font.Code,10,Enum.TextXAlignment.Right
    ui.paint(expiryDate,"TextColor3","muted")
    layoutMembership=function(width)
        expiryDate.Visible=expiry~=nil and width>=510
        countdown.Size=UDim2.new(1,expiryDate.Visible and -310 or -151,0,17)
    end
    local function updateDuration()
        if not alive or not card.Parent then return end
        if access.lifetime then
            countdown.Text=T("Acesso vitalício","Lifetime access")
        elseif access.deadline or access.expiresAt then
            local remaining=math.max(0,access.deadline and (access.deadline-os.clock()) or (access.expiresAt-os.time()))
            if remaining<=0 then
                countdown.Text=T("Acesso expirado","Access expired")
            elseif remaining<60 then
                countdown.Text=string.format(T("Restam %ds","%ds remaining"),math.ceil(remaining))
                task.delay(1,updateDuration)
            else
                local minutes=math.ceil(remaining/60)
                countdown.Text=string.format(T("Restam %dh %02dm","%dh %02dm remaining"),math.floor(minutes/60),minutes%60)
                task.delay((remaining%60)+0.05,updateDuration)
            end
        else
            countdown.Text=T("Validade não informada","Expiry unavailable")
        end
    end
    updateDuration()
end
ui.resources(controls,1,hub.language,function() showTab("games") end)
refreshStatus()

local function section(parent,caption,order)
    local line=ui.make("Frame",{Size=UDim2.new(1,0,0,26),LayoutOrder=order,BackgroundTransparency=1},parent)
    ui.make("Frame",{Size=UDim2.new(1,0,0,1),BackgroundColor3="@edge",BorderSizePixel=0},line)
    local heading=ui.label(line,"TextLabel",caption,20,0)
    heading.Position=UDim2.fromOffset(0,6)
    ui.paint(heading,"TextColor3","muted")
    heading.Font=Enum.Font.Code
    heading.TextSize=11
    heading.TextXAlignment=Enum.TextXAlignment.Left
end

local function row(parent,order)
    return ui.make("Frame",{Size=UDim2.new(1,0,0,44),LayoutOrder=order,BackgroundTransparency=1},parent)
end

local function switch(parent,title,order)
    local button=ui.button(parent,"",order)
    button.Name=title
    button.AutoButtonColor=false
    local label=ui.label(button,"TextLabel",title,42,0)
    label.Position,label.Size=UDim2.fromOffset(11,0),UDim2.new(1,-56,1,0)
    label.TextSize,label.TextXAlignment=12,Enum.TextXAlignment.Left
    local track=ui.make("Frame",{AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,-10,0.5,0),
        Size=UDim2.fromOffset(31,16),BorderSizePixel=0},button)
    local thumb=ui.make("Frame",{Size=UDim2.fromOffset(12,12),BorderSizePixel=0},track)
    ui.make("UICorner",{CornerRadius=UDim.new(1,0)},track)
    ui.make("UICorner",{CornerRadius=UDim.new(1,0)},thumb)
    return button,function(enabled)
        ui.paint(track,"BackgroundColor3",enabled and "active" or "edge")
        ui.paint(thumb,"BackgroundColor3",enabled and "dark" or "muted")
        thumb.Position=UDim2.fromOffset(enabled and 17 or 2,2)
    end
end

local function toggle(parent,key,title,right,onChange)
    local control,updateSwitch=switch(parent,title,0)
    control.Position=UDim2.fromScale(right and 0.51 or 0,0)
    control.Size=UDim2.fromScale(0.49,1)
    local function update()
        updateSwitch(flags[key])
        if key=="aim" or key=="esp" then refreshStatus() end
    end
    table.insert(updates,update)
    update()
    connect(control.Activated,function()
        flags[key]=not flags[key]
        if onChange then onChange(flags[key]) end
        update()
    end)
end

local function adjust(parent,model,key,title,minimum,maximum,step,order,onChange)
    local line=row(parent,order)
    local name=ui.label(line,"TextLabel",title,42,0)
    name.Size=UDim2.new(1,-132,1,0)
    name.TextXAlignment=Enum.TextXAlignment.Left
    name.TextSize=13
    local minus=ui.button(line,"−",0)
    minus.Position,minus.Size=UDim2.new(1,-126,0,0),UDim2.fromOffset(36,42)
    local display=ui.label(line,"TextBox",tostring(model[key]),42,0)
    display.Position,display.Size=UDim2.new(1,-86,0,0),UDim2.fromOffset(46,42)
    display.BackgroundTransparency=0
    ui.paint(display,"BackgroundColor3","tile")
    display.ClearTextOnFocus=false
    ui.make("UICorner",{CornerRadius=UDim.new(0,5)},display)
    local plus=ui.button(line,"+",0)
    plus.Position,plus.Size=UDim2.new(1,-36,0,0),UDim2.fromOffset(36,42)
    local function refresh() display.Text=tostring(model[key]) end
    table.insert(updates,refresh)
    local function set(number)
        if number and number==number then
            local nextValue=math.clamp(math.floor(number+0.5),minimum,maximum)
            if nextValue~=model[key] then
                model[key]=nextValue
                if onChange then onChange() end
            end
        end
        refresh()
    end
    connect(minus.Activated,function() set(model[key]-step) end)
    connect(plus.Activated,function() set(model[key]+step) end)
    connect(display.FocusLost,function() set(tonumber(display.Text)) end)
end

local launcher=ui.button(canvas,"A",0,true)
launcher.ZIndex=20
launcher.TextSize=23
hub.decorateLauncher(launcher)
local function togglePanel() body.Visible=not body.Visible end
local suppressLauncherUntil=0
connect(launcher.Activated,function() if os.clock()>suppressLauncherUntil then togglePanel() end end)
local hide=ui.button(header,"−",0)
hide.Position,hide.Size=UDim2.new(1,-50,0,14),UDim2.fromOffset(34,34)
connect(hide.Activated,togglePanel)

local margin=8
local function position(size,extent,x,y)
    local horizontal=math.max(0,size.X-extent.X-2*margin)
    local vertical=math.max(0,size.Y-extent.Y-2*margin)
    return margin+horizontal*x,margin+vertical*y
end

local function layoutNavigation(width,height)
    local sidebar=width>=530 and height>=158+tabCount*46+membershipInset
    navTitle.Visible=sidebar
    nav.Position=UDim2.fromOffset(12,74)
    nav.Size=sidebar and UDim2.new(0,132,1,-118-membershipInset) or UDim2.new(1,-24,0,44)
    for id,tabInfo in pairs(tabs) do
        local control,page=tabButtons[id],pages[id]
        tabInfo.number.Visible=sidebar
        if sidebar then
            control.Position,control.Size=UDim2.fromOffset(6,34+(tabInfo.index-1)*46),UDim2.new(1,-12,0,40)
            tabInfo.caption.Text,tabInfo.caption.TextSize=tabInfo.title,12
            tabInfo.caption.Position,tabInfo.caption.Size=UDim2.fromOffset(37,0),UDim2.new(1,-45,1,0)
            tabInfo.caption.TextXAlignment=Enum.TextXAlignment.Left
            tabInfo.marker.Position,tabInfo.marker.Size=UDim2.fromOffset(0,10),UDim2.fromOffset(3,20)
            page.Position,page.Size=UDim2.fromOffset(160,74),UDim2.new(1,-172,1,-118-membershipInset)
        else
            control.Position=UDim2.new((tabInfo.index-1)/tabCount,3,0,3)
            control.Size=UDim2.new(1/tabCount,-6,1,-6)
            tabInfo.caption.Text,tabInfo.caption.TextSize=tabInfo.compactTitle,11
            tabInfo.caption.Position,tabInfo.caption.Size=UDim2.fromOffset(0,0),UDim2.fromScale(1,1)
            tabInfo.caption.TextXAlignment=Enum.TextXAlignment.Center
            tabInfo.marker.Position,tabInfo.marker.Size=UDim2.new(0.25,0,1,-3),UDim2.new(0.5,0,0,2)
            page.Position,page.Size=UDim2.fromOffset(12,130),UDim2.new(1,-24,1,-170-membershipInset)
        end
    end
end

local function applyLayout()
    local size=canvas.AbsoluteSize
    if size.X<50 or size.Y<50 then return end
    local zoom=settings.scale/100
    local width=math.min(settings.width,(size.X-2*margin)/zoom)
    local height=math.min(settings.height,(size.Y-2*margin)/zoom)
    body.Size,scale.Scale=UDim2.fromOffset(width,height),zoom
    body.BackgroundTransparency=1-settings.opacity/100
    if layoutMembership then layoutMembership(width) end
    layoutNavigation(width,height)
    local extent=Vector2.new(width*zoom,height*zoom)
    local x,y=position(size,extent,settings.panelX,settings.panelY)
    body.Position=UDim2.fromOffset(x+extent.X*0.5,y+extent.Y*0.5)
    local buttonSize=math.min(settings.launcher,size.X-2*margin,size.Y-2*margin)
    launcher.Size=UDim2.fromOffset(buttonSize,buttonSize)
    local buttonX,buttonY=position(size,Vector2.new(buttonSize,buttonSize),settings.buttonX,settings.buttonY)
    launcher.Position=UDim2.fromOffset(buttonX,buttonY)
end

local pointer,origin,dragOrigin,dragTarget,dragMoved
local function drag(event,target)
    if not pointer and (event.UserInputType==Enum.UserInputType.Touch or event.UserInputType==Enum.UserInputType.MouseButton1) then
        pointer=event
        origin=event.Position
        dragTarget=target
        dragOrigin=target.AbsolutePosition-canvas.AbsolutePosition
        dragMoved=false
    end
end
connect(header.InputBegan,function(event) drag(event,body) end)
connect(launcher.InputBegan,function(event) drag(event,launcher) end)
connect(Input.InputChanged,function(event)
    if not pointer or (pointer.UserInputType==Enum.UserInputType.Touch and event~=pointer)
        or (pointer.UserInputType==Enum.UserInputType.MouseButton1 and event.UserInputType~=Enum.UserInputType.MouseMovement) then return end
    local delta=event.Position-origin
    if not dragMoved and delta.Magnitude<6 then return end
    dragMoved=true
    local size,extent=canvas.AbsoluteSize,dragTarget.AbsoluteSize
    local width,height=math.max(0,size.X-extent.X-2*margin),math.max(0,size.Y-extent.Y-2*margin)
    local x=math.clamp(dragOrigin.X+delta.X,margin,margin+width)
    local y=math.clamp(dragOrigin.Y+delta.Y,margin,margin+height)
    if dragTarget==body then
        dragTarget.Position=UDim2.fromOffset(x+extent.X*0.5,y+extent.Y*0.5)
        if width>0 then settings.panelX=(x-margin)/width end
        if height>0 then settings.panelY=(y-margin)/height end
    else
        dragTarget.Position=UDim2.fromOffset(x,y)
        if width>0 then settings.buttonX=(x-margin)/width end
        if height>0 then settings.buttonY=(y-margin)/height end
        suppressLauncherUntil=os.clock()+0.25
    end
end)
local function endDrag()
    if not pointer then return end
    pointer=nil
    if dragMoved then
        if dragTarget==launcher then suppressLauncherUntil=os.clock()+0.25 end
        save()
    end
end
connect(Input.InputEnded,function(event) if event==pointer then endDrag() end end)
connect(Input.WindowFocusReleased,function()
    endDrag()
    held.up,held.down,held.aim=false,false,false
    aimTarget,aimMotion,aimLatched=nil,nil,false
    if silentSession then silentSession.target=nil end
end)
connect(canvas:GetPropertyChangedSignal("AbsoluteSize"),function() if not pointer then applyLayout() end end)
applyLayout()
connect(Input.InputBegan,function(event,processed)
    if not processed and event.KeyCode==Enum.KeyCode.RightShift then togglePanel() end
end)

local function holdButton(key,caption,offset,width,shouldHold)
    local control=ui.button(canvas,caption,0,true)
    control.Position,control.Size=UDim2.new(1,-width-12,1,offset),UDim2.fromOffset(width,46)
    control.Visible,control.ZIndex=false,30
    local press,stateChanged
    local function release()
        press=nil
        held[key]=false
        if stateChanged then stateChanged:Disconnect() stateChanged=nil end
        if key=="aim" and silentSession then silentSession.target=nil end
    end
    connect(control.InputBegan,function(event)
        if (not shouldHold or shouldHold()) and (not press or not held[key])
            and (event.UserInputType==Enum.UserInputType.Touch or event.UserInputType==Enum.UserInputType.MouseButton1) then
            if press then release() end
            press,held[key]=event,true
            if event.UserInputType==Enum.UserInputType.Touch then
                stateChanged=event:GetPropertyChangedSignal("UserInputState"):Connect(function()
                    if event.UserInputState==Enum.UserInputState.Cancel or event.UserInputState==Enum.UserInputState.End then
                        release()
                    end
                end)
            end
        end
    end)
    connect(Input.InputEnded,function(event)
        if event==press then release() end
    end)
    connect(Input.WindowFocusReleased,release)
    control.Destroying:Connect(release)
    return control,release
end
local up=holdButton("up",T("↑  SUBIR","↑  UP"),-165,103)
local down=holdButton("down",T("↓  DESCER","↓  DOWN"),-112,103)
local aim,releaseAim=holdButton("aim",T("MIRAR","AIM"),-64,112,function() return activationMode()=="hold" end)
local function placeAimButton()
    if not touchAvailable then return end
    local left=settings.aimTouchSide=="left"
    aim.AnchorPoint=Vector2.new(left and 0 or 1,0.5)
    aim.Position=UDim2.new(left and 0 or 1,left and 10 or -10,0.43,0)
    aim.Size=UDim2.fromOffset(112,50)
end
placeAimButton()
aimLayer=ui.make("ScreenGui",{Name="AnonHubAimOverlay",ResetOnSpawn=false,IgnoreGuiInset=true,
    ScreenInsets=Enum.ScreenInsets.DeviceSafeInsets,DisplayOrder=10026},playerGui)
local sight=ui.make("Frame",{AnchorPoint=Vector2.new(0.5,0.5),
    BackgroundTransparency=1,Visible=false,Active=false},aimLayer)
ui.make("UICorner",{CornerRadius=UDim.new(1,0)},sight)
local sightEdge=ui.make("UIStroke",{Color="@accent",Thickness=1,Transparency=0.18},sight)
local targetLabel=ui.label(aimLayer,"TextLabel","",24,0)
targetLabel.AnchorPoint,targetLabel.Size=Vector2.new(0.5,0),UDim2.fromOffset(240,24)
targetLabel.Font,targetLabel.TextSize=Enum.Font.GothamBold,12
targetLabel.TextStrokeTransparency,targetLabel.Visible=0.25,false
local function clearTarget()
    aimTarget,aimMotion=nil,nil
    if silentSession then silentSession.target=nil end
end
local function resetAim()
    releaseAim()
    aimLatched=false
    clearTarget()
end
local function aimButtonText()
    local message=activationMode()=="toggle" and (aimLatched and T("PARAR MIRA","STOP AIM") or T("LIGAR MIRA","START AIM"))
        or T("SEGURAR MIRA","HOLD AIM")
    if aim.Text~=message then aim.Text=message end
end
local function toggleAim()
    if not flags.aim or activationMode()~="toggle" then return end
    aimLatched=not aimLatched
    clearTarget()
    aimButtonText()
end
connect(aim.Activated,toggleAim)
connect(Input.InputBegan,function(event,processed)
    if not processed and not Input:GetFocusedTextBox()
        and (event.UserInputType==Enum.UserInputType.MouseButton2 or event.KeyCode==Enum.KeyCode.LeftAlt) then toggleAim() end
end)
local function refreshOverlay()
    up.Visible,down.Visible=flags.fly==true,flags.fly==true
    aim.Visible=flags.aim==true and activationMode()~="always" and (not usingTouch() or not body.Visible)
    if not flags.fly then held.up,held.down=false,false end
    if not flags.aim then resetAim() sight.Visible=false targetLabel.Visible=false end
    aimButtonText()
end
table.insert(updates,refreshOverlay)
if touchAvailable then
    connect(body:GetPropertyChangedSignal("Visible"),function()
        if body.Visible then
            releaseAim()
            clearTarget()
        end
        refreshOverlay()
    end)
end

local movement=row(controls,4)
toggle(movement,"fly",T("Voo","Fly"),false,function(enabled)
    if not enabled then stopFlight() end
    refreshOverlay()
end)
toggle(movement,"noclip","Noclip",true,function(enabled) if not enabled then restoreCollision() end end)
local movement2=row(controls,5)
toggle(movement2,"speed",T("Velocidade","Walk speed"),false,function(enabled)
    if not enabled then restoreProperty(speedOwner) speedOwner=nil end
end)
toggle(movement2,"jump",T("Salto infinito","Infinite jump"),true)
adjust(controls,values,"speed",T("Velocidade ao andar","Walk speed"),4,120,4,6)
adjust(controls,values,"fly",T("Velocidade de voo","Flight speed"),10,180,10,7)
section(aimPage,T("MIRA E CAMPO DE VISÃO","AIM AND FIELD OF VIEW"),1)
local cameraRow=row(aimPage,2)
toggle(cameraRow,"aim",T("Mira assistida","Aim assist"),false,function(enabled)
    if enabled and usingTouch() then
        aimLatched=activationMode()=="toggle"
        body.Visible=false
    end
    refreshOverlay()
end)
toggle(cameraRow,"fov",T("FOV da câmera","Camera FOV"),true,function(enabled)
    if not enabled then restoreProperty(fovOwner) fovOwner=nil end
end)
adjust(aimPage,settings,"cameraFov",T("Campo de visão da câmera (°)","Camera field of view (°)"),35,120,5,3,save)
local help=ui.label(controls,"TextLabel",T("Para voar, use o direcional e os botões laterais.",
    "Use movement controls and the side buttons to fly."),40,8)
help.TextSize=12
ui.paint(help,"TextColor3","muted")
connect(ui.button(controls,T("RESTAURAR CONTROLES","RESET CONTROLS"),9,true).Activated,reset)

local function selector(parent,options,key,columns,order,caption,onChange,swatch)
    local group=ui.make("Frame",{Size=UDim2.new(1,0,0,math.ceil(#options/columns)*39),LayoutOrder=order,
        BackgroundTransparency=1},parent)
    ui.make("UIGridLayout",{CellSize=UDim2.new(1/columns,-4,0,34),CellPadding=UDim2.fromOffset(4,5),
        SortOrder=Enum.SortOrder.LayoutOrder},group)
    local buttons={}
    local function refresh()
        for id,button in pairs(buttons) do
            local selected=settings[key]==id
            ui.paint(button,"BackgroundColor3",selected and "accent" or "tile")
            ui.paint(button,"TextColor3",selected and "dark" or "text")
        end
    end
    for index,option in ipairs(options) do
        local id=option[1]
        local button=ui.button(group,caption(option),index)
        button.TextSize=11
        buttons[id]=button
        local shade=swatch and swatch(option)
        if shade then
            local dot=ui.make("Frame",{Position=UDim2.fromOffset(5,5),Size=UDim2.fromOffset(7,7),
                BorderSizePixel=0,BackgroundColor3=shade},button)
            ui.make("UICorner",{CornerRadius=UDim.new(1,0)},dot)
        end
        connect(button.Activated,function()
            if settings[key]==id then return end
            settings[key]=id
            if onChange then onChange(id) end
            refresh()
            save()
        end)
    end
    refresh()
    return refresh
end

local function settingToggle(parent,key,title,order,onChange,readValue)
    local button,updateSwitch=switch(parent,title,order)
    local function enabled()
        if readValue then return readValue() end
        return settings[key]
    end
    local function refresh()
        updateSwitch(enabled())
    end
    refresh()
    connect(button.Activated,function()
        settings[key]=not enabled()
        if onChange then onChange() end
        refresh()
        save()
    end)
    return refresh
end
local function optionCaption(option) return T(option[2],option[3]) end

section(aimPage,T("ATIVAÇÃO","ACTIVATION"),4)
local activationHint=ui.label(aimPage,"TextLabel","",36,6)
activationHint.TextSize=11
ui.paint(activationHint,"TextColor3","muted")
local function refreshActivation()
    local mode=activationMode()
    activationHint.Text=mode=="always" and T("A mira acompanha alvos enquanto estiver ligada.","Aim tracks targets while enabled.")
        or mode=="toggle" and (usingTouch()
            and T("A mira começa ao ligar. Use o botão lateral para pausar ou retomar.",
                "Aim starts when enabled. Use the side button to pause or resume.")
            or T("Use o botão direito, Alt esquerdo ou o botão lateral.",
                "Use right mouse, Left Alt, or the side button."))
        or T("Segure o botão lateral, o botão direito do mouse ou Alt esquerdo.",
            "Hold the side button, right mouse or Left Alt.")
end
selector(aimPage,activationModes,"aimActivation",2,5,optionCaption,function()
    resetAim()
    refreshOverlay()
    refreshActivation()
end)
connect(Input:GetPropertyChangedSignal("PreferredInput"),function()
    resetAim()
    refreshOverlay()
    refreshActivation()
    refreshStatus()
end)
refreshActivation()
section(aimPage,T("RESPOSTA DA MIRA","AIM RESPONSE"),7)
local silentHelp
if not silentAllowed then
    silentHelp=T("Silent indisponível neste jogo. Use Suave ou Direta.", "Silent is unavailable here. Use Smooth or Direct.")
elseif touchAvailable then
    silentHelp=T("Silent funciona com armas que usam mouse clássico ou raio central da câmera.",
        "Silent works with weapons that use classic mouse or a centered camera ray.")
else
    silentHelp=T("Silent funciona com armas que usam mouse clássico.", "Silent works with weapons that use classic mouse.")
end
local silentStatus
selector(aimPage,responses,"aimResponse",#responses,8,optionCaption,function()
    clearTarget()
    silentStatus.Text=silentHelp
end)
adjust(aimPage,settings,"aimSpeed",T("Velocidade da mira suave","Smooth aim speed"),3,70,2,9,save)
section(aimPage,T("PRIORIDADE DE ALVO","TARGET PRIORITY"),10)
selector(aimPage,priorities,"aimPriority",2,11,optionCaption,clearTarget)
section(aimPage,T("PONTO DO ALVO","TARGET PART"),12)
selector(aimPage,aimParts,"aimPart",3,13,optionCaption,clearTarget)
adjust(aimPage,settings,"aimRange",T("Alcance da mira","Aim range"),75,1500,50,14,save)
settingToggle(aimPage,"aimTeam",T("Ignorar aliados na mira","Ignore teammates in aim"),15,clearTarget)
selector(aimPage,obstacles,"aimObstacles",3,16,optionCaption,clearTarget)
settingToggle(aimPage,"aimSticky",T("Manter o alvo atual","Keep current target"),17)
settingToggle(aimPage,"aimCustomCamera",T("Aceitar câmera personalizada","Allow custom camera"),18,clearTarget)
section(aimPage,T("CÍRCULO DE MIRA","AIM CIRCLE"),19)
selector(aimPage,circles,"aimCircle",3,20,optionCaption)
adjust(aimPage,settings,"aimRadius",T("Raio do círculo (px)","Circle radius (px)"),30,500,15,21,save)
adjust(aimPage,settings,"aimOffsetY",T("Ajuste vertical (px)","Vertical offset (px)"),-130,130,5,22,save)
adjust(aimPage,settings,"aimWidth",T("Espessura do círculo","Circle thickness"),1,4,1,23,save)
selector(aimPage,circleColors,"aimCircleColor",2,24,optionCaption,nil,
    function(option) return option[4] and ui.rgb(option[4]) end)
settingToggle(aimPage,"aimLabel",T("Mostrar nome do alvo","Show target name"),25)
silentStatus=ui.label(aimPage,"TextLabel",silentHelp,36,26)
silentStatus.TextSize=11
ui.paint(silentStatus,"TextColor3","muted")
if touchAvailable then
    section(aimPage,T("LADO DO BOTÃO DE MIRA","AIM BUTTON SIDE"),27)
    selector(aimPage,touchSides,"aimTouchSide",2,28,optionCaption,placeAimButton)
    settingToggle(aimPage,"aimAdaptiveFov",T("Raio adaptado à tela","Scale radius to screen"),29,clearTarget)
end
adjust(aimPage,settings,"aimOffsetX",T("Ajuste horizontal (px)","Horizontal offset (px)"),-130,130,5,30,function()
    clearTarget()
    save()
end)

section(visionPage,T("DESTAQUE DE JOGADORES","PLAYER HIGHLIGHTING"),1)
local vision=row(visionPage,2)
toggle(vision,"esp","ESP",false,function(enabled) if not enabled then clearHighlights() end end)
section(visionPage,T("ESTILO","STYLE"),3)
local refreshHealth
selector(visionPage,modes,"espMode",2,4,optionCaption,function()
    clearHighlights()
    if refreshHealth then refreshHealth() end
end)
section(visionPage,T("COR DO ESP","ESP COLOR"),5)
local refreshColors=selector(visionPage,colors,"espColor",3,6,optionCaption,nil,
    function(option) return option[4] and ui.rgb(option[4]) end)
local hexRow=row(visionPage,7)
local hexLabel=ui.label(hexRow,"TextLabel",T("Cor personalizada","Custom color"),42,0)
hexLabel.Size,hexLabel.TextXAlignment=UDim2.new(1,-166,1,0),Enum.TextXAlignment.Left
hexLabel.TextSize=12
local hexInput=ui.label(hexRow,"TextBox","#"..settings.espHex,42,0)
hexInput.Position,hexInput.Size=UDim2.new(1,-166,0,0),UDim2.fromOffset(85,42)
hexInput.ClearTextOnFocus,hexInput.BackgroundTransparency=false,0
ui.paint(hexInput,"BackgroundColor3","tile")
ui.make("UICorner",{CornerRadius=UDim.new(0,6)},hexInput)
local useHex=ui.button(hexRow,T("APLICAR","APPLY"),0)
useHex.Position,useHex.Size=UDim2.new(1,-75,0,0),UDim2.fromOffset(75,42)
local hexStatus=ui.label(visionPage,"TextLabel","",25,8)
hexStatus.Visible=false
hexStatus.TextSize=11
ui.paint(hexStatus,"TextColor3","muted")
local function applyHex()
    local value=hex(hexInput.Text)
    hexStatus.Visible=not value
    if not value then
        hexStatus.Text=T("Use seis dígitos hexadecimais, como #FF7A8D.","Use six hex digits, such as #FF7A8D.")
        return
    end
    settings.espHex,settings.espColor=value,"custom"
    hexInput.Text="#"..value
    refreshColors()
    save()
end
connect(useHex.Activated,applyHex)
connect(hexInput.FocusLost,function(pressed) if pressed then applyHex() end end)
settingToggle(visionPage,"espThrough",T("Através de paredes","Through walls"),9,clearHighlights)
settingToggle(visionPage,"espTeam",T("Ignorar aliados no ESP","Ignore teammates in ESP"),10,clearHighlights)
adjust(visionPage,settings,"espRange",T("Distância máxima do ESP","Maximum ESP range"),100,1500,50,11,save)
section(visionPage,T("INFORMAÇÕES DO JOGADOR","PLAYER DETAILS"),12)
selector(visionPage,nickModes,"espNick",2,13,optionCaption,clearHighlights)
settingToggle(visionPage,"espDistance",T("Mostrar distância","Show distance"),14,clearHighlights)
refreshHealth=settingToggle(visionPage,"espHealth",T("Mostrar barra de vida","Show health bar"),15,clearHighlights,espHealthEnabled)
selector(visionPage,labelModes,"espLabels",2,16,optionCaption,clearHighlights)
settingToggle(visionPage,"espCustomRigs",T("Personagens personalizados (ESP e mira)","Custom characters (ESP and aim)"),17,function()
    clearHighlights()
    clearTarget()
end)

section(settingsPage,T("TEMAS DO HUB","HUB THEMES"),1)
selector(settingsPage,ui.themes,"theme",2,2,function(option) return option[2] end,ui.setTheme,
    function(option) return ui.themeAccent(option[1]) end)
section(settingsPage,T("TAMANHO E POSIÇÃO","SIZE AND POSITION"),3)
local function resize() applyLayout() save() end
adjust(settingsPage,settings,"width",T("Largura do painel","Panel width"),300,900,20,4,resize)
adjust(settingsPage,settings,"height",T("Altura do painel","Panel height"),340,880,20,5,resize)
adjust(settingsPage,settings,"scale",T("Escala do texto e controles (%)","Text and controls scale (%)"),65,140,5,6,resize)
adjust(settingsPage,settings,"launcher",T("Tamanho do botão A","A button size"),40,90,4,7,resize)
adjust(settingsPage,settings,"opacity",T("Opacidade do painel (%)","Panel opacity (%)"),60,100,5,8,resize)
connect(ui.button(settingsPage,T("RESTAURAR TAMANHO E POSIÇÃO","RESET SIZE AND POSITION"),9).Activated,function()
    for _,key in ipairs({"width","height","scale","launcher","opacity","panelX","panelY","buttonX","buttonY"}) do
        settings[key]=defaults[key]
    end
    for _,update in ipairs(updates) do update() end
    resize()
end)
connect(ui.button(settingsPage,T("IDIOMA","LANGUAGE"),10).Activated,hub.chooseLanguage)
connect(ui.button(settingsPage,T("ENCERRAR HUB","CLOSE HUB"),11).Activated,hub.unload)
connect(screen.Destroying,function() if alive then hub.unload() end end)

connect(player.CharacterRemoving,function()
    releaseCharacter()
    resetAim()
end)
local lastJump=-math.huge
connect(Input.JumpRequest,function()
    if not flags.jump or flags.fly or os.clock()-lastJump<0.12 then return end
    local humanoid=characterParts(player.Character)
    if humanoid and not humanoid.Sit then
        lastJump=os.clock()
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

connect(Run.PreSimulation,function()
    if not flags.fly and not flags.noclip then return end
    local character=player.Character
    local humanoid,root=characterParts(character)
    if not humanoid then releaseCharacter() return end
    if flags.noclip then
        if clipCharacter~=character then trackCollision(character) end
        for part in pairs(clipParts) do
            if not part:IsDescendantOf(character) then
                if clipParts[part] and part.Parent and not part.CanCollide then part.CanCollide=true end
                clipParts[part]=nil
            elseif part.CanCollide then clipParts[part]=true part.CanCollide=false end
        end
    end
    if not flags.fly then return end
    if humanoid.Sit or root.Anchored then stopFlight() return end
    if not flight or flight.root~=root then
        stopFlight()
        local attachment=ui.make("Attachment",{Name="AnonHubFlight"},root)
        local velocity=ui.make("LinearVelocity",{Attachment0=attachment,RelativeTo=Enum.ActuatorRelativeTo.World,
            ForceLimitsEnabled=false,VelocityConstraintMode=Enum.VelocityConstraintMode.Vector,
            VectorVelocity=Vector3.zero},root)
        flight={root=root,attachment=attachment,velocity=velocity}
    end
    local keyboard=not Input:GetFocusedTextBox()
    local rising=held.up or keyboard and (Input:IsKeyDown(Enum.KeyCode.Space) or Input:IsKeyDown(Enum.KeyCode.E))
    local sinking=held.down or keyboard and (Input:IsKeyDown(Enum.KeyCode.LeftControl) or Input:IsKeyDown(Enum.KeyCode.Q))
    local horizontal=humanoid.MoveDirection
    local direction=Vector3.new(horizontal.X,(rising and 1 or 0)-(sinking and 1 or 0),horizontal.Z)
    if direction.Magnitude>1 then direction=direction.Unit end
    flight.velocity.VectorVelocity=direction*values.fly
end)

local espRay=RaycastParams.new()
espRay.FilterType=Enum.RaycastFilterType.Exclude
local function removeEntry(entry)
    if entry.glow then entry.glow:Destroy() end
    if entry.billboard then entry.billboard:Destroy() end
    if entry.box then entry.box:Destroy() end
    if entry.tag then entry.tag:Destroy() end
end

local function addEntry(candidate,outline,labels,boxes,screenLabels)
    local entry={character=candidate.character,root=candidate.root,humanoid=candidate.humanoid}
    if outline then
        entry.glow=ui.make("Highlight",{Adornee=candidate.character,
            DepthMode=settings.espThrough and Enum.HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded,
            FillTransparency=0.88,OutlineTransparency=0.06},espFolder)
    end
    local health=espHealthEnabled() and candidate.humanoid~=nil
    if labels or health then
        local parent
        if screenLabels then
            entry.tag=ui.make("Frame",{BackgroundTransparency=1,Size=UDim2.fromOffset(172,31),
                AnchorPoint=Vector2.new(0.5,1),Visible=false},espScreen)
            parent=entry.tag
        else
            entry.billboard=ui.make("BillboardGui",{Adornee=candidate.root,Size=UDim2.fromOffset(172,31),
                StudsOffsetWorldSpace=Vector3.new(0,3.6,0),AlwaysOnTop=settings.espThrough},espFolder)
            parent=entry.billboard
        end
        if labels then
            entry.title=ui.label(parent,"TextLabel","",22,0)
            entry.title.TextSize,entry.title.TextStrokeTransparency=12,0.2
            entry.title.TextTruncate=Enum.TextTruncate.AtEnd
        end
        if health then
            local track=ui.make("Frame",{Position=UDim2.fromOffset(56,labels and 24 or 23),Size=UDim2.fromOffset(60,4),
                BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(24,27,33)},parent)
            entry.health=ui.make("Frame",{Size=UDim2.fromScale(1,1),BorderSizePixel=0},track)
        end
    end
    if boxes then
        entry.box=ui.make("Frame",{BackgroundTransparency=1,Visible=false,BorderSizePixel=0,
            AnchorPoint=Vector2.new(0.5,0)},espScreen)
        entry.edge=ui.make("UIStroke",{Thickness=1.5},entry.box)
    end
    return entry
end

local function playerDetails(other,distance)
    local name=""
    if settings.espNick=="display" then name=other.DisplayName or other.Name
    elseif settings.espNick=="username" then name="@"..other.Name
    elseif settings.espNick=="both" then name=(other.DisplayName or other.Name).." (@"..other.Name..")" end
    if settings.espDistance then
        local units=string.format("%.0f studs",distance)
        return name=="" and units or name.."  ·  "..units
    end
    return name
end

local function showPlayers()
    if (espFolder and not espFolder.Parent) or (espScreen and not espScreen.Parent) then clearHighlights() end
    local mode=settings.espMode
    local full=mode=="full"
    local outline,boxes=mode=="outline" or full,mode=="box" or full
    local labels=settings.espNick~="off" or settings.espDistance
    local screenLabels=settings.espLabels=="screen" and (labels or espHealthEnabled())
    if (outline or (not screenLabels and (labels or espHealthEnabled()))) and not espFolder then
        espFolder=ui.make("Folder",{Name="AnonHubESP"},world)
    end
    if (boxes or screenLabels) and not espScreen then
        espScreen=ui.make("ScreenGui",{Name="AnonHubESPOverlay",ResetOnSpawn=false,
            IgnoreGuiInset=true,ScreenInsets=Enum.ScreenInsets.DeviceSafeInsets,DisplayOrder=10025},playerGui)
    end
    local camera=world.CurrentCamera
    local ownModel,ownRoot=playerRig(player,settings.espCustomRigs)
    local origin=ownRoot and ownRoot.Position or camera and camera.CFrame.Position
    local candidates={}
    if origin then
        for _,other in ipairs(Players:GetPlayers()) do
            if not enemy(other,settings.espTeam) then continue end
            local character,root,humanoid=playerRig(other,settings.espCustomRigs)
            if not root or character==ownModel or (humanoid and humanoid.Health<=0) then continue end
            local distance=(root.Position-origin).Magnitude
            if distance<=settings.espRange then
                table.insert(candidates,{other=other,character=character,root=root,humanoid=humanoid,distance=distance})
            end
        end
    end
    if #candidates>32 then table.sort(candidates,function(a,b) return a.distance<b.distance end) end
    local paletteEntry=lookup(colors,settings.espColor)
    local shade=settings.espColor=="custom" and ui.rgb(settings.espHex)
        or paletteEntry[4] and ui.rgb(paletteEntry[4]) or color.accent
    local checkWalls=(boxes or screenLabels) and not settings.espThrough and camera
    if checkWalls then espRay.FilterDescendantsInstances=ownModel and {ownModel} or {} end
    local seen={}
    for index=1,math.min(#candidates,32) do
        local candidate=candidates[index]
        local other=candidate.other
        local entry=highlights[other]
        if entry and (entry.character~=candidate.character or entry.root~=candidate.root or entry.humanoid~=candidate.humanoid) then
            removeEntry(entry)
            entry=nil
        end
        if not entry then
            entry=addEntry(candidate,outline,labels,boxes,screenLabels)
            highlights[other]=entry
        end
        local tint=settings.espColor=="team" and not other.Neutral and other.Team and other.Team.TeamColor.Color or shade
        if entry.glow then entry.glow.OutlineColor,entry.glow.FillColor=tint,tint end
        if entry.billboard then entry.billboard.MaxDistance=settings.espRange end
        if entry.title then
            local details=playerDetails(other,candidate.distance)
            if entry.title.Text~=details then entry.title.Text=details end
            entry.title.TextColor3=tint
        end
        if entry.health then
            local percent=math.clamp(candidate.humanoid.Health/math.max(1,candidate.humanoid.MaxHealth),0,1)
            entry.health.Size=UDim2.fromScale(percent,1)
            entry.health.BackgroundColor3=tint
        end
        if entry.box then entry.edge.Color=tint end
        if entry.box or entry.tag then
            entry.head=partNamed(candidate.character,"Head")
            entry.clear=true
            if checkWalls then
                local cameraOrigin=camera.CFrame.Position
                local hit=world:Raycast(cameraOrigin,candidate.root.Position-cameraOrigin,espRay)
                entry.clear=not hit or hit.Instance:IsDescendantOf(candidate.character)
            end
        end
        seen[other]=true
    end
    for other,entry in pairs(highlights) do
        if not seen[other] then removeEntry(entry) highlights[other]=nil end
    end
end

local boxElapsed=0
local function drawBoxes(camera,dt)
    if not espScreen then return end
    boxElapsed+=dt
    if boxElapsed<1/30 then return end
    boxElapsed=0
    for _,entry in pairs(highlights) do
        local box,tag,root=entry.box,entry.tag,entry.root
        if not box and not tag then continue end
        if not camera or not entry.clear or not root.Parent or (entry.humanoid and entry.humanoid.Health<=0) then
            if box then box.Visible=false end
            if tag then tag.Visible=false end
            continue
        end
        local head=entry.head
        local top=head and head.Parent and head.Position+Vector3.new(0,head.Size.Y*0.55,0)
            or root.Position+Vector3.new(0,math.max(2.6,root.Size.Y*0.55),0)
        local upper,upperVisible=camera:WorldToViewportPoint(top)
        if tag then
            tag.Visible=upperVisible and upper.Z>0
            if tag.Visible then tag.Position=UDim2.fromOffset(upper.X,upper.Y-4) end
        end
        if box then
            local hip=entry.humanoid and entry.humanoid.HipHeight or 0
            local bottom=root.Position-Vector3.new(0,math.max(2.2,hip+root.Size.Y*0.5),0)
            local lower,lowerVisible=camera:WorldToViewportPoint(bottom)
            local height=math.abs(lower.Y-upper.Y)
            box.Visible=(upperVisible or lowerVisible) and upper.Z>0 and lower.Z>0 and height>4
            if box.Visible then
                box.Size=UDim2.fromOffset(height*0.55,height)
                box.Position=UDim2.fromOffset((upper.X+lower.X)*0.5,math.min(upper.Y,lower.Y))
            end
        end
    end
end

local tickElapsed=0
connect(Run.Heartbeat,function(dt)
    if not flags.esp and not flags.speed then return end
    tickElapsed+=dt
    if tickElapsed<0.18 then return end
    tickElapsed=0
    if flags.speed then
        local humanoid=characterParts(player.Character)
        if humanoid then speedOwner=applyProperty(speedOwner,humanoid,"WalkSpeed",values.speed) end
    end
    if flags.esp then showPlayers() end
end)

local ray=RaycastParams.new()
ray.FilterType=Enum.RaycastFilterType.Exclude
local function targetPart(character,root)
    if settings.aimPart=="root" then return root end
    if settings.aimPart=="head" then
        local head=partNamed(character,"Head")
        if head then return head end
    end
    return partNamed(character,"UpperTorso") or partNamed(character,"Torso") or root
end
local function hasSight(eye,direction,character,ownModel)
    local mode=settings.aimObstacles
    if mode=="through" then return true end
    local exclude=ownModel and {ownModel} or {}
    for attempt=1,(mode=="effects" and 4 or 1) do
        ray.FilterDescendantsInstances=exclude
        local hit=world:Raycast(eye,direction,ray)
        if not hit or hit.Instance:IsDescendantOf(character) then return true end
        local part=hit.Instance
        if mode~="effects" or attempt==4 or not part:IsA("BasePart") or part.CanCollide
            or math.max(part.Transparency,part.LocalTransparencyModifier)<0.95 then return false end
        table.insert(exclude,part)
    end
    return false
end
local function visibleTarget(camera,other,anchor,limit,origin,ownModel,best)
    if not enemy(other,settings.aimTeam) then return end
    local character,root,humanoid=playerRig(other,settings.espCustomRigs)
    if not root or character==ownModel or (humanoid and humanoid.Health<=0) then return end
    local target=targetPart(character,root)
    local point,onScreen=camera:WorldToViewportPoint(target.Position)
    if not onScreen or point.Z<=0 then return end
    local offset=(Vector2.new(point.X,point.Y)-anchor).Magnitude
    if offset>limit then return end
    local direction=target.Position-camera.CFrame.Position
    local distance=direction.Magnitude
    if distance>settings.aimRange or distance<0.01 then return end
    local score=settings.aimPriority=="distance" and (target.Position-origin).Magnitude or offset
    if best and score>=best then return end
    if not hasSight(camera.CFrame.Position,direction,character,ownModel) then return end
    return target,score
end

local silentHooks
local triedSilentHooks=false
local function activeWeaponTarget(session)
    local target,tool=session.target,session.tool
    if not target or not target.Parent or not tool or tool.Parent~=session.character
        or Input:GetFocusedTextBox() then return end
    local scriptOk,caller=pcall(getcallingscript)
    if scriptOk and typeof(caller)=="Instance" and caller:IsDescendantOf(tool) then return target end
end

local function redirectRay(original,target)
    local direction=target.Position-original.Origin
    if direction.Magnitude<=0.001 then return original end
    return Ray.new(original.Origin,direction.Unit)
end

local function installMouseHook(state)
    local mouse=player:GetMouse()
    local original
    local function read(object,key)
        local session=state.session
        if session and session.target and object==mouse and (key=="Hit" or key=="Target" or key=="UnitRay")
            and not checkcaller() then
            local target=activeWeaponTarget(session)
            if target then
                session.used="mouse"
                if key=="Hit" then return target.CFrame end
                if key=="Target" then return target end
                return redirectRay(original(object,key),target)
            end
        end
        return original(object,key)
    end
    original=hookmetamethod(game,"__index",type(newcclosure)=="function" and newcclosure(read) or read)
end

local function installTouchRayHook(state)
    local original
    local nearCenter=math.cos(math.rad(8))
    local function call(object,...)
        local session=state.session
        if session and session.target and session.camera==object and not checkcaller() then
            local method=getnamecallmethod()
            if method=="ViewportPointToRay" or method=="ScreenPointToRay" then
                local normal=original(object,...)
                if normal.Direction:Dot(session.camera.CFrame.LookVector)>=nearCenter then
                    local target=activeWeaponTarget(session)
                    if target then
                        session.used="camera"
                        return redirectRay(normal,target)
                    end
                end
                return normal
            end
        end
        return original(object,...)
    end
    original=hookmetamethod(game,"__namecall",type(newcclosure)=="function" and newcclosure(call) or call)
end

local function getSilentHooks()
    if triedSilentHooks then return silentHooks end
    triedSilentHooks=true
    if type(getgenv)~="function" or type(hookmetamethod)~="function"
        or type(checkcaller)~="function" or type(getcallingscript)~="function" then return end
    local env=getgenv()
    local state=env.AnonHubSilentHooks_v2
    if type(state)~="table" then
        state={}
        env.AnonHubSilentHooks_v2=state
    end
    if not state.mouse then state.mouse=pcall(installMouseHook,state) end
    if touchAvailable and not state.camera and type(getnamecallmethod)=="function" then
        state.camera=pcall(installTouchRayHook,state)
    end
    if state.mouse or (touchAvailable and state.camera) then silentHooks=state end
    return silentHooks
end

local function updateSilent(character,target,camera)
    local hook=getSilentHooks()
    local tool=hook and character and character:FindFirstChildOfClass("Tool")
    if not hook or not tool then
        if silentSession then table.clear(silentSession) end
    else
        if not silentSession then silentSession={} end
        if silentSession.tool~=tool then silentSession.used=false end
        silentSession.character,silentSession.tool,silentSession.target=character,tool,target
        silentSession.camera=usingTouch() and camera or nil
        hook.session=silentSession
    end
    local message
    if not hook then message=T("Mira silenciosa indisponível neste executor.","Silent aim is unavailable on this executor.")
    elseif not tool then message=T("Equipe uma arma para usar a mira silenciosa.","Equip a weapon to use silent aim.")
    elseif silentSession.used=="camera" then message=T("Raio da câmera da arma detectado.","Weapon camera ray detected.")
    elseif silentSession.used=="mouse" then message=T("Leitura de mouse da arma detectada.","Weapon mouse input detected.")
    else message=T("Aguardando entrada compatível da arma.","Waiting for compatible weapon input.") end
    if silentStatus.Text~=message then silentStatus.Text=message end
end

local strokeColors={}
for _,option in ipairs(circleColors) do if option[4] then strokeColors[option[1]]=ui.rgb(option[4]) end end
local function drawAim(viewport,anchor,radius,aiming,target)
    sight.Visible=settings.aimCircle=="enabled" or (settings.aimCircle=="active" and aiming)
    if sight.Visible then
        sight.Position,sight.Size=UDim2.fromOffset(anchor.X,anchor.Y),UDim2.fromOffset(radius*2,radius*2)
        sightEdge.Thickness=settings.aimWidth
        sightEdge.Color=target and color.active or strokeColors[settings.aimCircleColor] or color.accent
    end
    targetLabel.Visible=settings.aimLabel and aiming
    if targetLabel.Visible then
        targetLabel.Position=UDim2.fromOffset(anchor.X,math.min(viewport.Y-24,anchor.Y+(sight.Visible and radius or 12)+5))
        local text=target and aimTarget.DisplayName or T("Sem alvo no círculo","No target inside the circle")
        if targetLabel.Text~=text then targetLabel.Text=text end
    end
end

local function aimCamera(camera,target,anchor,viewport,dt)
    local current=camera.CFrame
    local goal=CFrame.lookAt(current.Position,target.Position,current.UpVector)
    if anchor.X~=viewport.X*0.5 or anchor.Y~=viewport.Y*0.5 then
        local direction=camera:ViewportPointToRay(anchor.X,anchor.Y).Direction
        local relative=current:VectorToObjectSpace(direction)
        local offCenter=CFrame.lookAt(Vector3.zero,relative)
        goal=goal*offCenter:Inverse()
    end
    if settings.aimResponse=="smooth" then
        local from=current
        if aimMotion and aimMotion.camera==camera and aimMotion.target==target then
            local previous=aimMotion.frame
            from=previous+(current.Position-previous.Position)
        end
        goal=from:Lerp(goal,1-math.exp(-settings.aimSpeed*math.min(dt,0.1)))
    end
    camera.CFrame=goal
    aimMotion={camera=camera,target=target,frame=goal}
end

local nextAimSearch=0
Run:BindToRenderStep(renderName,Enum.RenderPriority.Last.Value+1,function(dt)
    if not flags.aim and not flags.fov and not espScreen then return end
    local camera=world.CurrentCamera
    drawBoxes(camera,dt)
    if not camera then clearTarget() sight.Visible=false targetLabel.Visible=false return end
    if flags.fov then fovOwner=applyProperty(fovOwner,camera,"FieldOfView",settings.cameraFov) end
    if not flags.aim then return end
    aimButtonText()
    local viewport=camera.ViewportSize
    if viewport.X<=0 or viewport.Y<=0 then clearTarget() sight.Visible=false targetLabel.Visible=false return end
    local touch=usingTouch()
    local radius=settings.aimRadius
    if touch and settings.aimAdaptiveFov then
        radius*=math.clamp(math.min(viewport.X,viewport.Y)/480,0.65,1.2)
    end
    local anchor=Vector2.new(math.clamp(viewport.X*0.5+settings.aimOffsetX,0,viewport.X),
        math.clamp(viewport.Y*0.5+settings.aimOffsetY,0,viewport.Y))
    local mode=activationMode()
    local aiming=mode=="always" or (mode=="toggle" and aimLatched)
        or (mode=="hold" and (held.aim or Input:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
            or Input:IsKeyDown(Enum.KeyCode.LeftAlt)))
    local character,ownRoot,humanoid=playerRig(player,settings.espCustomRigs)
    if not aiming or (touch and body.Visible) or not character or (humanoid and humanoid.Health<=0) or Input:GetFocusedTextBox()
        or (not settings.aimCustomCamera and camera.CameraType==Enum.CameraType.Scriptable) then
        clearTarget()
        nextAimSearch=0
        drawAim(viewport,anchor,radius,false,nil)
        return
    end
    local origin=ownRoot and ownRoot.Position or camera.CFrame.Position
    local limit=radius
    local target,score
    if aimTarget then
        target,score=visibleTarget(camera,aimTarget,anchor,settings.aimSticky and limit*1.12 or limit,origin,character)
        if not target then clearTarget() end
    end
    if (not target or not settings.aimSticky) and os.clock()>=nextAimSearch then
        nextAimSearch=os.clock()+0.06
        for _,other in ipairs(Players:GetPlayers()) do
            if other~=aimTarget then
                local candidate,rank=visibleTarget(camera,other,anchor,limit,origin,character,score)
                if candidate then target,score,aimTarget=candidate,rank,other end
            end
        end
    end
    if silentAllowed and settings.aimResponse=="silent" then
        updateSilent(character,target,camera)
    elseif target then
        aimCamera(camera,target,anchor,viewport,dt)
    end
    drawAim(viewport,anchor,radius,true,target)
end)

hub.ready()
