-- Luau · AnonHub universal tools
local BOOT_VERSION="0.31.0"
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
local screen,body,canvas,header=ui.panel(560,false)
local connections={}
local alive=true
local flags={team=true}
local values={speed=24,fly=55,fov=80,radius=135}
local updates={}
local highlights={}
local clipParts={}
local clipCharacter,clipAdded,flight,speedOwner,fovOwner
local espFolder,aimTarget
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

ui.gameCard(body,hub.identity,T("FERRAMENTAS UNIVERSAIS","UNIVERSAL TOOLS"),1)
local subtitle=ui.label(body,"TextLabel",T("CONTROLE DO JOGADOR","PLAYER CONTROLS"),26,2)
subtitle.TextColor3=color.accent
subtitle.Font=Enum.Font.GothamBlack

local function section(parent,caption,order)
    local heading=ui.label(parent,"TextLabel",caption,26,order)
    heading.TextColor3=color.accent
    heading.Font=Enum.Font.GothamBold
end

local function row(order)
    return ui.make("Frame",{Size=UDim2.new(1,0,0,44),LayoutOrder=order,BackgroundTransparency=1},body)
end

local function toggle(parent,key,title,right,onChange)
    local control=ui.button(parent,title,0)
    control.Position=UDim2.fromScale(right and 0.51 or 0,0)
    control.Size=UDim2.fromScale(0.49,1)
    local function update()
        control.Text=title.."  ·  "..(flags[key] and "ON" or "OFF")
        control.BackgroundColor3=flags[key] and color.green or color.tile
        control.TextColor3=flags[key] and color.dark or color.text
    end
    table.insert(updates,update)
    update()
    connect(control.Activated,function()
        flags[key]=not flags[key]
        if onChange then onChange(flags[key]) end
        update()
    end)
end

local function adjust(key,title,minimum,maximum,step,order)
    local line=row(order)
    local name=ui.label(line,"TextLabel",title,42,0)
    name.Size=UDim2.new(1,-132,1,0)
    name.TextXAlignment=Enum.TextXAlignment.Left
    name.TextSize=13
    local minus=ui.button(line,"−",0)
    minus.Position,minus.Size=UDim2.new(1,-126,0,0),UDim2.fromOffset(36,42)
    local display=ui.label(line,"TextBox",tostring(values[key]),42,0)
    display.Position,display.Size=UDim2.new(1,-86,0,0),UDim2.fromOffset(46,42)
    display.BackgroundTransparency,display.BackgroundColor3=0,color.tile
    display.ClearTextOnFocus=false
    ui.make("UICorner",{CornerRadius=UDim.new(0,5)},display)
    local plus=ui.button(line,"+",0)
    plus.Position,plus.Size=UDim2.new(1,-36,0,0),UDim2.fromOffset(36,42)
    local function set(number)
        if number and number==number then values[key]=math.clamp(math.floor(number+0.5),minimum,maximum) end
        display.Text=tostring(values[key])
    end
    connect(minus.Activated,function() set(values[key]-step) end)
    connect(plus.Activated,function() set(values[key]+step) end)
    connect(display.FocusLost,function() set(tonumber(display.Text)) end)
end

local launcher=ui.button(canvas,"A",0,true)
launcher.Position,launcher.Size=UDim2.new(0,10,1,-64),UDim2.fromOffset(48,48)
launcher.TextSize=23
local function togglePanel() body.Visible=not body.Visible end
local suppressLauncherUntil=0
connect(launcher.Activated,function() if os.clock()>suppressLauncherUntil then togglePanel() end end)
local hide=ui.button(header,"×",0)
hide.Position,hide.Size=UDim2.new(1,-40,0,4),UDim2.fromOffset(35,34)
connect(hide.Activated,togglePanel)

local pointer,origin,dragOrigin,dragTarget
local function drag(event,target)
    if not pointer and (event.UserInputType==Enum.UserInputType.Touch or event.UserInputType==Enum.UserInputType.MouseButton1) then
        pointer=event
        origin=event.Position
        dragTarget=target
        dragOrigin=target.AbsolutePosition-canvas.AbsolutePosition
        if target==body then dragOrigin+=body.AbsoluteSize*0.5 end
    end
