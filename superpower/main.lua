-- Luau · Superpower standalone · Roblox/Delta · Luau
local BOOT_VERSION="0.38.5"
local hub=...
assert(type(hub)=="table" and hub.access,"Abra pelo loader autenticado")
local Players=game:GetService("Players")
local Input=game:GetService("UserInputService")
local Http=game:GetService("HttpService")
local Tween=game:GetService("TweenService")
local player=Players.LocalPlayer
local links,painted={},{}
local cleanup,quickAction
local alive=true
local colors={dark=Color3.fromRGB(35,31,25),tile=Color3.fromRGB(65,54,39),edge=Color3.fromRGB(116,88,49),text=Color3.fromRGB(252,246,226),muted=Color3.fromRGB(213,195,163),accent=Color3.fromRGB(255,202,66)}
local accent=colors.accent
local function T(pt,en) return hub.language=="pt" and pt or en end
local function make(class,p,parent)
 local o=Instance.new(class)
 if o:IsA("GuiObject") then o.BorderSizePixel=0 end
 for k,v in pairs(p) do o[k]=v end;o.Parent=parent;return o
end
local function listen(signal,fn) links[#links+1]=signal:Connect(fn) end
local function animate(o,p) Tween:Create(o,TweenInfo.new(.18,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),p):Play() end
local function round(o,r) make("UICorner",{CornerRadius=UDim.new(0,r or 10)},o) end
local function stroke(o) return make("UIStroke",{Color=colors.edge,Thickness=1,ApplyStrokeMode=Enum.ApplyStrokeMode.Border},o) end
local screen=make("ScreenGui",{Name="AnonHubSuperpower",ResetOnSpawn=false,DisplayOrder=10030,ZIndexBehavior=Enum.ZIndexBehavior.Sibling},player:WaitForChild("PlayerGui"))
local panel=make("Frame",{AnchorPoint=Vector2.new(.5,.5),Size=UDim2.fromScale(.94,.88),Position=UDim2.fromScale(.5,.5),BackgroundColor3=colors.dark,ClipsDescendants=true},screen)
round(panel,9);stroke(panel)
make("UIGradient",{Color=ColorSequence.new(Color3.fromRGB(73,53,35),colors.dark),Rotation=90},panel)
local sidebar=make("Frame",{Size=UDim2.new(0,174,1,0),BackgroundColor3=Color3.fromRGB(48,39,29)},panel)
make("TextLabel",{Text="ANONHUB",Position=UDim2.fromOffset(17,24),Size=UDim2.fromOffset(145,28),BackgroundTransparency=1,TextColor3=colors.text,Font=Enum.Font.GothamBold,TextSize=20,TextXAlignment=Enum.TextXAlignment.Left},sidebar)
make("TextLabel",{Text="SUPERPOWER / CONTROL",Position=UDim2.fromOffset(18,56),Size=UDim2.fromOffset(146,20),BackgroundTransparency=1,TextColor3=accent,Font=Enum.Font.Code,TextSize=9,TextXAlignment=Enum.TextXAlignment.Left},sidebar)
make("TextLabel",{Text=player.DisplayName,Position=UDim2.new(0,16,1,-62),Size=UDim2.new(1,-32,0,24),BackgroundTransparency=1,TextColor3=colors.text,Font=Enum.Font.GothamMedium,TextSize=12,TextTruncate=Enum.TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left},sidebar)
local header=make("Frame",{Size=UDim2.new(1,0,0,68),BackgroundTransparency=1,Active=true},panel)
local mark=make("TextLabel",{Text="A",Font=Enum.Font.GothamBlack,TextSize=20,TextColor3=colors.dark,BackgroundColor3=accent,Position=UDim2.fromOffset(16,16),Size=UDim2.fromOffset(36,36)},header);round(mark)
if hub.decorateArtwork then
 local art=make("ImageLabel",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1},mark);round(art);hub.decorateArtwork(art)
