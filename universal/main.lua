-- Luau · AnonHub universal tools
local BOOT_VERSION="0.32.0"
local hub=...
if type(hub)~="table" then return end

local Players=game:GetService("Players")
local Run=game:GetService("RunService")
local Input=game:GetService("UserInputService")
local world=game:GetService("Workspace")
local player=Players.LocalPlayer
local ui=hub.ui
local color=ui.color
local function T(pt,en) return hub.language=="pt" and pt or en end
local defaults={
    theme="midnight",width=560,height=610,scale=100,launcher=48,opacity=100,
    panelX=0.5,panelY=0.5,buttonX=0,buttonY=1,
    espMode="outline",espColor="theme",espHex="FF7A8D",espRange=850,espThrough=true,
}
local limits={
    width={300,900},height={340,880},scale={65,140},launcher={40,90},opacity={60,100},
    panelX={0,1},panelY={0,1},buttonX={0,1},buttonY={0,1},espRange={100,1500},
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
if type(saved.espThrough)=="boolean" then settings.espThrough=saved.espThrough end
local function save() hub.saveSettings(settings) end
ui.setTheme(settings.theme)

local playerGui=player:WaitForChild("PlayerGui")
local screen=ui.make("ScreenGui",{Name="AnonHubUniversal",ResetOnSpawn=false,DisplayOrder=10030},playerGui)
local canvas=ui.make("Frame",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1},screen)
local body=ui.make("Frame",{Name="UniversalPanel",AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),
    BackgroundColor3="@dark",BorderSizePixel=0,ClipsDescendants=true},canvas)
local scale=ui.make("UIScale",{Scale=1},body)
ui.make("UICorner",{CornerRadius=UDim.new(0,13)},body)
ui.make("UIStroke",{Color="@edge",Thickness=2},body)
local header=ui.make("Frame",{Size=UDim2.new(1,0,0,58),BackgroundColor3="@tile",
    BorderSizePixel=0,Active=true,ClipsDescendants=true},body)
ui.gradient(header,"top","bottom",90)
local halo=ui.make("Frame",{Size=UDim2.fromOffset(136,136),Position=UDim2.new(1,-145,0,-44),
    BackgroundColor3="@accent",BackgroundTransparency=0.87,BorderSizePixel=0},header)
ui.make("UICorner",{CornerRadius=UDim.new(1,0)},halo)
local orbit=ui.make("Frame",{Size=UDim2.fromOffset(114,114),Position=UDim2.fromOffset(11,11),
    BackgroundTransparency=1},halo)
ui.make("UICorner",{CornerRadius=UDim.new(1,0)},orbit)
ui.make("UIStroke",{Color="@accent",Transparency=0.65,Thickness=1},orbit)
local mark=ui.make("Frame",{Size=UDim2.fromOffset(20,20),Position=UDim2.fromOffset(22,19),Rotation=45,
    BackgroundColor3="@accent",BorderSizePixel=0},header)
ui.make("UICorner",{CornerRadius=UDim.new(0,5)},mark)
local brand=ui.label(header,"TextLabel","ANONHUB",28,1)
brand.Position,brand.Size=UDim2.fromOffset(55,5),UDim2.new(1,-108,0,28)
brand.Font,brand.TextSize,brand.TextXAlignment=Enum.Font.GothamBlack,22,Enum.TextXAlignment.Left
local tag=ui.label(header,"TextLabel",T("EDIÇÃO UNIVERSAL","UNIVERSAL EDITION"),17,2)
tag.Position,tag.Size=UDim2.fromOffset(56,34),UDim2.new(1,-108,0,17)
tag.TextSize,tag.TextXAlignment=11,Enum.TextXAlignment.Left
ui.paint(tag,"TextColor3","accent")
local nav=ui.make("Frame",{Position=UDim2.fromOffset(10,66),Size=UDim2.new(1,-20,0,36),
    BackgroundTransparency=1},body)
local pages={}
local tabButtons={}
local connections={}
local alive=true
local flags={team=true}
local values={speed=24,fly=55,fov=80,radius=135}
local updates={}
local highlights={}
local clipParts={}
local clipCharacter,clipAdded,flight,speedOwner,fovOwner
local espFolder,espScreen,aimTarget
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