end
connect(header.InputBegan,function(event) drag(event,body) end)
connect(launcher.InputBegan,function(event) drag(event,launcher) end)
connect(Input.InputChanged,function(event)
    if not pointer or (pointer.UserInputType==Enum.UserInputType.Touch and event~=pointer)
        or (pointer.UserInputType==Enum.UserInputType.MouseButton1 and event.UserInputType~=Enum.UserInputType.MouseMovement) then return end
    local delta=event.Position-origin
    if dragTarget==launcher and delta.Magnitude<6 then return end
    local size,extent=canvas.AbsoluteSize,dragTarget.AbsoluteSize
    local edge=dragTarget==body and extent*0.5 or Vector2.zero
    local x=math.clamp(dragOrigin.X+delta.X,edge.X,math.max(edge.X,size.X-extent.X+edge.X))
    local y=math.clamp(dragOrigin.Y+delta.Y,edge.Y,math.max(edge.Y,size.Y-extent.Y+edge.Y))
    dragTarget.Position=UDim2.fromOffset(x,y)
    if dragTarget==launcher then suppressLauncherUntil=os.clock()+0.3 end
end)
connect(Input.InputEnded,function(event) if event==pointer then pointer=nil end end)
connect(Input.WindowFocusReleased,function()
    pointer=nil
    held.up,held.down,held.aim=false,false,false
end)
connect(canvas:GetPropertyChangedSignal("AbsoluteSize"),function()
    if not pointer then
        body.Position=UDim2.fromScale(0.5,0.5)
        launcher.Position=UDim2.new(0,10,1,-64)
    end
end)
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
local sightEdge=ui.make("UIStroke",{Color=color.accent,Thickness=1,Transparency=0.32},sight)
local function refreshOverlay()
    up.Visible,down.Visible,aim.Visible=flags.fly==true,flags.fly==true,flags.aim==true
    if not flags.fly then held.up,held.down=false,false end
    if not flags.aim then held.aim=false aimTarget=nil sight.Visible=false end
end
table.insert(updates,refreshOverlay)

local movement=row(3)
toggle(movement,"fly",T("Voo","Fly"),false,function(enabled)
    if not enabled then stopFlight() end
    refreshOverlay()
end)
toggle(movement,"noclip","Noclip",true,function(enabled) if not enabled then restoreCollision() end end)
local movement2=row(4)
toggle(movement2,"speed",T("Velocidade","Walk speed"),false,function(enabled)
    if not enabled then restoreProperty(speedOwner) speedOwner=nil end
end)
toggle(movement2,"jump",T("Salto infinito","Infinite jump"),true)
adjust("speed",T("Velocidade ao andar","Walk speed"),4,120,4,5)
adjust("fly",T("Velocidade de voo","Flight speed"),10,180,10,6)
section(body,T("CÂMERA E VISÃO","CAMERA AND VISION"),7)
local vision=row(8)
toggle(vision,"esp","ESP",false,function(enabled) if not enabled then clearHighlights() end end)
toggle(vision,"aim",T("Mira assistida","Aim assist"),true,refreshOverlay)
local vision2=row(9)
toggle(vision2,"team",T("Ignorar equipe","Ignore teammates"),false,function() aimTarget=nil end)
toggle(vision2,"fov","FOV",true,function(enabled)
    if not enabled then restoreProperty(fovOwner) fovOwner=nil end
end)
adjust("fov",T("Campo de visão","Field of view"),45,110,5,10)
adjust("radius",T("Raio da mira em pixels","Aim radius in pixels"),45,300,15,11)
local help=ui.label(body,"TextLabel",T("No voo, use o direcional e os botões laterais. Segure MIRAR ou o botão direito para acompanhar um alvo visível.",
    "Use movement controls and the side buttons to fly. Hold AIM or right mouse to track a visible target."),50,12)
help.TextSize=12
help.TextColor3=color.muted
connect(ui.button(body,T("RESTAURAR CONTROLES","RESET CONTROLS"),13,true).Activated,reset)
connect(ui.button(body,T("IDIOMA","LANGUAGE"),14).Activated,hub.chooseLanguage)
connect(ui.button(body,T("ENCERRAR HUB","CLOSE HUB"),15).Activated,hub.unload)
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

local function showPlayers()
    if not espFolder then espFolder=ui.make("Folder",{Name="AnonHubESP"},world) end
    local ownHumanoid,ownRoot=characterParts(player.Character)
    local seen={}
    if ownHumanoid then
        for _,other in ipairs(Players:GetPlayers()) do
            local character=other.Character
            local humanoid,root=characterParts(character)
            if not enemy(other) or not humanoid or (root.Position-ownRoot.Position).Magnitude>850 then continue end
            local entry=highlights[other]
            if entry and entry.character~=character then
                entry.glow:Destroy() entry.billboard:Destroy() entry=nil
            end
            if not entry then
                local glow=ui.make("Highlight",{Adornee=character,DepthMode=Enum.HighlightDepthMode.AlwaysOnTop,
                    FillColor=color.blue,FillTransparency=0.83,OutlineColor=color.accent,OutlineTransparency=0.12},espFolder)
                local billboard=ui.make("BillboardGui",{Adornee=root,Size=UDim2.fromOffset(160,25),
                    StudsOffsetWorldSpace=Vector3.new(0,3.6,0),MaxDistance=850,AlwaysOnTop=true},espFolder)
                local title=ui.label(billboard,"TextLabel","",25,0)
                title.TextSize=12
                title.TextStrokeTransparency=0.2
                entry={character=character,glow=glow,billboard=billboard,title=title}
                highlights[other]=entry
            end
            entry.title.Text=string.format("%s  ·  %.0f",other.DisplayName,(root.Position-ownRoot.Position).Magnitude)
            seen[other]=true
        end
    end
    for other,entry in pairs(highlights) do
        if not seen[other] then
            entry.glow:Destroy() entry.billboard:Destroy() highlights[other]=nil
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
    if not flags.aim and not flags.fov then return end
    local camera=world.CurrentCamera
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
    sightEdge.Color=target and color.green or color.accent
end)

hub.ready()