end
local title=make("TextLabel",{Text="Superpower",Size=UDim2.new(1,-160,0,26),Position=UDim2.fromOffset(64,12),BackgroundTransparency=1,TextColor3=colors.text,TextSize=20,Font=Enum.Font.GothamBold,TextXAlignment=Enum.TextXAlignment.Left},header)
make("TextLabel",{Text=T("≡  ARRASTE PARA MOVER","≡  DRAG TO MOVE"),Position=UDim2.fromOffset(65,39),Size=UDim2.new(1,-160,0,16),BackgroundTransparency=1,TextColor3=colors.muted,TextSize=10,Font=Enum.Font.Code,TextXAlignment=Enum.TextXAlignment.Left},header)
local footer=make("TextLabel",{Text=T("MÓDULO DO JOGO  /  PT","GAME MODULE  /  EN").."                                      v"..BOOT_VERSION,Size=UDim2.new(1,-32,0,30),Position=UDim2.new(0,16,1,-32),BackgroundTransparency=1,TextColor3=colors.muted,TextSize=10,Font=Enum.Font.Code,TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd},panel)
local float=make("TextButton",{Text="A",Size=UDim2.fromOffset(52,52),Position=UDim2.fromScale(.02,.7),BackgroundColor3=accent,TextColor3=colors.dark,TextSize=20,Font=Enum.Font.GothamBlack},screen);round(float,16);stroke(float)
if hub.decorateLauncher then hub.decorateLauncher(float) end
local tabs=make("Frame",{Size=UDim2.new(1,-32,0,44),Position=UDim2.fromOffset(16,72),BackgroundColor3=colors.tile},panel);round(tabs)
local pages,buttons={},{}
local current="Farm"
local captions={Farm="Farm",Cartas="Cards",Combate="Combat",Ajustes="Settings"}
local function selectPage(name)
 current=name
 for key,p in pairs(pages) do
  p.Visible=key==name
  animate(buttons[key],{BackgroundColor3=key==name and accent or colors.tile,TextColor3=key==name and colors.dark or colors.muted})
  if key==name then local target=p.Position;p.Position=target+UDim2.fromOffset(6,0);animate(p,{Position=target}) end
 end
end
local function section(name)
 if pages[name] then return pages[name] end
 local p=make("ScrollingFrame",{Name=name,Size=UDim2.new(1,-32,1,-166),Position=UDim2.fromOffset(16,126),BackgroundTransparency=1,ScrollBarThickness=3,ScrollBarImageColor3=accent,CanvasSize=UDim2.new(),AutomaticCanvasSize=Enum.AutomaticSize.Y,Visible=name=="Farm"},panel)
 make("UIListLayout",{Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.LayoutOrder},p)
 make("UIPadding",{PaddingTop=UDim.new(0,2),PaddingBottom=UDim.new(0,12),PaddingLeft=UDim.new(0,2)},p)
 local descriptions={
 Farm=T("Escolha seus alvos e controle a progressão.","Choose your targets and control progression."),
 Cartas=T("Organize sua coleção e automatize as melhorias.","Manage your collection and automate upgrades."),
 Combate=T("Controles de combate e habilidades.","Combat and ability controls."),
 Ajustes=T("Personalize o painel e as regras de automação.","Customize the panel and automation rules.")}
 local heading=make("TextLabel",{Text=hub.language=="pt" and name or captions[name],Size=UDim2.new(1,-8,0,28),LayoutOrder=-30,BackgroundTransparency=1,TextColor3=colors.text,TextSize=20,Font=Enum.Font.GothamBold,TextXAlignment=Enum.TextXAlignment.Left},p)
 make("TextLabel",{Text=descriptions[name],Size=UDim2.new(1,-8,0,38),LayoutOrder=-29,BackgroundTransparency=1,TextColor3=colors.muted,TextSize=12,TextWrapped=true,Font=Enum.Font.Gotham,TextXAlignment=Enum.TextXAlignment.Left},p)
 local n=0;for _ in pairs(pages) do n+=1 end
 local b=make("TextButton",{Text=hub.language=="pt" and name or captions[name],Font=Enum.Font.GothamMedium,TextSize=12,TextColor3=name=="Farm" and colors.dark or colors.muted,Size=UDim2.new(.25,-8,1,-8),Position=UDim2.new(n*.25,4,0,4),BackgroundColor3=name=="Farm" and accent or colors.tile,AutoButtonColor=false},tabs);round(b,8)
 make("UIPadding",{PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,10)},b)
 pages[name]=p;buttons[name]=b;listen(b.Activated,function() selectPage(name) end)
 return p
end
local ui={}
function ui.label(parent,class,text,height,order)
 local o=make(class,{Text=text,Size=UDim2.new(1,-8,0,height),LayoutOrder=order,BackgroundTransparency=class=="TextBox" and 0 or 1,BackgroundColor3=colors.tile,TextColor3=colors.text,TextSize=13,Font=Enum.Font.Gotham,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left},parent)
 make("UIPadding",{PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0,12)},o)
 if class=="TextBox" then round(o,8);stroke(o);o.ClearTextOnFocus=false;listen(o.Focused,function() animate(o,{BackgroundColor3=colors.edge}) end);listen(o.FocusLost,function() animate(o,{BackgroundColor3=colors.tile}) end) end
 return o