local function enemy(other)
    return other~=player and (not flags.team or player.Neutral or other.Neutral or not player.Team
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
    for key in pairs(flags) do if key~="team" then flags[key]=false end end
    held.up,held.down,held.aim=false,false,false
    aimTarget=nil
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
    screen:Destroy()
end
hub.attach(close)
if not alive then return end

local function showTab(id)
    for key,page in pairs(pages) do
        local selected=key==id
        page.Visible=selected
        ui.paint(tabButtons[key],"BackgroundColor3",selected and "accent" or "tile")
        ui.paint(tabButtons[key],"TextColor3",selected and "dark" or "text")
    end
end
local function tab(id,caption,index)
    local control=ui.button(nav,caption,0)
    control.Position,control.Size=UDim2.new((index-1)/3,0,0,0),UDim2.new(1/3,-4,1,0)
    control.TextSize=12
    local page=ui.make("ScrollingFrame",{Name=id,Position=UDim2.fromOffset(10,110),Size=UDim2.new(1,-20,1,-120),
        BackgroundTransparency=1,BorderSizePixel=0,CanvasSize=UDim2.fromOffset(0,0),
        AutomaticCanvasSize=Enum.AutomaticSize.Y,ScrollBarThickness=3,ScrollBarImageColor3="@accent",
        ScrollingDirection=Enum.ScrollingDirection.Y,ElasticBehavior=Enum.ElasticBehavior.Never,Visible=false},body)
    ui.make("UIPadding",{PaddingRight=UDim.new(0,6),PaddingBottom=UDim.new(0,8)},page)
    ui.make("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,6)},page)
    pages[id],tabButtons[id]=page,control
    connect(control.Activated,function() showTab(id) end)
    return page
end
local controls=tab("controls",T("CONTROLES","CONTROLS"),1)
local visionPage=tab("vision","ESP",2)
local settingsPage=tab("settings",T("AJUSTES","SETTINGS"),3)
showTab("controls")
ui.gameCard(controls,hub.identity,T("FERRAMENTAS UNIVERSAIS","UNIVERSAL TOOLS"),1)

local function section(parent,caption,order)
    local heading=ui.label(parent,"TextLabel",caption,26,order)
    ui.paint(heading,"TextColor3","accent")
    heading.Font=Enum.Font.GothamBold
    heading.TextSize=12
    heading.TextXAlignment=Enum.TextXAlignment.Left
end

local function row(parent,order)
    return ui.make("Frame",{Size=UDim2.new(1,0,0,44),LayoutOrder=order,BackgroundTransparency=1},parent)
end

local function toggle(parent,key,title,right,onChange)
    local control=ui.button(parent,title,0)
    control.Position=UDim2.fromScale(right and 0.51 or 0,0)
    control.Size=UDim2.fromScale(0.49,1)
    local function update()
        control.Text=title.."  ·  "..(flags[key] and "ON" or "OFF")
        ui.paint(control,"BackgroundColor3",flags[key] and "active" or "tile")
        ui.paint(control,"TextColor3",flags[key] and "dark" or "text")
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
local function togglePanel() body.Visible=not body.Visible end
local suppressLauncherUntil=0
connect(launcher.Activated,function() if os.clock()>suppressLauncherUntil then togglePanel() end end)
local hide=ui.button(header,"×",0)
hide.Position,hide.Size=UDim2.new(1,-47,0,10),UDim2.fromOffset(36,36)
connect(hide.Activated,togglePanel)

local margin=8
local function position(size,extent,x,y)
    local horizontal=math.max(0,size.X-extent.X-2*margin)
    local vertical=math.max(0,size.Y-extent.Y-2*margin)
    return margin+horizontal*x,margin+vertical*y
end
local function applyLayout()
    local size=canvas.AbsoluteSize
    if size.X<50 or size.Y<50 then return end
    local zoom=settings.scale/100
    local width=math.min(settings.width,(size.X-2*margin)/zoom)
    local height=math.min(settings.height,(size.Y-2*margin)/zoom)
    body.Size,scale.Scale=UDim2.fromOffset(width,height),zoom
    body.BackgroundTransparency=1-settings.opacity/100
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
end)
connect(canvas:GetPropertyChangedSignal("AbsoluteSize"),function() if not pointer then applyLayout() end end)
applyLayout()
connect(Input.InputBegan,function(event,processed)
    if not processed and event.KeyCode==Enum.KeyCode.RightShift then togglePanel() end
end)

local function holdButton(key,caption,offset,width)
    local control=ui.button(canvas,caption,0,true)
    control.Position,control.Size=UDim2.new(1,-width-12,1,offset),UDim2.fromOffset(width,46)
    control.Visible=false
    local press
    connect(control.InputBegan,function(event)
        if event.UserInputType==Enum.UserInputType.Touch or event.UserInputType==Enum.UserInputType.MouseButton1 then
            press=event held[key]=true
        end
    end)
    connect(Input.InputEnded,function(event)
        if event==press then press=nil held[key]=false end
    end)
    return control
end
local up=holdButton("up",T("↑  SUBIR","↑  UP"),-165,103)
local down=holdButton("down",T("↓  DESCER","↓  DOWN"),-112,103)
local aim=holdButton("aim",T("MIRAR","AIM"),-60,103)
local sight=ui.make("Frame",{Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),
    BackgroundTransparency=1,Visible=false,Active=false},canvas)
