-- Luau
-- AnonHub protected distribution 0.40.7
-- local BOOT_VERSION="0.40.7"
local a='\048\046\052\048\046\055'local b=...assert(type(b)=='\116\097\098\108\101'and b.access,
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
showValue.paint(aV.showValue)local by={Ruins2={'\082\117\u{ed}\110\097\115','\082\117\105\110\115'},
LootGoblinVillage={'\086\105\108\097\032\100\111\115\032\071\111\098\108\105\110\115','\071\111\098\108\105\110\032\086\105\108\108\097\103\101'},MinerTown={
'\086\105\108\097\032\100\111\115\032\077\105\110\101\105\114\111\115','\077\105\110\101\114\032\084\111\119\110'},CraftingShack={'\079\102\105\099\105\110\097','\067\114\097\102\116\105\110\103\032\087\111\114\107\115\104\111\112'},
TradingCampTutorial={'\080\111\115\116\111\032\100\101\032\067\111\109\u{e9}\114\099\105\111','\084\114\097\100\105\110\103\032\080\111\115\116'},BountyCamp={
'\065\099\097\109\112\097\109\101\110\116\111\032\100\101\032\082\101\099\111\109\112\101\110\115\097\115','\066\111\117\110\116\121\032\067\097\109\112'}}local function bz(bA)if by[bA]then
return aL(by[bA][1],by[bA][2])end local bB=bA:gsub('\094\070\111\114\116\114\101\115\115\095',''):gsub(
'\095\073\110\102\105\110\105\116\101\095\037\100\043',''):gsub('\095','\032'):gsub('\040\037\108\041\040\037\117\041','\037\049\032\037\050'):gsub('\037\115\043','\032')return
bB end local bA={Common='\070\070\070\070\070\070',Uncommon='\054\052\068\068\056\056',Rare='\054\048\065\065\070\070',Epic='\066\067\056\048\070\070',
Legendary='\070\070\068\051\053\067',Mythic='\070\070\052\053\052\053',Mythical='\070\070\052\053\052\053',Secret='\070\070\056\053\068\056'}local bB
local function bC(bD,bE)local bF=bD:GetAttribute(bE)if bF~=nil then return bF
end if not bB then local bG=game:GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101'):FindFirstChild(
'\083\104\097\114\101\100')local bH=bG and bG:FindFirstChild('\073\116\101\109\068\097\116\097\098\097\115\101')if bH then bB=require(
bH)end end return bB and bB.GetAttribute(bD,bE)end local bD=bc:
FindFirstAncestorOfClass('\083\099\114\101\101\110\071\117\105')local bE=a1('\070\114\097\109\101',{Size=UDim2.fromScale(1
,1),BackgroundTransparency=1},bD)local bF=0 local bG,bH,bI,bJ local bK={{'\097\117\114\097',
'\065\116\097\113\117\101','\065\116\116\097\099\107'},{'\111\114\101\065\117\114\097','\080\105\099\097\114\101\116\097','\080\105\099\107\097\120\101'},{'\102\108\121','\086\111\097\114','\070\108\121'},{
'\110\111\099\108\105\112','\078\111\099\108\105\112','\078\111\099\108\105\112'},{'\115\112\101\101\100','\086\101\108\111\099\105\100\097\100\101','\083\112\101\101\100'},{'\097\117\116\111\077\111\118\101',
'\065\117\116\111\032\077\111\118\101','\065\117\116\111\032\077\111\118\101'},{'\097\117\116\111\070\105\114\101','\065\117\116\111\032\070\105\114\101','\065\117\116\111\032\070\105\114\101'},{'\117\112','\083\117\098\105\114','\085\112'
},{'\100\111\119\110','\068\101\115\099\101\114','\068\111\119\110'}}local bL={}for bM,bN in ipairs(bK)do local bO=bN[1]
local bP=a1('\070\114\097\109\101',{Size=UDim2.fromOffset(66,76),Position=UDim2.new(0,12+((bM-1
)%4)*72,1,-90-math.floor((bM-1)/4)*82),BackgroundColor3=Color3.fromRGB(20,27,39)
,Visible=false},bE)a1('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,10)},bP)a1('\085\073\083\116\114\111\107\101',
{Color=Color3.fromRGB(105,165,220),Thickness=1.5,Transparency=0.2},bP)local bQ,
bR=aK.checkbox(bc,aL('\065\116\097\108\104\111\032\110\097\032\116\101\108\097\058\032','\083\099\114\101\101\110\032\115\104\111\114\116\099\117\116\058\032')..aL(bN[2],bN[3]),80
+bM)a0(bQ.Activated,function()bP.Visible=not bP.Visible bR(bP.Visible)if not bP.
Visible then bF=0 end end)local bS=a1('\084\101\120\116\066\117\116\116\111\110',{Text='\061',Size=UDim2.new(1,0,
0,18),BackgroundTransparency=1,TextColor3=Color3.fromRGB(150,180,210),TextSize=
14},bP)local bT=a1('\084\101\120\116\066\117\116\116\111\110',{Text='',Size=UDim2.new(1,0,1,-18),Position=
UDim2.fromOffset(0,18),BackgroundTransparency=1},bP)local bU=a1('\070\114\097\109\101',{Size=
UDim2.fromOffset(26,26),Position=UDim2.new(0.5,-13,0,2),BackgroundTransparency=1
},bT)local function bV(bW,bX,bY,bZ)a1('\070\114\097\109\101',{Size=UDim2.fromOffset(bY,2),
Position=UDim2.fromOffset(bW,bX),Rotation=bZ or 0,BorderSizePixel=0,
BackgroundColor3=Color3.fromRGB(210,235,255)},bU)end if bO=='\117\112'or bO=='\100\111\119\110'or
bO=='\102\108\121'then bV(12,5,2,90)bV(4,8,12,-40)bV(12,8,12,40)bV(7,20,12,0)if bO==
'\100\111\119\110'then bU.Rotation=180 end elseif bO=='\111\114\101\065\117\114\097'then bV(4,12,23,-45)bV(1,5,23
,15)elseif bO=='\097\117\114\097'then bV(2,12,26,-45)bV(2,12,26,45)else bV(2,12,24,0)bV(2,12
,24,90)local bW=a1('\070\114\097\109\101',{Size=UDim2.fromOffset(18,18),Position=UDim2.
fromOffset(4,4),BackgroundTransparency=1},bU)a1('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.
new(1,0)},bW)a1('\085\073\083\116\114\111\107\101',{Thickness=2,Color=Color3.fromRGB(210,235,255)},bW)
end a1('\084\101\120\116\076\097\098\101\108',{Text=aL(bN[2],bN[3]),Size=UDim2.new(1,-4,0,20),Position=
UDim2.fromOffset(2,32),BackgroundTransparency=1,TextSize=10,TextColor3=Color3.
new(1,1,1),TextWrapped=true},bT)a0(bS.InputBegan,function(bW)if bW.UserInputType
==Enum.UserInputType.Touch or bW.UserInputType==Enum.UserInputType.MouseButton1
then bG=bW bH=bW.Position bI=bP.AbsolutePosition bJ=bP end end)if bO=='\117\112'or bO
=='\100\111\119\110'then a0(bT.InputBegan,function(bW)if bW.UserInputType==Enum.
UserInputType.Touch or bW.UserInputType==Enum.UserInputType.MouseButton1 then bF
=bO=='\117\112'and 1 or-1 end end)a0(bT.InputEnded,function()bF=0 end)else bL[bO]=bP
a0(bT.Activated,function()aW[bO]=not aW[bO]aT[bO].paint(aW[bO])end)end end a0(aN
.InputChanged,function(bM)if not bG or not bJ or not bJ.Visible then return end
if bM~=bG and bM.UserInputType~=Enum.UserInputType.MouseMovement then return end
local bN=bM.Position-bH local bO=workspace.CurrentCamera local bP=bO and bO.
ViewportSize local bQ,bR=bI.X+bN.X,bI.Y+bN.Y if bP then bQ=math.clamp(bQ,0,math.
max(0,bP.X-66))bR=math.clamp(bR,0,math.max(0,bP.Y-76))end bJ.Position=UDim2.
fromOffset(bQ,bR)end)a0(aN.InputEnded,function(bM)if bM==bG then bG=nil bJ=nil
end bF=0 end)local function bM(bN)if bN:IsA('\066\097\115\101\080\097\114\116')then return bN end return
bN:IsA('\077\111\100\101\108')and(bN.PrimaryPart or bN:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')or bN:
FindFirstChildWhichIsA('\066\097\115\101\080\097\114\116',true))or nil end local bN=setmetatable({},{
__mode='\107'})local function bO(bP)if not(bP:IsA('\077\111\100\101\108')or bP:IsA('\066\097\115\101\080\097\114\116'))
then return nil end local bQ=tostring(bP:GetAttribute('\082\101\097\108\078\097\109\101')or bP.Name)if
bP.Name=='\068\105\103\083\112\111\116'and bP:IsA('\077\111\100\101\108')then return'\116\114\101\097\115\117\114\101'end if bP:IsA('\077\111\100\101\108')
and(bP.Parent and bP.Parent.Name=='\070\111\114\116\114\101\115\115\101\115'or bP.Parent==workspace and by[bP.
Name])then return'\115\116\114\117\099\116\117\114\101\115'end if bP.Name=='\067\104\117\114\099\104'and bP:IsA('\077\111\100\101\108')then
return'\099\104\117\114\099\104'end if bP.Parent and bP.Parent.Name=='\078\112\099'then if bP:GetAttribute(
'\078\112\099\070\097\099\116\105\111\110')=='\070\114\105\101\110\100\108\121\067\111\109\112\097\110\105\111\110'or bQ:lower():find('\099\111\109\112\097\110\105\111\110',1,true)or bP:
GetAttribute('\070\114\105\101\110\100\108\121')==true then return'\099\111\109\112\097\110\105\111\110\115'end if bQ:lower():find(
'\109\105\109\105\099',1,true)or bP:GetAttribute('\077\105\109\105\099\067\104\101\115\116\068\097\109\097\103\101\097\098\108\101')~=nil then return
'\109\105\109\105\099\115'end return'\109\111\098\115'end if bP:GetAttribute('\082\117\110\116\105\109\101\067\104\101\115\116\077\111\100\101\108')==true then
return'\099\104\101\115\116\115'end if aP:HasTag(bP,'\079\114\101')or type(bP:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101'
))=='\115\116\114\105\110\103'then return'\111\114\101\115'end if aP:HasTag(bP,'\068\117\110\103\101\111\110\065\114\101\110\097\068\111\111\114')then return
'\097\114\101\110\097\115'end if aP:HasTag(bP,'\068\117\110\103\101\111\110\084\114\101\097\115\117\114\101\068\111\111\114')then return'\116\114\101\097\115\117\114\101\068\111\111\114\115'end
if aP:HasTag(bP,'\068\117\110\103\101\111\110\068\111\111\114')then return'\100\111\111\114\115'end if bP.Parent and bP.Parent.
Name=='\073\116\101\109\115'then return bQ:lower():find('\115\099\114\097\112',1,true)and'\115\099\114\097\112'or'\105\116\101\109\115'end
end local bP=false local function bQ()if bP then return end bP=true task.spawn(
function()local bR={workspace}local bS=0 while aR and#bR>0 do local bT=table.
remove(bR)local bU=bO(bT)if bU then bN[bT]=bU end for bV,bW in ipairs(bT:
GetChildren())do bR[#bR+1]=bW end bS+=1 if bS%120==0 then task.wait()end end bP=
false end)end a0(workspace.DescendantAdded,function(bR)local bS=bO(bR)if bS then
bN[bR]=bS end end)local bR={}local function bS(bT)local bU=bR[bT]if bU then for
bV,bW in pairs(bU)do if typeof(bW)=='\073\110\115\116\097\110\099\101'then bW:Destroy()end end bR[bT]=
nil end end local function bT()local bU={}for bV in pairs(bR)do bU[#bU+1]=bV end
for bV,bW in ipairs(bU)do bS(bW)end end local bU,bV,bW,bX,bY local bZ=
setmetatable({},{__mode='\107'})local b_,b0 local function b1()if b_ then pcall(
function()b_.Range=b0 end)b_=nil end end local function b2()if bY then bY:
Destroy()bY=nil end if bX then bX:Destroy()bX=nil end bW=nil end local function
b3()for b4,b5 in pairs(bZ)do if b4.Parent then b4.CanCollide=b5 end bZ[b4]=nil
end end local b4={}local b5,b6 local b7,b8,b9=0,nil,0 local ca local function cb
()if b5 then b5.Debounce=math.max(tonumber(b5.Debounce)or 0,tonumber(b6)or 0)end
b5=nil b6=nil end local cc,cd,ce local function cf()if cc and cc.GetAimRay==ce
then cc.GetAimRay=cd end cc=nil cd=nil ce=nil end local function cg()for ch,ci
in pairs(b4)do if ch.Parent then ch.Size=ci.size end ci.box:Destroy()b4[ch]=nil
end end local function ch(ci,cj)local ck,cl=nil,cj local cm=workspace:
FindFirstChild('\078\112\099')for cn,co in ipairs(cm and cm:GetChildren()or{})do local cp
=bO(co)local cq=co:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cr=co:FindFirstChild(
'\072\101\097\100')if(cp=='\109\111\098\115'or cp=='\109\105\109\105\099\115')and cq and cq.Health>0 and cr and cr:IsA(
'\066\097\115\101\080\097\114\116')then local cs=(cr.Position-ci.Position).Magnitude if cs<cl then local
ct=true if aV.visibleOnly then local cu=RaycastParams.new()cu.FilterType=Enum.
RaycastFilterType.Exclude cu.FilterDescendantsInstances={aM.Character}local cv=
workspace:Raycast(ci.Position,cr.Position-ci.Position,cu)ct=not cv or cv.
Instance:IsDescendantOf(co)end if ct then cl=cs ck=cr end end end end return ck,
cl end local function ci()for cj in pairs(aW)do aW[cj]=false aT[cj].paint(false)
end b1()b2()b3()cf()cg()cb()b8=nil ca=nil b7=0 bF=0 if bU and bU.Parent then bU.
WalkSpeed=bV end bU=nil end a0(aO.Heartbeat,function()if not aR then return end
local cj,ck,cl=aJ.actor()if bU and(bU~=cl or not aW.speed)then if bU.Parent then
bU.WalkSpeed=bV end bU=nil end if cl and aW.speed then if bU~=cl then bU=cl bV=
cl.WalkSpeed end cl.WalkSpeed=aV.speed end if not cj or not aW.noclip then b3()
else for cm,cn in ipairs(cj:GetDescendants())do if cn:IsA('\066\097\115\101\080\097\114\116')then if bZ[
cn]==nil then bZ[cn]=cn.CanCollide end cn.CanCollide=false end end end if not ck
or not aW.fly or aJ.movementBusy and aJ.movementBusy()then b2()else if bW~=ck
then b2()bW=ck bX=a1('\065\116\116\097\099\104\109\101\110\116',{},ck)bY=a1('\076\105\110\101\097\114\086\101\108\111\099\105\116\121',{Attachment0=bX,
MaxForce=1e7,RelativeTo=Enum.ActuatorRelativeTo.World},ck)end local cm=cl.
MoveDirection local cn=workspace.CurrentCamera if cm.Magnitude>0.1 and cn then
cm=Vector3.new(cm.X,cn.CFrame.LookVector.Y*cm.Magnitude,cm.Z)end local co=bF if
not aN:GetFocusedTextBox()then if aN:IsKeyDown(Enum.KeyCode.Space)then co+=1 end
if aN:IsKeyDown(Enum.KeyCode.LeftControl)then co-=1 end end bY.VectorVelocity=(
cm+Vector3.new(0,co,0))*aV.flySpeed end end)local cj,ck,cl=0,0,0 task.spawn(
function()while aR do local cm,cn=pcall(function()local cm,cn,co=aJ.actor()if
not cn then b1()cf()cg()cb()bT()return end for cp,cq in pairs(bL)do cq.
BackgroundColor3=aW[cp]and Color3.fromRGB(30,85,100)or Color3.fromRGB(20,27,39)
end if not aW.hitbox then cg()else local cp={}local cq=ch(cn,aV.gunRange)if cq
then cp[cq]=true local cr=b4[cq]if not cr then cr={size=cq.Size,box=a1(
'\066\111\120\072\097\110\100\108\101\065\100\111\114\110\109\101\110\116',{Adornee=cq,AlwaysOnTop=true,ZIndex=1,Transparency=0.93,
Color3=Color3.fromRGB(110,190,255)},bD)}b4[cq]=cr end cq.Size=Vector3.new(aV.
hitboxSize,aV.hitboxSize,aV.hitboxSize)cr.box.Size=cq.Size end for cr,cs in
pairs(b4)do if not cp[cr]then if cr.Parent then cr.Size=cs.size end cs.box:
Destroy()b4[cr]=nil end end end local cp=false for cq,cr in pairs(aY)do if cr.
enabled then cp=true end end if cp and os.clock()-cj>30 then cj=os.clock()bQ()
end if cp and os.clock()-ck>0.3 then ck=os.clock()local cq={}for cr,cs in
ipairs(game:GetService('\080\108\097\121\101\114\115'):GetPlayers())do if cs~=aM and cs.Character
then bN[cs.Character]='\112\108\097\121\101\114\115'end end for cr,cs in pairs(bN)do if not cr.Parent
or not cr:IsDescendantOf(workspace)then bN[cr]=nil else cs=bO(cr)or cs bN[cr]=cs
if aY[cs].enabled then local ct=bM(cr)local cu=true local cv=cr:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cw=cv and cv.Health or cr:GetAttribute(
'\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')if aV.hideDead and aG(cs,cw,cr:GetAttribute('\067\097\116\101\103\111\114\121'),cr:
GetAttribute('\067\111\114\112\115\101\077\097\120\072\101\097\108\116\104'),cr:GetAttribute('\067\111\114\112\115\101\080\108\097\121\101\114\085\115\101\114\073\100'))then cu=
false end if aV.hideAttached and(cs=='\105\116\101\109\115'or cs=='\115\099\114\097\112')and(cr:GetAttribute(
'\087\101\108\100\101\100')==true or cr:GetAttribute('\068\114\105\108\108\087\101\108\100\067\111\108\108\105\115\105\111\110\083\117\112\112\114\101\115\115\101\100')==true)then cu
=false end if cs=='\111\114\101\115'then local cx=tostring(cr:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101')
or cr.Name):lower()cu=false for cy in aV.oreFilter:gmatch('\091\094\044\093\043')do if cx:find(
cy:match('\094\037\115\042\040\046\045\041\037\115\042\036'):lower(),1,true)then cu=true end end end if ct and cu
then local cx=(ct.Position-cn.Position).Magnitude if cx<=aV.maxDistance then cq[
#cq+1]={o=cr,kind=cs,anchor=ct,distance=cx}end end end end end table.sort(cq,
function(cr,cs)local ct,cu=bl(cr.kind),bl(cs.kind)if ct~=cu then return ct<cu
end return cr.distance<cs.distance end)local cr={}for cs=1,math.min(#cq,aV.
maxESP)do local ct=cq[cs]local cu=ct.o cr[cu]=true if bR[cu]and bR[cu].style~=aV
.style then bS(cu)end local cv=bR[cu]if not cv then cv={style=aV.style}bR[cu]=cv
cv.billboard=a1('\066\105\108\108\098\111\097\114\100\071\117\105',{Adornee=ct.anchor,AlwaysOnTop=true,Size=UDim2.
fromOffset(220,48),StudsOffset=Vector3.new(0,3,0)},bD)cv.text=a1('\084\101\120\116\076\097\098\101\108',{
Size=UDim2.fromScale(1,1),BackgroundTransparency=1,TextSize=12,RichText=true,
TextStrokeTransparency=0.3,Font=Enum.Font.GothamBold,TextWrapped=true},cv.
billboard)if aV.style=='\066\111\120'then cv.visual=a1('\066\111\120\072\097\110\100\108\101\065\100\111\114\110\109\101\110\116',{Adornee=ct.
anchor,AlwaysOnTop=true,ZIndex=5,Transparency=0.65},bD)else cv.visual=a1(
'\072\105\103\104\108\105\103\104\116',{Adornee=cu,DepthMode=Enum.HighlightDepthMode.AlwaysOnTop,
FillTransparency=0.85},bD)end end local cw=a2(aY[ct.kind].color)local cx=cu:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cy=cx and cx.Health or cu:GetAttribute(
'\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')local cz=false local cA=tostring(cu:GetAttribute('\082\101\097\108\078\097\109\101')or
cu.Name)cv.billboard.Adornee=ct.anchor if ct.kind=='\111\114\101\115'then local cB=tostring(
cu:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101')or cu:GetAttribute('\082\101\097\108\078\097\109\101')or cu.Name)local
cC={Coal='\067\097\114\118\u{e3}\111',Iron='\070\101\114\114\111',Gold='\079\117\114\111',Diamond='\068\105\097\109\097\110\116\101',Emerald=
'\069\115\109\101\114\097\108\100\097',Ruby='\082\117\098\105'}for cD,cE in pairs(cC)do if cB:lower():find(cD:lower(),1
,true)then cA=aL(cE,cD)break end end cz=aP:HasTag(cu,'\087\111\114\109')or cu:
FindFirstChild('\087\111\114\109',true)~=nil if cz then cA=cA..aL('\032\105\110\102\101\115\116\097\100\111','\032\105\110\102\101\115\116\101\100')
end elseif ct.kind=='\099\104\117\114\099\104'then cA=aL('\073\103\114\101\106\097','\067\104\117\114\099\104')elseif ct.kind==
'\116\114\101\097\115\117\114\101'then cA=aL('\084\101\115\111\117\114\111\032\101\110\116\101\114\114\097\100\111','\066\117\114\105\101\100\032\116\114\101\097\115\117\114\101')elseif ct.kind==
'\115\116\114\117\099\116\117\114\101\115'or ct.kind=='\100\111\111\114\115'or ct.kind=='\097\114\101\110\097\115'or ct.kind=='\116\114\101\097\115\117\114\101\068\111\111\114\115'
then cA=bz(cA)elseif ct.kind=='\109\105\109\105\099\115'then cA=aL('\091\033\093\032\077\u{ed}\109\105\099\111','\091\033\093\032\077\105\109\105\099')
end cA=cA:gsub('\038','\038\097\109\112\059'):gsub('\060','\038\108\116\059'):gsub('\062','\038\103\116\059')if aV.rarityColors
and(ct.kind=='\105\116\101\109\115'or ct.kind=='\115\099\114\097\112'or ct.kind=='\111\114\101\115'or ct.kind=='\099\104\101\115\116\115')
then local cB=bA[tostring(bC(cu,'\082\097\114\105\116\121'))]if cB then cw=a2(cB)end end local cB=
aV.showValue and(ct.kind=='\105\116\101\109\115'or ct.kind=='\115\099\114\097\112'or ct.kind=='\111\114\101\115')and bC(cu
,'\086\097\108\117\101')or nil if not cv.value then cv.value=a1('\084\101\120\116\076\097\098\101\108',{Size=UDim2.
fromOffset(130,28),BackgroundTransparency=1,Font=Enum.Font.GothamBold,TextColor3
=Color3.fromRGB(255,215,95),TextStrokeTransparency=0.3},cv.billboard)cv.coin=a1(
'\070\114\097\109\101',{Size=UDim2.fromOffset(14,14),BackgroundColor3=Color3.fromRGB(255,200,55
),BorderSizePixel=0},cv.billboard)a1('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},cv.
coin)a1('\085\073\083\116\114\111\107\101',{Color=Color3.fromRGB(170,110,20),Thickness=1},cv.coin)a1(
'\084\101\120\116\076\097\098\101\108',{Text='\036',Size=UDim2.fromScale(1,1),BackgroundTransparency=1,
TextSize=11,TextColor3=Color3.fromRGB(120,75,10)},cv.coin)end local cC=type(cB)
=='\110\117\109\098\101\114'and cB==cB and cB<math.huge cv.value.Visible=cC cv.coin.Visible=cC if
cC then cv.value.Text=tostring(math.round(cB))cv.value.TextSize=aV.textSize cv.
value.Position=UDim2.new(0.5,-50,0,aV.textSize*3)cv.coin.Position=UDim2.new(0.5,
-66,0,aV.textSize*3+6)end cv.text.Size=UDim2.new(1,0,0,aV.textSize*3)cv.
billboard.Size=UDim2.fromOffset(260,aV.textSize*5)if not cv.worm then cv.worm=
a1('\070\114\097\109\101',{Size=UDim2.fromOffset(22,22),Position=UDim2.fromOffset(-22,0),
BackgroundTransparency=1,Visible=false},cv.billboard)for cD=0,4 do local cE=a1(
'\070\114\097\109\101',{Size=UDim2.fromOffset(7,7),Position=UDim2.fromOffset(cD*4,8+math.sin(cD
)*4),BackgroundColor3=Color3.fromRGB(225,145,190),BorderSizePixel=0},cv.worm)a1(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},cE)end cv.mimic=a1('\070\114\097\109\101',{Size=UDim2.
fromOffset(22,18),Position=UDim2.fromOffset(-24,0),BackgroundColor3=Color3.
fromRGB(125,65,45),Visible=false},cv.billboard)a1('\085\073\083\116\114\111\107\101',{Color=Color3.
fromRGB(255,185,75),Thickness=1.5},cv.mimic)a1('\070\114\097\109\101',{Size=UDim2.fromOffset(20
,7),Position=UDim2.fromOffset(1,6),BackgroundColor3=Color3.fromRGB(30,15,20),
BorderSizePixel=0},cv.mimic)for cD=0,3 do a1('\070\114\097\109\101',{Size=UDim2.fromOffset(3,4)
,Position=UDim2.fromOffset(2+cD*5,6),BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0},cv.mimic)end end cv.worm.Visible=cz cv.mimic.Visible=ct.kind
=='\109\105\109\105\099\115'cv.text.TextSize=aV.textSize cv.text.Text=string.format(
'\037\115\032\u{b7}\032\060\102\111\110\116\032\099\111\108\111\114\061\034\035\037\115\034\062\037\100\032\115\116\117\100\115\060\047\102\111\110\116\062\037\115',cA,aV.distanceColor,ct.distance,
cy and string.format('\n\072\080\032\037\046\048\102',cy)or'')cv.text.TextColor3=cw if aV.style==
'\066\111\120'then cv.visual.Color3=cw cv.visual.Adornee=ct.anchor if cu:IsA('\077\111\100\101\108')then
local cD,cE=cu:GetBoundingBox()cv.visual.Size=cE cv.visual.CFrame=ct.anchor.
CFrame:ToObjectSpace(cD)else cv.visual.Size=cu.Size end else cv.visual.FillColor
=cw cv.visual.OutlineColor=cw end end local cs={}for ct in pairs(bR)do if not cr
[ct]then cs[#cs+1]=ct end end for ct,cu in ipairs(cs)do bS(cu)end elseif not cp
then bT()end local cq=aJ.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local cr=cq and cq.ActiveTool
local cs=cr and tostring(cr.ToolName or cr.Tool and cr.Tool.Name or'')or''local
ct=cr and type(cr.Shoot)=='\102\117\110\099\116\105\111\110'and(cs:lower():find('\114\112\103',1,true)or cs:
lower():find('\098\108\097\099\107',1,true))if b5 and(b5~=cr or not aW.noLauncherCooldown or
not ct)then cb()end if aW.noLauncherCooldown and ct then b5=cr b6=math.max(
tonumber(b6)or 0,tonumber(cr.Debounce)or 0)cr.Debounce=0 end if aW.autoMedkit
and not(aJ.movementBusy and aJ.movementBusy())and not workspace:GetAttribute(
'\073\110\067\117\116\083\099\101\110\101')then if b8 then local cu=cr and type(cr.Consume)=='\102\117\110\099\116\105\111\110'and cs:
lower():find('\109\101\100\107\105\116',1,true)if co.Health>b8.health or os.clock()-b8.started>15
then if(cu or not cr)and b8.previous and aJ.equip then aJ.equip(b8.previous)end
b8=nil b9=os.clock()+2 end elseif co.MaxHealth>0 and co.Health/co.MaxHealth*100
<=aV.medkitPercent and os.clock()>=b9 then if b7==0 then b7=os.clock()+(aV.
medkitInstant and 0 or 0.75)end if os.clock()>=b7 then local cu=cs if cr and
type(cr.Consume)=='\102\117\110\099\116\105\111\110'and cs:lower():find('\109\101\100\107\105\116',1,true)then b8={health=
co.Health,started=os.clock(),previous=ca or cu}ca=nil cr:Consume()b7=0 elseif aJ
.equip and aJ.equip('\077\101\100\107\105\116')then ca=ca or cu b9=os.clock()+0.4 else b9=os.
clock()+5 aJ.say(aL(
'\065\117\116\111\032\077\101\100\107\105\116\058\032\100\101\105\120\101\032\117\109\032\107\105\116\032\097\099\101\115\115\u{ed}\118\101\108\032\110\097\032\109\111\099\104\105\108\097\032\111\117\032\098\097\114\114\097\046',
'\065\117\116\111\032\077\101\100\107\105\116\058\032\107\101\101\112\032\097\032\107\105\116\032\097\099\099\101\115\115\105\098\108\101\032\105\110\032\098\097\099\107\112\097\099\107\032\111\114\032\104\111\116\098\097\114\046'))end end else b7=0
end end local cu=ct or cr and type(cr.Shoot)=='\102\117\110\099\116\105\111\110'and cr.Tool and(cr.Tool.
Name:find('\082\105\102\108\101',1,true)or cr.Tool.Name:find('\082\101\118\111\108\118\101\114',1,true)or cr.Tool.Name:
find('\083\104\111\116\103\117\110',1,true))if aW.silentAim and cu then local cv=aJ.ctrl(
'\067\097\109\101\114\097\067\111\110\116\114\111\108\108\101\114')if cv and type(cv.GetAimRay)=='\102\117\110\099\116\105\111\110'and cc~=cv then cf()
cc=cv cd=cv.GetAimRay local cw=cd ce=function(cx,...)local cy=cw(cx,...)local cz
,cA=aJ.actor()local cB=aJ.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local cC=cB and cB.ActiveTool if
not aR or not aW.silentAim or not cA or not cC or type(cC.Shoot)~='\102\117\110\099\116\105\111\110'or
not cy then return cy end local cD=ch(cA,aV.gunRange)if cD and(cD.Position-cy.
Origin).Magnitude>0.01 then return Ray.new(cy.Origin,(cD.Position-cy.Origin).
Unit)end return cy end cv.GetAimRay=ce end else cf()end local cv=aJ.ctrl(
'\085\073\067\111\110\116\114\111\108\108\101\114')local cw=not workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')and not aN:
GetFocusedTextBox()and not(cv and cv.ActiveFrame and cv.ActiveFrame.Visible)if
aW.autoMove and cw and not(aJ.movementBusy and aJ.movementBusy())and not co.
SeatPart and not aW.fly then local cx=ch(cn,150)if cx then local cy=Vector3.new(
cn.Position.X-cx.Position.X,0,cn.Position.Z-cx.Position.Z)if cy.Magnitude<0.01
then cy=Vector3.new(0,0,1)end local cz=cx.Position+cy.Unit*aV.combatDistance if
math.abs((cn.Position-cx.Position).Magnitude-aV.combatDistance)>1.5 then co:
MoveTo(Vector3.new(cz.X,cn.Position.Y,cz.Z))end end end if aW.autoFire and cu
and cw and ch(cn,aV.gunRange)then cr:Shoot()end local cx=aW.aura or aW.oreAura
or aW.autoMove if b_ and(b_~=cr or not cx)then b1()end local cy=aJ.ctrl(
'\085\073\067\111\110\116\114\111\108\108\101\114')if cx and cr and cr.Tool and type(cr.Swing)=='\102\117\110\099\116\105\111\110'and not
workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')and not aN:GetFocusedTextBox()and not(cy and
cy.ActiveFrame and cy.ActiveFrame.Visible)then local cz=cr.Tool.Name:find(
'\080\105\099\107\097\120\101',1,true)~=nil if aW.aura or aW.autoMove or aW.oreAura and cz then if
type(cr.Range)=='\110\117\109\098\101\114'then if b_~=cr then b_=cr b0=cr.Range end cr.Range=aW.
autoMove and math.max(aV.reach,aV.combatDistance+2)or aV.reach end local cA,cB=
nil,aW.autoMove and math.max(aV.reach,aV.combatDistance+2)or aV.reach local cC=
workspace:FindFirstChild('\078\112\099')if aW.aura or aW.autoMove then for cD,cE in
ipairs(cC and cC:GetChildren()or{})do local cF=bO(cE)local cG=bM(cE)local cH=cE:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cI=cH and cH.Health or cE:GetAttribute(
'\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')or 0 local cJ=cE:GetAttribute('\083\101\115\115\105\111\110\070\117\101\108\076\101\101\099\104\073\100')~=nil local
cK=not cJ or(aM:GetAttribute('\073\110\068\117\110\103\101\111\110')~=true and cE:GetAttribute(
'\070\117\101\108\076\101\101\099\104\086\117\108\110\101\114\097\098\108\101')==true)if cK and(cF=='\109\111\098\115'or cF=='\109\105\109\105\099\115')and cG and cI>0
then local cL=(cn.Position-cG.Position).Magnitude if cL<cB then cA=cG cB=cL end
end end end if cA and not(aJ.movementBusy and aJ.movementBusy())and aV.position
~='\079\102\102'and not aW.fly and not aW.autoMove and not co.SeatPart and os.clock()-cl>
0.4 then cl=os.clock()local cD=aV.position=='\065\098\111\118\101'and Vector3.new(0,aV.offset,0
)or-cA.CFrame.LookVector*aV.offset cm:PivotTo(CFrame.lookAt(cA.Position+cD,cA.
Position,aV.position=='\065\098\111\118\101'and cA.CFrame.RightVector or Vector3.yAxis))end if
cA or aW.oreAura and cz then cr:Swing()end end end end)if not cm then aJ.say(aL(
'\067\111\110\116\114\111\108\101\115\032\097\118\097\110\u{e7}\097\100\111\115\058\032','\065\100\118\097\110\099\101\100\032\099\111\110\116\114\111\108\115\058\032')..tostring(cn))end task.wait(
0.15)end end)return{stop=ci,cleanup=function()aR=false ci()for cm,cn in ipairs(
aS)do cn:Disconnect()end bT()bE:Destroy()end}end local function aI(aJ,aK,aL,aM,
aN,aO)if type(aJ)=='\115\116\114\105\110\103'and aJ~=''then return aJ==aK or aJ==aL end if aM then
return true end return aN~=nil and aO~=nil and math.abs(aN.X)<=aO.X and math.
abs(aN.Y)<=aO.Y and math.abs(aN.Z)<=aO.Z end local function aJ(aK,aL)local aM,aN
=aK.ui,aK.T local aO=game:GetService('\080\108\097\121\101\114\115').LocalPlayer local aP=game:
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
"\067\111\108\108\101\099\116\032\116\104\105\115\032\068\117\110\103\101\111\110\039\115\032\108\111\111\115\101\032\108\111\111\116\032\097\110\100\032\115\116\111\112"),45)local a6=aM.button(aZ,aN(
'\080\097\114\097\114\032\108\111\103\u{ed}\115\116\105\099\097','\083\116\111\112\032\108\111\103\105\115\116\105\099\115'),46)local function a7()if aL.release
then aL.release()end aS+=1 aU=false aV=false a4(false)end a1(a6.Activated,a7)a1(
a3.Activated,function()aU=not aU a4(aU)a0(aU and
'\065\117\116\111\032\118\101\110\100\097\032\097\116\105\118\097\058\032\097\103\117\097\114\100\097\110\100\111\032\105\116\101\110\115\032\110\097\032\098\114\111\099\097\032\101\032\101\115\116\097\u{e7}\u{e3}\111\032\112\114\u{f3}\120\105\109\097\046'
or'\065\117\116\111\032\118\101\110\100\097\032\112\097\114\097\100\097\046',aU and
"\065\117\116\111\032\115\101\108\108\032\097\099\116\105\118\101\058\032\119\097\105\116\105\110\103\032\102\111\114\032\100\114\105\108\108\032\105\116\101\109\115\032\097\110\100\032\097\032\110\101\097\114\098\121\032\115\116\097\116\105\111\110\046"or
'\065\117\116\111\032\115\101\108\108\032\115\116\111\112\112\101\100\046')end)local function a8(a9)return a9 and(a9:IsA('\066\097\115\101\080\097\114\116')
and a9 or a9:IsA('\077\111\100\101\108')and(a9.PrimaryPart or a9:FindFirstChildWhichIsA(
'\066\097\115\101\080\097\114\116',true)))or nil end local function a9(ba)local bb=aQ:FindFirstChild(
'\083\104\097\114\101\100')local bc=bb and bb:FindFirstChild(ba)return bc and require(bc)end local
function ba(bb)return aR and aS==bb and aL.actor()~=nil end local function bb(bc
,bd,be)local bf=os.clock()+be repeat if not ba(bc)then return false end if bd()
then return true end task.wait(0.1)until os.clock()>=bf return false end local
function bc(bd,be)local bf=workspace:FindFirstChild('\068\114\105\108\108')if not bf or not bd
then return false end local bg=RaycastParams.new()bg.FilterType=Enum.
RaycastFilterType.Exclude bg.FilterDescendantsInstances={be}local bh=workspace:
Raycast(bd.Position,Vector3.new(0,-15,0),bg)return bh and bh.Instance:
IsDescendantOf(bf)or false end local function bd(be,bf)local bg,bh=nil,aX for bi
,bj in ipairs(aP:GetTagged(be))do if bj:IsA('\066\097\115\101\080\097\114\116')and bj:IsDescendantOf(
workspace)and not bj:GetFullName():find('\067\117\116\083\099\101\110\101',1,true)then local bk=(bj.
Position-bf.Position).Magnitude if bk<bh then bg=bj bh=bk end end end return bg
end local function be(bf)local bg,bh,bi=aL.actor()if not bh or aO:GetAttribute(
'\073\110\068\117\110\103\101\111\110')==true or workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')then return end local
bj=workspace:FindFirstChild('\068\114\105\108\108')if not bj or not(bc(bh,bg)or bi.SeatPart and
bi.SeatPart:IsDescendantOf(bj))then return end local bk=workspace:
FindFirstChild('\073\116\101\109\115')local bl=a9('\073\116\101\109\068\097\116\097\098\097\115\101')local bm=a9('\083\101\108\108\086\097\108\117\101')if not
bk or not bl or not bm then return end local bn={}for bo,bp in ipairs(bk:
GetChildren())do if not ba(bf)or not aU then return end local bq=a8(bp)if bq and
not aY[bp]and(bc(bq,bp)or bp:GetAttribute('\068\114\105\108\108\087\101\108\100\067\111\108\108\105\115\105\111\110\083\117\112\112\114\101\115\115\101\100')==true)
and not aP:HasTag(bp,'\083\104\111\112\073\116\101\109')and not bp:GetAttribute(
'\065\100\118\101\110\116\117\114\101\081\117\101\115\116\080\114\111\116\101\099\116\101\100')and not bp:GetAttribute('\068\101\097\116\104\067\104\101\115\116')and not bp:
GetAttribute('\067\114\097\102\116\101\100\080\108\097\099\101\097\098\108\101')then local br=bp:GetAttribute('\086\097\108\117\101')if type(br
)=='\110\117\109\098\101\114'then br=math.round(bm.ScaleByCharges(br,bp:GetAttribute(
'\070\114\111\109\084\111\111\108\095\073\116\101\109\067\104\097\114\103\101\115')or bl.GetAttribute(bp,'\073\116\101\109\067\104\097\114\103\101\115'),bp:GetAttribute(
'\070\114\111\109\084\111\111\108\095\077\097\120\073\116\101\109\067\104\097\114\103\101\115')or bl.GetAttribute(bp,'\077\097\120\073\116\101\109\067\104\097\114\103\101\115')))local bs=br>=
aW and'\083\101\108\108\080\097\114\116'or bl.GetAttribute(bp,'\067\097\116\101\103\111\114\121')=='\083\099\114\097\112'and'\083\099\114\097\112\067\111\108\108\101\099\116\111\114'or
nil local bt=bs and bd(bs,bh)if bt then aY[bp]=true if bp:GetAttribute('\087\101\108\100\101\100')
==true then local bu=aL.await(aL.service('\068\114\097\103\083\101\114\118\105\099\101'):Weld(bp))if bu~=
'\100\101\116\097\099\104\101\100'or not ba(bf)or not aU then return end end local bu=aL.await(aL.
service('\068\114\097\103\083\101\114\118\105\099\101'):Request(bp))if not ba(bf)or not aU then if bu then pcall(
function()aL.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)end return end if bu==true
and bp.Parent and bt.Parent then bp:PivotTo(bt.CFrame*CFrame.new(0,bt.Size.Y*0.5
+1,0))task.wait()pcall(function()aL.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)bn[#
bn+1]=bp end end end end end if#bn>0 then bb(bf,function()for bo,bp in ipairs(bn
)do if bp:IsDescendantOf(workspace)then return false end end return true end,3)
local bo=0 for bp,bq in ipairs(bn)do if not bq:IsDescendantOf(workspace)then bo
+=1 end end a0('\076\111\116\101\032\101\110\118\105\097\100\111\058\032'..#bn..'\059\032\114\101\109\111\118\105\100\111\115\032\112\101\108\097\032\101\115\116\097\u{e7}\u{e3}\111\058\032'..bo
,'\066\097\116\099\104\032\115\101\110\116\058\032'..#bn..'\059\032\114\101\109\111\118\101\100\032\098\121\032\115\116\097\116\105\111\110\058\032'..bo)end end local function bf(bg)
local bh=bg.Parent if bh and bh:IsA('\065\116\116\097\099\104\109\101\110\116')then return bh.WorldCFrame end
local bi=a8(bh)return bi and bi.CFrame end local function bg(bh,bi,bj)assert(bi
and bi.Parent and bi.Enabled and type(fireproximityprompt)=='\102\117\110\099\116\105\111\110',aN(
'\080\111\114\116\097\108\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\047\098\108\111\113\117\101\097\100\111\046','\080\111\114\116\097\108\032\117\110\097\118\097\105\108\097\098\108\101\047\108\111\099\107\101\100\046'))local bk=aL.
actor()local bl=bf(bi)assert(bk and bl,'\080\111\114\116\097\108\032\112\111\115\105\116\105\111\110\032\117\110\097\118\097\105\108\097\098\108\101')bk:PivotTo(
bl*CFrame.new(0,2,3))task.wait(0.4)assert(ba(bh),'\083\116\111\112\112\101\100')fireproximityprompt(
bi)assert(bb(bh,function()return(aO:GetAttribute('\073\110\068\117\110\103\101\111\110')==true)==bj end,8),
aN('\079\032\106\111\103\111\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\097\032\112\097\115\115\097\103\101\109\032\112\101\108\111\032\112\111\114\116\097\108\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\112\111\114\116\097\108\032\116\114\097\110\115\105\116\105\111\110\046'))end a1(a5.Activated,function()if
aV then return end if aL.acquire and not aL.acquire()then a0(
'\079\117\116\114\097\032\116\097\114\101\102\097\032\101\115\116\u{e1}\032\109\111\118\101\110\100\111\032\105\116\101\110\115\046\032\084\101\110\116\101\032\097\111\032\116\101\114\109\105\110\097\114\046',
'\065\110\111\116\104\101\114\032\116\097\115\107\032\105\115\032\109\111\118\105\110\103\032\105\116\101\109\115\046\032\082\101\116\114\121\032\119\104\101\110\032\105\116\032\102\105\110\105\115\104\101\115\046')return end aS+=1 local
bh=aS aV=true task.spawn(function()local bi,bj=pcall(function()assert(aO:
GetAttribute('\073\110\068\117\110\103\101\111\110')==true,aN('\069\110\116\114\101\032\112\114\105\109\101\105\114\111\032\110\097\032\068\117\110\103\101\111\110\046',
'\069\110\116\101\114\032\116\104\101\032\068\117\110\103\101\111\110\032\102\105\114\115\116\046'))local bi=aL.ctrl('\068\117\110\103\101\111\110\085\073\067\111\110\116\114\111\108\108\101\114')local bj=bi
and bi._BoundDungeon local bk=assert(a9('\068\117\110\103\101\111\110\068\111\111\114\083\116\097\116\101'))local bl,bm bj=bj
and(bk.GetRoot(bj)or bj)if not(bj and bj.Parent)then local bn=aO:GetAttribute(
'\065\099\116\105\118\101\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')for bo,bp in ipairs(aP:GetTagged(
'\068\117\110\103\101\111\110\068\111\111\114'))do local bq=bk.GetRoot(bp)if bq and bn and(bq:GetAttribute(
'\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')==bn or bq:GetAttribute('\083\101\115\115\105\111\110\068\117\110\103\101\111\110\073\100')==bn)
then bj=bq break end end end assert(bj and bj.Parent,aN(
'\068\117\110\103\101\111\110\032\110\u{e3}\111\032\105\100\101\110\116\105\102\105\099\097\100\097\046\032\069\110\116\114\101\032\112\101\108\111\032\112\111\114\116\097\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046',
'\068\117\110\103\101\111\110\032\110\111\116\032\105\100\101\110\116\105\102\105\101\100\046\032\069\110\116\101\114\032\116\104\114\111\117\103\104\032\105\116\115\032\112\111\114\116\097\108\032\097\110\100\032\114\101\116\114\121\046'))for bn,bo in
ipairs(aP:GetTagged('\068\117\110\103\101\111\110\068\111\111\114'))do if bk.GetRoot(bo)==bj then bl=bo:
FindFirstChild('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116',true)bm=bo:FindFirstChild('\068\117\110\103\101\111\110\069\120\105\116\080\114\111\109\112\116',
true)if bl and bm then break end end end local bn=aL.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local
bo=bn and bn.ActiveTool if not(bo and bo.IsSack)then if aL.equip then aL.equip(
'\083\097\099\107')end local bp=aO:FindFirstChild('\066\097\099\107\112\097\099\107')local bq,br,bs=aL.actor()for bt
,bu in ipairs(bp and bp:GetChildren()or{})do if bu:IsA('\084\111\111\108')and(bu.Name==
'\083\097\099\107'or bu:GetAttribute('\073\116\101\109\068\097\116\097\098\097\115\101\073\100')=='\083\097\099\107')then bs:EquipTool(bu)break
end end bb(bh,function()bo=bn and bn.ActiveTool return bo and bo.IsSack end,4)
end assert(bo and bo.IsSack and type(bo.CanStoreTarget)=='\102\117\110\099\116\105\111\110',aN(
'\069\113\117\105\112\101\032\111\032\115\097\099\111\032\112\097\114\097\032\099\111\108\101\116\097\114\046','\069\113\117\105\112\032\116\104\101\032\115\097\099\107\032\116\111\032\099\111\108\108\101\099\116\046'))local bp=assert(a9(
'\083\097\099\107\067\111\110\102\105\103'))local br=aO:GetAttribute('\065\099\116\105\118\101\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')or bj:
GetAttribute('\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')local bs=bj:GetAttribute(
'\083\101\115\115\105\111\110\068\117\110\103\101\111\110\073\100')local bt,bu if bj:IsA('\077\111\100\101\108')then bt,bu=bj:GetBoundingBox()
end local function bv(bw)local bx=bw:GetAttribute('\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')
or bw:GetAttribute('\083\101\115\115\105\111\110\068\117\110\103\101\111\110\073\100')local by=a8(bw)local bz=by and bt and bt:
PointToObjectSpace(by.Position)local bA=bu and bu*0.5+Vector3.new(4,4,4)return
aI(bx,br,bs,bw:IsDescendantOf(bj),bz,bA)end local bw={}local bx={}local by=0
local bz=0 local bA=nil local function bB()assert(bl and bm and bm.Parent and bm
.Enabled,aN(
'\083\097\099\111\032\112\114\101\115\101\114\118\097\100\111\058\032\108\105\098\101\114\101\032\097\032\115\097\u{ed}\100\097\032\100\097\032\068\117\110\103\101\111\110\032\112\097\114\097\032\116\114\097\110\115\112\111\114\116\097\114\032\u{e0}\032\098\114\111\099\097\046'
,"\083\097\099\107\032\112\114\101\115\101\114\118\101\100\058\032\117\110\108\111\099\107\032\116\104\101\032\068\117\110\103\101\111\110\032\101\120\105\116\032\116\111\032\116\114\097\110\115\112\111\114\116\032\116\111\032\116\104\101\032\100\114\105\108\108\046"))bg(bh,
bm,false)local bC=workspace:FindFirstChild('\068\114\105\108\108')local bD=bC and(bC:
FindFirstChild('\066\111\100\121')or bC.PrimaryPart)assert(bD and bD:IsA('\066\097\115\101\080\097\114\116'),
'\068\114\105\108\108\032\110\111\116\032\108\111\097\100\101\100')local bE=aL.actor()bE:PivotTo(bD.CFrame*CFrame.new(0,bD.Size.
Y*0.5+4,0))task.wait(0.5)assert(ba(bh)and bn.ActiveTool==bo,
'\083\097\099\107\032\099\104\097\110\103\101\100\032\047\032\115\116\111\112\112\101\100')bo.Execute:Fire({'\068\114\111\112\065\108\108'})assert(bb(bh,function()
return(bo.Size or 0)==0 end,5),'\068\101\112\111\115\105\116\032\110\111\116\032\099\111\110\102\105\114\109\101\100')bg(bh,bl,true)end while
ba(bh)do if(bo.Size or 0)>=bp.Capacity then bB()end assert(bn.ActiveTool==bo and
bj.Parent,'\083\097\099\107\032\099\104\097\110\103\101\100\032\047\032\100\117\110\103\101\111\110\032\117\110\108\111\097\100\101\100')local bC=workspace:FindFirstChild(
'\073\116\101\109\115')local bD for bE,bF in ipairs(bC and bC:GetChildren()or{})do if not bw[bF
]and bv(bF)and bo:CanStoreTarget(bF)and a8(bF)then bD=bF break end end if not bD
then local bE for bF,bG in ipairs(bj:GetDescendants())do if bG:IsA(
'\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and bG.Enabled and not bx[bG]and bG:GetFullName():find(
'\067\104\101\115\116\078\111\100\101',1,true)then bE=bG break end end if not bE then bA=bA or os.clock()if
os.clock()-bA>=3 then break end task.wait(0.4)continue end bA=nil bx[bE]=true
local bF=bf(bE)assert(bF and type(fireproximityprompt)=='\102\117\110\099\116\105\111\110',
'\067\104\101\115\116\032\112\114\111\109\112\116\032\117\110\097\118\097\105\108\097\098\108\101')local bG=aL.actor()bG:PivotTo(bF*CFrame.new(0,3,3))
task.wait(0.3)assert(ba(bh),'\083\116\111\112\112\101\100')fireproximityprompt(bE)bb(bh,function()
return not bE.Parent or not bE.Enabled end,3)task.wait(0.5)continue end bA=nil
bw[bD]=true local bE=aL.actor()bE:PivotTo(a8(bD).CFrame*CFrame.new(0,3,3))task.
wait(0.3)assert(ba(bh)and bn.ActiveTool==bo,'\083\116\111\112\112\101\100')local bF=bo.Size or 0 bo.
Execute:Fire({'\080\105\099\107\117\112',bD})local bG=bb(bh,function()return(bo.Size or 0)>bF end,
3)if bG then by+=1 else bz+=1 a0(
'\073\116\101\109\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\100\111\059\032\115\101\103\117\105\110\100\111\032\112\097\114\097\032\111\115\032\100\101\109\097\105\115\032\105\116\101\110\115\032\101\108\101\103\u{ed}\118\101\105\115\046',
'\073\116\101\109\032\110\111\116\032\099\111\110\102\105\114\109\101\100\059\032\099\111\110\116\105\110\117\105\110\103\032\116\111\032\111\116\104\101\114\032\101\108\105\103\105\098\108\101\032\105\116\101\109\115\046')end if(bo.Size or 0)>=
bp.Capacity then bB()end end assert(ba(bh),'\083\116\111\112\112\101\100')if(bo.Size or 0)>0 then bB(
)end a0('\083\101\109\032\109\097\105\115\032\108\111\111\116\032\101\108\101\103\u{ed}\118\101\108\032\099\097\114\114\101\103\097\100\111\046\032\067\111\108\101\116\097\100\111\115\058\032'..by..
'\059\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\100\111\115\058\032'..bz..
'\046\032\065\115\115\117\109\097\032\111\032\099\111\110\116\114\111\108\101\059\032\114\101\097\116\105\118\101\032\097\112\u{f3}\115\032\111\032\099\104\101\102\101\046',
'\078\111\032\109\111\114\101\032\101\108\105\103\105\098\108\101\032\108\111\097\100\101\100\032\108\111\111\116\046\032\067\111\108\108\101\099\116\101\100\058\032'..by..'\059\032\117\110\099\111\110\102\105\114\109\101\100\058\032'..bz..
'\046\032\084\097\107\101\032\099\111\110\116\114\111\108\059\032\114\101\115\116\097\114\116\032\097\102\116\101\114\032\116\104\101\032\098\111\115\115\046')end)if aR and aS==bh then if aL.
release then aL.release()end aV=false if not bi then a0(
'\076\111\103\u{ed}\115\116\105\099\097\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(bj),'\076\111\103\105\115\116\105\099\115\032\115\116\111\112\112\101\100\058\032'..tostring(bj
))end end end)end)local bh=100000 local bi=300 aM.label(aZ,'\084\101\120\116\076\097\098\101\108',aN(
'\082\111\116\097\032\100\101\032\098\097\u{fa}\115\058\032\118\105\115\105\116\097\032\098\097\u{fa}\115\032\101\032\088\032\099\097\114\114\101\103\097\100\111\115\032\102\111\114\097\032\100\097\115\032\068\117\110\103\101\111\110\115\046\032\085\115\097\032\111\115\032\112\114\111\109\112\116\115\032\100\111\032\106\111\103\111\044\032\097\116\u{e9}\032\111\032\108\105\109\105\116\101\032\100\101\032\100\105\115\116\u{e2}\110\099\105\097\044\032\101\032\118\111\108\116\097\032\u{e0}\032\098\114\111\099\097\046\032\078\u{e3}\111\032\103\097\114\097\110\116\101\032\067\111\114\101\115\032\112\111\114\032\098\097\u{fa}\046'
,
"\067\104\101\115\116\032\114\111\117\116\101\058\032\118\105\115\105\116\115\032\108\111\097\100\101\100\032\099\104\101\115\116\115\032\097\110\100\032\088\032\115\112\111\116\115\032\111\117\116\115\105\100\101\032\068\117\110\103\101\111\110\115\046\032\085\115\101\115\032\103\097\109\101\032\112\114\111\109\112\116\115\032\119\105\116\104\105\110\032\116\104\101\032\100\105\115\116\097\110\099\101\032\108\105\109\105\116\044\032\116\104\101\110\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\100\114\105\108\108\046\032\067\111\114\101\115\032\112\101\114\032\099\104\101\115\116\032\097\114\101\032\110\111\116\032\103\117\097\114\097\110\116\101\101\100\046"
),85,50)local bj=aM.label(aZ,'\084\101\120\116\066\111\120',tostring(bh),40,51)a1(bj.FocusLost,
function()local bk=tonumber(bj.Text)if bk and bk==bk then bh=math.clamp(bk,100,
200000)end bj.Text=tostring(bh)end)aM.label(aZ,'\084\101\120\116\076\097\098\101\108',aN(
'\086\101\108\111\099\105\100\097\100\101\032\100\097\032\114\111\116\097\032\100\101\032\098\097\u{fa}\115\032\040\115\116\117\100\115\047\115\041','\067\104\101\115\116\032\114\111\117\116\101\032\115\112\101\101\100\032\040\115\116\117\100\115\047\115\041'),30,53
)local bk=aM.label(aZ,'\084\101\120\116\066\111\120',tostring(bi),40,54)a1(bk.FocusLost,function()
local bl=tonumber(bk.Text)if bl and bl==bl and bl<math.huge then bi=math.clamp(
bl,50,1000)end bk.Text=tostring(bi)end)local bl=aM.button(aZ,aN(
'\073\110\105\099\105\097\114\032\114\111\116\097\032\100\101\032\098\097\u{fa}\115\032\099\097\114\114\101\103\097\100\111\115\032\047\032\067\111\114\101\115','\083\116\097\114\116\032\108\111\097\100\101\100\032\099\104\101\115\116\032\047\032\067\111\114\101\032\114\111\117\116\101'
),52)a1(bl.Activated,function()if aV then return end if aL.acquire and not aL.
acquire()then a0('\079\117\116\114\097\032\116\097\114\101\102\097\032\101\115\116\u{e1}\032\109\111\118\101\110\100\111\032\105\116\101\110\115\046\032\084\101\110\116\101\032\097\111\032\116\101\114\109\105\110\097\114\046',
'\065\110\111\116\104\101\114\032\116\097\115\107\032\105\115\032\109\111\118\105\110\103\032\105\116\101\109\115\046\032\082\101\116\114\121\032\119\104\101\110\032\105\116\032\102\105\110\105\115\104\101\115\046')return end aS+=1 local
bm=aS aV=true task.spawn(function()local bn local bo,bp=pcall(function()assert(
aO:GetAttribute('\073\110\068\117\110\103\101\111\110')~=true,'\076\101\097\118\101\032\116\104\101\032\068\117\110\103\101\111\110\032\102\105\114\115\116')assert(type(
fireproximityprompt)=='\102\117\110\099\116\105\111\110','\080\114\111\109\112\116\032\065\080\073\032\117\110\097\118\097\105\108\097\098\108\101')local bo,bp=aL.actor()
local br=bp.Position local bs=bp.CFrame.LookVector local bt=assert(a9(
'\068\117\110\103\101\111\110\068\111\111\114\083\116\097\116\101'))local bu={}local bv=0 local function bw(bx)local by=os.
clock()+(bp.Position-bx).Magnitude/bi+15 repeat assert(ba(bm)and aO:
GetAttribute('\073\110\068\117\110\103\101\111\110')~=true and not workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101'),
'\082\111\117\116\101\032\105\110\116\101\114\114\117\112\116\101\100')local bz,bA,bB=aL.actor()assert(not bB.SeatPart,
'\076\101\097\118\101\032\116\104\101\032\100\114\105\118\101\114\032\115\101\097\116\032\102\105\114\115\116')local bC=bx-bA.Position if bC.Magnitude<4 then
return end assert(os.clock()<by,'\077\111\118\101\109\101\110\116\032\116\105\109\101\100\032\111\117\116')bz:PivotTo(CFrame.new(bA.
Position+bC.Unit*math.min(bC.Magnitude,bi*0.05)))task.wait(0.05)until false end
local bx=setmetatable({},{__mode='\107'})local function by(bz)if bz:IsA(
'\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')then local bA=bz:GetFullName()if bA:find('\067\104\101\115\116\078\111\100\101',1,true)or
bA:find('\068\105\103\083\112\111\116',1,true)then bx[bz]=true end end end bn=workspace.
DescendantAdded:Connect(by)aT[#aT+1]=bn for bz,bA in ipairs(workspace:
GetDescendants())do by(bA)if bz%500==0 then task.wait()assert(ba(bm),'\083\116\111\112\112\101\100')
end end while ba(bm)and bv<500 do local bz,bA,bB=nil,nil,math.huge for bC in
pairs(bx)do if not bC.Parent then bx[bC]=nil continue end if bC:IsA(
'\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and bC.Enabled and not bu[bC]then local bD=bC:GetFullName()
local bE=bf(bC)local bF=bD:find('\067\104\101\115\116\078\111\100\101',1,true)or bD:find('\068\105\103\083\112\111\116',1,true)
if bF and bE and not bD:find('\067\117\116\083\099\101\110\101',1,true)and not bD:find('\068\117\110\103\101\111\110',1,true)
and not bt.GetRoot(bC)then local bG=bE.Position-br local bH=bG:Dot(bs)if bH>=-30
and bG.Magnitude<=bh and bH<bB then bz=bC bA=bE bB=bH end end end end if not bz
then break end bu[bz]=true bw(bA.Position+Vector3.new(0,3,0))if bz.Parent and bz
.Enabled and ba(bm)then fireproximityprompt(bz)bv+=1 a0('\082\111\116\097\032\100\101\032\098\097\u{fa}\115\058\032'..
bv..'\032\105\110\116\101\114\097\u{e7}\u{f5}\101\115\032\115\111\108\105\099\105\116\097\100\097\115\046','\067\104\101\115\116\032\114\111\117\116\101\058\032'..bv..
'\032\105\110\116\101\114\097\099\116\105\111\110\115\032\114\101\113\117\101\115\116\101\100\046')bb(bm,function()return not bz.Parent or not bz.
Enabled end,3)end end bn:Disconnect()assert(ba(bm),'\083\116\111\112\112\101\100')local bz=workspace:
FindFirstChild('\068\114\105\108\108')local bA=bz and(bz:FindFirstChild('\066\111\100\121')or bz.
PrimaryPart)assert(bA and bA:IsA('\066\097\115\101\080\097\114\116'),'\068\114\105\108\108\032\110\111\116\032\108\111\097\100\101\100\032\102\111\114\032\114\101\116\117\114\110')bw(bA
.Position+Vector3.new(0,bA.Size.Y*0.5+4,0))a0(
'\082\111\116\097\032\099\111\110\099\108\117\u{ed}\100\097\059\032\114\101\116\111\114\110\111\032\u{e0}\032\098\114\111\099\097\046\032\073\110\116\101\114\097\u{e7}\u{f5}\101\115\058\032'..bv,
'\082\111\117\116\101\032\099\111\109\112\108\101\116\101\059\032\114\101\116\117\114\110\101\100\032\116\111\032\100\114\105\108\108\046\032\073\110\116\101\114\097\099\116\105\111\110\115\058\032'..bv)end)if bn then bn:
Disconnect()end if aR and aS==bm then if aL.release then aL.release()end aV=
false if not bo then a0('\082\111\116\097\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(bp),'\082\111\117\116\101\032\115\116\111\112\112\101\100\058\032'..
tostring(bp))end end end)end)task.spawn(function()while aR do if aU and not aV
and(not aL.acquire or aL.acquire())then local bm=aS local bn,bo=pcall(be,bm)if
aS==bm then if aL.release then aL.release()end if not bn then a7()a0(
'\086\101\110\100\097\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(bo),'\083\101\108\108\105\110\103\032\115\116\111\112\112\101\100\058\032'..tostring(bo))end end
end task.wait(aU and not aV and 0.05 or 0.5)end end)return{stop=a7,cleanup=
function()aR=false a7()for bm,bn in ipairs(aT)do bn:Disconnect()end end}end
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
'\071\097\109\101\032\114\101\102\117\115\101\100\032\116\111\032\109\111\118\101\032\097\110\032\105\116\101\109\046\032\083\116\097\103\105\110\103\032\115\116\111\112\112\101\100\046'))local bp,br=pcall(function()
assert(a_.Parent and bl.item.Parent,'\083\116\111\099\107\032\117\110\108\111\097\100\101\100')bm:PivotTo(a_.CFrame*CFrame
.new(a_.Size.X*0.5+4,1,0))local bp=a_.CFrame*CFrame.new(bh[bk])local br=bl.cf:
ToObjectSpace(bl.item:GetPivot())bl.item:PivotTo(bp*br)task.wait(0.3)end)pcall(
function()aN.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)assert(bp,br)assert(aS and
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
false a2()for a4,a5 in ipairs(aT)do a5:Disconnect()end end}end local aN={}
function aN.role(aO,aP)if aP~=9796898051 then return nil end return({[
101906032112547]='\108\111\098\098\121',[74507545904779]='\114\117\110'})[aO]end function aN.names(aO)
local aP={}for aQ in tostring(aO):gmatch('\091\094\044\093\043')do aQ=aQ:match('\094\037\115\042\040\046\045\041\037\115\042\036')
if aQ~=''then aP[#aP+1]=aQ end end return aP end function aN.offer(aO,aP,aQ,aR)
if type(aP)~='\110\117\109\098\101\114'or aP~=aP then return nil end for aS,aT in ipairs(aR)do for
aU,aV in ipairs(type(aO)=='\116\097\098\108\101'and aO or{})do if aV.UpgradeName==aT and aV.
Type=='\067\111\105\110\115'and type(aV.Cost)=='\110\117\109\098\101\114'and aV.Cost>=0 and aV.Cost<math.huge and
aP-aV.Cost>=aQ then return aV end end end end function aN.selection(aO,aP,aQ)
local aR={}local aS=math.clamp(math.floor(tonumber(aP)or 0),0,100)for aT,aU in
ipairs(aQ)do for aV,aW in ipairs(type(aO)=='\116\097\098\108\101'and aO or{})do if aW.Name==aU
and aW.Id~=nil and not aR[aW.Id]then local aX=math.min(aS,math.max(0,math.floor(
tonumber(aW.Count)or 0)))if aX>0 then aR[aW.Id]=aX aS-=aX end end end end return
aR end function aN.medalOffer(aO,aP,aQ,aR)if type(aP)~='\116\097\098\108\101'or type(aP.Medals)
~='\110\117\109\098\101\114'or aP.Medals~=aP.Medals or type(aP.Available)~='\116\097\098\108\101'then return nil
end for aS,aT in ipairs(aR)do local aU=aO[aT]if aU and type(aU.Cost)=='\110\117\109\098\101\114'
and aU.Cost>=0 and aU.Cost<math.huge and aP.Available[aT]and aP.Medals-aU.Cost>=
aQ then return aT end end end function aN.skipRequest(aO)if not aO or not aO.
CurrentCutScene or aO.AbortingCutScene then return nil end local aP=aO.
CurrentCutSceneContext if aP and aP.DisableSkip then return nil end return{name=
aO.CurrentCutScene,id=aP and aP.RuntimeId,private=aP and aP.Private==true and aP
.RuntimeId~=nil,session=aO.CurrentCutSceneSessionId}end local aO=function(aO)
local aP=assert(aN.role(game.PlaceId,game.GameId),'\085\110\115\117\112\112\111\114\116\101\100\032\069\097\114\116\104\032\067\111\114\101\032\112\108\097\099\101'
)local aQ,aR=aO.ui,aO.T local aS=game:GetService('\080\108\097\121\101\114\115').LocalPlayer local aT
=game:GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local aU=game:GetService('\072\116\116\112\083\101\114\118\105\099\101')
local aV=true local aW={}local aX={swing=false,upgrades=false,craft=false,skip=
false,medals=false}local aY={upgrades=0,craft=0,medals=0}local aZ={}local a_={}
local a0,a1,a2,a3 local a4 local function a5(a6)if a4 then return false end a4=
a6 return true end local function a6(a7)if a4==a7 then a4=nil end end local a7={
reserve=1000,limit=10,priority=
"\084\101\097\109\072\101\097\108\116\104\044\076\105\102\101\083\116\101\097\108\044\068\114\105\108\108\080\111\119\101\114\044\082\080\077\079\118\101\114\099\108\111\099\107\044\083\097\099\107\083\116\111\114\097\103\101\044\068\114\105\118\101\083\112\101\101\100",gear=
'\080\105\099\107\097\120\101\095\071\111\108\100',craftLimit=3,medalReserve=100,medalLimit=10,medalPriority=
'\084\117\114\114\101\116\068\097\109\097\103\101\044\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111'}local a8=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095'..aS.UserId..'\095'..aP..'\046\106\115\111\110'if type(readfile)=='\102\117\110\099\116\105\111\110'
then pcall(function()local a9=aU:JSONDecode(readfile(a8))for ba,bb in pairs(a7)
do if type(a9[ba])==type(bb)then a7[ba]=a9[ba]end end end)end a7.reserve=math.
clamp(tonumber(a7.reserve)or 1000,0,1e9)a7.limit=math.clamp(tonumber(a7.limit)or
10,1,100)a7.medalReserve=math.clamp(tonumber(a7.medalReserve)or 100,0,1e9)a7.
medalLimit=math.clamp(tonumber(a7.medalLimit)or 10,1,100)a7.craftLimit=math.
clamp(tonumber(a7.craftLimit)or 3,1,100)local function a9()if type(writefile)==
'\102\117\110\099\116\105\111\110'then pcall(writefile,a8,aU:JSONEncode(a7))end end local function ba(bb
,bc)aW[#aW+1]=bb:Connect(bc)end local bb=aO.section('\070\097\114\109')local bc=aQ.label(bb,
'\084\101\120\116\076\097\098\101\108',aR('\067\097\114\114\101\103\097\110\100\111\032\101\115\116\097\100\111\u{2026}','\076\111\097\100\105\110\103\032\115\116\097\116\101\u{2026}'),76,1)local
bd=aQ.label(bb,'\084\101\120\116\076\097\098\101\108','',72,2)local function be(bf,bg)if aV then bd.Text=
aR(bf,bg or bf)end end local function bf()for bg in pairs(aX)do aX[bg]=false if
a_[bg]then a_[bg](false)end end if a0 then a0.stop()end if a1 then a1.stop()end
if a2 then a2.stop()end if a3 then a3.stop()end end aO.attach(function()aV=false
bf()if a0 then a0.cleanup()end if a1 then a1.cleanup()end if a2 then a2.cleanup(
)end if a3 then a3.cleanup()end for bg,bh in ipairs(aW)do bh:Disconnect()end end
)aO.quick(bf)local function bg(bh,bi,bj,bk,bl)local bm=aQ.button(bh,aR(bi,bj),bk
)ba(bm.Activated,function()if aZ[bm]then return end aZ[bm]=true task.spawn(
function()local bn,bo=pcall(bl)aZ[bm]=nil if not bn then be(aR('\070\097\108\104\097\058\032',
'\070\097\105\108\101\100\058\032')..tostring(bo))end end)end)return bm end local function bh(bi,bj,bk,
bl,bm,bn)aQ.label(bi,'\084\101\120\116\076\097\098\101\108',aR(bk,bl),32,bm)local bo=aQ.label(bi,'\084\101\120\116\066\111\120',
tostring(a7[bj]),42,bm+1)ba(bo.FocusLost,function()if bn then local bp=tonumber(
bo.Text)if bp and bp==bp and bp<math.huge then a7[bj]=math.clamp(math.floor(bp),
bn[1],bn[2])end else a7[bj]=bo.Text:sub(1,600)end bo.Text=tostring(a7[bj])a9()
end)end local function bi(bj,bk,bl,bm,bn)local bo,bp=aQ.checkbox(bj,aR(bl,bm),bn
)a_[bk]=bp ba(bo.Activated,function()aX[bk]=not aX[bk]bp(aX[bk])end)end local bj
local function bk(bl,bm)if not bj then local bn=aT:FindFirstChild('\080\097\099\107\097\103\101\115')
local bo=bn and bn:FindFirstChild('\075\110\105\116')if not bo then return nil end bj=
require(bo)end local bn,bo=pcall(bl=='\099\111\110\116\114\111\108\108\101\114'and bj.GetController or bj.
GetService,bm)return bn and bo or nil end local function bl(bm)return bk(
'\099\111\110\116\114\111\108\108\101\114',bm)end local function bm(bn)return assert(bk('\115\101\114\118\105\099\101',bn),bn..
'\032\117\110\097\118\097\105\108\097\098\108\101')end local function bn(bo)if type(bo)=='\116\097\098\108\101'and type(bo.await)==
'\102\117\110\099\116\105\111\110'then local bp=table.pack(bo:timeout(8):await())if not bp[1]then error(
tostring(bp[2]))end return table.unpack(bp,2,bp.n)end return bo end local
function bo()local bp=aS.Character local br=bp and bp:FindFirstChildOfClass(
'\072\117\109\097\110\111\105\100')local bs=bp and bp:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if bs and br and
br.Health>0 then return bp,bs,br end end local function bp(br)local bs,bt,bu=bo(
)if not bs then return false end local bv=br:lower()local function bw(bx)return
type(bx)=='\115\116\114\105\110\103'and(bx:lower()==bv or bv=='\109\101\100\107\105\116'and bx:lower():find('\109\101\100\107\105\116'
,1,true)~=nil)end local bx=aS:FindFirstChild('\066\097\099\107\112\097\099\107')for by,bz in ipairs(bx
and bx:GetChildren()or{})do if bz:IsA('\084\111\111\108')and bw(bz.Name)then bu:EquipTool(bz
)return true end end local by=bl('\072\111\116\098\097\114\067\111\110\116\114\111\108\108\101\114')local bz=by and by.
BackpackUI if bz and type(by.EquipToolAtIndex)=='\102\117\110\099\116\105\111\110'then for bA,bB in
ipairs(bz:GetChildren())do if bB:IsA('\071\117\105\079\098\106\101\099\116')and bB.LayoutOrder>=1 and bB.
LayoutOrder<=10 then local bC=bw(bB.Name)or bw(bB:GetAttribute('\084\111\111\108\078\097\109\101'))for
bD,bE in ipairs(bB:GetDescendants())do if bE:IsA('\084\101\120\116\076\097\098\101\108')and bw(bE.Text)then
bC=true end end if bC then by:EquipToolAtIndex(bB.LayoutOrder)return true end
end end end return false end local function br()if aP=='\108\111\098\098\121'then local bs=
workspace:FindFirstChild('\076\111\098\098\121')local bt=bs and bs:FindFirstChild(
'\079\117\116\101\114\083\116\114\117\099\116\117\114\101\115')return bt and bt:FindFirstChild('\067\104\117\114\099\104')end return workspace:
FindFirstChild('\067\104\117\114\099\104')end local function bs()local bt=br()local bu=bt and bt:
FindFirstChild('\083\116\114\117\099\116\117\114\101')local bv=bu and bu:FindFirstChild('\082\105\110\103')local bw=bv
and bv:FindFirstChild('\083\097\118\101\071\101\097\114')return bw and bw:IsA('\066\097\115\101\080\097\114\116')and bw or nil
end local bt,bu local function bv()local bw=bs()if bw then bt=bw.CFrame bu=
workspace:GetAttribute('\073\110\102\105\110\105\116\101\068\101\112\116\104\079\102\102\115\101\116\077\101\116\101\114\115')end end bv()local bw,bx bg(bb
,'\073\114\032\097\116\u{e9}\032\097\032\105\103\114\101\106\097\032\099\097\114\114\101\103\097\100\097','\071\111\032\116\111\032\108\111\097\100\101\100\032\099\104\117\114\099\104',10,function()local by,bz
=bo()assert(by,aR('\080\101\114\115\111\110\097\103\101\109\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\046','\067\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101\046'))bv()
local bA=bs()if not bA and bt and bu==workspace:GetAttribute(
'\073\110\102\105\110\105\116\101\068\101\112\116\104\079\102\102\115\101\116\077\101\116\101\114\115')then local bB=bz.CFrame by:PivotTo(bt*CFrame.new(0,3
,5))pcall(function()aS:RequestStreamAroundAsync(bt.Position,5)end)bA=bs()if not
bA then by:PivotTo(bB)end end assert(bA,aR(
'\073\103\114\101\106\097\032\097\105\110\100\097\032\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097\046\032\065\032\112\111\115\105\u{e7}\u{e3}\111\032\108\101\109\098\114\097\100\097\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\032\117\109\032\097\108\116\097\114\032\100\105\115\112\111\110\u{ed}\118\101\108\046'
,
"\067\104\117\114\099\104\032\110\111\116\032\108\111\097\100\101\100\046\032\065\032\114\101\109\101\109\098\101\114\101\100\032\112\111\115\105\116\105\111\110\032\100\111\101\115\032\110\111\116\032\099\111\110\102\105\114\109\032\097\110\032\097\118\097\105\108\097\098\108\101\032\097\108\116\097\114\046"
))bw=bz.CFrame bx=by by:PivotTo(bA.CFrame*CFrame.new(0,3,5))be(
'\068\101\115\108\111\099\097\109\101\110\116\111\032\115\111\108\105\099\105\116\097\100\111\046\032\067\111\110\102\105\114\097\032\115\117\097\032\112\111\115\105\u{e7}\u{e3}\111\046',
'\077\111\118\101\109\101\110\116\032\114\101\113\117\101\115\116\101\100\046\032\067\104\101\099\107\032\121\111\117\114\032\112\111\115\105\116\105\111\110\046')end)bg(bb,
'\086\111\108\116\097\114\032\u{e0}\032\112\111\115\105\u{e7}\u{e3}\111\032\097\110\116\101\114\105\111\114','\082\101\116\117\114\110\032\116\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110',11,
function()local by=bo()assert(by and by==bx and bw,
'\078\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110\032\102\111\114\032\116\104\105\115\032\099\104\097\114\097\099\116\101\114')by:PivotTo(bw)end)bg(bb,
'\080\097\114\097\114\032\116\111\100\097\115\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115','\083\116\111\112\032\097\108\108\032\097\117\116\111\109\097\116\105\111\110',12,function()bf()be(
'\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\114\097\100\097\115\046','\065\117\116\111\109\097\116\105\111\110\032\115\116\111\112\112\101\100\046')end)if aP=='\108\111\098\098\121'then aQ.
label(bb,'\084\101\120\116\076\097\098\101\108',aR(
'\076\111\098\098\121\058\032\101\113\117\105\112\097\109\101\110\116\111\115\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\100\101\032\101\120\112\101\100\105\u{e7}\u{e3}\111\032\097\112\097\114\101\099\101\109\032\110\097\032\112\097\114\116\105\100\097\046'
,"\076\111\098\098\121\058\032\101\113\117\105\112\109\101\110\116\046\032\069\120\112\101\100\105\116\105\111\110\032\102\101\097\116\117\114\101\115\032\097\112\112\101\097\114\032\105\110\032\116\104\101\032\103\097\109\101\032\112\108\097\099\101\046"),54,15)bh(
bb,'\103\101\097\114','\078\111\109\101\032\101\120\097\116\111\032\100\111\032\101\113\117\105\112\097\109\101\110\116\111\032\100\111\032\108\111\098\098\121','\069\120\097\099\116\032\108\111\098\098\121\032\101\113\117\105\112\109\101\110\116\032\110\097\109\101',20)
bg(bb,'\069\113\117\105\112\097\114\032\111\032\105\116\101\109\032\105\110\102\111\114\109\097\100\111','\069\113\117\105\112\032\101\110\116\101\114\101\100\032\105\116\101\109',23,function()local by=aN.
names(a7.gear)[1]assert(by,'\069\110\116\101\114\032\097\110\032\105\116\101\109\032\110\097\109\101')local bz=bn(bm(
'\076\111\098\098\121\066\097\099\107\112\097\099\107\083\101\114\118\105\099\101'):SetEquipped(by))be(bz and aR('\069\113\117\105\112\097\109\101\110\116\111\032\097\099\101\105\116\111\046',
'\069\113\117\105\112\109\101\110\116\032\097\099\099\101\112\116\101\100\046')or aR('\079\032\106\111\103\111\032\110\u{e3}\111\032\097\099\101\105\116\111\117\032\111\032\105\116\101\109\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\097\099\099\101\112\116\032\116\104\105\115\032\105\116\101\109\046'))end)else bi(bb,'\115\119\105\110\103',
'\065\117\116\111\032\112\105\099\097\114\101\116\097\032\101\113\117\105\112\097\100\097\032\040\097\108\099\097\110\099\101\032\110\111\114\109\097\108\041','\065\117\116\111\032\101\113\117\105\112\112\101\100\032\112\105\099\107\097\120\101\032\040\110\111\114\109\097\108\032\114\097\110\103\101\041'
,20)aQ.label(bb,'\084\101\120\116\076\097\098\101\108',aR(
"\069\113\117\105\112\101\032\097\032\112\105\099\097\114\101\116\097\032\101\032\097\112\114\111\120\105\109\101\045\115\101\032\100\111\032\097\108\118\111\046\032\082\101\115\112\101\105\116\097\032\111\032\099\111\111\108\100\111\119\110\032\110\097\116\105\118\111\046",
"\069\113\117\105\112\032\121\111\117\114\032\112\105\099\107\097\120\101\032\097\110\100\032\097\112\112\114\111\097\099\104\032\116\104\101\032\116\097\114\103\101\116\046\032\085\115\101\115\032\116\104\101\032\110\097\116\105\118\101\032\099\111\111\108\100\111\119\110\046"),48,21
)local by=aO.section('\077\101\108\104\111\114\105\097\115')aQ.label(by,'\084\101\120\116\076\097\098\101\108',aR(
'\079\114\103\097\110\105\122\101\032\097\032\108\105\115\116\097\032\099\111\109\032\u{2191}\047\u{2193}\032\097\098\097\105\120\111\046\032\068\101\115\109\097\114\113\117\101\032\111\032\113\117\101\032\110\u{e3}\111\032\100\101\115\101\106\097\032\099\111\109\112\114\097\114\046'
,
'\082\101\111\114\100\101\114\032\119\105\116\104\032\u{2191}\047\u{2193}\032\098\101\108\111\119\046\032\085\110\099\104\101\099\107\032\117\112\103\114\097\100\101\115\032\121\111\117\032\100\111\032\110\111\116\032\119\097\110\116\032\116\111\032\098\117\121\046'
),50,1)bh(by,'\114\101\115\101\114\118\101','\082\101\115\101\114\118\097\032\109\u{ed}\110\105\109\097\032\100\101\032\109\111\101\100\097\115','\077\105\110\105\109\117\109\032\099\111\105\110\032\114\101\115\101\114\118\101',4,
{0,1e9})bh(by,'\108\105\109\105\116','\076\105\109\105\116\101\032\100\101\032\116\101\110\116\097\116\105\118\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\065\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',7,{1,100})bi(by,'\117\112\103\114\097\100\101\115',
'\065\117\116\111\032\109\101\108\104\111\114\105\097\115\032\099\111\109\032\109\111\101\100\097\115','\065\117\116\111\032\099\111\105\110\032\117\112\103\114\097\100\101\115',10)bh(by,'\099\114\097\102\116\076\105\109\105\116',
'\076\105\109\105\116\101\032\100\101\032\102\097\098\114\105\099\097\u{e7}\u{e3}\111\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\067\114\097\102\116\032\097\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',12,{1,100})bi(by,'\099\114\097\102\116',
'\065\117\116\111\032\102\097\098\114\105\099\097\114\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\032\110\111\032\106\111\103\111','\065\117\116\111\032\099\114\097\102\116\032\105\116\101\109\032\115\101\108\101\099\116\101\100\032\105\110\032\103\097\109\101',15)
aQ.label(by,'\084\101\120\116\076\097\098\101\108',aR(
'\067\114\097\102\116\105\110\103\058\032\097\098\114\097\032\097\032\098\097\110\099\097\100\097\032\101\032\101\115\099\111\108\104\097\032\111\032\105\116\101\109\032\110\111\032\106\111\103\111\046\032\082\111\098\117\120\032\102\105\099\097\032\101\120\099\108\117\u{ed}\100\111\046\032\065\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\099\111\109\101\u{e7}\097\109\032\100\101\115\108\105\103\097\100\097\115\046'
,
"\067\114\097\102\116\105\110\103\058\032\111\112\101\110\032\116\104\101\032\098\101\110\099\104\032\097\110\100\032\115\101\108\101\099\116\032\097\110\032\105\116\101\109\032\105\110\032\103\097\109\101\046\032\082\111\098\117\120\032\105\115\032\101\120\099\108\117\100\101\100\046\032\065\117\116\111\109\097\116\105\111\110\032\115\116\097\114\116\115\032\100\105\115\097\098\108\101\100\046"
),72,16)local bz=aO.section('\073\103\114\101\106\097')local bA=aQ.label(bz,'\084\101\120\116\076\097\098\101\108',aR(
'\067\097\114\114\101\103\117\101\032\115\101\117\032\105\110\118\101\110\116\u{e1}\114\105\111\044\032\109\097\114\113\117\101\032\111\115\032\105\116\101\110\115\032\101\032\099\111\110\102\105\114\109\101\046\032\079\032\108\105\109\105\116\101\032\118\101\109\032\100\111\032\106\111\103\111\059\032\115\097\108\118\097\114\032\114\101\116\111\114\110\097\032\097\111\032\108\111\098\098\121\046'
,
"\076\111\097\100\032\121\111\117\114\032\105\110\118\101\110\116\111\114\121\044\032\115\101\108\101\099\116\032\105\116\101\109\115\032\097\110\100\032\099\111\110\102\105\114\109\046\032\084\104\101\032\103\097\109\101\032\115\117\112\112\108\105\101\115\032\116\104\101\032\108\105\109\105\116\059\032\115\097\118\105\110\103\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\108\111\098\098\121\046"
),80,1)local bB,bC={},{}local bD local bE=false local function bF()for bG,bH in
ipairs(bC)do bH:Disconnect()end table.clear(bC)for bG,bH in ipairs(bB)do bH:
Destroy()end table.clear(bB)end aO.attach(function()aV=false bf()bF()if a0 then
a0.cleanup()end if a1 then a1.cleanup()end if a2 then a2.cleanup()end if a3 then
a3.cleanup()end for bG,bH in ipairs(aW)do bH:Disconnect()end end)bg(bz,
'\067\097\114\114\101\103\097\114\032\105\110\118\101\110\116\u{e1}\114\105\111\032\101\032\101\115\099\111\108\104\101\114\032\105\116\101\110\115','\076\111\097\100\032\105\110\118\101\110\116\111\114\121\032\097\110\100\032\115\101\108\101\099\116\032\105\116\101\109\115',3,
function()assert(not bE,'\083\097\118\101\032\105\110\032\112\114\111\103\114\101\115\115')local bG=bn(bm('\080\108\097\121\101\114\083\101\114\118\105\099\101'):
GetSaveGearChoices())assert(aV and bo()and type(bG)=='\116\097\098\108\101'and type(bG.Items)==
'\116\097\098\108\101','\073\110\118\101\110\116\111\114\121\032\117\110\097\118\097\105\108\097\098\108\101')bF()bD={selection={},limit=math.max(0,math.
floor(tonumber(bG.Limit)or 0))}local bH=bD local bI={}local bJ=bl(
'\083\097\118\101\071\101\097\114\067\111\110\116\114\111\108\108\101\114')local function bK()local bL=0 for bM,bN in pairs(bH.
selection)do bL+=bN end bA.Text=string.format(aR(
'\083\101\108\101\099\105\111\110\097\100\111\115\058\032\037\100\047\037\100\046\032\067\111\110\102\105\114\109\097\114\032\108\101\118\097\032\u{e0}\032\105\103\114\101\106\097\032\099\097\114\114\101\103\097\100\097\032\101\032\115\097\108\118\097\046',
"\083\101\108\101\099\116\101\100\058\032\037\100\047\037\100\046\032\067\111\110\102\105\114\109\032\116\114\097\118\101\108\115\032\116\111\032\116\104\101\032\108\111\097\100\101\100\032\099\104\117\114\099\104\032\097\110\100\032\115\097\118\101\115\046"),bL,bH.
limit)for bM,bN in ipairs(bI)do bN()end end for bL,bM in ipairs(bG.Items)do if
bM.Id~=nil and type(bM.Count)=='\110\117\109\098\101\114'and bM.Count>0 then local bN=Instance.
new('\070\114\097\109\101')bN.Size=UDim2.new(1,-8,0,68)bN.BackgroundColor3=Color3.fromRGB(23,31
,44)bN.LayoutOrder=100+bL bN.Parent=bz bB[#bB+1]=bN local bO=Instance.new(
'\085\073\083\116\114\111\107\101')bO.Color=Color3.fromRGB(77,110,140)bO.Transparency=0.25 bO.Parent=bN
local bP=Instance.new('\085\073\067\111\114\110\101\114')bP.CornerRadius=UDim.new(0,10)bP.Parent=bN
local bQ,bR if bJ and type(bJ.GetItemDisplay)=='\102\117\110\099\116\105\111\110'then bQ,bR=bJ:
GetItemDisplay(bM.Name)end local bS=Instance.new('\073\109\097\103\101\076\097\098\101\108')bS.Size=UDim2.
fromOffset(40,40)bS.Position=UDim2.fromOffset(6,12)bS.BackgroundTransparency=1
bS.Image=bQ or''bS.Parent=bN local bT,bU=aQ.checkbox(bN,'',1)bT.Size=UDim2.new(1
,-150,0,58)bT.Position=UDim2.fromOffset(50,4)local bV=bT:FindFirstChildWhichIsA(
'\084\101\120\116\076\097\098\101\108')bI[#bI+1]=function()local bW=bH.selection[bM.Id]or 0 bU(bW>0)if bV
then bV.Text=tostring(bR or bM.Name)..'\032\u{b7}\032'..bW..'\047'..bM.Count end end
local function bW(bX,bY)if bE or bD~=bH or not aV then return end local bZ=0 for
b_,b0 in pairs(bH.selection)do bZ+=b0 end local b_=bH.selection[bM.Id]or 0 if bY
then bH.selection[bM.Id]=0 elseif bX<0 or bZ<bH.limit then bH.selection[bM.Id]=
math.clamp(b_+bX,0,bM.Count)end bK()end bC[#bC+1]=bT.Activated:Connect(function(
)bW(1,(bH.selection[bM.Id]or 0)>0)end)for bX,bY in ipairs({-1,1})do local bZ=aQ.
button(bN,bY<0 and'\u{2212}'or'\043',2+bX)bZ.Size=UDim2.fromOffset(40,42)bZ.
Position=UDim2.new(1,-94+(bX-1)*46,0,12)bC[#bC+1]=bZ.Activated:Connect(function(
)bW(bY)end)end end end bK()end)bg(bz,'\073\114\032\u{e0}\032\105\103\114\101\106\097\032\099\097\114\114\101\103\097\100\097',
'\071\111\032\116\111\032\108\111\097\100\101\100\032\099\104\117\114\099\104',4,function()assert(not bE and a5('\099\104\117\114\099\104'),
'\065\110\111\116\104\101\114\032\109\111\118\101\109\101\110\116\032\116\097\115\107\032\105\115\032\097\099\116\105\118\101')local bG,bH=pcall(function()local bG=bo()local
bH=bs()assert(bG and bH,aR('\073\103\114\101\106\097\032\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097\046','\067\104\117\114\099\104\032\110\111\116\032\108\111\097\100\101\100\046'))bG
:PivotTo(bH.CFrame*CFrame.new(0,3,5))end)a6('\099\104\117\114\099\104')assert(bG,bH)end)bg(bz,
'\067\079\078\070\073\082\077\065\082\032\u{b7}\032\105\114\032\u{e0}\032\105\103\114\101\106\097\032\101\032\115\097\108\118\097\114\032\115\101\108\101\u{e7}\u{e3}\111',
'\067\079\078\070\073\082\077\032\u{b7}\032\103\111\032\116\111\032\099\104\117\114\099\104\032\097\110\100\032\115\097\118\101\032\115\101\108\101\099\116\105\111\110',5,function()assert(bD and not
bE,aR('\067\097\114\114\101\103\117\101\032\101\032\115\101\108\101\099\105\111\110\101\032\111\115\032\105\116\101\110\115\032\112\114\105\109\101\105\114\111\046','\076\111\097\100\032\097\110\100\032\115\101\108\101\099\116\032\103\101\097\114\032\102\105\114\115\116\046'))
local bG={}local bH=0 for bI,bJ in pairs(bD.selection)do if bJ>0 then bG[bI]=bJ
bH+=bJ end end assert(bH>0 and bH<=bD.limit,'\073\110\118\097\108\105\100\032\115\101\108\101\099\116\105\111\110')assert(a5(
'\099\104\117\114\099\104'),'\065\110\111\116\104\101\114\032\109\111\118\101\109\101\110\116\032\116\097\115\107\032\105\115\032\097\099\116\105\118\101')bE=true local bI,bJ=pcall(function()
local bI=bo()local bJ=bs()assert(bI and bJ,aR('\073\103\114\101\106\097\032\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097\046',
'\067\104\117\114\099\104\032\110\111\116\032\108\111\097\100\101\100\046'))bI:PivotTo(bJ.CFrame*CFrame.new(0,3,5))task.wait(0.3)local
bK=bn(bm('\080\108\097\121\101\114\083\101\114\118\105\099\101'):GetSaveGearChoices())assert(aV and type(bK)=='\116\097\098\108\101'
and bH<=(tonumber(bK.Limit)or 0),'\073\110\118\101\110\116\111\114\121\032\099\104\097\110\103\101\100')local bL={}for bM,bN in
ipairs(bK.Items or{})do bL[bN.Id]=bN.Count end for bM,bN in pairs(bG)do assert(
type(bL[bM])=='\110\117\109\098\101\114'and bN<=bL[bM],aR(
'\073\110\118\101\110\116\u{e1}\114\105\111\032\109\117\100\111\117\046\032\082\101\099\097\114\114\101\103\117\101\032\097\032\115\101\108\101\u{e7}\u{e3}\111\046',
'\073\110\118\101\110\116\111\114\121\032\099\104\097\110\103\101\100\046\032\082\101\108\111\097\100\032\115\101\108\101\099\116\105\111\110\046'))end local bM,bN=bo()assert(bN and bJ.
Parent and(bN.Position-bJ.Position).Magnitude<=20,
'\065\112\112\114\111\097\099\104\032\116\104\101\032\097\108\116\097\114\032\119\104\105\108\101\032\097\108\105\118\101')local bO=bn(bm('\080\108\097\121\101\114\083\101\114\118\105\099\101'):SaveGear(bG))
assert(bO==true,aR('\079\032\106\111\103\111\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\111\032\115\097\108\118\097\109\101\110\116\111\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\115\097\118\105\110\103\046'))bD=nil bf()bA.Text=aR(
'\083\097\108\118\097\109\101\110\116\111\032\097\099\101\105\116\111\032\112\101\108\111\032\106\111\103\111\046\032\065\103\117\097\114\100\097\110\100\111\032\114\101\116\111\114\110\111\032\097\111\032\108\111\098\098\121\046',
'\083\097\118\101\032\097\099\099\101\112\116\101\100\032\098\121\032\116\104\101\032\103\097\109\101\046\032\087\097\105\116\105\110\103\032\102\111\114\032\114\101\116\117\114\110\032\116\111\032\108\111\098\098\121\046')end)bE=false a6(
'\099\104\117\114\099\104')assert(bI,bJ)end)end if aP=='\114\117\110'and aH then a0=aH(aO,{actor=bo,ctrl=bl
,equip=bp,say=be,movementBusy=function()return a4~=nil end,priority=a7.priority,
setPriority=function(by)a7.priority=by a9()end})end if aP=='\114\117\110'and aJ then a1=
aJ(aO,{actor=bo,ctrl=bl,equip=bp,service=bm,await=bn,acquire=function()return
a5('\116\114\097\110\115\112\111\114\116')end,release=function()a6('\116\114\097\110\115\112\111\114\116')end})end if aP=='\114\117\110'and aL
then a2=aL(aO,{actor=bo,service=bm,await=bn,acquire=function()return a5('\115\104\111\112')
end,release=function()a6('\115\104\111\112')end})end if aP=='\114\117\110'and aM then a3=aM(aO,{ctrl=
bl,service=bm,await=bn})end local by local bz if aP=='\114\117\110'then bi(bb,'\115\107\105\112',
'\065\117\116\111\032\118\111\116\097\114\032\112\097\114\097\032\112\117\108\097\114\032\099\117\116\115\099\101\110\101\115','\065\117\116\111\032\118\111\116\101\032\116\111\032\115\107\105\112\032\099\117\116\115\099\101\110\101\115',24)aQ.label(bb,
'\084\101\120\116\076\097\098\101\108',aR(
'\079\032\112\114\111\103\114\101\115\115\111\032\100\101\112\101\110\100\101\032\100\097\032\098\114\111\099\097\032\101\032\100\097\115\032\112\097\114\101\100\101\115\046\032\084\101\108\101\112\111\114\116\101\032\101\032\118\111\111\032\110\u{e3}\111\032\099\111\110\116\097\109\032\113\117\105\108\u{f4}\109\101\116\114\111\115\046'
,
"\080\114\111\103\114\101\115\115\032\100\101\112\101\110\100\115\032\111\110\032\116\104\101\032\100\114\105\108\108\032\097\110\100\032\119\097\108\108\115\046\032\084\101\108\101\112\111\114\116\105\110\103\032\097\110\100\032\102\108\121\105\110\103\032\100\111\032\110\111\116\032\099\111\117\110\116\032\107\105\108\111\109\101\116\101\114\115\046"
),58,25)bg(bb,'\067\111\110\115\117\108\116\097\114\032\082\080\032\097\116\117\097\108\032\100\097\032\112\097\114\116\105\100\097','\067\104\101\099\107\032\099\117\114\114\101\110\116\032\114\117\110\032\082\080',27,function
()assert(aS:GetAttribute('\082\097\110\107\101\100\082\117\110\065\099\116\105\118\101')==true,aR(
'\069\115\116\097\032\112\097\114\116\105\100\097\032\110\u{e3}\111\032\u{e9}\032\114\097\110\113\117\101\097\100\097\046','\084\104\105\115\032\114\117\110\032\105\115\032\110\111\116\032\114\097\110\107\101\100\046'))local bA=
bn(bm('\082\097\110\107\101\100\083\101\114\118\105\099\101'):GetRankChange())assert(type(bA)=='\116\097\098\108\101'and type(bA.
DeltaRP)=='\110\117\109\098\101\114','\082\080\032\117\110\097\118\097\105\108\097\098\108\101')be(string.format(aR(
'\082\080\032\112\114\111\106\101\116\097\100\111\032\112\101\108\111\032\106\111\103\111\058\032\037\043\100\046\032\078\u{e3}\111\032\115\097\108\118\097\032\110\101\109\032\115\097\105\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046',
"\071\097\109\101\045\112\114\111\106\101\099\116\101\100\032\082\080\058\032\037\043\100\046\032\068\111\101\115\032\110\111\116\032\097\117\116\111\109\097\116\105\099\097\108\108\121\032\115\097\118\101\032\111\114\032\101\120\105\116\046"),bA.DeltaRP))
end)local bA=aO.section('\077\101\108\104\111\114\105\097\115')bh(bA,'\109\101\100\097\108\080\114\105\111\114\105\116\121',
'\077\101\100\097\108\104\097\115\058\032\112\114\105\111\114\105\100\097\100\101\115\032\040\073\068\115\032\115\101\112\097\114\097\100\111\115\032\112\111\114\032\118\u{ed}\114\103\117\108\097\041',
'\077\101\100\097\108\115\058\032\112\114\105\111\114\105\116\105\101\115\032\040\099\111\109\109\097\045\115\101\112\097\114\097\116\101\100\032\073\068\115\041',80)bh(bA,'\109\101\100\097\108\082\101\115\101\114\118\101',
'\082\101\115\101\114\118\097\032\100\101\032\109\101\100\097\108\104\097\115','\077\101\100\097\108\032\114\101\115\101\114\118\101',83,{0,1e9})bh(bA,'\109\101\100\097\108\076\105\109\105\116',
'\076\105\109\105\116\101\032\100\101\032\099\111\109\112\114\097\115\032\100\101\032\109\101\100\097\108\104\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\077\101\100\097\108\032\112\117\114\099\104\097\115\101\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',86,{1,100})bi(bA,'\109\101\100\097\108\115',
'\065\117\116\111\032\109\101\108\104\111\114\105\097\115\032\100\101\032\076\097\114\114\121\032\099\111\109\032\109\101\100\097\108\104\097\115','\065\117\116\111\032\076\097\114\114\121\032\109\101\100\097\108\032\117\112\103\114\097\100\101\115',89)aQ.label(
bA,'\084\101\120\116\076\097\098\101\108',aR(
'\065\098\114\097\032\076\097\114\114\121\032\112\101\114\116\111\032\100\097\032\101\115\116\097\u{e7}\u{e3}\111\046\032\073\068\115\058\032\084\117\114\114\101\116\068\097\109\097\103\101\044\032\070\108\097\109\101\068\117\114\097\116\105\111\110\044\032\070\114\111\115\116\068\117\114\097\116\105\111\110\044\032\070\108\097\109\101\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\070\114\111\115\116\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111\046\032\083\101\109\032\099\111\109\112\114\097\115\032\082\111\098\117\120\046'
,
"\079\112\101\110\032\076\097\114\114\121\032\110\101\097\114\032\116\104\101\032\115\116\097\116\105\111\110\046\032\073\068\115\058\032\084\117\114\114\101\116\068\097\109\097\103\101\044\032\070\108\097\109\101\068\117\114\097\116\105\111\110\044\032\070\114\111\115\116\068\117\114\097\116\105\111\110\044\032\070\108\097\109\101\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\070\114\111\115\116\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111\046\032\078\111\032\082\111\098\117\120\032\112\117\114\099\104\097\115\101\115\046"
),110,90)end local bA,bB=0,0 task.spawn(function()while aV do local bC,bD=pcall(
function()local bC,bD,bE=bo()if os.clock()>=bB then bB=os.clock()+2 bv()bc.Text=
string.format(
'\037\115\032\u{b7}\032\080\108\097\099\101\032\037\115\n\037\115\058\032\037\115\032\u{b7}\032\037\115\058\032\037\115\n\037\115\058\032\037\100\047\037\100\032\u{b7}\032\067\114\097\102\116\058\032\037\100\047\037\100',aP==
'\108\111\098\098\121'and'\076\111\098\098\121'or aR('\069\120\112\101\100\105\u{e7}\u{e3}\111','\069\120\112\101\100\105\116\105\111\110'),game.PlaceId,aR(
'\086\105\100\097','\072\101\097\108\116\104'),bE and math.floor(bE.Health)or 0,aR('\073\103\114\101\106\097','\067\104\117\114\099\104'),bs()and
aR('\099\097\114\114\101\103\097\100\097','\108\111\097\100\101\100')or aR('\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097','\110\111\116\032\108\111\097\100\101\100'),aR(
'\084\101\110\116\097\116\105\118\097\115\032\117\112\103\114\097\100\101','\085\112\103\114\097\100\101\032\097\116\116\101\109\112\116\115'),aY.upgrades,a7.limit,aY.craft,a7.
craftLimit)end if aP~='\114\117\110'or not bD then return end if aX.skip then local bF=aN
.skipRequest(bl('\067\117\116\083\099\101\110\101\067\111\110\116\114\111\108\108\101\114'))if not bF then by=nil elseif not by or by.
name~=bF.name or by.id~=bF.id or by.session~=bF.session then by=bF local bG=bm(
'\067\117\116\083\099\101\110\101\083\101\114\118\105\099\101')if bF.private then bn(bG:VoteSkipPrivate(bF.id,bF.name))else
bn(bG:VoteSkip(bF.name,bF.id))end end end if workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101'
)then return end if aX.swing and not game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101'):
GetFocusedTextBox()then local bF=bl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local bG=bF and bF.
ActiveTool local bH=bl('\085\073\067\111\110\116\114\111\108\108\101\114')if bG and bG.Tool and bG.Tool.Name:find(
'\080\105\099\107\097\120\101',1,true)and type(bG.Swing)=='\102\117\110\099\116\105\111\110'and not(bH and bH.ActiveFrame and
bH.ActiveFrame.Visible)then bG:Swing()end end if os.clock()<bA then return end
bA=os.clock()+3 if aX.upgrades and aY.upgrades<a7.limit then local bF=bl(
'\068\114\105\108\108\085\112\103\114\097\100\101\067\111\110\116\114\111\108\108\101\114')if bF and not bF.PurchasePending and not bF.CardsLocked
and not bF.ActiveClassReward and bF.OptionsVersion~=nil then local bG=bF.
OptionsVersion local bH=bF.RollToken local bI=bn(bm('\067\117\114\114\101\110\099\121\083\101\114\118\105\099\101'):
GetCurrency())if not aV or not aX.upgrades or bG~=bF.OptionsVersion or bH~=bF.
RollToken or bF.PurchasePending or bF.CardsLocked or bF.ActiveClassReward or not
bo()then return end local bJ=aN.offer(bF.Options,bI,a7.reserve,aN.names(a7.
priority))if bJ then aY.upgrades+=1 bF:SetPurchasePending(true)local bK,bL=
pcall(function()return bn(bm('\068\114\105\108\108\083\101\114\118\105\099\101'):UpgradeDrill(bJ.UpgradeName,bG))end
)if bG==bF.OptionsVersion and bH==bF.RollToken then bF:SetPurchasePending(false)
end if not bK then error(bL)end if not aV then return end if bL=='\112\114\111\109\112\116\101\100'then
aX.upgrades=false a_.upgrades(false)be(
'\079\032\106\111\103\111\032\114\101\116\111\114\110\111\117\032\117\109\032\102\108\117\120\111\032\100\101\032\099\111\109\112\114\097\059\032\097\117\116\111\109\097\u{e7}\u{e3}\111\032\100\101\115\097\116\105\118\097\100\097\046',
'\084\104\101\032\103\097\109\101\032\114\101\116\117\114\110\101\100\032\097\032\112\117\114\099\104\097\115\101\032\102\108\111\119\059\032\097\117\116\111\109\097\116\105\111\110\032\100\105\115\097\098\108\101\100\046')else be(aR(
'\077\101\108\104\111\114\105\097\032\115\111\108\105\099\105\116\097\100\097\058\032','\085\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\058\032')..bJ.UpgradeName)end if type(bF.
FetchUpgradeOptions)=='\102\117\110\099\116\105\111\110'then bF:FetchUpgradeOptions()end end end end if
aX.medals and aY.medals<a7.medalLimit then local bF=bl('\076\097\114\114\121\067\111\110\116\114\111\108\108\101\114')if bF
and bF.Frame and bF.Frame.Visible and not bF.PurchasePending and bF:FindStation(
)then if not bz then local bG=aT:FindFirstChild('\083\104\097\114\101\100')local bH=bG and bG:
FindFirstChild('\076\097\114\114\121\067\111\110\102\105\103')if bH then bz=require(bH).Upgrades end end local bG
=bz and aN.medalOffer(bz,bF.State,a7.medalReserve,aN.names(a7.medalPriority))if
bG then aY.medals+=1 bF:BuyUpgrade(bG)be(aR('\077\101\108\104\111\114\105\097\032\099\111\109\032\109\101\100\097\108\104\097\115\032\115\111\108\105\099\105\116\097\100\097\058\032'
,'\077\101\100\097\108\032\117\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\058\032')..bG)end end end if aX.craft and aY.craft<a7.
craftLimit then local bF=bl('\067\114\097\102\116\105\110\103\067\111\110\116\114\111\108\108\101\114')if bF and bF.CurrentItem and
not bF.PendingCraft and bF.Frame and bF.Frame.Visible and not bF:
CanPurchaseWithRobux(bF.CurrentItem)and bF:CanCraft(bF.CurrentItem)then aY.craft
+=1 bF:CraftCurrentItem()be(
'\070\097\098\114\105\099\097\u{e7}\u{e3}\111\032\115\111\108\105\099\105\116\097\100\097\032\112\097\114\097\032\111\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\046',
'\067\114\097\102\116\032\114\101\113\117\101\115\116\101\100\032\102\111\114\032\116\104\101\032\115\101\108\101\099\116\101\100\032\105\116\101\109\046')end end end)if not bC then be(aR(
'\065\103\117\097\114\100\097\110\100\111\032\047\032\101\114\114\111\058\032','\087\097\105\116\105\110\103\032\047\032\101\114\114\111\114\058\032')..tostring(bD))bA=os.clock()+8 end
task.wait(0.2)end end)end local aP,aQ,aR=false,nil,false local aS=task.spawn(
function()aP,aQ=pcall(aO,{ui=O,page=N('\070\097\114\109'),T=function(aS,aT)return b.language
=='\112\116'and aS or aT end,progress=aE,attach=function(aS)j=aS end,section=N,quick=
function(aS)k=aS end})aR=true end)local aT=os.clock()+45 while l and not aR and
os.clock()<aT do task.wait(0.05)end if not aR then pcall(task.cancel,aS)aP=false
aQ=p('\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\052\053\032\115\101\103\117\110\100\111\115\032\101\120\099\101\100\105\100\111\046\032\u{da}\108\116\105\109\097\032\101\116\097\112\097\058\032',
'\052\053\045\115\101\099\111\110\100\032\116\105\109\101\111\117\116\046\032\076\097\115\116\032\115\116\097\103\101\058\032')..as.Text end if not l then return end if not
aP then if j then pcall(j)j=nil end ar.Text=p(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\099\097\114\114\101\103\097\114\032\097\115\032\102\117\110\u{e7}\u{f5}\101\115',
'\067\111\117\108\100\032\110\111\116\032\108\111\097\100\032\116\104\101\032\102\101\097\116\117\114\101\115')as.Text=p(
'\070\101\099\104\101\032\111\032\112\097\105\110\101\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046\032\068\101\116\097\108\104\101\115\058\032',
'\067\108\111\115\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\116\114\121\032\097\103\097\105\110\046\032\068\101\116\097\105\108\115\058\032')..tostring(aQ)aw.Text=p(
'\067\097\114\114\101\103\097\109\101\110\116\111\032\105\110\116\101\114\114\111\109\112\105\100\111','\076\111\097\100\105\110\103\032\105\110\116\101\114\114\117\112\116\101\100')b.ready()return end local
function aU(aV,aW)local aX,aY,aZ=false,false,nil local a_=task.spawn(function()
aY,aZ=pcall(aV)aX=true end)local a0=os.clock()+aW while l and not aX and os.
clock()<a0 do task.wait(0.05)end if not aX then pcall(task.cancel,a_)return
false,p('\084\101\109\112\111\032\108\105\109\105\116\101\032\101\120\099\101\100\105\100\111','\084\105\109\101\032\108\105\109\105\116\032\101\120\099\101\101\100\101\100')end return aY,aZ end aE(
0.92,'\077\111\110\116\097\110\100\111\032\111\115\032\097\106\117\115\116\101\115\032\100\101\032\116\101\108\097\u{2026}','\066\117\105\108\100\105\110\103\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\u{2026}')
local aV local aW,aX=aU(function()local aW=N('\065\106\117\115\116\101\115')ab(aW)local aX=O.button(
aW,p('\u{1f1e7}\u{1f1f7}\032\032\073\100\105\111\109\097\058\032\080\111\114\116\117\103\117\u{ea}\115\032\032\u{b7}\032\032\065\108\116\101\114\097\114',
'\u{1f1fa}\u{1f1f8}\032\032\076\097\110\103\117\097\103\101\058\032\069\110\103\108\105\115\104\032\032\u{b7}\032\032\067\104\097\110\103\101'),870)r(aX.Activated,
function()if type(b.chooseLanguage)=='\102\117\110\099\116\105\111\110'then b.chooseLanguage()end end)O.
label(aW,'\084\101\120\116\076\097\098\101\108',p(
'\084\114\111\099\097\114\032\111\032\105\100\105\111\109\097\032\114\101\097\098\114\101\032\111\032\112\097\105\110\101\108\032\099\111\109\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\117\115\097\100\097\115\046',
'\067\104\097\110\103\105\110\103\032\108\097\110\103\117\097\103\101\032\114\101\111\112\101\110\115\032\116\104\101\032\112\097\110\101\108\032\119\105\116\104\032\097\117\116\111\109\097\116\105\111\110\032\112\097\117\115\101\100\046'),44,871)O.label(aW
,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\084\111\113\117\101\032\065\058\032\097\098\114\105\114\047\102\101\099\104\097\114\046\032\083\101\103\117\114\101\032\048\044\054\053\115\032\101\032\115\111\108\116\101\058\032\112\097\114\097\114\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\046\032\065\114\114\097\115\116\101\058\032\109\111\118\101\114\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\105\110\101\108\046'
or
"\084\097\112\032\065\058\032\116\111\103\103\108\101\032\112\097\110\101\108\046\032\072\111\108\100\032\048\046\054\053\115\032\097\110\100\032\114\101\108\101\097\115\101\058\032\115\116\111\112\032\097\117\116\111\109\097\116\105\111\110\046\032\068\114\097\103\058\032\109\111\118\101\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\110\101\108\046"
,68,900)local aY=O.label(aW,'\084\101\120\116\066\111\120','\069\066\065\053\070\070',40,902)aY.ClearTextOnFocus=false
O.label(aW,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\067\111\114\032\100\101\032\100\101\115\116\097\113\117\101\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\120\046\058\032\070\070\067\065\052\050\041'or
'\065\099\099\101\110\116\032\099\111\108\111\114\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\046\103\046\032\070\070\067\065\052\050\041',30,901)local aZ=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\084\104\101\109\101\046\106\115\111\110'local a_='\065\109\101\116\104\121\115\116'local a0={Amethyst={'\048\067\048\067\049\048',
'\050\055\049\056\051\053','\057\054\051\067\068\067','\070\070\070\053\070\070','\067\065\066\052\068\056','\069\066\065\053\070\070','\049\057\048\070\050\051'},Potato={'\050\051\049\070\049\057','\052\049\051\054\050\055'
,'\055\052\053\056\051\049','\070\067\070\054\069\050','\068\053\067\051\065\051','\069\066\065\053\070\070','\051\048\050\055\049\068'},Bloodmoon={'\049\055\048\067\049\051','\051\048\049\051\049\070',
'\054\066\050\054\051\068','\070\070\069\065\070\048','\068\050\065\048\066\048','\070\070\052\053\054\056','\050\051\048\070\049\065'},Midnight={'\049\048\049\051\049\069','\049\068\050\052\051\054',
'\051\053\052\054\054\053','\069\068\070\051\070\070','\065\052\066\051\067\067','\055\051\057\070\070\070','\049\053\049\066\050\065'},Emerald={'\048\066\049\057\049\054','\049\052\050\069\050\054',
'\050\066\053\057\052\055','\069\054\070\070\070\051','\057\069\067\054\066\051','\053\054\068\068\065\048','\049\048\050\052\049\069'},Arctic={'\049\049\049\066\050\054','\049\067\050\068\051\068','\051\054\053\049\054\065'
,'\069\066\070\056\070\070','\065\057\067\055\068\065','\055\057\068\057\070\070','\049\055\050\051\051\049'}}local function a1(a2)return Color3.
fromRGB(tonumber(a2:sub(1,2),16),tonumber(a2:sub(3,4),16),tonumber(a2:sub(5,6),
16))end local function a2()if type(writefile)=='\102\117\110\099\116\105\111\110'then task.spawn(
function()pcall(writefile,aZ,e:JSONEncode({preset=a_,hex=aY.Text}))end)end end
local function a3(a4)if type(a4)~='\115\116\114\105\110\103'or not a4:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then
return false end o=Color3.fromRGB(tonumber(a4:sub(1,2),16),tonumber(a4:sub(3,4),
16),tonumber(a4:sub(5,6),16))m.accent=o F.BackgroundColor3=o z.BackgroundColor3=
o M(J)for a5,a6 in ipairs(P)do a6()end for a5,a6 in pairs(H)do a6.
ScrollBarImageColor3=o end aY.Text=a4 return true end local function a4(a5)local
a6=a0[a5]if not a6 then return end a_=a5 for a7,a8 in ipairs({'\100\097\114\107','\116\105\108\101',
'\101\100\103\101','\116\101\120\116','\109\117\116\101\100','\097\099\099\101\110\116','\115\105\100\101\098\097\114'})do m[a8]=a1(a6[a7])end o=m.accent for
a7,a8 in pairs(n)do if a7.Parent then for a9,ba in pairs(a8)do a7[a9]=m[ba]end
end end local a7=w:FindFirstChildOfClass('\085\073\071\114\097\100\105\101\110\116')if a7 then a7.Color=
ColorSequence.new(m.tile,m.dark)end a3(a6[6])end O.label(aW,'\084\101\120\116\076\097\098\101\108',p(
'\084\069\077\065\083\032\080\082\079\078\084\079\083','\084\072\069\077\069\032\080\082\069\083\069\084\083'),32,880)for a5,a6 in ipairs({'\065\109\101\116\104\121\115\116','\080\111\116\097\116\111'
,'\066\108\111\111\100\109\111\111\110','\077\105\100\110\105\103\104\116','\069\109\101\114\097\108\100','\065\114\099\116\105\099'})do local a7=O.button(aW,a6,880+a5)r(
a7.Activated,function()a4(a6)a2()end)end aV=function()if type(readfile)==
'\102\117\110\099\116\105\111\110'then local a5=readfile(aZ)if type(a5)=='\115\116\114\105\110\103'and#a5<=2048 then local
a6=e:JSONDecode(a5)if l and aY.Parent and type(a6)=='\116\097\098\108\101'then if a0[a6.preset]
then a4(a6.preset)end a3(a6.hex)end end end end r(aY.FocusLost,function()local
a5=aY.Text:gsub('\035',''):upper()if a3(a5)then a2()end end)end,5)if not l then
return end aE(0.96,'\065\106\117\115\116\097\110\100\111\032\111\032\112\097\105\110\101\108\032\u{e0}\032\115\117\097\032\116\101\108\097\u{2026}',
'\070\105\116\116\105\110\103\032\116\104\101\032\112\097\110\101\108\032\116\111\032\121\111\117\114\032\115\099\114\101\101\110\u{2026}')local aY,aZ=pcall(X)if not aY then T=
table.clone(S)pcall(X)end local a_ if not aW or not aY then a_=p(
'\065\106\117\115\116\101\115\032\118\105\115\117\097\105\115\032\105\110\099\111\109\112\108\101\116\111\115\058\032','\083\111\109\101\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\032\102\097\105\108\101\100\058\032')..tostring(aX
or aZ)E.Text=a_ warn('\091\065\110\111\110\072\117\098\032'..a..'\093\032'..a_)end aE(1,
'\080\097\105\110\101\108\032\112\114\111\110\116\111\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\101\115\116\u{e3}\111\032\112\097\117\115\097\100\097\115\046',
'\080\097\110\101\108\032\114\101\097\100\121\046\032\070\101\097\116\117\114\101\115\032\097\114\101\032\112\097\117\115\101\100\046')ar.Text=p('\083\101\117\032\112\097\105\110\101\108\032\101\115\116\u{e1}\032\112\114\111\110\116\111',
'\089\111\117\114\032\112\097\110\101\108\032\105\115\032\114\101\097\100\121')am=true if ao()then ap:Destroy()else task.spawn(function()
while l and ap.Parent and not ao()do task.wait(0.05)end if l and ap.Parent then
ap:Destroy()end end)end pcall(b.ready)if aV then task.defer(function()aU(aV,2)
end)end
