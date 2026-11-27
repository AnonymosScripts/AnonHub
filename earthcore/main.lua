-- Luau
-- AnonHub protected distribution 0.40.8
-- local BOOT_VERSION="0.40.8"
local a='\048\046\052\048\046\056'local b=...assert(type(b)=='\116\097\098\108\101'and b.access,
'\065\098\114\097\032\112\101\108\111\032\108\111\097\100\101\114\032\097\117\116\101\110\116\105\099\097\100\111')local c=game:GetService('\080\108\097\121\101\114\115')local d=game:
GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101')local e=game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local f=game
:GetService('\084\119\101\101\110\083\101\114\118\105\099\101')local g=c.LocalPlayer local h,i={},{}local j,k local
l=true local m={dark=Color3.fromRGB(12,12,16),tile=Color3.fromRGB(39,24,53),edge
=Color3.fromRGB(150,60,220),text=Color3.fromRGB(255,245,255),muted=Color3.
fromRGB(202,180,216),accent=Color3.fromRGB(235,165,255)}m.sidebar=Color3.
fromRGB(25,15,35)local n=setmetatable({},{__mode='\107'})local o=m.accent local
function p(q,r)return b.language=='\112\116'and q or r end local function q(r,s,t)
local u=Instance.new(r)if u:IsA('\071\117\105\079\098\106\101\099\116')then u.BorderSizePixel=0 end for v,w
in pairs(s)do u[v]=w if typeof(w)=='\067\111\108\111\114\051'then for x,y in pairs(m)do if w==y
then n[u]=n[u]or{}n[u][v]=x break end end end end if u:IsA('\084\101\120\116\076\097\098\101\108')or u:IsA(
'\084\101\120\116\066\117\116\116\111\110')or u:IsA('\084\101\120\116\066\111\120')then u.AutoLocalize=false end u.Parent=t return
u end local function r(s,t)h[#h+1]=s:Connect(t)end local function s(t,u)f:
Create(t,TweenInfo.new(0.18,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),u):
Play()end local function t(u,v)q('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,v or 10)},u
)end local function u(v)return q('\085\073\083\116\114\111\107\101',{Color=m.edge,Thickness=1,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border},v)end local v=q('\083\099\114\101\101\110\071\117\105',{Name=
'\065\110\111\110\072\117\098\069\097\114\116\104\067\111\114\101',ResetOnSpawn=false,DisplayOrder=10032,ZIndexBehavior=Enum.
ZIndexBehavior.Sibling},g:WaitForChild('\080\108\097\121\101\114\071\117\105'))local w=q('\070\114\097\109\101',{
AnchorPoint=Vector2.new(0.5,0.5),Size=UDim2.fromScale(0.94,0.88),Position=UDim2.
fromScale(0.5,0.5),BackgroundColor3=m.dark,ClipsDescendants=true},v)t(w,9)u(w)q(
'\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(m.tile,m.dark),Rotation=90},w)local x=q(
'\070\114\097\109\101',{Size=UDim2.new(0,174,1,0),BackgroundColor3=m.sidebar},w)q('\084\101\120\116\076\097\098\101\108',{
Text='\065\078\079\078\072\085\066',Position=UDim2.fromOffset(17,24),Size=UDim2.fromOffset(145,28),
BackgroundTransparency=1,TextColor3=m.text,Font=Enum.Font.GothamBold,TextSize=20
,TextXAlignment=Enum.TextXAlignment.Left},x)q('\084\101\120\116\076\097\098\101\108',{Text=
'\069\065\082\084\072\032\067\079\082\069\032\047\032\067\079\078\084\082\079\076',Position=UDim2.fromOffset(18,56),Size=UDim2.fromOffset(
146,20),BackgroundTransparency=1,TextColor3=o,Font=Enum.Font.Code,TextSize=9,
TextXAlignment=Enum.TextXAlignment.Left},x)q('\084\101\120\116\076\097\098\101\108',{Text=g.DisplayName,
Position=UDim2.new(0,16,1,-62),Size=UDim2.new(1,-32,0,24),BackgroundTransparency
=1,TextColor3=m.text,Font=Enum.Font.GothamMedium,TextSize=12,TextTruncate=Enum.
TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left},x)local y=q('\070\114\097\109\101',
{Size=UDim2.new(1,0,0,68),BackgroundTransparency=1,Active=true},w)local z=q(
'\084\101\120\116\076\097\098\101\108',{Text='\065',Font=Enum.Font.GothamBlack,TextSize=20,TextColor3=m.dark,
BackgroundColor3=o,Position=UDim2.fromOffset(16,16),Size=UDim2.fromOffset(36,36)
},y)t(z)z.Text=string.upper(g.DisplayName:sub(1,1))z.Size=UDim2.fromOffset(40,40
)z.Position=UDim2.fromOffset(14,16)local A=q('\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromScale(
1,1),BackgroundTransparency=1,Image='\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\065\118\097\116\097\114\072\101\097\100\083\104\111\116\038\105\100\061'..g.
UserId..'\038\119\061\049\053\048\038\104\061\049\053\048',ScaleType=Enum.ScaleType.Fit},z)t(A,10)r(A:
GetPropertyChangedSignal('\073\115\076\111\097\100\101\100'),function()if A.IsLoaded then z.
TextTransparency=1 end end)local B=q('\084\101\120\116\076\097\098\101\108',{Text=g.DisplayName,Size=UDim2.
new(1,-154,0,22),Position=UDim2.fromOffset(64,8),BackgroundTransparency=1,
TextColor3=m.text,TextSize=15,Font=Enum.Font.GothamBold,TextTruncate=Enum.
TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left},y)q('\084\101\120\116\076\097\098\101\108',{
Text='\064'..g.Name,Position=UDim2.fromOffset(65,31),Size=UDim2.new(1,-154,0,16),
BackgroundTransparency=1,TextColor3=m.muted,TextSize=11,Font=Enum.Font.Gotham,
TextTruncate=Enum.TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left},y)
local C=q('\084\101\120\116\076\097\098\101\108',{Text='',Position=UDim2.fromOffset(65,49),Size=UDim2.new(1
,-82,0,18),BackgroundTransparency=1,TextColor3=o,TextSize=10,Font=Enum.Font.
GothamMedium,TextXAlignment=Enum.TextXAlignment.Left},y)local function D(E,F,G)
local H=E.plan=='\080\114\101\109\105\117\109'and'\080\114\101\109\105\117\109'or'\077\101\109\098\101\114'local I=type(E.deadline)==
'\110\117\109\098\101\114'and E.deadline-F or type(E.expiresAt)=='\110\117\109\098\101\114'and E.expiresAt-G if I
then if I<=0 then return H..p('\032\u{b7}\032\069\120\112\105\114\097\100\111','\032\u{b7}\032\069\120\112\105\114\101\100')end local J=
math.floor(I)local K=math.floor(J/86400)J=J%86400 local L=math.floor(J/3600)
local M=math.floor(J%3600/60)local N=(K>0 and K..'\100\032'or'')..string.format(
'\037\048\050\100\104\032\037\048\050\100\109\032\037\048\050\100\115',L,M,J%60)return H..'\032\u{b7}\032'..N end return H..(E.lifetime==
true and p('\032\u{b7}\032\086\105\116\097\108\u{ed}\099\105\111','\032\u{b7}\032\076\105\102\101\116\105\109\101')or p(
'\032\u{b7}\032\080\114\097\122\111\032\110\u{e3}\111\032\105\110\102\111\114\109\097\100\111','\032\u{b7}\032\068\117\114\097\116\105\111\110\032\117\110\097\118\097\105\108\097\098\108\101'))end C.Text=D(
b.access,os.clock(),os.time())task.spawn(function()while l do C.Text=D(b.access,
os.clock(),os.time())task.wait(1)end end)local E=q('\084\101\120\116\076\097\098\101\108',{Text=p(
'\077\u{d3}\068\085\076\079\032\068\079\032\074\079\071\079\032\032\047\032\032\080\084','\071\065\077\069\032\077\079\068\085\076\069\032\032\047\032\032\069\078')..'\032\u{b7}\032\118'..a,Size=UDim2.
new(1,-32,0,30),Position=UDim2.new(0,16,1,-32),BackgroundTransparency=1,
TextColor3=m.muted,TextSize=10,Font=Enum.Font.Code,TextXAlignment=Enum.
TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd},w)local F=q(
'\084\101\120\116\066\117\116\116\111\110',{Text='\065',Size=UDim2.fromOffset(52,52),Position=UDim2.fromScale(
0.02,0.7),BackgroundColor3=o,TextColor3=m.dark,TextSize=20,Font=Enum.Font.
GothamBlack},v)t(F,16)u(F)if b.decorateLauncher then b.decorateLauncher(F)end
local G=q('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Size=UDim2.new(1,-32,0,44),Position=UDim2.
fromOffset(16,72),BackgroundColor3=m.tile},w)t(G)local H,I={},{}local J='\070\097\114\109'
local K=game.PlaceId==101906032112547 and{'\070\097\114\109','\065\106\117\115\116\101\115'}or{'\070\097\114\109','\077\101\108\104\111\114\105\097\115'
,'\073\103\114\101\106\097','\067\111\109\098\097\116\101','\077\111\118\105\109\101\110\116\111','\069\083\080','\076\111\106\097','\077\105\115\115\111\101\115','\065\106\117\115\116\101\115'}local L={Farm=
'\069\120\112\101\100\105\116\105\111\110',Melhorias='\085\112\103\114\097\100\101\115',Igreja='\067\104\117\114\099\104',Combate='\067\111\109\098\097\116',Movimento=
'\077\111\118\101\109\101\110\116',ESP='\069\083\080',Loja='\083\104\111\112',Missoes='\081\117\101\115\116\115',Ajustes='\083\101\116\116\105\110\103\115'}local
function M(N)J=N for O,P in pairs(H)do P.Visible=O==N s(I[O],{BackgroundColor3=O
==N and o or m.tile,TextColor3=O==N and m.dark or m.muted})if O==N then local Q=
P.Position P.Position=Q+UDim2.fromOffset(6,0)s(P,{Position=Q})end end end local
function N(O)if H[O]then return H[O]end local P=q('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Name=O,Size=
UDim2.new(1,-32,1,-166),Position=UDim2.fromOffset(16,126),BackgroundTransparency
=1,ScrollBarThickness=3,ScrollBarImageColor3=o,CanvasSize=UDim2.new(),
AutomaticCanvasSize=Enum.AutomaticSize.Y,Visible=O=='\070\097\114\109'},w)q('\085\073\076\105\115\116\076\097\121\111\117\116',{
Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.LayoutOrder},P)q('\085\073\080\097\100\100\105\110\103',{
PaddingTop=UDim.new(0,2),PaddingBottom=UDim.new(0,12),PaddingLeft=UDim.new(0,2)}
,P)local Q={Missoes=p(
'\080\114\111\103\114\101\115\115\111\032\100\097\115\032\109\105\115\115\u{f5}\101\115\032\101\032\114\101\115\103\097\116\101\032\100\101\032\114\101\099\111\109\112\101\110\115\097\115\032\099\111\110\099\108\117\u{ed}\100\097\115\046',
'\081\117\101\115\116\032\112\114\111\103\114\101\115\115\032\097\110\100\032\099\108\097\105\109\105\110\103\032\099\111\109\112\108\101\116\101\100\032\114\101\119\097\114\100\115\046'),Loja=p(
'\083\101\108\101\099\105\111\110\101\032\101\032\111\114\103\097\110\105\122\101\059\032\102\105\110\097\108\105\122\101\032\097\032\099\111\109\112\114\097\032\110\111\032\099\097\105\120\097\046',
'\083\101\108\101\099\116\032\097\110\100\032\115\116\097\103\101\059\032\102\105\110\105\115\104\032\121\111\117\114\032\112\117\114\099\104\097\115\101\032\097\116\032\116\104\101\032\114\101\103\105\115\116\101\114\046'),Movimento=p(
'\077\111\118\105\109\101\110\116\097\u{e7}\u{e3}\111\032\108\111\099\097\108\032\101\032\114\101\115\116\097\117\114\097\u{e7}\u{e3}\111\032\097\111\032\100\101\115\108\105\103\097\114\046',
'\076\111\099\097\108\032\109\111\118\101\109\101\110\116\032\097\110\100\032\114\101\115\116\111\114\097\116\105\111\110\032\111\110\032\100\105\115\097\098\108\101\046'),ESP=p(
'\067\097\116\101\103\111\114\105\097\115\044\032\099\111\114\101\115\032\101\032\101\115\116\105\108\111\115\032\105\110\100\101\112\101\110\100\101\110\116\101\115\046',
'\073\110\100\101\112\101\110\100\101\110\116\032\099\097\116\101\103\111\114\105\101\115\044\032\099\111\108\111\114\115\032\097\110\100\032\115\116\121\108\101\115\046'),Farm=game.PlaceId==101906032112547
and p('\076\111\098\098\121\032\u{b7}\032\069\113\117\105\112\097\109\101\110\116\111\115','\076\111\098\098\121\032\u{b7}\032\069\113\117\105\112\109\101\110\116')or p(
'\069\120\112\101\100\105\u{e7}\u{e3}\111\032\u{b7}\032\070\101\114\114\097\109\101\110\116\097\115\032\101\032\110\097\118\101\103\097\u{e7}\u{e3}\111',
'\069\120\112\101\100\105\116\105\111\110\032\u{b7}\032\084\111\111\108\115\032\097\110\100\032\110\097\118\105\103\097\116\105\111\110'),Melhorias=p(
'\077\111\101\100\097\115\044\032\112\114\105\111\114\105\100\097\100\101\115\032\101\032\108\105\109\105\116\101\115\032\112\111\114\032\115\101\115\115\u{e3}\111\046',
'\067\111\105\110\115\044\032\112\114\105\111\114\105\116\105\101\115\032\097\110\100\032\112\101\114\045\115\101\115\115\105\111\110\032\108\105\109\105\116\115\046'),Igreja=p(
'\083\101\108\101\u{e7}\u{e3}\111\032\100\101\032\101\113\117\105\112\097\109\101\110\116\111\115\032\101\032\114\101\116\111\114\110\111\032\097\111\032\108\111\098\098\121\046',
'\071\101\097\114\032\115\101\108\101\099\116\105\111\110\032\097\110\100\032\114\101\116\117\114\110\032\116\111\032\108\111\098\098\121\046'),Cartas=p(
'\079\114\103\097\110\105\122\101\032\115\117\097\032\099\111\108\101\u{e7}\u{e3}\111\032\101\032\097\117\116\111\109\097\116\105\122\101\032\097\115\032\109\101\108\104\111\114\105\097\115\046',
'\077\097\110\097\103\101\032\121\111\117\114\032\099\111\108\108\101\099\116\105\111\110\032\097\110\100\032\097\117\116\111\109\097\116\101\032\117\112\103\114\097\100\101\115\046'),Combate=p(
'\067\111\110\116\114\111\108\101\115\032\100\101\032\099\111\109\098\097\116\101\032\101\032\104\097\098\105\108\105\100\097\100\101\115\046','\067\111\109\098\097\116\032\097\110\100\032\097\098\105\108\105\116\121\032\099\111\110\116\114\111\108\115\046'),Ajustes=p(
'\080\101\114\115\111\110\097\108\105\122\101\032\111\032\112\097\105\110\101\108\032\101\032\097\115\032\114\101\103\114\097\115\032\100\101\032\097\117\116\111\109\097\u{e7}\u{e3}\111\046',
'\067\117\115\116\111\109\105\122\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\097\117\116\111\109\097\116\105\111\110\032\114\117\108\101\115\046')}local R=q('\084\101\120\116\076\097\098\101\108',{Text=b.
language=='\112\116'and(O=='\077\105\115\115\111\101\115'and'\077\105\115\115\u{f5}\101\115'or O)or L[O],Size=UDim2.new(1,-8,
0,28),LayoutOrder=-30,BackgroundTransparency=1,TextColor3=m.text,TextSize=20,
Font=Enum.Font.GothamBold,TextXAlignment=Enum.TextXAlignment.Left},P)q(
'\084\101\120\116\076\097\098\101\108',{Text=Q[O]or'',Size=UDim2.new(1,-8,0,38),LayoutOrder=-29,
BackgroundTransparency=1,TextColor3=m.muted,TextSize=12,TextWrapped=true,Font=
Enum.Font.Gotham,TextXAlignment=Enum.TextXAlignment.Left},P)local S=0 for T in
pairs(H)do S+=1 end local T=q('\084\101\120\116\066\117\116\116\111\110',{Text=b.language=='\112\116'and(O==
'\077\105\115\115\111\101\115'and'\077\105\115\115\u{f5}\101\115'or O)or L[O],Font=Enum.Font.GothamMedium,TextSize=12,
TextColor3=O=='\070\097\114\109'and m.dark or m.muted,Size=UDim2.new(1/#K,-8,1,-8),Position=
UDim2.new(S/#K,4,0,4),BackgroundColor3=O=='\070\097\114\109'and o or m.tile,AutoButtonColor=
false},G)t(T,8)q('\085\073\080\097\100\100\105\110\103',{PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0
,10)},T)H[O]=P I[O]=T r(T.Activated,function()M(O)end)return P end local O={}
function O.label(P,Q,R,S,T)local U=q(Q,{Text=R,Size=UDim2.new(1,-10,0,S),
LayoutOrder=T,BackgroundTransparency=Q=='\084\101\120\116\066\111\120'and 0 or 1,BackgroundColor3=m.
tile,TextColor3=m.text,TextSize=13,Font=Enum.Font.Gotham,TextWrapped=true,
TextXAlignment=Enum.TextXAlignment.Left},P)q('\085\073\080\097\100\100\105\110\103',{PaddingLeft=UDim.new(0
,12),PaddingRight=UDim.new(0,12)},U)if Q=='\084\101\120\116\066\111\120'then t(U,8)u(U)U.
ClearTextOnFocus=false r(U.Focused,function()s(U,{BackgroundColor3=m.edge})end)
r(U.FocusLost,function()s(U,{BackgroundColor3=m.tile})end)end return U end
function O.button(P,Q,R)local S=O.label(P,'\084\101\120\116\066\117\116\116\111\110',Q,48,R)S.
BackgroundTransparency=0 S.AutoButtonColor=false t(S,10)u(S)local T=q('\070\114\097\109\101',{
Name='\066\117\116\116\111\110\083\104\097\100\111\119',Position=UDim2.new(0,4,1,1),Size=UDim2.new(1,-8,0,3),
BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=0.6,Active=false},S)t(
T,3)r(S.MouseEnter,function()s(S,{BackgroundColor3=m.edge})end)r(S.MouseLeave,
function()s(S,{BackgroundColor3=m.tile})end)r(S.MouseButton1Down,function()s(S,{
BackgroundColor3=m.dark})end)r(S.MouseButton1Up,function()s(S,{BackgroundColor3=
m.tile})end)return S end local P={}function O.checkbox(Q,R,S)local T=O.button(Q,
'',S)local U=O.label(T,'\084\101\120\116\076\097\098\101\108',R,48,0)U.Size=UDim2.new(1,-44,1,0)local V=q(
'\084\101\120\116\076\097\098\101\108',{Text='',AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,-2,0.5,
0),Size=UDim2.fromOffset(24,24),TextSize=18,Font=Enum.Font.GothamBold,TextColor3
=m.dark,BackgroundColor3=m.dark},T)t(V,6)local W=u(V)local X=false local
function Y(Z)X=Z==true V.Text=X and'\u{2713}'or''s(V,{BackgroundColor3=X and o
or m.dark})s(W,{Color=X and o or m.edge})end P[#P+1]=function()Y(X)end return T,
Y end local Q={}function Q.resolve(R,S,T)local U=math.max(0.1,math.min(T.scale/
100,math.max(1,R-16)/300,math.max(1,S-16)/340))local V=math.min(T.width,math.
max(1,R-16)/U)local W=math.min(T.height,math.max(1,S-16)/U)return{scale=U,width=
V,height=W,x=8+math.max(0,R-16-V*U)*T.x,y=8+math.max(0,S-16-W*U)*T.y,compact=V<
620}end local R='\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\076\097\121\111\117\116\095'..g.UserId..'\046\106\115\111\110'local S={width=760
,height=580,scale=d.TouchEnabled and 80 or 100,launcher=56,x=0.5,y=0.5}local T=
table.clone(S)local U={width={300,1100},height={340,900},scale={65,150},launcher
={44,88},x={0,1},y={0,1}}if type(readfile)=='\102\117\110\099\116\105\111\110'then pcall(function()local
V=e:JSONDecode(readfile(R))for W,X in pairs(U)do local Y=V[W]if type(Y)==
'\110\117\109\098\101\114'and Y==Y then T[W]=math.clamp(Y,X[1],X[2])end end end)end local function
V()if type(writefile)=='\102\117\110\099\116\105\111\110'then pcall(writefile,R,e:JSONEncode(T))end end
local W=q('\085\073\083\099\097\108\101',{Scale=1},w)local function X()local Y=v.AbsoluteSize if Y.X<
100 or Y.Y<100 then return end local Z=Q.resolve(Y.X,Y.Y,T)w.AnchorPoint=Vector2
.zero w.Size=UDim2.fromOffset(Z.width,Z.height)w.Position=UDim2.fromOffset(Z.x,Z
.y)W.Scale=Z.scale x.Visible=not Z.compact y.Position=UDim2.fromOffset(Z.compact
and 0 or 174,0)y.Size=UDim2.new(1,Z.compact and 0 or-174,0,76)G.Parent=w G.
Position=Z.compact and UDim2.new(0,12,1,-84)or UDim2.fromOffset(12,100)G.Size=Z.
compact and UDim2.new(1,-24,0,44)or UDim2.new(0,150,1,-180)G.
BackgroundTransparency=1 G.ScrollBarThickness=3 G.CanvasSize=Z.compact and UDim2
.fromOffset(#K*116,0)or UDim2.fromOffset(0,#K*52)G.ScrollingDirection=Z.compact
and Enum.ScrollingDirection.X or Enum.ScrollingDirection.Y for _,aa in ipairs(K)
do local ab=I[aa]if ab then ab.Size=Z.compact and UDim2.fromOffset(110,42)or
UDim2.new(1,0,0,44)ab.Position=Z.compact and UDim2.fromOffset((_-1)*116,0)or
UDim2.fromOffset(0,(_-1)*52)ab.Text=Z.compact and(b.language=='\112\116'and(aa==
'\077\105\115\115\111\101\115'and'\077\105\115\115\u{f5}\101\115'or aa)or L[aa])or string.format('\037\048\050\100\032\u{b7}\032\037\115',_,b.
language=='\112\116'and(aa=='\077\105\115\115\111\101\115'and'\077\105\115\115\u{f5}\101\115'or aa)or L[aa])ab.TextXAlignment
=Z.compact and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left end end
for aa,ab in pairs(H)do ab.Position=UDim2.fromOffset(Z.compact and 16 or 190,88)
ab.Size=UDim2.new(1,Z.compact and-32 or-206,1,Z.compact and-184 or-136)end E.
Position=UDim2.new(0,Z.compact and 16 or 190,1,-34)E.Size=UDim2.new(1,Z.compact
and-40 or-214,0,26)F.Size=UDim2.fromOffset(T.launcher,T.launcher)end r(v:
GetPropertyChangedSignal('\065\098\115\111\108\117\116\101\083\105\122\101'),X)local aa={}local function ab(Y)O.
label(Y,'\084\101\120\116\076\097\098\101\108',p('\084\069\076\065\032\069\032\084\079\081\085\069','\068\073\083\080\076\065\089\032\038\032\084\079\085\067\072'),32,-10)O.label(Y,
'\084\101\120\116\076\097\098\101\108',p(
'\065\114\114\097\115\116\101\032\111\032\099\097\098\101\u{e7}\097\108\104\111\032\112\097\114\097\032\109\111\118\101\114\046\032\085\115\101\032\111\032\099\097\110\116\111\032\105\110\102\101\114\105\111\114\032\112\097\114\097\032\114\101\100\105\109\101\110\115\105\111\110\097\114\046\032\079\115\032\097\106\117\115\116\101\115\032\115\u{e3}\111\032\115\097\108\118\111\115\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046'
,
"\068\114\097\103\032\116\104\101\032\104\101\097\100\101\114\032\116\111\032\109\111\118\101\046\032\085\115\101\032\116\104\101\032\098\111\116\116\111\109\032\099\111\114\110\101\114\032\116\111\032\114\101\115\105\122\101\046\032\067\104\097\110\103\101\115\032\097\114\101\032\115\097\118\101\100\032\097\117\116\111\109\097\116\105\099\097\108\108\121\046"
),64,-9)for Z,_ in ipairs({{'\115\099\097\108\101','\069\115\099\097\108\097\032\100\097\032\105\110\116\101\114\102\097\099\101','\073\110\116\101\114\102\097\099\101\032\115\099\097\108\101',5,
'\037'},{'\119\105\100\116\104','\076\097\114\103\117\114\097\032\100\111\032\112\097\105\110\101\108','\080\097\110\101\108\032\119\105\100\116\104',10,'\032\112\120'},{'\104\101\105\103\104\116',
'\065\108\116\117\114\097\032\100\111\032\112\097\105\110\101\108','\080\097\110\101\108\032\104\101\105\103\104\116',10,'\032\112\120'},{'\108\097\117\110\099\104\101\114','\084\097\109\097\110\104\111\032\100\111\032\102\108\117\116\117\097\110\116\101',
'\070\108\111\097\116\105\110\103\032\098\117\116\116\111\110\032\115\105\122\101',2,'\032\112\120'}})do local ac=_[1]local ad=q('\070\114\097\109\101',{Size=UDim2.
new(1,-8,0,76),BackgroundColor3=m.tile,LayoutOrder=-8+Z},Y)t(ad,10)u(ad)local ae
=O.label(ad,'\084\101\120\116\076\097\098\101\108',p(_[2],_[3]),28,0)ae.Size=UDim2.new(1,0,0,28)local af=O.
button(ad,'\u{2212}',0)af.Size=UDim2.fromOffset(42,36)af.Position=UDim2.
fromOffset(12,32)af.TextXAlignment=Enum.TextXAlignment.Center local ag=O.label(
ad,'\084\101\120\116\066\111\120','',36,0)ag.Position=UDim2.fromOffset(62,32)ag.Size=UDim2.new(1,-124
,0,36)ag.TextXAlignment=Enum.TextXAlignment.Center local ah=O.button(ad,'\043',0)ah
.Size=UDim2.fromOffset(42,36)ah.Position=UDim2.new(1,-54,0,32)ah.TextXAlignment=
Enum.TextXAlignment.Center local function ai()ag.Text=tostring(math.floor(T[ac])
).._[5]end aa[#aa+1]=ai local function aj(ak)if ak and ak==ak then T[ac]=math.
clamp(ak,U[ac][1],U[ac][2])X()V()end ai()end r(af.Activated,function()aj(T[ac]-_
[4])end)r(ah.Activated,function()aj(T[ac]+_[4])end)r(ag.FocusLost,function()aj(
tonumber(ag.Text:match('\091\037\100\037\046\093\043')))end)ai()end local ac=O.button(Y,p(
'\067\101\110\116\114\097\108\105\122\097\114\032\101\032\114\101\115\116\097\117\114\097\114\032\116\097\109\097\110\104\111','\067\101\110\116\101\114\032\097\110\100\032\114\101\115\116\111\114\101\032\115\105\122\101'),-3)r(ac.Activated,
function()T=table.clone(S)X()V()for ad,ae in ipairs(aa)do ae()end end)end local
ac=q('\084\101\120\116\066\117\116\116\111\110',{Text='\u{25e2}',TextSize=20,TextColor3=m.muted,
BackgroundTransparency=1,Size=UDim2.fromOffset(30,30),Position=UDim2.new(1,-30,1
,-30)},w)local ad local function ae(af,ag)if af.UserInputType~=Enum.
UserInputType.MouseButton1 and af.UserInputType~=Enum.UserInputType.Touch then
return end ad={input=af,kind=ag,origin=af.Position,pos=w.Position,width=w.Size.X
.Offset,height=w.Size.Y.Offset}end r(y.InputBegan,function(af)ae(af,'\109\111\118\101')end)
r(ac.InputBegan,function(af)ae(af,'\114\101\115\105\122\101')end)r(d.InputChanged,function(af)if
not ad or(af~=ad.input and af.UserInputType~=Enum.UserInputType.MouseMovement)
then return end local ag=af.Position-ad.origin local ah=v.AbsoluteSize if ad.
kind=='\114\101\115\105\122\101'then T.width=math.clamp(ad.width+ag.X/W.Scale,300,1100)T.height=
math.clamp(ad.height+ag.Y/W.Scale,340,900)else local ai=math.max(1,ah.X-16-w.
Size.X.Offset*W.Scale)local aj=math.max(1,ah.Y-16-w.Size.Y.Offset*W.Scale)T.x=
math.clamp((ad.pos.X.Offset+ag.X-8)/ai,0,1)T.y=math.clamp((ad.pos.Y.Offset+ag.Y-
8)/aj,0,1)end X()end)r(d.InputEnded,function(af)if ad and af==ad.input then ad=
nil V()for ag,ah in ipairs(aa)do ah()end end end)local function af()if not l
then return end l=false if j then pcall(j)end for ag,ah in ipairs(h)do ah:
Disconnect()end v:Destroy()end b.attach(af)local function ag(ah)w.Visible=ah if
ah then X()local ai=w.Position w.Position=ai+UDim2.fromOffset(0,8)s(w,{Position=
ai})end end local ah=q('\084\101\120\116\066\117\116\116\111\110',{Text='\u{2014}',Size=UDim2.fromOffset(32,32
),Position=UDim2.new(1,-76,0,16)},y)local ai=q('\084\101\120\116\066\117\116\116\111\110',{Text='\u{d7}',Size=
UDim2.fromOffset(32,32),Position=UDim2.new(1,-38,0,16)},y)for aj,ak in ipairs({
ah,ai})do ak.BackgroundColor3=m.tile ak.TextColor3=m.text ak.Font=Enum.Font.
GothamMedium ak.TextSize=18 t(ak,8)end r(ah.Activated,function()ag(false)end)r(
ai.Activated,function()b.unload()end)local aj,ak,Y,Z,_ r(F.InputBegan,function(
al)if al.UserInputType==Enum.UserInputType.MouseButton1 or al.UserInputType==
Enum.UserInputType.Touch then aj=al ak=al.Position Y=F.Position Z=os.clock()_=
false end end)r(d.InputChanged,function(al)if aj and(al==aj or al.UserInputType
==Enum.UserInputType.MouseMovement)then local am=al.Position-ak if am.Magnitude>
8 then _=true end if _ then local an=v.AbsoluteSize local ao=math.clamp(Y.X.
Scale*an.X+Y.X.Offset+am.X,0,math.max(0,an.X-T.launcher))local ap=math.clamp(Y.Y
.Scale*an.Y+Y.Y.Offset+am.Y,0,math.max(0,an.Y-T.launcher))F.Position=UDim2.
fromOffset(ao,ap)end end end)r(d.InputEnded,function(al)if aj and(al==aj or al.
UserInputType==Enum.UserInputType.MouseButton1)then if not _ then if os.clock()-
Z>=0.65 then if k then k()end else ag(not w.Visible)end end aj=nil end end)r(d.
InputBegan,function(al,am)if not am and al.KeyCode==Enum.KeyCode.RightControl
then ag(not w.Visible)end end)local al=os.clock()local am,an=false,false local
function ao()return am and(an or os.clock()-al>=2.5)end local ap=q('\070\114\097\109\101',{Name
='\076\111\097\100\105\110\103',Size=UDim2.fromScale(1,1),BackgroundColor3=m.dark,ZIndex=50},w)t(ap,
10)local aq=q('\084\101\120\116\076\097\098\101\108',{Text='\065\078\079\078\072\085\066',Position=UDim2.fromScale(0.1,0.045),
Size=UDim2.fromScale(0.8,0.12),BackgroundTransparency=1,Font=Enum.Font.
GothamBlack,TextSize=28,TextColor3=o,ZIndex=51},ap)local ar=q('\084\101\120\116\076\097\098\101\108',{Text=
game.PlaceId==101906032112547 and p('\067\097\114\114\101\103\097\110\100\111\032\108\111\098\098\121','\076\111\097\100\105\110\103\032\108\111\098\098\121')or p(
'\067\097\114\114\101\103\097\110\100\111\032\101\120\112\101\100\105\u{e7}\u{e3}\111','\076\111\097\100\105\110\103\032\101\120\112\101\100\105\116\105\111\110'),Position=UDim2.fromScale(
0.1,0.59),Size=UDim2.fromScale(0.8,0.1),BackgroundTransparency=1,Font=Enum.Font.
GothamBold,TextSize=18,TextWrapped=true,TextColor3=m.text,ZIndex=51},ap)local as
=q('\084\101\120\116\076\097\098\101\108',{Text='',Position=UDim2.fromScale(0.1,0.69),Size=UDim2.fromScale(
0.8,0.1),BackgroundTransparency=1,Font=Enum.Font.Gotham,TextSize=13,TextWrapped=
true,TextColor3=m.muted,ZIndex=51},ap)local at=q('\070\114\097\109\101',{Position=UDim2.
fromScale(0.15,0.82),Size=UDim2.new(0.7,0,0,10),BackgroundColor3=m.edge,ZIndex=
51},ap)t(at,4)local au=q('\070\114\097\109\101',{Size=UDim2.fromScale(0,1),BackgroundColor3=o,
ZIndex=52},at)t(au,4)q('\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(Color3.fromRGB(150,
60,220),Color3.fromRGB(235,165,255)),Rotation=0},au)local av=q('\084\101\120\116\076\097\098\101\108',{Text
='\069\065\082\084\072\032\067\079\082\069\032\047\032\065\078\079\078\072\085\066\032\032\u{b7}\032\032\118'..a,Position=UDim2.fromScale(0.1,0.145),Size=
UDim2.fromScale(0.8,0.05),BackgroundTransparency=1,Font=Enum.Font.Code,TextSize=
10,TextColor3=m.muted,ZIndex=51},ap)local aw=q('\084\101\120\116\076\097\098\101\108',{Text='',Position=
UDim2.fromScale(0.15,0.87),Size=UDim2.fromScale(0.7,0.06),BackgroundTransparency
=1,Font=Enum.Font.Code,TextSize=11,TextColor3=m.muted,ZIndex=51},ap)local ax=q(
'\070\114\097\109\101',{Name='\071\097\109\101\067\111\118\101\114',Position=UDim2.fromScale(0.12,0.22),Size=UDim2.
fromScale(0.76,0.34),BackgroundColor3=m.tile,ClipsDescendants=true,ZIndex=51},ap
)t(ax,14)q('\085\073\083\116\114\111\107\101',{Color=o,Thickness=2,Transparency=0.15,ApplyStrokeMode=
Enum.ApplyStrokeMode.Border},ax)local ay=q('\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromScale(1,
1),BackgroundTransparency=1,Image=b.identity and b.identity.cover or
"\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\071\097\109\101\084\104\117\109\098\110\097\105\108\038\105\100\061\049\048\049\057\048\054\048\051\050\049\049\050\053\052\055\038\119\061\052\056\048\038\104\061\050\055\048",ScaleType=Enum.
ScaleType.Crop,ZIndex=52},ax)t(ay,14)q('\084\101\120\116\076\097\098\101\108',{Text='\069\065\082\084\072\032\067\079\082\069',Size=UDim2
.new(1,0,0,30),Position=UDim2.new(0,0,1,-30),BackgroundColor3=m.dark,
BackgroundTransparency=0.25,TextColor3=Color3.new(1,1,1),TextSize=12,Font=Enum.
Font.GothamBold,ZIndex=53},ax)local az=q('\070\114\097\109\101',{Name='\067\111\118\101\114\082\101\102\108\101\099\116\105\111\110',Size=
UDim2.fromScale(1,1),BackgroundColor3=Color3.new(1,1,1),ZIndex=54,Active=false},
ax)t(az,14)local aA=q('\085\073\071\114\097\100\105\101\110\116',{Rotation=20,Offset=Vector2.new(-1,0),
Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(0.4,1),NumberSequenceKeypoint.new(0.5,0.65),
NumberSequenceKeypoint.new(0.6,1),NumberSequenceKeypoint.new(1,1)})},az)local aB
=f:Create(aA,TweenInfo.new(1.6,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,
-1,false,0.6),{Offset=Vector2.new(1,0)})aB:Play()r(ap.Destroying,function()aB:
Cancel()end)task.spawn(function()pcall(function()game:GetService(
'\067\111\110\116\101\110\116\080\114\111\118\105\100\101\114'):PreloadAsync({ay})end)end)local aC=q('\084\101\120\116\066\117\116\116\111\110',{Text=p(
'\080\117\108\097\114\032\097\110\105\109\097\u{e7}\u{e3}\111','\083\107\105\112\032\097\110\105\109\097\116\105\111\110'),Position=UDim2.fromScale(0.3,0.93),
Size=UDim2.fromScale(0.4,0.055),BackgroundColor3=m.tile,TextColor3=m.text,Font=
Enum.Font.GothamMedium,TextSize=11,ZIndex=52},ap)t(aC,8)r(aC.Activated,function(
)an=true if am then ap:Destroy()else aC.Text=p(
'\065\103\117\097\114\100\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115\u{2026}','\087\097\105\116\105\110\103\032\102\111\114\032\102\101\097\116\117\114\101\115\u{2026}')aC.Active=
false end end)local aD=q('\084\101\120\116\066\117\116\116\111\110',{Text=p('\070\101\099\104\097\114','\067\108\111\115\101'),Position=UDim2.
new(1,-88,0,12),Size=UDim2.fromOffset(76,32),BackgroundColor3=m.tile,TextColor3=
m.text,Font=Enum.Font.Gotham,TextSize=12,ZIndex=52},ap)t(aD,8)r(aD.Activated,
function()b.unload()end)local function aE(aF,aG,aH)if not l then error(
'\073\110\105\116\105\097\108\105\122\097\116\105\111\110\032\099\097\110\099\101\108\108\101\100')end as.Text=p(aG,aH)aw.Text=string.format('\037\100\037\037',math
.floor(aF*100))if b.progress then b.progress(0.43+0.57*aF,aG,aH)end s(au,{Size=
UDim2.fromScale(aF,1)})game:GetService('\082\117\110\083\101\114\118\105\099\101').Heartbeat:Wait()end X()aE(
0.08,'\080\114\101\112\097\114\097\110\100\111\032\097\032\105\110\116\101\114\102\097\099\101\u{2026}','\080\114\101\112\097\114\105\110\103\032\116\104\101\032\105\110\116\101\114\102\097\099\101\u{2026}')local aF
={{id='\068\114\105\108\108\080\111\119\101\114',name='\068\114\105\108\108\032\080\111\119\101\114',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\055\053\049\054\055\051\048\056\053\055\054\048\056\051'},{id=
'\070\117\101\108\083\116\111\114\097\103\101',name='\070\117\101\108\032\083\116\111\114\097\103\101',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\055\057\054\049\053\055\055\052\053\049\051\053\057\049'},{id=
'\068\114\105\118\101\083\112\101\101\100',name='\068\114\105\118\101\032\083\112\101\101\100',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\049\051\048\054\052\054\055\055\051\048\054\049\051\052\056'},{id=
'\068\114\105\108\108\068\101\102\101\110\115\101',name='\068\114\105\108\108\032\068\101\102\101\110\115\101',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\057\055\054\053\048\056\048\050\051\049\055\057\057\056'},{id=
'\084\101\097\109\072\101\097\108\116\104',name='\084\101\097\109\032\072\101\097\108\116\104',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\049\048\048\057\051\057\057\057\051\053\053\051\054\057\048'},{id=
'\083\097\099\107\083\116\111\114\097\103\101',name='\067\097\114\114\121\032\067\097\112\097\099\105\116\121',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\049\050\052\052\057\054\052\052\056\056\053\052\055\048\048'},{id=
'\080\111\119\101\114\068\114\105\118\101',name='\080\111\119\101\114\032\068\114\105\118\101',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\056\055\051\056\048\052\049\055\052\055\055\051\052\049'},{id=
'\080\111\119\101\114\083\108\097\109',name='\080\111\119\101\114\032\083\108\097\109',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\049\048\049\056\056\053\056\051\049\057\056\055\049\055\055'},{id=
'\069\110\103\105\110\101\079\118\101\114\100\114\105\118\101',name='\069\110\103\105\110\101\032\079\118\101\114\100\114\105\118\101',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\049\049\057\055\055\055\055\048\053\057\051\048\057\053\053'},{
id='\077\101\103\097\068\114\105\108\108',name='\077\101\103\097\032\068\114\105\108\108',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\049\049\048\055\052\054\052\049\051\049\055\053\049\050\049'},{id=
'\084\101\097\109\071\117\110\068\097\109\097\103\101',name='\070\105\114\101\112\111\119\101\114',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\049\048\050\056\050\056\049\054\057\057\049\051\050\049\048'},{id=
'\084\101\097\109\077\101\108\101\101\068\097\109\097\103\101',name='\083\104\097\114\112\110\101\115\115',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\057\051\048\055\055\057\053\049\055\050\049\055\048\049'},{id=
'\084\101\097\109\080\105\099\107\097\120\101\068\097\109\097\103\101',name='\080\105\099\107\097\120\101\032\068\097\109\097\103\101',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\056\053\057\049\056\050\050\048\050\057\053\053\049\055'},{
id='\084\101\097\109\069\120\112\108\111\115\105\118\101\068\097\109\097\103\101',name='\066\108\097\115\116\032\080\111\119\101\114',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\049\050\054\053\055\055\054\055\050\055\049\056\057\055\054'}
,{id='\080\111\119\101\114\066\117\114\115\116',name='\080\111\119\101\114\032\066\117\114\115\116',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\057\049\048\054\050\050\055\054\056\055\051\055\053\054'},{id=
'\077\111\117\110\116\101\100\071\117\110\110\101\114',name='\077\111\117\110\116\101\100\032\071\117\110\110\101\114',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\049\048\056\051\057\050\049\052\057\048\057\051\056\051\049'},{id=
'\082\080\077\079\118\101\114\099\108\111\099\107',name='\082\080\077\032\079\118\101\114\099\108\111\099\107',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\057\049\053\052\049\051\057\056\050\052\055\055\048\052'},{id=
'\076\105\102\101\083\116\101\097\108',name='\076\105\102\101\115\116\101\097\108',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\049\050\051\055\052\053\051\054\053\051\049\050\056\055\055'},{id=
'\077\111\110\101\121\068\114\105\108\108',name='\077\111\110\101\121\032\068\114\105\108\108',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\049\049\057\054\049\054\055\055\051\056\056\053\052\049\053'},{id=
'\085\108\116\114\097\068\114\105\108\108',name='\085\108\116\114\097\032\068\114\105\108\108',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\049\051\055\051\055\057\053\056\051\049\057\049\053\055\049'},{id=
'\072\101\097\108\116\104\082\101\103\101\110',name='\072\101\097\108\116\104\032\082\101\103\101\110',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\049\050\055\048\052\056\050\057\057\050\048\054\057\054\057'},{id=
'\067\097\114\116\069\120\116\101\110\115\105\111\110',name='\067\097\114\116\032\069\120\116\101\110\115\105\111\110',icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\056\056\057\050\054\052\056\048\051\056\054\054\049\052'}}local
function aG(aH,aI,aJ,aK,aL)return aH~='\112\108\097\121\101\114\115'and(aJ=='\067\111\114\112\115\101'or aK~=nil or aL
~=nil or type(aI)=='\110\117\109\098\101\114'and aI<=0)end local function aH(aI,aJ)local aK,aL=aI.
ui,aI.T local aM=game:GetService('\080\108\097\121\101\114\115').LocalPlayer local aN=game:
GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101')local aO=game:GetService('\082\117\110\083\101\114\118\105\099\101')local aP=
game:GetService('\067\111\108\108\101\099\116\105\111\110\083\101\114\118\105\099\101')local aQ=game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local
aR=true local aS={}local aT={}local aU={}local aV={speed=24,flySpeed=40,reach=12
,offset=5,maxDistance=1500,maxESP=60,espPriority='\068\117\110\103\101\111\110\115',oreFilter=
'\067\111\097\108\044\073\114\111\110\044\071\111\108\100\044\068\105\097\109\111\110\100\044\069\109\101\114\097\108\100\044\082\117\098\121',position='\079\102\102',style='\079\117\116\108\105\110\101',textSize=12
,distanceColor='\068\048\068\056\069\056',hideDead=true,hideAttached=true,combatDistance=22,
gunRange=250,hitboxSize=8,rarityColors=false,showValue=false,visibleOnly=true,
medkitPercent=40,medkitInstant=true}local aW={speed=false,noclip=false,fly=false
,aura=false,oreAura=false,autoMove=false,autoFire=false,silentAim=false,hitbox=
false,autoMedkit=false,noLauncherCooldown=false}local aX={{'\109\111\098\115','\077\111\110\115\116\114\111\115',
'\069\110\101\109\105\101\115','\070\070\054\048\054\048'},{'\112\108\097\121\101\114\115','\074\111\103\097\100\111\114\101\115','\080\108\097\121\101\114\115','\054\048\068\056\070\070'},{'\099\111\109\112\097\110\105\111\110\115',
'\067\111\109\112\097\110\104\101\105\114\111\115','\067\111\109\112\097\110\105\111\110\115','\054\048\070\070\066\048'},{'\099\104\101\115\116\115','\066\097\u{fa}\115','\067\104\101\115\116\115','\070\070\068\048\054\048'},{
'\109\105\109\105\099\115','\077\u{ed}\109\105\099\111\115\032\105\100\101\110\116\105\102\105\099\097\100\111\115','\073\100\101\110\116\105\102\105\101\100\032\109\105\109\105\099\115','\070\070\053\048\068\048'},{'\105\116\101\109\115',
'\073\116\101\110\115','\073\116\101\109\115','\070\070\070\070\070\070'},{'\115\099\114\097\112','\083\117\099\097\116\097\115','\083\099\114\097\112','\066\053\067\048\068\048'},{'\111\114\101\115',
'\077\105\110\u{e9}\114\105\111\115','\079\114\101\115','\054\048\069\048\070\070'},{'\116\114\101\097\115\117\114\101','\084\101\115\111\117\114\111\115\032\101\110\116\101\114\114\097\100\111\115\032\040\088\041',
'\066\117\114\105\101\100\032\116\114\101\097\115\117\114\101\032\040\088\041','\070\070\068\051\053\067'},{'\115\116\114\117\099\116\117\114\101\115','\069\115\116\114\117\116\117\114\097\115','\083\116\114\117\099\116\117\114\101\115','\057\049\067\056\070\070'
},{'\099\104\117\114\099\104','\073\103\114\101\106\097','\067\104\117\114\099\104','\070\070\070\048\065\048'},{'\100\111\111\114\115','\069\110\116\114\097\100\097\115\032\100\101\032\068\117\110\103\101\111\110',
'\068\117\110\103\101\111\110\032\101\110\116\114\097\110\099\101\115','\066\048\056\048\070\070'},{'\097\114\101\110\097\115','\080\111\114\116\097\115\032\100\101\032\097\114\101\110\097','\065\114\101\110\097\032\100\111\111\114\115','\070\070\056\048\052\048'
},{'\116\114\101\097\115\117\114\101\068\111\111\114\115','\080\111\114\116\097\115\032\100\101\032\116\101\115\111\117\114\111','\084\114\101\097\115\117\114\101\032\100\111\111\114\115','\070\070\069\048\056\048'}}local aY={}for
aZ,a_ in ipairs(aX)do aY[a_[1] ]={enabled=false,color=a_[4]}end local aZ=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\086\105\115\117\097\108\095'..aM.UserId..'\046\106\115\111\110'if type(readfile)=='\102\117\110\099\116\105\111\110'then
pcall(function()local a_=aQ:JSONDecode(readfile(aZ))for a0,a1 in pairs(aV)do if
type(a_.config[a0])==type(a1)then aV[a0]=a_.config[a0]end end for a0,a1 in
pairs(aY)do local a2=a_.colors and a_.colors[a0]if type(a2)=='\115\116\114\105\110\103'and a2:
match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then a1.color=a2 end end end)end local function a_()if
type(writefile)=='\102\117\110\099\116\105\111\110'then local a0={}for a1,a2 in pairs(aY)do a0[a1]=a2.
color end pcall(writefile,aZ,aQ:JSONEncode({config=aV,colors=a0}))end end local
function a0(a1,a2)aS[#aS+1]=a1:Connect(a2)end local function a1(a2,a3,a4)local
a5=Instance.new(a2)for a6,a7 in pairs(a3)do a5[a6]=a7 end a5.Parent=a4 return a5
end local function a2(a3)return Color3.fromRGB(tonumber(a3:sub(1,2),16),
tonumber(a3:sub(3,4),16),tonumber(a3:sub(5,6),16))end local function a3(a4,a5,a6
,a7,a8,a9)a9=a9 or aW local ba,bb=aK.checkbox(a4,aL(a6,a7),a8)aT[a5]={paint=bb,
table=a9}a0(ba.Activated,function()a9[a5]=not a9[a5]bb(a9[a5])end)end local
function a4(a5,a6,a7,a8,a9,ba,bb)aV[a6]=math.clamp(tonumber(aV[a6])or ba,ba,bb)
if aV[a6]~=aV[a6]then aV[a6]=ba end aK.label(a5,'\084\101\120\116\076\097\098\101\108',aL(a7,a8),30,a9)
local bc=aK.label(a5,'\084\101\120\116\066\111\120',tostring(aV[a6]),40,a9+1)a0(bc.FocusLost,function
()local bd=tonumber(bc.Text)if bd and bd==bd and math.abs(bd)<math.huge then aV[
a6]=math.clamp(bd,ba,bb)a_()end bc.Text=tostring(aV[a6])end)end local a5=aI.
section('\077\101\108\104\111\114\105\097\115')local a6={TeamHealth='\086\105\100\097\032\109\u{e1}\120\105\109\097',LifeSteal=
'\082\111\117\098\111\032\100\101\032\118\105\100\097',DrillPower='\080\111\116\u{ea}\110\099\105\097\032\100\097\032\098\114\111\099\097',RPMOverclock='\082\080\077\032\100\097\032\098\114\111\099\097',
SackStorage='\067\097\112\097\099\105\100\097\100\101\032\100\097\032\109\111\099\104\105\108\097',DriveSpeed='\086\101\108\111\099\105\100\097\100\101\032\100\097\032\098\114\111\099\097',FuelStorage
='\067\097\112\097\099\105\100\097\100\101\032\100\101\032\099\111\109\098\117\115\116\u{ed}\118\101\108',DrillDefense='\068\097\110\111\032\100\101\032\099\111\110\116\097\116\111',PowerDrive=
'\065\099\101\108\101\114\097\u{e7}\u{e3}\111',PowerSlam='\073\109\112\097\099\116\111\032\112\111\116\101\110\116\101',EngineOverdrive=
'\083\111\098\114\101\099\097\114\103\097\032\100\111\032\109\111\116\111\114',MegaDrill='\077\101\103\097\032\098\114\111\099\097',TeamGunDamage='\068\097\110\111\032\100\101\032\097\114\109\097\115',
TeamMeleeDamage='\068\097\110\111\032\099\111\114\112\111\032\097\032\099\111\114\112\111',TeamPickaxeDamage='\068\097\110\111\032\100\101\032\112\105\099\097\114\101\116\097',
TeamExplosiveDamage='\068\097\110\111\032\101\120\112\108\111\115\105\118\111',PowerBurst='\069\120\112\108\111\115\u{e3}\111\032\100\101\032\112\111\116\u{ea}\110\099\105\097'
,MountedGunner='\065\116\105\114\097\100\111\114\032\109\111\110\116\097\100\111',MoneyDrill='\077\111\101\100\097\115\032\112\111\114\032\112\097\114\101\100\101',UltraDrill=
'\085\108\116\114\097\032\098\114\111\099\097',HealthRegen='\082\101\103\101\110\101\114\097\u{e7}\u{e3}\111',CartExtension=
'\069\120\116\101\110\115\u{e3}\111\032\100\097\032\098\114\111\099\097'}local a7,a8={},{}for a9,ba in ipairs(aF)do a8[ba.id]=ba
end for a9 in aJ.priority:gmatch('\091\094\044\093\043')do a9=a9:match('\094\037\115\042\040\046\045\041\037\115\042\036')if a8[a9]
and not table.find(a7,a9)then a7[#a7+1]=a9 end end local a9={}for ba,bb in
ipairs(a7)do a9[bb]=true end for ba,bb in ipairs(aF)do if not table.find(a7,bb.
id)then a7[#a7+1]=bb.id end end local ba={}local function bb()local bc={}for bd,
be in ipairs(a7)do local bf=ba[be]if bf then bf.frame.LayoutOrder=100+bd bf.
caption.Text=bd..'\032\u{b7}\032'..aL(a6[be]or a8[be].name,a8[be].name)bf.paint(a9[be]
)end if a9[be]then bc[#bc+1]=be end end aJ.setPriority(table.concat(bc,'\044'))end
for bc,bd in ipairs(a7)do local be=a8[bd]local bf=a1('\070\114\097\109\101',{Size=UDim2.new(1,-
8,0,58),BackgroundTransparency=1},a5)a1('\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromOffset(36,
36),Position=UDim2.fromOffset(0,10),Image=be.icon,BackgroundTransparency=1},bf)
local bg,bh=aK.checkbox(bf,'',0)bg.Size=UDim2.new(1,-136,0,48)bg.Position=UDim2.
fromOffset(42,4)local bi=bg:FindFirstChildWhichIsA('\084\101\120\116\076\097\098\101\108')ba[bd]={frame=bf,
paint=bh,caption=bi}a0(bg.Activated,function()a9[bd]=not a9[bd]bb()end)for bj,bk
in ipairs({-1,1})do local bl=a1('\084\101\120\116\066\117\116\116\111\110',{Text=bk<0 and'\u{2191}'or
'\u{2193}',Size=UDim2.fromOffset(36,44),Position=UDim2.new(1,-82+(bj-1)*40,0,6),
BackgroundColor3=Color3.fromRGB(35,45,60),TextColor3=Color3.new(1,1,1),TextSize=
20},bf)a1('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,8)},bl)a0(bl.Activated,function()
local bm=table.find(a7,bd)local bn=bm+bk if bn>=1 and bn<=#a7 then a7[bm],a7[bn]
=a7[bn],a7[bm]bb()end end)end end bb()local bc=aI.section('\077\111\118\105\109\101\110\116\111')a3(bc,
'\115\112\101\101\100','\086\101\108\111\099\105\100\097\100\101\032\112\101\114\115\111\110\097\108\105\122\097\100\097','\067\117\115\116\111\109\032\119\097\108\107\032\115\112\101\101\100',1)a4(bc,'\115\112\101\101\100',
'\086\101\108\111\099\105\100\097\100\101\032\040\087\097\108\107\083\112\101\101\100\041','\087\097\108\107\083\112\101\101\100',2,8,100)a3(bc,'\110\111\099\108\105\112','\078\111\099\108\105\112','\078\111\099\108\105\112',5)
a3(bc,'\102\108\121','\070\108\121\032\u{b7}\032\115\105\103\097\032\097\032\099\u{e2}\109\101\114\097\032\047\032\106\111\121\115\116\105\099\107',
'\070\108\121\032\u{b7}\032\099\097\109\101\114\097\032\047\032\106\111\121\115\116\105\099\107\032\100\105\114\101\099\116\105\111\110',6)a4(bc,'\102\108\121\083\112\101\101\100','\086\101\108\111\099\105\100\097\100\101\032\100\111\032\070\108\121',
'\070\108\121\032\115\112\101\101\100',7,5,150)aK.label(bc,'\084\101\120\116\076\097\098\101\108',aL(
'\070\108\121\058\032\087\065\083\068\047\106\111\121\115\116\105\099\107\044\032\069\115\112\097\u{e7}\111\032\115\111\098\101\032\101\032\067\116\114\108\032\100\101\115\099\101\046\032\078\111\032\099\101\108\117\108\097\114\044\032\117\115\101\032\111\115\032\098\111\116\u{f5}\101\115\032\u{2191}\047\u{2193}\046'
,
'\070\108\121\058\032\087\065\083\068\047\106\111\121\115\116\105\099\107\044\032\083\112\097\099\101\032\117\112\032\097\110\100\032\067\116\114\108\032\100\111\119\110\046\032\079\110\032\109\111\098\105\108\101\044\032\117\115\101\032\u{2191}\047\u{2193}\032\098\117\116\116\111\110\115\046'
),56,10)local bd=aI.section('\067\111\109\098\097\116\101')a3(bd,'\097\117\116\111\077\111\118\101',
'\065\117\116\111\032\077\111\118\101\032\u{b7}\032\109\097\110\116\101\114\032\100\105\115\116\u{e2}\110\099\105\097\032\100\111\032\105\110\105\109\105\103\111',
'\065\117\116\111\032\077\111\118\101\032\u{b7}\032\109\097\105\110\116\097\105\110\032\101\110\101\109\121\032\100\105\115\116\097\110\099\101',30)a4(bd,'\099\111\109\098\097\116\068\105\115\116\097\110\099\101',
'\068\105\115\116\u{e2}\110\099\105\097\032\100\111\032\065\117\116\111\032\077\111\118\101\032\040\115\116\117\100\115\041','\065\117\116\111\032\077\111\118\101\032\100\105\115\116\097\110\099\101\032\040\115\116\117\100\115\041',31,5,40)aK.
label(bd,'\084\101\120\116\076\097\098\101\108',aL(
'\077\111\118\101\045\115\101\032\101\032\117\115\097\032\111\032\097\116\097\113\117\101\032\101\113\117\105\112\097\100\111\046\032\050\050\032\115\116\117\100\115\032\u{e9}\032\097\032\100\105\115\116\u{e2}\110\099\105\097\032\105\110\105\099\105\097\108\059\032\110\u{e3}\111\032\103\097\114\097\110\116\101\032\105\110\118\117\108\110\101\114\097\098\105\108\105\100\097\100\101\046\032\078\u{e3}\111\032\109\111\118\101\032\101\110\113\117\097\110\116\111\032\112\105\108\111\116\097\046'
,
"\077\111\118\101\115\032\097\110\100\032\117\115\101\115\032\116\104\101\032\101\113\117\105\112\112\101\100\032\097\116\116\097\099\107\046\032\083\116\097\114\116\115\032\097\116\032\050\050\032\115\116\117\100\115\059\032\100\111\101\115\032\110\111\116\032\103\117\097\114\097\110\116\101\101\032\105\109\109\117\110\105\116\121\046\032\068\111\101\115\032\110\111\116\032\109\111\118\101\032\119\104\105\108\101\032\100\114\105\118\105\110\103\046"
),66,33)a3(bd,'\097\117\116\111\070\105\114\101','\065\117\116\111\032\070\105\114\101\032\u{b7}\032\097\114\109\097\032\100\101\032\102\111\103\111\032\101\113\117\105\112\097\100\097',
'\065\117\116\111\032\070\105\114\101\032\u{b7}\032\101\113\117\105\112\112\101\100\032\102\105\114\101\097\114\109',35)a3(bd,'\115\105\108\101\110\116\065\105\109',
'\083\105\108\101\110\116\032\065\105\109\032\u{b7}\032\109\105\114\097\114\032\110\097\032\099\097\098\101\u{e7}\097\032\100\111\115\032\078\080\067\115',
'\083\105\108\101\110\116\032\065\105\109\032\u{b7}\032\097\105\109\032\097\116\032\078\080\067\032\104\101\097\100\115',36)a4(bd,'\103\117\110\082\097\110\103\101',
'\065\108\099\097\110\099\101\032\100\111\032\083\105\108\101\110\116\032\065\105\109\032\047\032\065\117\116\111\032\070\105\114\101\032\040\115\116\117\100\115\041',
'\083\105\108\101\110\116\032\065\105\109\032\047\032\065\117\116\111\032\070\105\114\101\032\114\097\110\103\101\032\040\115\116\117\100\115\041',37,1,1000)a3(bd,'\118\105\115\105\098\108\101\079\110\108\121',
'\083\111\109\101\110\116\101\032\105\110\105\109\105\103\111\115\032\101\120\112\111\115\116\111\115\032\040\100\101\115\109\097\114\113\117\101\032\112\097\114\097\032\097\116\105\114\097\114\032\099\111\109\032\111\098\115\116\114\117\u{e7}\u{e3}\111\041',
'\069\120\112\111\115\101\100\032\101\110\101\109\105\101\115\032\111\110\108\121\032\040\117\110\099\104\101\099\107\032\116\111\032\102\105\114\101\032\119\105\116\104\032\111\098\115\116\114\117\099\116\105\111\110\115\041',39,aV)aT.visibleOnly.
paint(aV.visibleOnly)a3(bd,'\104\105\116\098\111\120',
'\072\105\116\098\111\120\032\108\111\099\097\108\032\097\109\112\108\105\097\100\111\032\u{b7}\032\099\097\105\120\097\032\116\114\097\110\115\112\097\114\101\110\116\101',
'\076\097\114\103\101\114\032\108\111\099\097\108\032\104\105\116\098\111\120\032\u{b7}\032\116\114\097\110\115\112\097\114\101\110\116\032\098\111\120',40)a4(bd,'\104\105\116\098\111\120\083\105\122\101',
'\084\097\109\097\110\104\111\032\100\111\032\104\105\116\098\111\120\032\108\111\099\097\108','\076\111\099\097\108\032\104\105\116\098\111\120\032\115\105\122\101',41,2,20)a3(bd,'\097\117\114\097',
'\065\117\114\097\032\100\101\032\097\116\097\113\117\101\032\u{b7}\032\097\114\109\097\032\099\111\114\112\111\032\097\032\099\111\114\112\111\032\101\113\117\105\112\097\100\097',
'\065\116\116\097\099\107\032\097\117\114\097\032\u{b7}\032\101\113\117\105\112\112\101\100\032\109\101\108\101\101\032\119\101\097\112\111\110',1)a3(bd,'\111\114\101\065\117\114\097',
'\065\117\114\097\032\100\101\032\109\105\110\u{e9}\114\105\111\115\032\u{b7}\032\112\105\099\097\114\101\116\097\032\101\113\117\105\112\097\100\097',
'\079\114\101\032\097\117\114\097\032\u{b7}\032\101\113\117\105\112\112\101\100\032\112\105\099\107\097\120\101',2)a4(bd,'\114\101\097\099\104','\065\108\099\097\110\099\101\032\115\111\108\105\099\105\116\097\100\111\032\101\109\032\115\116\117\100\115'
,'\082\101\113\117\101\115\116\101\100\032\114\101\097\099\104\032\105\110\032\115\116\117\100\115',3,2,40)aK.label(bd,'\084\101\120\116\076\097\098\101\108',aL(
"\085\115\097\032\111\032\097\116\097\113\117\101\032\101\032\099\111\111\108\100\111\119\110\032\110\097\116\105\118\111\115\046\032\065\108\099\097\110\099\101\032\097\099\101\105\116\111\032\101\032\100\097\110\111\032\099\111\110\116\105\110\117\097\109\032\115\117\106\101\105\116\111\115\032\097\111\032\115\101\114\118\105\100\111\114\046"
,
"\085\115\101\115\032\110\097\116\105\118\101\032\097\116\116\097\099\107\115\032\097\110\100\032\099\111\111\108\100\111\119\110\115\046\032\065\099\099\101\112\116\101\100\032\114\097\110\103\101\032\097\110\100\032\100\097\109\097\103\101\032\114\101\109\097\105\110\032\115\101\114\118\101\114\045\099\111\110\116\114\111\108\108\101\100\046"
),55,5)local be=aK.button(bd,'',6)local function bf()be.Text=aL(
'\080\111\115\105\u{e7}\u{e3}\111\058\032','\080\111\115\105\116\105\111\110\058\032')..({Off=aL('\100\101\115\108\105\103\097\100\111','\111\102\102'),Behind=aL(
'\099\111\115\116\097\115','\098\101\104\105\110\100'),Above=aL('\097\099\105\109\097','\097\098\111\118\101')})[aV.position]end if not({Off=true,
Behind=true,Above=true})[aV.position]then aV.position='\079\102\102'end bf()a0(be.
Activated,function()aV.position=({Off='\066\101\104\105\110\100',Behind='\065\098\111\118\101',Above='\079\102\102'})[aV.
position]a_()bf()end)a4(bd,'\111\102\102\115\101\116','\068\105\115\116\u{e2}\110\099\105\097\032\097\099\105\109\097\047\097\116\114\u{e1}\115\032\100\111\032\097\108\118\111',
'\072\101\105\103\104\116\047\111\102\102\115\101\116\032\102\114\111\109\032\116\097\114\103\101\116',7,2,20)a3(bd,'\097\117\116\111\077\101\100\107\105\116',
'\065\117\116\111\032\077\101\100\107\105\116\032\100\111\032\105\110\118\101\110\116\u{e1}\114\105\111\032\047\032\098\097\114\114\097','\065\117\116\111\032\077\101\100\107\105\116\032\102\114\111\109\032\098\097\099\107\112\097\099\107\032\047\032\104\111\116\098\097\114',50
)a4(bd,'\109\101\100\107\105\116\080\101\114\099\101\110\116','\085\115\097\114\032\077\101\100\107\105\116\032\097\098\097\105\120\111\032\100\101\032\118\105\100\097\032\040\037\041',
'\085\115\101\032\077\101\100\107\105\116\032\098\101\108\111\119\032\104\101\097\108\116\104\032\040\037\041',51,1,95)a3(bd,'\109\101\100\107\105\116\073\110\115\116\097\110\116',
'\065\116\105\118\097\114\032\105\109\101\100\105\097\116\097\109\101\110\116\101\032\040\100\101\115\109\097\114\099\097\100\111\058\032\097\103\117\097\114\100\097\032\048\044\055\053\032\115\041',
'\065\099\116\105\118\097\116\101\032\105\109\109\101\100\105\097\116\101\108\121\032\040\117\110\099\104\101\099\107\101\100\058\032\119\097\105\116\032\048\046\055\053\032\115\041',54,aV)aT.medkitInstant.paint(aV.
medkitInstant)a3(bd,'\110\111\076\097\117\110\099\104\101\114\067\111\111\108\100\111\119\110',
'\082\101\100\117\122\105\114\032\099\111\111\108\100\111\119\110\032\076\079\067\065\076\032\u{b7}\032\082\080\071\032\047\032\066\108\097\099\107\032\072\111\108\101',
'\082\101\100\117\099\101\032\076\079\067\065\076\032\099\111\111\108\100\111\119\110\032\u{b7}\032\082\080\071\032\047\032\066\108\097\099\107\032\072\111\108\101',55)aK.label(bd,'\084\101\120\116\076\097\098\101\108',aL(
'\067\117\114\097\044\032\109\117\110\105\u{e7}\u{e3}\111\044\032\112\101\110\101\116\114\097\u{e7}\u{e3}\111\032\100\101\032\112\097\114\101\100\101\115\032\101\032\099\111\111\108\100\111\119\110\032\100\111\032\115\101\114\118\105\100\111\114\032\099\111\110\116\105\110\117\097\109\032\118\097\108\105\100\097\100\111\115\032\112\101\108\111\032\106\111\103\111\046'
,
"\072\101\097\108\105\110\103\044\032\097\109\109\111\044\032\119\097\108\108\032\112\101\110\101\116\114\097\116\105\111\110\032\097\110\100\032\115\101\114\118\101\114\032\099\111\111\108\100\111\119\110\115\032\114\101\109\097\105\110\032\118\097\108\105\100\097\116\101\100\032\098\121\032\116\104\101\032\103\097\109\101\046"
),60,56)local bg=aI.section('\069\083\080')local bh=aK.label(bg,'\084\101\120\116\076\097\098\101\108',aL(
"\069\083\080\032\100\101\115\097\116\105\118\097\100\111\032\097\111\032\097\098\114\105\114\046\032\067\097\116\101\103\111\114\105\097\115\032\105\110\100\101\112\101\110\100\101\110\116\101\115\059\032\115\111\109\101\110\116\101\032\111\098\106\101\116\111\115\032\099\097\114\114\101\103\097\100\111\115\046"
,"\069\083\080\032\115\116\097\114\116\115\032\111\102\102\046\032\073\110\100\101\112\101\110\100\101\110\116\032\099\097\116\101\103\111\114\105\101\115\059\032\108\111\097\100\101\100\032\111\098\106\101\099\116\115\032\111\110\108\121\046"),55,1)for bi,
bj in ipairs(aX)do local bk,bl=aK.checkbox(bg,aL(bj[2],bj[3]),bi+2)aT['\101\115\112\095'..bj
[1] ]={paint=bl,category=bj[1]}a0(bk.Activated,function()aY[bj[1] ].enabled=not
aY[bj[1] ].enabled bl(aY[bj[1] ].enabled)end)end a4(bg,'\109\097\120\068\105\115\116\097\110\099\101',
'\068\105\115\116\u{e2}\110\099\105\097\032\109\u{e1}\120\105\109\097\032\100\111\032\069\083\080','\069\083\080\032\109\097\120\105\109\117\109\032\100\105\115\116\097\110\099\101',50,50,10000)a4(bg,
'\109\097\120\069\083\080','\077\u{e1}\120\105\109\111\032\100\101\032\109\097\114\099\097\100\111\114\101\115\032\040\049\u{2013}\049\048\048\048\041',
'\077\097\114\107\101\114\032\108\105\109\105\116\032\040\049\u{2013}\049\048\048\048\041',53,1,1000)local bi={'\068\117\110\103\101\111\110\115','\069\110\101\109\105\101\115','\076\111\111\116',
'\068\105\115\116\097\110\099\101'}if not table.find(bi,aV.espPriority)then aV.espPriority='\068\117\110\103\101\111\110\115'end
local bj=aK.button(bg,'',55)local function bk()local bl={Dungeons='\068\117\110\103\101\111\110\115',
Enemies='\073\110\105\109\105\103\111\115',Loot='\073\116\101\110\115\032\101\032\098\097\u{fa}\115',Distance='\077\097\105\115\032\112\114\u{f3}\120\105\109\111\115'}bj.
Text=aL('\080\114\105\111\114\105\100\097\100\101\032\069\083\080\058\032','\069\083\080\032\112\114\105\111\114\105\116\121\058\032')..aL(bl[aV.espPriority],aV.
espPriority)end bk()a0(bj.Activated,function()aV.espPriority=bi[table.find(bi,aV
.espPriority)%#bi+1]bk()a_()end)local function bl(bm)if aV.espPriority==
'\068\117\110\103\101\111\110\115'then return(bm=='\100\111\111\114\115'or bm=='\097\114\101\110\097\115'or bm=='\116\114\101\097\115\117\114\101\068\111\111\114\115')and 0 or
1 end if aV.espPriority=='\069\110\101\109\105\101\115'then return(bm=='\109\111\098\115'or bm=='\109\105\109\105\099\115')and 0 or
1 end if aV.espPriority=='\076\111\111\116'then return(bm=='\105\116\101\109\115'or bm=='\099\104\101\115\116\115'or bm==
'\115\099\114\097\112'or bm=='\111\114\101\115')and 0 or 1 end return 0 end local bm=aK.button(bg,'',56)
local function bn()bm.Text=aL('\077\111\100\101\108\111\058\032','\083\116\121\108\101\058\032')..(aV.style=='\066\111\120'and aL(
'\099\097\105\120\097','\098\111\120')or aL('\099\111\110\116\111\114\110\111','\111\117\116\108\105\110\101'))end bn()a0(bm.Activated,function()aV.
style=aV.style=='\066\111\120'and'\079\117\116\108\105\110\101'or'\066\111\120'a_()bn()end)local bo=1 local bp=aK.
button(bg,'',57)local bq=aK.label(bg,'\084\101\120\116\066\111\120',aY[aX[1][1] ].color,40,58)local
function br()bp.Text=aL('\067\111\114\032\100\101\058\032','\067\111\108\111\114\032\102\111\114\058\032')..aL(aX[bo][2],aX[bo][3])bq.
Text=aY[aX[bo][1] ].color end br()a0(bp.Activated,function()bo=bo%#aX+1 br()end)
a0(bq.FocusLost,function()local bs=bq.Text:gsub('\035',''):upper()if bs:match(
'\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then aY[aX[bo][1] ].color=bs a_()else bh.Text=aL(
'\072\069\088\032\105\110\118\u{e1}\108\105\100\111\058\032\117\115\101\032\054\032\099\097\114\097\099\116\101\114\101\115\032\100\101\032\048\u{2013}\057\032\101\032\065\u{2013}\070\044\032\099\111\109\111\032\070\070\065\049\051\049\046',
'\073\110\118\097\108\105\100\032\072\069\088\058\032\117\115\101\032\054\032\099\104\097\114\097\099\116\101\114\115\032\102\114\111\109\032\048\u{2013}\057\032\097\110\100\032\065\u{2013}\070\044\032\115\117\099\104\032\097\115\032\070\070\065\049\051\049\046')
end br()end)local bs=a1('\070\114\097\109\101',{Size=UDim2.new(1,-8,0,190),
BackgroundTransparency=1,LayoutOrder=59},bg)local bt,bu=1,1 for bv=0,23 do local
bw=bv/24 local bx=bw*math.pi*2 local by=a1('\084\101\120\116\066\117\116\116\111\110',{Text='',Size=UDim2.
fromOffset(24,24),Position=UDim2.new(0.5,math.cos(bx)*72-12,0.5,math.sin(bx)*72-
12),BackgroundColor3=Color3.fromHSV(bw,1,1),BorderSizePixel=0},bs)a1('\085\073\067\111\114\110\101\114',
{CornerRadius=UDim.new(1,0)},by)a0(by.Activated,function()aY[aX[bo][1] ].color=
Color3.fromHSV(bw,bt,bu):ToHex():upper()a_()br()end)end local bv=aK.button(bg,
aL('\066\114\097\110\099\111\032\047\032\115\097\116\117\114\097\u{e7}\u{e3}\111\032\122\101\114\111','\087\104\105\116\101\032\047\032\122\101\114\111\032\115\097\116\117\114\097\116\105\111\110'),60)a0(bv.
Activated,function()aY[aX[bo][1] ].color='\070\070\070\070\070\070'a_()br()end)local bw=aK.label(
bg,'\084\101\120\116\066\111\120',aV.oreFilter,40,61)a0(bw.FocusLost,function()aV.oreFilter=bw.Text:
sub(1,300)a_()end)aK.label(bg,'\084\101\120\116\076\097\098\101\108',aL(
'\070\105\108\116\114\111\032\100\101\032\109\105\110\u{e9}\114\105\111\115\032\112\111\114\032\110\111\109\101\058\032\067\111\097\108\044\032\073\114\111\110\044\032\071\111\108\100\044\032\068\105\097\109\111\110\100\044\032\069\109\101\114\097\108\100\044\032\082\117\098\121\046\032\077\u{ed}\109\105\099\111\115\032\111\099\117\108\116\111\115\032\115\101\109\032\115\105\110\097\108\032\114\101\112\108\105\099\097\100\111\032\110\u{e3}\111\032\112\111\100\101\109\032\115\101\114\032\105\100\101\110\116\105\102\105\099\097\100\111\115\032\099\111\109\032\099\101\114\116\101\122\097\046'
,
"\079\114\101\032\110\097\109\101\032\102\105\108\116\101\114\058\032\067\111\097\108\044\032\073\114\111\110\044\032\071\111\108\100\044\032\068\105\097\109\111\110\100\044\032\069\109\101\114\097\108\100\044\032\082\117\098\121\046\032\072\105\100\100\101\110\032\109\105\109\105\099\115\032\119\105\116\104\111\117\116\032\097\032\114\101\112\108\105\099\097\116\101\100\032\115\105\103\110\097\108\032\099\097\110\110\111\116\032\098\101\032\105\100\101\110\116\105\102\105\101\100\032\119\105\116\104\032\099\101\114\116\097\105\110\116\121\046"
),78,62)a3(bg,'\104\105\100\101\068\101\097\100','\079\099\117\108\116\097\114\032\105\110\105\109\105\103\111\115\032\109\111\114\116\111\115','\072\105\100\101\032\100\101\097\100\032\101\110\101\109\105\101\115',40,aV)a3(
bg,'\104\105\100\101\065\116\116\097\099\104\101\100','\079\099\117\108\116\097\114\032\105\116\101\110\115\032\097\110\101\120\097\100\111\115\032\u{e0}\032\098\114\111\099\097',
'\072\105\100\101\032\105\116\101\109\115\032\097\116\116\097\099\104\101\100\032\116\111\032\100\114\105\108\108',41,aV)aT.hideDead.paint(aV.hideDead)aT.
hideAttached.paint(aV.hideAttached)a4(bg,'\116\101\120\116\083\105\122\101',
'\084\097\109\097\110\104\111\032\100\111\115\032\110\111\109\101\115\032\101\032\100\105\115\116\u{e2}\110\099\105\097\115','\078\097\109\101\032\097\110\100\032\100\105\115\116\097\110\099\101\032\116\101\120\116\032\115\105\122\101',43,8,28)aK.
label(bg,'\084\101\120\116\076\097\098\101\108',aL('\067\111\114\032\100\097\032\100\105\115\116\u{e2}\110\099\105\097\032\040\072\069\088\041','\068\105\115\116\097\110\099\101\032\099\111\108\111\114\032\040\072\069\088\041'),30
,46)if not aV.distanceColor:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then aV.distanceColor=
'\068\048\068\056\069\056'end local bx=aK.label(bg,'\084\101\120\116\066\111\120',aV.distanceColor,40,47)a0(bx.
FocusLost,function()local by=bx.Text:gsub('\035',''):upper()if by:match(
'\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then aV.distanceColor=by a_()end bx.Text=aV.distanceColor end)
a3(bg,'\114\097\114\105\116\121\067\111\108\111\114\115','\067\111\108\111\114\105\114\032\110\111\109\101\115\032\112\101\108\097\032\114\097\114\105\100\097\100\101','\067\111\108\111\114\032\110\097\109\101\115\032\098\121\032\114\097\114\105\116\121',48,aV
)a3(bg,'\115\104\111\119\086\097\108\117\101','\077\111\115\116\114\097\114\032\118\097\108\111\114\032\101\032\109\111\101\100\097\032\097\098\097\105\120\111\032\100\111\032\110\111\109\101',
'\083\104\111\119\032\118\097\108\117\101\032\097\110\100\032\099\111\105\110\032\098\101\108\111\119\032\110\097\109\101',49,aV)aT.rarityColors.paint(aV.rarityColors)aT.
showValue.paint(aV.showValue)aV.hideVisited=true aV.dungeonScan=false a3(bg,
'\104\105\100\101\086\105\115\105\116\101\100','\079\099\117\108\116\097\114\032\098\097\115\101\115\032\118\105\115\105\116\097\100\097\115\032\101\032\105\110\u{ed}\099\105\111',
'\072\105\100\101\032\118\105\115\105\116\101\100\032\098\097\115\101\115\032\097\110\100\032\115\116\097\114\116',65,aV)aT.hideVisited.paint(true)a3(bg,
'\100\117\110\103\101\111\110\083\099\097\110','\083\099\097\110\110\101\114\058\032\116\105\112\111\115\032\100\101\032\098\097\u{fa}\115\032\099\097\114\114\101\103\097\100\111\115\032\110\097\032\068\117\110\103\101\111\110',
'\083\099\097\110\110\101\114\058\032\108\111\097\100\101\100\032\068\117\110\103\101\111\110\032\099\104\101\115\116\032\116\121\112\101\115',66,aV)local by=setmetatable({},{__mode='\107'
})local bz=setmetatable({},{__mode='\107'})local function bA(bB)local bC=bz[bB]if
bC and os.clock()-bC.time<5 then return bC.text end local bD=''pcall(function()
local bE=game:GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101'):FindFirstChild('\083\104\097\114\101\100')local bF=
bE and bE:FindFirstChild('\068\117\110\103\101\111\110\068\111\111\114\083\116\097\116\101')local bG=bF and require(bF).GetRoot(
bB)if not bG then return end local bH={}local bI=bG:GetAttribute(
'\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')for bJ,bK in ipairs(aP:GetTagged(
'\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\084\097\114\103\101\116'))do if bK:IsDescendantOf(workspace)and(bK:
IsDescendantOf(bG)or bI and bK:GetAttribute('\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')==bI)
then local bL=tostring(bK:GetAttribute('\082\101\097\108\078\097\109\101')or bK.Name)if bL:lower():find(
'\099\104\101\115\116',1,true)then bH[bL]=(bH[bL]or 0)+1 end end end local bJ={CommonChest=aL(
'\077\097\100\101\105\114\097','\087\111\111\100'),TutorialCommonChest=aL('\077\097\100\101\105\114\097','\087\111\111\100'),DiamondChest=aL(
'\068\105\097\109\097\110\116\101','\068\105\097\109\111\110\100'),GoldChest=aL('\079\117\114\111','\071\111\108\100'),VoidChest=aL('\086\097\122\105\111','\086\111\105\100'),
PhoenixChest=aL('\070\u{ea}\110\105\120','\080\104\111\101\110\105\120'),Mimic_Chest=aL('\077\u{ed}\109\105\099\111','\077\105\109\105\099')}
local bK={}for bL,bM in pairs(bH)do bK[#bK+1]=(bJ[bL]or bL)..'\032\u{d7}'..bM end
table.sort(bK)local bL={}for bM=1,#bK,2 do bL[#bL+1]=bK[bM]..(bK[bM+1]and
'\032\u{b7}\032'..bK[bM+1]or'')end bD=#bL>0 and table.concat(bL,'\n')or aL(
'\066\097\u{fa}\115\032\099\097\114\114\101\103\097\100\111\115\058\032\110\101\110\104\117\109\032\105\100\101\110\116\105\102\105\099\097\100\111','\076\111\097\100\101\100\032\099\104\101\115\116\115\058\032\110\111\110\101\032\105\100\101\110\116\105\102\105\101\100')end
)bz[bB]={time=os.clock(),text=bD}return bD end local bB={Ruins2={'\082\117\u{ed}\110\097\115',
'\082\117\105\110\115'},LootGoblinVillage={'\086\105\108\097\032\100\111\115\032\071\111\098\108\105\110\115','\071\111\098\108\105\110\032\086\105\108\108\097\103\101'},MinerTown={
'\086\105\108\097\032\100\111\115\032\077\105\110\101\105\114\111\115','\077\105\110\101\114\032\084\111\119\110'},CraftingShack={'\079\102\105\099\105\110\097','\067\114\097\102\116\105\110\103\032\087\111\114\107\115\104\111\112'},
TradingCampTutorial={'\080\111\115\116\111\032\100\101\032\067\111\109\u{e9}\114\099\105\111','\084\114\097\100\105\110\103\032\080\111\115\116'},BountyCamp={
'\065\099\097\109\112\097\109\101\110\116\111\032\100\101\032\082\101\099\111\109\112\101\110\115\097\115','\066\111\117\110\116\121\032\067\097\109\112'}}local function bC(bD)if bB[bD]then
return aL(bB[bD][1],bB[bD][2])end local bE=bD:gsub('\094\070\111\114\116\114\101\115\115\095',''):gsub(
'\095\073\110\102\105\110\105\116\101\095\037\100\043',''):gsub('\095','\032'):gsub('\040\037\108\041\040\037\117\041','\037\049\032\037\050'):gsub('\037\115\043','\032')return
bE end local bD={Common='\070\070\070\070\070\070',Uncommon='\054\052\068\068\056\056',Rare='\054\048\065\065\070\070',Epic='\066\067\056\048\070\070',
Legendary='\070\070\068\051\053\067',Mythic='\070\070\052\053\052\053',Mythical='\070\070\052\053\052\053',Secret='\070\070\056\053\068\056'}local bE
local function bF(bG,bH)local bI=bG:GetAttribute(bH)if bI~=nil then return bI
end if not bE then local bJ=game:GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101'):FindFirstChild(
'\083\104\097\114\101\100')local bK=bJ and bJ:FindFirstChild('\073\116\101\109\068\097\116\097\098\097\115\101')if bK then bE=require(
bK)end end return bE and bE.GetAttribute(bG,bH)end local bG=bc:
FindFirstAncestorOfClass('\083\099\114\101\101\110\071\117\105')local bH=a1('\070\114\097\109\101',{Size=UDim2.fromScale(1
,1),BackgroundTransparency=1},bG)local bI=0 local bJ,bK,bL,bM local bN={{'\097\117\114\097',
'\065\116\097\113\117\101','\065\116\116\097\099\107'},{'\111\114\101\065\117\114\097','\080\105\099\097\114\101\116\097','\080\105\099\107\097\120\101'},{'\102\108\121','\086\111\097\114','\070\108\121'},{
'\110\111\099\108\105\112','\078\111\099\108\105\112','\078\111\099\108\105\112'},{'\115\112\101\101\100','\086\101\108\111\099\105\100\097\100\101','\083\112\101\101\100'},{'\097\117\116\111\077\111\118\101',
'\065\117\116\111\032\077\111\118\101','\065\117\116\111\032\077\111\118\101'},{'\097\117\116\111\070\105\114\101','\065\117\116\111\032\070\105\114\101','\065\117\116\111\032\070\105\114\101'},{'\117\112','\083\117\098\105\114','\085\112'
},{'\100\111\119\110','\068\101\115\099\101\114','\068\111\119\110'}}local bO={}for bP,bQ in ipairs(bN)do local bR=bQ[1]
local bS=a1('\070\114\097\109\101',{Size=UDim2.fromOffset(66,76),Position=UDim2.new(0,12+((bP-1
)%4)*72,1,-90-math.floor((bP-1)/4)*82),BackgroundColor3=Color3.fromRGB(20,27,39)
,Visible=false},bH)a1('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,10)},bS)a1('\085\073\083\116\114\111\107\101',
{Color=Color3.fromRGB(105,165,220),Thickness=1.5,Transparency=0.2},bS)local bT,
bU=aK.checkbox(bc,aL('\065\116\097\108\104\111\032\110\097\032\116\101\108\097\058\032','\083\099\114\101\101\110\032\115\104\111\114\116\099\117\116\058\032')..aL(bQ[2],bQ[3]),80
+bP)a0(bT.Activated,function()bS.Visible=not bS.Visible bU(bS.Visible)if not bS.
Visible then bI=0 end end)local bV=a1('\084\101\120\116\066\117\116\116\111\110',{Text='\061',Size=UDim2.new(1,0,
0,18),BackgroundTransparency=1,TextColor3=Color3.fromRGB(150,180,210),TextSize=
14},bS)local bW=a1('\084\101\120\116\066\117\116\116\111\110',{Text='',Size=UDim2.new(1,0,1,-18),Position=
UDim2.fromOffset(0,18),BackgroundTransparency=1},bS)local bX=a1('\070\114\097\109\101',{Size=
UDim2.fromOffset(26,26),Position=UDim2.new(0.5,-13,0,2),BackgroundTransparency=1
},bW)local function bY(bZ,b_,b0,b1)a1('\070\114\097\109\101',{Size=UDim2.fromOffset(b0,2),
Position=UDim2.fromOffset(bZ,b_),Rotation=b1 or 0,BorderSizePixel=0,
BackgroundColor3=Color3.fromRGB(210,235,255)},bX)end if bR=='\117\112'or bR=='\100\111\119\110'or
bR=='\102\108\121'then bY(12,5,2,90)bY(4,8,12,-40)bY(12,8,12,40)bY(7,20,12,0)if bR==
'\100\111\119\110'then bX.Rotation=180 end elseif bR=='\111\114\101\065\117\114\097'then bY(4,12,23,-45)bY(1,5,23
,15)elseif bR=='\097\117\114\097'then bY(2,12,26,-45)bY(2,12,26,45)else bY(2,12,24,0)bY(2,12
,24,90)local bZ=a1('\070\114\097\109\101',{Size=UDim2.fromOffset(18,18),Position=UDim2.
fromOffset(4,4),BackgroundTransparency=1},bX)a1('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.
new(1,0)},bZ)a1('\085\073\083\116\114\111\107\101',{Thickness=2,Color=Color3.fromRGB(210,235,255)},bZ)
end a1('\084\101\120\116\076\097\098\101\108',{Text=aL(bQ[2],bQ[3]),Size=UDim2.new(1,-4,0,20),Position=
UDim2.fromOffset(2,32),BackgroundTransparency=1,TextSize=10,TextColor3=Color3.
new(1,1,1),TextWrapped=true},bW)a0(bV.InputBegan,function(bZ)if bZ.UserInputType
==Enum.UserInputType.Touch or bZ.UserInputType==Enum.UserInputType.MouseButton1
then bJ=bZ bK=bZ.Position bL=bS.AbsolutePosition bM=bS end end)if bR=='\117\112'or bR
=='\100\111\119\110'then a0(bW.InputBegan,function(bZ)if bZ.UserInputType==Enum.
UserInputType.Touch or bZ.UserInputType==Enum.UserInputType.MouseButton1 then bI
=bR=='\117\112'and 1 or-1 end end)a0(bW.InputEnded,function()bI=0 end)else bO[bR]=bS
a0(bW.Activated,function()aW[bR]=not aW[bR]aT[bR].paint(aW[bR])end)end end a0(aN
.InputChanged,function(bP)if not bJ or not bM or not bM.Visible then return end
if bP~=bJ and bP.UserInputType~=Enum.UserInputType.MouseMovement then return end
local bQ=bP.Position-bK local bR=workspace.CurrentCamera local bS=bR and bR.
ViewportSize local bT,bU=bL.X+bQ.X,bL.Y+bQ.Y if bS then bT=math.clamp(bT,0,math.
max(0,bS.X-66))bU=math.clamp(bU,0,math.max(0,bS.Y-76))end bM.Position=UDim2.
fromOffset(bT,bU)end)a0(aN.InputEnded,function(bP)if bP==bJ then bJ=nil bM=nil
end bI=0 end)local function bP(bQ)if bQ:IsA('\066\097\115\101\080\097\114\116')then return bQ end return
bQ:IsA('\077\111\100\101\108')and(bQ.PrimaryPart or bQ:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')or bQ:
FindFirstChildWhichIsA('\066\097\115\101\080\097\114\116',true))or nil end local bQ=setmetatable({},{
__mode='\107'})local function bR(bS)if not(bS:IsA('\077\111\100\101\108')or bS:IsA('\066\097\115\101\080\097\114\116'))
then return nil end local bT=tostring(bS:GetAttribute('\082\101\097\108\078\097\109\101')or bS.Name)if
bS.Name=='\068\105\103\083\112\111\116'and bS:IsA('\077\111\100\101\108')then return'\116\114\101\097\115\117\114\101'end if bS:IsA('\077\111\100\101\108')
and(bS.Parent and bS.Parent.Name=='\070\111\114\116\114\101\115\115\101\115'or bS.Parent==workspace and bB[bS.
Name])then return'\115\116\114\117\099\116\117\114\101\115'end if bS.Name=='\067\104\117\114\099\104'and bS:IsA('\077\111\100\101\108')then
return'\099\104\117\114\099\104'end if bS.Parent and bS.Parent.Name=='\078\112\099'then if bS:GetAttribute(
'\078\112\099\070\097\099\116\105\111\110')=='\070\114\105\101\110\100\108\121\067\111\109\112\097\110\105\111\110'or bT:lower():find('\099\111\109\112\097\110\105\111\110',1,true)or bS:
GetAttribute('\070\114\105\101\110\100\108\121')==true then return'\099\111\109\112\097\110\105\111\110\115'end if bT:lower():find(
'\109\105\109\105\099',1,true)or bS:GetAttribute('\077\105\109\105\099\067\104\101\115\116\068\097\109\097\103\101\097\098\108\101')~=nil then return
'\109\105\109\105\099\115'end return'\109\111\098\115'end if bS:GetAttribute('\082\117\110\116\105\109\101\067\104\101\115\116\077\111\100\101\108')==true then
return'\099\104\101\115\116\115'end if aP:HasTag(bS,'\079\114\101')or type(bS:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101'
))=='\115\116\114\105\110\103'then return'\111\114\101\115'end if aP:HasTag(bS,'\068\117\110\103\101\111\110\065\114\101\110\097\068\111\111\114')then return
'\097\114\101\110\097\115'end if aP:HasTag(bS,'\068\117\110\103\101\111\110\084\114\101\097\115\117\114\101\068\111\111\114')then return'\116\114\101\097\115\117\114\101\068\111\111\114\115'end
if aP:HasTag(bS,'\068\117\110\103\101\111\110\068\111\111\114')then return'\100\111\111\114\115'end if bS.Parent and bS.Parent.
Name=='\073\116\101\109\115'then return bT:lower():find('\115\099\114\097\112',1,true)and'\115\099\114\097\112'or'\105\116\101\109\115'end
end local bS=false local function bT()if bS then return end bS=true task.spawn(
function()local bU={workspace}local bV=0 while aR and#bU>0 do local bW=table.
remove(bU)local bX=bR(bW)if bX then bQ[bW]=bX end for bY,bZ in ipairs(bW:
GetChildren())do bU[#bU+1]=bZ end bV+=1 if bV%120==0 then task.wait()end end bS=
false end)end a0(workspace.DescendantAdded,function(bU)local bV=bR(bU)if bV then
bQ[bU]=bV end end)local bU={}local function bV(bW)local bX=bU[bW]if bX then for
bY,bZ in pairs(bX)do if typeof(bZ)=='\073\110\115\116\097\110\099\101'then bZ:Destroy()end end bU[bW]=
nil end end local function bW()local bX={}for bY in pairs(bU)do bX[#bX+1]=bY end
for bY,bZ in ipairs(bX)do bV(bZ)end end local bX,bY,bZ,b_,b0 local b1=
setmetatable({},{__mode='\107'})local b2,b3 local function b4()if b2 then pcall(
function()b2.Range=b3 end)b2=nil end end local function b5()if b0 then b0:
Destroy()b0=nil end if b_ then b_:Destroy()b_=nil end bZ=nil end local function
b6()for b7,b8 in pairs(b1)do if b7.Parent then b7.CanCollide=b8 end b1[b7]=nil
end end local b7={}local b8,b9 local ca,cb,cc=0,nil,0 local cd local function ce
()if b8 then b8.Debounce=math.max(tonumber(b8.Debounce)or 0,tonumber(b9)or 0)end
b8=nil b9=nil end local cf,cg,ch local function ci()if cf and cf.GetAimRay==ch
then cf.GetAimRay=cg end cf=nil cg=nil ch=nil end local function cj()for ck,cl
in pairs(b7)do if ck.Parent then ck.Size=cl.size end cl.box:Destroy()b7[ck]=nil
end end local function ck(cl,cm)local cn,co=nil,cm local cp=workspace:
FindFirstChild('\078\112\099')for cq,cr in ipairs(cp and cp:GetChildren()or{})do local cs
=bR(cr)local ct=cr:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cu=cr:FindFirstChild(
'\072\101\097\100')if(cs=='\109\111\098\115'or cs=='\109\105\109\105\099\115')and ct and ct.Health>0 and cu and cu:IsA(
'\066\097\115\101\080\097\114\116')then local cv=(cu.Position-cl.Position).Magnitude if cv<co then local
cw=true if aV.visibleOnly then local cx=RaycastParams.new()cx.FilterType=Enum.
RaycastFilterType.Exclude cx.FilterDescendantsInstances={aM.Character}local cy=
workspace:Raycast(cl.Position,cu.Position-cl.Position,cx)cw=not cy or cy.
Instance:IsDescendantOf(cr)end if cw then co=cv cn=cu end end end end local cq=
aJ.stoneTarget and aJ.stoneTarget()if cq and cq.Parent then local cr=cq.Parent:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')if cr and cr.Health>0 and(cq.Position-cl.
Position).Magnitude<cm then local cs=true if aV.visibleOnly then local ct=
RaycastParams.new()ct.FilterType=Enum.RaycastFilterType.Exclude ct.
FilterDescendantsInstances={aM.Character}local cu=workspace:Raycast(cl.Position,
cq.Position-cl.Position,ct)cs=not cu or cu.Instance:IsDescendantOf(cq.Parent)end
if cs then return cq,(cq.Position-cl.Position).Magnitude end end end return cn,
co end local function cl()for cm in pairs(aW)do aW[cm]=false aT[cm].paint(false)
end b4()b5()b6()ci()cj()ce()cb=nil cd=nil ca=0 bI=0 if bX and bX.Parent then bX.
WalkSpeed=bY end bX=nil end a0(aO.Heartbeat,function()if not aR then return end
local cm,cn,co=aJ.actor()if bX and(bX~=co or not aW.speed)then if bX.Parent then
bX.WalkSpeed=bY end bX=nil end if co and aW.speed then if bX~=co then bX=co bY=
co.WalkSpeed end co.WalkSpeed=aV.speed end if not cm or not aW.noclip then b6()
else for cp,cq in ipairs(cm:GetDescendants())do if cq:IsA('\066\097\115\101\080\097\114\116')then if b1[
cq]==nil then b1[cq]=cq.CanCollide end cq.CanCollide=false end end end if not cn
or not aW.fly or aJ.movementBusy and aJ.movementBusy()then b5()else if bZ~=cn
then b5()bZ=cn b_=a1('\065\116\116\097\099\104\109\101\110\116',{},cn)b0=a1('\076\105\110\101\097\114\086\101\108\111\099\105\116\121',{Attachment0=b_,
MaxForce=1e7,RelativeTo=Enum.ActuatorRelativeTo.World},cn)end local cp=co.
MoveDirection local cq=workspace.CurrentCamera if cp.Magnitude>0.1 and cq then
cp=Vector3.new(cp.X,cq.CFrame.LookVector.Y*cp.Magnitude,cp.Z)end local cr=bI if
not aN:GetFocusedTextBox()then if aN:IsKeyDown(Enum.KeyCode.Space)then cr+=1 end
if aN:IsKeyDown(Enum.KeyCode.LeftControl)then cr-=1 end end b0.VectorVelocity=(
cp+Vector3.new(0,cr,0))*aV.flySpeed end end)local cm,cn,co=0,0,0 task.spawn(
function()while aR do local cp,cq=pcall(function()local cp,cq,cr=aJ.actor()if
not cq then b4()ci()cj()ce()bW()return end for cs,ct in pairs(bO)do ct.
BackgroundColor3=aW[cs]and Color3.fromRGB(30,85,100)or Color3.fromRGB(20,27,39)
end if not aW.hitbox then cj()else local cs={}local ct=ck(cq,aV.gunRange)if ct
then cs[ct]=true local cu=b7[ct]if not cu then cu={size=ct.Size,box=a1(
'\066\111\120\072\097\110\100\108\101\065\100\111\114\110\109\101\110\116',{Adornee=ct,AlwaysOnTop=true,ZIndex=1,Transparency=0.93,
Color3=Color3.fromRGB(110,190,255)},bG)}b7[ct]=cu end ct.Size=Vector3.new(aV.
hitboxSize,aV.hitboxSize,aV.hitboxSize)cu.box.Size=ct.Size end for cu,cv in
pairs(b7)do if not cs[cu]then if cu.Parent then cu.Size=cv.size end cv.box:
Destroy()b7[cu]=nil end end end local cs=false for ct,cu in pairs(aY)do if cu.
enabled then cs=true end end if cs and os.clock()-cm>30 then cm=os.clock()bT()
end if cs and os.clock()-cn>0.3 then cn=os.clock()local ct={}for cu,cv in
ipairs(game:GetService('\080\108\097\121\101\114\115'):GetPlayers())do if cv~=aM and cv.Character
then bQ[cv.Character]='\112\108\097\121\101\114\115'end end for cu,cv in pairs(bQ)do if not cu.Parent
or not cu:IsDescendantOf(workspace)then bQ[cu]=nil else cv=bR(cu)or cv bQ[cu]=cv
if aY[cv].enabled then local cw=bP(cu)local cx=true if cv=='\115\116\114\117\099\116\117\114\101\115'and aV.
hideVisited then local cy=cu.Name:lower()if cw and(cw.Position-cq.Position).
Magnitude<60 then by[cu]=true end if by[cu]or cy:find('\115\116\097\114\116',1,true)or cy:find(
'\116\117\116\111\114\105\097\108',1,true)then cx=false end end local cy=cu:FindFirstChildOfClass(
'\072\117\109\097\110\111\105\100')local cz=cy and cy.Health or cu:GetAttribute('\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')if aV.
hideDead and aG(cv,cz,cu:GetAttribute('\067\097\116\101\103\111\114\121'),cu:GetAttribute(
'\067\111\114\112\115\101\077\097\120\072\101\097\108\116\104'),cu:GetAttribute('\067\111\114\112\115\101\080\108\097\121\101\114\085\115\101\114\073\100'))then cx=false end if aV
.hideAttached and(cv=='\105\116\101\109\115'or cv=='\115\099\114\097\112')and(cu:GetAttribute('\087\101\108\100\101\100')==true
or cu:GetAttribute('\068\114\105\108\108\087\101\108\100\067\111\108\108\105\115\105\111\110\083\117\112\112\114\101\115\115\101\100')==true)then cx=false end if cv
=='\111\114\101\115'then local cA=tostring(cu:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101')or cu.Name):
lower()cx=false for cB in aV.oreFilter:gmatch('\091\094\044\093\043')do if cA:find(cB:match(
'\094\037\115\042\040\046\045\041\037\115\042\036'):lower(),1,true)then cx=true end end end if cw and cx then local
cA=(cw.Position-cq.Position).Magnitude if cA<=aV.maxDistance then ct[#ct+1]={o=
cu,kind=cv,anchor=cw,distance=cA}end end end end end table.sort(ct,function(cu,
cv)local cw,cx=bl(cu.kind),bl(cv.kind)if cw~=cx then return cw<cx end return cu.
distance<cv.distance end)local cu={}for cv=1,math.min(#ct,aV.maxESP)do local cw=
ct[cv]local cx=cw.o cu[cx]=true if bU[cx]and bU[cx].style~=aV.style then bV(cx)
end local cy=bU[cx]if not cy then cy={style=aV.style}bU[cx]=cy cy.billboard=a1(
'\066\105\108\108\098\111\097\114\100\071\117\105',{Adornee=cw.anchor,AlwaysOnTop=true,Size=UDim2.fromOffset(220,48)
,StudsOffset=Vector3.new(0,3,0)},bG)cy.text=a1('\084\101\120\116\076\097\098\101\108',{Size=UDim2.
fromScale(1,1),BackgroundTransparency=1,TextSize=12,RichText=true,
TextStrokeTransparency=0.3,Font=Enum.Font.GothamBold,TextWrapped=true},cy.
billboard)if aV.style=='\066\111\120'then cy.visual=a1('\066\111\120\072\097\110\100\108\101\065\100\111\114\110\109\101\110\116',{Adornee=cw.
anchor,AlwaysOnTop=true,ZIndex=5,Transparency=0.65},bG)else cy.visual=a1(
'\072\105\103\104\108\105\103\104\116',{Adornee=cx,DepthMode=Enum.HighlightDepthMode.AlwaysOnTop,
FillTransparency=0.85},bG)end end local cz=a2(aY[cw.kind].color)local cA=cx:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cB=cA and cA.Health or cx:GetAttribute(
'\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')local cC=false local cD=tostring(cx:GetAttribute('\082\101\097\108\078\097\109\101')or
cx.Name)cy.billboard.Adornee=cw.anchor if cw.kind=='\111\114\101\115'then local cE=tostring(
cx:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101')or cx:GetAttribute('\082\101\097\108\078\097\109\101')or cx.Name)local
cF={Coal='\067\097\114\118\u{e3}\111',Iron='\070\101\114\114\111',Gold='\079\117\114\111',Diamond='\068\105\097\109\097\110\116\101',Emerald=
'\069\115\109\101\114\097\108\100\097',Ruby='\082\117\098\105'}for cG,cH in pairs(cF)do if cE:lower():find(cG:lower(),1
,true)then cD=aL(cH,cG)break end end cC=aP:HasTag(cx,'\087\111\114\109')or cx:
FindFirstChild('\087\111\114\109',true)~=nil if cC then cD=cD..aL('\032\105\110\102\101\115\116\097\100\111','\032\105\110\102\101\115\116\101\100')
end elseif cw.kind=='\099\104\117\114\099\104'then cD=aL('\073\103\114\101\106\097','\067\104\117\114\099\104')elseif cw.kind==
'\116\114\101\097\115\117\114\101'then cD=aL('\084\101\115\111\117\114\111\032\101\110\116\101\114\114\097\100\111','\066\117\114\105\101\100\032\116\114\101\097\115\117\114\101')elseif cw.kind==
'\100\111\111\114\115'then local cE local cF=cx while cF and cF~=workspace do cE=tonumber(cF:
GetAttribute('\068\117\110\103\101\111\110\084\105\101\114')or cF:GetAttribute('\071\097\116\101\084\105\101\114')or cF:GetAttribute(
'\068\105\102\102\105\099\117\108\116\121\084\105\101\114')or cF:GetAttribute('\084\105\101\114'))if not cE then cE=tonumber(cF.Name:
match('\091\084\116\093\105\101\114\091\095\037\115\093\042\040\037\100\043\041'))end if cE then break end cF=cF.Parent end if not cE
then for cG,cH in ipairs(cx:GetDescendants())do if cH:IsA('\084\101\120\116\076\097\098\101\108')then local
cI=cH.Text:gsub('\060\091\094\062\093\043\062',''):lower()cE=tonumber(cI:match(
'\116\105\101\114\037\115\042\091\058\037\045\093\063\037\115\042\040\037\100\043\041'))if not cE then local cJ=cI:match(
'\116\105\101\114\037\115\042\091\058\037\045\093\063\037\115\042\040\105\043\041\037\102\091\037\065\093')cE=cJ and({i=1,ii=2,iii=3})[cJ]end if cE then break
end end end end cD='\071\097\116\101\032\u{b7}\032\084\105\101\114\032'..(cE and tostring(math.floor(cE))or'\063')if
aV.dungeonScan then cD=cD..'\n'..bA(cx)end elseif cw.kind=='\115\116\114\117\099\116\117\114\101\115'or cw.
kind=='\097\114\101\110\097\115'or cw.kind=='\116\114\101\097\115\117\114\101\068\111\111\114\115'then cD=bC(cD)elseif cw.kind=='\099\104\101\115\116\115'
then local cE={CommonChest=aL('\066\097\u{fa}\032\100\101\032\109\097\100\101\105\114\097','\087\111\111\100\101\110\032\099\104\101\115\116'),
TutorialCommonChest=aL('\066\097\u{fa}\032\100\101\032\109\097\100\101\105\114\097','\087\111\111\100\101\110\032\099\104\101\115\116'),GoldChest=aL(
'\066\097\u{fa}\032\100\101\032\111\117\114\111','\071\111\108\100\032\099\104\101\115\116'),DiamondChest=aL('\066\097\u{fa}\032\100\101\032\100\105\097\109\097\110\116\101',
'\068\105\097\109\111\110\100\032\099\104\101\115\116'),VoidChest=aL('\066\097\u{fa}\032\100\111\032\118\097\122\105\111','\086\111\105\100\032\099\104\101\115\116'),PhoenixChest=aL(
'\066\097\u{fa}\032\070\u{ea}\110\105\120','\080\104\111\101\110\105\120\032\099\104\101\115\116'),Mimic_Chest=aL('\091\033\093\032\077\u{ed}\109\105\099\111',
'\091\033\093\032\077\105\109\105\099')}cD=cE[cD]or bC(cD)elseif cw.kind=='\109\105\109\105\099\115'then cD=aL(
'\091\033\093\032\077\u{ed}\109\105\099\111','\091\033\093\032\077\105\109\105\099')end cD=cD:gsub('\038','\038\097\109\112\059'):gsub('\060','\038\108\116\059'):gsub(
'\062','\038\103\116\059')if aV.rarityColors and(cw.kind=='\105\116\101\109\115'or cw.kind=='\115\099\114\097\112'or cw.kind
=='\111\114\101\115'or cw.kind=='\099\104\101\115\116\115')then local cE=bD[tostring(bF(cx,'\082\097\114\105\116\121'))]if cE
then cz=a2(cE)end end local cE=aV.showValue and(cw.kind=='\105\116\101\109\115'or cw.kind==
'\115\099\114\097\112'or cw.kind=='\111\114\101\115')and bF(cx,'\086\097\108\117\101')or nil if not cy.value then cy.
priceRow=a1('\070\114\097\109\101',{AnchorPoint=Vector2.new(0.5,0),BackgroundTransparency=1},cy
.billboard)cy.value=a1('\084\101\120\116\076\097\098\101\108',{BackgroundTransparency=1,Font=Enum.Font.
GothamBold,TextXAlignment=Enum.TextXAlignment.Left,TextColor3=Color3.fromRGB(255
,215,95),TextStrokeTransparency=0.3},cy.priceRow)cy.coin=a1('\070\114\097\109\101',{
BackgroundColor3=Color3.fromRGB(255,200,55),BorderSizePixel=0},cy.priceRow)a1(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},cy.coin)a1('\085\073\083\116\114\111\107\101',{Color=Color3.
fromRGB(170,110,20),Thickness=1},cy.coin)cy.coinText=a1('\084\101\120\116\076\097\098\101\108',{Text='\036',
Size=UDim2.fromScale(1,1),BackgroundTransparency=1,TextColor3=Color3.fromRGB(120
,75,10)},cy.coin)end local cF=type(cE)=='\110\117\109\098\101\114'and cE==cE and cE<math.huge cy.
value.Visible=cF cy.coin.Visible=cF local cG=aV.textSize+4 local cH,cI=cD:gsub(
'\n','')local cJ=cG*(1+cI+(cB and 1 or 0))cy.text.TextWrapped=false cy.text.Size
=UDim2.new(1,0,0,cJ)cy.priceRow.Visible=cF if cF then local cK=tostring(math.
round(cE))local cL=math.max(8,aV.textSize-1)if cy.priceText~=cK or cy.priceSize
~=cL then cy.priceText=cK cy.priceSize=cL cy.priceWidth=game:GetService(
'\084\101\120\116\083\101\114\118\105\099\101'):GetTextSize(cK,cL,Enum.Font.GothamBold,Vector2.new(1000,100)).X
end local cM={X=cy.priceWidth}local cN=cL local cO=cN+4+cM.X cy.priceRow.Size=
UDim2.fromOffset(cO,cG)cy.priceRow.Position=UDim2.new(0.5,0,0,cJ)cy.value.Text=
cK cy.value.TextSize=cL cy.value.Size=UDim2.fromOffset(cM.X,cG)cy.value.Position
=UDim2.fromOffset(cN+4,0)cy.coin.Size=UDim2.fromOffset(cN,cN)cy.coin.Position=
UDim2.fromOffset(0,(cG-cN)/2)cy.coinText.TextSize=math.max(7,cL-2)end cy.
billboard.Size=UDim2.fromOffset(260,cJ+(cF and cG or 0))if not cy.worm then cy.
worm=a1('\070\114\097\109\101',{Size=UDim2.fromOffset(22,22),Position=UDim2.fromOffset(-22,0),
BackgroundTransparency=1,Visible=false},cy.billboard)for cK=0,4 do local cL=a1(
'\070\114\097\109\101',{Size=UDim2.fromOffset(7,7),Position=UDim2.fromOffset(cK*4,8+math.sin(cK
)*4),BackgroundColor3=Color3.fromRGB(225,145,190),BorderSizePixel=0},cy.worm)a1(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},cL)end cy.mimic=a1('\070\114\097\109\101',{Size=UDim2.
fromOffset(22,18),Position=UDim2.fromOffset(-24,0),BackgroundColor3=Color3.
fromRGB(125,65,45),Visible=false},cy.billboard)a1('\085\073\083\116\114\111\107\101',{Color=Color3.
fromRGB(255,185,75),Thickness=1.5},cy.mimic)a1('\070\114\097\109\101',{Size=UDim2.fromOffset(20
,7),Position=UDim2.fromOffset(1,6),BackgroundColor3=Color3.fromRGB(30,15,20),
BorderSizePixel=0},cy.mimic)for cK=0,3 do a1('\070\114\097\109\101',{Size=UDim2.fromOffset(3,4)
,Position=UDim2.fromOffset(2+cK*5,6),BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0},cy.mimic)end end cy.worm.Visible=cC cy.mimic.Visible=cw.kind
=='\109\105\109\105\099\115'cy.text.TextSize=aV.textSize cy.text.Text=string.format(
'\037\115\032\u{b7}\032\060\102\111\110\116\032\099\111\108\111\114\061\034\035\037\115\034\062\037\100\032\115\116\117\100\115\060\047\102\111\110\116\062\037\115',cD,aV.distanceColor,cw.distance,
cB and string.format('\n\072\080\032\037\046\048\102',cB)or'')cy.text.TextColor3=cz if aV.style==
'\066\111\120'then cy.visual.Color3=cz cy.visual.Adornee=cw.anchor if cx:IsA('\077\111\100\101\108')then
local cK,cL=cx:GetBoundingBox()cy.visual.Size=cL cy.visual.CFrame=cw.anchor.
CFrame:ToObjectSpace(cK)else cy.visual.Size=cx.Size end else cy.visual.FillColor
=cz cy.visual.OutlineColor=cz end end local cv={}for cw in pairs(bU)do if not cu
[cw]then cv[#cv+1]=cw end end for cw,cx in ipairs(cv)do bV(cx)end elseif not cs
then bW()end local ct=aJ.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local cu=ct and ct.ActiveTool
local cv=cu and tostring(cu.ToolName or cu.Tool and cu.Tool.Name or'')or''local
cw=cu and type(cu.Shoot)=='\102\117\110\099\116\105\111\110'and(cv:lower():find('\114\112\103',1,true)or cv:
lower():find('\098\108\097\099\107',1,true))if b8 and(b8~=cu or not aW.noLauncherCooldown or
not cw)then ce()end if aW.noLauncherCooldown and cw then b8=cu b9=math.max(
tonumber(b9)or 0,tonumber(cu.Debounce)or 0)cu.Debounce=0 end if aW.autoMedkit
and not(aJ.movementBusy and aJ.movementBusy())and not workspace:GetAttribute(
'\073\110\067\117\116\083\099\101\110\101')then if cb then local cx=cu and type(cu.Consume)=='\102\117\110\099\116\105\111\110'and cv:
lower():find('\109\101\100\107\105\116',1,true)if cr.Health>cb.health or os.clock()-cb.started>15
then if(cx or not cu)and cb.previous and aJ.equip then aJ.equip(cb.previous)end
cb=nil cc=os.clock()+2 end elseif cr.MaxHealth>0 and cr.Health/cr.MaxHealth*100
<=aV.medkitPercent and os.clock()>=cc then if ca==0 then ca=os.clock()+(aV.
medkitInstant and 0 or 0.75)end if os.clock()>=ca then local cx=cv if cu and
type(cu.Consume)=='\102\117\110\099\116\105\111\110'and cv:lower():find('\109\101\100\107\105\116',1,true)then cb={health=
cr.Health,started=os.clock(),previous=cd or cx}cd=nil cu:Consume()ca=0 elseif aJ
.equip and aJ.equip('\077\101\100\107\105\116')then cd=cd or cx cc=os.clock()+0.4 else cc=os.
clock()+5 aJ.say(aL(
'\065\117\116\111\032\077\101\100\107\105\116\058\032\100\101\105\120\101\032\117\109\032\107\105\116\032\097\099\101\115\115\u{ed}\118\101\108\032\110\097\032\109\111\099\104\105\108\097\032\111\117\032\098\097\114\114\097\046',
'\065\117\116\111\032\077\101\100\107\105\116\058\032\107\101\101\112\032\097\032\107\105\116\032\097\099\099\101\115\115\105\098\108\101\032\105\110\032\098\097\099\107\112\097\099\107\032\111\114\032\104\111\116\098\097\114\046'))end end else ca=0
end end local cx=cw or cu and type(cu.Shoot)=='\102\117\110\099\116\105\111\110'and cu.Tool and(cu.Tool.
Name:find('\082\105\102\108\101',1,true)or cu.Tool.Name:find('\082\101\118\111\108\118\101\114',1,true)or cu.Tool.Name:
find('\083\104\111\116\103\117\110',1,true))if aW.silentAim and cx then local cy=aJ.ctrl(
'\067\097\109\101\114\097\067\111\110\116\114\111\108\108\101\114')if cy and type(cy.GetAimRay)=='\102\117\110\099\116\105\111\110'and cf~=cy then ci()
cf=cy cg=cy.GetAimRay local cz=cg ch=function(cA,...)local cB=cz(cA,...)local cC
,cD=aJ.actor()local cE=aJ.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local cF=cE and cE.ActiveTool if
not aR or not aW.silentAim or not cD or not cF or type(cF.Shoot)~='\102\117\110\099\116\105\111\110'or
not cB then return cB end local cG=ck(cD,aV.gunRange)if cG and(cG.Position-cB.
Origin).Magnitude>0.01 then return Ray.new(cB.Origin,(cG.Position-cB.Origin).
Unit)end return cB end cy.GetAimRay=ch end else ci()end local cy=aJ.ctrl(
'\085\073\067\111\110\116\114\111\108\108\101\114')local cz=not workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')and not aN:
GetFocusedTextBox()and not(cy and cy.ActiveFrame and cy.ActiveFrame.Visible)if
aW.autoMove and cz and not(aJ.movementBusy and aJ.movementBusy())and not cr.
SeatPart and not aW.fly then local cA=ck(cq,150)if cA then local cB=Vector3.new(
cq.Position.X-cA.Position.X,0,cq.Position.Z-cA.Position.Z)if cB.Magnitude<0.01
then cB=Vector3.new(0,0,1)end local cC=cA.Position+cB.Unit*aV.combatDistance if
math.abs((cq.Position-cA.Position).Magnitude-aV.combatDistance)>1.5 then cr:
MoveTo(Vector3.new(cC.X,cq.Position.Y,cC.Z))end end end if aW.autoFire and cx
and cz and ck(cq,aV.gunRange)then cu:Shoot()end local cA=aW.aura or aW.oreAura
or aW.autoMove if b2 and(b2~=cu or not cA)then b4()end local cB=aJ.ctrl(
'\085\073\067\111\110\116\114\111\108\108\101\114')if cA and cu and cu.Tool and type(cu.Swing)=='\102\117\110\099\116\105\111\110'and not
workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')and not aN:GetFocusedTextBox()and not(cB and
cB.ActiveFrame and cB.ActiveFrame.Visible)then local cC=cu.Tool.Name:find(
'\080\105\099\107\097\120\101',1,true)~=nil if aW.aura or aW.autoMove or aW.oreAura and cC then if
type(cu.Range)=='\110\117\109\098\101\114'then if b2~=cu then b2=cu b3=cu.Range end cu.Range=aW.
autoMove and math.max(aV.reach,aV.combatDistance+2)or aV.reach end local cD,cE=
nil,aW.autoMove and math.max(aV.reach,aV.combatDistance+2)or aV.reach local cF=
workspace:FindFirstChild('\078\112\099')if aW.aura or aW.autoMove then for cG,cH in
ipairs(cF and cF:GetChildren()or{})do local cI=bR(cH)local cJ=bP(cH)local cK=cH:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cL=cK and cK.Health or cH:GetAttribute(
'\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')or 0 local cM=cH:GetAttribute('\083\101\115\115\105\111\110\070\117\101\108\076\101\101\099\104\073\100')~=nil local
cN=not cM or(aM:GetAttribute('\073\110\068\117\110\103\101\111\110')~=true and cH:GetAttribute(
'\070\117\101\108\076\101\101\099\104\086\117\108\110\101\114\097\098\108\101')==true)if cN and(cI=='\109\111\098\115'or cI=='\109\105\109\105\099\115')and cJ and cL>0
then local cO=(cq.Position-cJ.Position).Magnitude if cO<cE then cD=cJ cE=cO end
end end end local cG=aJ.stoneTarget and aJ.stoneTarget()if cG and cG.Parent and(
cG.Position-cq.Position).Magnitude<=aV.reach then cD=cG end if cD and not(aJ.
movementBusy and aJ.movementBusy())and aV.position~='\079\102\102'and not aW.fly and not
aW.autoMove and not cr.SeatPart and os.clock()-co>0.4 then co=os.clock()local cH
=aV.position=='\065\098\111\118\101'and Vector3.new(0,aV.offset,0)or-cD.CFrame.LookVector*aV.
offset cp:PivotTo(CFrame.lookAt(cD.Position+cH,cD.Position,aV.position=='\065\098\111\118\101'
and cD.CFrame.RightVector or Vector3.yAxis))end if cD or aW.oreAura and cC then
cu:Swing()end end end end)if not cp then aJ.say(aL('\067\111\110\116\114\111\108\101\115\032\097\118\097\110\u{e7}\097\100\111\115\058\032',
'\065\100\118\097\110\099\101\100\032\099\111\110\116\114\111\108\115\058\032')..tostring(cq))end task.wait(0.15)end end)return{stop=cl,
cleanup=function()aR=false cl()for cp,cq in ipairs(aS)do cq:Disconnect()end bW()
bH:Destroy()end}end local function aI(aJ,aK,aL,aM,aN,aO)if type(aJ)=='\115\116\114\105\110\103'and
aJ~=''then return aJ==aK or aJ==aL end if aM then return true end return false
end local function aJ(aK,aL)local aM,aN=aK.ui,aK.T local aO=game:GetService(
'\080\108\097\121\101\114\115').LocalPlayer local aP=game:GetService('\067\111\108\108\101\099\116\105\111\110\083\101\114\118\105\099\101')local aQ=
game:GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local aR=true local aS=0 local aT={}local aU
=false local aV=false local aW=400 local aX=250 local aY=setmetatable({},{__mode
='\107'})local aZ=aK.section('\070\097\114\109')local a_=aM.label(aZ,'\084\101\120\116\076\097\098\101\108',aN(
'\076\111\103\u{ed}\115\116\105\099\097\058\032\112\097\114\097\100\097\046\032\085\115\097\032\105\116\101\110\115\032\115\111\108\116\111\115\032\105\100\101\110\116\105\102\105\099\097\100\111\115\059\032\112\111\114\116\097\105\115\032\098\108\111\113\117\101\097\100\111\115\032\105\110\116\101\114\114\111\109\112\101\109\032\097\032\099\111\108\101\116\097\046'
,
"\076\111\103\105\115\116\105\099\115\058\032\115\116\111\112\112\101\100\046\032\085\115\101\115\032\105\100\101\110\116\105\102\105\101\100\032\108\111\111\115\101\032\105\116\101\109\115\059\032\108\111\099\107\101\100\032\112\111\114\116\097\108\115\032\115\116\111\112\032\099\111\108\108\101\099\116\105\111\110\046"
),65,40)local function a0(a1,a2)if aR then a_.Text=aN(a1,a2)end end local
function a1(a2,a3)aT[#aT+1]=a2:Connect(a3)end aM.label(aZ,'\084\101\120\116\076\097\098\101\108',aN(
'\086\101\110\100\101\032\112\101\108\111\032\118\097\108\111\114\032\101\120\105\098\105\100\111\032\100\111\032\105\116\101\109\032\u{2265}\032\108\105\109\105\116\101\046\032\065\098\097\105\120\111\044\032\101\110\118\105\097\032\097\112\101\110\097\115\032\105\116\101\110\115\032\100\097\032\099\097\116\101\103\111\114\105\097\032\083\099\114\097\112\032\112\097\114\097\032\114\101\099\105\099\108\097\103\101\109\046\032\070\105\113\117\101\032\115\111\098\114\101\032\097\032\098\114\111\099\097\032\112\101\114\116\111\032\100\101\032\117\109\097\032\101\115\116\097\u{e7}\u{e3}\111\046'
,
'\083\101\108\108\115\032\119\104\101\110\032\100\105\115\112\108\097\121\101\100\032\105\116\101\109\032\118\097\108\117\101\032\u{2265}\032\116\104\114\101\115\104\111\108\100\046\032\066\101\108\111\119\032\105\116\044\032\115\101\110\100\115\032\111\110\108\121\032\083\099\114\097\112\045\099\097\116\101\103\111\114\121\032\105\116\101\109\115\032\102\111\114\032\114\101\099\121\099\108\105\110\103\046\032\083\116\097\121\032\111\110\032\116\104\101\032\100\114\105\108\108\032\110\101\097\114\032\097\032\115\116\097\116\105\111\110\046'
),85,41)local a2=aM.label(aZ,'\084\101\120\116\066\111\120','\052\048\048',40,42)a1(a2.FocusLost,function()
local a3=tonumber(a2.Text)if a3 and a3==a3 and a3<math.huge then aW=math.clamp(
math.floor(a3),0,1000000)end a2.Text=tostring(aW)end)local a3,a4=aM.checkbox(aZ,
aN('\065\117\116\111\032\118\101\110\100\097\032\047\032\115\117\099\097\116\097\032\110\097\032\098\114\111\099\097','\065\117\116\111\032\115\101\108\108\032\047\032\115\099\114\097\112\032\111\110\032\100\114\105\108\108'),43)local a5=aM.
button(aZ,aN('\067\111\108\101\116\097\114\032\108\111\111\116\032\115\111\108\116\111\032\100\101\115\116\097\032\068\117\110\103\101\111\110\032\101\032\112\097\114\097\114',
"\067\111\108\108\101\099\116\032\116\104\105\115\032\068\117\110\103\101\111\110\039\115\032\108\111\111\115\101\032\108\111\111\116\032\097\110\100\032\115\116\111\112"),45)local a6='\068\111\111\114'local a7=aM.
button(aZ,aN('\068\101\115\116\105\110\111\058\032\112\111\114\116\097\032\100\097\032\068\117\110\103\101\111\110','\068\101\115\116\105\110\097\116\105\111\110\058\032\068\117\110\103\101\111\110\032\100\111\111\114'),44)a1(a7.
Activated,function()a6=a6=='\068\111\111\114'and'\073\110\118\101\110\116\111\114\121'or a6=='\073\110\118\101\110\116\111\114\121'and'\083\097\099\107'or
'\068\111\111\114'a7.Text=a6=='\068\111\111\114'and aN('\068\101\115\116\105\110\111\058\032\112\111\114\116\097\032\100\097\032\068\117\110\103\101\111\110',
'\068\101\115\116\105\110\097\116\105\111\110\058\032\068\117\110\103\101\111\110\032\100\111\111\114')or a6=='\073\110\118\101\110\116\111\114\121'and aN(
'\068\101\115\116\105\110\111\058\032\105\110\118\101\110\116\u{e1}\114\105\111\032\040\115\101\109\032\115\097\099\111\041','\068\101\115\116\105\110\097\116\105\111\110\058\032\105\110\118\101\110\116\111\114\121\032\040\110\111\032\115\097\099\107\041')or aN(
'\068\101\115\116\105\110\111\058\032\098\114\111\099\097\032\040\099\111\109\032\115\097\099\111\041','\068\101\115\116\105\110\097\116\105\111\110\058\032\100\114\105\108\108\032\040\119\105\116\104\032\115\097\099\107\041')end)local a8=aM.
button(aZ,aN('\080\097\114\097\114\032\108\111\103\u{ed}\115\116\105\099\097','\083\116\111\112\032\108\111\103\105\115\116\105\099\115'),46)local function a9()if
aL.release then aL.release()end aS+=1 aU=false aV=false a4(false)end a1(a8.
Activated,a9)a1(a3.Activated,function()aU=not aU a4(aU)a0(aU and
'\065\117\116\111\032\118\101\110\100\097\032\097\116\105\118\097\058\032\097\103\117\097\114\100\097\110\100\111\032\105\116\101\110\115\032\110\097\032\098\114\111\099\097\032\101\032\101\115\116\097\u{e7}\u{e3}\111\032\112\114\u{f3}\120\105\109\097\046'
or'\065\117\116\111\032\118\101\110\100\097\032\112\097\114\097\100\097\046',aU and
"\065\117\116\111\032\115\101\108\108\032\097\099\116\105\118\101\058\032\119\097\105\116\105\110\103\032\102\111\114\032\100\114\105\108\108\032\105\116\101\109\115\032\097\110\100\032\097\032\110\101\097\114\098\121\032\115\116\097\116\105\111\110\046"or
'\065\117\116\111\032\115\101\108\108\032\115\116\111\112\112\101\100\046')end)local function ba(bb)return bb and(bb:IsA('\066\097\115\101\080\097\114\116')
and bb or bb:IsA('\077\111\100\101\108')and(bb.PrimaryPart or bb:FindFirstChildWhichIsA(
'\066\097\115\101\080\097\114\116',true)))or nil end local function bb(bc)local bd=aQ:FindFirstChild(
'\083\104\097\114\101\100')local be=bd and bd:FindFirstChild(bc)return be and require(be)end local
function bc(bd)return aR and aS==bd and aL.actor()~=nil end local function bd(be
,bf,bg)local bh=os.clock()+bg repeat if not bc(be)then return false end if bf()
then return true end task.wait(0.1)until os.clock()>=bh return false end local
function be(bf,bg)local bh=workspace:FindFirstChild('\068\114\105\108\108')if not bh or not bf
then return false end local bi=RaycastParams.new()bi.FilterType=Enum.
RaycastFilterType.Exclude bi.FilterDescendantsInstances={bg}local bj=workspace:
Raycast(bf.Position,Vector3.new(0,-15,0),bi)return bj and bj.Instance:
IsDescendantOf(bh)or false end local function bf(bg,bh)local bi,bj=nil,aX for bk
,bl in ipairs(aP:GetTagged(bg))do if bl:IsA('\066\097\115\101\080\097\114\116')and bl:IsDescendantOf(
workspace)and not bl:GetFullName():find('\067\117\116\083\099\101\110\101',1,true)then local bm=(bl.
Position-bh.Position).Magnitude if bm<bj then bi=bl bj=bm end end end return bi
end local function bg(bh)local bi,bj,bk=aL.actor()if not bj or aO:GetAttribute(
'\073\110\068\117\110\103\101\111\110')==true or workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')then return end local
bl=workspace:FindFirstChild('\068\114\105\108\108')if not bl or not(be(bj,bi)or bk.SeatPart and
bk.SeatPart:IsDescendantOf(bl))then return end local bm=workspace:
FindFirstChild('\073\116\101\109\115')local bn=bb('\073\116\101\109\068\097\116\097\098\097\115\101')local bo=bb('\083\101\108\108\086\097\108\117\101')if not
bm or not bn or not bo then return end local bp={}for bq,br in ipairs(bm:
GetChildren())do if not bc(bh)or not aU then return end local bs=ba(br)if bs and
not aY[br]and(be(bs,br)or br:GetAttribute('\068\114\105\108\108\087\101\108\100\067\111\108\108\105\115\105\111\110\083\117\112\112\114\101\115\115\101\100')==true)
and not aP:HasTag(br,'\083\104\111\112\073\116\101\109')and not br:GetAttribute(
'\065\100\118\101\110\116\117\114\101\081\117\101\115\116\080\114\111\116\101\099\116\101\100')and not br:GetAttribute('\068\101\097\116\104\067\104\101\115\116')and not br:
GetAttribute('\067\114\097\102\116\101\100\080\108\097\099\101\097\098\108\101')then local bt=br:GetAttribute('\086\097\108\117\101')if type(bt
)=='\110\117\109\098\101\114'then bt=math.round(bo.ScaleByCharges(bt,br:GetAttribute(
'\070\114\111\109\084\111\111\108\095\073\116\101\109\067\104\097\114\103\101\115')or bn.GetAttribute(br,'\073\116\101\109\067\104\097\114\103\101\115'),br:GetAttribute(
'\070\114\111\109\084\111\111\108\095\077\097\120\073\116\101\109\067\104\097\114\103\101\115')or bn.GetAttribute(br,'\077\097\120\073\116\101\109\067\104\097\114\103\101\115')))local bu=bt>=
aW and'\083\101\108\108\080\097\114\116'or bn.GetAttribute(br,'\067\097\116\101\103\111\114\121')=='\083\099\114\097\112'and'\083\099\114\097\112\067\111\108\108\101\099\116\111\114'or
nil local bv=bu and bf(bu,bj)if bv then aY[br]=true if br:GetAttribute('\087\101\108\100\101\100')
==true then local bw=aL.await(aL.service('\068\114\097\103\083\101\114\118\105\099\101'):Weld(br))if bw~=
'\100\101\116\097\099\104\101\100'or not bc(bh)or not aU then return end end local bw=aL.await(aL.
service('\068\114\097\103\083\101\114\118\105\099\101'):Request(br))if not bc(bh)or not aU then if bw then pcall(
function()aL.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)end return end if bw==true
and br.Parent and bv.Parent then br:PivotTo(bv.CFrame*CFrame.new(0,bv.Size.Y*0.5
+1,0))task.wait()pcall(function()aL.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)bp[#
bp+1]=br end end end end end if#bp>0 then bd(bh,function()for bq,br in ipairs(bp
)do if br:IsDescendantOf(workspace)then return false end end return true end,3)
local bq=0 for br,bs in ipairs(bp)do if not bs:IsDescendantOf(workspace)then bq
+=1 end end a0('\076\111\116\101\032\101\110\118\105\097\100\111\058\032'..#bp..'\059\032\114\101\109\111\118\105\100\111\115\032\112\101\108\097\032\101\115\116\097\u{e7}\u{e3}\111\058\032'..bq
,'\066\097\116\099\104\032\115\101\110\116\058\032'..#bp..'\059\032\114\101\109\111\118\101\100\032\098\121\032\115\116\097\116\105\111\110\058\032'..bq)end end local function bh(bi)
local bj=bi.Parent if bj and bj:IsA('\065\116\116\097\099\104\109\101\110\116')then return bj.WorldCFrame end
local bk=ba(bj)return bk and bk.CFrame end local function bi(bj,bk,bl)assert(bk
and bk.Parent and bk.Enabled and type(fireproximityprompt)=='\102\117\110\099\116\105\111\110',aN(
'\080\111\114\116\097\108\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\047\098\108\111\113\117\101\097\100\111\046','\080\111\114\116\097\108\032\117\110\097\118\097\105\108\097\098\108\101\047\108\111\099\107\101\100\046'))local bm=aL.
actor()local bn=bh(bk)assert(bm and bn,'\080\111\114\116\097\108\032\112\111\115\105\116\105\111\110\032\117\110\097\118\097\105\108\097\098\108\101')bm:PivotTo(
bn*CFrame.new(0,2,3))task.wait(0.4)assert(bc(bj),'\083\116\111\112\112\101\100')fireproximityprompt(
bk)assert(bd(bj,function()return(aO:GetAttribute('\073\110\068\117\110\103\101\111\110')==true)==bl end,8),
aN('\079\032\106\111\103\111\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\097\032\112\097\115\115\097\103\101\109\032\112\101\108\111\032\112\111\114\116\097\108\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\112\111\114\116\097\108\032\116\114\097\110\115\105\116\105\111\110\046'))end a1(a5.Activated,function()if
aV then return end if aL.acquire and not aL.acquire()then a0(
'\079\117\116\114\097\032\116\097\114\101\102\097\032\101\115\116\u{e1}\032\109\111\118\101\110\100\111\032\105\116\101\110\115\046\032\084\101\110\116\101\032\097\111\032\116\101\114\109\105\110\097\114\046',
'\065\110\111\116\104\101\114\032\116\097\115\107\032\105\115\032\109\111\118\105\110\103\032\105\116\101\109\115\046\032\082\101\116\114\121\032\119\104\101\110\032\105\116\032\102\105\110\105\115\104\101\115\046')return end aS+=1 local
bj=aS aV=true local bk=a6 task.spawn(function()local bl,bm=pcall(function()
assert(aO:GetAttribute('\073\110\068\117\110\103\101\111\110')==true,aN('\069\110\116\114\101\032\112\114\105\109\101\105\114\111\032\110\097\032\068\117\110\103\101\111\110\046',
'\069\110\116\101\114\032\116\104\101\032\068\117\110\103\101\111\110\032\102\105\114\115\116\046'))local bl=aL.ctrl('\068\117\110\103\101\111\110\085\073\067\111\110\116\114\111\108\108\101\114')local bm=bl
and bl._BoundDungeon local bn=assert(bb('\068\117\110\103\101\111\110\068\111\111\114\083\116\097\116\101'))local bo,bp bm=bm
and(bn.GetRoot(bm)or bm)if not(bm and bm.Parent)then local bq=aO:GetAttribute(
'\065\099\116\105\118\101\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')for br,bs in ipairs(aP:GetTagged(
'\068\117\110\103\101\111\110\068\111\111\114'))do local bt=bn.GetRoot(bs)if bt and bq and(bt:GetAttribute(
'\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')==bq or bt:GetAttribute('\083\101\115\115\105\111\110\068\117\110\103\101\111\110\073\100')==bq)
then bm=bt break end end end assert(bm and bm.Parent,aN(
'\068\117\110\103\101\111\110\032\110\u{e3}\111\032\105\100\101\110\116\105\102\105\099\097\100\097\046\032\069\110\116\114\101\032\112\101\108\111\032\112\111\114\116\097\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046',
'\068\117\110\103\101\111\110\032\110\111\116\032\105\100\101\110\116\105\102\105\101\100\046\032\069\110\116\101\114\032\116\104\114\111\117\103\104\032\105\116\115\032\112\111\114\116\097\108\032\097\110\100\032\114\101\116\114\121\046'))for bq,br in
ipairs(aP:GetTagged('\068\117\110\103\101\111\110\068\111\111\114'))do if bn.GetRoot(br)==bm then bo=br:
FindFirstChild('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116',true)bp=br:FindFirstChild('\068\117\110\103\101\111\110\069\120\105\116\080\114\111\109\112\116',
true)if bo and bp then break end end end local bq=aL.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local
br=bq and bq.ActiveTool if bk=='\083\097\099\107'and not(br and br.IsSack)then if aL.equip
then aL.equip('\083\097\099\107')end local bs=aO:FindFirstChild('\066\097\099\107\112\097\099\107')local bt,bu,bv=aL
.actor()for bw,bx in ipairs(bs and bs:GetChildren()or{})do if bx:IsA('\084\111\111\108')and(
bx.Name=='\083\097\099\107'or bx:GetAttribute('\073\116\101\109\068\097\116\097\098\097\115\101\073\100')=='\083\097\099\107')then bv:EquipTool(bx
)break end end bd(bj,function()br=bq and bq.ActiveTool return br and br.IsSack
end,4)end if bk=='\083\097\099\107'then assert(br and br.IsSack and type(br.CanStoreTarget)
=='\102\117\110\099\116\105\111\110',aN('\069\113\117\105\112\101\032\111\032\115\097\099\111\032\112\097\114\097\032\101\115\116\101\032\109\111\100\111\046','\069\113\117\105\112\032\116\104\101\032\115\097\099\107\032\102\111\114\032\116\104\105\115\032\109\111\100\101\046')
)assert((br.Size or 0)==0,aN('\069\115\118\097\122\105\101\032\111\032\115\097\099\111\032\097\110\116\101\115\058\032\115\111\109\101\110\116\101\032\108\111\111\116\032\100\101\115\116\097\032\068\117\110\103\101\111\110\046'
,"\069\109\112\116\121\032\116\104\101\032\115\097\099\107\032\102\105\114\115\116\058\032\111\110\108\121\032\116\104\105\115\032\068\117\110\103\101\111\110\039\115\032\108\111\111\116\046"))end local bs=bk=='\083\097\099\107'and
assert(bb('\083\097\099\107\067\111\110\102\105\103'))local bu=aO:GetAttribute(
'\065\099\116\105\118\101\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')or bm:GetAttribute(
'\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')local bv=bb('\073\116\101\109\068\097\116\097\098\097\115\101')local bw=bp and bh(bp)if
bk=='\068\111\111\114'then assert(bw,aN('\080\111\114\116\097\032\105\110\116\101\114\110\097\032\110\u{e3}\111\032\101\110\099\111\110\116\114\097\100\097\046',
'\073\110\116\101\114\105\111\114\032\100\111\111\114\032\110\111\116\032\102\111\117\110\100\046'))end local bx=bm:GetAttribute('\083\101\115\115\105\111\110\068\117\110\103\101\111\110\073\100')
local by,bz if bm:IsA('\077\111\100\101\108')then by,bz=bm:GetBoundingBox()end local function
bA(bB)local bC=bB:GetAttribute('\067\097\116\101\103\111\114\121')or bv and bv.GetAttribute(bB,
'\067\097\116\101\103\111\114\121')if bC=='\067\111\114\112\115\101'or bB:GetAttribute('\067\111\114\112\115\101\077\097\120\072\101\097\108\116\104')~=nil or bB:
GetAttribute('\067\111\114\112\115\101\080\108\097\121\101\114\085\115\101\114\073\100')~=nil or bB:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')
or aP:HasTag(bB,'\083\104\111\112\073\116\101\109')or bB:GetAttribute('\068\101\097\116\104\067\104\101\115\116')or bB:GetAttribute(
'\065\100\118\101\110\116\117\114\101\081\117\101\115\116\080\114\111\116\101\099\116\101\100')or bB:GetAttribute('\087\101\108\100\101\100')then return false end
local bD=bB:GetAttribute('\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')or bB:GetAttribute(
'\083\101\115\115\105\111\110\068\117\110\103\101\111\110\073\100')local bE=ba(bB)local bF=bE and by and by:PointToObjectSpace(
bE.Position)local bG=bz and bz*0.5+Vector3.new(4,4,4)return aI(bD,bu,bx,bB:
IsDescendantOf(bm),bF,bG)end local bB={}local bC={}local bD=0 local bE=0 local
bF=nil local function bG()assert(bo and bp and bp.Parent and bp.Enabled,aN(
'\083\097\099\111\032\112\114\101\115\101\114\118\097\100\111\058\032\108\105\098\101\114\101\032\097\032\115\097\u{ed}\100\097\032\100\097\032\068\117\110\103\101\111\110\032\112\097\114\097\032\116\114\097\110\115\112\111\114\116\097\114\032\u{e0}\032\098\114\111\099\097\046'
,"\083\097\099\107\032\112\114\101\115\101\114\118\101\100\058\032\117\110\108\111\099\107\032\116\104\101\032\068\117\110\103\101\111\110\032\101\120\105\116\032\116\111\032\116\114\097\110\115\112\111\114\116\032\116\111\032\116\104\101\032\100\114\105\108\108\046"))bi(bj,
bp,false)local bH=workspace:FindFirstChild('\068\114\105\108\108')local bI=bH and(bH:
FindFirstChild('\066\111\100\121')or bH.PrimaryPart)assert(bI and bI:IsA('\066\097\115\101\080\097\114\116'),
'\068\114\105\108\108\032\110\111\116\032\108\111\097\100\101\100')local bJ=aL.actor()bJ:PivotTo(bI.CFrame*CFrame.new(0,bI.Size.
Y*0.5+4,0))task.wait(0.5)assert(bc(bj)and bq.ActiveTool==br,
'\083\097\099\107\032\099\104\097\110\103\101\100\032\047\032\115\116\111\112\112\101\100')br.Execute:Fire({'\068\114\111\112\065\108\108'})assert(bd(bj,function()
return(br.Size or 0)==0 end,5),'\068\101\112\111\115\105\116\032\110\111\116\032\099\111\110\102\105\114\109\101\100')bi(bj,bo,true)end while
bc(bj)do if bk=='\083\097\099\107'and(br.Size or 0)>=bs.Capacity then bG()end assert(bm.
Parent and(bk~='\083\097\099\107'or bq.ActiveTool==br),'\083\097\099\107\032\099\104\097\110\103\101\100\032\047\032\100\117\110\103\101\111\110\032\117\110\108\111\097\100\101\100')
local bH=workspace:FindFirstChild('\073\116\101\109\115')local bI for bJ,bK in ipairs(bH and bH
:GetChildren()or{})do if not bB[bK]and bA(bK)and(bk~='\083\097\099\107'or br:CanStoreTarget(
bK))and ba(bK)then bI=bK break end end if not bI then local bJ for bK,bL in
ipairs(bm:GetDescendants())do if bL:IsA('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and bL.Enabled and not
bC[bL]and bL:GetFullName():find('\067\104\101\115\116\078\111\100\101',1,true)then bJ=bL break end end if
not bJ then bF=bF or os.clock()if os.clock()-bF>=3 then break end task.wait(0.4)
continue end bF=nil bC[bJ]=true local bK=bh(bJ)assert(bK and type(
fireproximityprompt)=='\102\117\110\099\116\105\111\110','\067\104\101\115\116\032\112\114\111\109\112\116\032\117\110\097\118\097\105\108\097\098\108\101')local bL=aL.actor()
bL:PivotTo(bK*CFrame.new(0,3,3))task.wait(0.3)assert(bc(bj),'\083\116\111\112\112\101\100')
fireproximityprompt(bJ)bd(bj,function()return not bJ.Parent or not bJ.Enabled
end,3)task.wait(0.5)continue end bF=nil bB[bI]=true local bJ=aL.actor()bJ:
PivotTo(ba(bI).CFrame*CFrame.new(0,3,3))task.wait(0.3)assert(bc(bj),'\083\116\111\112\112\101\100')
local bK=false if bk=='\083\097\099\107'then assert(bq.ActiveTool==br,'\083\097\099\107\032\099\104\097\110\103\101\100')local
bL=br.Size or 0 br.Execute:Fire({'\080\105\099\107\117\112',bI})bK=bd(bj,function()return(br.Size
or 0)>bL end,3)elseif bk=='\073\110\118\101\110\116\111\114\121'then bK=aL.await(aL.service(
'\067\097\114\114\121\073\110\118\101\110\116\111\114\121\083\101\114\118\105\099\101'):Pickup(bI))==true else local bL=aL.await(aL.service(
'\068\114\097\103\083\101\114\118\105\099\101'):Request(bI))if bL==true then local bM,bN=pcall(function()assert(
bc(bj)and bI.Parent,'\083\116\111\112\112\101\100')local bM=bD%16 local bN=bw*CFrame.new((bM%4-1.5)*4
,2+math.floor(bD/16)*3,7+math.floor(bM/4)*4)bJ:PivotTo(bN*CFrame.new(0,3,3))bI:
PivotTo(bN)task.wait(0.25)end)pcall(function()aL.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(
false)end)if not bM then error(bN)end bK=bI.Parent~=nil and(ba(bI).Position-bw.
Position).Magnitude<35 end end if bK then bD+=1 else bE+=1 a0(
'\073\116\101\109\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\100\111\059\032\115\101\103\117\105\110\100\111\032\112\097\114\097\032\111\115\032\100\101\109\097\105\115\032\105\116\101\110\115\032\101\108\101\103\u{ed}\118\101\105\115\046',
'\073\116\101\109\032\110\111\116\032\099\111\110\102\105\114\109\101\100\059\032\099\111\110\116\105\110\117\105\110\103\032\116\111\032\111\116\104\101\114\032\101\108\105\103\105\098\108\101\032\105\116\101\109\115\046')end if bk=='\083\097\099\107'and(
br.Size or 0)>=bs.Capacity then bG()end end assert(bc(bj),'\083\116\111\112\112\101\100')if bk==
'\083\097\099\107'and(br.Size or 0)>0 then bG()end if bk=='\068\111\111\114'and bc(bj)then local bH=aL.
actor()bH:PivotTo(bw*CFrame.new(0,3,4))end a0(
'\083\101\109\032\109\097\105\115\032\108\111\111\116\032\101\108\101\103\u{ed}\118\101\108\032\099\097\114\114\101\103\097\100\111\046\032\067\111\108\101\116\097\100\111\115\058\032'..bD..
'\059\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\100\111\115\058\032'..bE..
'\046\032\065\115\115\117\109\097\032\111\032\099\111\110\116\114\111\108\101\059\032\114\101\097\116\105\118\101\032\097\112\u{f3}\115\032\111\032\099\104\101\102\101\046',
'\078\111\032\109\111\114\101\032\101\108\105\103\105\098\108\101\032\108\111\097\100\101\100\032\108\111\111\116\046\032\067\111\108\108\101\099\116\101\100\058\032'..bD..'\059\032\117\110\099\111\110\102\105\114\109\101\100\058\032'..bE..
'\046\032\084\097\107\101\032\099\111\110\116\114\111\108\059\032\114\101\115\116\097\114\116\032\097\102\116\101\114\032\116\104\101\032\098\111\115\115\046')end)if aR and aS==bj then if aL.
release then aL.release()end aV=false if not bl then a0(
'\076\111\103\u{ed}\115\116\105\099\097\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(bm),'\076\111\103\105\115\116\105\099\115\032\115\116\111\112\112\101\100\058\032'..tostring(bm
))end end end)end)local bj=100000 local bk=300 aM.label(aZ,'\084\101\120\116\076\097\098\101\108',aN(
'\082\111\116\097\032\100\101\032\098\097\u{fa}\115\058\032\118\105\115\105\116\097\032\098\097\u{fa}\115\032\101\032\088\032\099\097\114\114\101\103\097\100\111\115\032\102\111\114\097\032\100\097\115\032\068\117\110\103\101\111\110\115\046\032\085\115\097\032\111\115\032\112\114\111\109\112\116\115\032\100\111\032\106\111\103\111\044\032\097\116\u{e9}\032\111\032\108\105\109\105\116\101\032\100\101\032\100\105\115\116\u{e2}\110\099\105\097\044\032\101\032\118\111\108\116\097\032\u{e0}\032\098\114\111\099\097\046\032\078\u{e3}\111\032\103\097\114\097\110\116\101\032\067\111\114\101\115\032\112\111\114\032\098\097\u{fa}\046'
,
"\067\104\101\115\116\032\114\111\117\116\101\058\032\118\105\115\105\116\115\032\108\111\097\100\101\100\032\099\104\101\115\116\115\032\097\110\100\032\088\032\115\112\111\116\115\032\111\117\116\115\105\100\101\032\068\117\110\103\101\111\110\115\046\032\085\115\101\115\032\103\097\109\101\032\112\114\111\109\112\116\115\032\119\105\116\104\105\110\032\116\104\101\032\100\105\115\116\097\110\099\101\032\108\105\109\105\116\044\032\116\104\101\110\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\100\114\105\108\108\046\032\067\111\114\101\115\032\112\101\114\032\099\104\101\115\116\032\097\114\101\032\110\111\116\032\103\117\097\114\097\110\116\101\101\100\046"
),85,50)local bl=aM.label(aZ,'\084\101\120\116\066\111\120',tostring(bj),40,51)a1(bl.FocusLost,
function()local bm=tonumber(bl.Text)if bm and bm==bm then bj=math.clamp(bm,100,
200000)end bl.Text=tostring(bj)end)aM.label(aZ,'\084\101\120\116\076\097\098\101\108',aN(
'\086\101\108\111\099\105\100\097\100\101\032\100\097\032\114\111\116\097\032\100\101\032\098\097\u{fa}\115\032\040\115\116\117\100\115\047\115\041','\067\104\101\115\116\032\114\111\117\116\101\032\115\112\101\101\100\032\040\115\116\117\100\115\047\115\041'),30,53
)local bm=aM.label(aZ,'\084\101\120\116\066\111\120',tostring(bk),40,54)a1(bm.FocusLost,function()
local bn=tonumber(bm.Text)if bn and bn==bn and bn<math.huge then bk=math.clamp(
bn,50,1000)end bm.Text=tostring(bk)end)local bn=aM.button(aZ,aN(
'\073\110\105\099\105\097\114\032\114\111\116\097\032\100\101\032\098\097\u{fa}\115\032\099\097\114\114\101\103\097\100\111\115\032\047\032\067\111\114\101\115','\083\116\097\114\116\032\108\111\097\100\101\100\032\099\104\101\115\116\032\047\032\067\111\114\101\032\114\111\117\116\101'
),52)a1(bn.Activated,function()if aV then return end if aL.acquire and not aL.
acquire()then a0('\079\117\116\114\097\032\116\097\114\101\102\097\032\101\115\116\u{e1}\032\109\111\118\101\110\100\111\032\105\116\101\110\115\046\032\084\101\110\116\101\032\097\111\032\116\101\114\109\105\110\097\114\046',
'\065\110\111\116\104\101\114\032\116\097\115\107\032\105\115\032\109\111\118\105\110\103\032\105\116\101\109\115\046\032\082\101\116\114\121\032\119\104\101\110\032\105\116\032\102\105\110\105\115\104\101\115\046')return end aS+=1 local
bo=aS aV=true task.spawn(function()local bp local bq,br=pcall(function()assert(
aO:GetAttribute('\073\110\068\117\110\103\101\111\110')~=true,'\076\101\097\118\101\032\116\104\101\032\068\117\110\103\101\111\110\032\102\105\114\115\116')assert(type(
fireproximityprompt)=='\102\117\110\099\116\105\111\110','\080\114\111\109\112\116\032\065\080\073\032\117\110\097\118\097\105\108\097\098\108\101')local bq,br=aL.actor()
local bs=br.Position local bu=br.CFrame.LookVector local bv=assert(bb(
'\068\117\110\103\101\111\110\068\111\111\114\083\116\097\116\101'))local bw={}local bx=0 local function by(bz)local bA=os.
clock()+(br.Position-bz).Magnitude/bk+15 repeat assert(bc(bo)and aO:
GetAttribute('\073\110\068\117\110\103\101\111\110')~=true and not workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101'),
'\082\111\117\116\101\032\105\110\116\101\114\114\117\112\116\101\100')local bB,bC,bD=aL.actor()assert(not bD.SeatPart,
'\076\101\097\118\101\032\116\104\101\032\100\114\105\118\101\114\032\115\101\097\116\032\102\105\114\115\116')local bE=bz-bC.Position if bE.Magnitude<4 then
return end assert(os.clock()<bA,'\077\111\118\101\109\101\110\116\032\116\105\109\101\100\032\111\117\116')bB:PivotTo(CFrame.new(bC.
Position+bE.Unit*math.min(bE.Magnitude,bk*0.05)))task.wait(0.05)until false end
local bz=setmetatable({},{__mode='\107'})local function bA(bB)if bB:IsA(
'\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')then local bC=bB:GetFullName()if bC:find('\067\104\101\115\116\078\111\100\101',1,true)or
bC:find('\068\105\103\083\112\111\116',1,true)then bz[bB]=true end end end bp=workspace.
DescendantAdded:Connect(bA)aT[#aT+1]=bp for bB,bC in ipairs(workspace:
GetDescendants())do bA(bC)if bB%500==0 then task.wait()assert(bc(bo),'\083\116\111\112\112\101\100')
end end while bc(bo)and bx<500 do local bB,bC,bD=nil,nil,math.huge for bE in
pairs(bz)do if not bE.Parent then bz[bE]=nil continue end if bE:IsA(
'\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and bE.Enabled and not bw[bE]then local bF=bE:GetFullName()
local bG=bh(bE)local bH=bF:find('\067\104\101\115\116\078\111\100\101',1,true)or bF:find('\068\105\103\083\112\111\116',1,true)
if bH and bG and not bF:find('\067\117\116\083\099\101\110\101',1,true)and not bF:find('\068\117\110\103\101\111\110',1,true)
and not bv.GetRoot(bE)then local bI=bG.Position-bs local bJ=bI:Dot(bu)if bJ>=-30
and bI.Magnitude<=bj and bJ<bD then bB=bE bC=bG bD=bJ end end end end if not bB
then break end bw[bB]=true by(bC.Position+Vector3.new(0,3,0))if bB.Parent and bB
.Enabled and bc(bo)then fireproximityprompt(bB)bx+=1 a0('\082\111\116\097\032\100\101\032\098\097\u{fa}\115\058\032'..
bx..'\032\105\110\116\101\114\097\u{e7}\u{f5}\101\115\032\115\111\108\105\099\105\116\097\100\097\115\046','\067\104\101\115\116\032\114\111\117\116\101\058\032'..bx..
'\032\105\110\116\101\114\097\099\116\105\111\110\115\032\114\101\113\117\101\115\116\101\100\046')bd(bo,function()return not bB.Parent or not bB.
Enabled end,3)end end bp:Disconnect()assert(bc(bo),'\083\116\111\112\112\101\100')local bB=workspace:
FindFirstChild('\068\114\105\108\108')local bC=bB and(bB:FindFirstChild('\066\111\100\121')or bB.
PrimaryPart)assert(bC and bC:IsA('\066\097\115\101\080\097\114\116'),'\068\114\105\108\108\032\110\111\116\032\108\111\097\100\101\100\032\102\111\114\032\114\101\116\117\114\110')by(bC
.Position+Vector3.new(0,bC.Size.Y*0.5+4,0))a0(
'\082\111\116\097\032\099\111\110\099\108\117\u{ed}\100\097\059\032\114\101\116\111\114\110\111\032\u{e0}\032\098\114\111\099\097\046\032\073\110\116\101\114\097\u{e7}\u{f5}\101\115\058\032'..bx,
'\082\111\117\116\101\032\099\111\109\112\108\101\116\101\059\032\114\101\116\117\114\110\101\100\032\116\111\032\100\114\105\108\108\046\032\073\110\116\101\114\097\099\116\105\111\110\115\058\032'..bx)end)if bp then bp:
Disconnect()end if aR and aS==bo then if aL.release then aL.release()end aV=
false if not bq then a0('\082\111\116\097\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(br),'\082\111\117\116\101\032\115\116\111\112\112\101\100\058\032'..
tostring(br))end end end)end)task.spawn(function()while aR do if aU and not aV
and(not aL.acquire or aL.acquire())then local bo=aS local bp,bq=pcall(bg,bo)if
aS==bo then if aL.release then aL.release()end if not bp then a9()a0(
'\086\101\110\100\097\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(bq),'\083\101\108\108\105\110\103\032\115\116\111\112\112\101\100\058\032'..tostring(bq))end end
end task.wait(aU and not aV and 0.05 or 0.5)end end)return{stop=a9,cleanup=
function()aR=false a9()for bo,bp in ipairs(aT)do bp:Disconnect()end end}end
local function aK(aL,aM,aN,aO,aP)local aQ={}local aR={}local aS,aT,aU=0,0,0 for
aV,aW in ipairs(aL)do local aX,aY,aZ=aW.X+0.12,aW.Z+0.12,aW.Y+0.08 local a_=aP
and aP[aV]or tostring(aV)if aX>aM or aY>aN or aZ>aO then return nil,aV end local
a0 for a1,a2 in ipairs(aR)do if a2.group==a_ and aX<=a2.w and aY<=a2.d and a2.
used+aZ<=aO then a0=a2 break end end if not a0 then if aS+aX>aM then aS=0 aT+=aU
aU=0 end if aT+aY>aN then return nil,aV end a0={group=a_,x=aS+aX*0.5,z=aT+aY*0.5
,w=aX,d=aY,used=0}aR[#aR+1]=a0 aS+=aX aU=math.max(aU,aY)end aQ[aV]=Vector3.new(-
aM*0.5+a0.x,-aO*0.5+a0.used+aZ*0.5,-aN*0.5+a0.z)a0.used+=aZ end return aQ end
local function aL(aM,aN)local aO,aP=aM.ui,aM.T local aQ=game:GetService(
'\067\111\108\108\101\099\116\105\111\110\083\101\114\118\105\099\101')local aR=game:GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local aS=true
local aT=false local aU=0 local aV={}local aW={}local aX={}local aY={}local aZ={
}local a_ local a0=aM.section('\076\111\106\097')aO.label(a0,'\084\101\120\116\076\097\098\101\108',aP(
'\069\115\099\111\108\104\097\032\105\116\101\110\115\032\100\097\032\108\111\106\097\032\112\114\u{f3}\120\105\109\097\046\032\067\079\078\070\073\082\077\065\082\032\097\112\101\110\097\115\032\111\114\103\097\110\105\122\097\032\097\032\u{e1}\114\101\097\032\100\101\032\099\111\109\112\114\097\059\032\118\111\099\u{ea}\032\099\111\109\112\114\097\032\110\111\032\099\097\105\120\097\046\032\080\114\101\u{e7}\111\115\032\101\120\105\098\105\100\111\115\032\115\u{e3}\111\032\101\115\116\105\109\097\116\105\118\097\115\032\100\111\115\032\105\116\101\110\115\046'
,
"\083\101\108\101\099\116\032\110\101\097\114\098\121\032\115\104\111\112\032\105\116\101\109\115\046\032\067\079\078\070\073\082\077\032\111\110\108\121\032\115\116\097\103\101\115\032\116\104\101\032\112\117\114\099\104\097\115\101\032\097\114\101\097\059\032\121\111\117\032\098\117\121\032\097\116\032\116\104\101\032\114\101\103\105\115\116\101\114\046\032\068\105\115\112\108\097\121\101\100\032\112\114\105\099\101\115\032\097\114\101\032\105\116\101\109\032\101\115\116\105\109\097\116\101\115\046"
),80,1)local a1=aO.label(a0,'\084\101\120\116\076\097\098\101\108',aP(
'\065\112\114\111\120\105\109\101\045\115\101\032\100\097\032\108\111\106\097\032\101\032\099\097\114\114\101\103\117\101\032\111\115\032\105\116\101\110\115\046',
'\065\112\112\114\111\097\099\104\032\116\104\101\032\115\104\111\112\032\097\110\100\032\108\111\097\100\032\105\116\115\032\105\116\101\109\115\046'),62,2)local a2=aO.button(a0,aP(
'\067\097\114\114\101\103\097\114\032\105\116\101\110\115\032\100\097\032\108\111\106\097\032\112\114\u{f3}\120\105\109\097','\076\111\097\100\032\110\101\097\114\098\121\032\115\104\111\112\032\105\116\101\109\115'),3)local a3=aO.
button(a0,aP('\067\079\078\070\073\082\077\065\082\032\u{b7}\032\111\114\103\097\110\105\122\097\114\032\110\097\032\u{e1}\114\101\097\032\100\101\032\099\111\109\112\114\097',
'\067\079\078\070\073\082\077\032\u{b7}\032\115\116\097\103\101\032\105\110\032\112\117\114\099\104\097\115\101\032\097\114\101\097'),5)local a4=aO.button(a0,aP(
'\080\097\114\097\114\032\111\114\103\097\110\105\122\097\u{e7}\u{e3}\111','\083\116\111\112\032\115\116\097\103\105\110\103'),6)local function a5(a6,a7)aV[#aV+1
]=a6:Connect(a7)end local function a6(a7,a8)if aS then a1.Text=aP(a7,a8 or a7)
end end local function a7(a8,a9,ba)local bb=Instance.new(a8)for bc,bd in pairs(
a9)do bb[bc]=bd end bb.Parent=ba return bb end local function a8()for a9,ba in
ipairs(aW)do ba:Disconnect()end table.clear(aW)for a9,ba in ipairs(aX)do ba:
Destroy()end table.clear(aX)end local function a9()if aN.release then aN.
release()end aU+=1 aT=false end a5(a4.Activated,a9)local function ba(bb)return
bb:IsA('\066\097\115\101\080\097\114\116')and bb or bb:IsA('\077\111\100\101\108')and(bb.PrimaryPart or bb:
FindFirstChildWhichIsA('\066\097\115\101\080\097\114\116',true))end local function bb(bc,bd)local be,bf=
bd,nil for bg,bh in ipairs(aQ:GetTagged('\066\117\121\080\097\114\116'))do if bh:IsA('\066\097\115\101\080\097\114\116')and
bh:IsDescendantOf(workspace)and not bh:GetFullName():find('\067\117\116\083\099\101\110\101',1,true)then
local bi=(bc-bh.Position).Magnitude if bi<be then be=bi bf=bh end end end return
bf end local function bc()local bd,be=0,0 for bf,bg in ipairs(aY)do if aZ[bg.
item]then bd+=1 be+=bg.cost end end a6(string.format(aP(
'\083\101\108\101\099\105\111\110\097\100\111\115\058\032\037\100\032\u{b7}\032\069\115\116\105\109\097\116\105\118\097\058\032\037\100\032\111\117\114\111\046\032\079\032\099\097\105\120\097\032\099\111\110\102\105\114\109\097\032\111\032\112\114\101\u{e7}\111\032\102\105\110\097\108\046'
,'\083\101\108\101\099\116\101\100\058\032\037\100\032\u{b7}\032\069\115\116\105\109\097\116\101\058\032\037\100\032\103\111\108\100\046\032\082\101\103\105\115\116\101\114\032\099\111\110\102\105\114\109\115\032\116\104\101\032\102\105\110\097\108\032\112\114\105\099\101\046'),bd
,be))end a5(a2.Activated,function()if aT then return end local bd,be=pcall(
function()local bd,be=aN.actor()assert(be,aP('\080\101\114\115\111\110\097\103\101\109\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\046',
'\067\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101\046'))a_=bb(be.Position,150)assert(a_,aP(
'\078\101\110\104\117\109\097\032\u{e1}\114\101\097\032\100\101\032\099\111\109\112\114\097\032\099\097\114\114\101\103\097\100\097\032\097\032\097\116\u{e9}\032\049\053\048\032\115\116\117\100\115\046',
'\078\111\032\108\111\097\100\101\100\032\112\117\114\099\104\097\115\101\032\097\114\101\097\032\119\105\116\104\105\110\032\049\053\048\032\115\116\117\100\115\046'))local bf=aR:FindFirstChild('\083\104\097\114\101\100'
)local bg=bf and bf:FindFirstChild('\073\116\101\109\068\097\116\097\098\097\115\101')local bh=bg and require(bg)a8(
)aY={}aZ={}for bi,bj in ipairs(aQ:GetTagged('\083\104\111\112\073\116\101\109'))do local bk=ba(bj)if bk
and bj:IsDescendantOf(workspace)and bb(bk.Position,100)==a_ and not bj:
GetFullName():find('\067\117\116\083\099\101\110\101',1,true)then local bl=bj:GetAttribute('\067\111\115\116')or bh
and bh.GetAttribute(bj,'\067\111\115\116')if type(bl)=='\110\117\109\098\101\114'and bl==bl and bl>=0 and bl<
math.huge then aY[#aY+1]={item=bj,cost=bl,name=tostring(bj:GetAttribute(
'\068\105\115\112\108\097\121\078\097\109\101')or bh and bh.GetAttribute(bj,'\068\105\115\112\108\097\121\078\097\109\101')or bj.Name),icon=bh and
bh.GetAttribute(bj,'\073\099\111\110')or bj:GetAttribute('\073\099\111\110')}end end end table.sort(aY,
function(bi,bj)return bi.name<bj.name end)for bi,bj in ipairs(aY)do local bk=a7(
'\070\114\097\109\101',{Size=UDim2.new(1,-8,0,76),BackgroundColor3=Color3.fromRGB(20,29,43),
LayoutOrder=20+bi},a0)aX[#aX+1]=bk a7('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,10)},
bk)a7('\085\073\083\116\114\111\107\101',{Thickness=1,Color=Color3.fromRGB(75,115,155),Transparency=0.25
},bk)a7('\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromOffset(48,48),Position=UDim2.fromOffset(10,
12),BackgroundTransparency=1,Image=type(bj.icon)=='\115\116\114\105\110\103'and bj.icon or''},bk)
local bl,bm=aO.checkbox(bk,bj.name..'\032\u{b7}\032'..bj.cost..aP('\032\111\117\114\111','\032\103\111\108\100'),1)
bl.Position=UDim2.fromOffset(66,10)bl.Size=UDim2.new(1,-76,0,56)aW[#aW+1]=bl.
Activated:Connect(function()if aT then return end aZ[bj.item]=not aZ[bj.item]bm(
aZ[bj.item])bc()end)end bc()if#aY==0 then a6(
'\078\101\110\104\117\109\032\105\116\101\109\032\099\111\109\032\112\114\101\u{e7}\111\032\100\105\115\112\111\110\u{ed}\118\101\108\032\110\101\115\116\097\032\108\111\106\097\046',
'\078\111\032\112\114\105\099\101\100\032\105\116\101\109\115\032\097\118\097\105\108\097\098\108\101\032\105\110\032\116\104\105\115\032\115\104\111\112\046')end end)if not bd then a6(tostring(be)
)end end)a5(a3.Activated,function()if aT then return end if aN.acquire and not
aN.acquire()then a6('\079\117\116\114\097\032\116\097\114\101\102\097\032\101\115\116\u{e1}\032\117\115\097\110\100\111\032\111\032\109\111\118\105\109\101\110\116\111\046\032\065\103\117\097\114\100\101\046',
'\065\110\111\116\104\101\114\032\116\097\115\107\032\105\115\032\117\115\105\110\103\032\109\111\118\101\109\101\110\116\046\032\080\108\101\097\115\101\032\119\097\105\116\046')return end aT=true aU+=1 local bd
=aU task.spawn(function()local be,bf=pcall(function()assert(a_ and a_.Parent,
'\082\101\108\111\097\100\032\116\104\101\032\115\104\111\112\032\102\105\114\115\116')local be={}for bf,bg in ipairs(aY)do if aZ[bg.item]then
assert(bg.item:IsDescendantOf(workspace)and aQ:HasTag(bg.item,'\083\104\111\112\073\116\101\109'),
'\083\116\111\099\107\032\099\104\097\110\103\101\100\059\032\114\101\108\111\097\100\032\115\104\111\112')local bh,bi if bg.item:IsA('\077\111\100\101\108')then bh,bi=bg.
item:GetBoundingBox()else bh,bi=bg.item.CFrame,bg.item.Size end be[#be+1]={item=
bg.item,cf=bh,size=bi,group=tostring(bg.item:GetAttribute('\073\116\101\109\068\097\116\097\098\097\115\101\073\100')or bg
.item.Name)}end end assert(#be>0,aP('\083\101\108\101\099\105\111\110\101\032\097\111\032\109\101\110\111\115\032\117\109\032\105\116\101\109\046',
'\083\101\108\101\099\116\032\097\116\032\108\101\097\115\116\032\111\110\101\032\105\116\101\109\046'))table.sort(be,function(bf,bg)return bf.size.X*bf.
size.Z>bg.size.X*bg.size.Z end)local bf,bg={},{}for bh,bi in ipairs(be)do bf[#bf
+1]=bi.size bg[#bg+1]=bi.group end local bh=aK(bf,a_.Size.X-0.4,a_.Size.Z-0.4,a_
.Size.Y-0.1,bg)assert(bh,aP(
'\083\101\108\101\u{e7}\u{e3}\111\032\110\u{e3}\111\032\099\097\098\101\032\110\111\032\113\117\097\100\114\097\100\111\046\032\079\114\103\097\110\105\122\101\032\101\109\032\108\111\116\101\115\032\109\101\110\111\114\101\115\046',
'\083\101\108\101\099\116\105\111\110\032\100\111\101\115\032\110\111\116\032\102\105\116\032\116\104\101\032\115\113\117\097\114\101\046\032\083\116\097\103\101\032\115\109\097\108\108\101\114\032\098\097\116\099\104\101\115\046'))local bi,bj=aN.
actor()assert(bj and(bj.Position-a_.Position).Magnitude<=150,
'\065\112\112\114\111\097\099\104\032\116\104\101\032\115\104\111\112\032\102\105\114\115\116')for bk,bl in ipairs(be)do assert(aS and aU==bd,
'\083\116\111\112\112\101\100')local bm=aN.actor()local bn=ba(bl.item)assert(bm and bn and a_.Parent,
'\073\116\101\109\047\099\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101')bm:PivotTo(bn.CFrame*CFrame.new(0,3,4))task.wait(
0.2)assert(aS and aU==bd,'\083\116\111\112\112\101\100')local bo=aN.await(aN.service('\068\114\097\103\083\101\114\118\105\099\101'):
Request(bl.item))if not aS or aU~=bd then if bo then pcall(function()aN.service(
'\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)end error('\083\116\111\112\112\101\100')end assert(bo==true,aP(
'\079\032\106\111\103\111\032\114\101\099\117\115\111\117\032\109\111\118\101\114\032\117\109\032\105\116\101\109\046\032\079\114\103\097\110\105\122\097\u{e7}\u{e3}\111\032\105\110\116\101\114\114\111\109\112\105\100\097\046',
'\071\097\109\101\032\114\101\102\117\115\101\100\032\116\111\032\109\111\118\101\032\097\110\032\105\116\101\109\046\032\083\116\097\103\105\110\103\032\115\116\111\112\112\101\100\046'))local bp,bq=pcall(function()
assert(a_.Parent and bl.item.Parent,'\083\116\111\099\107\032\117\110\108\111\097\100\101\100')bm:PivotTo(a_.CFrame*CFrame
.new(a_.Size.X*0.5+4,1,0))local bp=a_.CFrame*CFrame.new(bh[bk])local bq=bl.cf:
ToObjectSpace(bl.item:GetPivot())bl.item:PivotTo(bp*bq)task.wait(0.3)end)pcall(
function()aN.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)assert(bp,bq)assert(aS and
aU==bd,'\083\116\111\112\112\101\100')a6(string.format(aP(
'\079\114\103\097\110\105\122\097\110\100\111\058\032\037\100\047\037\100\046\032\078\101\110\104\117\109\097\032\099\111\109\112\114\097\032\114\101\097\108\105\122\097\100\097\046',
'\083\116\097\103\105\110\103\058\032\037\100\047\037\100\046\032\078\111\032\112\117\114\099\104\097\115\101\032\109\097\100\101\046'),bk,#be))end a6(
'\073\116\101\110\115\032\112\111\115\105\099\105\111\110\097\100\111\115\046\032\067\111\110\102\105\114\097\032\111\032\113\117\097\100\114\097\100\111\032\101\032\111\032\112\114\101\u{e7}\111\032\110\111\032\099\097\105\120\097\059\032\099\108\105\113\117\101\032\067\079\077\080\082\065\082\032\110\111\032\106\111\103\111\046'
,"\073\116\101\109\115\032\112\111\115\105\116\105\111\110\101\100\046\032\067\104\101\099\107\032\116\104\101\032\115\113\117\097\114\101\032\097\110\100\032\114\101\103\105\115\116\101\114\032\112\114\105\099\101\059\032\099\108\105\099\107\032\066\085\089\032\105\110\032\103\097\109\101\046")
end)if aS and aU==bd then if aN.release then aN.release()end aT=false if not be
then a6('\079\114\103\097\110\105\122\097\u{e7}\u{e3}\111\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(bf),'\083\116\097\103\105\110\103\032\115\116\111\112\112\101\100\058\032'
..tostring(bf))end end end)end)return{stop=a9,cleanup=function()aS=false a9()a8(
)for bd,be in ipairs(aV)do be:Disconnect()end end}end local function aM(aN,aO)
local aP,aQ=aN.ui,aN.T local aR=true local aS=false local aT={}local aU={}local
aV=false local aW=aN.section('\077\105\115\115\111\101\115')local aX=aP.label(aW,'\084\101\120\116\076\097\098\101\108',aQ(
'\080\114\111\103\114\101\115\115\111\032\114\101\097\108\032\100\097\115\032\109\105\115\115\u{f5}\101\115\032\100\105\u{e1}\114\105\097\115\032\101\032\100\097\032\099\108\097\115\115\101\046\032\079\032\114\101\115\103\097\116\101\032\097\117\116\111\109\u{e1}\116\105\099\111\032\115\u{f3}\032\115\111\108\105\099\105\116\097\032\114\101\099\111\109\112\101\110\115\097\115\032\106\u{e1}\032\099\111\110\099\108\117\u{ed}\100\097\115\046'
,
"\065\099\116\117\097\108\032\100\097\105\108\121\032\097\110\100\032\099\108\097\115\115\032\113\117\101\115\116\032\112\114\111\103\114\101\115\115\046\032\065\117\116\111\032\099\108\097\105\109\032\111\110\108\121\032\114\101\113\117\101\115\116\115\032\097\108\114\101\097\100\121\045\101\097\114\110\101\100\032\114\101\119\097\114\100\115\046"
),75,1)local aY=aP.button(aW,aQ('\065\116\117\097\108\105\122\097\114\032\109\105\115\115\u{f5}\101\115','\082\101\102\114\101\115\104\032\113\117\101\115\116\115'),2)
local aZ,a_=aP.checkbox(aW,aQ('\065\117\116\111\032\114\101\115\103\097\116\097\114\032\100\105\u{e1}\114\105\097\115\032\099\111\110\099\108\117\u{ed}\100\097\115',
'\065\117\116\111\032\099\108\097\105\109\032\099\111\109\112\108\101\116\101\100\032\100\097\105\108\121\032\113\117\101\115\116\115'),3)local function a0(a1,a2)aT[#aT+1]=a1:
Connect(a2)end local a1={MineCoal='\077\105\110\101\114\101\032\037\115\032\099\097\114\118\u{e3}\111',MineDiamond=
'\077\105\110\101\114\101\032\037\115\032\100\105\097\109\097\110\116\101\115',MineRuby='\077\105\110\101\114\101\032\037\115\032\114\117\098\105\115',MineOres=
'\077\105\110\101\114\101\032\037\115\032\109\105\110\u{e9}\114\105\111\115',MineGems='\077\105\110\101\114\101\032\037\115\032\103\101\109\097\115',TotalDepth=
'\080\114\111\102\117\110\100\105\100\097\100\101\032\097\099\117\109\117\108\097\100\097\058\032\037\115',EnemyKills='\068\101\114\114\111\116\101\032\037\115\032\105\110\105\109\105\103\111\115',GoblinKills=
'\068\101\114\114\111\116\101\032\037\115\032\103\111\098\108\105\110\115',OpenChest='\065\098\114\097\032\037\115\032\098\097\u{fa}\115',CollectScrap=
'\067\111\108\101\116\101\032\037\115\032\115\117\099\097\116\097\115',DestroyWall='\068\101\115\116\114\117\097\032\037\115\032\112\097\114\101\100\101\115',CompleteDungeon=
'\067\111\110\099\108\117\097\032\037\115\032\068\117\110\103\101\111\110\115',HealAmount='\082\101\099\117\112\101\114\101\032\037\115\032\100\101\032\118\105\100\097',FindChurches=
'\069\110\099\111\110\116\114\101\032\037\115\032\105\103\114\101\106\097\115',HeadShot='\065\099\101\114\116\101\032\037\115\032\116\105\114\111\115\032\110\097\032\099\097\098\101\u{e7}\097'}local function
a2()for a3,a4 in ipairs(aU)do a4:Destroy()end table.clear(aU)end local function
a3()if aV then return end aV=true local a4,a5=pcall(function()local a4=game:
GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101'):FindFirstChild('\083\104\097\114\101\100')assert(a4,
'\081\117\101\115\116\032\100\097\116\097\032\117\110\097\118\097\105\108\097\098\108\101')local a5=require(a4:FindFirstChild('\081\117\101\115\116\068\097\116\097'))local
a6=require(a4:FindFirstChild('\067\108\097\115\115\067\097\116\097\108\111\103'))local a7=aO.await(aO.service(
'\081\117\101\115\116\083\101\114\118\105\099\101'):FetchQuests())local a8=aO.await(aO.service('\067\108\097\115\115\083\101\114\118\105\099\101'):
GetClasses())if not aR then return end a2()local a9=10 local function ba(bb,bc,
bd,be,bf)be=be or{}bb=tostring(bb or'\081\117\101\115\116')local bg=aQ(a1[bb]or be[bb]or bb,be[
bb]or bb)local bh,bi=pcall(string.format,bg,tostring(bd))if not bh then bi=bb
end local bj=aP.label(aW,'\084\101\120\116\076\097\098\101\108',bi..'\n'..tostring(bc)..'\032\047\032'..tostring(bd)
..(bf or''),65,a9)a9+=1 aU[#aU+1]=bj end for bb,bc in pairs(type(a7)=='\116\097\098\108\101'and
a7.Quests or{})do local bd=tonumber(bc.Progress)or 0 local be=tonumber(bc.Amount
)or math.huge ba(bc.Objective,bd,be,a5.ObjectiveStrings,aQ('\032\u{b7}\032\068\105\u{e1}\114\105\097'
,'\032\u{b7}\032\068\097\105\108\121'))if aS and not bc.Claimed and bd>=be then local bf=aO.ctrl(
'\081\117\101\115\116\067\111\110\116\114\111\108\108\101\114')local bg=bf and bf.DailyQuests and bf.DailyQuests:
FindFirstChild(bb)if bg and aR and aS then aO.await(aO.service('\081\117\101\115\116\083\101\114\118\105\099\101'):
ClaimQuestReward(bg))end end end if type(a8)=='\116\097\098\108\101'then local bb=a8.
SelectedClass local bc=a8.ClassProgress and a8.ClassProgress[bb]local bd=a6[bb]
if bc and bd then for be,bf in pairs((bd.Requirements or{})[(tonumber(bc.Level)
or 0)+1]or{})do ba(be,(bc.Objectives or{})[be]or 0,bf,a6.ObjectiveStrings,
'\032\u{b7}\032'..tostring(bb))end end end aX.Text=aQ(
'\080\114\111\103\114\101\115\115\111\032\099\111\110\115\117\108\116\097\100\111\032\110\111\032\106\111\103\111\046\032\079\098\106\101\116\105\118\111\115\032\100\101\032\100\105\115\116\u{e2}\110\099\105\097\032\101\120\105\103\101\109\032\112\114\111\103\114\101\115\115\111\032\114\101\097\108\032\100\097\032\098\114\111\099\097\046'
,
"\080\114\111\103\114\101\115\115\032\114\101\097\100\032\102\114\111\109\032\116\104\101\032\103\097\109\101\046\032\068\105\115\116\097\110\099\101\032\111\098\106\101\099\116\105\118\101\115\032\114\101\113\117\105\114\101\032\097\099\116\117\097\108\032\100\114\105\108\108\032\112\114\111\103\114\101\115\115\046"
)end)aV=false if aR and not a4 then aX.Text=aQ(
'\077\105\115\115\u{f5}\101\115\032\105\110\100\105\115\112\111\110\u{ed}\118\101\105\115\058\032','\081\117\101\115\116\115\032\117\110\097\118\097\105\108\097\098\108\101\058\032')..tostring(a5)end end
a0(aY.Activated,function()task.spawn(a3)end)a0(aZ.Activated,function()aS=not aS
a_(aS)end)task.spawn(function()while aR do if aS then a3()end task.wait(15)end
end)return{stop=function()aS=false a_(false)end,cleanup=function()aR=false aS=
false a2()for a4,a5 in ipairs(aT)do a5:Disconnect()end end}end local function aN
(aO,aP)local aQ,aR=aO.ui,aO.T local aS=game:GetService('\080\108\097\121\101\114\115').LocalPlayer
local aT=game:GetService('\076\105\103\104\116\105\110\103')local aU=game:GetService('\067\111\108\108\101\099\116\105\111\110\083\101\114\118\105\099\101'
)local aV=true local aW=0 local aX={}local aY={}local aZ={}local a_=2 local a0=6
local a1={Coal=true}local a2=1500 local a3=aO.section('\070\097\114\109')local a4=aO.
section('\065\106\117\115\116\101\115')local a5=aO.section('\067\111\109\098\097\116\101')local a6=aQ.label(a3,'\084\101\120\116\076\097\098\101\108'
,aR('\077\105\110\101\114\097\u{e7}\u{e3}\111\032\101\032\112\114\111\116\101\u{e7}\u{e3}\111\058\032\112\097\114\097\100\097\115\046',
'\077\105\110\105\110\103\032\097\110\100\032\112\114\111\116\101\099\116\105\111\110\058\032\115\116\111\112\112\101\100\046'),55,70)local function a7(a8,a9)aX[#aX+1]=a8:
Connect(a9)end local function a8(a9,ba,bb,bc,bd)aY[ba]=false local be,bf=aQ.
checkbox(a9,aR(bb,bc),bd)aZ[ba]=bf a7(be.Activated,function()aY[ba]=not aY[ba]
bf(aY[ba])end)end local function a9(ba,bb,bc,bd,be,bf,bg,bh)aQ.label(ba,
'\084\101\120\116\076\097\098\101\108',aR(bc,bd),30,be)local bi=aQ.label(ba,'\084\101\120\116\066\111\120',tostring(bb),40,be+1)
a7(bi.FocusLost,function()local bj=tonumber(bi.Text)if bj and bj==bj and math.
abs(bj)<math.huge then bb=math.clamp(bj,bf,bg)bh(bb)end bi.Text=tostring(bb)end)
end a8(a4,'\098\114\105\103\104\116','\070\117\108\108\098\114\105\103\104\116','\070\117\108\108\098\114\105\103\104\116',70)a9(a4,a_,
'\073\110\116\101\110\115\105\100\097\100\101\032\100\111\032\070\117\108\108\098\114\105\103\104\116\032\040\048\u{2013}\053\041','\070\117\108\108\098\114\105\103\104\116\032\105\110\116\101\110\115\105\116\121\032\040\048\u{2013}\053\041',71,
0,5,function(ba)a_=ba end)local ba local function bb()if ba then for bc,bd in
pairs(ba)do aT[bc]=bd end ba=nil end end a8(a3,'\109\105\110\101',
'\065\117\116\111\032\077\105\110\101\032\u{b7}\032\109\105\110\u{e9}\114\105\111\115\032\115\101\108\101\099\105\111\110\097\100\111\115','\065\117\116\111\032\077\105\110\101\032\u{b7}\032\115\101\108\101\099\116\101\100\032\111\114\101\115',
71)aQ.label(a3,'\084\101\120\116\076\097\098\101\108',aR(
'\070\111\114\097\032\100\097\032\068\117\110\103\101\111\110\058\032\118\105\115\105\116\097\032\111\032\109\105\110\u{e9}\114\105\111\044\032\117\115\097\032\097\032\112\105\099\097\114\101\116\097\044\032\116\101\110\116\097\032\114\101\099\111\108\104\101\114\032\111\115\032\102\114\097\103\109\101\110\116\111\115\032\101\032\118\111\108\116\097\032\u{e0}\032\098\114\111\099\097\046\032\080\097\114\101\032\112\097\114\097\032\105\110\116\101\114\114\111\109\112\101\114\046'
,
"\079\117\116\115\105\100\101\032\068\117\110\103\101\111\110\115\058\032\118\105\115\105\116\115\032\111\114\101\044\032\117\115\101\115\032\112\105\099\107\097\120\101\044\032\097\116\116\101\109\112\116\115\032\116\111\032\099\111\108\108\101\099\116\032\102\114\097\103\109\101\110\116\115\032\097\110\100\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\100\114\105\108\108\046\032\083\116\111\112\032\116\111\032\105\110\116\101\114\114\117\112\116\046"
),65,72)local bc={{'\067\111\097\108','\067\097\114\118\u{e3}\111'},{'\073\114\111\110','\070\101\114\114\111'},{'\071\111\108\100','\079\117\114\111'},{
'\068\105\097\109\111\110\100','\068\105\097\109\097\110\116\101'},{'\069\109\101\114\097\108\100','\069\115\109\101\114\097\108\100\097'},{'\082\117\098\121','\082\117\098\105'},{'\086\111\105\100\067\111\097\108',
'\067\097\114\118\u{e3}\111\032\100\111\032\118\097\122\105\111'}}for bd,be in ipairs(bc)do local bf,bg=aQ.checkbox(a3,aR(
be[2],be[1]),73+bd)bg(a1[be[1] ]==true)a7(bf.Activated,function()a1[be[1] ]=not
a1[be[1] ]bg(a1[be[1] ])end)end a9(a3,a2,
'\065\108\099\097\110\099\101\032\100\097\032\109\105\110\101\114\097\u{e7}\u{e3}\111\032\040\115\116\117\100\115\041','\077\105\110\105\110\103\032\115\101\097\114\099\104\032\114\097\110\103\101\032\040\115\116\117\100\115\041',82,20,
10000,function(bd)a2=bd end)a8(a3,'\097\114\109\111\114',
'\065\117\116\111\032\112\114\111\116\101\u{e7}\u{e3}\111\032\100\097\032\099\097\098\105\110\101\032\u{b7}\032\083\104\101\101\116\077\101\116\097\108',
'\065\117\116\111\032\099\097\098\105\110\032\112\114\111\116\101\099\116\105\111\110\032\u{b7}\032\083\104\101\101\116\077\101\116\097\108',85)local bd=aQ.button(a3,aR('\080\108\097\099\097\115\058\032'
,'\080\108\097\116\101\115\058\032')..a0,86)a7(bd.Activated,function()a0=a0==4 and 6 or a0==6 and 8 or 4
bd.Text=aR('\080\108\097\099\097\115\058\032','\080\108\097\116\101\115\058\032')..a0 end)aQ.label(a3,'\084\101\120\116\076\097\098\101\108',aR(
'\085\115\097\032\112\108\097\099\097\115\032\115\111\108\116\097\115\032\112\114\u{f3}\120\105\109\097\115\032\100\097\032\098\114\111\099\097\032\101\032\115\111\108\105\099\105\116\097\032\097\110\101\120\097\u{e7}\u{e3}\111\046\032\065\032\099\111\108\105\115\u{e3}\111\032\101\032\097\032\112\114\111\116\101\u{e7}\u{e3}\111\032\100\101\112\101\110\100\101\109\032\100\111\032\106\111\103\111\059\032\110\u{e3}\111\032\099\114\105\097\032\105\110\118\117\108\110\101\114\097\098\105\108\105\100\097\100\101\046'
,
"\085\115\101\115\032\108\111\111\115\101\032\112\108\097\116\101\115\032\110\101\097\114\032\116\104\101\032\100\114\105\108\108\032\097\110\100\032\114\101\113\117\101\115\116\115\032\097\116\116\097\099\104\109\101\110\116\046\032\067\111\108\108\105\115\105\111\110\032\097\110\100\032\112\114\111\116\101\099\116\105\111\110\032\100\101\112\101\110\100\032\111\110\032\116\104\101\032\103\097\109\101\059\032\100\111\101\115\032\110\111\116\032\103\114\097\110\116\032\105\109\109\117\110\105\116\121\046"
),65,88)a8(a5,'\115\109\097\114\116','\067\111\109\098\097\116\101\032\105\110\116\101\108\105\103\101\110\116\101\032\u{b7}\032\105\110\105\109\105\103\111\115\032\100\101\032\112\101\100\114\097',
'\083\109\097\114\116\032\099\111\109\098\097\116\032\u{b7}\032\115\116\111\110\101\032\101\110\101\109\105\101\115',70)aQ.label(a5,'\084\101\120\116\076\097\098\101\108',aR(
'\080\114\105\111\114\105\122\097\032\105\110\105\109\105\103\111\115\032\100\101\032\112\101\100\114\097\032\112\114\u{f3}\120\105\109\111\115\058\032\101\115\112\097\100\097\032\100\111\032\118\097\122\105\111\044\032\111\117\032\112\105\099\097\114\101\116\097\059\032\100\101\112\111\105\115\032\114\101\115\116\097\117\114\097\032\097\032\097\114\109\097\032\097\110\116\101\114\105\111\114\046'
,
"\080\114\105\111\114\105\116\105\122\101\115\032\110\101\097\114\098\121\032\115\116\111\110\101\032\101\110\101\109\105\101\115\058\032\086\111\105\100\032\083\119\111\114\100\044\032\111\116\104\101\114\119\105\115\101\032\112\105\099\107\097\120\101\059\032\114\101\115\116\111\114\101\115\032\116\104\101\032\112\114\101\118\105\111\117\115\032\119\101\097\112\111\110\032\097\102\116\101\114\119\097\114\100\115\046"
),60,71)local function be(bf)return bf and(bf:IsA('\066\097\115\101\080\097\114\116')and bf or bf:IsA(
'\077\111\100\101\108')and(bf.PrimaryPart or bf:FindFirstChildWhichIsA('\066\097\115\101\080\097\114\116',true)))end
local function bf()local bg=aP.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')return bg and bg.ActiveTool
end local function bg(bh)return aV and aW==bh and aP.actor()~=nil end local
function bh()local bi=workspace:FindFirstChild('\068\114\105\108\108')return bi,bi and be(bi:
FindFirstChild('\066\111\100\121')or bi)end local function bi(bj)local bk,bl=bh()local bm=aP
.actor()if bg(bj)and bl and bm then bm:PivotTo(bl.CFrame*CFrame.new(0,bl.Size.Y/
2+4,0))end end local function bj()for bk,bl in ipairs({'\080\105\099\107\097\120\101\095\086\111\105\100',
'\080\105\099\107\097\120\101\095\080\104\111\101\110\105\120','\080\105\099\107\097\120\101\095\068\105\097\109\111\110\100','\080\105\099\107\097\120\101\095\071\111\108\100','\080\105\099\107\097\120\101\095\083\116\101\101\108',
'\080\105\099\107\097\120\101\095\080\114\111\115\112\101\099\116\111\114','\080\105\099\107\097\120\101\095\082\117\115\116\121','\080\105\099\107\097\120\101\095\087\111\111\100\101\110'})do if aP.equip(bl)then
return true end end return false end local function bk(bl)local bm=tostring(bl:
GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101')or bl:GetAttribute('\082\101\097\108\078\097\109\101')or bl.Name):lower():
gsub('\091\094\037\097\093','')if bm:find('\118\111\105\100\099\111\097\108',1,true)then return'\086\111\105\100\067\111\097\108'end for bn,bo
in ipairs(bc)do if bm:find(bo[1]:lower(),1,true)then return bo[1]end end end
local bl=setmetatable({},{__mode='\107'})local function bm(bn)if aS:GetAttribute(
'\073\110\068\117\110\103\101\111\110')==true or workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')then return end local
bo,bp,bq=aP.actor()if not bp or bq.SeatPart then return end local br,bs=bh()if
not bs then return end local bu,bv=nil,a2 for bw,bx in ipairs(aU:GetTagged('\079\114\101'
))do local by=be(bx)local bz=bk(bx)if by and bx:IsDescendantOf(workspace)and a1[
bz]and(not bl[bx]or os.clock()>bl[bx])then local bA=(by.Position-bp.Position).
Magnitude if bA<bv then bu=bx bv=bA end end end if not bu then return end local
bw=bf()local bx=bw and bw.Tool and bw.Tool.Name if not bj()then a6.Text=aR(
'\065\117\116\111\032\077\105\110\101\058\032\112\105\099\097\114\101\116\097\032\110\u{e3}\111\032\101\110\099\111\110\116\114\097\100\097\032\110\097\032\098\097\114\114\097\046',
'\065\117\116\111\032\077\105\110\101\058\032\110\111\032\112\105\099\107\097\120\101\032\102\111\117\110\100\032\105\110\032\104\111\116\098\097\114\046')return end task.wait(0.5)if not bg(bn)
or not aY.mine then return end local by=be(bu)if not by then return end local bz
=by.Position local bA=bk(bu)local bB=aP.actor()bB:PivotTo(CFrame.lookAt(bz+
Vector3.new(0,2,5),bz))local bC=os.clock()+25 while bg(bn)and aY.mine and bu:
IsDescendantOf(workspace)and os.clock()<bC do local bD=bf()if not(bD and bD.Tool
and bD.Tool.Name:find('\080\105\099\107\097\120\101',1,true)and type(bD.Swing)=='\102\117\110\099\116\105\111\110')then break
end local bE=bu:GetAttribute('\072\101\097\108\116\104')if type(bE)=='\110\117\109\098\101\114'and bE<=0 then break
end bD:Swing()task.wait(0.2)end if not bg(bn)or not aY.mine then return end bl[
bu]=os.clock()+30 task.wait(0.5)local bD=workspace:FindFirstChild('\073\116\101\109\115')local
bE=0 for bF,bG in ipairs(bD and bD:GetChildren()or{})do local bH=be(bG)if bH and
bk(bG)==bA and(bH.Position-bz).Magnitude<=20 and bG:GetAttribute('\067\097\116\101\103\111\114\121')~=
'\067\111\114\112\115\101'and bG:GetAttribute('\067\111\114\112\115\101\077\097\120\072\101\097\108\116\104')==nil and not aU:HasTag(bG,
'\083\104\111\112\073\116\101\109')then if not bg(bn)or not aY.mine then break end bB:PivotTo(bH.CFrame*
CFrame.new(0,2,3))if aP.await(aP.service('\067\097\114\114\121\073\110\118\101\110\116\111\114\121\083\101\114\118\105\099\101'):Pickup(bG))==
true then bE+=1 end end end bi(bn)if bx and bg(bn)then aP.equip(bx)end a6.Text=
aR('\077\105\110\101\114\097\u{e7}\u{e3}\111\032\099\111\110\099\108\117\u{ed}\100\097\059\032\105\116\101\110\115\032\114\101\099\111\108\104\105\100\111\115\058\032',
'\077\105\110\105\110\103\032\112\097\115\115\032\102\105\110\105\115\104\101\100\059\032\099\111\108\108\101\099\116\101\100\032\105\116\101\109\115\058\032')..bE end local bn=setmetatable({},{
__mode='\107'})local bp local function bq(br)if aS:GetAttribute('\073\110\068\117\110\103\101\111\110')==true
or workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')then return end local bs,bu=bh()local bv,
bw,bx=aP.actor()if not bu or not bw or bx.SeatPart then return end if bp~=bs
then table.clear(bn)bp=bs end local by=0 for bz in pairs(bn)do if bz.Parent and
bz:GetAttribute('\087\101\108\100\101\100')==true then by+=1 else bn[bz]=nil end end if by>=a0
then return end local bz=bs:FindFirstChildWhichIsA('\086\101\104\105\099\108\101\083\101\097\116',true)if not bz
then return end local bA=workspace:FindFirstChild('\073\116\101\109\115')local bB={}for bC,bD
in ipairs(bA and bA:GetChildren()or{})do local bE=be(bD)if bE and(bD.Name==
'\083\104\101\101\116\077\101\116\097\108'or bD:GetAttribute('\073\116\101\109\068\097\116\097\098\097\115\101\073\100')=='\083\104\101\101\116\077\101\116\097\108')and not bD:
GetAttribute('\087\101\108\100\101\100')and not aU:HasTag(bD,'\083\104\111\112\073\116\101\109')and(bE.Position-bu.
Position).Magnitude<60 then bB[#bB+1]=bD end end if#bB<a0-by then a6.Text=aR(
'\080\114\111\116\101\u{e7}\u{e3}\111\058\032\097\103\117\097\114\100\097\110\100\111\032\112\108\097\099\097\115\032\115\111\108\116\097\115\032\112\114\u{f3}\120\105\109\097\115\032\100\097\032\098\114\111\099\097\046',
'\080\114\111\116\101\099\116\105\111\110\058\032\119\097\105\116\105\110\103\032\102\111\114\032\108\111\111\115\101\032\112\108\097\116\101\115\032\110\101\097\114\032\116\104\101\032\100\114\105\108\108\046')return end for bC=1,a0-by
do if not bg(br)or not aY.armor then break end local bD=bB[bC]local bE=be(bD)bv:
PivotTo(bE.CFrame*CFrame.new(0,3,3))local bF=aP.await(aP.service('\068\114\097\103\083\101\114\118\105\099\101'):
Request(bD))if bF==true then local bG,bH=pcall(function()assert(bg(br)and aY.
armor,'\083\116\111\112\112\101\100')local bG=by+bC-1 local bH=bG%4 local bI=math.floor(bG/4)local bJ
,bK if bD:IsA('\077\111\100\101\108')then bJ,bK=bD:GetBoundingBox()else bJ,bK=bD.CFrame,bD.Size
end local bL=CFrame.new()if bK.Y<=bK.X and bK.Y<=bK.Z then bL=CFrame.Angles(math
.pi/2,0,0)elseif bK.X<=bK.Z then bL=CFrame.Angles(0,math.pi/2,0)end local bM=
math.abs(bL.RightVector.Y)*bK.X+math.abs(bL.UpVector.Y)*bK.Y+math.abs(bL.
LookVector.Y)*bK.Z local bN=bz.CFrame:PointToObjectSpace(bu.CFrame:
PointToWorldSpace(Vector3.new(0,bu.Size.Y/2,0))).Y local bO=a0>4 and(bI==0 and-1
or 1)*1.25 or 0 local bP=bH*math.pi/2 local bQ=bz.CFrame*CFrame.Angles(0,bP,0)*
CFrame.new(bO,bN+bM/2-0.1,-3)bv:PivotTo(bz.CFrame*CFrame.new(0,5,5))bD:PivotTo(
bQ*bL*bJ:ToObjectSpace(bD:GetPivot()))task.wait(0.35)assert(bg(br)and aY.armor,
'\083\116\111\112\112\101\100')aP.await(aP.service('\068\114\097\103\083\101\114\118\105\099\101'):Weld(bD))task.wait(0.2)if bD:
GetAttribute('\087\101\108\100\101\100')==true then bn[bD]=true end end)pcall(function()aP.
service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)if not bG then error(bH)end end end bi(
br)local bC=0 for bD in pairs(bn)do if bD.Parent and bD:GetAttribute('\087\101\108\100\101\100')==
true then bC+=1 end end a6.Text=aR('\080\108\097\099\097\115\032\099\111\109\032\097\110\101\120\097\u{e7}\u{e3}\111\032\099\111\110\102\105\114\109\097\100\097\058\032',
'\080\108\097\116\101\115\032\119\105\116\104\032\099\111\110\102\105\114\109\101\100\032\097\116\116\097\099\104\109\101\110\116\058\032')..bC..'\032\047\032'..a0 end local br local bs=false
local bu local function bv()if bs and br and br~=''and aP.actor()then aP.equip(
br)end br=nil bs=false bu=nil end local function bw()if not aY.smart then bv()
return end if aP.movementBusy()or workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')then
return end local bx,by,bz=aP.actor()if not by or bz.SeatPart then return end
local bA=workspace:FindFirstChild('\078\112\099')local bB,bC=nil,24 for bD,bE in ipairs(
bA and bA:GetChildren()or{})do local bF=bE:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')
local bG=be(bE)local bH=tostring(bE:GetAttribute('\082\101\097\108\078\097\109\101')or bE.Name):lower()
local bI=tostring(bE:GetAttribute('\077\117\116\097\116\105\111\110\115')or''):lower()local bJ=bH:find(
'\115\116\111\110\101',1,true)or bH:find('\114\111\099\107',1,true)or bE:GetAttribute('\077\097\116\101\114\105\097\108')=='\083\116\111\110\101'
or bI:find('\115\116\111\110\101',1,true)if bJ and bF and bF.Health>0 and bG and bE:
GetAttribute('\070\114\105\101\110\100\108\121')~=true and bE:GetAttribute('\078\112\099\070\097\099\116\105\111\110')~=
'\070\114\105\101\110\100\108\121\067\111\109\112\097\110\105\111\110'then local bK=(bG.Position-by.Position).Magnitude if bK<bC
then bB=bG bC=bK end end end if not bB then bv()return end bu=bB local bD=bf()
local bE=bD and bD.Tool and bD.Tool.Name or''if not br then br=bE end if not bs
then if bE~='\083\119\111\114\100\095\086\111\105\100'then if not aP.equip('\083\119\111\114\100\095\086\111\105\100')then bj()end end bs=
true return end if bD and(bE=='\083\119\111\114\100\095\086\111\105\100'or bE:find('\080\105\099\107\097\120\101',1,true))and type(
bD.Swing)=='\102\117\110\099\116\105\111\110'then bx:PivotTo(CFrame.lookAt(by.Position,Vector3.new(bB.
Position.X,by.Position.Y,bB.Position.Z)))bD:Swing()end end local function bx()aW
+=1 for by in pairs(aY)do aY[by]=false aZ[by](false)end bb()bv()end task.spawn(
function()while aV do local by,bz=pcall(function()if aY.bright then if not ba
then ba={Brightness=aT.Brightness,Ambient=aT.Ambient,OutdoorAmbient=aT.
OutdoorAmbient,GlobalShadows=aT.GlobalShadows}end aT.Brightness=a_ local by=math
.clamp(a_/5,0,1)aT.Ambient=Color3.new(by,by,by)aT.OutdoorAmbient=aT.Ambient aT.
GlobalShadows=false else bb()end bw()end)if not by and aV then a6.Text=tostring(
bz)end task.wait(0.2)end end)task.spawn(function()while aV do if(aY.mine or aY.
armor)and aP.acquire()then local by=aW local bz,bA=pcall(function()if aY.armor
then bq(by)end if bg(by)and aY.mine then bm(by)end end)aP.release()if not bz and
aV then a6.Text=tostring(bA)end end task.wait(2)end end)return{stop=bx,target=
function()return aY.smart and bu or nil end,cleanup=function()aV=false bx()for
by,bz in ipairs(aX)do bz:Disconnect()end end}end local aO={}function aO.role(aP,
aQ)if aQ~=9796898051 then return nil end return({[101906032112547]='\108\111\098\098\121',[
74507545904779]='\114\117\110'})[aP]end function aO.names(aP)local aQ={}for aR in
tostring(aP):gmatch('\091\094\044\093\043')do aR=aR:match('\094\037\115\042\040\046\045\041\037\115\042\036')if aR~=''then aQ[#aQ+1
]=aR end end return aQ end function aO.offer(aP,aQ,aR,aS)if type(aQ)~='\110\117\109\098\101\114'or
aQ~=aQ then return nil end for aT,aU in ipairs(aS)do for aV,aW in ipairs(type(aP
)=='\116\097\098\108\101'and aP or{})do if aW.UpgradeName==aU and aW.Type=='\067\111\105\110\115'and type(aW.
Cost)=='\110\117\109\098\101\114'and aW.Cost>=0 and aW.Cost<math.huge and aQ-aW.Cost>=aR then
return aW end end end end function aO.selection(aP,aQ,aR)local aS={}local aT=
math.clamp(math.floor(tonumber(aQ)or 0),0,100)for aU,aV in ipairs(aR)do for aW,
aX in ipairs(type(aP)=='\116\097\098\108\101'and aP or{})do if aX.Name==aV and aX.Id~=nil and
not aS[aX.Id]then local aY=math.min(aT,math.max(0,math.floor(tonumber(aX.Count)
or 0)))if aY>0 then aS[aX.Id]=aY aT-=aY end end end end return aS end function
aO.medalOffer(aP,aQ,aR,aS)if type(aQ)~='\116\097\098\108\101'or type(aQ.Medals)~='\110\117\109\098\101\114'or aQ.
Medals~=aQ.Medals or type(aQ.Available)~='\116\097\098\108\101'then return nil end for aT,aU in
ipairs(aS)do local aV=aP[aU]if aV and type(aV.Cost)=='\110\117\109\098\101\114'and aV.Cost>=0 and
aV.Cost<math.huge and aQ.Available[aU]and aQ.Medals-aV.Cost>=aR then return aU
end end end function aO.skipRequest(aP)if not aP or not aP.CurrentCutScene or aP
.AbortingCutScene then return nil end local aQ=aP.CurrentCutSceneContext if aQ
and aQ.DisableSkip then return nil end return{name=aP.CurrentCutScene,id=aQ and
aQ.RuntimeId,private=aQ and aQ.Private==true and aQ.RuntimeId~=nil,session=aP.
CurrentCutSceneSessionId}end local aP=function(aP)local aQ=assert(aO.role(game.
PlaceId,game.GameId),'\085\110\115\117\112\112\111\114\116\101\100\032\069\097\114\116\104\032\067\111\114\101\032\112\108\097\099\101')local aR,aS=aP.ui,aP.T local
aT=game:GetService('\080\108\097\121\101\114\115').LocalPlayer local aU=game:GetService(
'\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local aV=game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local aW=true local
aX={}local aY={swing=false,upgrades=false,craft=false,skip=false,medals=false}
local aZ={upgrades=0,craft=0,medals=0}local a_={}local a0={}local a1,a2,a3,a4,a5
local a6 local function a7(a8)if a6 then return false end a6=a8 return true end
local function a8(a9)if a6==a9 then a6=nil end end local a9={reserve=1000,limit=
10,priority=
"\084\101\097\109\072\101\097\108\116\104\044\076\105\102\101\083\116\101\097\108\044\068\114\105\108\108\080\111\119\101\114\044\082\080\077\079\118\101\114\099\108\111\099\107\044\083\097\099\107\083\116\111\114\097\103\101\044\068\114\105\118\101\083\112\101\101\100",gear=
'\080\105\099\107\097\120\101\095\071\111\108\100',craftLimit=3,medalReserve=100,medalLimit=10,medalPriority=
'\084\117\114\114\101\116\068\097\109\097\103\101\044\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111'}local ba=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095'..aT.UserId..'\095'..aQ..'\046\106\115\111\110'if type(readfile)=='\102\117\110\099\116\105\111\110'
then pcall(function()local bb=aV:JSONDecode(readfile(ba))for bc,bd in pairs(a9)
do if type(bb[bc])==type(bd)then a9[bc]=bb[bc]end end end)end a9.reserve=math.
clamp(tonumber(a9.reserve)or 1000,0,1e9)a9.limit=math.clamp(tonumber(a9.limit)or
10,1,100)a9.medalReserve=math.clamp(tonumber(a9.medalReserve)or 100,0,1e9)a9.
medalLimit=math.clamp(tonumber(a9.medalLimit)or 10,1,100)a9.craftLimit=math.
clamp(tonumber(a9.craftLimit)or 3,1,100)local function bb()if type(writefile)==
'\102\117\110\099\116\105\111\110'then pcall(writefile,ba,aV:JSONEncode(a9))end end local function bc(bd
,be)aX[#aX+1]=bd:Connect(be)end local bd=aP.section('\070\097\114\109')local be=aR.label(bd,
'\084\101\120\116\076\097\098\101\108',aS('\067\097\114\114\101\103\097\110\100\111\032\101\115\116\097\100\111\u{2026}','\076\111\097\100\105\110\103\032\115\116\097\116\101\u{2026}'),76,1)local
bf=aR.label(bd,'\084\101\120\116\076\097\098\101\108','',72,2)local function bg(bh,bi)if aW then bf.Text=
aS(bh,bi or bh)end end local function bh()for bi in pairs(aY)do aY[bi]=false if
a0[bi]then a0[bi](false)end end if a1 then a1.stop()end if a2 then a2.stop()end
if a3 then a3.stop()end if a4 then a4.stop()end if a5 then a5.stop()end end aP.
attach(function()aW=false bh()if a1 then a1.cleanup()end if a2 then a2.cleanup()
end if a3 then a3.cleanup()end if a4 then a4.cleanup()end if a5 then a5.cleanup(
)end for bi,bj in ipairs(aX)do bj:Disconnect()end end)aP.quick(bh)local function
bi(bj,bk,bl,bm,bn)local bp=aR.button(bj,aS(bk,bl),bm)bc(bp.Activated,function()
if a_[bp]then return end a_[bp]=true task.spawn(function()local bq,br=pcall(bn)
a_[bp]=nil if not bq then bg(aS('\070\097\108\104\097\058\032','\070\097\105\108\101\100\058\032')..tostring(br))end end)end)
return bp end local function bj(bk,bl,bm,bn,bp,bq)aR.label(bk,'\084\101\120\116\076\097\098\101\108',aS(bm,
bn),32,bp)local br=aR.label(bk,'\084\101\120\116\066\111\120',tostring(a9[bl]),42,bp+1)bc(br.
FocusLost,function()if bq then local bs=tonumber(br.Text)if bs and bs==bs and bs
<math.huge then a9[bl]=math.clamp(math.floor(bs),bq[1],bq[2])end else a9[bl]=br.
Text:sub(1,600)end br.Text=tostring(a9[bl])bb()end)end local function bk(bl,bm,
bn,bp,bq)local br,bs=aR.checkbox(bl,aS(bn,bp),bq)a0[bm]=bs bc(br.Activated,
function()aY[bm]=not aY[bm]bs(aY[bm])end)end local bl local function bm(bn,bp)if
not bl then local bq=aU:FindFirstChild('\080\097\099\107\097\103\101\115')local br=bq and bq:
FindFirstChild('\075\110\105\116')if not br then return nil end bl=require(br)end local bq,
br=pcall(bn=='\099\111\110\116\114\111\108\108\101\114'and bl.GetController or bl.GetService,bp)return bq and
br or nil end local function bn(bp)return bm('\099\111\110\116\114\111\108\108\101\114',bp)end local function
bp(bq)return assert(bm('\115\101\114\118\105\099\101',bq),bq..'\032\117\110\097\118\097\105\108\097\098\108\101')end local function bq(br
)if type(br)=='\116\097\098\108\101'and type(br.await)=='\102\117\110\099\116\105\111\110'then local bs=table.pack(br:
timeout(8):await())if not bs[1]then error(tostring(bs[2]))end return table.
unpack(bs,2,bs.n)end return br end local function br()local bs=aT.Character
local bu=bs and bs:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local bv=bs and bs:
FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if bv and bu and bu.Health>0 then return bs,bv
,bu end end local function bs(bu)local bv,bw,bx=br()if not bv then return false
end local by=bu:lower()local function bz(bA)if type(bA)~='\115\116\114\105\110\103'then return
false end local function bB(bC)local bD={}for bE in bC:lower():gmatch('\037\119\043')do
bD[#bD+1]=bE end table.sort(bD)return table.concat(bD,'')end return bB(bA)==bB(
by)or by=='\109\101\100\107\105\116'and bA:lower():find('\109\101\100\107\105\116',1,true)~=nil end local bA=aT:
FindFirstChild('\066\097\099\107\112\097\099\107')for bB,bC in ipairs(bA and bA:GetChildren()or{})do if
bC:IsA('\084\111\111\108')and bz(bC.Name)then bx:EquipTool(bC)return true end end local bB=
bn('\072\111\116\098\097\114\067\111\110\116\114\111\108\108\101\114')local bC=bB and bB.BackpackUI if bC and type(bB.
EquipToolAtIndex)=='\102\117\110\099\116\105\111\110'then for bD,bE in ipairs(bC:GetChildren())do if bE:
IsA('\071\117\105\079\098\106\101\099\116')and bE.LayoutOrder>=1 and bE.LayoutOrder<=10 then local bF=bz(bE
.Name)or bz(bE:GetAttribute('\084\111\111\108\078\097\109\101'))for bG,bH in ipairs(bE:GetDescendants())
do if bH:IsA('\084\101\120\116\076\097\098\101\108')and bz(bH.Text)then bF=true end end if bF then bB:
EquipToolAtIndex(bE.LayoutOrder)return true end end end end return false end
local function bu()if aQ=='\108\111\098\098\121'then local bv=workspace:FindFirstChild('\076\111\098\098\121')
local bw=bv and bv:FindFirstChild('\079\117\116\101\114\083\116\114\117\099\116\117\114\101\115')return bw and bw:
FindFirstChild('\067\104\117\114\099\104')end return workspace:FindFirstChild('\067\104\117\114\099\104')end local
function bv()local bw=bu()local bx=bw and bw:FindFirstChild('\083\116\114\117\099\116\117\114\101')local by
=bx and bx:FindFirstChild('\082\105\110\103')local bz=by and by:FindFirstChild('\083\097\118\101\071\101\097\114')
return bz and bz:IsA('\066\097\115\101\080\097\114\116')and bz or nil end local bw,bx local function by(
)local bz=bv()if bz then bw=bz.CFrame bx=workspace:GetAttribute(
'\073\110\102\105\110\105\116\101\068\101\112\116\104\079\102\102\115\101\116\077\101\116\101\114\115')end end by()local bz,bA bi(bd,
'\073\114\032\097\116\u{e9}\032\097\032\105\103\114\101\106\097\032\099\097\114\114\101\103\097\100\097','\071\111\032\116\111\032\108\111\097\100\101\100\032\099\104\117\114\099\104',10,function()local bB,bC=
br()assert(bB,aS('\080\101\114\115\111\110\097\103\101\109\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\046','\067\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101\046'))by()
local bD=bv()if not bD and bw and bx==workspace:GetAttribute(
'\073\110\102\105\110\105\116\101\068\101\112\116\104\079\102\102\115\101\116\077\101\116\101\114\115')then local bE=bC.CFrame bB:PivotTo(bw*CFrame.new(0,3
,5))pcall(function()aT:RequestStreamAroundAsync(bw.Position,5)end)bD=bv()if not
bD then bB:PivotTo(bE)end end assert(bD,aS(
'\073\103\114\101\106\097\032\097\105\110\100\097\032\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097\046\032\065\032\112\111\115\105\u{e7}\u{e3}\111\032\108\101\109\098\114\097\100\097\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\032\117\109\032\097\108\116\097\114\032\100\105\115\112\111\110\u{ed}\118\101\108\046'
,
"\067\104\117\114\099\104\032\110\111\116\032\108\111\097\100\101\100\046\032\065\032\114\101\109\101\109\098\101\114\101\100\032\112\111\115\105\116\105\111\110\032\100\111\101\115\032\110\111\116\032\099\111\110\102\105\114\109\032\097\110\032\097\118\097\105\108\097\098\108\101\032\097\108\116\097\114\046"
))bz=bC.CFrame bA=bB bB:PivotTo(bD.CFrame*CFrame.new(0,3,5))bg(
'\068\101\115\108\111\099\097\109\101\110\116\111\032\115\111\108\105\099\105\116\097\100\111\046\032\067\111\110\102\105\114\097\032\115\117\097\032\112\111\115\105\u{e7}\u{e3}\111\046',
'\077\111\118\101\109\101\110\116\032\114\101\113\117\101\115\116\101\100\046\032\067\104\101\099\107\032\121\111\117\114\032\112\111\115\105\116\105\111\110\046')end)bi(bd,
'\086\111\108\116\097\114\032\u{e0}\032\112\111\115\105\u{e7}\u{e3}\111\032\097\110\116\101\114\105\111\114','\082\101\116\117\114\110\032\116\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110',11,
function()local bB=br()assert(bB and bB==bA and bz,
'\078\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110\032\102\111\114\032\116\104\105\115\032\099\104\097\114\097\099\116\101\114')bB:PivotTo(bz)end)bi(bd,
'\080\097\114\097\114\032\116\111\100\097\115\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115','\083\116\111\112\032\097\108\108\032\097\117\116\111\109\097\116\105\111\110',12,function()bh()bg(
'\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\114\097\100\097\115\046','\065\117\116\111\109\097\116\105\111\110\032\115\116\111\112\112\101\100\046')end)if aQ=='\108\111\098\098\121'then aR.
label(bd,'\084\101\120\116\076\097\098\101\108',aS(
'\076\111\098\098\121\058\032\101\113\117\105\112\097\109\101\110\116\111\115\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\100\101\032\101\120\112\101\100\105\u{e7}\u{e3}\111\032\097\112\097\114\101\099\101\109\032\110\097\032\112\097\114\116\105\100\097\046'
,"\076\111\098\098\121\058\032\101\113\117\105\112\109\101\110\116\046\032\069\120\112\101\100\105\116\105\111\110\032\102\101\097\116\117\114\101\115\032\097\112\112\101\097\114\032\105\110\032\116\104\101\032\103\097\109\101\032\112\108\097\099\101\046"),54,15)bj(
bd,'\103\101\097\114','\078\111\109\101\032\101\120\097\116\111\032\100\111\032\101\113\117\105\112\097\109\101\110\116\111\032\100\111\032\108\111\098\098\121','\069\120\097\099\116\032\108\111\098\098\121\032\101\113\117\105\112\109\101\110\116\032\110\097\109\101',20)
bi(bd,'\069\113\117\105\112\097\114\032\111\032\105\116\101\109\032\105\110\102\111\114\109\097\100\111','\069\113\117\105\112\032\101\110\116\101\114\101\100\032\105\116\101\109',23,function()local bB=aO.
names(a9.gear)[1]assert(bB,'\069\110\116\101\114\032\097\110\032\105\116\101\109\032\110\097\109\101')local bC=bq(bp(
'\076\111\098\098\121\066\097\099\107\112\097\099\107\083\101\114\118\105\099\101'):SetEquipped(bB))bg(bC and aS('\069\113\117\105\112\097\109\101\110\116\111\032\097\099\101\105\116\111\046',
'\069\113\117\105\112\109\101\110\116\032\097\099\099\101\112\116\101\100\046')or aS('\079\032\106\111\103\111\032\110\u{e3}\111\032\097\099\101\105\116\111\117\032\111\032\105\116\101\109\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\097\099\099\101\112\116\032\116\104\105\115\032\105\116\101\109\046'))end)else bk(bd,'\115\119\105\110\103',
'\065\117\116\111\032\112\105\099\097\114\101\116\097\032\101\113\117\105\112\097\100\097\032\040\097\108\099\097\110\099\101\032\110\111\114\109\097\108\041','\065\117\116\111\032\101\113\117\105\112\112\101\100\032\112\105\099\107\097\120\101\032\040\110\111\114\109\097\108\032\114\097\110\103\101\041'
,20)aR.label(bd,'\084\101\120\116\076\097\098\101\108',aS(
"\069\113\117\105\112\101\032\097\032\112\105\099\097\114\101\116\097\032\101\032\097\112\114\111\120\105\109\101\045\115\101\032\100\111\032\097\108\118\111\046\032\082\101\115\112\101\105\116\097\032\111\032\099\111\111\108\100\111\119\110\032\110\097\116\105\118\111\046",
"\069\113\117\105\112\032\121\111\117\114\032\112\105\099\107\097\120\101\032\097\110\100\032\097\112\112\114\111\097\099\104\032\116\104\101\032\116\097\114\103\101\116\046\032\085\115\101\115\032\116\104\101\032\110\097\116\105\118\101\032\099\111\111\108\100\111\119\110\046"),48,21
)local bB=aP.section('\077\101\108\104\111\114\105\097\115')aR.label(bB,'\084\101\120\116\076\097\098\101\108',aS(
'\079\114\103\097\110\105\122\101\032\097\032\108\105\115\116\097\032\099\111\109\032\u{2191}\047\u{2193}\032\097\098\097\105\120\111\046\032\068\101\115\109\097\114\113\117\101\032\111\032\113\117\101\032\110\u{e3}\111\032\100\101\115\101\106\097\032\099\111\109\112\114\097\114\046'
,
'\082\101\111\114\100\101\114\032\119\105\116\104\032\u{2191}\047\u{2193}\032\098\101\108\111\119\046\032\085\110\099\104\101\099\107\032\117\112\103\114\097\100\101\115\032\121\111\117\032\100\111\032\110\111\116\032\119\097\110\116\032\116\111\032\098\117\121\046'
),50,1)bj(bB,'\114\101\115\101\114\118\101','\082\101\115\101\114\118\097\032\109\u{ed}\110\105\109\097\032\100\101\032\109\111\101\100\097\115','\077\105\110\105\109\117\109\032\099\111\105\110\032\114\101\115\101\114\118\101',4,
{0,1e9})bj(bB,'\108\105\109\105\116','\076\105\109\105\116\101\032\100\101\032\116\101\110\116\097\116\105\118\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\065\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',7,{1,100})bk(bB,'\117\112\103\114\097\100\101\115',
'\065\117\116\111\032\109\101\108\104\111\114\105\097\115\032\099\111\109\032\109\111\101\100\097\115','\065\117\116\111\032\099\111\105\110\032\117\112\103\114\097\100\101\115',10)bj(bB,'\099\114\097\102\116\076\105\109\105\116',
'\076\105\109\105\116\101\032\100\101\032\102\097\098\114\105\099\097\u{e7}\u{e3}\111\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\067\114\097\102\116\032\097\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',12,{1,100})bk(bB,'\099\114\097\102\116',
'\065\117\116\111\032\102\097\098\114\105\099\097\114\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\032\110\111\032\106\111\103\111','\065\117\116\111\032\099\114\097\102\116\032\105\116\101\109\032\115\101\108\101\099\116\101\100\032\105\110\032\103\097\109\101',15)
aR.label(bB,'\084\101\120\116\076\097\098\101\108',aS(
'\067\114\097\102\116\105\110\103\058\032\097\098\114\097\032\097\032\098\097\110\099\097\100\097\032\101\032\101\115\099\111\108\104\097\032\111\032\105\116\101\109\032\110\111\032\106\111\103\111\046\032\082\111\098\117\120\032\102\105\099\097\032\101\120\099\108\117\u{ed}\100\111\046\032\065\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\099\111\109\101\u{e7}\097\109\032\100\101\115\108\105\103\097\100\097\115\046'
,
"\067\114\097\102\116\105\110\103\058\032\111\112\101\110\032\116\104\101\032\098\101\110\099\104\032\097\110\100\032\115\101\108\101\099\116\032\097\110\032\105\116\101\109\032\105\110\032\103\097\109\101\046\032\082\111\098\117\120\032\105\115\032\101\120\099\108\117\100\101\100\046\032\065\117\116\111\109\097\116\105\111\110\032\115\116\097\114\116\115\032\100\105\115\097\098\108\101\100\046"
),72,16)local bC=aP.section('\073\103\114\101\106\097')local bD=aR.label(bC,'\084\101\120\116\076\097\098\101\108',aS(
'\067\097\114\114\101\103\117\101\032\115\101\117\032\105\110\118\101\110\116\u{e1}\114\105\111\044\032\109\097\114\113\117\101\032\111\115\032\105\116\101\110\115\032\101\032\099\111\110\102\105\114\109\101\046\032\079\032\108\105\109\105\116\101\032\118\101\109\032\100\111\032\106\111\103\111\059\032\115\097\108\118\097\114\032\114\101\116\111\114\110\097\032\097\111\032\108\111\098\098\121\046'
,
"\076\111\097\100\032\121\111\117\114\032\105\110\118\101\110\116\111\114\121\044\032\115\101\108\101\099\116\032\105\116\101\109\115\032\097\110\100\032\099\111\110\102\105\114\109\046\032\084\104\101\032\103\097\109\101\032\115\117\112\112\108\105\101\115\032\116\104\101\032\108\105\109\105\116\059\032\115\097\118\105\110\103\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\108\111\098\098\121\046"
),80,1)local bE,bF={},{}local bG local bH=false local function bI()for bJ,bK in
ipairs(bF)do bK:Disconnect()end table.clear(bF)for bJ,bK in ipairs(bE)do bK:
Destroy()end table.clear(bE)end aP.attach(function()aW=false bh()bI()if a1 then
a1.cleanup()end if a2 then a2.cleanup()end if a3 then a3.cleanup()end if a4 then
a4.cleanup()end if a5 then a5.cleanup()end for bJ,bK in ipairs(aX)do bK:
Disconnect()end end)bi(bC,'\067\097\114\114\101\103\097\114\032\105\110\118\101\110\116\u{e1}\114\105\111\032\101\032\101\115\099\111\108\104\101\114\032\105\116\101\110\115',
'\076\111\097\100\032\105\110\118\101\110\116\111\114\121\032\097\110\100\032\115\101\108\101\099\116\032\105\116\101\109\115',3,function()assert(not bH,'\083\097\118\101\032\105\110\032\112\114\111\103\114\101\115\115')
local bJ=bq(bp('\080\108\097\121\101\114\083\101\114\118\105\099\101'):GetSaveGearChoices())assert(aW and br()and type(
bJ)=='\116\097\098\108\101'and type(bJ.Items)=='\116\097\098\108\101','\073\110\118\101\110\116\111\114\121\032\117\110\097\118\097\105\108\097\098\108\101')bI()bG={
selection={},limit=math.max(0,math.floor(tonumber(bJ.Limit)or 0))}local bK=bG
local bL={}local bM=bn('\083\097\118\101\071\101\097\114\067\111\110\116\114\111\108\108\101\114')local function bN()local bO=0 for bP
,bQ in pairs(bK.selection)do bO+=bQ end bD.Text=string.format(aS(
'\083\101\108\101\099\105\111\110\097\100\111\115\058\032\037\100\047\037\100\046\032\067\111\110\102\105\114\109\097\114\032\108\101\118\097\032\u{e0}\032\105\103\114\101\106\097\032\099\097\114\114\101\103\097\100\097\032\101\032\115\097\108\118\097\046',
"\083\101\108\101\099\116\101\100\058\032\037\100\047\037\100\046\032\067\111\110\102\105\114\109\032\116\114\097\118\101\108\115\032\116\111\032\116\104\101\032\108\111\097\100\101\100\032\099\104\117\114\099\104\032\097\110\100\032\115\097\118\101\115\046"),bO,bK.
limit)for bP,bQ in ipairs(bL)do bQ()end end for bO,bP in ipairs(bJ.Items)do if
bP.Id~=nil and type(bP.Count)=='\110\117\109\098\101\114'and bP.Count>0 then local bQ=Instance.
new('\070\114\097\109\101')bQ.Size=UDim2.new(1,-8,0,68)bQ.BackgroundColor3=Color3.fromRGB(23,31
,44)bQ.LayoutOrder=100+bO bQ.Parent=bC bE[#bE+1]=bQ local bR=Instance.new(
'\085\073\083\116\114\111\107\101')bR.Color=Color3.fromRGB(77,110,140)bR.Transparency=0.25 bR.Parent=bQ
local bS=Instance.new('\085\073\067\111\114\110\101\114')bS.CornerRadius=UDim.new(0,10)bS.Parent=bQ
local bT,bU if bM and type(bM.GetItemDisplay)=='\102\117\110\099\116\105\111\110'then bT,bU=bM:
GetItemDisplay(bP.Name)end local bV=Instance.new('\073\109\097\103\101\076\097\098\101\108')bV.Size=UDim2.
fromOffset(40,40)bV.Position=UDim2.fromOffset(6,12)bV.BackgroundTransparency=1
bV.Image=bT or''bV.Parent=bQ local bW,bX=aR.checkbox(bQ,'',1)bW.Size=UDim2.new(1
,-150,0,58)bW.Position=UDim2.fromOffset(50,4)local bY=bW:FindFirstChildWhichIsA(
'\084\101\120\116\076\097\098\101\108')bL[#bL+1]=function()local bZ=bK.selection[bP.Id]or 0 bX(bZ>0)if bY
then bY.Text=tostring(bU or bP.Name)..'\032\u{b7}\032'..bZ..'\047'..bP.Count end end
local function bZ(b_,b0)if bH or bG~=bK or not aW then return end local b1=0 for
b2,b3 in pairs(bK.selection)do b1+=b3 end local b2=bK.selection[bP.Id]or 0 if b0
then bK.selection[bP.Id]=0 elseif b_<0 or b1<bK.limit then bK.selection[bP.Id]=
math.clamp(b2+b_,0,bP.Count)end bN()end bF[#bF+1]=bW.Activated:Connect(function(
)bZ(1,(bK.selection[bP.Id]or 0)>0)end)for b_,b0 in ipairs({-1,1})do local b1=aR.
button(bQ,b0<0 and'\u{2212}'or'\043',2+b_)b1.Size=UDim2.fromOffset(40,42)b1.
Position=UDim2.new(1,-94+(b_-1)*46,0,12)bF[#bF+1]=b1.Activated:Connect(function(
)bZ(b0)end)end end end bN()end)bi(bC,'\073\114\032\u{e0}\032\105\103\114\101\106\097\032\099\097\114\114\101\103\097\100\097',
'\071\111\032\116\111\032\108\111\097\100\101\100\032\099\104\117\114\099\104',4,function()assert(not bH and a7('\099\104\117\114\099\104'),
'\065\110\111\116\104\101\114\032\109\111\118\101\109\101\110\116\032\116\097\115\107\032\105\115\032\097\099\116\105\118\101')local bJ,bK=pcall(function()local bJ=br()local
bK=bv()assert(bJ and bK,aS('\073\103\114\101\106\097\032\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097\046','\067\104\117\114\099\104\032\110\111\116\032\108\111\097\100\101\100\046'))bJ
:PivotTo(bK.CFrame*CFrame.new(0,3,5))end)a8('\099\104\117\114\099\104')assert(bJ,bK)end)bi(bC,
'\067\079\078\070\073\082\077\065\082\032\u{b7}\032\105\114\032\u{e0}\032\105\103\114\101\106\097\032\101\032\115\097\108\118\097\114\032\115\101\108\101\u{e7}\u{e3}\111',
'\067\079\078\070\073\082\077\032\u{b7}\032\103\111\032\116\111\032\099\104\117\114\099\104\032\097\110\100\032\115\097\118\101\032\115\101\108\101\099\116\105\111\110',5,function()assert(bG and not
bH,aS('\067\097\114\114\101\103\117\101\032\101\032\115\101\108\101\099\105\111\110\101\032\111\115\032\105\116\101\110\115\032\112\114\105\109\101\105\114\111\046','\076\111\097\100\032\097\110\100\032\115\101\108\101\099\116\032\103\101\097\114\032\102\105\114\115\116\046'))
local bJ={}local bK=0 for bL,bM in pairs(bG.selection)do if bM>0 then bJ[bL]=bM
bK+=bM end end assert(bK>0 and bK<=bG.limit,'\073\110\118\097\108\105\100\032\115\101\108\101\099\116\105\111\110')assert(a7(
'\099\104\117\114\099\104'),'\065\110\111\116\104\101\114\032\109\111\118\101\109\101\110\116\032\116\097\115\107\032\105\115\032\097\099\116\105\118\101')bH=true local bL,bM=pcall(function()
local bL=br()local bM=bv()assert(bL and bM,aS('\073\103\114\101\106\097\032\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097\046',
'\067\104\117\114\099\104\032\110\111\116\032\108\111\097\100\101\100\046'))bL:PivotTo(bM.CFrame*CFrame.new(0,3,5))task.wait(0.3)local
bN=bq(bp('\080\108\097\121\101\114\083\101\114\118\105\099\101'):GetSaveGearChoices())assert(aW and type(bN)=='\116\097\098\108\101'
and bK<=(tonumber(bN.Limit)or 0),'\073\110\118\101\110\116\111\114\121\032\099\104\097\110\103\101\100')local bO={}for bP,bQ in
ipairs(bN.Items or{})do bO[bQ.Id]=bQ.Count end for bP,bQ in pairs(bJ)do assert(
type(bO[bP])=='\110\117\109\098\101\114'and bQ<=bO[bP],aS(
'\073\110\118\101\110\116\u{e1}\114\105\111\032\109\117\100\111\117\046\032\082\101\099\097\114\114\101\103\117\101\032\097\032\115\101\108\101\u{e7}\u{e3}\111\046',
'\073\110\118\101\110\116\111\114\121\032\099\104\097\110\103\101\100\046\032\082\101\108\111\097\100\032\115\101\108\101\099\116\105\111\110\046'))end local bP,bQ=br()assert(bQ and bM.
Parent and(bQ.Position-bM.Position).Magnitude<=20,
'\065\112\112\114\111\097\099\104\032\116\104\101\032\097\108\116\097\114\032\119\104\105\108\101\032\097\108\105\118\101')local bR=bq(bp('\080\108\097\121\101\114\083\101\114\118\105\099\101'):SaveGear(bJ))
assert(bR==true,aS('\079\032\106\111\103\111\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\111\032\115\097\108\118\097\109\101\110\116\111\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\115\097\118\105\110\103\046'))bG=nil bh()bD.Text=aS(
'\083\097\108\118\097\109\101\110\116\111\032\097\099\101\105\116\111\032\112\101\108\111\032\106\111\103\111\046\032\065\103\117\097\114\100\097\110\100\111\032\114\101\116\111\114\110\111\032\097\111\032\108\111\098\098\121\046',
'\083\097\118\101\032\097\099\099\101\112\116\101\100\032\098\121\032\116\104\101\032\103\097\109\101\046\032\087\097\105\116\105\110\103\032\102\111\114\032\114\101\116\117\114\110\032\116\111\032\108\111\098\098\121\046')end)bH=false a8(
'\099\104\117\114\099\104')assert(bL,bM)end)end if aQ=='\114\117\110'and aH then a1=aH(aP,{actor=br,ctrl=bn
,equip=bs,say=bg,stoneTarget=function()return a5 and a5.target()end,movementBusy
=function()return a6~=nil end,priority=a9.priority,setPriority=function(bB)a9.
priority=bB bb()end})end if aQ=='\114\117\110'and aJ then a2=aJ(aP,{actor=br,ctrl=bn,
equip=bs,service=bp,await=bq,acquire=function()return a7('\116\114\097\110\115\112\111\114\116')end,release
=function()a8('\116\114\097\110\115\112\111\114\116')end})end if aQ=='\114\117\110'and aL then a3=aL(aP,{actor=br,
service=bp,await=bq,acquire=function()return a7('\115\104\111\112')end,release=function()a8(
'\115\104\111\112')end})end if aQ=='\114\117\110'and aM then a4=aM(aP,{ctrl=bn,service=bp,await=bq})
end if aQ=='\114\117\110'and aN then a5=aN(aP,{actor=br,ctrl=bn,equip=bs,service=bp,await
=bq,movementBusy=function()return a6~=nil end,acquire=function()return a7(
'\117\116\105\108\105\116\105\101\115')end,release=function()a8('\117\116\105\108\105\116\105\101\115')end})end local bB local bC if
aQ=='\114\117\110'then bk(bd,'\115\107\105\112','\065\117\116\111\032\118\111\116\097\114\032\112\097\114\097\032\112\117\108\097\114\032\099\117\116\115\099\101\110\101\115',
'\065\117\116\111\032\118\111\116\101\032\116\111\032\115\107\105\112\032\099\117\116\115\099\101\110\101\115',24)aR.label(bd,'\084\101\120\116\076\097\098\101\108',aS(
'\079\032\112\114\111\103\114\101\115\115\111\032\100\101\112\101\110\100\101\032\100\097\032\098\114\111\099\097\032\101\032\100\097\115\032\112\097\114\101\100\101\115\046\032\084\101\108\101\112\111\114\116\101\032\101\032\118\111\111\032\110\u{e3}\111\032\099\111\110\116\097\109\032\113\117\105\108\u{f4}\109\101\116\114\111\115\046'
,
"\080\114\111\103\114\101\115\115\032\100\101\112\101\110\100\115\032\111\110\032\116\104\101\032\100\114\105\108\108\032\097\110\100\032\119\097\108\108\115\046\032\084\101\108\101\112\111\114\116\105\110\103\032\097\110\100\032\102\108\121\105\110\103\032\100\111\032\110\111\116\032\099\111\117\110\116\032\107\105\108\111\109\101\116\101\114\115\046"
),58,25)bi(bd,'\067\111\110\115\117\108\116\097\114\032\082\080\032\097\116\117\097\108\032\100\097\032\112\097\114\116\105\100\097','\067\104\101\099\107\032\099\117\114\114\101\110\116\032\114\117\110\032\082\080',27,function
()assert(aT:GetAttribute('\082\097\110\107\101\100\082\117\110\065\099\116\105\118\101')==true,aS(
'\069\115\116\097\032\112\097\114\116\105\100\097\032\110\u{e3}\111\032\u{e9}\032\114\097\110\113\117\101\097\100\097\046','\084\104\105\115\032\114\117\110\032\105\115\032\110\111\116\032\114\097\110\107\101\100\046'))local bD=
bq(bp('\082\097\110\107\101\100\083\101\114\118\105\099\101'):GetRankChange())assert(type(bD)=='\116\097\098\108\101'and type(bD.
DeltaRP)=='\110\117\109\098\101\114','\082\080\032\117\110\097\118\097\105\108\097\098\108\101')bg(string.format(aS(
'\082\080\032\112\114\111\106\101\116\097\100\111\032\112\101\108\111\032\106\111\103\111\058\032\037\043\100\046\032\078\u{e3}\111\032\115\097\108\118\097\032\110\101\109\032\115\097\105\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046',
"\071\097\109\101\045\112\114\111\106\101\099\116\101\100\032\082\080\058\032\037\043\100\046\032\068\111\101\115\032\110\111\116\032\097\117\116\111\109\097\116\105\099\097\108\108\121\032\115\097\118\101\032\111\114\032\101\120\105\116\046"),bD.DeltaRP))
end)local bD=aP.section('\077\101\108\104\111\114\105\097\115')bj(bD,'\109\101\100\097\108\080\114\105\111\114\105\116\121',
'\077\101\100\097\108\104\097\115\058\032\112\114\105\111\114\105\100\097\100\101\115\032\040\073\068\115\032\115\101\112\097\114\097\100\111\115\032\112\111\114\032\118\u{ed}\114\103\117\108\097\041',
'\077\101\100\097\108\115\058\032\112\114\105\111\114\105\116\105\101\115\032\040\099\111\109\109\097\045\115\101\112\097\114\097\116\101\100\032\073\068\115\041',80)bj(bD,'\109\101\100\097\108\082\101\115\101\114\118\101',
'\082\101\115\101\114\118\097\032\100\101\032\109\101\100\097\108\104\097\115','\077\101\100\097\108\032\114\101\115\101\114\118\101',83,{0,1e9})bj(bD,'\109\101\100\097\108\076\105\109\105\116',
'\076\105\109\105\116\101\032\100\101\032\099\111\109\112\114\097\115\032\100\101\032\109\101\100\097\108\104\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\077\101\100\097\108\032\112\117\114\099\104\097\115\101\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',86,{1,100})bk(bD,'\109\101\100\097\108\115',
'\065\117\116\111\032\109\101\108\104\111\114\105\097\115\032\100\101\032\076\097\114\114\121\032\099\111\109\032\109\101\100\097\108\104\097\115','\065\117\116\111\032\076\097\114\114\121\032\109\101\100\097\108\032\117\112\103\114\097\100\101\115',89)aR.label(
bD,'\084\101\120\116\076\097\098\101\108',aS(
'\065\098\114\097\032\076\097\114\114\121\032\112\101\114\116\111\032\100\097\032\101\115\116\097\u{e7}\u{e3}\111\046\032\073\068\115\058\032\084\117\114\114\101\116\068\097\109\097\103\101\044\032\070\108\097\109\101\068\117\114\097\116\105\111\110\044\032\070\114\111\115\116\068\117\114\097\116\105\111\110\044\032\070\108\097\109\101\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\070\114\111\115\116\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111\046\032\083\101\109\032\099\111\109\112\114\097\115\032\082\111\098\117\120\046'
,
"\079\112\101\110\032\076\097\114\114\121\032\110\101\097\114\032\116\104\101\032\115\116\097\116\105\111\110\046\032\073\068\115\058\032\084\117\114\114\101\116\068\097\109\097\103\101\044\032\070\108\097\109\101\068\117\114\097\116\105\111\110\044\032\070\114\111\115\116\068\117\114\097\116\105\111\110\044\032\070\108\097\109\101\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\070\114\111\115\116\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111\046\032\078\111\032\082\111\098\117\120\032\112\117\114\099\104\097\115\101\115\046"
),110,90)end local bD,bE=0,0 task.spawn(function()while aW do local bF,bG=pcall(
function()local bF,bG,bH=br()if os.clock()>=bE then bE=os.clock()+2 by()be.Text=
string.format(
'\037\115\032\u{b7}\032\080\108\097\099\101\032\037\115\n\037\115\058\032\037\115\032\u{b7}\032\037\115\058\032\037\115\n\037\115\058\032\037\100\047\037\100\032\u{b7}\032\067\114\097\102\116\058\032\037\100\047\037\100',aQ==
'\108\111\098\098\121'and'\076\111\098\098\121'or aS('\069\120\112\101\100\105\u{e7}\u{e3}\111','\069\120\112\101\100\105\116\105\111\110'),game.PlaceId,aS(
'\086\105\100\097','\072\101\097\108\116\104'),bH and math.floor(bH.Health)or 0,aS('\073\103\114\101\106\097','\067\104\117\114\099\104'),bv()and
aS('\099\097\114\114\101\103\097\100\097','\108\111\097\100\101\100')or aS('\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097','\110\111\116\032\108\111\097\100\101\100'),aS(
'\084\101\110\116\097\116\105\118\097\115\032\117\112\103\114\097\100\101','\085\112\103\114\097\100\101\032\097\116\116\101\109\112\116\115'),aZ.upgrades,a9.limit,aZ.craft,a9.
craftLimit)end if aQ~='\114\117\110'or not bG then return end if aY.skip then local bI=aO
.skipRequest(bn('\067\117\116\083\099\101\110\101\067\111\110\116\114\111\108\108\101\114'))if not bI then bB=nil elseif not bB or bB.
name~=bI.name or bB.id~=bI.id or bB.session~=bI.session then bB=bI local bJ=bp(
'\067\117\116\083\099\101\110\101\083\101\114\118\105\099\101')if bI.private then bq(bJ:VoteSkipPrivate(bI.id,bI.name))else
bq(bJ:VoteSkip(bI.name,bI.id))end end end if workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101'
)then return end if aY.swing and not game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101'):
GetFocusedTextBox()then local bI=bn('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local bJ=bI and bI.
ActiveTool local bK=bn('\085\073\067\111\110\116\114\111\108\108\101\114')if bJ and bJ.Tool and bJ.Tool.Name:find(
'\080\105\099\107\097\120\101',1,true)and type(bJ.Swing)=='\102\117\110\099\116\105\111\110'and not(bK and bK.ActiveFrame and
bK.ActiveFrame.Visible)then bJ:Swing()end end if os.clock()<bD then return end
bD=os.clock()+3 if aY.upgrades and aZ.upgrades<a9.limit then local bI=bn(
'\068\114\105\108\108\085\112\103\114\097\100\101\067\111\110\116\114\111\108\108\101\114')if bI and not bI.PurchasePending and not bI.CardsLocked
and not bI.ActiveClassReward and bI.OptionsVersion~=nil then local bJ=bI.
OptionsVersion local bK=bI.RollToken local bL=bq(bp('\067\117\114\114\101\110\099\121\083\101\114\118\105\099\101'):
GetCurrency())if not aW or not aY.upgrades or bJ~=bI.OptionsVersion or bK~=bI.
RollToken or bI.PurchasePending or bI.CardsLocked or bI.ActiveClassReward or not
br()then return end local bM=aO.offer(bI.Options,bL,a9.reserve,aO.names(a9.
priority))if bM then aZ.upgrades+=1 bI:SetPurchasePending(true)local bN,bO=
pcall(function()return bq(bp('\068\114\105\108\108\083\101\114\118\105\099\101'):UpgradeDrill(bM.UpgradeName,bJ))end
)if bJ==bI.OptionsVersion and bK==bI.RollToken then bI:SetPurchasePending(false)
end if not bN then error(bO)end if not aW then return end if bO=='\112\114\111\109\112\116\101\100'then
aY.upgrades=false a0.upgrades(false)bg(
'\079\032\106\111\103\111\032\114\101\116\111\114\110\111\117\032\117\109\032\102\108\117\120\111\032\100\101\032\099\111\109\112\114\097\059\032\097\117\116\111\109\097\u{e7}\u{e3}\111\032\100\101\115\097\116\105\118\097\100\097\046',
'\084\104\101\032\103\097\109\101\032\114\101\116\117\114\110\101\100\032\097\032\112\117\114\099\104\097\115\101\032\102\108\111\119\059\032\097\117\116\111\109\097\116\105\111\110\032\100\105\115\097\098\108\101\100\046')else bg(aS(
'\077\101\108\104\111\114\105\097\032\115\111\108\105\099\105\116\097\100\097\058\032','\085\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\058\032')..bM.UpgradeName)end if type(bI.
FetchUpgradeOptions)=='\102\117\110\099\116\105\111\110'then bI:FetchUpgradeOptions()end end end end if
aY.medals and aZ.medals<a9.medalLimit then local bI=bn('\076\097\114\114\121\067\111\110\116\114\111\108\108\101\114')if bI
and bI.Frame and bI.Frame.Visible and not bI.PurchasePending and bI:FindStation(
)then if not bC then local bJ=aU:FindFirstChild('\083\104\097\114\101\100')local bK=bJ and bJ:
FindFirstChild('\076\097\114\114\121\067\111\110\102\105\103')if bK then bC=require(bK).Upgrades end end local bJ
=bC and aO.medalOffer(bC,bI.State,a9.medalReserve,aO.names(a9.medalPriority))if
bJ then aZ.medals+=1 bI:BuyUpgrade(bJ)bg(aS('\077\101\108\104\111\114\105\097\032\099\111\109\032\109\101\100\097\108\104\097\115\032\115\111\108\105\099\105\116\097\100\097\058\032'
,'\077\101\100\097\108\032\117\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\058\032')..bJ)end end end if aY.craft and aZ.craft<a9.
craftLimit then local bI=bn('\067\114\097\102\116\105\110\103\067\111\110\116\114\111\108\108\101\114')if bI and bI.CurrentItem and
not bI.PendingCraft and bI.Frame and bI.Frame.Visible and not bI:
CanPurchaseWithRobux(bI.CurrentItem)and bI:CanCraft(bI.CurrentItem)then aZ.craft
+=1 bI:CraftCurrentItem()bg(
'\070\097\098\114\105\099\097\u{e7}\u{e3}\111\032\115\111\108\105\099\105\116\097\100\097\032\112\097\114\097\032\111\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\046',
'\067\114\097\102\116\032\114\101\113\117\101\115\116\101\100\032\102\111\114\032\116\104\101\032\115\101\108\101\099\116\101\100\032\105\116\101\109\046')end end end)if not bF then bg(aS(
'\065\103\117\097\114\100\097\110\100\111\032\047\032\101\114\114\111\058\032','\087\097\105\116\105\110\103\032\047\032\101\114\114\111\114\058\032')..tostring(bG))bD=os.clock()+8 end
task.wait(0.2)end end)end local aQ,aR,aS=false,nil,false local aT=task.spawn(
function()aQ,aR=pcall(aP,{ui=O,page=N('\070\097\114\109'),T=function(aT,aU)return b.language
=='\112\116'and aT or aU end,progress=aE,attach=function(aT)j=aT end,section=N,quick=
function(aT)k=aT end})aS=true end)local aU=os.clock()+45 while l and not aS and
os.clock()<aU do task.wait(0.05)end if not aS then pcall(task.cancel,aT)aQ=false
aR=p('\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\052\053\032\115\101\103\117\110\100\111\115\032\101\120\099\101\100\105\100\111\046\032\u{da}\108\116\105\109\097\032\101\116\097\112\097\058\032',
'\052\053\045\115\101\099\111\110\100\032\116\105\109\101\111\117\116\046\032\076\097\115\116\032\115\116\097\103\101\058\032')..as.Text end if not l then return end if not
aQ then if j then pcall(j)j=nil end ar.Text=p(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\099\097\114\114\101\103\097\114\032\097\115\032\102\117\110\u{e7}\u{f5}\101\115',
'\067\111\117\108\100\032\110\111\116\032\108\111\097\100\032\116\104\101\032\102\101\097\116\117\114\101\115')as.Text=p(
'\070\101\099\104\101\032\111\032\112\097\105\110\101\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046\032\068\101\116\097\108\104\101\115\058\032',
'\067\108\111\115\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\116\114\121\032\097\103\097\105\110\046\032\068\101\116\097\105\108\115\058\032')..tostring(aR)aw.Text=p(
'\067\097\114\114\101\103\097\109\101\110\116\111\032\105\110\116\101\114\114\111\109\112\105\100\111','\076\111\097\100\105\110\103\032\105\110\116\101\114\114\117\112\116\101\100')b.ready()return end local
function aV(aW,aX)local aY,aZ,a_=false,false,nil local a0=task.spawn(function()
aZ,a_=pcall(aW)aY=true end)local a1=os.clock()+aX while l and not aY and os.
clock()<a1 do task.wait(0.05)end if not aY then pcall(task.cancel,a0)return
false,p('\084\101\109\112\111\032\108\105\109\105\116\101\032\101\120\099\101\100\105\100\111','\084\105\109\101\032\108\105\109\105\116\032\101\120\099\101\101\100\101\100')end return aZ,a_ end aE(
0.92,'\077\111\110\116\097\110\100\111\032\111\115\032\097\106\117\115\116\101\115\032\100\101\032\116\101\108\097\u{2026}','\066\117\105\108\100\105\110\103\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\u{2026}')
local aW local aX,aY=aV(function()local aX=N('\065\106\117\115\116\101\115')ab(aX)local aY=O.button(
aX,p('\u{1f1e7}\u{1f1f7}\032\032\073\100\105\111\109\097\058\032\080\111\114\116\117\103\117\u{ea}\115\032\032\u{b7}\032\032\065\108\116\101\114\097\114',
'\u{1f1fa}\u{1f1f8}\032\032\076\097\110\103\117\097\103\101\058\032\069\110\103\108\105\115\104\032\032\u{b7}\032\032\067\104\097\110\103\101'),870)r(aY.Activated,
function()if type(b.chooseLanguage)=='\102\117\110\099\116\105\111\110'then b.chooseLanguage()end end)O.
label(aX,'\084\101\120\116\076\097\098\101\108',p(
'\084\114\111\099\097\114\032\111\032\105\100\105\111\109\097\032\114\101\097\098\114\101\032\111\032\112\097\105\110\101\108\032\099\111\109\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\117\115\097\100\097\115\046',
'\067\104\097\110\103\105\110\103\032\108\097\110\103\117\097\103\101\032\114\101\111\112\101\110\115\032\116\104\101\032\112\097\110\101\108\032\119\105\116\104\032\097\117\116\111\109\097\116\105\111\110\032\112\097\117\115\101\100\046'),44,871)O.label(aX
,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\084\111\113\117\101\032\065\058\032\097\098\114\105\114\047\102\101\099\104\097\114\046\032\083\101\103\117\114\101\032\048\044\054\053\115\032\101\032\115\111\108\116\101\058\032\112\097\114\097\114\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\046\032\065\114\114\097\115\116\101\058\032\109\111\118\101\114\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\105\110\101\108\046'
or
"\084\097\112\032\065\058\032\116\111\103\103\108\101\032\112\097\110\101\108\046\032\072\111\108\100\032\048\046\054\053\115\032\097\110\100\032\114\101\108\101\097\115\101\058\032\115\116\111\112\032\097\117\116\111\109\097\116\105\111\110\046\032\068\114\097\103\058\032\109\111\118\101\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\110\101\108\046"
,68,900)local aZ=O.label(aX,'\084\101\120\116\066\111\120','\069\066\065\053\070\070',40,902)aZ.ClearTextOnFocus=false
O.label(aX,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\067\111\114\032\100\101\032\100\101\115\116\097\113\117\101\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\120\046\058\032\070\070\067\065\052\050\041'or
'\065\099\099\101\110\116\032\099\111\108\111\114\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\046\103\046\032\070\070\067\065\052\050\041',30,901)local a_=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\084\104\101\109\101\046\106\115\111\110'local a0='\065\109\101\116\104\121\115\116'local a1={Amethyst={'\048\067\048\067\049\048',
'\050\055\049\056\051\053','\057\054\051\067\068\067','\070\070\070\053\070\070','\067\065\066\052\068\056','\069\066\065\053\070\070','\049\057\048\070\050\051'},Potato={'\050\051\049\070\049\057','\052\049\051\054\050\055'
,'\055\052\053\056\051\049','\070\067\070\054\069\050','\068\053\067\051\065\051','\069\066\065\053\070\070','\051\048\050\055\049\068'},Bloodmoon={'\049\055\048\067\049\051','\051\048\049\051\049\070',
'\054\066\050\054\051\068','\070\070\069\065\070\048','\068\050\065\048\066\048','\070\070\052\053\054\056','\050\051\048\070\049\065'},Midnight={'\049\048\049\051\049\069','\049\068\050\052\051\054',
'\051\053\052\054\054\053','\069\068\070\051\070\070','\065\052\066\051\067\067','\055\051\057\070\070\070','\049\053\049\066\050\065'},Emerald={'\048\066\049\057\049\054','\049\052\050\069\050\054',
'\050\066\053\057\052\055','\069\054\070\070\070\051','\057\069\067\054\066\051','\053\054\068\068\065\048','\049\048\050\052\049\069'},Arctic={'\049\049\049\066\050\054','\049\067\050\068\051\068','\051\054\053\049\054\065'
,'\069\066\070\056\070\070','\065\057\067\055\068\065','\055\057\068\057\070\070','\049\055\050\051\051\049'}}local function a2(a3)return Color3.
fromRGB(tonumber(a3:sub(1,2),16),tonumber(a3:sub(3,4),16),tonumber(a3:sub(5,6),
16))end local function a3()if type(writefile)=='\102\117\110\099\116\105\111\110'then task.spawn(
function()pcall(writefile,a_,e:JSONEncode({preset=a0,hex=aZ.Text}))end)end end
local function a4(a5)if type(a5)~='\115\116\114\105\110\103'or not a5:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then
return false end o=Color3.fromRGB(tonumber(a5:sub(1,2),16),tonumber(a5:sub(3,4),
16),tonumber(a5:sub(5,6),16))m.accent=o F.BackgroundColor3=o z.BackgroundColor3=
o M(J)for a6,a7 in ipairs(P)do a7()end for a6,a7 in pairs(H)do a7.
ScrollBarImageColor3=o end aZ.Text=a5 return true end local function a5(a6)local
a7=a1[a6]if not a7 then return end a0=a6 for a8,a9 in ipairs({'\100\097\114\107','\116\105\108\101',
'\101\100\103\101','\116\101\120\116','\109\117\116\101\100','\097\099\099\101\110\116','\115\105\100\101\098\097\114'})do m[a9]=a2(a7[a8])end o=m.accent for
a8,a9 in pairs(n)do if a8.Parent then for ba,bb in pairs(a9)do a8[ba]=m[bb]end
end end local a8=w:FindFirstChildOfClass('\085\073\071\114\097\100\105\101\110\116')if a8 then a8.Color=
ColorSequence.new(m.tile,m.dark)end a4(a7[6])end O.label(aX,'\084\101\120\116\076\097\098\101\108',p(
'\084\069\077\065\083\032\080\082\079\078\084\079\083','\084\072\069\077\069\032\080\082\069\083\069\084\083'),32,880)for a6,a7 in ipairs({'\065\109\101\116\104\121\115\116','\080\111\116\097\116\111'
,'\066\108\111\111\100\109\111\111\110','\077\105\100\110\105\103\104\116','\069\109\101\114\097\108\100','\065\114\099\116\105\099'})do local a8=O.button(aX,a7,880+a6)r(
a8.Activated,function()a5(a7)a3()end)end aW=function()if type(readfile)==
'\102\117\110\099\116\105\111\110'then local a6=readfile(a_)if type(a6)=='\115\116\114\105\110\103'and#a6<=2048 then local
a7=e:JSONDecode(a6)if l and aZ.Parent and type(a7)=='\116\097\098\108\101'then if a1[a7.preset]
then a5(a7.preset)end a4(a7.hex)end end end end r(aZ.FocusLost,function()local
a6=aZ.Text:gsub('\035',''):upper()if a4(a6)then a3()end end)end,5)if not l then
return end aE(0.96,'\065\106\117\115\116\097\110\100\111\032\111\032\112\097\105\110\101\108\032\u{e0}\032\115\117\097\032\116\101\108\097\u{2026}',
'\070\105\116\116\105\110\103\032\116\104\101\032\112\097\110\101\108\032\116\111\032\121\111\117\114\032\115\099\114\101\101\110\u{2026}')local aZ,a_=pcall(X)if not aZ then T=
table.clone(S)pcall(X)end local a0 if not aX or not aZ then a0=p(
'\065\106\117\115\116\101\115\032\118\105\115\117\097\105\115\032\105\110\099\111\109\112\108\101\116\111\115\058\032','\083\111\109\101\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\032\102\097\105\108\101\100\058\032')..tostring(aY
or a_)E.Text=a0 warn('\091\065\110\111\110\072\117\098\032'..a..'\093\032'..a0)end aE(1,
'\080\097\105\110\101\108\032\112\114\111\110\116\111\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\101\115\116\u{e3}\111\032\112\097\117\115\097\100\097\115\046',
'\080\097\110\101\108\032\114\101\097\100\121\046\032\070\101\097\116\117\114\101\115\032\097\114\101\032\112\097\117\115\101\100\046')ar.Text=p('\083\101\117\032\112\097\105\110\101\108\032\101\115\116\u{e1}\032\112\114\111\110\116\111',
'\089\111\117\114\032\112\097\110\101\108\032\105\115\032\114\101\097\100\121')am=true if ao()then ap:Destroy()else task.spawn(function()
while l and ap.Parent and not ao()do task.wait(0.05)end if l and ap.Parent then
ap:Destroy()end end)end pcall(b.ready)if aW then task.defer(function()aV(aW,2)
end)end