ui.make("UICorner",{CornerRadius=UDim.new(1,0)},sight)
local sightEdge=ui.make("UIStroke",{Color="@accent",Thickness=1,Transparency=0.32},sight)
local function refreshOverlay()
    up.Visible,down.Visible,aim.Visible=flags.fly==true,flags.fly==true,flags.aim==true
    if not flags.fly then held.up,held.down=false,false end
    if not flags.aim then held.aim=false aimTarget=nil sight.Visible=false end
end
table.insert(updates,refreshOverlay)

local movement=row(controls,3)
toggle(movement,"fly",T("Voo","Fly"),false,function(enabled)
    if not enabled then stopFlight() end
    refreshOverlay()
end)
toggle(movement,"noclip","Noclip",true,function(enabled) if not enabled then restoreCollision() end end)
local movement2=row(controls,4)
toggle(movement2,"speed",T("Velocidade","Walk speed"),false,function(enabled)
    if not enabled then restoreProperty(speedOwner) speedOwner=nil end
end)
toggle(movement2,"jump",T("Salto infinito","Infinite jump"),true)
adjust(controls,values,"speed",T("Velocidade ao andar","Walk speed"),4,120,4,5)
adjust(controls,values,"fly",T("Velocidade de voo","Flight speed"),10,180,10,6)
section(controls,T("CÂMERA","CAMERA"),7)
local cameraRow=row(controls,8)
toggle(cameraRow,"aim",T("Mira assistida","Aim assist"),false,refreshOverlay)
toggle(cameraRow,"fov","FOV",true,function(enabled)
    if not enabled then restoreProperty(fovOwner) fovOwner=nil end
end)
adjust(controls,values,"fov",T("Campo de visão","Field of view"),45,110,5,9)
adjust(controls,values,"radius",T("Raio da mira em pixels","Aim radius in pixels"),45,300,15,10)
local help=ui.label(controls,"TextLabel",T("No voo, use o direcional e os botões laterais. Segure MIRAR ou o botão direito para acompanhar um alvo visível.",
    "Use movement controls and the side buttons to fly. Hold AIM or right mouse to track a visible target."),52,11)
help.TextSize=12
ui.paint(help,"TextColor3","muted")
connect(ui.button(controls,T("RESTAURAR CONTROLES","RESET CONTROLS"),12,true).Activated,reset)

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

section(visionPage,T("DESTAQUE DE JOGADORES","PLAYER HIGHLIGHTING"),1)
local vision=row(visionPage,2)
toggle(vision,"esp","ESP",false,function(enabled) if not enabled then clearHighlights() end end)
toggle(vision,"team",T("Ignorar equipe","Ignore teammates"),true,function() aimTarget=nil end)
section(visionPage,T("ESTILO","STYLE"),3)
local function optionCaption(option) return T(option[2],option[3]) end
selector(visionPage,modes,"espMode",2,4,optionCaption,clearHighlights)
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
local walls=ui.button(visionPage,"",9)
local function refreshWalls()
    walls.Text=T("ATRAVÉS DE PAREDES","THROUGH WALLS").."  ·  "..(settings.espThrough and "ON" or "OFF")
