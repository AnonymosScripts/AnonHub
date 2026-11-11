-- Luau · TESTAR_LOCAL.lua · authenticated local build · Roblox/Delta · Luau
local localBuildSources={["universal/main.lua"]=[====[-- Luau · AnonHub universal tools
local BOOT_VERSION="0.38.0"
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
local mobileLayout=usingTouch()
local silentAllowed=game.GameId~=8795154789 and game.PlaceId~=136801880565837
    and game.GameId~=6035872082 and game.PlaceId~=17625359962
local player=Players.LocalPlayer
local ui=hub.ui
local color=ui.color
local function T(pt,en) return hub.language=="pt" and pt or en end
local defaults={
    theme="carbon",width=560,height=610,scale=mobileLayout and 70 or 100,launcher=48,opacity=100,
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
    if key=="scale" then
        if mobileLayout then value=saved.mobileScale else value=saved.desktopScale or value end
    end
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
local function save()
    local preferences=table.clone(settings)
    preferences.mobileScale=mobileLayout and settings.scale or saved.mobileScale
    preferences.desktopScale=mobileLayout and (saved.desktopScale or saved.scale or 100) or settings.scale
    hub.saveSettings(preferences)
end
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
local header=ui.make("Frame",{Name="Header",Size=UDim2.new(1,0,0,62),BackgroundColor3="@dark",
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
local superpowerCleanup
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
    if superpowerCleanup then pcall(superpowerCleanup); superpowerCleanup=nil end
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
local superpowerPage
if game.PlaceId==74183246285569 and game.GameId==10770228857 then
    superpowerPage=tab("superpower","Superpower",T("Automacao dedicada · versao de teste","Dedicated automation · test build"))
end
local aimPage=tab("aim",T("Mira","Aim"),T("Ajuste a resposta, os alvos e o campo de visão.","Adjust response, targets, and field of view."))
local visionPage=tab("vision","ESP",T("Configure a apresentação dos jogadores na tela.","Choose how players are displayed on screen."))
local settingsPage=tab("settings",T("Ajustes","Settings"),T("Personalize a aparência e a posição do painel.","Customize the appearance and panel position."))
showTab("controls")
ui.gameCatalog(gamesPage,hub.language,1)
ui.gameCard(controls,hub.identity,T("SESSÃO ATIVA · MÓDULO UNIVERSAL","ACTIVE SESSION · UNIVERSAL MODULE"),2,true)
local access=hub.access
local layoutMembership
if type(access)=="table" then
    local premium=access.plan=="Premium"
    local card=ui.make("Frame",{Name="Membership",AnchorPoint=Vector2.new(1,0),
        Position=UDim2.new(1,-58,0,6),BackgroundColor3="@tile",BorderSizePixel=0},header)
    ui.make("UICorner",{CornerRadius=UDim.new(0,9)},card)
    local border=ui.make("UIStroke",{Color="@edge",Thickness=1},card)
    local portrait=ui.make("ImageLabel",{Position=UDim2.fromOffset(7,9),Size=UDim2.fromOffset(32,32),
        Image=string.format("rbxthumb://type=AvatarHeadShot&id=%d&w=100&h=100",player.UserId),
        BackgroundColor3="@dark",BorderSizePixel=0},card)
    ui.make("UICorner",{CornerRadius=UDim.new(1,0)},portrait)
    local member=ui.label(card,"TextLabel",player.DisplayName or player.Name,15,0)
    member.Position,member.Size=UDim2.fromOffset(46,3),UDim2.new(1,-115,0,15)
    member.Font,member.TextSize,member.TextXAlignment=Enum.Font.GothamBold,12,Enum.TextXAlignment.Left
    member.TextWrapped,member.TextTruncate=false,Enum.TextTruncate.AtEnd
    local username=ui.label(card,"TextLabel","@"..player.Name,14,0)
    username.Position,username.Size=UDim2.fromOffset(46,18),UDim2.new(1,-53,0,14)
    username.TextSize,username.TextXAlignment=10,Enum.TextXAlignment.Left
    username.TextWrapped,username.TextTruncate=false,Enum.TextTruncate.AtEnd
    ui.paint(username,"TextColor3","muted")
    local badge=ui.label(card,"TextLabel",premium and "PREMIUM" or "MEMBER",15,0)
    badge.Position,badge.Size=UDim2.new(1,-63,0,4),UDim2.fromOffset(57,15)
    badge.Font,badge.TextSize,badge.BackgroundTransparency=Enum.Font.GothamBold,10,0
    ui.make("UICorner",{CornerRadius=UDim.new(0,6)},badge)
    ui.paint(badge,"TextColor3","dark")
    if premium then
        local gold=Color3.fromRGB(248,208,130)
        badge.BackgroundColor3,border.Color=gold,gold
    else
        ui.paint(badge,"BackgroundColor3","accent")
    end
    local countdown=ui.label(card,"TextLabel","",15,0)
    countdown.Position=UDim2.fromOffset(46,32)
    countdown.Font,countdown.TextSize,countdown.TextXAlignment=Enum.Font.GothamMedium,11,Enum.TextXAlignment.Left
    countdown.TextWrapped,countdown.TextTruncate=false,Enum.TextTruncate.AtEnd
    ui.paint(countdown,"TextColor3","active")
    local expiry=access.expiresAt and os.date(T("!%d/%m/%Y %H:%M UTC","!%Y-%m-%d %H:%M UTC"),access.expiresAt)
    local key=ui.label(card,"TextLabel",access.keyLabel,13,0)
    key.Position,key.Size=UDim2.new(1,-63,0,19),UDim2.fromOffset(57,13)
    key.Font,key.TextSize,key.TextXAlignment=Enum.Font.Code,9,Enum.TextXAlignment.Right
    ui.paint(key,"TextColor3","muted")
    local expiryDate=ui.label(card,"TextLabel",expiry or "",15,0)
    expiryDate.Position,expiryDate.Size=UDim2.new(1,-113,0,32),UDim2.fromOffset(107,15)
    expiryDate.Font,expiryDate.TextSize,expiryDate.TextXAlignment=Enum.Font.Code,9,Enum.TextXAlignment.Right
    ui.paint(expiryDate,"TextColor3","muted")
    layoutMembership=function(width)
        local showBrand=width>=360
        local cardWidth=math.min(254,math.max(0,width-(showBrand and 206 or 110)))
        local titleWidth=math.max(0,width-cardWidth-122)
        local showTag=showBrand and titleWidth>=122
        card.Size=UDim2.fromOffset(cardWidth,50)
        brand.Visible,tag.Visible=showBrand,showTag
        brand.Position=UDim2.fromOffset(56,showTag and 11 or 18)
        brand.Size,tag.Size=UDim2.fromOffset(titleWidth,25),UDim2.fromOffset(titleWidth,16)
        key.Visible=cardWidth>=206
        username.Size=UDim2.new(1,key.Visible and -113 or -53,0,14)
        expiryDate.Visible=expiry~=nil and cardWidth>=248
        countdown.Size=UDim2.new(1,expiryDate.Visible and -163 or -53,0,15)
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
                countdown.Text=string.format(T("Restam %ds","%ds left"),math.ceil(remaining))
                task.delay(1,updateDuration)
            else
                local minutes=math.ceil(remaining/60)
                countdown.Text=string.format(T("Restam %dh %02dm","%dh %02dm left"),math.floor(minutes/60),minutes%60)
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
    local portrait=mobileLayout and canvas.AbsoluteSize.X<canvas.AbsoluteSize.Y
    local sidebar=not portrait and width>=530 and height>=158+tabCount*46
    navTitle.Visible=sidebar
    nav.Position=UDim2.fromOffset(12,74)
    nav.Size=sidebar and UDim2.new(0,132,1,-118) or UDim2.new(1,-24,0,44)
    for id,tabInfo in pairs(tabs) do
        local control,page=tabButtons[id],pages[id]
        tabInfo.number.Visible=sidebar
        if sidebar then
            control.Position,control.Size=UDim2.fromOffset(6,34+(tabInfo.index-1)*46),UDim2.new(1,-12,0,40)
            tabInfo.caption.Text,tabInfo.caption.TextSize=tabInfo.title,12
            tabInfo.caption.Position,tabInfo.caption.Size=UDim2.fromOffset(37,0),UDim2.new(1,-45,1,0)
            tabInfo.caption.TextXAlignment=Enum.TextXAlignment.Left
            tabInfo.marker.Position,tabInfo.marker.Size=UDim2.fromOffset(0,10),UDim2.fromOffset(3,20)
            page.Position,page.Size=UDim2.fromOffset(160,74),UDim2.new(1,-172,1,-118)
        else
            control.Position=UDim2.new((tabInfo.index-1)/tabCount,3,0,3)
            control.Size=UDim2.new(1/tabCount,-6,1,-6)
            tabInfo.caption.Text,tabInfo.caption.TextSize=tabInfo.compactTitle,11
            tabInfo.caption.Position,tabInfo.caption.Size=UDim2.fromOffset(0,0),UDim2.fromScale(1,1)
            tabInfo.caption.TextXAlignment=Enum.TextXAlignment.Center
            tabInfo.marker.Position,tabInfo.marker.Size=UDim2.new(0.25,0,1,-3),UDim2.new(0.5,0,0,2)
            page.Position,page.Size=UDim2.fromOffset(12,130),UDim2.new(1,-24,1,-170)
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

-- BEGIN GENERATED SUPERPOWER MODULE
if superpowerPage then
    local success,err=pcall(function()
        local initialize=(function()
-- Luau · superpower/module.lua · AnonHub integration · Roblox/Delta · Luau
-- Implemented against the client inventory captured on 2026-11-11. No Luarmor code used.
local Logic={}
function Logic.protected(data,id,keep)
    local card=data.Cards and data.Cards[id]
    return not card or keep[id] or card.Favorite==true or card.Locked==true
        or table.find(data.Equipped or {},id)~=nil
end
function Logic.sacrificeCount(data,id,keep,reserve,rank,spare)
    if Logic.protected(data,id,keep) or rank>3 then return 0 end
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
        multiplier=1e12,reserve=5,protected="",branch="Power",teleport=false}
    local settingsFile="AnonHub_Superpower_"..player.UserId..".json"
    if type(readfile)=="function" then
        local ok,s=pcall(function() return Http:JSONDecode(readfile(settingsFile)) end)
        if ok and type(s)=="table" then
            if type(s.protected)=="string" then cfg.protected=s.protected:sub(1,2000) end
            if type(s.multiplier)=="number" and s.multiplier==s.multiplier then cfg.multiplier=math.clamp(s.multiplier,1,1e12) end
            if type(s.reserve)=="number" and s.reserve==s.reserve then cfg.reserve=math.clamp(math.floor(s.reserve),1,1000) end
            if table.find({"Cash","Luck","Power","Speed","Boss"},s.branch) then cfg.branch=s.branch end
        end
    end
    local function save()
        if type(writefile)=="function" then pcall(writefile,settingsFile,Http:JSONEncode({protected=cfg.protected,multiplier=cfg.multiplier,reserve=cfg.reserve,branch=cfg.branch})) end
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
    toggle("progress","Auto progressao","Auto progression")
    toggle("farm","Farm de inimigos","Enemy farm")
    toggle("boss","Priorizar bosses","Prioritize bosses")
    toggle("abilities","Habilidades automaticas","Automatic abilities")
    toggle("open","Abrir packs","Open packs")
    toggle("equip","Equipar melhor carta","Equip best card")
    toggle("place","Melhores cartas na base","Best cards on base")
    toggle("fuse","Fundir cartas","Fuse cards")
    toggle("tree","Comprar nos da arvore","Buy skill tree nodes")
    toggle("upgrades","Upgrades com dinheiro do jogo","Upgrades with game cash")
    toggle("sacrifice","Sacrificar sobras Common/Uncommon/Rare","Sacrifice Common/Uncommon/Rare spares")
    label(T("Sacrificio preserva cartas equipadas, posicionadas, protegidas e a reserva. Desligado por padrao.","Sacrifice preserves equipped, placed, protected cards and the reserve. Off by default."),54)
    toggle("boost","Dano NPC local ampliado (experimental)","Boost local NPC damage (experimental)")
    toggle("guard","Bloquear dano local (experimental)","Block local damage (experimental)")
    toggle("stun","Bloquear stun local (experimental)","Block local stun (experimental)")
    label(T("Nao garante imunidade no servidor. Multiplicador atua em NPCs marcados Local.","Does not guarantee server immunity. Multiplier affects NPCs marked Local."),42)
    toggle("teleport","Mover por teleporte em vez de andar","Teleport instead of walking")
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
        pads[#pads+1]={id=tonumber(p.Name),level=a.Level or 1,gate=a.Gate,enemy=a.Enemy,
            respawn=a.RespawnTime or 90,cf=a.PadCFrame}
    end end
    table.sort(pads,function(a,b) return a.level<b.level end)
    local padById={}; for _,p in ipairs(pads) do padById[p.id]=p end
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
        local candidates={}
        for _,node in pairs(modules.Shrine.Tree or {}) do
            if node.Branch==cfg.branch and not modules.Shrine.CantBuy(data,node.Id) then candidates[#candidates+1]=node end
        end
        table.sort(candidates,function(a,b) return a.Cost==b.Cost and a.Id<b.Id or a.Cost<b.Cost end)
        if candidates[1] then call("TreeBuy",candidates[1].Id) end
    end
    actions[6]=function(data)
        if not cfg.sacrifice or not modules.Shrine.Open(data) then return end
        local keep=keepSet()
        for card in pairs(data.Cards or {}) do
            local def=modules.Cards.ById[card]
            local rank=def and modules.Cards.RarityRank[def.Rarity] or 999
            local n=Logic.sacrificeCount(data,card,keep,cfg.reserve,rank,modules.Shrine.Spare(data,card))
            if n>0 then call("Sacrifice",card,n); return end
        end
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
                    if cfg.progress and boss then available=available and currentBoss and pid==currentBoss.id end
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
        if not (root and humanoid and humanoid.Health>0) or modules.Opening.Playing then return end
        if cfg.farm or cfg.boss then
            if target then
                local delta=root.Position-target.Position
                if delta.Magnitude>10 then
                    local destination=target.Position+(delta.Magnitude>0 and delta.Unit or Vector3.new(0,0,1))*7
                    if cfg.teleport then root.CFrame=CFrame.lookAt(destination,target.Position) else humanoid:MoveTo(destination) end
                end
            elseif cfg.progress and currentBoss and (cfg.boost or currentBoss.level<=level) and typeof(currentBoss.cf)=="CFrame" then
                if cfg.teleport then root.CFrame=currentBoss.cf+CFrame.new(0,4,0).Position else humanoid:MoveTo(currentBoss.cf.Position) end
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
        initialize({ui=ui,page=superpowerPage,T=T,attach=function(cleanup) superpowerCleanup=cleanup end})
    end)
    if not success then
        if superpowerCleanup then pcall(superpowerCleanup); superpowerCleanup=nil end
        ui.label(superpowerPage,"TextLabel",tostring(err),80,999)
    end
end
-- END GENERATED SUPERPOWER MODULE

hub.ready()
]====]}
-- Luau · AnonHub universal entry point
local version="0.38.0"
local games={
    [10770228857]={name="Steal a Superpower",place=74183246285569,path="universal/main.lua",cache="AnonHub_Universal_v038.luau",universal=true,theme="carbon",status="ONLINE · TESTE"},
    [10767408330]={name="Peel THE Potato",chapter="2",version="0.37.5",place=116701845804918,path="potato/chapter2.lua",cache="Evolvy_Chapter2_Main.luau"},
}
local universal={name="Universal",path="universal/main.lua",cache="AnonHub_Universal_v038.luau"}
local root="https://raw.githubusercontent.com/AnonymosScripts/AnonHub/main/"
-- Public Identifier from Panda Auth → Service Settings → General.
local pandaServiceId="anonkey24hrs"
local pandaSdkUrl="https://secure.pandauth.com/pv4/lib"
local pandaKeyFile="AnonHub_Panda_Key_v1.json"
local youtubeUrl="https://www.youtube.com/@AnonymousApks_Scripts"
local preferencesFile="AnonHub_Preferences_v1.json"
local environment=type(getgenv)=="function" and getgenv() or _G
local players=game:GetService("Players")
local http=game:GetService("HttpService")
if not game:IsLoaded() then game.Loaded:Wait() end
if not players.LocalPlayer then players:GetPropertyChangedSignal("LocalPlayer"):Wait() end
local player=players.LocalPlayer
local playerGui=player:WaitForChild("PlayerGui")
local preferences=environment.AnonHubPreferences
if type(preferences)~="table" then
    local ok,saved=pcall(function()
        local content=readfile(preferencesFile)
        if type(content)=="string" and #content<=8192 then return http:JSONDecode(content) end
    end)
    preferences=ok and type(saved)=="table" and saved.schema==1 and saved or {schema=1}
    environment.AnonHubPreferences=preferences
end

local function save()
    if type(writefile)=="function" then
        pcall(function() writefile(preferencesFile,http:JSONEncode(preferences)) end)
    end
end

local function cleanKey(value)
    if type(value)~="string" or #value>512 then return nil end
    local key=value:match("^%s*(.-)%s*$")
    if key~="" and not key:find("%s") and not key:find("%c") then return key end
end

local rememberedKey
local function readKey()
    if rememberedKey~=nil then return rememberedKey or nil end
    rememberedKey=false
    if type(readfile)~="function" then return end
    local ok,record=pcall(function()
        local raw=readfile(pandaKeyFile)
        if type(raw)=="string" and #raw<=2048 then return http:JSONDecode(raw) end
    end)
    if ok and type(record)=="table" and record.service==pandaServiceId and record.account==player.UserId then
        rememberedKey=cleanKey(record.key) or false
    end
    return rememberedKey or nil
end

local function writeKey(key)
    rememberedKey=key or false
    if type(writefile)=="function" then
        pcall(function()
            writefile(pandaKeyFile,http:JSONEncode({service=pandaServiceId,account=player.UserId,key=key}))
        end)
    end
end

local function loadPandaSdk()
    if pandaServiceId=="" then return nil,"NO_SERVICE" end
    local fetched,source=pcall(game.HttpGet,game,pandaSdkUrl)
    if not fetched or type(source)~="string" then return nil,"NETWORK" end
    local ok,sdk=pcall(function()
        local library=assert(loadstring(source,"Panda Auth SDK"))()
        assert(type(library)=="table" and type(library.configure)=="function"
            and type(library.validate)=="function" and type(library.getKeyUrl)=="function"
            and type(library.disconnect)=="function")
        library.configure({serviceId=pandaServiceId,debug=false,kickOnDetect=false})
        return library
    end)
    if not ok then return nil,"PROTOCOL" end
    return sdk
end

local function finite(value)
    return type(value)=="number" and value==value and math.abs(value)<math.huge
end

local function validateKey(sdk,key)
    local ok,result=pcall(sdk.validate,key)
    if not ok then return nil,"NETWORK" end
    if type(result)~="table" then return nil,"PROTOCOL" end
    if result.success~=true then return nil,result.reason or "PROTOCOL" end

    local expiresAt=result.expiresAtUnix
    local remaining=result.timeLeft
    if expiresAt~=nil and not finite(expiresAt) then return nil,"PROTOCOL" end
    if remaining~=nil and not finite(remaining) then return nil,"PROTOCOL" end
    if not expiresAt and result.expiresAt~=nil then
        local parsed,date=pcall(DateTime.fromIsoDate,result.expiresAt)
        if parsed and date then expiresAt=date.UnixTimestamp end
        if not finite(expiresAt) then return nil,"PROTOCOL" end
    end
    if remaining==nil and expiresAt then remaining=expiresAt-os.time() end
    if remaining and remaining<=0 then return nil,"EXPIRED" end
    expiresAt=expiresAt or (remaining and os.time()+remaining)
    if expiresAt and (expiresAt<=0 or expiresAt>253402300799) then return nil,"PROTOCOL" end
    return {
        plan=result.isPremium==true and "Premium" or "Member",
        keyLabel=#key>8 and "••••"..key:sub(-4) or "••••",
        expiresAt=expiresAt,
        deadline=remaining and os.clock()+remaining or nil,
        lifetime=remaining==nil,
        source="Panda Auth",
    }
end

local iconFile="AnonHub_Launcher_v1.png"
local iconSignature=string.char(137,80,78,71,13,10,26,10)
local registerAsset=type(getcustomasset)=="function" and getcustomasset
    or type(getsynasset)=="function" and getsynasset or nil
local iconUri,iconLoading
local iconListeners={}

local function isIcon(bytes)
    return type(bytes)=="string" and #bytes>=24 and #bytes<=4*1024*1024
        and bytes:sub(1,#iconSignature)==iconSignature
end

local function loadIcon()
    local cached=false
    if type(readfile)=="function" then
        local ok,bytes=pcall(readfile,iconFile)
        cached=ok and isIcon(bytes)
    end
    if not cached then
        if type(writefile)~="function" then return end
        local ok,bytes=pcall(game.HttpGet,game,root.."assets/anonhub-launcher.png?v=1")
        if not ok or not isIcon(bytes) then return end
        local wrote,result=pcall(writefile,iconFile,bytes)
        if not wrote or result==false then return end
    end
    local ok,uri=pcall(registerAsset,iconFile)
    if ok and type(uri)=="string" and (uri:match("^rbxasset://.+") or uri:match("^rbxassetid://%d+$")) then
        return uri
    end
end

local function setLauncherIcon(button,uri)
    if not button.Parent or button:FindFirstChild("AnonHubLauncherIcon") then return end
    local image=Instance.new("ImageLabel")
    image.Name="AnonHubLauncherIcon"
    image.Size=UDim2.fromScale(1,1)
    image.BackgroundTransparency=1
    image.BorderSizePixel=0
    image.Active=false
    image.ScaleType=Enum.ScaleType.Crop
    image.ZIndex=button.ZIndex+1
    local corner=Instance.new("UICorner")
    local buttonCorner=button:FindFirstChildOfClass("UICorner")
    corner.CornerRadius=buttonCorner and buttonCorner.CornerRadius or UDim.new(0,7)
    corner.Parent=image
    local function reveal()
        if image.Parent and image.IsLoaded then button.TextTransparency=1 end
    end
    image:GetPropertyChangedSignal("IsLoaded"):Connect(reveal)
    image.Parent=button
    image.Image=uri
    reveal()
end

local function withArtwork(callback)
    if not registerAsset then return end
    if iconUri then callback(iconUri) return end
    table.insert(iconListeners,callback)
    if iconLoading then return end
    iconLoading=true
    task.spawn(function()
        iconUri=loadIcon()
        iconLoading=false
        local pending=iconListeners
        iconListeners={}
        if iconUri then
            for _,listener in ipairs(pending) do listener(iconUri) end
        end
    end)
end

local function decorateLauncher(button)
    withArtwork(function(uri) setLauncherIcon(button,uri) end)
end

local function decorateArtwork(image)
    withArtwork(function(uri) if image.Parent then image.Image=uri end end)
end

local function rgb(hex)
    return Color3.fromRGB(tonumber(hex:sub(1,2),16),tonumber(hex:sub(3,4),16),tonumber(hex:sub(5,6),16))
end
local function palette(dark,tile,text,muted,accent,active,edge,top,bottom)
    return {dark=rgb(dark),tile=rgb(tile),text=rgb(text),muted=rgb(muted),accent=rgb(accent),
        active=rgb(active),edge=rgb(edge),top=rgb(top),bottom=rgb(bottom)}
end
local themes={
    peel=palette("231F19","413627","FCF6E2","D5C3A3","FFCA42","80CD37","745831","FFF1D6","B08455"),
    carbon=palette("101118","191B26","F2F2FA","A8AEC3","B3ADFF","81DDC0","33364A","30334D","181A26"),
    midnight=palette("0D1524","182740","F1F6FF","A9BCD9","77B9FF","80E9BE","375C88","243D65","101D33"),
    blood=palette("1C0D17","361626","FFF0F4","DCADBD","FF7A8D","FF9AAE","874058","6B243C","2A1121"),
    aurora=palette("0A201F","153533","EEFFF8","A5CCBE","6CF5B8","A0EBAF","2F766A","275B55","12302F"),
    amethyst=palette("190F2B","2C2048","F8F0FF","C4B1E2","CE9BFF","D9B0FF","674C9B","503976","211736"),
    arctic=palette("0D202A","193646","ECFAFF","ACCDD9","87E5F5","A3ECE1","437E94","345E72","122938"),
}
local themeOptions={{"carbon","Carbon"},{"midnight","Midnight"},{"blood","Blood Moon"},{"aurora","Aurora"},
    {"amethyst","Amethyst"},{"arctic","Arctic"}}

local function createUI(initialTheme)
    local color={}
    local bindings=setmetatable({}, {__mode="k"})
    local function update(object,property,token)
        if type(token)=="table" then
            object[property]=ColorSequence.new(color[token[1]],color[token[2]])
        else
            object[property]=color[token]
        end
    end
    local function paint(object,property,token)
        local properties=bindings[object] or {}
        bindings[object]=properties
        properties[property]=token
        update(object,property,token)
    end
    local function setTheme(theme)
        for key,value in pairs(themes[theme] or themes.midnight) do color[key]=value end
        for object,properties in pairs(bindings) do
            if object.Parent then
                for property,token in pairs(properties) do update(object,property,token) end
            end
        end
    end
    setTheme(initialTheme)
    local function make(class,properties,parent)
        local object=Instance.new(class)
        for key,value in pairs(properties) do
            local token=type(value)=="string" and key:find("Color",1,true) and value:match("^@(%a+)$")
            if token and color[token] then paint(object,key,token) else object[key]=value end
        end
        object.Parent=parent
        return object
    end
    local function gradient(parent,top,bottom,rotation)
        local item=make("UIGradient",{Rotation=rotation},parent)
        paint(item,"Color",{top,bottom})
        return item
    end
    local function label(parent,class,message,height,order)
        return make(class,{BackgroundTransparency=1,Text=message,TextColor3="@text",
            TextSize=16,TextWrapped=true,Font=Enum.Font.GothamMedium,Size=UDim2.new(1,0,0,height),
            LayoutOrder=order,BorderSizePixel=0,AutoLocalize=false},parent)
    end

    local function panel(height,modal,console)
        local screen=make("ScreenGui",{Name="AnonHubLauncher",ResetOnSpawn=false,DisplayOrder=10030},playerGui)
        local shade=make("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3=Color3.new(0,0,0),
            BackgroundTransparency=modal==false and 1 or console and 0.22 or 0.3,BorderSizePixel=0,Active=modal~=false},screen)
        local body=make("ScrollingFrame",{Size=UDim2.fromScale(0.9,0.92),AnchorPoint=Vector2.new(0.5,0.5),
            Position=UDim2.fromScale(0.5,0.5),BackgroundColor3="@dark",BorderSizePixel=0,
            CanvasSize=UDim2.fromOffset(0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,
            ScrollingDirection=Enum.ScrollingDirection.Y,ScrollBarThickness=3,ScrollBarImageColor3="@accent",
            ElasticBehavior=initialTheme=="peel" and Enum.ElasticBehavior.WhenScrollable or Enum.ElasticBehavior.Never},shade)
        make("UISizeConstraint",{MaxSize=Vector2.new(console and 550 or modal==false and 520 or 470,height)},body)
        make("UICorner",{CornerRadius=UDim.new(0,console and 16 or 9)},body)
        make("UIStroke",{Color="@edge",Thickness=console and 1 or 2},body)
        make("UIPadding",{PaddingTop=UDim.new(0,12),PaddingBottom=UDim.new(0,12),
            PaddingLeft=UDim.new(0,16),PaddingRight=UDim.new(0,16)},body)
        make("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,6)},body)
        local header=make("Frame",{Size=UDim2.new(1,0,0,console and 49 or 42),LayoutOrder=0,BackgroundColor3=console and "@dark" or "@edge",
            BorderSizePixel=0,Active=true},body)
        make("UICorner",{CornerRadius=UDim.new(0,7)},header)
        if console then
            local mark=label(header,"TextLabel","A",30,0)
            mark.Position,mark.Size=UDim2.fromOffset(0,6),UDim2.fromOffset(30,30)
            mark.BackgroundTransparency=0
            mark.Font,mark.TextSize=Enum.Font.GothamBlack,17
            paint(mark,"BackgroundColor3","accent")
            paint(mark,"TextColor3","dark")
            make("UICorner",{CornerRadius=UDim.new(0,9)},mark)
            local brand=label(header,"TextLabel","AnonHub",40,0)
            brand.Position,brand.Size=UDim2.fromOffset(41,1),UDim2.new(1,-130,0,40)
            brand.Font,brand.TextSize,brand.TextXAlignment=Enum.Font.GothamBold,18,Enum.TextXAlignment.Left
            local chip=label(header,"TextLabel","UNIVERSAL",24,0)
            chip.Position,chip.Size=UDim2.new(1,-82,0,9),UDim2.fromOffset(82,24)
            chip.Font,chip.TextSize,chip.BackgroundTransparency=Enum.Font.Code,10,0
            paint(chip,"BackgroundColor3","tile")
            paint(chip,"TextColor3","accent")
            make("UICorner",{CornerRadius=UDim.new(0,6)},chip)
        else
            gradient(header,"top","bottom",90)
            local brand=label(header,"TextLabel","ANONHUB",42,0)
            brand.Font,brand.TextSize=Enum.Font.GothamBlack,25
            paint(brand,"TextStrokeColor3","dark")
            brand.TextStrokeTransparency=0.32
        end
        return screen,body,shade,header
    end

    local function button(parent,message,order,primary)
        local object=label(parent,"TextButton",message,42,order)
        object.BackgroundTransparency=0
        paint(object,"BackgroundColor3",primary and "accent" or "tile")
        paint(object,"TextColor3",primary and "dark" or "text")
        object.Font=Enum.Font.GothamBold
        make("UICorner",{CornerRadius=UDim.new(0,7)},object)
        make("UIStroke",{Color="@edge",Thickness=1},object)
        return object
    end

    local function providerButton(parent,provider,message,order)
        local control=button(parent,"",order)
        control.Name=provider.."Button"
        local caption=label(control,"TextLabel",message,42,0)
        caption.Position,caption.Size=UDim2.fromOffset(37,0),UDim2.new(1,-44,1,0)
        caption.Font,caption.TextSize=Enum.Font.GothamBold,12
        caption.TextXAlignment=Enum.TextXAlignment.Left
        local icon=make("Frame",{Name=provider.."Icon",Position=UDim2.new(0,11,0.5,0),
            AnchorPoint=Vector2.new(0,0.5),Size=UDim2.fromOffset(18,18),BackgroundTransparency=1},control)
        local white=Color3.fromRGB(255,255,255)
        if provider=="YouTube" then
            local mark=make("Frame",{Position=UDim2.fromOffset(0,3),Size=UDim2.fromOffset(18,12),
                BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(255,32,52)},icon)
            make("UICorner",{CornerRadius=UDim.new(0,4)},mark)
            local play=label(mark,"TextLabel","▶",12,0)
            play.Position,play.TextSize,play.TextColor3=UDim2.fromOffset(0,-1),9,white
        else
            local ink=Color3.fromRGB(24,25,31)
            icon.BackgroundTransparency=0.15
            paint(icon,"BackgroundColor3","accent")
            make("UICorner",{CornerRadius=UDim.new(0,5)},icon)
            local function oval(name,x,y,width,height,tint,rotation)
                local part=make("Frame",{Name=name,Position=UDim2.fromOffset(x,y),Size=UDim2.fromOffset(width,height),
                    BorderSizePixel=0,BackgroundColor3=tint,Rotation=rotation or 0},icon)
                make("UICorner",{CornerRadius=UDim.new(1,0)},part)
            end
            oval("LeftEar",0,0,7,7,ink)
            oval("RightEar",11,0,7,7,ink)
            oval("Face",1,3,16,14,white)
            oval("LeftEye",4,7,4,5,ink,28)
            oval("RightEye",10,7,4,5,ink,-28)
            oval("Nose",7,12,4,2,ink)
        end
        return control,caption
    end

    local function artworkBackdrop(parent)
        gradient(parent,"top","dark",0)
        -- Use only the mask so localized labels never compete with text baked into the artwork.
        local art=make("ImageLabel",{Name="AnonHubArtwork",AnchorPoint=Vector2.new(1,0.5),
            Position=UDim2.fromScale(1,0.5),Size=UDim2.fromScale(0.60,1),BackgroundTransparency=1,
            ScaleType=Enum.ScaleType.Crop,ImageTransparency=0.14,
            ImageRectOffset=Vector2.new(530,76),ImageRectSize=Vector2.new(470,520)},parent)
        make("UICorner",{CornerRadius=UDim.new(0,10)},art)
        decorateArtwork(art)
        local shade=make("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3="@dark",BorderSizePixel=0},parent)
        make("UICorner",{CornerRadius=UDim.new(0,10)},shade)
        make("UIGradient",{Transparency=NumberSequence.new({
            NumberSequenceKeypoint.new(0,0.06),NumberSequenceKeypoint.new(0.58,0.34),
            NumberSequenceKeypoint.new(1,0.93),
        })},shade)
    end

    local function gameCard(parent,identity,badge,order,console,localizedBackdrop)
        local height=console and 158 or 112
        local card=make("Frame",{Size=UDim2.new(1,0,0,height),BackgroundColor3="@tile",BorderSizePixel=0,
            ClipsDescendants=true,LayoutOrder=order},parent)
        make("UICorner",{CornerRadius=UDim.new(0,console and 12 or 8)},card)
        if console then make("UIStroke",{Color="@edge",Thickness=1},card) end
        local cover
        if localizedBackdrop then
            artworkBackdrop(card)
        else
            cover=make("ImageLabel",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Image=identity.cover,
                ScaleType=Enum.ScaleType.Crop,ImageTransparency=console and 0.08 or 0.32},card)
            local shade=make("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3="@dark",
                BackgroundTransparency=console and 0.08 or 0.42,BorderSizePixel=0},card)
            if console then
                make("UIGradient",{Rotation=90,Transparency=NumberSequence.new({
                    NumberSequenceKeypoint.new(0,0.94),NumberSequenceKeypoint.new(0.55,0.46),
                    NumberSequenceKeypoint.new(1,0),
                })},shade)
            end
        end
        local icon=make("ImageLabel",{Position=UDim2.fromOffset(console and 14 or 11,console and 71 or 18),Size=UDim2.fromOffset(76,76),
            Image=identity.icon,BackgroundColor3="@dark",BorderSizePixel=0,ScaleType=Enum.ScaleType.Crop},card)
        make("UICorner",{CornerRadius=UDim.new(0,9)},icon)
        make("UIStroke",{Color="@edge",Thickness=1},icon)
        local name=label(card,"TextLabel",identity.name,44,1)
        name.Position,name.Size=UDim2.fromOffset(103,console and 80 or 22),UDim2.new(1,-115,0,44)
        name.Font,name.TextSize=Enum.Font.GothamBold,console and 22 or 19
        if not console then
            name.Position,name.Size=UDim2.fromOffset(100,22),UDim2.new(1,-109,0,44)
            name.Font=Enum.Font.GothamBlack
        end
        name.TextXAlignment=Enum.TextXAlignment.Left
        identity.watch(function(value) if name.Parent then name.Text=value end end)
        if cover and identity.watchCover then
            identity.watchCover(function(value) if cover.Parent then cover.Image=value end end)
        end
        local mode=label(card,"TextLabel",badge,27,2)
        mode.Position,mode.Size=UDim2.fromOffset(console and 104 or 100,console and 124 or 70),UDim2.new(1,console and -116 or -107,0,27)
        mode.TextXAlignment,mode.TextSize=Enum.TextXAlignment.Left,11
        if console then mode.Font=Enum.Font.Code end
        paint(mode,"TextColor3","accent")
        return card
    end

    local function catalogEntries()
        local entries={}
        for id,module in pairs(games) do table.insert(entries,{id=id,module=module}) end
        table.sort(entries,function(a,b) return a.module.name<b.module.name end)
        return entries
    end

    local function gameCatalog(parent,language,order)
        local pt=language=="pt"
        local entries=catalogEntries()
        if #entries==0 then
            local empty=label(parent,"TextLabel",pt and "Nenhum módulo dedicado no catálogo." or "No dedicated modules in the catalog.",40,order)
            empty.TextSize=12
            paint(empty,"TextColor3","muted")
        end
        for index,entry in ipairs(entries) do
            local module=entry.module
            local current=entry.id==game.GameId and module.place==game.PlaceId
            local card=make("Frame",{Name="GameModule",Size=UDim2.new(1,0,0,78),LayoutOrder=order+index-1,
                BackgroundColor3="@tile",BorderSizePixel=0},parent)
            make("UICorner",{CornerRadius=UDim.new(0,9)},card)
            make("UIStroke",{Color="@edge",Thickness=1},card)
            local icon=make("ImageLabel",{Position=UDim2.fromOffset(11,13),Size=UDim2.fromOffset(52,52),
                BackgroundColor3="@dark",BorderSizePixel=0,ScaleType=Enum.ScaleType.Crop,
                Image=string.format("rbxthumb://type=GameIcon&id=%d&w=150&h=150",entry.id)},card)
            make("UICorner",{CornerRadius=UDim.new(0,8)},icon)
            local name=label(card,"TextLabel",module.name,26,0)
            name.Position,name.Size=UDim2.fromOffset(73,9),UDim2.new(1,-85,0,26)
            name.Font,name.TextSize,name.TextXAlignment=Enum.Font.GothamBold,15,Enum.TextXAlignment.Left
            name.TextWrapped,name.TextTruncate=false,Enum.TextTruncate.AtEnd
            local chapter=module.chapter and (pt and "Capítulo " or "Chapter ")..module.chapter
                or (pt and "Módulo dedicado" or "Dedicated module")
            local detail=label(card,"TextLabel",chapter,16,0)
            detail.Position,detail.Size=UDim2.fromOffset(73,34),UDim2.new(1,-85,0,16)
            detail.TextSize,detail.TextXAlignment=11,Enum.TextXAlignment.Left
            paint(detail,"TextColor3","muted")
            local status=module.status or (current and (pt and "JOGO ABERTO" or "CURRENT GAME") or (pt and "DISPONÍVEL" or "AVAILABLE"))
            local badge=label(card,"TextLabel",status,17,0)
            badge.Position,badge.Size=UDim2.fromOffset(73,53),UDim2.new(1,-85,0,17)
            badge.Font,badge.TextSize,badge.TextXAlignment=Enum.Font.Code,10,Enum.TextXAlignment.Left
            paint(badge,"TextColor3","active")
        end
    end

    local function resources(parent,order,language,openCatalog)
        local pt=language=="pt"
        local stack=make("Frame",{Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,
            LayoutOrder=order,BackgroundTransparency=1},parent)
        make("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,6)},stack)
        local actions=make("Frame",{Size=UDim2.new(1,0,0,42),LayoutOrder=1,BackgroundTransparency=1},stack)
        local catalog=button(actions,"",0)
        catalog.Size=UDim2.new(0.60,-4,1,0)
        catalog.TextSize=12
        local social,socialCaption=providerButton(actions,"YouTube","YouTube",0)
        social.Position,social.Size=UDim2.new(0.60,4,0,0),UDim2.new(0.40,-4,1,0)
        local catalogTitle=pt and "Jogos com módulo" or "Games with modules"
        if openCatalog then
            catalog.Text=catalogTitle.."  ›"
            catalog.Activated:Connect(openCatalog)
        else
            local list=make("Frame",{Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,
                LayoutOrder=2,BackgroundTransparency=1,Visible=false},stack)
            make("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,4)},list)
            gameCatalog(list,language,1)
            catalog.Text=catalogTitle.."  +"
            catalog.Activated:Connect(function()
                list.Visible=not list.Visible
                catalog.Text=catalogTitle..(list.Visible and "  −" or "  +")
            end)
        end
        local link=label(stack,"TextBox",youtubeUrl,34,3)
        link.Visible,link.TextEditable,link.ClearTextOnFocus=false,false,false
        link.TextSize,link.TextWrapped,link.BackgroundTransparency=11,false,0
        paint(link,"BackgroundColor3","tile")
        make("UICorner",{CornerRadius=UDim.new(0,7)},link)
        social.Activated:Connect(function()
            if type(setclipboard)=="function" and pcall(setclipboard,youtubeUrl) then
                socialCaption.Text=pt and "Link copiado" or "Link copied"
                task.delay(2,function() if social.Parent then socialCaption.Text="YouTube" end end)
            else
                link.Visible=not link.Visible
            end
        end)
    end
    return {make=make,paint=paint,gradient=gradient,panel=panel,label=label,button=button,
        providerButton=providerButton,gameCard=gameCard,gameCatalog=gameCatalog,resources=resources,
        artworkBackdrop=artworkBackdrop,
        color=color,setTheme=setTheme,themes=themeOptions,rgb=rgb,
        themeAccent=function(id) return themes[id].accent end}
end

local function notify(ui,message)
    local starter=game:GetService("StarterGui")
    for _=1,8 do
        if pcall(starter.SetCore,starter,"SendNotification",{Title="AnonHub",Text=message,Duration=7}) then return end
        task.wait(0.25)
    end
    local screen,body=ui.panel(170)
    ui.label(body,"TextLabel",message,60,1)
    ui.button(body,"OK",2).Activated:Connect(function() screen:Destroy() end)
    task.delay(8,function() if screen.Parent then screen:Destroy() end end)
end

local function loadGame(route)
    local routeVersion=route.version or version
    local marker='local BOOT_VERSION="'..routeVersion..'"'
    local function compile(source)
        if type(source)=="string" and source:sub(1,7)=="-- Luau" and source:find(marker,1,true) then
            return loadstring(source,"AnonHub / "..route.name)
        end
    end
    if localBuildSources[route.path] then return compile(localBuildSources[route.path]) end
    local ok,source=pcall(game.HttpGet,game,root..route.path.."?v="..routeVersion)
    local run=ok and compile(source)
    if run and type(writefile)=="function" then pcall(writefile,route.cache,source) end
    if not run and type(readfile)=="function" then
        local cached,body=pcall(readfile,route.cache)
        if cached then run=compile(body) end
    end
    return run
end

local start
start=function(chooseLanguage)
    local previous=environment.AnonHubLauncher
    if type(previous)=="table" and type(previous.close)=="function" then previous.close() end
    local screen,closeGame,pandaSdk
    local state={}
    environment.AnonHubLauncher=state
    local function current() return environment.AnonHubLauncher==state end
    local function dismiss()
        if screen then screen:Destroy() screen=nil end
    end
    state.close=function()
        if not current() then return end
        environment.AnonHubLauncher=nil
        dismiss()
        if pandaSdk then pcall(pandaSdk.disconnect) pandaSdk=nil end
        if closeGame then closeGame() end
    end

    local function sdkForSession()
        if pandaSdk then return pandaSdk end
        local sdk,reason=loadPandaSdk()
        if not current() then
            if sdk then pcall(sdk.disconnect) end
            return nil,"CLOSED"
        end
        pandaSdk=sdk
        return sdk,reason
    end

    local language=preferences.language
    local function tr(portuguese,english)
        return language=="pt" and portuguese or english
    end
    local dedicated=games[game.GameId]
    if dedicated and dedicated.place~=game.PlaceId then dedicated=nil end
    local route=dedicated or universal
    local customization=type(preferences.universal)=="table" and preferences.universal or {}
    local theme=dedicated and (dedicated.theme or "peel") or (customization.theme~="peel" and customization.theme or "carbon")
    local skin=createUI(theme)
    local panel,label,button,make,gameCard,color=skin.panel,skin.label,skin.button,skin.make,skin.gameCard,skin.color
    local nameListeners,coverListeners={},{}
    local function coverUrl(placeId)
        return string.format("rbxthumb://type=GameThumbnail&id=%d&w=480&h=270",placeId)
    end
    local identity={
        name=dedicated and dedicated.name or tr("Experiência","Experience").." · "..game.PlaceId,
        icon=string.format("rbxthumb://type=GameIcon&id=%d&w=150&h=150",game.GameId),
        cover=coverUrl(game.PlaceId),
        watch=function(callback) table.insert(nameListeners,callback) end,
        watchCover=function(callback) table.insert(coverListeners,callback) end,
    }
    if not dedicated then
        task.spawn(function()
            local ok,name,rootPlace=pcall(function()
                local url="https://games.roblox.com/v1/games?universeIds="..game.GameId
                local info=http:JSONDecode(game:HttpGet(url)).data[1]
                return info.name,info.rootPlaceId
            end)
            if not ok or type(name)~="string" or name=="" then
                ok,name=pcall(function()
                    return game:GetService("MarketplaceService"):GetProductInfoAsync(game.PlaceId,Enum.InfoType.Asset).Name
                end)
            end
            if current() and ok and type(name)=="string" and name~="" then
                identity.name=name
                for _,callback in ipairs(nameListeners) do callback(identity.name) end
            end
            if current() and type(rootPlace)=="number" and rootPlace>0 and rootPlace~=game.PlaceId then
                identity.cover=coverUrl(rootPlace)
                for _,callback in ipairs(coverListeners) do callback(identity.cover) end
            end
        end)
    end

    local function openGame(access,startNow)
        dismiss()
        local body
        screen,body=panel(dedicated and 292 or 370,nil,not dedicated)
        local splash=screen
        splash.DisplayOrder=10031
        local badge=dedicated and tr("MÓDULO DO JOGO","GAME MODULE") or tr("FERRAMENTAS UNIVERSAIS","UNIVERSAL TOOLS")
        gameCard(body,identity,badge,1,not dedicated,true)
        local caption=label(body,"TextLabel",tr("JOGO IDENTIFICADO","GAME IDENTIFIED"),24,2)
        caption.TextColor3=color.active
        caption.Font=Enum.Font.GothamBold
        local status=label(body,"TextLabel",tr("Carregando funções…","Loading features…"),28,3)
        status.TextColor3=color.muted
        if not dedicated then
            caption.Font,caption.TextSize,caption.TextXAlignment=Enum.Font.Code,11,Enum.TextXAlignment.Left
            status.Font,status.TextSize,status.TextXAlignment=Enum.Font.GothamMedium,16,Enum.TextXAlignment.Left
        end
        local track=make("Frame",{Name="LoadingProgress",Size=UDim2.new(1,0,0,8),LayoutOrder=4,BackgroundColor3=color.tile,
            BorderSizePixel=0},body)
        make("UICorner",{CornerRadius=UDim.new(0,5)},track)
        local fill=make("Frame",{Size=UDim2.fromScale(0.18,1),BackgroundColor3=color.accent,BorderSizePixel=0},track)
        make("UICorner",{CornerRadius=UDim.new(0,5)},fill)
        local percent=label(body,"TextLabel","18%",24,5)
        percent.Font,percent.TextSize,percent.TextColor3=Enum.Font.Code,12,color.accent
        percent.TextXAlignment=Enum.TextXAlignment.Right
        local displayed=0.18
        local function progress(fraction,portuguese,english)
            if current() and screen==splash and fill.Parent then
                displayed=math.clamp(fraction,displayed,1)
                fill.Size=UDim2.fromScale(displayed,1)
                if portuguese then status.Text=tr(portuguese,english) end
                percent.Text=string.format("%d%%",math.floor(displayed*100+0.5))
            end
        end
        task.wait()
        if not current() then return end
        local run=loadGame(route)
        if not current() then return end
        if not run then
            status.Text=tr("Não foi possível baixar as funções.","Could not download the features.")
            button(body,tr("Tentar novamente","Try again"),6,true).Activated:Connect(function()
                if current() then task.defer(start,false) end
            end)
            button(body,tr("Fechar","Close"),7).Activated:Connect(state.close)
            return
        end
        if not dedicated then
            progress(0.55,"Carregando capa e ícone…","Loading cover and icon…")
            local completed=false
            task.spawn(function()
                pcall(function()
                    game:GetService("ContentProvider"):PreloadAsync({identity.icon,identity.cover})
                end)
                completed=true
            end)
            local deadline=os.clock()+1.25
            repeat task.wait() until completed or not current() or os.clock()>=deadline
            if not current() then return end
        end
        local function checkExpiry()
            if not current() or not access.deadline then return end
            local remaining=access.deadline-os.clock()
            if remaining<=0 then
                writeKey(nil)
                start(false)
            else
                task.delay(math.min(remaining,3600),checkExpiry)
            end
        end
        checkExpiry()
        if not current() then return end
        progress(dedicated and 0.43 or 0.82,"Preparando o painel…","Preparing the panel…")
        local ready=false
        local function showReady()
            if ready or not current() then return end
            ready=true
            progress(1,"Pronto","Ready")
            task.delay(0.2,function()
                if current() and screen==splash then dismiss() end
            end)
        end
        local ok=pcall(run,{
            language=language,access=access,startNow=startNow,unload=state.close,
            identity=identity,progress=progress,ready=showReady,
            decorateLauncher=decorateLauncher,decorateArtwork=decorateArtwork,
            ui=skin,settings=customization,
            saveSettings=function(value)
                if (not dedicated or dedicated.universal) and current() then preferences.universal=table.clone(value) save() end
            end,
            attach=function(close)
                if current() then closeGame=close else close() end
            end,
            chooseLanguage=function() if current() then task.defer(start,true) end end,
        })
        if not ok and current() then
            if closeGame then closeGame() closeGame=nil end
            notify(skin,tr("Não foi possível abrir o módulo deste jogo.","Could not open this game's module."))
        end
        if current() and (not ready or not ok) then dismiss() end
    end

    local function showAccess()
        local body
        screen,body=panel(570,nil,not dedicated)
        local hero=make("Frame",{Size=UDim2.new(1,0,0,108),LayoutOrder=1,BorderSizePixel=0,
            ClipsDescendants=true,BackgroundColor3="@tile"},body)
        make("UICorner",{CornerRadius=UDim.new(0,10)},hero)
        skin.artworkBackdrop(hero)
        local caption=label(hero,"TextLabel",tr("CENTRAL DE ACESSO","ACCESS CENTER"),20,0)
        caption.Position,caption.Size=UDim2.fromOffset(15,18),UDim2.new(1,-30,0,20)
        caption.Font,caption.TextSize,caption.TextXAlignment=Enum.Font.Code,11,Enum.TextXAlignment.Left
        skin.paint(caption,"TextColor3","accent")
        local accessTitle=label(hero,"TextLabel",tr("Bem-vindo ao AnonHub","Welcome to AnonHub"),38,0)
        accessTitle.Position,accessTitle.Size=UDim2.fromOffset(15,39),UDim2.new(1,-30,0,38)
        accessTitle.Font,accessTitle.TextSize,accessTitle.TextXAlignment=Enum.Font.GothamBold,21,Enum.TextXAlignment.Left

        local form=make("Frame",{Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,LayoutOrder=2,
            BackgroundColor3="@tile",BorderSizePixel=0},body)
        make("UICorner",{CornerRadius=UDim.new(0,10)},form)
        make("UIPadding",{PaddingTop=UDim.new(0,10),PaddingBottom=UDim.new(0,10),
            PaddingLeft=UDim.new(0,11),PaddingRight=UDim.new(0,11)},form)
        make("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,6)},form)
        local hint=label(form,"TextLabel",tr("Já tem uma key? Cole abaixo.","Already have a key? Paste it below."),22,1)
        hint.TextSize,hint.TextXAlignment=13,Enum.TextXAlignment.Left
        skin.paint(hint,"TextColor3","muted")
        local input=label(form,"TextBox","",46,2)
        input.BackgroundTransparency,input.ClearTextOnFocus=0,false
        input.PlaceholderText,input.PlaceholderColor3="PANDA-XXXX-XXXX-XXXX",color.muted
        input.Font,input.TextSize,input.TextXAlignment=Enum.Font.Code,14,Enum.TextXAlignment.Left
        input.TextWrapped=false
        skin.paint(input,"BackgroundColor3","dark")
        make("UICorner",{CornerRadius=UDim.new(0,7)},input)
        make("UIPadding",{PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0,12)},input)
        local focusBorder=make("UIStroke",{Color="@edge",Thickness=1,ApplyStrokeMode=Enum.ApplyStrokeMode.Border},input)
        input.Focused:Connect(function() skin.paint(focusBorder,"Color","accent") end)
        input.FocusLost:Connect(function() skin.paint(focusBorder,"Color","edge") end)
        local status=label(form,"TextLabel",tr("Sem key? Use Obter key para começar.","New here? Use Get key to start."),32,4)
        status.TextSize,status.TextXAlignment=12,Enum.TextXAlignment.Left
        skin.paint(status,"TextColor3","muted")
        local busy,startWithOP=false,false
        local accessActions=make("Frame",{Size=UDim2.new(1,0,0,46),LayoutOrder=3,BackgroundTransparency=1},form)
        local continueButton=button(accessActions,tr("Validar e abrir","Validate and open"),5,true)
        local getKey,getKeyCaption=skin.providerButton(accessActions,"Panda",tr("Obter key","Get key"),7)
        continueButton.Size=UDim2.new(0.56,-4,1,0)
        getKey.Position,getKey.Size=UDim2.new(0.56,4,0,0),UDim2.new(0.44,-4,1,0)
        continueButton.TextSize,getKeyCaption.TextSize=13,13
        local function setBusy(value,fetchingLink)
            busy=value
            continueButton.Text=value and not fetchingLink and tr("Validando…","Validating…") or tr("Validar e abrir","Validate and open")
            getKeyCaption.Text=value and fetchingLink and tr("Preparando…","Preparing…") or tr("Obter key","Get key")
        end
        local function report(reason)
            skin.paint(status,"TextColor3","accent")
            if reason=="INVALID_KEY" or reason=="EXPIRED" then
                status.Text=tr("Key inválida ou expirada para este dispositivo.","Key invalid or expired for this device.")
            elseif reason=="NO_KEY" then
                status.Text=tr("Cole sua key para continuar.","Paste your key to continue.")
            elseif reason=="NO_SERVICE" then
                status.Text=tr("Serviço Panda Auth ainda não configurado.","Panda Auth service is not configured yet.")
            elseif reason=="RATE_LIMITED" then
                status.Text=tr("Muitas tentativas. Aguarde e tente de novo.","Too many attempts. Wait and try again.")
            elseif reason=="IDENTITY" then
                status.Text=tr("O Panda Auth não conseguiu identificar o dispositivo.","Panda Auth could not identify this device.")
            elseif reason=="NO_HTTP" then
                status.Text=tr("O executor não disponibilizou a conexão HTTP.","The executor did not provide HTTP access.")
            else
                status.Text=tr("Não foi possível conectar ao Panda Auth. Tente de novo.",
                    "Could not connect to Panda Auth. Try again.")
            end
        end
        local function submit()
            if busy or not current() then return end
            local key=cleanKey(input.Text)
            if not key then report("NO_KEY") return end
            setBusy(true,false)
            status.Text=tr("Validando acesso...","Validating access...")
            local sdk,reason=sdkForSession()
            local session
            if sdk then session,reason=validateKey(sdk,key) end
            if not current() then
                if sdk then pcall(sdk.disconnect) end
                return
            end
            setBusy(false)
            if not session then
                if (reason=="INVALID_KEY" or reason=="EXPIRED") and readKey()==key then
                    writeKey(nil)
                    if input.Text==key then input.Text="" end
                end
                report(reason)
                return
            end
            writeKey(key)
            openGame(session,startWithOP)
        end
        continueButton.Activated:Connect(submit)
        if dedicated then
            local option=button(body,tr("INICIAR OP AO ABRIR","START OP ON OPEN").."  ·  OFF",4)
            option.Activated:Connect(function()
                startWithOP=not startWithOP
                option.Text=tr("INICIAR OP AO ABRIR","START OP ON OPEN").."  ·  "..(startWithOP and "ON" or "OFF")
                option.BackgroundColor3=startWithOP and color.edge or color.tile
            end)
        end
        skin.resources(body,3,language)
        local actions=make("Frame",{Size=UDim2.new(1,0,0,38),LayoutOrder=5,BackgroundTransparency=1},body)
        local languageButton=button(actions,tr("Idioma","Language"),0)
        languageButton.Size=UDim2.new(0.5,-4,1,0)
        languageButton.TextSize=12
        languageButton.Activated:Connect(function() task.defer(start,true) end)
        local closeButton=button(actions,tr("Fechar","Close"),0)
        closeButton.Position,closeButton.Size=UDim2.new(0.5,4,0,0),UDim2.new(0.5,-4,1,0)
        closeButton.TextSize=12
        closeButton.Activated:Connect(state.close)
        local keyLink=label(form,"TextBox","",0,5)
        keyLink.Visible,keyLink.TextEditable,keyLink.ClearTextOnFocus=false,false,false
        keyLink.TextWrapped=false
        keyLink.Font,keyLink.TextSize=Enum.Font.Code,12
        getKey.Activated:Connect(function()
            if busy or not current() then return end
            setBusy(true,true)
            status.Text=tr("Preparando o link de acesso…","Preparing your access link…")
            local sdk,reason=sdkForSession()
            local ok,url
            if sdk then ok,url=pcall(sdk.getKeyUrl) end
            if not current() then return end
            setBusy(false)
            local host=ok and type(url)=="string" and url:match("^https://([%w%.%-]+)/")
            if not host or (host~="pandauth.com" and not host:match("%.pandauth%.com$")) then
                report(reason or "PROTOCOL")
                return
            end
            local clipboard=type(setclipboard)=="function" and setclipboard or nil
            if clipboard and pcall(clipboard,url) then
                skin.paint(status,"TextColor3","active")
                status.Text=tr("Link copiado. Abra no navegador.","Link copied. Open it in your browser.")
            else
                keyLink.Size=UDim2.new(1,0,0,36)
                keyLink.Text,keyLink.Visible=url,true
                status.Text=tr("Copie o link abaixo e abra no navegador.","Copy the link below and open it in your browser.")
            end
        end)
        input.FocusLost:Connect(function(pressed) if pressed then submit() end end)
        local savedKey=readKey()
        if savedKey then
            input.Text=savedKey
            task.defer(submit)
        elseif pandaServiceId=="" then
            report("NO_SERVICE")
        end
    end

    if not chooseLanguage and (language=="pt" or language=="en") then showAccess() return end
    local body
    screen,body=panel(250,nil,not dedicated)
    label(body,"TextLabel","Escolha o idioma  /  Choose a language",38,1)
    local function selectLanguage(code)
        if not current() then return end
        language=code
        preferences.language=code
        save()
        dismiss()
        showAccess()
    end
    button(body,"🇧🇷  Português",2).Activated:Connect(function() selectLanguage("pt") end)
    button(body,"🇺🇸  English",3).Activated:Connect(function() selectLanguage("en") end)
    button(body,"Fechar  /  Close",4).Activated:Connect(state.close)
end

start(false)
