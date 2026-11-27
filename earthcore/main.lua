-- Luau
-- AnonHub protected distribution 0.40.10
-- local BOOT_VERSION="0.40.10"
local a='\048\046\052\048\046\049\048'local b=...assert(type(b)=='\116\097\098\108\101'and b.access,
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
,distanceColor='\068\048\068\056\069\056',hideDead=true,hideAttached=true,hideShop=false,hideBases
=false,combatDistance=22,gunRange=250,hitboxSize=8,rarityColors=false,showValue=
false,visibleOnly=true,medkitPercent=40,medkitInstant=true}local aW={speed=false
,noclip=false,fly=false,aura=false,oreAura=false,autoMove=false,autoFire=false,
silentAim=false,hitbox=false,autoMedkit=false,noLauncherCooldown=false}local aX=
{{'\109\111\098\115','\077\111\110\115\116\114\111\115','\069\110\101\109\105\101\115','\070\070\054\048\054\048'},{'\112\108\097\121\101\114\115','\074\111\103\097\100\111\114\101\115','\080\108\097\121\101\114\115',
'\054\048\068\056\070\070'},{'\099\111\109\112\097\110\105\111\110\115','\067\111\109\112\097\110\104\101\105\114\111\115','\067\111\109\112\097\110\105\111\110\115','\054\048\070\070\066\048'},{'\099\104\101\115\116\115',
'\066\097\u{fa}\115','\067\104\101\115\116\115','\070\070\068\048\054\048'},{'\109\105\109\105\099\115','\077\u{ed}\109\105\099\111\115\032\105\100\101\110\116\105\102\105\099\097\100\111\115',
'\073\100\101\110\116\105\102\105\101\100\032\109\105\109\105\099\115','\070\070\053\048\068\048'},{'\105\116\101\109\115','\073\116\101\110\115','\073\116\101\109\115','\070\070\070\070\070\070'},{'\115\099\114\097\112',
'\083\117\099\097\116\097\115','\083\099\114\097\112','\066\053\067\048\068\048'},{'\111\114\101\115','\077\105\110\u{e9}\114\105\111\115','\079\114\101\115','\054\048\069\048\070\070'},{'\116\114\101\097\115\117\114\101'
,'\084\101\115\111\117\114\111\115\032\101\110\116\101\114\114\097\100\111\115\032\040\088\041','\066\117\114\105\101\100\032\116\114\101\097\115\117\114\101\032\040\088\041','\070\070\068\051\053\067'},{'\115\116\114\117\099\116\117\114\101\115',
'\069\115\116\114\117\116\117\114\097\115','\083\116\114\117\099\116\117\114\101\115','\057\049\067\056\070\070'},{'\099\104\117\114\099\104','\073\103\114\101\106\097','\067\104\117\114\099\104','\070\070\070\048\065\048'},{
'\100\111\111\114\115','\069\110\116\114\097\100\097\115\032\100\101\032\068\117\110\103\101\111\110','\068\117\110\103\101\111\110\032\101\110\116\114\097\110\099\101\115','\066\048\056\048\070\070'},{'\097\114\101\110\097\115',
'\080\111\114\116\097\115\032\100\101\032\097\114\101\110\097','\065\114\101\110\097\032\100\111\111\114\115','\070\070\056\048\052\048'},{'\116\114\101\097\115\117\114\101\068\111\111\114\115','\080\111\114\116\097\115\032\100\101\032\116\101\115\111\117\114\111',
'\084\114\101\097\115\117\114\101\032\100\111\111\114\115','\070\070\069\048\056\048'}}local aY={}for aZ,a_ in ipairs(aX)do aY[a_[1] ]={
enabled=false,color=a_[4]}end local aZ='\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\086\105\115\117\097\108\095'..aM.UserId..
'\046\106\115\111\110'if type(readfile)=='\102\117\110\099\116\105\111\110'then pcall(function()local a_=aQ:JSONDecode(
readfile(aZ))for a0,a1 in pairs(aV)do if type(a_.config[a0])==type(a1)then aV[a0
]=a_.config[a0]end end for a0,a1 in pairs(aY)do local a2=a_.colors and a_.colors
[a0]if type(a2)=='\115\116\114\105\110\103'and a2:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then a1.color=a2 end end
end)end local function a_()if type(writefile)=='\102\117\110\099\116\105\111\110'then local a0={}for a1,
a2 in pairs(aY)do a0[a1]=a2.color end pcall(writefile,aZ,aQ:JSONEncode({config=
aV,colors=a0}))end end local function a0(a1,a2)aS[#aS+1]=a1:Connect(a2)end local
function a1(a2,a3,a4)local a5=Instance.new(a2)for a6,a7 in pairs(a3)do a5[a6]=a7
end a5.Parent=a4 return a5 end local function a2(a3)return Color3.fromRGB(
tonumber(a3:sub(1,2),16),tonumber(a3:sub(3,4),16),tonumber(a3:sub(5,6),16))end
local function a3(a4,a5,a6,a7,a8,a9)a9=a9 or aW local ba,bb=aK.checkbox(a4,aL(a6
,a7),a8)aT[a5]={paint=bb,table=a9}a0(ba.Activated,function()a9[a5]=not a9[a5]bb(
a9[a5])if a9==aV then a_()end end)end local function a4(a5,a6,a7,a8,a9,ba,bb)aV[
a6]=math.clamp(tonumber(aV[a6])or ba,ba,bb)if aV[a6]~=aV[a6]then aV[a6]=ba end
aK.label(a5,'\084\101\120\116\076\097\098\101\108',aL(a7,a8),30,a9)local bc=aK.label(a5,'\084\101\120\116\066\111\120',tostring(
aV[a6]),40,a9+1)a0(bc.FocusLost,function()local bd=tonumber(bc.Text)if bd and bd
==bd and math.abs(bd)<math.huge then aV[a6]=math.clamp(bd,ba,bb)a_()end bc.Text=
tostring(aV[a6])end)end local a5=aI.section('\077\101\108\104\111\114\105\097\115')local a6={TeamHealth=
'\086\105\100\097\032\109\u{e1}\120\105\109\097',LifeSteal='\082\111\117\098\111\032\100\101\032\118\105\100\097',DrillPower='\080\111\116\u{ea}\110\099\105\097\032\100\097\032\098\114\111\099\097'
,RPMOverclock='\082\080\077\032\100\097\032\098\114\111\099\097',SackStorage='\067\097\112\097\099\105\100\097\100\101\032\100\097\032\109\111\099\104\105\108\097',DriveSpeed=
'\086\101\108\111\099\105\100\097\100\101\032\100\097\032\098\114\111\099\097',FuelStorage='\067\097\112\097\099\105\100\097\100\101\032\100\101\032\099\111\109\098\117\115\116\u{ed}\118\101\108',DrillDefense=
'\068\097\110\111\032\100\101\032\099\111\110\116\097\116\111',PowerDrive='\065\099\101\108\101\114\097\u{e7}\u{e3}\111',PowerSlam='\073\109\112\097\099\116\111\032\112\111\116\101\110\116\101',
EngineOverdrive='\083\111\098\114\101\099\097\114\103\097\032\100\111\032\109\111\116\111\114',MegaDrill='\077\101\103\097\032\098\114\111\099\097',TeamGunDamage=
'\068\097\110\111\032\100\101\032\097\114\109\097\115',TeamMeleeDamage='\068\097\110\111\032\099\111\114\112\111\032\097\032\099\111\114\112\111',TeamPickaxeDamage=
'\068\097\110\111\032\100\101\032\112\105\099\097\114\101\116\097',TeamExplosiveDamage='\068\097\110\111\032\101\120\112\108\111\115\105\118\111',PowerBurst=
'\069\120\112\108\111\115\u{e3}\111\032\100\101\032\112\111\116\u{ea}\110\099\105\097',MountedGunner='\065\116\105\114\097\100\111\114\032\109\111\110\116\097\100\111',MoneyDrill=
'\077\111\101\100\097\115\032\112\111\114\032\112\097\114\101\100\101',UltraDrill='\085\108\116\114\097\032\098\114\111\099\097',HealthRegen='\082\101\103\101\110\101\114\097\u{e7}\u{e3}\111'
,CartExtension='\069\120\116\101\110\115\u{e3}\111\032\100\097\032\098\114\111\099\097'}local a7,a8={},{}for a9,ba in ipairs(aF)
do a8[ba.id]=ba end for a9 in aJ.priority:gmatch('\091\094\044\093\043')do a9=a9:match(
'\094\037\115\042\040\046\045\041\037\115\042\036')if a8[a9]and not table.find(a7,a9)then a7[#a7+1]=a9 end end local
a9={}for ba,bb in ipairs(a7)do a9[bb]=true end for ba,bb in ipairs(aF)do if not
table.find(a7,bb.id)then a7[#a7+1]=bb.id end end local ba={}local function bb()
local bc={}for bd,be in ipairs(a7)do local bf=ba[be]if bf then bf.frame.
LayoutOrder=100+bd bf.caption.Text=bd..'\032\u{b7}\032'..aL(a6[be]or a8[be].name,a8[be
].name)bf.paint(a9[be])end if a9[be]then bc[#bc+1]=be end end aJ.setPriority(
table.concat(bc,'\044'))end for bc,bd in ipairs(a7)do local be=a8[bd]local bf=a1(
'\070\114\097\109\101',{Size=UDim2.new(1,-8,0,58),BackgroundTransparency=1},a5)a1('\073\109\097\103\101\076\097\098\101\108',
{Size=UDim2.fromOffset(36,36),Position=UDim2.fromOffset(0,10),Image=be.icon,
BackgroundTransparency=1},bf)local bg,bh=aK.checkbox(bf,'',0)bg.Size=UDim2.new(1
,-136,0,48)bg.Position=UDim2.fromOffset(42,4)local bi=bg:FindFirstChildWhichIsA(
'\084\101\120\116\076\097\098\101\108')ba[bd]={frame=bf,paint=bh,caption=bi}a0(bg.Activated,function()a9[bd
]=not a9[bd]bb()end)for bj,bk in ipairs({-1,1})do local bl=a1('\084\101\120\116\066\117\116\116\111\110',{Text
=bk<0 and'\u{2191}'or'\u{2193}',Size=UDim2.fromOffset(36,44),Position=UDim2.new(
1,-82+(bj-1)*40,0,6),BackgroundColor3=Color3.fromRGB(35,45,60),TextColor3=Color3
.new(1,1,1),TextSize=20},bf)a1('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,8)},bl)a0(bl.
Activated,function()local bm=table.find(a7,bd)local bn=bm+bk if bn>=1 and bn<=#
a7 then a7[bm],a7[bn]=a7[bn],a7[bm]bb()end end)end end bb()local bc=aI.section(
'\077\111\118\105\109\101\110\116\111')a3(bc,'\115\112\101\101\100','\086\101\108\111\099\105\100\097\100\101\032\112\101\114\115\111\110\097\108\105\122\097\100\097','\067\117\115\116\111\109\032\119\097\108\107\032\115\112\101\101\100',1)a4(bc
,'\115\112\101\101\100','\086\101\108\111\099\105\100\097\100\101\032\040\087\097\108\107\083\112\101\101\100\041','\087\097\108\107\083\112\101\101\100',2,8,100)a3(bc,'\110\111\099\108\105\112','\078\111\099\108\105\112',
'\078\111\099\108\105\112',5)a3(bc,'\102\108\121','\070\108\121\032\u{b7}\032\115\105\103\097\032\097\032\099\u{e2}\109\101\114\097\032\047\032\106\111\121\115\116\105\099\107',
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
'\083\099\097\110\110\101\114\058\032\108\111\097\100\101\100\032\068\117\110\103\101\111\110\032\099\104\101\115\116\032\116\121\112\101\115',66,aV)a3(bg,'\104\105\100\101\083\104\111\112',
'\079\099\117\108\116\097\114\032\069\083\080\032\100\111\115\032\105\116\101\110\115\032\100\097\032\108\111\106\097','\072\105\100\101\032\115\104\111\112\032\105\116\101\109\032\069\083\080',67,aV)aT.hideShop.paint(aV.
hideShop)a3(bg,'\104\105\100\101\066\097\115\101\115','\079\099\117\108\116\097\114\032\116\111\100\097\115\032\097\115\032\098\097\115\101\115\032\101\032\101\115\116\114\117\116\117\114\097\115',
'\072\105\100\101\032\097\108\108\032\098\097\115\101\115\032\097\110\100\032\115\116\114\117\099\116\117\114\101\115',68,aV)aT.hideBases.paint(aV.hideBases)local by=
setmetatable({},{__mode='\107'})local bz=setmetatable({},{__mode='\107'})local
function bA(bB)local bC=bz[bB]if bC and os.clock()-bC.time<5 then return bC.text
end local bD=''pcall(function()local bE=game:GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101'):
FindFirstChild('\083\104\097\114\101\100')local bF=bE and bE:FindFirstChild('\068\117\110\103\101\111\110\068\111\111\114\083\116\097\116\101')
local bG=bF and require(bF).GetRoot(bB)if not bG then return end local bH={}
local bI=bG:GetAttribute('\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')for bJ,bK in ipairs(aP:
GetTagged('\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\084\097\114\103\101\116'))do if bK:IsDescendantOf(workspace)and(bK
:IsDescendantOf(bG)or bI and bK:GetAttribute('\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')==bI)
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
},{'\100\111\119\110','\068\101\115\099\101\114','\068\111\119\110'}}local bO={}local bP={aura='\084\101\097\109\077\101\108\101\101\068\097\109\097\103\101',oreAura=
'\084\101\097\109\080\105\099\107\097\120\101\068\097\109\097\103\101',fly='\069\110\103\105\110\101\079\118\101\114\100\114\105\118\101',noclip='\068\114\105\108\108\080\111\119\101\114',speed='\068\114\105\118\101\083\112\101\101\100'
,autoMove='\080\111\119\101\114\068\114\105\118\101',autoFire='\084\101\097\109\071\117\110\068\097\109\097\103\101',up='\080\111\119\101\114\066\117\114\115\116',down=
'\080\111\119\101\114\066\117\114\115\116'}for bQ,bR in ipairs(bN)do local bS=bR[1]local bT=a1('\070\114\097\109\101',{Size=
UDim2.fromOffset(66,76),Position=UDim2.new(0,12+((bQ-1)%4)*72,1,-90-math.floor((
bQ-1)/4)*82),BackgroundColor3=Color3.fromRGB(20,27,39),Visible=false},bH)a1(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,10)},bT)a1('\085\073\083\116\114\111\107\101',{Color=Color3.fromRGB(
105,165,220),Thickness=1.5,Transparency=0.2},bT)local bU,bV=aK.checkbox(bc,aL(
'\065\116\097\108\104\111\032\110\097\032\116\101\108\097\058\032','\083\099\114\101\101\110\032\115\104\111\114\116\099\117\116\058\032')..aL(bR[2],bR[3]),80+bQ)a0(bU.Activated,
function()bT.Visible=not bT.Visible bV(bT.Visible)if not bT.Visible then bI=0
end end)local bW=a1('\084\101\120\116\066\117\116\116\111\110',{Text='\061',Size=UDim2.new(1,0,0,18),
BackgroundTransparency=1,TextColor3=Color3.fromRGB(150,180,210),TextSize=14},bT)
local bX=a1('\084\101\120\116\066\117\116\116\111\110',{Text='',Size=UDim2.new(1,0,1,-18),Position=UDim2.
fromOffset(0,18),BackgroundTransparency=1},bT)local bY=a8[bP[bS] ]a1(
'\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromOffset(28,28),Position=UDim2.new(0.5,-14,0,1),
BackgroundTransparency=1,Image=bY and bY.icon or'\114\098\120\097\115\115\101\116\105\100\058\047\047\056\053\057\049\056\050\050\048\050\057\053\053\049\055',
Rotation=bS=='\100\111\119\110'and 180 or 0},bX)a1('\084\101\120\116\076\097\098\101\108',{Text=aL(bR[2],bR[3]),Size=
UDim2.new(1,-4,0,20),Position=UDim2.fromOffset(2,32),BackgroundTransparency=1,
TextSize=10,TextColor3=Color3.new(1,1,1),TextWrapped=true},bX)a0(bW.InputBegan,
function(bZ)if bZ.UserInputType==Enum.UserInputType.Touch or bZ.UserInputType==
Enum.UserInputType.MouseButton1 then bJ=bZ bK=bZ.Position bL=bT.AbsolutePosition
bM=bT end end)if bS=='\117\112'or bS=='\100\111\119\110'then a0(bX.InputBegan,function(bZ)if bZ.
UserInputType==Enum.UserInputType.Touch or bZ.UserInputType==Enum.UserInputType.
MouseButton1 then bI=bS=='\117\112'and 1 or-1 end end)a0(bX.InputEnded,function()bI=0
end)else bO[bS]=bT a0(bX.Activated,function()aW[bS]=not aW[bS]aT[bS].paint(aW[bS
])end)end end a0(aN.InputChanged,function(bQ)if not bJ or not bM or not bM.
Visible then return end if bQ~=bJ and bQ.UserInputType~=Enum.UserInputType.
MouseMovement then return end local bR=bQ.Position-bK local bS=workspace.
CurrentCamera local bT=bS and bS.ViewportSize local bU,bV=bL.X+bR.X,bL.Y+bR.Y if
bT then bU=math.clamp(bU,0,math.max(0,bT.X-66))bV=math.clamp(bV,0,math.max(0,bT.
Y-76))end bM.Position=UDim2.fromOffset(bU,bV)end)a0(aN.InputEnded,function(bQ)if
bQ==bJ then bJ=nil bM=nil end bI=0 end)local function bQ(bR)if bR:IsA('\066\097\115\101\080\097\114\116'
)then return bR end return bR:IsA('\077\111\100\101\108')and(bR.PrimaryPart or bR:
FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')or bR:FindFirstChildWhichIsA('\066\097\115\101\080\097\114\116',true))
or nil end local bR=setmetatable({},{__mode='\107'})local function bS(bT)if not(bT:
IsA('\077\111\100\101\108')or bT:IsA('\066\097\115\101\080\097\114\116'))then return nil end local bU=tostring(bT:
GetAttribute('\082\101\097\108\078\097\109\101')or bT.Name)if bT.Name=='\068\105\103\083\112\111\116'and bT:IsA('\077\111\100\101\108')then
return'\116\114\101\097\115\117\114\101'end if bT:IsA('\077\111\100\101\108')and(bT.Parent and bT.Parent.Name==
'\070\111\114\116\114\101\115\115\101\115'or bT.Parent==workspace and bB[bT.Name])then return'\115\116\114\117\099\116\117\114\101\115'end
if bT.Name=='\067\104\117\114\099\104'and bT:IsA('\077\111\100\101\108')then return'\099\104\117\114\099\104'end if bT.Parent and
bT.Parent.Name=='\078\112\099'then if bT:GetAttribute('\078\112\099\070\097\099\116\105\111\110')=='\070\114\105\101\110\100\108\121\067\111\109\112\097\110\105\111\110'
or bU:lower():find('\099\111\109\112\097\110\105\111\110',1,true)or bT:GetAttribute('\070\114\105\101\110\100\108\121')==true then
return'\099\111\109\112\097\110\105\111\110\115'end if bU:lower():find('\109\105\109\105\099',1,true)or bT:GetAttribute(
'\077\105\109\105\099\067\104\101\115\116\068\097\109\097\103\101\097\098\108\101')~=nil then return'\109\105\109\105\099\115'end return'\109\111\098\115'end if bT:
GetAttribute('\082\117\110\116\105\109\101\067\104\101\115\116\077\111\100\101\108')==true then return'\099\104\101\115\116\115'end if aP:HasTag(bT,
'\079\114\101')or type(bT:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101'))=='\115\116\114\105\110\103'then return'\111\114\101\115'end
if aP:HasTag(bT,'\068\117\110\103\101\111\110\065\114\101\110\097\068\111\111\114')then return'\097\114\101\110\097\115'end if aP:HasTag(bT,
'\068\117\110\103\101\111\110\084\114\101\097\115\117\114\101\068\111\111\114')then return'\116\114\101\097\115\117\114\101\068\111\111\114\115'end if aP:HasTag(bT,
'\068\117\110\103\101\111\110\068\111\111\114')then return'\100\111\111\114\115'end if bT.Parent and bT.Parent.Name=='\073\116\101\109\115'then
return bU:lower():find('\115\099\114\097\112',1,true)and'\115\099\114\097\112'or'\105\116\101\109\115'end end local bT=false
local function bU()if bT then return end bT=true task.spawn(function()local bV={
workspace}local bW=0 while aR and#bV>0 do local bX=table.remove(bV)local bY=bS(
bX)if bY then bR[bX]=bY end for bZ,b_ in ipairs(bX:GetChildren())do bV[#bV+1]=b_
end bW+=1 if bW%120==0 then task.wait()end end bT=false end)end a0(workspace.
DescendantAdded,function(bV)local bW=bS(bV)if bW then bR[bV]=bW end end)local bV
={}local function bW(bX)local bY=bV[bX]if bY then for bZ,b_ in pairs(bY)do if
typeof(b_)=='\073\110\115\116\097\110\099\101'then b_:Destroy()end end bV[bX]=nil end end local function
bX()local bY={}for bZ in pairs(bV)do bY[#bY+1]=bZ end for bZ,b_ in ipairs(bY)do
bW(b_)end end local bY,bZ,b_,b0,b1 local b2=setmetatable({},{__mode='\107'})local
b3,b4 local function b5()if b3 then pcall(function()b3.Range=b4 end)b3=nil end
end local function b6()if b1 then b1:Destroy()b1=nil end if b0 then b0:Destroy()
b0=nil end b_=nil end local function b7()for b8,b9 in pairs(b2)do if b8.Parent
then b8.CanCollide=b9 end b2[b8]=nil end end local b8={}local b9,ca local cb,cc,
cd=0,nil,0 local ce local cf=false local cg=0 local function ch()if b9 then b9.
Debounce=math.max(tonumber(b9.Debounce)or 0,tonumber(ca)or 0)end b9=nil ca=nil
end local ci,cj,ck local function cl()if ci and ci.GetAimRay==ck then ci.
GetAimRay=cj end ci=nil cj=nil ck=nil end local function cm()for cn,co in pairs(
b8)do if cn.Parent then cn.Size=co.size end co.box:Destroy()b8[cn]=nil end end
local function cn(co,cp)local cq,cr=nil,cp local cs=workspace:FindFirstChild(
'\078\112\099')for ct,cu in ipairs(cs and cs:GetChildren()or{})do local cv=bS(cu)local cw
=cu:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cx=cu:FindFirstChild('\072\101\097\100')if(cv==
'\109\111\098\115'or cv=='\109\105\109\105\099\115')and cw and cw.Health>0 and cx and cx:IsA('\066\097\115\101\080\097\114\116')then
local cy=(cx.Position-co.Position).Magnitude if cy<cr then local cz=true if aV.
visibleOnly then local cA=RaycastParams.new()cA.FilterType=Enum.
RaycastFilterType.Exclude cA.FilterDescendantsInstances={aM.Character}local cB=
workspace:Raycast(co.Position,cx.Position-co.Position,cA)cz=not cB or cB.
Instance:IsDescendantOf(cu)end if cz then cr=cy cq=cx end end end end local ct=
aJ.stoneTarget and aJ.stoneTarget()if ct and ct.Parent then local cu=ct.Parent:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')if cu and cu.Health>0 and(ct.Position-co.
Position).Magnitude<cp then local cv=true if aV.visibleOnly then local cw=
RaycastParams.new()cw.FilterType=Enum.RaycastFilterType.Exclude cw.
FilterDescendantsInstances={aM.Character}local cx=workspace:Raycast(co.Position,
ct.Position-co.Position,cw)cv=not cx or cx.Instance:IsDescendantOf(ct.Parent)end
if cv then return ct,(ct.Position-co.Position).Magnitude end end end return cq,
cr end local function co()for cp in pairs(aW)do aW[cp]=false aT[cp].paint(false)
end b5()b6()b7()cl()cm()ch()cg+=1 cf=false cc=nil ce=nil cb=0 bI=0 if bY and bY.
Parent then bY.WalkSpeed=bZ end bY=nil end a0(aO.Heartbeat,function()if not aR
then return end local cp,cq,cr=aJ.actor()if bY and(bY~=cr or not aW.speed)then
if bY.Parent then bY.WalkSpeed=bZ end bY=nil end if cr and aW.speed then if bY~=
cr then bY=cr bZ=cr.WalkSpeed end cr.WalkSpeed=aV.speed end if not cp or not aW.
noclip then b7()else for cs,ct in ipairs(cp:GetDescendants())do if ct:IsA(
'\066\097\115\101\080\097\114\116')then if b2[ct]==nil then b2[ct]=ct.CanCollide end ct.CanCollide=false
end end end if not cq or not aW.fly or aJ.movementBusy and aJ.movementBusy()then
b6()else if b_~=cq then b6()b_=cq b0=a1('\065\116\116\097\099\104\109\101\110\116',{},cq)b1=a1(
'\076\105\110\101\097\114\086\101\108\111\099\105\116\121',{Attachment0=b0,MaxForce=1e7,RelativeTo=Enum.ActuatorRelativeTo
.World},cq)end local cs=cr.MoveDirection local ct=workspace.CurrentCamera if cs.
Magnitude>0.1 and ct then cs=Vector3.new(cs.X,ct.CFrame.LookVector.Y*cs.
Magnitude,cs.Z)end local cu=bI if not aN:GetFocusedTextBox()then if aN:
IsKeyDown(Enum.KeyCode.Space)then cu+=1 end if aN:IsKeyDown(Enum.KeyCode.
LeftControl)then cu-=1 end end b1.VectorVelocity=(cs+Vector3.new(0,cu,0))*aV.
flySpeed end end)local cp,cq,cr=0,0,0 task.spawn(function()while aR do local cs,
ct=pcall(function()local cs,ct,cu=aJ.actor()if not ct then b5()cl()cm()ch()bX()
return end for cv,cw in pairs(bO)do cw.BackgroundColor3=aW[cv]and Color3.
fromRGB(30,85,100)or Color3.fromRGB(20,27,39)end if not aW.hitbox then cm()else
local cv={}local cw=cn(ct,aV.gunRange)if cw then cv[cw]=true local cx=b8[cw]if
not cx then cx={size=cw.Size,box=a1('\066\111\120\072\097\110\100\108\101\065\100\111\114\110\109\101\110\116',{Adornee=cw,AlwaysOnTop
=true,ZIndex=1,Transparency=0.93,Color3=Color3.fromRGB(110,190,255)},bG)}b8[cw]=
cx end cw.Size=Vector3.new(aV.hitboxSize,aV.hitboxSize,aV.hitboxSize)cx.box.Size
=cw.Size end for cx,cy in pairs(b8)do if not cv[cx]then if cx.Parent then cx.
Size=cy.size end cy.box:Destroy()b8[cx]=nil end end end local cv=false for cw,cx
in pairs(aY)do if cx.enabled then cv=true end end if cv and os.clock()-cp>30
then cp=os.clock()bU()end if cv and os.clock()-cq>0.3 then cq=os.clock()local cw
={}for cx,cy in ipairs(game:GetService('\080\108\097\121\101\114\115'):GetPlayers())do if cy~=aM and
cy.Character then bR[cy.Character]='\112\108\097\121\101\114\115'end end for cx,cy in pairs(bR)do if
not cx.Parent or not cx:IsDescendantOf(workspace)then bR[cx]=nil else cy=bS(cx)
or cy bR[cx]=cy if aY[cy].enabled then local cz=bQ(cx)local cA=true if aV.
hideBases and cy=='\115\116\114\117\099\116\117\114\101\115'then cA=false end if aV.hideShop then local cB=cx
while cB and cB~=workspace do if aP:HasTag(cB,'\083\104\111\112\073\116\101\109')then cA=false break end
cB=cB.Parent end end if cy=='\115\116\114\117\099\116\117\114\101\115'and aV.hideVisited then local cB=cx.Name
:lower()if cz and(cz.Position-ct.Position).Magnitude<60 then by[cx]=true end if
by[cx]or cB:find('\115\116\097\114\116',1,true)or cB:find('\116\117\116\111\114\105\097\108',1,true)then cA=false end
end local cB=cx:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cC=cB and cB.Health or cx
:GetAttribute('\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')if aV.hideDead and aG(cy,cC,cx:GetAttribute(
'\067\097\116\101\103\111\114\121'),cx:GetAttribute('\067\111\114\112\115\101\077\097\120\072\101\097\108\116\104'),cx:GetAttribute(
'\067\111\114\112\115\101\080\108\097\121\101\114\085\115\101\114\073\100'))then cA=false end if aV.hideAttached and(cy=='\105\116\101\109\115'or cy
=='\115\099\114\097\112')and(cx:GetAttribute('\087\101\108\100\101\100')==true or cx:GetAttribute(
'\068\114\105\108\108\087\101\108\100\067\111\108\108\105\115\105\111\110\083\117\112\112\114\101\115\115\101\100')==true)then cA=false end if cy=='\111\114\101\115'then local
cD=tostring(cx:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101')or cx.Name):lower()cA=false for cE
in aV.oreFilter:gmatch('\091\094\044\093\043')do if cD:find(cE:match('\094\037\115\042\040\046\045\041\037\115\042\036'):lower(),1,
true)then cA=true end end end if cz and cA then local cD=(cz.Position-ct.
Position).Magnitude if cD<=aV.maxDistance then cw[#cw+1]={o=cx,kind=cy,anchor=cz
,distance=cD}end end end end end table.sort(cw,function(cx,cy)local cz,cA=bl(cx.
kind),bl(cy.kind)if cz~=cA then return cz<cA end return cx.distance<cy.distance
end)local cx={}for cy=1,math.min(#cw,aV.maxESP)do local cz=cw[cy]local cA=cz.o
cx[cA]=true if bV[cA]and bV[cA].style~=aV.style then bW(cA)end local cB=bV[cA]if
not cB then cB={style=aV.style}bV[cA]=cB cB.billboard=a1('\066\105\108\108\098\111\097\114\100\071\117\105',{Adornee
=cz.anchor,AlwaysOnTop=true,Size=UDim2.fromOffset(220,48),StudsOffset=Vector3.
new(0,3,0)},bG)cB.text=a1('\084\101\120\116\076\097\098\101\108',{Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,TextSize=12,RichText=true,TextStrokeTransparency=0.3,
Font=Enum.Font.GothamBold,TextWrapped=true},cB.billboard)if aV.style=='\066\111\120'then
cB.visual=a1('\066\111\120\072\097\110\100\108\101\065\100\111\114\110\109\101\110\116',{Adornee=cz.anchor,AlwaysOnTop=true,ZIndex=5,
Transparency=0.65},bG)else cB.visual=a1('\072\105\103\104\108\105\103\104\116',{Adornee=cA,DepthMode=Enum.
HighlightDepthMode.AlwaysOnTop,FillTransparency=0.85},bG)end end local cC=a2(aY[
cz.kind].color)local cD=cA:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cE=cD and cD.
Health or cA:GetAttribute('\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')local cF=false local cG=tostring(cA:
GetAttribute('\082\101\097\108\078\097\109\101')or cA.Name)cB.billboard.Adornee=cz.anchor if cz.kind==
'\111\114\101\115'then local cH=tostring(cA:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101')or cA:
GetAttribute('\082\101\097\108\078\097\109\101')or cA.Name)local cI={Coal='\067\097\114\118\u{e3}\111',Iron='\070\101\114\114\111',
Gold='\079\117\114\111',Diamond='\068\105\097\109\097\110\116\101',Emerald='\069\115\109\101\114\097\108\100\097',Ruby='\082\117\098\105'}for cJ,cK in
pairs(cI)do if cH:lower():find(cJ:lower(),1,true)then cG=aL(cK,cJ)break end end
cF=aP:HasTag(cA,'\087\111\114\109')or cA:FindFirstChild('\087\111\114\109',true)~=nil if cF then cG=cG..
aL('\032\105\110\102\101\115\116\097\100\111','\032\105\110\102\101\115\116\101\100')end elseif cz.kind=='\099\104\117\114\099\104'then cG=aL('\073\103\114\101\106\097',
'\067\104\117\114\099\104')elseif cz.kind=='\116\114\101\097\115\117\114\101'then cG=aL('\084\101\115\111\117\114\111\032\101\110\116\101\114\114\097\100\111',
'\066\117\114\105\101\100\032\116\114\101\097\115\117\114\101')elseif cz.kind=='\100\111\111\114\115'then local cH local cI=cA while cI and
cI~=workspace do cH=tonumber(cI:GetAttribute('\068\117\110\103\101\111\110\084\105\101\114')or cI:GetAttribute(
'\071\097\116\101\084\105\101\114')or cI:GetAttribute('\068\105\102\102\105\099\117\108\116\121\084\105\101\114')or cI:GetAttribute('\084\105\101\114'))if not
cH then cH=tonumber(cI.Name:match('\091\084\116\093\105\101\114\091\095\037\115\093\042\040\037\100\043\041'))end if cH then break end
cI=cI.Parent end if not cH then for cJ,cK in ipairs(cA:GetDescendants())do if cK
:IsA('\084\101\120\116\076\097\098\101\108')then local cL=cK.Text:gsub('\060\091\094\062\093\043\062',''):lower()cH=tonumber(cL:
match('\116\105\101\114\037\115\042\091\058\037\045\093\063\037\115\042\040\037\100\043\041'))if not cH then local cM=cL:match(
'\116\105\101\114\037\115\042\091\058\037\045\093\063\037\115\042\040\105\043\041\037\102\091\037\065\093')cH=cM and({i=1,ii=2,iii=3})[cM]end if cH then break
end end end end cG='\071\097\116\101\032\u{b7}\032\084\105\101\114\032'..(cH and tostring(math.floor(cH))or'\063')if
aV.dungeonScan then cG=cG..'\n'..bA(cA)end elseif cz.kind=='\115\116\114\117\099\116\117\114\101\115'or cz.
kind=='\097\114\101\110\097\115'or cz.kind=='\116\114\101\097\115\117\114\101\068\111\111\114\115'then cG=bC(cG)elseif cz.kind=='\099\104\101\115\116\115'
then local cH={CommonChest=aL('\066\097\u{fa}\032\100\101\032\109\097\100\101\105\114\097','\087\111\111\100\101\110\032\099\104\101\115\116'),
TutorialCommonChest=aL('\066\097\u{fa}\032\100\101\032\109\097\100\101\105\114\097','\087\111\111\100\101\110\032\099\104\101\115\116'),GoldChest=aL(
'\066\097\u{fa}\032\100\101\032\111\117\114\111','\071\111\108\100\032\099\104\101\115\116'),DiamondChest=aL('\066\097\u{fa}\032\100\101\032\100\105\097\109\097\110\116\101',
'\068\105\097\109\111\110\100\032\099\104\101\115\116'),VoidChest=aL('\066\097\u{fa}\032\100\111\032\118\097\122\105\111','\086\111\105\100\032\099\104\101\115\116'),PhoenixChest=aL(
'\066\097\u{fa}\032\070\u{ea}\110\105\120','\080\104\111\101\110\105\120\032\099\104\101\115\116'),Mimic_Chest=aL('\091\033\093\032\077\u{ed}\109\105\099\111',
'\091\033\093\032\077\105\109\105\099')}cG=cH[cG]or bC(cG)elseif cz.kind=='\109\105\109\105\099\115'then cG=aL(
'\091\033\093\032\077\u{ed}\109\105\099\111','\091\033\093\032\077\105\109\105\099')end cG=cG:gsub('\038','\038\097\109\112\059'):gsub('\060','\038\108\116\059'):gsub(
'\062','\038\103\116\059')if aV.rarityColors and(cz.kind=='\105\116\101\109\115'or cz.kind=='\115\099\114\097\112'or cz.kind
=='\111\114\101\115'or cz.kind=='\099\104\101\115\116\115')then local cH=bD[tostring(bF(cA,'\082\097\114\105\116\121'))]if cH
then cC=a2(cH)end end local cH=aV.showValue and(cz.kind=='\105\116\101\109\115'or cz.kind==
'\115\099\114\097\112'or cz.kind=='\111\114\101\115')and bF(cA,'\086\097\108\117\101')or nil if not cB.value then cB.
priceRow=a1('\070\114\097\109\101',{AnchorPoint=Vector2.new(0.5,0),BackgroundTransparency=1},cB
.billboard)cB.value=a1('\084\101\120\116\076\097\098\101\108',{BackgroundTransparency=1,Font=Enum.Font.
GothamBold,TextXAlignment=Enum.TextXAlignment.Left,TextColor3=Color3.fromRGB(255
,215,95),TextStrokeTransparency=0.3},cB.priceRow)cB.coin=a1('\070\114\097\109\101',{
BackgroundColor3=Color3.fromRGB(255,200,55),BorderSizePixel=0},cB.priceRow)a1(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},cB.coin)a1('\085\073\083\116\114\111\107\101',{Color=Color3.
fromRGB(170,110,20),Thickness=1},cB.coin)cB.coinText=a1('\084\101\120\116\076\097\098\101\108',{Text='\036',
Size=UDim2.fromScale(1,1),BackgroundTransparency=1,TextColor3=Color3.fromRGB(120
,75,10)},cB.coin)end local cI=type(cH)=='\110\117\109\098\101\114'and cH==cH and cH<math.huge cB.
value.Visible=cI cB.coin.Visible=cI local cJ=aV.textSize+4 local cK,cL=cG:gsub(
'\n','')local cM=cJ*(1+cL+(cE and 1 or 0))cB.text.TextWrapped=false cB.text.Size
=UDim2.new(1,0,0,cM)cB.priceRow.Visible=cI if cI then local cN=tostring(math.
round(cH))local cO=math.max(8,aV.textSize-1)if cB.priceText~=cN or cB.priceSize
~=cO then cB.priceText=cN cB.priceSize=cO cB.priceWidth=game:GetService(
'\084\101\120\116\083\101\114\118\105\099\101'):GetTextSize(cN,cO,Enum.Font.GothamBold,Vector2.new(1000,100)).X
end local cP={X=cB.priceWidth}local cQ=cO local cR=cQ+4+cP.X cB.priceRow.Size=
UDim2.fromOffset(cR,cJ)cB.priceRow.Position=UDim2.new(0.5,0,0,cM)cB.value.Text=
cN cB.value.TextSize=cO cB.value.Size=UDim2.fromOffset(cP.X,cJ)cB.value.Position
=UDim2.fromOffset(cQ+4,0)cB.coin.Size=UDim2.fromOffset(cQ,cQ)cB.coin.Position=
UDim2.fromOffset(0,(cJ-cQ)/2)cB.coinText.TextSize=math.max(7,cO-2)end cB.
billboard.Size=UDim2.fromOffset(260,cM+(cI and cJ or 0))if not cB.worm then cB.
worm=a1('\070\114\097\109\101',{Size=UDim2.fromOffset(22,22),Position=UDim2.fromOffset(-22,0),
BackgroundTransparency=1,Visible=false},cB.billboard)for cN=0,4 do local cO=a1(
'\070\114\097\109\101',{Size=UDim2.fromOffset(7,7),Position=UDim2.fromOffset(cN*4,8+math.sin(cN
)*4),BackgroundColor3=Color3.fromRGB(225,145,190),BorderSizePixel=0},cB.worm)a1(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},cO)end cB.mimic=a1('\070\114\097\109\101',{Size=UDim2.
fromOffset(22,18),Position=UDim2.fromOffset(-24,0),BackgroundColor3=Color3.
fromRGB(125,65,45),Visible=false},cB.billboard)a1('\085\073\083\116\114\111\107\101',{Color=Color3.
fromRGB(255,185,75),Thickness=1.5},cB.mimic)a1('\070\114\097\109\101',{Size=UDim2.fromOffset(20
,7),Position=UDim2.fromOffset(1,6),BackgroundColor3=Color3.fromRGB(30,15,20),
BorderSizePixel=0},cB.mimic)for cN=0,3 do a1('\070\114\097\109\101',{Size=UDim2.fromOffset(3,4)
,Position=UDim2.fromOffset(2+cN*5,6),BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0},cB.mimic)end end cB.worm.Visible=cF cB.mimic.Visible=cz.kind
=='\109\105\109\105\099\115'cB.text.TextSize=aV.textSize cB.text.Text=string.format(
'\037\115\032\u{b7}\032\060\102\111\110\116\032\099\111\108\111\114\061\034\035\037\115\034\062\037\100\032\115\116\117\100\115\060\047\102\111\110\116\062\037\115',cG,aV.distanceColor,cz.distance,
cE and string.format('\n\072\080\032\037\046\048\102',cE)or'')cB.text.TextColor3=cC if aV.style==
'\066\111\120'then cB.visual.Color3=cC cB.visual.Adornee=cz.anchor if cA:IsA('\077\111\100\101\108')then
local cN,cO=cA:GetBoundingBox()cB.visual.Size=cO cB.visual.CFrame=cz.anchor.
CFrame:ToObjectSpace(cN)else cB.visual.Size=cA.Size end else cB.visual.FillColor
=cC cB.visual.OutlineColor=cC end end local cy={}for cz in pairs(bV)do if not cx
[cz]then cy[#cy+1]=cz end end for cz,cA in ipairs(cy)do bW(cA)end elseif not cv
then bX()end local cw=aJ.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local cx=cw and cw.ActiveTool
local cy=cx and tostring(cx.ToolName or cx.Tool and cx.Tool.Name or'')or''local
cz=cx and type(cx.Shoot)=='\102\117\110\099\116\105\111\110'and(cy:lower():find('\114\112\103',1,true)or cy:
lower():find('\098\108\097\099\107',1,true))if b9 and(b9~=cx or not aW.noLauncherCooldown or
not cz)then ch()end if aW.noLauncherCooldown and cz then b9=cx ca=math.max(
tonumber(ca)or 0,tonumber(cx.Debounce)or 0)cx.Debounce=0 end if aW.autoMedkit
and not(aJ.movementBusy and aJ.movementBusy())and not workspace:GetAttribute(
'\073\110\067\117\116\083\099\101\110\101')then if cc then local cA=cx and type(cx.Consume)=='\102\117\110\099\116\105\111\110'and cy:
lower():find('\109\101\100\107\105\116',1,true)if cu.Health>cc.health and os.clock()>=(cc.
completeAt or 0)or os.clock()-cc.started>15 then if(cA or not cx)and cc.previous
and aJ.equip then aJ.equip(cc.previous)end cc=nil cd=os.clock()+2 end elseif not
cf and cu.MaxHealth>0 and cu.Health/cu.MaxHealth*100<=aV.medkitPercent and os.
clock()>=cd then if cb==0 then cb=os.clock()+(aV.medkitInstant and 0 or 0.75)end
if os.clock()>=cb then local cA=cy if cx and type(cx.Consume)=='\102\117\110\099\116\105\111\110'and cy:
lower():find('\109\101\100\107\105\116',1,true)then cc={health=cu.Health,started=os.clock(),
previous=ce or cA}ce=nil cx:Consume()cc.completeAt=tonumber(cx.NextMedicalUseAt)
or os.clock()cb=0 else ce=ce or cA cd=os.clock()+5 cf=true local cB=cg task.
spawn(function()local cC,cD=pcall(function()return aJ.equip and aJ.equip(
'\077\101\100\107\105\116',true,function()return aR and aW.autoMedkit and cg==cB and cu.Health>0
end)end)if not aR or cg~=cB then return end cf=false if cC and cD then cd=os.
clock()+0.5 else ce=nil cb=0 if aW.autoMedkit then aJ.say(aL(
'\065\117\116\111\032\077\101\100\107\105\116\058\032\107\105\116\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\032\111\117\032\106\111\103\111\032\114\101\099\117\115\111\117\032\101\113\117\105\112\097\114\046\032\067\111\110\102\105\114\097\032\101\115\112\097\u{e7}\111\032\110\097\032\098\097\114\114\097\032\101\032\115\101\032\101\115\116\u{e1}\032\112\105\108\111\116\097\110\100\111\046'
,
"\065\117\116\111\032\077\101\100\107\105\116\058\032\107\105\116\032\117\110\097\118\097\105\108\097\098\108\101\032\111\114\032\103\097\109\101\032\114\101\102\117\115\101\100\032\101\113\117\105\112\046\032\067\104\101\099\107\032\104\111\116\098\097\114\032\115\112\097\099\101\032\097\110\100\032\119\104\101\116\104\101\114\032\121\111\117\032\097\114\101\032\100\114\105\118\105\110\103\046"
))end end end)end end else cb=0 end end local cA=cz or cx and type(cx.Shoot)==
'\102\117\110\099\116\105\111\110'and cx.Tool and(cx.Tool.Name:find('\082\105\102\108\101',1,true)or cx.Tool.Name:find(
'\082\101\118\111\108\118\101\114',1,true)or cx.Tool.Name:find('\083\104\111\116\103\117\110',1,true))if aW.silentAim and cA
then local cB=aJ.ctrl('\067\097\109\101\114\097\067\111\110\116\114\111\108\108\101\114')if cB and type(cB.GetAimRay)==
'\102\117\110\099\116\105\111\110'and ci~=cB then cl()ci=cB cj=cB.GetAimRay local cC=cj ck=function(cD,
...)local cE=cC(cD,...)local cF,cG=aJ.actor()local cH=aJ.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')
local cI=cH and cH.ActiveTool if not aR or not aW.silentAim or not cG or not cI
or type(cI.Shoot)~='\102\117\110\099\116\105\111\110'or not cE then return cE end local cJ=cn(cG,aV.
gunRange)if cJ and(cJ.Position-cE.Origin).Magnitude>0.01 then return Ray.new(cE.
Origin,(cJ.Position-cE.Origin).Unit)end return cE end cB.GetAimRay=ck end else
cl()end local cB=aJ.ctrl('\085\073\067\111\110\116\114\111\108\108\101\114')local cC=not workspace:GetAttribute(
'\073\110\067\117\116\083\099\101\110\101')and not aN:GetFocusedTextBox()and not(cB and cB.ActiveFrame and cB.
ActiveFrame.Visible)if aW.autoMove and cC and not(aJ.movementBusy and aJ.
movementBusy())and not cu.SeatPart and not aW.fly then local cD=cn(ct,150)if cD
then local cE=Vector3.new(ct.Position.X-cD.Position.X,0,ct.Position.Z-cD.
Position.Z)if cE.Magnitude<0.01 then cE=Vector3.new(0,0,1)end local cF=cD.
Position+cE.Unit*aV.combatDistance if math.abs((ct.Position-cD.Position).
Magnitude-aV.combatDistance)>1.5 then cu:MoveTo(Vector3.new(cF.X,ct.Position.Y,
cF.Z))end end end if aW.autoFire and cA and cC and cn(ct,aV.gunRange)then cx:
Shoot()end local cD=aW.aura or aW.oreAura or aW.autoMove if b3 and(b3~=cx or not
cD)then b5()end local cE=aJ.ctrl('\085\073\067\111\110\116\114\111\108\108\101\114')if cD and cx and cx.Tool and
type(cx.Swing)=='\102\117\110\099\116\105\111\110'and not workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')and not aN
:GetFocusedTextBox()and not(cE and cE.ActiveFrame and cE.ActiveFrame.Visible)
then local cF=cx.Tool.Name:find('\080\105\099\107\097\120\101',1,true)~=nil if aW.aura or aW.autoMove
or aW.oreAura and cF then if type(cx.Range)=='\110\117\109\098\101\114'then if b3~=cx then b3=cx
b4=cx.Range end cx.Range=aW.autoMove and math.max(aV.reach,aV.combatDistance+2)
or aV.reach end local cG,cH=nil,aW.autoMove and math.max(aV.reach,aV.
combatDistance+2)or aV.reach local cI=workspace:FindFirstChild('\078\112\099')if aW.aura
or aW.autoMove then for cJ,cK in ipairs(cI and cI:GetChildren()or{})do local cL=
bS(cK)local cM=bQ(cK)local cN=cK:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cO=cN
and cN.Health or cK:GetAttribute('\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')or 0 local cP=cK:
GetAttribute('\083\101\115\115\105\111\110\070\117\101\108\076\101\101\099\104\073\100')~=nil local cQ=not cP or(aM:GetAttribute(
'\073\110\068\117\110\103\101\111\110')~=true and cK:GetAttribute('\070\117\101\108\076\101\101\099\104\086\117\108\110\101\114\097\098\108\101')==true)if cQ and(cL
=='\109\111\098\115'or cL=='\109\105\109\105\099\115')and cM and cO>0 then local cR=(ct.Position-cM.Position).
Magnitude if cR<cH then cG=cM cH=cR end end end end local cJ=aJ.stoneTarget and
aJ.stoneTarget()if cJ and cJ.Parent and(cJ.Position-ct.Position).Magnitude<=aV.
reach then cG=cJ end if cG and not(aJ.movementBusy and aJ.movementBusy())and aV.
position~='\079\102\102'and not aW.fly and not aW.autoMove and not cu.SeatPart and os.
clock()-cr>0.4 then cr=os.clock()local cK=aV.position=='\065\098\111\118\101'and Vector3.new(0,
aV.offset,0)or-cG.CFrame.LookVector*aV.offset cs:PivotTo(CFrame.lookAt(cG.
Position+cK,cG.Position,aV.position=='\065\098\111\118\101'and cG.CFrame.RightVector or Vector3
.yAxis))end if cG or aW.oreAura and cF then cx:Swing()end end end end)if not cs
then aJ.say(aL('\067\111\110\116\114\111\108\101\115\032\097\118\097\110\u{e7}\097\100\111\115\058\032','\065\100\118\097\110\099\101\100\032\099\111\110\116\114\111\108\115\058\032')..tostring(ct)
)end task.wait(0.15)end end)return{stop=co,healing=function()return aW.
autoMedkit and(cc~=nil or ce~=nil or cb>0)end,cleanup=function()aR=false co()for
cs,ct in ipairs(aS)do ct:Disconnect()end bX()bH:Destroy()end}end local function
aI(aJ,aK,aL,aM,aN,aO)if type(aJ)=='\115\116\114\105\110\103'and aJ~=''then return aJ==aK or aJ==aL
end if aM then return true end return false end local function aJ(aK,aL)local aM
,aN=aK.ui,aK.T local aO=game:GetService('\080\108\097\121\101\114\115').LocalPlayer local aP=game:
GetService('\067\111\108\108\101\099\116\105\111\110\083\101\114\118\105\099\101')local aQ=game:GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')
local aR=true local aS=0 local aT={}local aU=false local aV=false local aW=400
local aX=250 local aY=setmetatable({},{__mode='\107'})local aZ=aK.section('\070\097\114\109')
local a_=aM.label(aZ,'\084\101\120\116\076\097\098\101\108',aN(
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
aV,aW in ipairs(aL)do local aX,aY,aZ=aW.X+0.2,aW.Z+0.2,aW.Y+0.03 local a_=aP and
aP[aV]or tostring(aV)if aX>aM or aY>aN or aZ>aO then return nil,aV end local a0
local a1,a2,a3=aS,aT,aU if a1+aX>aM then a1=0 a2+=a3 a3=0 end if a2+aY>aN then
for a4,a5 in ipairs(aR)do if a5.group==a_ and math.abs(aX-a5.w)<0.05 and math.
abs(aY-a5.d)<0.05 and a5.count<3 and a5.used+aZ<=math.min(aO,math.min(aX,aY)*1.5
)then a0=a5 break end end if not a0 then return nil,aV end end if not a0 then aS
,aT,aU=a1,a2,a3 a0={group=a_,x=aS+aX*0.5,z=aT+aY*0.5,w=aX,d=aY,used=0,count=0}aR
[#aR+1]=a0 aS+=aX aU=math.max(aU,aY)end aQ[aV]=Vector3.new(-aM*0.5+a0.x,-aO*0.5+
a0.used+aZ*0.5,-aN*0.5+a0.z)a0.used+=aZ a0.count+=1 end return aQ end local
function aL(aM,aN)local aO,aP=aM.ui,aM.T local aQ=game:GetService(
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
+1]=bi.size bg[#bg+1]=bi.group end local bh=aK(bf,a_.Size.X-0.8,a_.Size.Z-0.8,a_
.Size.Y-0.1,bg)assert(bh,aP(
'\083\101\108\101\u{e7}\u{e3}\111\032\110\u{e3}\111\032\099\097\098\101\032\110\111\032\113\117\097\100\114\097\100\111\046\032\079\114\103\097\110\105\122\101\032\101\109\032\108\111\116\101\115\032\109\101\110\111\114\101\115\046',
'\083\101\108\101\099\116\105\111\110\032\100\111\101\115\032\110\111\116\032\102\105\116\032\116\104\101\032\115\113\117\097\114\101\046\032\083\116\097\103\101\032\115\109\097\108\108\101\114\032\098\097\116\099\104\101\115\046'))local bi,bj=aN.
actor()assert(bj and(bj.Position-a_.Position).Magnitude<=150,
'\065\112\112\114\111\097\099\104\032\116\104\101\032\115\104\111\112\032\102\105\114\115\116')local bk={a_}local bl=aN.actor()if bl then bk[#bk+1]=
bl end local bm=workspace:FindFirstChild('\073\116\101\109\115')if bm then bk[#bk+1]=bm end for
bn,bo in ipairs(aY)do bk[#bk+1]=bo.item end local bn=RaycastParams.new()bn.
FilterType=Enum.RaycastFilterType.Exclude bn.FilterDescendantsInstances=bk local
bo=workspace:Raycast(a_.Position+a_.CFrame.UpVector*a_.Size.Y/2,-a_.CFrame.
UpVector*(a_.Size.Y+8),bn)assert(bo and bo.Normal:Dot(a_.CFrame.UpVector)>0.9,
aP('\080\105\115\111\032\112\108\097\110\111\032\100\097\032\099\111\109\112\114\097\032\110\u{e3}\111\032\105\100\101\110\116\105\102\105\099\097\100\111\046',
'\070\108\097\116\032\112\117\114\099\104\097\115\101\045\097\114\101\097\032\102\108\111\111\114\032\110\111\116\032\105\100\101\110\116\105\102\105\101\100\046'))local bp=a_.CFrame:
PointToObjectSpace(bo.Position).Y assert(math.abs(bp+a_.Size.Y/2)<1,aP(
'\080\105\115\111\032\102\111\114\097\032\100\097\032\u{e1}\114\101\097\032\100\101\032\099\111\109\112\114\097\059\032\111\114\103\097\110\105\122\097\u{e7}\u{e3}\111\032\105\110\116\101\114\114\111\109\112\105\100\097\046',
'\070\108\111\111\114\032\111\117\116\115\105\100\101\032\112\117\114\099\104\097\115\101\032\097\114\101\097\059\032\115\116\097\103\105\110\103\032\115\116\111\112\112\101\100\046'))local bq={}for br,bs in ipairs(
bm and bm:GetChildren()or{})do bq[bs]=true end for br,bs in ipairs(aQ:GetTagged(
'\083\104\111\112\073\116\101\109'))do bq[bs]=true end for br in pairs(bq)do local bs=ba(br)if bs then
local bu=a_.CFrame:PointToObjectSpace(bs.Position)assert(not(math.abs(bu.X)<a_.
Size.X/2 and math.abs(bu.Z)<a_.Size.Z/2 and bu.Y>bp-0.2 and bu.Y<a_.Size.Y/2),
aP('\069\115\118\097\122\105\101\032\111\032\113\117\097\100\114\097\100\111\032\097\110\116\101\115\032\100\101\032\111\114\103\097\110\105\122\097\114\032\111\117\116\114\111\032\108\111\116\101\046',
'\069\109\112\116\121\032\116\104\101\032\115\113\117\097\114\101\032\098\101\102\111\114\101\032\115\116\097\103\105\110\103\032\097\110\111\116\104\101\114\032\098\097\116\099\104\046'))end end for br,bs in ipairs(be
)do assert(aS and aU==bd,'\083\116\111\112\112\101\100')local bu=aN.actor()local bv=ba(bs.item)
assert(bu and bv and a_.Parent,'\073\116\101\109\047\099\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101')bu:PivotTo(bv.CFrame
*CFrame.new(0,3,4))task.wait(0.2)assert(aS and aU==bd,'\083\116\111\112\112\101\100')local bw=aN.
await(aN.service('\068\114\097\103\083\101\114\118\105\099\101'):Request(bs.item))if not aS or aU~=bd then if bw
then pcall(function()aN.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)end error(
'\083\116\111\112\112\101\100')end assert(bw==true,aP(
'\079\032\106\111\103\111\032\114\101\099\117\115\111\117\032\109\111\118\101\114\032\117\109\032\105\116\101\109\046\032\079\114\103\097\110\105\122\097\u{e7}\u{e3}\111\032\105\110\116\101\114\114\111\109\112\105\100\097\046',
'\071\097\109\101\032\114\101\102\117\115\101\100\032\116\111\032\109\111\118\101\032\097\110\032\105\116\101\109\046\032\083\116\097\103\105\110\103\032\115\116\111\112\112\101\100\046'))local bx,by=pcall(function()
assert(a_.Parent and bs.item.Parent,'\083\116\111\099\107\032\117\110\108\111\097\100\101\100')bu:PivotTo(a_.CFrame*CFrame
.new(a_.Size.X*0.5+4,1,0))local bx=a_.CFrame*CFrame.new(bh[br]+Vector3.new(0,bp+
(a_.Size.Y-0.1)/2,0))local by=bs.cf:ToObjectSpace(bs.item:GetPivot())bs.
destination=bx.Position bs.item:PivotTo(bx*by)for bz,bA in ipairs(bs.item:IsA(
'\066\097\115\101\080\097\114\116')and{bs.item}or bs.item:GetDescendants())do if bA:IsA('\066\097\115\101\080\097\114\116')then
bA.AssemblyLinearVelocity=Vector3.zero bA.AssemblyAngularVelocity=Vector3.zero
end end task.wait(0.4)end)pcall(function()aN.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false
)end)assert(bx,by)task.wait(0.8)local bz=bs.item:IsA('\077\111\100\101\108')and bs.item:
GetBoundingBox()or bs.item.CFrame assert((bz.Position-bs.destination).Magnitude<
0.6,aP(
'\073\116\101\109\032\099\097\105\117\032\111\117\032\115\097\105\117\032\100\097\032\112\111\115\105\u{e7}\u{e3}\111\046\032\080\097\114\101\105\032\112\097\114\097\032\110\u{e3}\111\032\100\101\114\114\117\098\097\114\032\111\115\032\100\101\109\097\105\115\046'
,"\073\116\101\109\032\102\101\108\108\032\111\114\032\115\104\105\102\116\101\100\046\032\083\116\111\112\112\101\100\032\116\111\032\097\118\111\105\100\032\100\105\115\116\117\114\098\105\110\103\032\116\104\101\032\114\101\109\097\105\110\105\110\103\032\105\116\101\109\115\046"))for
bA=1,br-1 do local bB=be[bA]assert(bB.item.Parent,'\080\108\097\099\101\100\032\105\116\101\109\032\117\110\108\111\097\100\101\100')local
bC=bB.item:IsA('\077\111\100\101\108')and bB.item:GetBoundingBox()or bB.item.CFrame assert((bC.
Position-bB.destination).Magnitude<0.6,aP(
'\065\032\112\105\108\104\097\032\097\110\116\101\114\105\111\114\032\115\101\032\109\111\118\101\117\046\032\079\114\103\097\110\105\122\097\u{e7}\u{e3}\111\032\105\110\116\101\114\114\111\109\112\105\100\097\046',
'\065\110\032\101\097\114\108\105\101\114\032\115\116\097\099\107\032\109\111\118\101\100\046\032\083\116\097\103\105\110\103\032\115\116\111\112\112\101\100\046'))end assert(aS and aU==bd,'\083\116\111\112\112\101\100')
a6(string.format(aP('\079\114\103\097\110\105\122\097\110\100\111\058\032\037\100\047\037\100\046\032\078\101\110\104\117\109\097\032\099\111\109\112\114\097\032\114\101\097\108\105\122\097\100\097\046',
'\083\116\097\103\105\110\103\058\032\037\100\047\037\100\046\032\078\111\032\112\117\114\099\104\097\115\101\032\109\097\100\101\046'),br,#be))end a6(
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
(aO,aP,aQ,aR,aS)if aQ==''then aQ=nil end if aR==''then aR=nil end if aO==false
then return not aQ and not aR and not aP end if not aO then return false end if
aQ then return aQ==aO:GetAttribute('\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')end if aR then
return aR==aO:GetAttribute('\083\101\115\115\105\111\110\068\117\110\103\101\111\110\073\100')end return aS or aP==aO end local
function aO(aP,aQ)local aR,aS=aP.ui,aP.T local aT=game:GetService('\080\108\097\121\101\114\115').
LocalPlayer local aU=game:GetService('\076\105\103\104\116\105\110\103')local aV=game:GetService(
'\067\111\108\108\101\099\116\105\111\110\083\101\114\118\105\099\101')local aW=true local aX=0 local aY={}local aZ={}local a_={}
local a0=2 local a1=6 local a2={Coal=true}local a3=1500 local a4=aP.section(
'\070\097\114\109')local a5=aP.section('\065\106\117\115\116\101\115')local a6=aP.section('\067\111\109\098\097\116\101')local a7=aR.
label(a4,'\084\101\120\116\076\097\098\101\108',aS('\077\105\110\101\114\097\u{e7}\u{e3}\111\032\101\032\112\114\111\116\101\u{e7}\u{e3}\111\058\032\112\097\114\097\100\097\115\046',
'\077\105\110\105\110\103\032\097\110\100\032\112\114\111\116\101\099\116\105\111\110\058\032\115\116\111\112\112\101\100\046'),55,70)local function a8(a9,ba)aY[#aY+1]=a9:
Connect(ba)end local function a9(ba,bb,bc,bd,be)aZ[bb]=false local bf,bg=aR.
checkbox(ba,aS(bc,bd),be)a_[bb]=bg a8(bf.Activated,function()aZ[bb]=not aZ[bb]
bg(aZ[bb])end)end local function ba(bb,bc,bd,be,bf,bg,bh,bi)aR.label(bb,
'\084\101\120\116\076\097\098\101\108',aS(bd,be),30,bf)local bj=aR.label(bb,'\084\101\120\116\066\111\120',tostring(bc),40,bf+1)
a8(bj.FocusLost,function()local bk=tonumber(bj.Text)if bk and bk==bk and math.
abs(bk)<math.huge then bc=math.clamp(bk,bg,bh)bi(bc)end bj.Text=tostring(bc)end)
end a9(a5,'\098\114\105\103\104\116','\070\117\108\108\098\114\105\103\104\116','\070\117\108\108\098\114\105\103\104\116',70)ba(a5,a0,
'\073\110\116\101\110\115\105\100\097\100\101\032\100\111\032\070\117\108\108\098\114\105\103\104\116\032\040\048\u{2013}\053\041','\070\117\108\108\098\114\105\103\104\116\032\105\110\116\101\110\115\105\116\121\032\040\048\u{2013}\053\041',71,
0,5,function(bb)a0=bb end)local bb local function bc()if bb then for bd,be in
pairs(bb)do aU[bd]=be end bb=nil end end a9(a4,'\109\105\110\101',
'\065\117\116\111\032\077\105\110\101\032\u{b7}\032\109\105\110\u{e9}\114\105\111\115\032\115\101\108\101\099\105\111\110\097\100\111\115','\065\117\116\111\032\077\105\110\101\032\u{b7}\032\115\101\108\101\099\116\101\100\032\111\114\101\115',
71)aR.label(a4,'\084\101\120\116\076\097\098\101\108',aS(
'\078\097\032\077\105\110\101\115\104\097\102\116\044\032\109\105\110\101\114\097\032\115\111\109\101\110\116\101\032\110\101\108\097\032\101\032\118\111\108\116\097\032\097\111\032\112\111\110\116\111\032\105\110\105\099\105\097\108\046\032\070\111\114\097\044\032\109\105\110\101\114\097\032\097\112\101\110\097\115\032\110\111\032\101\120\116\101\114\105\111\114\032\101\032\114\101\116\111\114\110\097\032\u{e0}\032\098\114\111\099\097\046'
,
"\073\110\115\105\100\101\032\077\105\110\101\115\104\097\102\116\044\032\109\105\110\101\115\032\111\110\108\121\032\116\104\101\114\101\032\097\110\100\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\115\116\097\114\116\105\110\103\032\112\111\105\110\116\046\032\079\117\116\115\105\100\101\044\032\109\105\110\101\115\032\111\110\108\121\032\111\117\116\100\111\111\114\032\111\114\101\115\032\097\110\100\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\100\114\105\108\108\046"
),65,72)local bd={{'\067\111\097\108','\067\097\114\118\u{e3}\111'},{'\073\114\111\110','\070\101\114\114\111'},{'\071\111\108\100','\079\117\114\111'},{
'\068\105\097\109\111\110\100','\068\105\097\109\097\110\116\101'},{'\069\109\101\114\097\108\100','\069\115\109\101\114\097\108\100\097'},{'\082\117\098\121','\082\117\098\105'},{'\086\111\105\100\067\111\097\108',
'\067\097\114\118\u{e3}\111\032\100\111\032\118\097\122\105\111'}}for be,bf in ipairs(bd)do local bg,bh=aR.checkbox(a4,aS(
bf[2],bf[1]),73+be)bh(a2[bf[1] ]==true)a8(bg.Activated,function()a2[bf[1] ]=not
a2[bf[1] ]bh(a2[bf[1] ])end)end ba(a4,a3,
'\065\108\099\097\110\099\101\032\100\097\032\109\105\110\101\114\097\u{e7}\u{e3}\111\032\040\115\116\117\100\115\041','\077\105\110\105\110\103\032\115\101\097\114\099\104\032\114\097\110\103\101\032\040\115\116\117\100\115\041',82,20,
10000,function(be)a3=be end)a9(a4,'\097\114\109\111\114',
'\065\117\116\111\032\112\114\111\116\101\u{e7}\u{e3}\111\032\100\097\032\099\097\098\105\110\101\032\u{b7}\032\083\104\101\101\116\077\101\116\097\108',
'\065\117\116\111\032\099\097\098\105\110\032\112\114\111\116\101\099\116\105\111\110\032\u{b7}\032\083\104\101\101\116\077\101\116\097\108',85)local be=aR.button(a4,aS('\080\108\097\099\097\115\058\032'
,'\080\108\097\116\101\115\058\032')..a1,86)a8(be.Activated,function()a1=a1==4 and 6 or a1==6 and 8 or 4
be.Text=aS('\080\108\097\099\097\115\058\032','\080\108\097\116\101\115\058\032')..a1 end)aR.label(a4,'\084\101\120\116\076\097\098\101\108',aS(
'\085\115\097\032\112\108\097\099\097\115\032\115\111\108\116\097\115\032\112\114\u{f3}\120\105\109\097\115\032\100\097\032\098\114\111\099\097\032\101\032\115\111\108\105\099\105\116\097\032\097\110\101\120\097\u{e7}\u{e3}\111\046\032\065\032\099\111\108\105\115\u{e3}\111\032\101\032\097\032\112\114\111\116\101\u{e7}\u{e3}\111\032\100\101\112\101\110\100\101\109\032\100\111\032\106\111\103\111\059\032\110\u{e3}\111\032\099\114\105\097\032\105\110\118\117\108\110\101\114\097\098\105\108\105\100\097\100\101\046'
,
"\085\115\101\115\032\108\111\111\115\101\032\112\108\097\116\101\115\032\110\101\097\114\032\116\104\101\032\100\114\105\108\108\032\097\110\100\032\114\101\113\117\101\115\116\115\032\097\116\116\097\099\104\109\101\110\116\046\032\067\111\108\108\105\115\105\111\110\032\097\110\100\032\112\114\111\116\101\099\116\105\111\110\032\100\101\112\101\110\100\032\111\110\032\116\104\101\032\103\097\109\101\059\032\100\111\101\115\032\110\111\116\032\103\114\097\110\116\032\105\109\109\117\110\105\116\121\046"
),65,88)a9(a6,'\115\109\097\114\116','\067\111\109\098\097\116\101\032\105\110\116\101\108\105\103\101\110\116\101\032\u{b7}\032\105\110\105\109\105\103\111\115\032\100\101\032\112\101\100\114\097',
'\083\109\097\114\116\032\099\111\109\098\097\116\032\u{b7}\032\115\116\111\110\101\032\101\110\101\109\105\101\115',70)aR.label(a6,'\084\101\120\116\076\097\098\101\108',aS(
'\080\114\105\111\114\105\122\097\032\105\110\105\109\105\103\111\115\032\100\101\032\112\101\100\114\097\032\112\114\u{f3}\120\105\109\111\115\058\032\101\115\112\097\100\097\032\100\111\032\118\097\122\105\111\044\032\111\117\032\112\105\099\097\114\101\116\097\059\032\100\101\112\111\105\115\032\114\101\115\116\097\117\114\097\032\097\032\097\114\109\097\032\097\110\116\101\114\105\111\114\046'
,
"\080\114\105\111\114\105\116\105\122\101\115\032\110\101\097\114\098\121\032\115\116\111\110\101\032\101\110\101\109\105\101\115\058\032\086\111\105\100\032\083\119\111\114\100\044\032\111\116\104\101\114\119\105\115\101\032\112\105\099\107\097\120\101\059\032\114\101\115\116\111\114\101\115\032\116\104\101\032\112\114\101\118\105\111\117\115\032\119\101\097\112\111\110\032\097\102\116\101\114\119\097\114\100\115\046"
),60,71)local function bf(bg)return bg and(bg:IsA('\066\097\115\101\080\097\114\116')and bg or bg:IsA(
'\077\111\100\101\108')and(bg.PrimaryPart or bg:FindFirstChildWhichIsA('\066\097\115\101\080\097\114\116',true)))end
local function bg()local bh=aQ.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')return bh and bh.ActiveTool
end local function bh(bi)return aW and aX==bi and aQ.actor()~=nil end local
function bi()local bj=workspace:FindFirstChild('\068\114\105\108\108')return bj,bj and bf(bj:
FindFirstChild('\066\111\100\121')or bj)end local function bj(bk)local bl,bm=bi()local bn=aQ
.actor()if bh(bk)and bm and bn then bn:PivotTo(bm.CFrame*CFrame.new(0,bm.Size.Y/
2+4,0))end end local function bk()for bl,bm in ipairs({'\080\105\099\107\097\120\101\095\086\111\105\100',
'\080\105\099\107\097\120\101\095\080\104\111\101\110\105\120','\080\105\099\107\097\120\101\095\068\105\097\109\111\110\100','\080\105\099\107\097\120\101\095\071\111\108\100','\080\105\099\107\097\120\101\095\083\116\101\101\108',
'\080\105\099\107\097\120\101\095\080\114\111\115\112\101\099\116\111\114','\080\105\099\107\097\120\101\095\082\117\115\116\121','\080\105\099\107\097\120\101\095\087\111\111\100\101\110'})do if aQ.equip(bm)then
return true end end return false end local function bl(bm)local bn=tostring(bm:
GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101')or bm:GetAttribute('\082\101\097\108\078\097\109\101')or bm.Name):lower():
gsub('\091\094\037\097\093','')if bn:find('\118\111\105\100\099\111\097\108',1,true)then return'\086\111\105\100\067\111\097\108'end for bo,bp
in ipairs(bd)do if bn:find(bp[1]:lower(),1,true)then return bp[1]end end end
local bm=setmetatable({},{__mode='\107'})local function bn(bo)local bp=game:
GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101'):FindFirstChild('\083\104\097\114\101\100')local bq=bp and bp:
FindFirstChild('\068\117\110\103\101\111\110\068\111\111\114\083\116\097\116\101')return bq and require(bq).GetRoot(bo)or nil
end local function bo()if aT:GetAttribute('\073\110\068\117\110\103\101\111\110')~=true then return false
end local bp=aQ.ctrl('\068\117\110\103\101\111\110\085\073\067\111\110\116\114\111\108\108\101\114')local bq=bp and bp._BoundDungeon
local br=bq and(bn(bq)or bq)if not br or not(br.Name:lower():find('\109\105\110\101\115\104\097\102\116',1,
true)or aV:HasTag(br,'\077\105\110\101\115\104\097\102\116'))then return nil end return br end local
function bp(bq,br)local bs=bq:GetAttribute('\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')local bu
=bq:GetAttribute('\083\101\115\115\105\111\110\068\117\110\103\101\111\110\073\100')return aN(br,bn(bq),bs,bu,br and bq:
IsDescendantOf(br))end local function bq(br)if workspace:GetAttribute(
'\073\110\067\117\116\083\099\101\110\101')then return end local bs=bo()if bs==nil then a7.Text=aS(
'\065\117\116\111\032\077\105\110\101\058\032\068\117\110\103\101\111\110\032\097\116\117\097\108\032\110\u{e3}\111\032\105\100\101\110\116\105\102\105\099\097\100\097\032\099\111\109\111\032\077\105\110\101\115\104\097\102\116\046',
'\065\117\116\111\032\077\105\110\101\058\032\099\117\114\114\101\110\116\032\068\117\110\103\101\111\110\032\110\111\116\032\105\100\101\110\116\105\102\105\101\100\032\097\115\032\077\105\110\101\115\104\097\102\116\046')return end local
function bu()return bh(br)and aZ.mine and bo()==bs end local bv,bw,bx=aQ.actor()
if not bw or bx.SeatPart then return end local by=bw.CFrame local bz,bA=bi()if
bs==false and not bA then return end local bB,bC=nil,a3 for bD,bE in ipairs(aV:
GetTagged('\079\114\101'))do local bF=bf(bE)local bG=bl(bE)if bF and bE:IsDescendantOf(
workspace)and bp(bE,bs)and a2[bG]and(not bm[bE]or os.clock()>bm[bE])then local
bH=(bF.Position-bw.Position).Magnitude if bH<bC then bB=bE bC=bH end end end if
not bB then return end local bD=bg()local bE=bD and bD.Tool and bD.Tool.Name if
not bk()then a7.Text=aS('\065\117\116\111\032\077\105\110\101\058\032\112\105\099\097\114\101\116\097\032\110\u{e3}\111\032\101\110\099\111\110\116\114\097\100\097\032\110\097\032\098\097\114\114\097\046',
'\065\117\116\111\032\077\105\110\101\058\032\110\111\032\112\105\099\107\097\120\101\032\102\111\117\110\100\032\105\110\032\104\111\116\098\097\114\046')return end task.wait(0.5)if not bu()
then return end local bF=bf(bB)if not bF then return end local bG=bF.Position
local bH=bl(bB)local bI=aQ.actor()bI:PivotTo(CFrame.lookAt(bG+Vector3.new(0,2,5)
,bG))local bJ=os.clock()+25 while bu()and bB:IsDescendantOf(workspace)and bp(bB,
bs)and os.clock()<bJ do local bK=bg()if not(bK and bK.Tool and bK.Tool.Name:
find('\080\105\099\107\097\120\101',1,true)and type(bK.Swing)=='\102\117\110\099\116\105\111\110')then break end local bL=bB:
GetAttribute('\072\101\097\108\116\104')if type(bL)=='\110\117\109\098\101\114'and bL<=0 then break end bK:Swing()
task.wait(0.2)end if not bu()then return end bm[bB]=os.clock()+30 task.wait(0.5)
local bK=workspace:FindFirstChild('\073\116\101\109\115')local bL=0 for bM,bN in ipairs(bK and
bK:GetChildren()or{})do local bO=bf(bN)if bO and bp(bN,bs)and bl(bN)==bH and(bO.
Position-bG).Magnitude<=20 and bN:GetAttribute('\067\097\116\101\103\111\114\121')~='\067\111\114\112\115\101'and bN:
GetAttribute('\067\111\114\112\115\101\077\097\120\072\101\097\108\116\104')==nil and not aV:HasTag(bN,'\083\104\111\112\073\116\101\109')then if not
bu()then break end bI:PivotTo(bO.CFrame*CFrame.new(0,2,3))if aQ.await(aQ.
service('\067\097\114\114\121\073\110\118\101\110\116\111\114\121\083\101\114\118\105\099\101'):Pickup(bN))==true then bL+=1 end end end if bu(
)then if bs then bI:PivotTo(by)else bj(br)end if bE then aQ.equip(bE)end end a7.
Text=aS('\077\105\110\101\114\097\u{e7}\u{e3}\111\032\099\111\110\099\108\117\u{ed}\100\097\059\032\105\116\101\110\115\032\114\101\099\111\108\104\105\100\111\115\058\032',
'\077\105\110\105\110\103\032\112\097\115\115\032\102\105\110\105\115\104\101\100\059\032\099\111\108\108\101\099\116\101\100\032\105\116\101\109\115\058\032')..bL end local br=setmetatable({},{
__mode='\107'})local bs local function bu(bw)if aT:GetAttribute('\073\110\068\117\110\103\101\111\110')==true
or workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')then return end local bx,by=bi()local bz,
bA,bB=aQ.actor()if not by or not bA or bB.SeatPart then return end if bs~=bx
then table.clear(br)bs=bx end local bC=0 for bD in pairs(br)do if bD.Parent and
bD:GetAttribute('\087\101\108\100\101\100')==true then bC+=1 else br[bD]=nil end end if bC>=a1
then return end local bD=bx:FindFirstChildWhichIsA('\086\101\104\105\099\108\101\083\101\097\116',true)if not bD
then return end local bE=workspace:FindFirstChild('\073\116\101\109\115')local bF={}for bG,bH
in ipairs(bE and bE:GetChildren()or{})do local bI=bf(bH)if bI and(bH.Name==
'\083\104\101\101\116\077\101\116\097\108'or bH:GetAttribute('\073\116\101\109\068\097\116\097\098\097\115\101\073\100')=='\083\104\101\101\116\077\101\116\097\108')and not bH:
GetAttribute('\087\101\108\100\101\100')and not aV:HasTag(bH,'\083\104\111\112\073\116\101\109')and(bI.Position-by.
Position).Magnitude<60 then bF[#bF+1]=bH end end if#bF<a1-bC then a7.Text=aS(
'\080\114\111\116\101\u{e7}\u{e3}\111\058\032\097\103\117\097\114\100\097\110\100\111\032\112\108\097\099\097\115\032\115\111\108\116\097\115\032\112\114\u{f3}\120\105\109\097\115\032\100\097\032\098\114\111\099\097\046',
'\080\114\111\116\101\099\116\105\111\110\058\032\119\097\105\116\105\110\103\032\102\111\114\032\108\111\111\115\101\032\112\108\097\116\101\115\032\110\101\097\114\032\116\104\101\032\100\114\105\108\108\046')return end for bG=1,a1-bC
do if not bh(bw)or not aZ.armor then break end local bH=bF[bG]local bI=bf(bH)bz:
PivotTo(bI.CFrame*CFrame.new(0,3,3))local bJ=aQ.await(aQ.service('\068\114\097\103\083\101\114\118\105\099\101'):
Request(bH))if bJ==true then local bK,bL=pcall(function()assert(bh(bw)and aZ.
armor,'\083\116\111\112\112\101\100')local bK=bC+bG-1 local bL=bK%4 local bM=math.floor(bK/4)local bN
,bO if bH:IsA('\077\111\100\101\108')then bN,bO=bH:GetBoundingBox()else bN,bO=bH.CFrame,bH.Size
end local bP=CFrame.new()if bO.Y<=bO.X and bO.Y<=bO.Z then bP=CFrame.Angles(math
.pi/2,0,0)elseif bO.X<=bO.Z then bP=CFrame.Angles(0,math.pi/2,0)end local bQ=
math.abs(bP.RightVector.Y)*bO.X+math.abs(bP.UpVector.Y)*bO.Y+math.abs(bP.
LookVector.Y)*bO.Z local bR=bD.CFrame:PointToObjectSpace(by.CFrame:
PointToWorldSpace(Vector3.new(0,by.Size.Y/2,0))).Y local bS=a1>4 and(bM==0 and-1
or 1)*1.25 or 0 local bT=bL*math.pi/2 local bU=bD.CFrame*CFrame.Angles(0,bT,0)*
CFrame.new(bS,bR+bQ/2-0.1,-3)bz:PivotTo(bD.CFrame*CFrame.new(0,5,5))bH:PivotTo(
bU*bP*bN:ToObjectSpace(bH:GetPivot()))task.wait(0.35)assert(bh(bw)and aZ.armor,
'\083\116\111\112\112\101\100')aQ.await(aQ.service('\068\114\097\103\083\101\114\118\105\099\101'):Weld(bH))task.wait(0.2)if bH:
GetAttribute('\087\101\108\100\101\100')==true then br[bH]=true end end)pcall(function()aQ.
service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)if not bK then error(bL)end end end bj(
bw)local bG=0 for bH in pairs(br)do if bH.Parent and bH:GetAttribute('\087\101\108\100\101\100')==
true then bG+=1 end end a7.Text=aS('\080\108\097\099\097\115\032\099\111\109\032\097\110\101\120\097\u{e7}\u{e3}\111\032\099\111\110\102\105\114\109\097\100\097\058\032',
'\080\108\097\116\101\115\032\119\105\116\104\032\099\111\110\102\105\114\109\101\100\032\097\116\116\097\099\104\109\101\110\116\058\032')..bG..'\032\047\032'..a1 end local bw local bx=false
local by local function bz()if bx and bw and bw~=''and aQ.actor()then aQ.equip(
bw)end bw=nil bx=false by=nil end local function bA()if not aZ.smart then bz()
return end if aQ.movementBusy()or aQ.healing and aQ.healing()or workspace:
GetAttribute('\073\110\067\117\116\083\099\101\110\101')then return end local bB,bC,bD=aQ.actor()if not bC or
bD.SeatPart then return end local bE=workspace:FindFirstChild('\078\112\099')local bF,bG=
nil,24 for bH,bI in ipairs(bE and bE:GetChildren()or{})do local bJ=bI:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local bK=bf(bI)local bL=tostring(bI:
GetAttribute('\082\101\097\108\078\097\109\101')or bI.Name):lower()local bM=tostring(bI:GetAttribute(
'\077\117\116\097\116\105\111\110\115')or''):lower()local bN=bL:find('\115\116\111\110\101',1,true)or bL:find('\114\111\099\107',1,
true)or bI:GetAttribute('\077\097\116\101\114\105\097\108')=='\083\116\111\110\101'or bM:find('\115\116\111\110\101',1,true)if bN and
bJ and bJ.Health>0 and bK and bI:GetAttribute('\070\114\105\101\110\100\108\121')~=true and bI:
GetAttribute('\078\112\099\070\097\099\116\105\111\110')~='\070\114\105\101\110\100\108\121\067\111\109\112\097\110\105\111\110'then local bO=(bK.Position-bC.
Position).Magnitude if bO<bG then bF=bK bG=bO end end end if not bF then bz()
return end by=bF local bH=bg()local bI=bH and bH.Tool and bH.Tool.Name or''if
not bw then bw=bI end if not bx then if bI~='\083\119\111\114\100\095\086\111\105\100'then if not aQ.equip(
'\083\119\111\114\100\095\086\111\105\100')then bk()end end bx=true return end if bH and(bI=='\083\119\111\114\100\095\086\111\105\100'or bI
:find('\080\105\099\107\097\120\101',1,true))and type(bH.Swing)=='\102\117\110\099\116\105\111\110'then bB:PivotTo(CFrame.
lookAt(bC.Position,Vector3.new(bF.Position.X,bC.Position.Y,bF.Position.Z)))bH:
Swing()end end local function bB()aX+=1 for bC in pairs(aZ)do aZ[bC]=false a_[bC
](false)end bc()bz()end task.spawn(function()while aW do local bC,bD=pcall(
function()if aZ.bright then if not bb then bb={Brightness=aU.Brightness,Ambient=
aU.Ambient,OutdoorAmbient=aU.OutdoorAmbient,GlobalShadows=aU.GlobalShadows}end
aU.Brightness=a0 local bC=math.clamp(a0/5,0,1)aU.Ambient=Color3.new(bC,bC,bC)aU.
OutdoorAmbient=aU.Ambient aU.GlobalShadows=false else bc()end bA()end)if not bC
and aW then a7.Text=tostring(bD)end task.wait(0.2)end end)task.spawn(function()
while aW do if(aZ.mine or aZ.armor)and not(aQ.healing and aQ.healing())and aQ.
acquire()then local bC=aX local bD,bE=pcall(function()if aZ.armor then bu(bC)end
if bh(bC)and aZ.mine then bq(bC)end end)aQ.release()if not bD and aW then a7.
Text=tostring(bE)end end task.wait(2)end end)return{stop=bB,target=function()
return aZ.smart and by or nil end,cleanup=function()aW=false bB()for bC,bD in
ipairs(aY)do bD:Disconnect()end end}end local aP={}function aP.role(aQ,aR)if aR
~=9796898051 then return nil end return({[101906032112547]='\108\111\098\098\121',[
74507545904779]='\114\117\110'})[aQ]end function aP.names(aQ)local aR={}for aS in
tostring(aQ):gmatch('\091\094\044\093\043')do aS=aS:match('\094\037\115\042\040\046\045\041\037\115\042\036')if aS~=''then aR[#aR+1
]=aS end end return aR end function aP.offer(aQ,aR,aS,aT)if type(aR)~='\110\117\109\098\101\114'or
aR~=aR then return nil end for aU,aV in ipairs(aT)do for aW,aX in ipairs(type(aQ
)=='\116\097\098\108\101'and aQ or{})do if aX.UpgradeName==aV and aX.Type=='\067\111\105\110\115'and type(aX.
Cost)=='\110\117\109\098\101\114'and aX.Cost>=0 and aX.Cost<math.huge and aR-aX.Cost>=aS then
return aX end end end end function aP.selection(aQ,aR,aS)local aT={}local aU=
math.clamp(math.floor(tonumber(aR)or 0),0,100)for aV,aW in ipairs(aS)do for aX,
aY in ipairs(type(aQ)=='\116\097\098\108\101'and aQ or{})do if aY.Name==aW and aY.Id~=nil and
not aT[aY.Id]then local aZ=math.min(aU,math.max(0,math.floor(tonumber(aY.Count)
or 0)))if aZ>0 then aT[aY.Id]=aZ aU-=aZ end end end end return aT end function
aP.medalOffer(aQ,aR,aS,aT)if type(aR)~='\116\097\098\108\101'or type(aR.Medals)~='\110\117\109\098\101\114'or aR.
Medals~=aR.Medals or type(aR.Available)~='\116\097\098\108\101'then return nil end for aU,aV in
ipairs(aT)do local aW=aQ[aV]if aW and type(aW.Cost)=='\110\117\109\098\101\114'and aW.Cost>=0 and
aW.Cost<math.huge and aR.Available[aV]and aR.Medals-aW.Cost>=aS then return aV
end end end function aP.skipRequest(aQ)if not aQ or not aQ.CurrentCutScene or aQ
.AbortingCutScene then return nil end local aR=aQ.CurrentCutSceneContext if aR
and aR.DisableSkip then return nil end return{name=aQ.CurrentCutScene,id=aR and
aR.RuntimeId,private=aR and aR.Private==true and aR.RuntimeId~=nil,session=aQ.
CurrentCutSceneSessionId}end local aQ=function(aQ)local aR=assert(aP.role(game.
PlaceId,game.GameId),'\085\110\115\117\112\112\111\114\116\101\100\032\069\097\114\116\104\032\067\111\114\101\032\112\108\097\099\101')local aS,aT=aQ.ui,aQ.T local
aU=game:GetService('\080\108\097\121\101\114\115').LocalPlayer local aV=game:GetService(
'\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local aW=game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local aX=true local
aY={}local aZ={swing=false,upgrades=false,craft=false,skip=false,medals=false}
local a_={upgrades=0,craft=0,medals=0}local a0={}local a1={}local a2,a3,a4,a5,a6
local a7 local function a8(a9)if a7 then return false end a7=a9 return true end
local function a9(ba)if a7==ba then a7=nil end end local ba={reserve=1000,limit=
10,priority=
"\084\101\097\109\072\101\097\108\116\104\044\076\105\102\101\083\116\101\097\108\044\068\114\105\108\108\080\111\119\101\114\044\082\080\077\079\118\101\114\099\108\111\099\107\044\083\097\099\107\083\116\111\114\097\103\101\044\068\114\105\118\101\083\112\101\101\100",gear=
'\080\105\099\107\097\120\101\095\071\111\108\100',craftLimit=3,medalReserve=100,medalLimit=10,medalPriority=
'\084\117\114\114\101\116\068\097\109\097\103\101\044\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111'}local bb=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095'..aU.UserId..'\095'..aR..'\046\106\115\111\110'if type(readfile)=='\102\117\110\099\116\105\111\110'
then pcall(function()local bc=aW:JSONDecode(readfile(bb))for bd,be in pairs(ba)
do if type(bc[bd])==type(be)then ba[bd]=bc[bd]end end end)end ba.reserve=math.
clamp(tonumber(ba.reserve)or 1000,0,1e9)ba.limit=math.clamp(tonumber(ba.limit)or
10,1,100)ba.medalReserve=math.clamp(tonumber(ba.medalReserve)or 100,0,1e9)ba.
medalLimit=math.clamp(tonumber(ba.medalLimit)or 10,1,100)ba.craftLimit=math.
clamp(tonumber(ba.craftLimit)or 3,1,100)local function bc()if type(writefile)==
'\102\117\110\099\116\105\111\110'then pcall(writefile,bb,aW:JSONEncode(ba))end end local function bd(be
,bf)aY[#aY+1]=be:Connect(bf)end local be=aQ.section('\070\097\114\109')local bf=aS.label(be,
'\084\101\120\116\076\097\098\101\108',aT('\067\097\114\114\101\103\097\110\100\111\032\101\115\116\097\100\111\u{2026}','\076\111\097\100\105\110\103\032\115\116\097\116\101\u{2026}'),76,1)local
bg=aS.label(be,'\084\101\120\116\076\097\098\101\108','',72,2)local function bh(bi,bj)if aX then bg.Text=
aT(bi,bj or bi)end end local function bi()for bj in pairs(aZ)do aZ[bj]=false if
a1[bj]then a1[bj](false)end end if a2 then a2.stop()end if a3 then a3.stop()end
if a4 then a4.stop()end if a5 then a5.stop()end if a6 then a6.stop()end end aQ.
attach(function()aX=false bi()if a2 then a2.cleanup()end if a3 then a3.cleanup()
end if a4 then a4.cleanup()end if a5 then a5.cleanup()end if a6 then a6.cleanup(
)end for bj,bk in ipairs(aY)do bk:Disconnect()end end)aQ.quick(bi)local function
bj(bk,bl,bm,bn,bo)local bp=aS.button(bk,aT(bl,bm),bn)bd(bp.Activated,function()
if a0[bp]then return end a0[bp]=true task.spawn(function()local bq,br=pcall(bo)
a0[bp]=nil if not bq then bh(aT('\070\097\108\104\097\058\032','\070\097\105\108\101\100\058\032')..tostring(br))end end)end)
return bp end local function bk(bl,bm,bn,bo,bp,bq)aS.label(bl,'\084\101\120\116\076\097\098\101\108',aT(bn,
bo),32,bp)local br=aS.label(bl,'\084\101\120\116\066\111\120',tostring(ba[bm]),42,bp+1)bd(br.
FocusLost,function()if bq then local bs=tonumber(br.Text)if bs and bs==bs and bs
<math.huge then ba[bm]=math.clamp(math.floor(bs),bq[1],bq[2])end else ba[bm]=br.
Text:sub(1,600)end br.Text=tostring(ba[bm])bc()end)end local function bl(bm,bn,
bo,bp,bq)local br,bs=aS.checkbox(bm,aT(bo,bp),bq)a1[bn]=bs bd(br.Activated,
function()aZ[bn]=not aZ[bn]bs(aZ[bn])end)end local bm local function bn(bo,bp)if
not bm then local bq=aV:FindFirstChild('\080\097\099\107\097\103\101\115')local br=bq and bq:
FindFirstChild('\075\110\105\116')if not br then return nil end bm=require(br)end local bq,
br=pcall(bo=='\099\111\110\116\114\111\108\108\101\114'and bm.GetController or bm.GetService,bp)return bq and
br or nil end local function bo(bp)return bn('\099\111\110\116\114\111\108\108\101\114',bp)end local function
bp(bq)return assert(bn('\115\101\114\118\105\099\101',bq),bq..'\032\117\110\097\118\097\105\108\097\098\108\101')end local function bq(br
)if type(br)=='\116\097\098\108\101'and type(br.await)=='\102\117\110\099\116\105\111\110'then local bs=table.pack(br:
timeout(8):await())if not bs[1]then error(tostring(bs[2]))end return table.
unpack(bs,2,bs.n)end return br end local function br()local bs=aU.Character
local bu=bs and bs:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local bw=bs and bs:
FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if bw and bu and bu.Health>0 then return bs,bw
,bu end end local function bs(bu,bw,bx)local by,bz,bA=br()if not by then return
false end local function bB()return aX and(not bx or bx())and aU.Character==by
and bA.Health>0 end if not bB()then return false end local bC=bu:lower()local
function bD(bE)if type(bE)~='\115\116\114\105\110\103'then return false end local function bF(bG)
local bH={}for bI in bG:lower():gmatch('\037\119\043')do bH[#bH+1]=bI end table.sort(bH)
return table.concat(bH,'')end return bF(bE)==bF(bC)or bC=='\109\101\100\107\105\116'and bE:lower()
:find('\109\101\100\107\105\116',1,true)~=nil end local bE=aU:FindFirstChild('\066\097\099\107\112\097\099\107')for bF,bG
in ipairs(bE and bE:GetChildren()or{})do if bG:IsA('\084\111\111\108')and bD(bG.Name)then bA
:EquipTool(bG)return true end end local bF=bo('\072\111\116\098\097\114\067\111\110\116\114\111\108\108\101\114')local bG=bF and
bF.BackpackUI if bF and type(bF.EquipToolAtIndex)=='\102\117\110\099\116\105\111\110'then for bH,bI in
pairs(bF.Tools or{})do if typeof(bI)=='\073\110\115\116\097\110\099\101'and bD(bI.Name)then bF:
EquipToolAtIndex(bH)return true end end end if bG and type(bF.EquipToolAtIndex)
=='\102\117\110\099\116\105\111\110'then for bH,bI in ipairs(bG:GetChildren())do if bI:IsA('\071\117\105\079\098\106\101\099\116')
and bI.LayoutOrder>=1 and bI.LayoutOrder<=10 then local bJ=bD(bI.Name)or bD(bI:
GetAttribute('\084\111\111\108\078\097\109\101'))for bK,bL in ipairs(bI:GetDescendants())do if bL:IsA(
'\084\101\120\116\076\097\098\101\108')and bD(bL.Text)then bJ=true end end if bJ then bF:EquipToolAtIndex(
bI.LayoutOrder)return true end end end end if bw and bC=='\109\101\100\107\105\116'then local bH=
bp('\067\097\114\114\121\073\110\118\101\110\116\111\114\121\083\101\114\118\105\099\101')local bI=bq(bH:GetInventory())if not bB()or type(bI)
~='\116\097\098\108\101'or type(bI.Entries)~='\116\097\098\108\101'then return false end local bJ for bK,bL in
pairs(bI.Entries)do if bL.Id and bD(bL.Name)and(tonumber(bL.Count)or 1)>0 then
bJ=bL break end end if not bJ then return false end local bK=bq(bH:Move(bJ.Id,
'\072\111\116\098\097\114'))if not bB()then return false end if typeof(bK)=='\073\110\115\116\097\110\099\101'and bK:IsA(
'\084\111\111\108')and bD(bK.Name)and bK:IsDescendantOf(aU)then bA:EquipTool(bK)return true
end local bL=os.clock()+2 repeat if not bB()then return false end for bM,bN in
ipairs(bE and bE:GetChildren()or{})do if bN:IsA('\084\111\111\108')and bD(bN.Name)then bA:
EquipTool(bN)return true end end for bM,bN in pairs(bF and bF.Tools or{})do if
typeof(bN)=='\073\110\115\116\097\110\099\101'and bD(bN.Name)then bF:EquipToolAtIndex(bM)return true end
end task.wait(0.1)until os.clock()>=bL end return false end local function bu()
if aR=='\108\111\098\098\121'then local bw=workspace:FindFirstChild('\076\111\098\098\121')local bx=bw and bw:
FindFirstChild('\079\117\116\101\114\083\116\114\117\099\116\117\114\101\115')return bx and bx:FindFirstChild('\067\104\117\114\099\104')end
return workspace:FindFirstChild('\067\104\117\114\099\104')end local function bw()local bx=bu()
local by=bx and bx:FindFirstChild('\083\116\114\117\099\116\117\114\101')local bz=by and by:FindFirstChild(
'\082\105\110\103')local bA=bz and bz:FindFirstChild('\083\097\118\101\071\101\097\114')return bA and bA:IsA(
'\066\097\115\101\080\097\114\116')and bA or nil end local bx,by local function bz()local bA=bw()if bA
then bx=bA.CFrame by=workspace:GetAttribute('\073\110\102\105\110\105\116\101\068\101\112\116\104\079\102\102\115\101\116\077\101\116\101\114\115')end end
bz()local bA,bB bj(be,'\073\114\032\097\116\u{e9}\032\097\032\105\103\114\101\106\097\032\099\097\114\114\101\103\097\100\097','\071\111\032\116\111\032\108\111\097\100\101\100\032\099\104\117\114\099\104',10,
function()local bC,bD=br()assert(bC,aT('\080\101\114\115\111\110\097\103\101\109\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\046',
'\067\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101\046'))bz()local bE=bw()if not bE and bx and by==workspace:
GetAttribute('\073\110\102\105\110\105\116\101\068\101\112\116\104\079\102\102\115\101\116\077\101\116\101\114\115')then local bF=bD.CFrame bC:PivotTo(bx*
CFrame.new(0,3,5))pcall(function()aU:RequestStreamAroundAsync(bx.Position,5)end)
bE=bw()if not bE then bC:PivotTo(bF)end end assert(bE,aT(
'\073\103\114\101\106\097\032\097\105\110\100\097\032\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097\046\032\065\032\112\111\115\105\u{e7}\u{e3}\111\032\108\101\109\098\114\097\100\097\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\032\117\109\032\097\108\116\097\114\032\100\105\115\112\111\110\u{ed}\118\101\108\046'
,
"\067\104\117\114\099\104\032\110\111\116\032\108\111\097\100\101\100\046\032\065\032\114\101\109\101\109\098\101\114\101\100\032\112\111\115\105\116\105\111\110\032\100\111\101\115\032\110\111\116\032\099\111\110\102\105\114\109\032\097\110\032\097\118\097\105\108\097\098\108\101\032\097\108\116\097\114\046"
))bA=bD.CFrame bB=bC bC:PivotTo(bE.CFrame*CFrame.new(0,3,5))bh(
'\068\101\115\108\111\099\097\109\101\110\116\111\032\115\111\108\105\099\105\116\097\100\111\046\032\067\111\110\102\105\114\097\032\115\117\097\032\112\111\115\105\u{e7}\u{e3}\111\046',
'\077\111\118\101\109\101\110\116\032\114\101\113\117\101\115\116\101\100\046\032\067\104\101\099\107\032\121\111\117\114\032\112\111\115\105\116\105\111\110\046')end)bj(be,
'\086\111\108\116\097\114\032\u{e0}\032\112\111\115\105\u{e7}\u{e3}\111\032\097\110\116\101\114\105\111\114','\082\101\116\117\114\110\032\116\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110',11,
function()local bC=br()assert(bC and bC==bB and bA,
'\078\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110\032\102\111\114\032\116\104\105\115\032\099\104\097\114\097\099\116\101\114')bC:PivotTo(bA)end)bj(be,
'\080\097\114\097\114\032\116\111\100\097\115\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115','\083\116\111\112\032\097\108\108\032\097\117\116\111\109\097\116\105\111\110',12,function()bi()bh(
'\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\114\097\100\097\115\046','\065\117\116\111\109\097\116\105\111\110\032\115\116\111\112\112\101\100\046')end)if aR=='\108\111\098\098\121'then aS.
label(be,'\084\101\120\116\076\097\098\101\108',aT(
'\076\111\098\098\121\058\032\101\113\117\105\112\097\109\101\110\116\111\115\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\100\101\032\101\120\112\101\100\105\u{e7}\u{e3}\111\032\097\112\097\114\101\099\101\109\032\110\097\032\112\097\114\116\105\100\097\046'
,"\076\111\098\098\121\058\032\101\113\117\105\112\109\101\110\116\046\032\069\120\112\101\100\105\116\105\111\110\032\102\101\097\116\117\114\101\115\032\097\112\112\101\097\114\032\105\110\032\116\104\101\032\103\097\109\101\032\112\108\097\099\101\046"),54,15)bk(
be,'\103\101\097\114','\078\111\109\101\032\101\120\097\116\111\032\100\111\032\101\113\117\105\112\097\109\101\110\116\111\032\100\111\032\108\111\098\098\121','\069\120\097\099\116\032\108\111\098\098\121\032\101\113\117\105\112\109\101\110\116\032\110\097\109\101',20)
bj(be,'\069\113\117\105\112\097\114\032\111\032\105\116\101\109\032\105\110\102\111\114\109\097\100\111','\069\113\117\105\112\032\101\110\116\101\114\101\100\032\105\116\101\109',23,function()local bC=aP.
names(ba.gear)[1]assert(bC,'\069\110\116\101\114\032\097\110\032\105\116\101\109\032\110\097\109\101')local bD=bq(bp(
'\076\111\098\098\121\066\097\099\107\112\097\099\107\083\101\114\118\105\099\101'):SetEquipped(bC))bh(bD and aT('\069\113\117\105\112\097\109\101\110\116\111\032\097\099\101\105\116\111\046',
'\069\113\117\105\112\109\101\110\116\032\097\099\099\101\112\116\101\100\046')or aT('\079\032\106\111\103\111\032\110\u{e3}\111\032\097\099\101\105\116\111\117\032\111\032\105\116\101\109\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\097\099\099\101\112\116\032\116\104\105\115\032\105\116\101\109\046'))end)else bl(be,'\115\119\105\110\103',
'\065\117\116\111\032\112\105\099\097\114\101\116\097\032\101\113\117\105\112\097\100\097\032\040\097\108\099\097\110\099\101\032\110\111\114\109\097\108\041','\065\117\116\111\032\101\113\117\105\112\112\101\100\032\112\105\099\107\097\120\101\032\040\110\111\114\109\097\108\032\114\097\110\103\101\041'
,20)aS.label(be,'\084\101\120\116\076\097\098\101\108',aT(
"\069\113\117\105\112\101\032\097\032\112\105\099\097\114\101\116\097\032\101\032\097\112\114\111\120\105\109\101\045\115\101\032\100\111\032\097\108\118\111\046\032\082\101\115\112\101\105\116\097\032\111\032\099\111\111\108\100\111\119\110\032\110\097\116\105\118\111\046",
"\069\113\117\105\112\032\121\111\117\114\032\112\105\099\107\097\120\101\032\097\110\100\032\097\112\112\114\111\097\099\104\032\116\104\101\032\116\097\114\103\101\116\046\032\085\115\101\115\032\116\104\101\032\110\097\116\105\118\101\032\099\111\111\108\100\111\119\110\046"),48,21
)local bC=aQ.section('\077\101\108\104\111\114\105\097\115')aS.label(bC,'\084\101\120\116\076\097\098\101\108',aT(
'\079\114\103\097\110\105\122\101\032\097\032\108\105\115\116\097\032\099\111\109\032\u{2191}\047\u{2193}\032\097\098\097\105\120\111\046\032\068\101\115\109\097\114\113\117\101\032\111\032\113\117\101\032\110\u{e3}\111\032\100\101\115\101\106\097\032\099\111\109\112\114\097\114\046'
,
'\082\101\111\114\100\101\114\032\119\105\116\104\032\u{2191}\047\u{2193}\032\098\101\108\111\119\046\032\085\110\099\104\101\099\107\032\117\112\103\114\097\100\101\115\032\121\111\117\032\100\111\032\110\111\116\032\119\097\110\116\032\116\111\032\098\117\121\046'
),50,1)bk(bC,'\114\101\115\101\114\118\101','\082\101\115\101\114\118\097\032\109\u{ed}\110\105\109\097\032\100\101\032\109\111\101\100\097\115','\077\105\110\105\109\117\109\032\099\111\105\110\032\114\101\115\101\114\118\101',4,
{0,1e9})bk(bC,'\108\105\109\105\116','\076\105\109\105\116\101\032\100\101\032\116\101\110\116\097\116\105\118\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\065\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',7,{1,100})bl(bC,'\117\112\103\114\097\100\101\115',
'\065\117\116\111\032\109\101\108\104\111\114\105\097\115\032\099\111\109\032\109\111\101\100\097\115','\065\117\116\111\032\099\111\105\110\032\117\112\103\114\097\100\101\115',10)bk(bC,'\099\114\097\102\116\076\105\109\105\116',
'\076\105\109\105\116\101\032\100\101\032\102\097\098\114\105\099\097\u{e7}\u{e3}\111\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\067\114\097\102\116\032\097\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',12,{1,100})bl(bC,'\099\114\097\102\116',
'\065\117\116\111\032\102\097\098\114\105\099\097\114\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\032\110\111\032\106\111\103\111','\065\117\116\111\032\099\114\097\102\116\032\105\116\101\109\032\115\101\108\101\099\116\101\100\032\105\110\032\103\097\109\101',15)
aS.label(bC,'\084\101\120\116\076\097\098\101\108',aT(
'\067\114\097\102\116\105\110\103\058\032\097\098\114\097\032\097\032\098\097\110\099\097\100\097\032\101\032\101\115\099\111\108\104\097\032\111\032\105\116\101\109\032\110\111\032\106\111\103\111\046\032\082\111\098\117\120\032\102\105\099\097\032\101\120\099\108\117\u{ed}\100\111\046\032\065\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\099\111\109\101\u{e7}\097\109\032\100\101\115\108\105\103\097\100\097\115\046'
,
"\067\114\097\102\116\105\110\103\058\032\111\112\101\110\032\116\104\101\032\098\101\110\099\104\032\097\110\100\032\115\101\108\101\099\116\032\097\110\032\105\116\101\109\032\105\110\032\103\097\109\101\046\032\082\111\098\117\120\032\105\115\032\101\120\099\108\117\100\101\100\046\032\065\117\116\111\109\097\116\105\111\110\032\115\116\097\114\116\115\032\100\105\115\097\098\108\101\100\046"
),72,16)local bD=aQ.section('\073\103\114\101\106\097')local bE=aS.label(bD,'\084\101\120\116\076\097\098\101\108',aT(
'\067\097\114\114\101\103\117\101\032\115\101\117\032\105\110\118\101\110\116\u{e1}\114\105\111\044\032\109\097\114\113\117\101\032\111\115\032\105\116\101\110\115\032\101\032\099\111\110\102\105\114\109\101\046\032\079\032\108\105\109\105\116\101\032\118\101\109\032\100\111\032\106\111\103\111\059\032\115\097\108\118\097\114\032\114\101\116\111\114\110\097\032\097\111\032\108\111\098\098\121\046'
,
"\076\111\097\100\032\121\111\117\114\032\105\110\118\101\110\116\111\114\121\044\032\115\101\108\101\099\116\032\105\116\101\109\115\032\097\110\100\032\099\111\110\102\105\114\109\046\032\084\104\101\032\103\097\109\101\032\115\117\112\112\108\105\101\115\032\116\104\101\032\108\105\109\105\116\059\032\115\097\118\105\110\103\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\108\111\098\098\121\046"
),80,1)local bF,bG={},{}local bH local bI=false local function bJ()for bK,bL in
ipairs(bG)do bL:Disconnect()end table.clear(bG)for bK,bL in ipairs(bF)do bL:
Destroy()end table.clear(bF)end aQ.attach(function()aX=false bi()bJ()if a2 then
a2.cleanup()end if a3 then a3.cleanup()end if a4 then a4.cleanup()end if a5 then
a5.cleanup()end if a6 then a6.cleanup()end for bK,bL in ipairs(aY)do bL:
Disconnect()end end)bj(bD,'\067\097\114\114\101\103\097\114\032\105\110\118\101\110\116\u{e1}\114\105\111\032\101\032\101\115\099\111\108\104\101\114\032\105\116\101\110\115',
'\076\111\097\100\032\105\110\118\101\110\116\111\114\121\032\097\110\100\032\115\101\108\101\099\116\032\105\116\101\109\115',3,function()assert(not bI,'\083\097\118\101\032\105\110\032\112\114\111\103\114\101\115\115')
local bK=bq(bp('\080\108\097\121\101\114\083\101\114\118\105\099\101'):GetSaveGearChoices())assert(aX and br()and type(
bK)=='\116\097\098\108\101'and type(bK.Items)=='\116\097\098\108\101','\073\110\118\101\110\116\111\114\121\032\117\110\097\118\097\105\108\097\098\108\101')bJ()bH={
selection={},limit=math.max(0,math.floor(tonumber(bK.Limit)or 0))}local bL=bH
local bM={}local bN=bo('\083\097\118\101\071\101\097\114\067\111\110\116\114\111\108\108\101\114')local function bO()local bP=0 for bQ
,bR in pairs(bL.selection)do bP+=bR end bE.Text=string.format(aT(
'\083\101\108\101\099\105\111\110\097\100\111\115\058\032\037\100\047\037\100\046\032\067\111\110\102\105\114\109\097\114\032\108\101\118\097\032\u{e0}\032\105\103\114\101\106\097\032\099\097\114\114\101\103\097\100\097\032\101\032\115\097\108\118\097\046',
"\083\101\108\101\099\116\101\100\058\032\037\100\047\037\100\046\032\067\111\110\102\105\114\109\032\116\114\097\118\101\108\115\032\116\111\032\116\104\101\032\108\111\097\100\101\100\032\099\104\117\114\099\104\032\097\110\100\032\115\097\118\101\115\046"),bP,bL.
limit)for bQ,bR in ipairs(bM)do bR()end end for bP,bQ in ipairs(bK.Items)do if
bQ.Id~=nil and type(bQ.Count)=='\110\117\109\098\101\114'and bQ.Count>0 then local bR=Instance.
new('\070\114\097\109\101')bR.Size=UDim2.new(1,-8,0,68)bR.BackgroundColor3=Color3.fromRGB(23,31
,44)bR.LayoutOrder=100+bP bR.Parent=bD bF[#bF+1]=bR local bS=Instance.new(
'\085\073\083\116\114\111\107\101')bS.Color=Color3.fromRGB(77,110,140)bS.Transparency=0.25 bS.Parent=bR
local bT=Instance.new('\085\073\067\111\114\110\101\114')bT.CornerRadius=UDim.new(0,10)bT.Parent=bR
local bU,bV if bN and type(bN.GetItemDisplay)=='\102\117\110\099\116\105\111\110'then bU,bV=bN:
GetItemDisplay(bQ.Name)end local bW=Instance.new('\073\109\097\103\101\076\097\098\101\108')bW.Size=UDim2.
fromOffset(40,40)bW.Position=UDim2.fromOffset(6,12)bW.BackgroundTransparency=1
bW.Image=bU or''bW.Parent=bR local bX,bY=aS.checkbox(bR,'',1)bX.Size=UDim2.new(1
,-150,0,58)bX.Position=UDim2.fromOffset(50,4)local bZ=bX:FindFirstChildWhichIsA(
'\084\101\120\116\076\097\098\101\108')bM[#bM+1]=function()local b_=bL.selection[bQ.Id]or 0 bY(b_>0)if bZ
then bZ.Text=tostring(bV or bQ.Name)..'\032\u{b7}\032'..b_..'\047'..bQ.Count end end
local function b_(b0,b1)if bI or bH~=bL or not aX then return end local b2=0 for
b3,b4 in pairs(bL.selection)do b2+=b4 end local b3=bL.selection[bQ.Id]or 0 if b1
then bL.selection[bQ.Id]=0 elseif b0<0 or b2<bL.limit then bL.selection[bQ.Id]=
math.clamp(b3+b0,0,bQ.Count)end bO()end bG[#bG+1]=bX.Activated:Connect(function(
)b_(1,(bL.selection[bQ.Id]or 0)>0)end)for b0,b1 in ipairs({-1,1})do local b2=aS.
button(bR,b1<0 and'\u{2212}'or'\043',2+b0)b2.Size=UDim2.fromOffset(40,42)b2.
Position=UDim2.new(1,-94+(b0-1)*46,0,12)bG[#bG+1]=b2.Activated:Connect(function(
)b_(b1)end)end end end bO()end)bj(bD,'\073\114\032\u{e0}\032\105\103\114\101\106\097\032\099\097\114\114\101\103\097\100\097',
'\071\111\032\116\111\032\108\111\097\100\101\100\032\099\104\117\114\099\104',4,function()assert(not bI and a8('\099\104\117\114\099\104'),
'\065\110\111\116\104\101\114\032\109\111\118\101\109\101\110\116\032\116\097\115\107\032\105\115\032\097\099\116\105\118\101')local bK,bL=pcall(function()local bK=br()local
bL=bw()assert(bK and bL,aT('\073\103\114\101\106\097\032\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097\046','\067\104\117\114\099\104\032\110\111\116\032\108\111\097\100\101\100\046'))bK
:PivotTo(bL.CFrame*CFrame.new(0,3,5))end)a9('\099\104\117\114\099\104')assert(bK,bL)end)bj(bD,
'\067\079\078\070\073\082\077\065\082\032\u{b7}\032\105\114\032\u{e0}\032\105\103\114\101\106\097\032\101\032\115\097\108\118\097\114\032\115\101\108\101\u{e7}\u{e3}\111',
'\067\079\078\070\073\082\077\032\u{b7}\032\103\111\032\116\111\032\099\104\117\114\099\104\032\097\110\100\032\115\097\118\101\032\115\101\108\101\099\116\105\111\110',5,function()assert(bH and not
bI,aT('\067\097\114\114\101\103\117\101\032\101\032\115\101\108\101\099\105\111\110\101\032\111\115\032\105\116\101\110\115\032\112\114\105\109\101\105\114\111\046','\076\111\097\100\032\097\110\100\032\115\101\108\101\099\116\032\103\101\097\114\032\102\105\114\115\116\046'))
local bK={}local bL=0 for bM,bN in pairs(bH.selection)do if bN>0 then bK[bM]=bN
bL+=bN end end assert(bL>0 and bL<=bH.limit,'\073\110\118\097\108\105\100\032\115\101\108\101\099\116\105\111\110')assert(a8(
'\099\104\117\114\099\104'),'\065\110\111\116\104\101\114\032\109\111\118\101\109\101\110\116\032\116\097\115\107\032\105\115\032\097\099\116\105\118\101')bI=true local bM,bN=pcall(function()
local bM=br()local bN=bw()assert(bM and bN,aT('\073\103\114\101\106\097\032\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097\046',
'\067\104\117\114\099\104\032\110\111\116\032\108\111\097\100\101\100\046'))bM:PivotTo(bN.CFrame*CFrame.new(0,3,5))task.wait(0.3)local
bO=bq(bp('\080\108\097\121\101\114\083\101\114\118\105\099\101'):GetSaveGearChoices())assert(aX and type(bO)=='\116\097\098\108\101'
and bL<=(tonumber(bO.Limit)or 0),'\073\110\118\101\110\116\111\114\121\032\099\104\097\110\103\101\100')local bP={}for bQ,bR in
ipairs(bO.Items or{})do bP[bR.Id]=bR.Count end for bQ,bR in pairs(bK)do assert(
type(bP[bQ])=='\110\117\109\098\101\114'and bR<=bP[bQ],aT(
'\073\110\118\101\110\116\u{e1}\114\105\111\032\109\117\100\111\117\046\032\082\101\099\097\114\114\101\103\117\101\032\097\032\115\101\108\101\u{e7}\u{e3}\111\046',
'\073\110\118\101\110\116\111\114\121\032\099\104\097\110\103\101\100\046\032\082\101\108\111\097\100\032\115\101\108\101\099\116\105\111\110\046'))end local bQ,bR=br()assert(bR and bN.
Parent and(bR.Position-bN.Position).Magnitude<=20,
'\065\112\112\114\111\097\099\104\032\116\104\101\032\097\108\116\097\114\032\119\104\105\108\101\032\097\108\105\118\101')local bS=bq(bp('\080\108\097\121\101\114\083\101\114\118\105\099\101'):SaveGear(bK))
assert(bS==true,aT('\079\032\106\111\103\111\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\111\032\115\097\108\118\097\109\101\110\116\111\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\115\097\118\105\110\103\046'))bH=nil bi()bE.Text=aT(
'\083\097\108\118\097\109\101\110\116\111\032\097\099\101\105\116\111\032\112\101\108\111\032\106\111\103\111\046\032\065\103\117\097\114\100\097\110\100\111\032\114\101\116\111\114\110\111\032\097\111\032\108\111\098\098\121\046',
'\083\097\118\101\032\097\099\099\101\112\116\101\100\032\098\121\032\116\104\101\032\103\097\109\101\046\032\087\097\105\116\105\110\103\032\102\111\114\032\114\101\116\117\114\110\032\116\111\032\108\111\098\098\121\046')end)bI=false a9(
'\099\104\117\114\099\104')assert(bM,bN)end)end if aR=='\114\117\110'and aH then a2=aH(aQ,{actor=br,ctrl=bo
,equip=bs,say=bh,stoneTarget=function()return a6 and a6.target()end,movementBusy
=function()return a7~=nil end,priority=ba.priority,setPriority=function(bC)ba.
priority=bC bc()end})end if aR=='\114\117\110'and aJ then a3=aJ(aQ,{actor=br,ctrl=bo,
equip=bs,service=bp,await=bq,acquire=function()return a8('\116\114\097\110\115\112\111\114\116')end,release
=function()a9('\116\114\097\110\115\112\111\114\116')end})end if aR=='\114\117\110'and aL then a4=aL(aQ,{actor=br,
service=bp,await=bq,acquire=function()return a8('\115\104\111\112')end,release=function()a9(
'\115\104\111\112')end})end if aR=='\114\117\110'and aM then a5=aM(aQ,{ctrl=bo,service=bp,await=bq})
end if aR=='\114\117\110'and aO then a6=aO(aQ,{actor=br,ctrl=bo,equip=bs,service=bp,await
=bq,healing=function()return a2 and a2.healing()end,movementBusy=function()
return a7~=nil end,acquire=function()return a8('\117\116\105\108\105\116\105\101\115')end,release=function(
)a9('\117\116\105\108\105\116\105\101\115')end})end local bC local bD if aR=='\114\117\110'then bl(be,'\115\107\105\112',
'\065\117\116\111\032\118\111\116\097\114\032\112\097\114\097\032\112\117\108\097\114\032\099\117\116\115\099\101\110\101\115','\065\117\116\111\032\118\111\116\101\032\116\111\032\115\107\105\112\032\099\117\116\115\099\101\110\101\115',24)aS.label(be,
'\084\101\120\116\076\097\098\101\108',aT(
'\079\032\112\114\111\103\114\101\115\115\111\032\100\101\112\101\110\100\101\032\100\097\032\098\114\111\099\097\032\101\032\100\097\115\032\112\097\114\101\100\101\115\046\032\084\101\108\101\112\111\114\116\101\032\101\032\118\111\111\032\110\u{e3}\111\032\099\111\110\116\097\109\032\113\117\105\108\u{f4}\109\101\116\114\111\115\046'
,
"\080\114\111\103\114\101\115\115\032\100\101\112\101\110\100\115\032\111\110\032\116\104\101\032\100\114\105\108\108\032\097\110\100\032\119\097\108\108\115\046\032\084\101\108\101\112\111\114\116\105\110\103\032\097\110\100\032\102\108\121\105\110\103\032\100\111\032\110\111\116\032\099\111\117\110\116\032\107\105\108\111\109\101\116\101\114\115\046"
),58,25)bj(be,'\067\111\110\115\117\108\116\097\114\032\082\080\032\097\116\117\097\108\032\100\097\032\112\097\114\116\105\100\097','\067\104\101\099\107\032\099\117\114\114\101\110\116\032\114\117\110\032\082\080',27,function
()assert(aU:GetAttribute('\082\097\110\107\101\100\082\117\110\065\099\116\105\118\101')==true,aT(
'\069\115\116\097\032\112\097\114\116\105\100\097\032\110\u{e3}\111\032\u{e9}\032\114\097\110\113\117\101\097\100\097\046','\084\104\105\115\032\114\117\110\032\105\115\032\110\111\116\032\114\097\110\107\101\100\046'))local bE=
bq(bp('\082\097\110\107\101\100\083\101\114\118\105\099\101'):GetRankChange())assert(type(bE)=='\116\097\098\108\101'and type(bE.
DeltaRP)=='\110\117\109\098\101\114','\082\080\032\117\110\097\118\097\105\108\097\098\108\101')bh(string.format(aT(
'\082\080\032\112\114\111\106\101\116\097\100\111\032\112\101\108\111\032\106\111\103\111\058\032\037\043\100\046\032\078\u{e3}\111\032\115\097\108\118\097\032\110\101\109\032\115\097\105\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046',
"\071\097\109\101\045\112\114\111\106\101\099\116\101\100\032\082\080\058\032\037\043\100\046\032\068\111\101\115\032\110\111\116\032\097\117\116\111\109\097\116\105\099\097\108\108\121\032\115\097\118\101\032\111\114\032\101\120\105\116\046"),bE.DeltaRP))
end)local bE=aQ.section('\077\101\108\104\111\114\105\097\115')bk(bE,'\109\101\100\097\108\080\114\105\111\114\105\116\121',
'\077\101\100\097\108\104\097\115\058\032\112\114\105\111\114\105\100\097\100\101\115\032\040\073\068\115\032\115\101\112\097\114\097\100\111\115\032\112\111\114\032\118\u{ed}\114\103\117\108\097\041',
'\077\101\100\097\108\115\058\032\112\114\105\111\114\105\116\105\101\115\032\040\099\111\109\109\097\045\115\101\112\097\114\097\116\101\100\032\073\068\115\041',80)bk(bE,'\109\101\100\097\108\082\101\115\101\114\118\101',
'\082\101\115\101\114\118\097\032\100\101\032\109\101\100\097\108\104\097\115','\077\101\100\097\108\032\114\101\115\101\114\118\101',83,{0,1e9})bk(bE,'\109\101\100\097\108\076\105\109\105\116',
'\076\105\109\105\116\101\032\100\101\032\099\111\109\112\114\097\115\032\100\101\032\109\101\100\097\108\104\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\077\101\100\097\108\032\112\117\114\099\104\097\115\101\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',86,{1,100})bl(bE,'\109\101\100\097\108\115',
'\065\117\116\111\032\109\101\108\104\111\114\105\097\115\032\100\101\032\076\097\114\114\121\032\099\111\109\032\109\101\100\097\108\104\097\115','\065\117\116\111\032\076\097\114\114\121\032\109\101\100\097\108\032\117\112\103\114\097\100\101\115',89)aS.label(
bE,'\084\101\120\116\076\097\098\101\108',aT(
'\065\098\114\097\032\076\097\114\114\121\032\112\101\114\116\111\032\100\097\032\101\115\116\097\u{e7}\u{e3}\111\046\032\073\068\115\058\032\084\117\114\114\101\116\068\097\109\097\103\101\044\032\070\108\097\109\101\068\117\114\097\116\105\111\110\044\032\070\114\111\115\116\068\117\114\097\116\105\111\110\044\032\070\108\097\109\101\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\070\114\111\115\116\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111\046\032\083\101\109\032\099\111\109\112\114\097\115\032\082\111\098\117\120\046'
,
"\079\112\101\110\032\076\097\114\114\121\032\110\101\097\114\032\116\104\101\032\115\116\097\116\105\111\110\046\032\073\068\115\058\032\084\117\114\114\101\116\068\097\109\097\103\101\044\032\070\108\097\109\101\068\117\114\097\116\105\111\110\044\032\070\114\111\115\116\068\117\114\097\116\105\111\110\044\032\070\108\097\109\101\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\070\114\111\115\116\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111\046\032\078\111\032\082\111\098\117\120\032\112\117\114\099\104\097\115\101\115\046"
),110,90)end local bE,bF=0,0 task.spawn(function()while aX do local bG,bH=pcall(
function()local bG,bH,bI=br()if os.clock()>=bF then bF=os.clock()+2 bz()bf.Text=
string.format(
'\037\115\032\u{b7}\032\080\108\097\099\101\032\037\115\n\037\115\058\032\037\115\032\u{b7}\032\037\115\058\032\037\115\n\037\115\058\032\037\100\047\037\100\032\u{b7}\032\067\114\097\102\116\058\032\037\100\047\037\100',aR==
'\108\111\098\098\121'and'\076\111\098\098\121'or aT('\069\120\112\101\100\105\u{e7}\u{e3}\111','\069\120\112\101\100\105\116\105\111\110'),game.PlaceId,aT(
'\086\105\100\097','\072\101\097\108\116\104'),bI and math.floor(bI.Health)or 0,aT('\073\103\114\101\106\097','\067\104\117\114\099\104'),bw()and
aT('\099\097\114\114\101\103\097\100\097','\108\111\097\100\101\100')or aT('\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097','\110\111\116\032\108\111\097\100\101\100'),aT(
'\084\101\110\116\097\116\105\118\097\115\032\117\112\103\114\097\100\101','\085\112\103\114\097\100\101\032\097\116\116\101\109\112\116\115'),a_.upgrades,ba.limit,a_.craft,ba.
craftLimit)end if aR~='\114\117\110'or not bH then return end if aZ.skip then local bJ=aP
.skipRequest(bo('\067\117\116\083\099\101\110\101\067\111\110\116\114\111\108\108\101\114'))if not bJ then bC=nil elseif not bC or bC.
name~=bJ.name or bC.id~=bJ.id or bC.session~=bJ.session then bC=bJ local bK=bp(
'\067\117\116\083\099\101\110\101\083\101\114\118\105\099\101')if bJ.private then bq(bK:VoteSkipPrivate(bJ.id,bJ.name))else
bq(bK:VoteSkip(bJ.name,bJ.id))end end end if workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101'
)then return end if aZ.swing and not game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101'):
GetFocusedTextBox()then local bJ=bo('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local bK=bJ and bJ.
ActiveTool local bL=bo('\085\073\067\111\110\116\114\111\108\108\101\114')if bK and bK.Tool and bK.Tool.Name:find(
'\080\105\099\107\097\120\101',1,true)and type(bK.Swing)=='\102\117\110\099\116\105\111\110'and not(bL and bL.ActiveFrame and
bL.ActiveFrame.Visible)then bK:Swing()end end if os.clock()<bE then return end
bE=os.clock()+3 if aZ.upgrades and a_.upgrades<ba.limit then local bJ=bo(
'\068\114\105\108\108\085\112\103\114\097\100\101\067\111\110\116\114\111\108\108\101\114')if bJ and not bJ.PurchasePending and not bJ.CardsLocked
and not bJ.ActiveClassReward and bJ.OptionsVersion~=nil then local bK=bJ.
OptionsVersion local bL=bJ.RollToken local bM=bq(bp('\067\117\114\114\101\110\099\121\083\101\114\118\105\099\101'):
GetCurrency())if not aX or not aZ.upgrades or bK~=bJ.OptionsVersion or bL~=bJ.
RollToken or bJ.PurchasePending or bJ.CardsLocked or bJ.ActiveClassReward or not
br()then return end local bN=aP.offer(bJ.Options,bM,ba.reserve,aP.names(ba.
priority))if bN then a_.upgrades+=1 bJ:SetPurchasePending(true)local bO,bP=
pcall(function()return bq(bp('\068\114\105\108\108\083\101\114\118\105\099\101'):UpgradeDrill(bN.UpgradeName,bK))end
)if bK==bJ.OptionsVersion and bL==bJ.RollToken then bJ:SetPurchasePending(false)
end if not bO then error(bP)end if not aX then return end if bP=='\112\114\111\109\112\116\101\100'then
aZ.upgrades=false a1.upgrades(false)bh(
'\079\032\106\111\103\111\032\114\101\116\111\114\110\111\117\032\117\109\032\102\108\117\120\111\032\100\101\032\099\111\109\112\114\097\059\032\097\117\116\111\109\097\u{e7}\u{e3}\111\032\100\101\115\097\116\105\118\097\100\097\046',
'\084\104\101\032\103\097\109\101\032\114\101\116\117\114\110\101\100\032\097\032\112\117\114\099\104\097\115\101\032\102\108\111\119\059\032\097\117\116\111\109\097\116\105\111\110\032\100\105\115\097\098\108\101\100\046')else bh(aT(
'\077\101\108\104\111\114\105\097\032\115\111\108\105\099\105\116\097\100\097\058\032','\085\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\058\032')..bN.UpgradeName)end if type(bJ.
FetchUpgradeOptions)=='\102\117\110\099\116\105\111\110'then bJ:FetchUpgradeOptions()end end end end if
aZ.medals and a_.medals<ba.medalLimit then local bJ=bo('\076\097\114\114\121\067\111\110\116\114\111\108\108\101\114')if bJ
and bJ.Frame and bJ.Frame.Visible and not bJ.PurchasePending and bJ:FindStation(
)then if not bD then local bK=aV:FindFirstChild('\083\104\097\114\101\100')local bL=bK and bK:
FindFirstChild('\076\097\114\114\121\067\111\110\102\105\103')if bL then bD=require(bL).Upgrades end end local bK
=bD and aP.medalOffer(bD,bJ.State,ba.medalReserve,aP.names(ba.medalPriority))if
bK then a_.medals+=1 bJ:BuyUpgrade(bK)bh(aT('\077\101\108\104\111\114\105\097\032\099\111\109\032\109\101\100\097\108\104\097\115\032\115\111\108\105\099\105\116\097\100\097\058\032'
,'\077\101\100\097\108\032\117\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\058\032')..bK)end end end if aZ.craft and a_.craft<ba.
craftLimit then local bJ=bo('\067\114\097\102\116\105\110\103\067\111\110\116\114\111\108\108\101\114')if bJ and bJ.CurrentItem and
not bJ.PendingCraft and bJ.Frame and bJ.Frame.Visible and not bJ:
CanPurchaseWithRobux(bJ.CurrentItem)and bJ:CanCraft(bJ.CurrentItem)then a_.craft
+=1 bJ:CraftCurrentItem()bh(
'\070\097\098\114\105\099\097\u{e7}\u{e3}\111\032\115\111\108\105\099\105\116\097\100\097\032\112\097\114\097\032\111\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\046',
'\067\114\097\102\116\032\114\101\113\117\101\115\116\101\100\032\102\111\114\032\116\104\101\032\115\101\108\101\099\116\101\100\032\105\116\101\109\046')end end end)if not bG then bh(aT(
'\065\103\117\097\114\100\097\110\100\111\032\047\032\101\114\114\111\058\032','\087\097\105\116\105\110\103\032\047\032\101\114\114\111\114\058\032')..tostring(bH))bE=os.clock()+8 end
task.wait(0.2)end end)end local aR,aS,aT=false,nil,false local aU=task.spawn(
function()aR,aS=pcall(aQ,{ui=O,page=N('\070\097\114\109'),T=function(aU,aV)return b.language
=='\112\116'and aU or aV end,progress=aE,attach=function(aU)j=aU end,section=N,quick=
function(aU)k=aU end})aT=true end)local aV=os.clock()+45 while l and not aT and
os.clock()<aV do task.wait(0.05)end if not aT then pcall(task.cancel,aU)aR=false
aS=p('\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\052\053\032\115\101\103\117\110\100\111\115\032\101\120\099\101\100\105\100\111\046\032\u{da}\108\116\105\109\097\032\101\116\097\112\097\058\032',
'\052\053\045\115\101\099\111\110\100\032\116\105\109\101\111\117\116\046\032\076\097\115\116\032\115\116\097\103\101\058\032')..as.Text end if not l then return end if not
aR then if j then pcall(j)j=nil end ar.Text=p(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\099\097\114\114\101\103\097\114\032\097\115\032\102\117\110\u{e7}\u{f5}\101\115',
'\067\111\117\108\100\032\110\111\116\032\108\111\097\100\032\116\104\101\032\102\101\097\116\117\114\101\115')as.Text=p(
'\070\101\099\104\101\032\111\032\112\097\105\110\101\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046\032\068\101\116\097\108\104\101\115\058\032',
'\067\108\111\115\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\116\114\121\032\097\103\097\105\110\046\032\068\101\116\097\105\108\115\058\032')..tostring(aS)aw.Text=p(
'\067\097\114\114\101\103\097\109\101\110\116\111\032\105\110\116\101\114\114\111\109\112\105\100\111','\076\111\097\100\105\110\103\032\105\110\116\101\114\114\117\112\116\101\100')b.ready()return end local
function aW(aX,aY)local aZ,a_,a0=false,false,nil local a1=task.spawn(function()
a_,a0=pcall(aX)aZ=true end)local a2=os.clock()+aY while l and not aZ and os.
clock()<a2 do task.wait(0.05)end if not aZ then pcall(task.cancel,a1)return
false,p('\084\101\109\112\111\032\108\105\109\105\116\101\032\101\120\099\101\100\105\100\111','\084\105\109\101\032\108\105\109\105\116\032\101\120\099\101\101\100\101\100')end return a_,a0 end aE(
0.92,'\077\111\110\116\097\110\100\111\032\111\115\032\097\106\117\115\116\101\115\032\100\101\032\116\101\108\097\u{2026}','\066\117\105\108\100\105\110\103\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\u{2026}')
local aX local aY,aZ=aW(function()local aY=N('\065\106\117\115\116\101\115')ab(aY)local aZ=O.button(
aY,p('\u{1f1e7}\u{1f1f7}\032\032\073\100\105\111\109\097\058\032\080\111\114\116\117\103\117\u{ea}\115\032\032\u{b7}\032\032\065\108\116\101\114\097\114',
'\u{1f1fa}\u{1f1f8}\032\032\076\097\110\103\117\097\103\101\058\032\069\110\103\108\105\115\104\032\032\u{b7}\032\032\067\104\097\110\103\101'),870)r(aZ.Activated,
function()if type(b.chooseLanguage)=='\102\117\110\099\116\105\111\110'then b.chooseLanguage()end end)O.
label(aY,'\084\101\120\116\076\097\098\101\108',p(
'\084\114\111\099\097\114\032\111\032\105\100\105\111\109\097\032\114\101\097\098\114\101\032\111\032\112\097\105\110\101\108\032\099\111\109\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\117\115\097\100\097\115\046',
'\067\104\097\110\103\105\110\103\032\108\097\110\103\117\097\103\101\032\114\101\111\112\101\110\115\032\116\104\101\032\112\097\110\101\108\032\119\105\116\104\032\097\117\116\111\109\097\116\105\111\110\032\112\097\117\115\101\100\046'),44,871)O.label(aY
,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\084\111\113\117\101\032\065\058\032\097\098\114\105\114\047\102\101\099\104\097\114\046\032\083\101\103\117\114\101\032\048\044\054\053\115\032\101\032\115\111\108\116\101\058\032\112\097\114\097\114\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\046\032\065\114\114\097\115\116\101\058\032\109\111\118\101\114\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\105\110\101\108\046'
or
"\084\097\112\032\065\058\032\116\111\103\103\108\101\032\112\097\110\101\108\046\032\072\111\108\100\032\048\046\054\053\115\032\097\110\100\032\114\101\108\101\097\115\101\058\032\115\116\111\112\032\097\117\116\111\109\097\116\105\111\110\046\032\068\114\097\103\058\032\109\111\118\101\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\110\101\108\046"
,68,900)local a_=O.label(aY,'\084\101\120\116\066\111\120','\069\066\065\053\070\070',40,902)a_.ClearTextOnFocus=false
O.label(aY,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\067\111\114\032\100\101\032\100\101\115\116\097\113\117\101\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\120\046\058\032\070\070\067\065\052\050\041'or
'\065\099\099\101\110\116\032\099\111\108\111\114\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\046\103\046\032\070\070\067\065\052\050\041',30,901)local a0=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\084\104\101\109\101\046\106\115\111\110'local a1='\065\109\101\116\104\121\115\116'local a2={Amethyst={'\048\067\048\067\049\048',
'\050\055\049\056\051\053','\057\054\051\067\068\067','\070\070\070\053\070\070','\067\065\066\052\068\056','\069\066\065\053\070\070','\049\057\048\070\050\051'},Potato={'\050\051\049\070\049\057','\052\049\051\054\050\055'
,'\055\052\053\056\051\049','\070\067\070\054\069\050','\068\053\067\051\065\051','\069\066\065\053\070\070','\051\048\050\055\049\068'},Bloodmoon={'\049\055\048\067\049\051','\051\048\049\051\049\070',
'\054\066\050\054\051\068','\070\070\069\065\070\048','\068\050\065\048\066\048','\070\070\052\053\054\056','\050\051\048\070\049\065'},Midnight={'\049\048\049\051\049\069','\049\068\050\052\051\054',
'\051\053\052\054\054\053','\069\068\070\051\070\070','\065\052\066\051\067\067','\055\051\057\070\070\070','\049\053\049\066\050\065'},Emerald={'\048\066\049\057\049\054','\049\052\050\069\050\054',
'\050\066\053\057\052\055','\069\054\070\070\070\051','\057\069\067\054\066\051','\053\054\068\068\065\048','\049\048\050\052\049\069'},Arctic={'\049\049\049\066\050\054','\049\067\050\068\051\068','\051\054\053\049\054\065'
,'\069\066\070\056\070\070','\065\057\067\055\068\065','\055\057\068\057\070\070','\049\055\050\051\051\049'}}local function a3(a4)return Color3.
fromRGB(tonumber(a4:sub(1,2),16),tonumber(a4:sub(3,4),16),tonumber(a4:sub(5,6),
16))end local function a4()if type(writefile)=='\102\117\110\099\116\105\111\110'then task.spawn(
function()pcall(writefile,a0,e:JSONEncode({preset=a1,hex=a_.Text}))end)end end
local function a5(a6)if type(a6)~='\115\116\114\105\110\103'or not a6:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then
return false end o=Color3.fromRGB(tonumber(a6:sub(1,2),16),tonumber(a6:sub(3,4),
16),tonumber(a6:sub(5,6),16))m.accent=o F.BackgroundColor3=o z.BackgroundColor3=
o M(J)for a7,a8 in ipairs(P)do a8()end for a7,a8 in pairs(H)do a8.
ScrollBarImageColor3=o end a_.Text=a6 return true end local function a6(a7)local
a8=a2[a7]if not a8 then return end a1=a7 for a9,ba in ipairs({'\100\097\114\107','\116\105\108\101',
'\101\100\103\101','\116\101\120\116','\109\117\116\101\100','\097\099\099\101\110\116','\115\105\100\101\098\097\114'})do m[ba]=a3(a8[a9])end o=m.accent for
a9,ba in pairs(n)do if a9.Parent then for bb,bc in pairs(ba)do a9[bb]=m[bc]end
end end local a9=w:FindFirstChildOfClass('\085\073\071\114\097\100\105\101\110\116')if a9 then a9.Color=
ColorSequence.new(m.tile,m.dark)end a5(a8[6])end O.label(aY,'\084\101\120\116\076\097\098\101\108',p(
'\084\069\077\065\083\032\080\082\079\078\084\079\083','\084\072\069\077\069\032\080\082\069\083\069\084\083'),32,880)for a7,a8 in ipairs({'\065\109\101\116\104\121\115\116','\080\111\116\097\116\111'
,'\066\108\111\111\100\109\111\111\110','\077\105\100\110\105\103\104\116','\069\109\101\114\097\108\100','\065\114\099\116\105\099'})do local a9=O.button(aY,a8,880+a7)r(
a9.Activated,function()a6(a8)a4()end)end aX=function()if type(readfile)==
'\102\117\110\099\116\105\111\110'then local a7=readfile(a0)if type(a7)=='\115\116\114\105\110\103'and#a7<=2048 then local
a8=e:JSONDecode(a7)if l and a_.Parent and type(a8)=='\116\097\098\108\101'then if a2[a8.preset]
then a6(a8.preset)end a5(a8.hex)end end end end r(a_.FocusLost,function()local
a7=a_.Text:gsub('\035',''):upper()if a5(a7)then a4()end end)end,5)if not l then
return end aE(0.96,'\065\106\117\115\116\097\110\100\111\032\111\032\112\097\105\110\101\108\032\u{e0}\032\115\117\097\032\116\101\108\097\u{2026}',
'\070\105\116\116\105\110\103\032\116\104\101\032\112\097\110\101\108\032\116\111\032\121\111\117\114\032\115\099\114\101\101\110\u{2026}')local a_,a0=pcall(X)if not a_ then T=
table.clone(S)pcall(X)end local a1 if not aY or not a_ then a1=p(
'\065\106\117\115\116\101\115\032\118\105\115\117\097\105\115\032\105\110\099\111\109\112\108\101\116\111\115\058\032','\083\111\109\101\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\032\102\097\105\108\101\100\058\032')..tostring(aZ
or a0)E.Text=a1 warn('\091\065\110\111\110\072\117\098\032'..a..'\093\032'..a1)end aE(1,
'\080\097\105\110\101\108\032\112\114\111\110\116\111\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\101\115\116\u{e3}\111\032\112\097\117\115\097\100\097\115\046',
'\080\097\110\101\108\032\114\101\097\100\121\046\032\070\101\097\116\117\114\101\115\032\097\114\101\032\112\097\117\115\101\100\046')ar.Text=p('\083\101\117\032\112\097\105\110\101\108\032\101\115\116\u{e1}\032\112\114\111\110\116\111',
'\089\111\117\114\032\112\097\110\101\108\032\105\115\032\114\101\097\100\121')am=true if ao()then ap:Destroy()else task.spawn(function()
while l and ap.Parent and not ao()do task.wait(0.05)end if l and ap.Parent then
ap:Destroy()end end)end pcall(b.ready)if aX then task.defer(function()aW(aX,2)
end)end