end
refreshWalls()
connect(walls.Activated,function()
    settings.espThrough=not settings.espThrough
    refreshWalls()
    clearHighlights()
    save()
end)
adjust(visionPage,settings,"espRange",T("Distância máxima do ESP","Maximum ESP range"),100,1500,50,10,save)

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

connect(player.CharacterRemoving,releaseCharacter)
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
end

local function addEntry(candidate,outline,names,boxes)
    local entry={character=candidate.character,root=candidate.root,humanoid=candidate.humanoid}
    if outline then
        entry.glow=ui.make("Highlight",{Adornee=candidate.character,
            DepthMode=settings.espThrough and Enum.HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded,
            FillTransparency=0.88,OutlineTransparency=0.06},espFolder)
    end
    if names then
        entry.billboard=ui.make("BillboardGui",{Adornee=candidate.root,Size=UDim2.fromOffset(164,31),
            StudsOffsetWorldSpace=Vector3.new(0,3.6,0),AlwaysOnTop=settings.espThrough},espFolder)
        entry.title=ui.label(entry.billboard,"TextLabel","",22,0)
        entry.title.TextSize,entry.title.TextStrokeTransparency=12,0.2
        entry.title.TextTruncate=Enum.TextTruncate.AtEnd
        if settings.espMode=="full" then
            local track=ui.make("Frame",{Position=UDim2.fromOffset(52,24),Size=UDim2.fromOffset(60,3),
                BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(24,27,33)},entry.billboard)
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