end
function ui.button(parent,text,order)
 local b=ui.label(parent,"TextButton",text,48,order);b.BackgroundTransparency=0;b.AutoButtonColor=false;round(b,10);stroke(b)
 listen(b.MouseEnter,function() animate(b,{BackgroundColor3=colors.edge}) end)
 listen(b.MouseLeave,function() animate(b,{BackgroundColor3=colors.tile}) end)
 listen(b.MouseButton1Down,function() animate(b,{BackgroundColor3=colors.dark}) end)
 listen(b.MouseButton1Up,function() animate(b,{BackgroundColor3=colors.tile}) end)
 return b
end
local checkRefresh={}
function ui.checkbox(parent,text,order)
 local b=ui.button(parent,"",order)
 local caption=ui.label(b,"TextLabel",text,48,0);caption.Size=UDim2.new(1,-44,1,0)
 local box=make("TextLabel",{Text="",AnchorPoint=Vector2.new(1,.5),Position=UDim2.new(1,-2,.5,0),Size=UDim2.fromOffset(24,24),TextSize=18,Font=Enum.Font.GothamBold,TextColor3=colors.dark,BackgroundColor3=colors.dark},b);round(box,6);local edge=stroke(box)
 local enabled=false
 local function refresh(value)
  enabled=value==true;box.Text=enabled and "✓" or ""
  animate(box,{BackgroundColor3=enabled and accent or colors.dark});animate(edge,{Color=enabled and accent or colors.edge})
 end
 checkRefresh[#checkRefresh+1]=function() refresh(enabled) end
 return b,refresh
end
-- Pure layout calculations, using the same compact/sidebar behavior as Potato.
local Layout={}
function Layout.resolve(w,h,c)
 local scale=math.max(.1,math.min(c.scale/100,math.max(1,w-16)/300,math.max(1,h-16)/340))
 local width=math.min(c.width,math.max(1,w-16)/scale)
 local height=math.min(c.height,math.max(1,h-16)/scale)
 return {scale=scale,width=width,height=height,
  x=8+math.max(0,w-16-width*scale)*c.x,
  y=8+math.max(0,h-16-height*scale)*c.y,compact=width<620}
end
-- END LAYOUT
local layoutFile="AnonHub_Superpower_Layout_"..player.UserId..".json"
local layoutDefaults={width=760,height=580,scale=Input.TouchEnabled and 80 or 100,launcher=56,x=.5,y=.5}
local layoutConfig=table.clone(layoutDefaults)
local limits={width={300,1100},height={340,900},scale={65,150},launcher={44,88},x={0,1},y={0,1}}
if type(readfile)=="function" then pcall(function()
 local saved=Http:JSONDecode(readfile(layoutFile))
 for k,range in pairs(limits) do
  local v=saved[k]
  if type(v)=="number" and v==v then layoutConfig[k]=math.clamp(v,range[1],range[2]) end
 end
end) end
local function saveLayout()
 if type(writefile)=="function" then pcall(writefile,layoutFile,Http:JSONEncode(layoutConfig)) end
end
local panelScale=make("UIScale",{Scale=1},panel)
local function applyLayout()
 local size=screen.AbsoluteSize
 if size.X<100 or size.Y<100 then return end
 local b=Layout.resolve(size.X,size.Y,layoutConfig)
 panel.AnchorPoint=Vector2.zero;panel.Size=UDim2.fromOffset(b.width,b.height)
 panel.Position=UDim2.fromOffset(b.x,b.y);panelScale.Scale=b.scale
 sidebar.Visible=not b.compact
 header.Position=UDim2.fromOffset(b.compact and 0 or 174,0)
 header.Size=UDim2.new(1,b.compact and 0 or -174,0,76)
 tabs.Parent=panel
 tabs.Position=b.compact and UDim2.new(0,12,1,-84) or UDim2.fromOffset(12,100)
 tabs.Size=b.compact and UDim2.new(1,-24,0,44) or UDim2.new(0,150,1,-180)
 tabs.BackgroundTransparency=1
 for i,name in ipairs({"Farm","Cartas","Combate","Ajustes"}) do
  local button=buttons[name]
  if button then
   button.Size=b.compact and UDim2.new(.25,-6,0,42) or UDim2.new(1,0,0,44)
   button.Position=b.compact and UDim2.new((i-1)*.25,0,0,0) or UDim2.fromOffset(0,(i-1)*52)
   button.Text=b.compact and (hub.language=="pt" and name or captions[name]) or string.format("%02d   %s",i,hub.language=="pt" and name or captions[name])
   button.TextXAlignment=b.compact and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left
  end
 end
 for _,p in pairs(pages) do
  p.Position=UDim2.fromOffset(b.compact and 16 or 190,88)
  p.Size=UDim2.new(1,b.compact and -32 or -206,1,b.compact and -184 or -136)
 end
 footer.Position=UDim2.new(0,b.compact and 16 or 190,1,-34)
 footer.Size=UDim2.new(1,b.compact and -40 or -214,0,26)
 float.Size=UDim2.fromOffset(layoutConfig.launcher,layoutConfig.launcher)
end
listen(screen:GetPropertyChangedSignal("AbsoluteSize"),applyLayout)
local layoutRefresh={}
local function layoutControls(parent)
 ui.label(parent,"TextLabel",T("TELA E TOQUE","DISPLAY & TOUCH"),32,-10)
 ui.label(parent,"TextLabel",T("Arraste o cabeçalho para mover. Use o canto inferior para redimensionar. Os ajustes são salvos automaticamente.","Drag the header to move. Use the bottom corner to resize. Changes are saved automatically."),64,-9)
 for i,spec in ipairs({{"scale","Escala da interface","Interface scale",5,"%"},{"width","Largura do painel","Panel width",10," px"},{"height","Altura do painel","Panel height",10," px"},{"launcher","Tamanho do botão A","Launcher size",2," px"}}) do
  local key=spec[1]
  local row=make("Frame",{Size=UDim2.new(1,-8,0,76),BackgroundColor3=colors.tile,LayoutOrder=-8+i},parent);round(row,10);stroke(row)
  local caption=ui.label(row,"TextLabel",T(spec[2],spec[3]),28,0);caption.Size=UDim2.new(1,0,0,28)
  local minus=ui.button(row,"−",0);minus.Size=UDim2.fromOffset(42,36);minus.Position=UDim2.fromOffset(12,32);minus.TextXAlignment=Enum.TextXAlignment.Center
  local field=ui.label(row,"TextBox","",36,0);field.Position=UDim2.fromOffset(62,32);field.Size=UDim2.new(1,-124,0,36);field.TextXAlignment=Enum.TextXAlignment.Center
  local plus=ui.button(row,"+",0);plus.Size=UDim2.fromOffset(42,36);plus.Position=UDim2.new(1,-54,0,32);plus.TextXAlignment=Enum.TextXAlignment.Center
  local function refresh() field.Text=tostring(math.floor(layoutConfig[key]))..spec[5] end
  layoutRefresh[#layoutRefresh+1]=refresh
  local function change(v)
   if v and v==v then layoutConfig[key]=math.clamp(v,limits[key][1],limits[key][2]);applyLayout();saveLayout() end
   refresh()
  end
  listen(minus.Activated,function() change(layoutConfig[key]-spec[4]) end)
  listen(plus.Activated,function() change(layoutConfig[key]+spec[4]) end)
  listen(field.FocusLost,function() change(tonumber(field.Text:match("[%d%.]+"))) end)
  refresh()
 end
 local reset=ui.button(parent,T("Centralizar e restaurar tamanho","Center and restore size"),-3)
 listen(reset.Activated,function()
  layoutConfig=table.clone(layoutDefaults);applyLayout();saveLayout()
  for _,fn in ipairs(layoutRefresh) do fn() end
 end)
end
local resize=make("TextButton",{Text="◢",TextSize=20,TextColor3=colors.muted,BackgroundTransparency=1,Size=UDim2.fromOffset(30,30),Position=UDim2.new(1,-30,1,-30)},panel)
local gesture
local function beginGesture(input,kind)
 if input.UserInputType~=Enum.UserInputType.MouseButton1 and input.UserInputType~=Enum.UserInputType.Touch then return end
 gesture={input=input,kind=kind,origin=input.Position,pos=panel.Position,width=panel.Size.X.Offset,height=panel.Size.Y.Offset}
end
listen(header.InputBegan,function(i) beginGesture(i,"move") end)
listen(resize.InputBegan,function(i) beginGesture(i,"resize") end)
listen(Input.InputChanged,function(i)
 if not gesture or (i~=gesture.input and i.UserInputType~=Enum.UserInputType.MouseMovement) then return end
 local d=i.Position-gesture.origin;local size=screen.AbsoluteSize
 if gesture.kind=="resize" then
  layoutConfig.width=math.clamp(gesture.width+d.X/panelScale.Scale,300,1100)
  layoutConfig.height=math.clamp(gesture.height+d.Y/panelScale.Scale,340,900)
 else
  local rx=math.max(1,size.X-16-panel.Size.X.Offset*panelScale.Scale)
  local ry=math.max(1,size.Y-16-panel.Size.Y.Offset*panelScale.Scale)
  layoutConfig.x=math.clamp((gesture.pos.X.Offset+d.X-8)/rx,0,1)
  layoutConfig.y=math.clamp((gesture.pos.Y.Offset+d.Y-8)/ry,0,1)
 end
 applyLayout()
end)
listen(Input.InputEnded,function(i)
 if gesture and i==gesture.input then
  gesture=nil;saveLayout();for _,fn in ipairs(layoutRefresh) do fn() end
 end
end)

local function close()
 if not alive then return end;alive=false
 if cleanup then pcall(cleanup) end
 for _,c in ipairs(links) do c:Disconnect() end
 screen:Destroy()
end
hub.attach(close)
local function visibility(show)
 panel.Visible=show
 if show then applyLayout();local target=panel.Position;panel.Position=target+UDim2.fromOffset(0,8);animate(panel,{Position=target}) end
end
local hide=make("TextButton",{Text="—",Size=UDim2.fromOffset(32,32),Position=UDim2.new(1,-76,0,16)},header)
local exit=make("TextButton",{Text="×",Size=UDim2.fromOffset(32,32),Position=UDim2.new(1,-38,0,16)},header)
for _,b in ipairs({hide,exit}) do
 b.BackgroundColor3=colors.tile;b.TextColor3=colors.text;b.Font=Enum.Font.GothamMedium;b.TextSize=18;round(b,8)
end
listen(hide.Activated,function() visibility(false) end)
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
   local x=math.clamp(startPosition.X.Scale*size.X+startPosition.X.Offset+delta.X,0,math.max(0,size.X-layoutConfig.launcher))
   local y=math.clamp(startPosition.Y.Scale*size.Y+startPosition.Y.Offset+delta.Y,0,math.max(0,size.Y-layoutConfig.launcher))
   float.Position=UDim2.fromOffset(x,y)
  end
 end
end)
listen(Input.InputEnded,function(i)
 if drag and (i==drag or i.UserInputType==Enum.UserInputType.MouseButton1) then
  if not moved then
   if os.clock()-pressedAt>=.65 then if quickAction then quickAction() end
   else visibility(not panel.Visible) end
  end
  drag=nil
 end
end)
listen(Input.InputBegan,function(i,processed)
 if not processed and i.KeyCode==Enum.KeyCode.RightControl then visibility(not panel.Visible) end
end)
local loading=make("Frame",{Name="Loading",Size=UDim2.fromScale(1,1),BackgroundColor3=colors.dark,ZIndex=50},panel);round(loading,10)
local loadingBrand=make("TextLabel",{Text="ANONHUB",Position=UDim2.fromScale(.1,.22),Size=UDim2.fromScale(.8,.12),BackgroundTransparency=1,Font=Enum.Font.GothamBlack,TextSize=28,TextColor3=accent,ZIndex=51},loading)
local loadingTitle=make("TextLabel",{Text=T("Preparando seu painel","Preparing your panel"),Position=UDim2.fromScale(.1,.38),Size=UDim2.fromScale(.8,.1),BackgroundTransparency=1,Font=Enum.Font.GothamBold,TextSize=18,TextWrapped=true,TextColor3=colors.text,ZIndex=51},loading)
local loadingDetail=make("TextLabel",{Text="",Position=UDim2.fromScale(.1,.5),Size=UDim2.fromScale(.8,.1),BackgroundTransparency=1,Font=Enum.Font.Gotham,TextSize=13,TextWrapped=true,TextColor3=colors.muted,ZIndex=51},loading)
local track=make("Frame",{Position=UDim2.fromScale(.15,.65),Size=UDim2.fromScale(.7,.012),BackgroundColor3=colors.edge,ZIndex=51},loading);round(track,4)
local fill=make("Frame",{Size=UDim2.fromScale(0,1),BackgroundColor3=accent,ZIndex=52},track);round(fill,4)
local percent=make("TextLabel",{Text="",Position=UDim2.fromScale(.15,.7),Size=UDim2.fromScale(.7,.06),BackgroundTransparency=1,Font=Enum.Font.Code,TextSize=11,TextColor3=colors.muted,ZIndex=51},loading)
local loadingClose=make("TextButton",{Text=T("Fechar","Close"),Position=UDim2.new(1,-88,0,12),Size=UDim2.fromOffset(76,32),BackgroundColor3=colors.tile,TextColor3=colors.text,Font=Enum.Font.Gotham,TextSize=12,ZIndex=52},loading);round(loadingClose,8)
listen(loadingClose.Activated,function() hub.unload() end)
local function progress(value,pt,en)
 if not alive then error("Initialization cancelled") end
 loadingDetail.Text=T(pt,en);percent.Text=string.format("%d%%",math.floor(value*100))
 animate(fill,{Size=UDim2.fromScale(value,1)})
 game:GetService("RunService").Heartbeat:Wait()
end
applyLayout()
progress(.08,"Preparando a interface…","Preparing the interface…")

local init=(function()
-- Luau · superpower/module.lua · AnonHub integration · Roblox/Delta · Luau
-- Implemented against the client inventory captured on 2026-11-11. No Luarmor code used.
local Logic={}
function Logic.manualEligible(mode,boss,padId,bossId,npcId)
    if mode=="Mixed" then return (boss and padId==bossId) or (not boss and padId==npcId) end
    if mode=="Boss" then return boss and padId==bossId end
    return mode=="NPC" and not boss and padId==npcId
end
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
    info.LayoutOrder=800
    local bossInfo=label("",110)
    bossInfo.LayoutOrder=801
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
            if table.find({"Auto","Boss","NPC","Mixed"},s.farmMode) then cfg.farmMode=s.farmMode end
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
    local loaded,total=0,0
    for _ in pairs(names) do total+=1 end
    local ok,reason=pcall(function()
        for name,path in pairs(names) do
            if ctx.progress then ctx.progress(.18+.46*loaded/total,"Carregando funções do jogo… ("..loaded.."/"..total..")","Loading game features… ("..loaded.."/"..total..")") end
            modules[name]=module(path);loaded+=1
        end
    end)
    if not ok then error(reason) end
    if ctx.progress then ctx.progress(.7,"Preparando controles e automações…","Preparing controls and automation…") end
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
        report(T("Combate experimental indisponivel: ","Experimental combat unavailable: ")..tostring(patchError))
    end
    local updates={}
    local function toggle(key,pt,en)
        order=order+1
        local b,check=ui.checkbox(page,T(pt,en),order)
        local function update() check(cfg[key]) end
        updates[#updates+1]=update; update()
        connect(b.Activated,function()
            if (key=="boost" or key=="guard" or key=="stun") and not patchOK then
                report(T("Interfaces de combate indisponiveis: ","Combat interfaces unavailable: ")..tostring(patchError)); return
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
        report(cfg.progress and T("Progressao ligada","Progression enabled") or T("Progressao desligada","Progression disabled"))
    end)
    toggle("progress","Progressão automática","Auto progression")
    toggle("farm","Farm de inimigos","Enemy farm")
    toggle("boss","Priorizar bosses","Prioritize bosses")
    toggle("abilities","Habilidades automáticas","Automatic abilities")
    page=ctx.section("Cartas")
    toggle("open","Abrir packs","Open packs")
    toggle("equip","Equipar melhor carta","Equip best card")
    toggle("place","Melhores cartas na base","Best cards on base")
    toggle("fuse","Fundir cartas","Fuse cards")
    toggle("tree","Comprar nós da árvore","Buy skill tree nodes")
    toggle("upgrades","Upgrades com dinheiro do jogo","Upgrades with game cash")
    toggle("sacrifice","Sacrificar cartas excedentes","Sacrifice spares according to Settings")
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
    label(T("Raridades permitidas no sacrifício","Allowed sacrifice rarities (individual selection)"),42)
    local rarityNames={Common="Comum",Uncommon="Incomum",Rare="Rara",Epic="Épica",Legendary="Lendária",Mythic="Mítica",God="Divina",Secret="Secreta",Cosmic="Cósmica",Ancient="Ancestral"}
    for _,rarity in ipairs(modules.Cards.RarityOrder) do
        order=order+1
        local b,check=ui.checkbox(page,T(rarityNames[rarity] or rarity,rarity),order)
        local function refresh() check(cfg.rarities[rarity]==true) end
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
            local selected=T("Selecione","Select")
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
    selector(T("Modo de farm","Farm mode"),"farmMode",{{id="Auto",text=T("Progressão automática","Automatic progression")},{id="Boss",text=T("Boss escolhido","Selected boss")},{id="NPC",text=T("Área de NPCs escolhida","Selected NPC area")},{id="Mixed",text=T("NPCs + Boss (prioridade ao boss)","NPCs + Boss (boss priority)")}})
    local bosses,areas={},{}
    for _,pad in ipairs(pads) do
        local option={id=pad.id,text=pad.name.." / "..pad.enemy.." · Lv "..pad.level.." · "..pad.respawn.."s"}
        if pad.gate then bosses[#bosses+1]=option else areas[#areas+1]=option end
    end
    selector("Boss","bossId",bosses)
    selector(T("Área de NPCs","NPC area"),"npcId",areas)
    label(T("NPCs + Boss: farma a area escolhida na espera e volta ao boss quando ele aparece. Verifica periodicamente a arena se o boss estiver fora do streaming.","NPCs + Boss: farms the selected area while waiting, then switches to the boss. Periodically checks the arena when the boss is outside streaming range."),70)
    label(T("Escolher o alvo nao liga o farm. Ative Farm ou Progressão automática acima.","Selecting a target does not start farming. Enable Farm or Auto progression above."),46)
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
        if not remote or not remote:IsA("RemoteFunction") then report(T("RemoteFunction ausente: ","Missing RemoteFunction: ")..name); return nil end
        pending=true
        local args=table.pack(...)
        local finished,result=false,nil
        task.spawn(function() result=table.pack(pcall(remote.InvokeServer,remote,table.unpack(args,1,args.n))); finished=true; pending=false end)
        local start=os.clock()
        while alive and not finished and os.clock()-start<10 do task.wait(0.1) end
        if not alive then return nil end
        if not finished then report(name..T(": aguardando servidor; sem repeticao concorrente",": waiting for server; no concurrent retry")); backoff[name]=os.clock()+15; return nil end
        if not result[1] or result[2]==false then
            report(name..": "..tostring(result[3] or result[2])); backoff[name]=os.clock()+8; return nil
        end
        report(name..T(": resposta recebida",": response received"))
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
        if not modules.Shrine.Open(data) then report(T("Arvore bloqueada: derrote Dominus Infernus (Volcano).","Tree locked: defeat Dominus Infernus (Volcano).")); return end
        local candidates={}
        for _,node in pairs(modules.Shrine.Tree or {}) do
            if node.Branch==cfg.branch and not modules.Shrine.CantBuy(data,node.Id) then candidates[#candidates+1]=node end
        end
        table.sort(candidates,function(a,b) return a.Cost==b.Cost and a.Id<b.Id or a.Cost<b.Cost end)
        if candidates[1] then call("TreeBuy",candidates[1].Id)
        else
            local explanation=T("Nenhum no elegivel no ramo ","No eligible node in branch ")..cfg.branch
            for _,node in pairs(modules.Shrine.Tree or {}) do
                if node.Branch==cfg.branch and not modules.Shrine.Owns(data,node.Id) then explanation=tostring(modules.Shrine.CantBuy(data,node.Id)); break end
            end
            report(T("Arvore: ","Tree: ")..explanation)
        end
    end
    actions[6]=function(data)
        if not cfg.sacrifice then return end
        if not modules.Shrine.Open(data) then report(T("Sacrificio bloqueado: derrote Dominus Infernus (Volcano).","Sacrifice locked: defeat Dominus Infernus (Volcano).")); return end
        local keep=keepSet()
        for card in pairs(data.Cards or {}) do
            local def=modules.Cards.ById[card]
            local rank=def and modules.Cards.RarityRank[def.Rarity] or 999
            local n=Logic.sacrificeCount(data,card,keep,cfg.reserve,rank,modules.Shrine.Spare(data,card),cfg.rarities[def and def.Rarity or ""]==true and 999 or 0)
            if n>0 then call("Sacrifice",card,n); return end
        end
        report(T("Sacrificio: nenhuma sobra elegivel. Confira reserva, raridade e cartas protegidas em Ajustes.","Sacrifice: no eligible spares. Check reserve, rarity and protected cards in Settings."))
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
    local nextBossProbe,probeUntil=0,0
    local function step()
        local data=State.Data
        if not data then report(T("Aguardando dados replicados...","Waiting for replicated data...")); return end
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
                    if cfg.farmMode~="Auto" then available=Logic.manualEligible(cfg.farmMode,boss,pid,cfg.bossId,cfg.npcId)
                    elseif cfg.progress and boss then available=available and currentBoss and pid==currentBoss.id end
                    if available and (cfg.farm or (cfg.boss and (boss or cfg.farmMode=="Mixed"))) then
                        local rank=(root.Position-er.Position).Magnitude
                        if (cfg.boss or cfg.farmMode=="Mixed") and boss then rank=rank-1000000000 end
                        if rank<score then score=rank; target=er end
                    end
                end
            end
        end
        for _,pad in ipairs(pads) do if pad.gate then
            local state=livePads[pad.id] and T("VIVO","ALIVE") or (respawns[pad.id] and (math.ceil(math.max(0,respawns[pad.id]-os.clock()))..T("s estimados","s estimated")) or T("nao observado","not observed"))
            bossLines[#bossLines+1]=pad.enemy..": "..state
        end end
        bossInfo.Text=table.concat(bossLines," | ")
        local selected=(cfg.farmMode=="Boss" or cfg.farmMode=="Mixed" and livePads[cfg.bossId]) and padById[cfg.bossId] or (cfg.farmMode=="NPC" or cfg.farmMode=="Mixed") and padById[cfg.npcId] or currentBoss
        local modeLabel=cfg.farmMode=="Mixed" and "NPCs + Boss" or cfg.farmMode
        targetInfo.Text=modeLabel.." · "..(selected and selected.name or T("Sem alvo","No target")).." · "..(target and T("Alvo encontrado","Target found") or T("Aguardando spawn/streaming ou liberacao da area","Waiting for spawn/streaming or area unlock"))
        if not (root and humanoid and humanoid.Health>0) or modules.Opening.Playing then return end
        if cfg.farm or cfg.boss then
            if cfg.farmMode=="Mixed" and not livePads[cfg.bossId] then
                local bossPad=padById[cfg.bossId]
                local now=os.clock()
                if bossPad and typeof(bossPad.cf)=="CFrame" and now>=nextBossProbe and now>=(respawns[cfg.bossId] or 0) then
                    nextBossProbe=now+20;probeUntil=now+2
                    root.CFrame=bossPad.cf+Vector3.new(0,4,0)
                end
                if now<probeUntil then
                    targetInfo.Text=T("Verificando spawn do boss...","Checking boss spawn...")
                    return
                end
            end
            if target then
                local delta=root.Position-target.Position
                if delta.Magnitude>10 then
                    local destination=target.Position+(delta.Magnitude>0 and delta.Unit or Vector3.new(0,0,1))*7
                    root.CFrame=CFrame.lookAt(destination,target.Position)
                end
            else
                local chosen=cfg.farmMode=="Boss" and padById[cfg.bossId] or (cfg.farmMode=="NPC" or cfg.farmMode=="Mixed") and padById[cfg.npcId] or cfg.progress and currentBoss
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
    local stop=ui.button(page,T("Parar todas as automações","Stop all automation"),order)
    connect(stop.Activated,function()
        for key,value in pairs(cfg) do if type(value)=="boolean" then cfg[key]=false end end
        pcall(setAuto,oldAuto)
        for _,update in ipairs(updates) do update() end
        report(T("Automacoes paradas.","Automation stopped."))
    end)
    order=order+1
    local export=ui.button(page,T("Exportar diagnóstico de teste","Export test diagnostics"),order)
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
 progress=progress,attach=function(fn) cleanup=fn end,section=section,quick=function(fn) quickAction=fn end})
if not alive then return end
if not ok then
 if cleanup then pcall(cleanup);cleanup=nil end
 loadingTitle.Text=T("Não foi possível carregar as funções","Could not load the features")
 loadingDetail.Text=T("Feche o painel e tente novamente. Detalhes: ","Close the panel and try again. Details: ")..tostring(err)
 percent.Text=T("Carregamento interrompido","Loading interrupted")
 hub.ready();return
end
progress(.92,"Aplicando suas preferências…","Applying your preferences…")
local settings=section("Ajustes")
layoutControls(settings)
ui.label(settings,"TextLabel",hub.language=="pt" and "Toque A: abrir/fechar. Segure 0,65s e solte: alternar progressao. Arraste: mover. RightCtrl: painel." or "Tap A: toggle panel. Hold 0.65s and release: toggle progression. Drag: move. RightCtrl: panel.",68,900)
local theme=ui.label(settings,"TextBox","FFCA42",40,902)
theme.ClearTextOnFocus=false
ui.label(settings,"TextLabel",hub.language=="pt" and "Cor de destaque: hexadecimal (ex.: FFCA42)" or "Accent color: hexadecimal (e.g. FFCA42)",30,901)
local themeFile="AnonHub_Superpower_Theme.json"
local function apply(hex)
 if not hex:match("^%x%x%x%x%x%x$") then return false end
 accent=Color3.fromRGB(tonumber(hex:sub(1,2),16),tonumber(hex:sub(3,4),16),tonumber(hex:sub(5,6),16))
 float.BackgroundColor3=accent;mark.BackgroundColor3=accent;selectPage(current);for _,refresh in ipairs(checkRefresh) do refresh() end;for _,p in pairs(pages) do p.ScrollBarImageColor3=accent end;theme.Text=hex;return true
end
if type(readfile)=="function" then pcall(function() apply(Http:JSONDecode(readfile(themeFile)).hex) end) end
listen(theme.FocusLost,function() local hex=theme.Text:gsub("#",""):upper();if apply(hex) and type(writefile)=="function" then pcall(writefile,themeFile,Http:JSONEncode({hex=hex})) end end)
hub.ready()