local function showPlayers()
    if (espFolder and not espFolder.Parent) or (espScreen and not espScreen.Parent) then clearHighlights() end
    local mode=settings.espMode
    local full=mode=="full"
    local outline,names,boxes=mode=="outline" or full,mode=="names" or full,mode=="box" or full
    if (outline or names) and not espFolder then espFolder=ui.make("Folder",{Name="AnonHubESP"},world) end
    if boxes and not espScreen then
        espScreen=ui.make("ScreenGui",{Name="AnonHubESPOverlay",ResetOnSpawn=false,
            IgnoreGuiInset=true,DisplayOrder=10025},playerGui)
    end
    local _,ownRoot=characterParts(player.Character)
    local candidates={}
    if ownRoot then
        for _,other in ipairs(Players:GetPlayers()) do
            if not enemy(other) then continue end
            local character=other.Character
            local humanoid,root=characterParts(character)
            if not humanoid then continue end
            local distance=(root.Position-ownRoot.Position).Magnitude
            if distance<=settings.espRange then
                table.insert(candidates,{other=other,character=character,root=root,humanoid=humanoid,distance=distance})
            end
        end
    end
    if #candidates>32 then table.sort(candidates,function(a,b) return a.distance<b.distance end) end
    local paletteEntry=lookup(colors,settings.espColor)
    local shade=settings.espColor=="custom" and ui.rgb(settings.espHex)
        or paletteEntry[4] and ui.rgb(paletteEntry[4]) or color.accent
    local camera=world.CurrentCamera
    local checkWalls=boxes and not settings.espThrough and camera
    if checkWalls then espRay.FilterDescendantsInstances=player.Character and {player.Character} or {} end
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
            entry=addEntry(candidate,outline,names,boxes)
            highlights[other]=entry
        end
        local tint=settings.espColor=="team" and not other.Neutral and other.Team and other.Team.TeamColor.Color or shade
        if entry.glow then entry.glow.OutlineColor,entry.glow.FillColor=tint,tint end
        if entry.title then
            entry.billboard.MaxDistance=settings.espRange
            entry.title.Text=string.format("%s  ·  %.0f",other.DisplayName,candidate.distance)
            entry.title.TextColor3=tint
        end
        if entry.health then
            local percent=math.clamp(candidate.humanoid.Health/math.max(1,candidate.humanoid.MaxHealth),0,1)
            entry.health.Size=UDim2.fromScale(percent,1)
            entry.health.BackgroundColor3=tint
        end
        if entry.box then
            entry.edge.Color=tint
            entry.clear=true
            if checkWalls then
                local origin=camera.CFrame.Position
                local hit=world:Raycast(origin,candidate.root.Position-origin,espRay)
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
        local box,root=entry.box,entry.root
        if not box then continue end
        if not camera or not entry.clear or not root.Parent or entry.humanoid.Health<=0 then
            box.Visible=false
            continue
        end
        local head=entry.character:FindFirstChild("Head")
        local top=head and head:IsA("BasePart") and head.Position+Vector3.new(0,head.Size.Y*0.55,0)
            or root.Position+Vector3.new(0,2.6,0)
        local bottom=root.Position-Vector3.new(0,math.max(2.2,entry.humanoid.HipHeight+root.Size.Y*0.5),0)
        local upper,upperVisible=camera:WorldToViewportPoint(top)
        local lower,lowerVisible=camera:WorldToViewportPoint(bottom)
        local height=math.abs(lower.Y-upper.Y)
        box.Visible=(upperVisible or lowerVisible) and upper.Z>0 and lower.Z>0 and height>4
        if box.Visible then
            box.Size=UDim2.fromOffset(height*0.55,height)
            box.Position=UDim2.fromOffset((upper.X+lower.X)*0.5,math.min(upper.Y,lower.Y))
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
local function visibleTarget(camera,other,limit)
    if not enemy(other) then return end
    local character=other.Character
    local humanoid,root=characterParts(character)
    if not humanoid then return end
    local target=character:FindFirstChild("Head") or root
    if not target:IsA("BasePart") then return end
    local point,onScreen=camera:WorldToViewportPoint(target.Position)
    if not onScreen or point.Z<=0 then return end
    local center=camera.ViewportSize*0.5
    local delta=Vector2.new(point.X,point.Y)-center
    if delta.Magnitude>limit then return end
    local origin=camera.CFrame.Position
    local direction=target.Position-origin
    if direction.Magnitude>650 or direction.Magnitude<0.01 then return end
    local collision=world:Raycast(origin,direction,ray)
    if collision and not collision.Instance:IsDescendantOf(character) then return end
    return target,delta.Magnitude
end

local nextAimSearch=0
Run:BindToRenderStep(renderName,Enum.RenderPriority.Camera.Value+1,function(dt)
    if not flags.aim and not flags.fov and not espScreen then return end
    local camera=world.CurrentCamera
    drawBoxes(camera,dt)
    if not camera then sight.Visible=false return end
    if flags.fov then fovOwner=applyProperty(fovOwner,camera,"FieldOfView",values.fov) end
    local aiming=flags.aim and (held.aim or Input:IsMouseButtonPressed(Enum.UserInputType.MouseButton2))
    if not aiming or not characterParts(player.Character) or Input:GetFocusedTextBox()
        or camera.CameraType==Enum.CameraType.Scriptable then
        sight.Visible=false
        aimTarget=nil nextAimSearch=0 return
    end
    local diameter=values.radius*2
    sight.Size=UDim2.fromOffset(diameter,diameter)
    sight.Visible=true
    ray.FilterDescendantsInstances=player.Character and {player.Character} or {}
    local target=aimTarget and visibleTarget(camera,aimTarget,values.radius*1.2)
    if not target and os.clock()>=nextAimSearch then
        nextAimSearch=os.clock()+0.09
        aimTarget=nil
        local distance=values.radius
        for _,other in ipairs(Players:GetPlayers()) do
            local candidate,offset=visibleTarget(camera,other,distance)
            if candidate then target,distance,aimTarget=candidate,offset,other end
        end
    end
    if target then
        local goal=CFrame.lookAt(camera.CFrame.Position,target.Position)
        camera.CFrame=camera.CFrame:Lerp(goal,1-math.exp(-16*dt))
    end
    sightEdge.Color=target and color.active or color.accent
end)

hub.ready()
