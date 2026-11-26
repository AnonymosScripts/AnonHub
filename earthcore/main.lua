-- Luau
-- AnonHub protected distribution 0.40.6
-- local BOOT_VERSION="0.40.6"
local a='\048\046\052\048\046\054'local b=...assert(type(b)=='\116\097\098\108\101'and b.access,
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
,'\073\103\114\101\106\097','\067\111\109\098\097\116\101','\077\111\118\105\109\101\110\116\111','\069\083\080','\076\111\106\097','\065\106\117\115\116\101\115'}local L={Farm=
'\069\120\112\101\100\105\116\105\111\110',Melhorias='\085\112\103\114\097\100\101\115',Igreja='\067\104\117\114\099\104',Combate='\067\111\109\098\097\116',Movimento=
'\077\111\118\101\109\101\110\116',ESP='\069\083\080',Loja='\083\104\111\112',Ajustes='\083\101\116\116\105\110\103\115'}local function M(N)J=N for O
,P in pairs(H)do P.Visible=O==N s(I[O],{BackgroundColor3=O==N and o or m.tile,
TextColor3=O==N and m.dark or m.muted})if O==N then local Q=P.Position P.
Position=Q+UDim2.fromOffset(6,0)s(P,{Position=Q})end end end local function N(O)
if H[O]then return H[O]end local P=q('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Name=O,Size=UDim2.new(1,-
32,1,-166),Position=UDim2.fromOffset(16,126),BackgroundTransparency=1,
ScrollBarThickness=3,ScrollBarImageColor3=o,CanvasSize=UDim2.new(),
AutomaticCanvasSize=Enum.AutomaticSize.Y,Visible=O=='\070\097\114\109'},w)q('\085\073\076\105\115\116\076\097\121\111\117\116',{
Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.LayoutOrder},P)q('\085\073\080\097\100\100\105\110\103',{
PaddingTop=UDim.new(0,2),PaddingBottom=UDim.new(0,12),PaddingLeft=UDim.new(0,2)}
,P)local Q={Loja=p('\083\101\108\101\099\105\111\110\101\032\101\032\111\114\103\097\110\105\122\101\059\032\102\105\110\097\108\105\122\101\032\097\032\099\111\109\112\114\097\032\110\111\032\099\097\105\120\097\046',
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
language=='\112\116'and O or L[O],Size=UDim2.new(1,-8,0,28),LayoutOrder=-30,
BackgroundTransparency=1,TextColor3=m.text,TextSize=20,Font=Enum.Font.GothamBold
,TextXAlignment=Enum.TextXAlignment.Left},P)q('\084\101\120\116\076\097\098\101\108',{Text=Q[O],Size=UDim2.
new(1,-8,0,38),LayoutOrder=-29,BackgroundTransparency=1,TextColor3=m.muted,
TextSize=12,TextWrapped=true,Font=Enum.Font.Gotham,TextXAlignment=Enum.
TextXAlignment.Left},P)local S=0 for T in pairs(H)do S+=1 end local T=q(
'\084\101\120\116\066\117\116\116\111\110',{Text=b.language=='\112\116'and O or L[O],Font=Enum.Font.GothamMedium,
TextSize=12,TextColor3=O=='\070\097\114\109'and m.dark or m.muted,Size=UDim2.new(1/#K,-8,1,-
8),Position=UDim2.new(S/#K,4,0,4),BackgroundColor3=O=='\070\097\114\109'and o or m.tile,
AutoButtonColor=false},G)t(T,8)q('\085\073\080\097\100\100\105\110\103',{PaddingLeft=UDim.new(0,10),
PaddingRight=UDim.new(0,10)},T)H[O]=P I[O]=T r(T.Activated,function()M(O)end)
return P end local O={}function O.label(P,Q,R,S,T)local U=q(Q,{Text=R,Size=UDim2
.new(1,-10,0,S),LayoutOrder=T,BackgroundTransparency=Q=='\084\101\120\116\066\111\120'and 0 or 1,
BackgroundColor3=m.tile,TextColor3=m.text,TextSize=13,Font=Enum.Font.Gotham,
TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left},P)q('\085\073\080\097\100\100\105\110\103',{
PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0,12)},U)if Q=='\084\101\120\116\066\111\120'then t(
U,8)u(U)U.ClearTextOnFocus=false r(U.Focused,function()s(U,{BackgroundColor3=m.
edge})end)r(U.FocusLost,function()s(U,{BackgroundColor3=m.tile})end)end return U
end function O.button(P,Q,R)local S=O.label(P,'\084\101\120\116\066\117\116\116\111\110',Q,48,R)S.
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
UDim2.fromOffset(0,(_-1)*52)ab.Text=Z.compact and(b.language=='\112\116'and aa or L[aa
])or string.format('\037\048\050\100\032\u{b7}\032\037\115',_,b.language=='\112\116'and aa or L[aa])ab.
TextXAlignment=Z.compact and Enum.TextXAlignment.Center or Enum.TextXAlignment.
Left end end for aa,ab in pairs(H)do ab.Position=UDim2.fromOffset(Z.compact and
16 or 190,88)ab.Size=UDim2.new(1,Z.compact and-32 or-206,1,Z.compact and-184 or-
136)end E.Position=UDim2.new(0,Z.compact and 16 or 190,1,-34)E.Size=UDim2.new(1,
Z.compact and-40 or-214,0,26)F.Size=UDim2.fromOffset(T.launcher,T.launcher)end
r(v:GetPropertyChangedSignal('\065\098\115\111\108\117\116\101\083\105\122\101'),X)local aa={}local function ab(Y)O.
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
gunRange=250,hitboxSize=8}local aW={speed=false,noclip=false,fly=false,aura=
false,oreAura=false,autoMove=false,autoFire=false,silentAim=false,hitbox=false}
local aX={{'\109\111\098\115','\077\111\110\115\116\114\111\115','\069\110\101\109\105\101\115','\070\070\054\048\054\048'},{'\112\108\097\121\101\114\115','\074\111\103\097\100\111\114\101\115',
'\080\108\097\121\101\114\115','\054\048\068\056\070\070'},{'\099\111\109\112\097\110\105\111\110\115','\067\111\109\112\097\110\104\101\105\114\111\115','\067\111\109\112\097\110\105\111\110\115','\054\048\070\070\066\048'},{
'\099\104\101\115\116\115','\066\097\u{fa}\115','\067\104\101\115\116\115','\070\070\068\048\054\048'},{'\109\105\109\105\099\115','\077\u{ed}\109\105\099\111\115\032\105\100\101\110\116\105\102\105\099\097\100\111\115',
'\073\100\101\110\116\105\102\105\101\100\032\109\105\109\105\099\115','\070\070\053\048\068\048'},{'\105\116\101\109\115','\073\116\101\110\115','\073\116\101\109\115','\070\070\070\070\070\070'},{'\115\099\114\097\112',
'\083\117\099\097\116\097\115','\083\099\114\097\112','\066\053\067\048\068\048'},{'\111\114\101\115','\077\105\110\u{e9}\114\105\111\115','\079\114\101\115','\054\048\069\048\070\070'},{'\099\104\117\114\099\104',
'\073\103\114\101\106\097','\067\104\117\114\099\104','\070\070\070\048\065\048'},{'\100\111\111\114\115','\069\110\116\114\097\100\097\115\032\100\101\032\068\117\110\103\101\111\110','\068\117\110\103\101\111\110\032\101\110\116\114\097\110\099\101\115',
'\066\048\056\048\070\070'},{'\097\114\101\110\097\115','\080\111\114\116\097\115\032\100\101\032\097\114\101\110\097','\065\114\101\110\097\032\100\111\111\114\115','\070\070\056\048\052\048'},{'\116\114\101\097\115\117\114\101\068\111\111\114\115',
'\080\111\114\116\097\115\032\100\101\032\116\101\115\111\117\114\111','\084\114\101\097\115\117\114\101\032\100\111\111\114\115','\070\070\069\048\056\048'}}local aY={}for aZ,a_ in ipairs(aX
)do aY[a_[1] ]={enabled=false,color=a_[4]}end local aZ=
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
'\068\105\115\116\u{e2}\110\099\105\097\032\100\101\032\115\101\108\101\u{e7}\u{e3}\111\032\100\097\032\097\114\109\097','\071\117\110\032\116\097\114\103\101\116\032\115\101\108\101\099\116\105\111\110\032\100\105\115\116\097\110\099\101',37
,10,1000)a3(bd,'\104\105\116\098\111\120','\072\105\116\098\111\120\032\108\111\099\097\108\032\097\109\112\108\105\097\100\111\032\u{b7}\032\099\097\105\120\097\032\116\114\097\110\115\112\097\114\101\110\116\101',
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
'\072\101\105\103\104\116\047\111\102\102\115\101\116\032\102\114\111\109\032\116\097\114\103\101\116',7,2,20)local bg=aI.section('\069\083\080')local bh=aK.label(
bg,'\084\101\120\116\076\097\098\101\108',aL(
"\069\083\080\032\100\101\115\097\116\105\118\097\100\111\032\097\111\032\097\098\114\105\114\046\032\067\097\116\101\103\111\114\105\097\115\032\105\110\100\101\112\101\110\100\101\110\116\101\115\059\032\115\111\109\101\110\116\101\032\111\098\106\101\116\111\115\032\099\097\114\114\101\103\097\100\111\115\046"
,"\069\083\080\032\115\116\097\114\116\115\032\111\102\102\046\032\073\110\100\101\112\101\110\100\101\110\116\032\099\097\116\101\103\111\114\105\101\115\059\032\108\111\097\100\101\100\032\111\098\106\101\099\116\115\032\111\110\108\121\046"),55,1)for bi,
bj in ipairs(aX)do local bk,bl=aK.checkbox(bg,aL(bj[2],bj[3]),bi+2)aT['\101\115\112\095'..bj
[1] ]={paint=bl,category=bj[1]}a0(bk.Activated,function()aY[bj[1] ].enabled=not
aY[bj[1] ].enabled bl(aY[bj[1] ].enabled)end)end a4(bg,'\109\097\120\068\105\115\116\097\110\099\101',
'\068\105\115\116\u{e2}\110\099\105\097\032\109\u{e1}\120\105\109\097\032\100\111\032\069\083\080','\069\083\080\032\109\097\120\105\109\117\109\032\100\105\115\116\097\110\099\101',15,50,10000)a4(bg,
'\109\097\120\069\083\080','\077\u{e1}\120\105\109\111\032\100\101\032\109\097\114\099\097\100\111\114\101\115\032\040\049\u{2013}\049\048\048\048\041',
'\077\097\114\107\101\114\032\108\105\109\105\116\032\040\049\u{2013}\049\048\048\048\041',18,1,1000)local bi={'\068\117\110\103\101\111\110\115','\069\110\101\109\105\101\115','\076\111\111\116',
'\068\105\115\116\097\110\099\101'}if not table.find(bi,aV.espPriority)then aV.espPriority='\068\117\110\103\101\111\110\115'end
local bj=aK.button(bg,'',20)local function bk()local bl={Dungeons='\068\117\110\103\101\111\110\115',
Enemies='\073\110\105\109\105\103\111\115',Loot='\073\116\101\110\115\032\101\032\098\097\u{fa}\115',Distance='\077\097\105\115\032\112\114\u{f3}\120\105\109\111\115'}bj.
Text=aL('\080\114\105\111\114\105\100\097\100\101\032\069\083\080\058\032','\069\083\080\032\112\114\105\111\114\105\116\121\058\032')..aL(bl[aV.espPriority],aV.
espPriority)end bk()a0(bj.Activated,function()aV.espPriority=bi[table.find(bi,aV
.espPriority)%#bi+1]bk()a_()end)local function bl(bm)if aV.espPriority==
'\068\117\110\103\101\111\110\115'then return(bm=='\100\111\111\114\115'or bm=='\097\114\101\110\097\115'or bm=='\116\114\101\097\115\117\114\101\068\111\111\114\115')and 0 or
1 end if aV.espPriority=='\069\110\101\109\105\101\115'then return(bm=='\109\111\098\115'or bm=='\109\105\109\105\099\115')and 0 or
1 end if aV.espPriority=='\076\111\111\116'then return(bm=='\105\116\101\109\115'or bm=='\099\104\101\115\116\115'or bm==
'\115\099\114\097\112'or bm=='\111\114\101\115')and 0 or 1 end return 0 end local bm=aK.button(bg,'',21)
local function bn()bm.Text=aL('\077\111\100\101\108\111\058\032','\083\116\121\108\101\058\032')..(aV.style=='\066\111\120'and aL(
'\099\097\105\120\097','\098\111\120')or aL('\099\111\110\116\111\114\110\111','\111\117\116\108\105\110\101'))end bn()a0(bm.Activated,function()aV.
style=aV.style=='\066\111\120'and'\079\117\116\108\105\110\101'or'\066\111\120'a_()bn()end)local bo=1 local bp=aK.
button(bg,'',22)local bq=aK.label(bg,'\084\101\120\116\066\111\120',aY[aX[1][1] ].color,40,23)local
function br()bp.Text=aL('\067\111\114\032\100\101\058\032','\067\111\108\111\114\032\102\111\114\058\032')..aL(aX[bo][2],aX[bo][3])bq.
Text=aY[aX[bo][1] ].color end br()a0(bp.Activated,function()bo=bo%#aX+1 br()end)
a0(bq.FocusLost,function()local bs=bq.Text:gsub('\035',''):upper()if bs:match(
'\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then aY[aX[bo][1] ].color=bs a_()else bh.Text=aL(
'\072\069\088\032\105\110\118\u{e1}\108\105\100\111\058\032\117\115\101\032\054\032\099\097\114\097\099\116\101\114\101\115\032\100\101\032\048\u{2013}\057\032\101\032\065\u{2013}\070\044\032\099\111\109\111\032\070\070\065\049\051\049\046',
'\073\110\118\097\108\105\100\032\072\069\088\058\032\117\115\101\032\054\032\099\104\097\114\097\099\116\101\114\115\032\102\114\111\109\032\048\u{2013}\057\032\097\110\100\032\065\u{2013}\070\044\032\115\117\099\104\032\097\115\032\070\070\065\049\051\049\046')
end br()end)local bs=a1('\070\114\097\109\101',{Size=UDim2.new(1,-8,0,190),
BackgroundTransparency=1,LayoutOrder=24},bg)local bt,bu=1,1 for bv=0,23 do local
bw=bv/24 local bx=bw*math.pi*2 local by=a1('\084\101\120\116\066\117\116\116\111\110',{Text='',Size=UDim2.
fromOffset(24,24),Position=UDim2.new(0.5,math.cos(bx)*72-12,0.5,math.sin(bx)*72-
12),BackgroundColor3=Color3.fromHSV(bw,1,1),BorderSizePixel=0},bs)a1('\085\073\067\111\114\110\101\114',
{CornerRadius=UDim.new(1,0)},by)a0(by.Activated,function()aY[aX[bo][1] ].color=
Color3.fromHSV(bw,bt,bu):ToHex():upper()a_()br()end)end local bv=aK.button(bg,
aL('\066\114\097\110\099\111\032\047\032\115\097\116\117\114\097\u{e7}\u{e3}\111\032\122\101\114\111','\087\104\105\116\101\032\047\032\122\101\114\111\032\115\097\116\117\114\097\116\105\111\110'),25)a0(bv.
Activated,function()aY[aX[bo][1] ].color='\070\070\070\070\070\070'a_()br()end)local bw=aK.label(
bg,'\084\101\120\116\066\111\120',aV.oreFilter,40,26)a0(bw.FocusLost,function()aV.oreFilter=bw.Text:
sub(1,300)a_()end)aK.label(bg,'\084\101\120\116\076\097\098\101\108',aL(
'\070\105\108\116\114\111\032\100\101\032\109\105\110\u{e9}\114\105\111\115\032\112\111\114\032\110\111\109\101\058\032\067\111\097\108\044\032\073\114\111\110\044\032\071\111\108\100\044\032\068\105\097\109\111\110\100\044\032\069\109\101\114\097\108\100\044\032\082\117\098\121\046\032\077\u{ed}\109\105\099\111\115\032\111\099\117\108\116\111\115\032\115\101\109\032\115\105\110\097\108\032\114\101\112\108\105\099\097\100\111\032\110\u{e3}\111\032\112\111\100\101\109\032\115\101\114\032\105\100\101\110\116\105\102\105\099\097\100\111\115\032\099\111\109\032\099\101\114\116\101\122\097\046'
,
"\079\114\101\032\110\097\109\101\032\102\105\108\116\101\114\058\032\067\111\097\108\044\032\073\114\111\110\044\032\071\111\108\100\044\032\068\105\097\109\111\110\100\044\032\069\109\101\114\097\108\100\044\032\082\117\098\121\046\032\072\105\100\100\101\110\032\109\105\109\105\099\115\032\119\105\116\104\111\117\116\032\097\032\114\101\112\108\105\099\097\116\101\100\032\115\105\103\110\097\108\032\099\097\110\110\111\116\032\098\101\032\105\100\101\110\116\105\102\105\101\100\032\119\105\116\104\032\099\101\114\116\097\105\110\116\121\046"
),78,27)a3(bg,'\104\105\100\101\068\101\097\100','\079\099\117\108\116\097\114\032\105\110\105\109\105\103\111\115\032\109\111\114\116\111\115','\072\105\100\101\032\100\101\097\100\032\101\110\101\109\105\101\115',40,aV)a3(
bg,'\104\105\100\101\065\116\116\097\099\104\101\100','\079\099\117\108\116\097\114\032\105\116\101\110\115\032\097\110\101\120\097\100\111\115\032\u{e0}\032\098\114\111\099\097',
'\072\105\100\101\032\105\116\101\109\115\032\097\116\116\097\099\104\101\100\032\116\111\032\100\114\105\108\108',41,aV)aT.hideDead.paint(aV.hideDead)aT.
hideAttached.paint(aV.hideAttached)a4(bg,'\116\101\120\116\083\105\122\101',
'\084\097\109\097\110\104\111\032\100\111\115\032\110\111\109\101\115\032\101\032\100\105\115\116\u{e2}\110\099\105\097\115','\078\097\109\101\032\097\110\100\032\100\105\115\116\097\110\099\101\032\116\101\120\116\032\115\105\122\101',43,8,28)aK.
label(bg,'\084\101\120\116\076\097\098\101\108',aL('\067\111\114\032\100\097\032\100\105\115\116\u{e2}\110\099\105\097\032\040\072\069\088\041','\068\105\115\116\097\110\099\101\032\099\111\108\111\114\032\040\072\069\088\041'),30
,46)if not aV.distanceColor:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then aV.distanceColor=
'\068\048\068\056\069\056'end local bx=aK.label(bg,'\084\101\120\116\066\111\120',aV.distanceColor,40,47)a0(bx.
FocusLost,function()local by=bx.Text:gsub('\035',''):upper()if by:match(
'\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then aV.distanceColor=by a_()end bx.Text=aV.distanceColor end)
local by=bc:FindFirstAncestorOfClass('\083\099\114\101\101\110\071\117\105')local bz=a1('\070\114\097\109\101',{Size=UDim2
.fromScale(1,1),BackgroundTransparency=1},by)local bA=0 local bB,bC,bD,bE local
bF={{'\097\117\114\097','\065\116\097\113\117\101','\065\116\116\097\099\107'},{'\111\114\101\065\117\114\097','\080\105\099\097\114\101\116\097','\080\105\099\107\097\120\101'},{'\102\108\121','\086\111\097\114',
'\070\108\121'},{'\110\111\099\108\105\112','\078\111\099\108\105\112','\078\111\099\108\105\112'},{'\115\112\101\101\100','\086\101\108\111\099\105\100\097\100\101','\083\112\101\101\100'},{'\097\117\116\111\077\111\118\101',
'\065\117\116\111\032\077\111\118\101','\065\117\116\111\032\077\111\118\101'},{'\097\117\116\111\070\105\114\101','\065\117\116\111\032\070\105\114\101','\065\117\116\111\032\070\105\114\101'},{'\117\112','\083\117\098\105\114','\085\112'
},{'\100\111\119\110','\068\101\115\099\101\114','\068\111\119\110'}}local bG={}for bH,bI in ipairs(bF)do local bJ=bI[1]
local bK=a1('\070\114\097\109\101',{Size=UDim2.fromOffset(66,76),Position=UDim2.new(0,12+((bH-1
)%4)*72,1,-90-math.floor((bH-1)/4)*82),BackgroundColor3=Color3.fromRGB(20,27,39)
,Visible=false},bz)a1('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,10)},bK)a1('\085\073\083\116\114\111\107\101',
{Color=Color3.fromRGB(105,165,220),Thickness=1.5,Transparency=0.2},bK)local bL,
bM=aK.checkbox(bc,aL('\065\116\097\108\104\111\032\110\097\032\116\101\108\097\058\032','\083\099\114\101\101\110\032\115\104\111\114\116\099\117\116\058\032')..aL(bI[2],bI[3]),80
+bH)a0(bL.Activated,function()bK.Visible=not bK.Visible bM(bK.Visible)if not bK.
Visible then bA=0 end end)local bN=a1('\084\101\120\116\066\117\116\116\111\110',{Text='\061',Size=UDim2.new(1,0,
0,18),BackgroundTransparency=1,TextColor3=Color3.fromRGB(150,180,210),TextSize=
14},bK)local bO=a1('\084\101\120\116\066\117\116\116\111\110',{Text='',Size=UDim2.new(1,0,1,-18),Position=
UDim2.fromOffset(0,18),BackgroundTransparency=1},bK)local bP=a1('\070\114\097\109\101',{Size=
UDim2.fromOffset(26,26),Position=UDim2.new(0.5,-13,0,2),BackgroundTransparency=1
},bO)local function bQ(bR,bS,bT,bU)a1('\070\114\097\109\101',{Size=UDim2.fromOffset(bT,2),
Position=UDim2.fromOffset(bR,bS),Rotation=bU or 0,BorderSizePixel=0,
BackgroundColor3=Color3.fromRGB(210,235,255)},bP)end if bJ=='\117\112'or bJ=='\100\111\119\110'or
bJ=='\102\108\121'then bQ(12,5,2,90)bQ(4,8,12,-40)bQ(12,8,12,40)bQ(7,20,12,0)if bJ==
'\100\111\119\110'then bP.Rotation=180 end elseif bJ=='\111\114\101\065\117\114\097'then bQ(4,12,23,-45)bQ(1,5,23
,15)elseif bJ=='\097\117\114\097'then bQ(2,12,26,-45)bQ(2,12,26,45)else bQ(2,12,24,0)bQ(2,12
,24,90)local bR=a1('\070\114\097\109\101',{Size=UDim2.fromOffset(18,18),Position=UDim2.
fromOffset(4,4),BackgroundTransparency=1},bP)a1('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.
new(1,0)},bR)a1('\085\073\083\116\114\111\107\101',{Thickness=2,Color=Color3.fromRGB(210,235,255)},bR)
end a1('\084\101\120\116\076\097\098\101\108',{Text=aL(bI[2],bI[3]),Size=UDim2.new(1,-4,0,20),Position=
UDim2.fromOffset(2,32),BackgroundTransparency=1,TextSize=10,TextColor3=Color3.
new(1,1,1),TextWrapped=true},bO)a0(bN.InputBegan,function(bR)if bR.UserInputType
==Enum.UserInputType.Touch or bR.UserInputType==Enum.UserInputType.MouseButton1
then bB=bR bC=bR.Position bD=bK.AbsolutePosition bE=bK end end)if bJ=='\117\112'or bJ
=='\100\111\119\110'then a0(bO.InputBegan,function(bR)if bR.UserInputType==Enum.
UserInputType.Touch or bR.UserInputType==Enum.UserInputType.MouseButton1 then bA
=bJ=='\117\112'and 1 or-1 end end)a0(bO.InputEnded,function()bA=0 end)else bG[bJ]=bK
a0(bO.Activated,function()aW[bJ]=not aW[bJ]aT[bJ].paint(aW[bJ])end)end end a0(aN
.InputChanged,function(bH)if not bB or not bE or not bE.Visible then return end
if bH~=bB and bH.UserInputType~=Enum.UserInputType.MouseMovement then return end
local bI=bH.Position-bC local bJ=workspace.CurrentCamera local bK=bJ and bJ.
ViewportSize local bL,bM=bD.X+bI.X,bD.Y+bI.Y if bK then bL=math.clamp(bL,0,math.
max(0,bK.X-66))bM=math.clamp(bM,0,math.max(0,bK.Y-76))end bE.Position=UDim2.
fromOffset(bL,bM)end)a0(aN.InputEnded,function(bH)if bH==bB then bB=nil bE=nil
end bA=0 end)local function bH(bI)if bI:IsA('\066\097\115\101\080\097\114\116')then return bI end return
bI:IsA('\077\111\100\101\108')and(bI.PrimaryPart or bI:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')or bI:
FindFirstChildWhichIsA('\066\097\115\101\080\097\114\116',true))or nil end local bI=setmetatable({},{
__mode='\107'})local function bJ(bK)if not(bK:IsA('\077\111\100\101\108')or bK:IsA('\066\097\115\101\080\097\114\116'))
then return nil end local bL=tostring(bK:GetAttribute('\082\101\097\108\078\097\109\101')or bK.Name)if
bK.Name=='\067\104\117\114\099\104'and bK:IsA('\077\111\100\101\108')then return'\099\104\117\114\099\104'end if bK.Parent and bK.
Parent.Name=='\078\112\099'then if bK:GetAttribute('\078\112\099\070\097\099\116\105\111\110')=='\070\114\105\101\110\100\108\121\067\111\109\112\097\110\105\111\110'or
bL:lower():find('\099\111\109\112\097\110\105\111\110',1,true)or bK:GetAttribute('\070\114\105\101\110\100\108\121')==true then
return'\099\111\109\112\097\110\105\111\110\115'end if bL:lower():find('\109\105\109\105\099',1,true)or bK:GetAttribute(
'\077\105\109\105\099\067\104\101\115\116\068\097\109\097\103\101\097\098\108\101')~=nil then return'\109\105\109\105\099\115'end return'\109\111\098\115'end if bK:
GetAttribute('\082\117\110\116\105\109\101\067\104\101\115\116\077\111\100\101\108')==true then return'\099\104\101\115\116\115'end if aP:HasTag(bK,
'\079\114\101')or type(bK:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101'))=='\115\116\114\105\110\103'then return'\111\114\101\115'end
if aP:HasTag(bK,'\068\117\110\103\101\111\110\065\114\101\110\097\068\111\111\114')then return'\097\114\101\110\097\115'end if aP:HasTag(bK,
'\068\117\110\103\101\111\110\084\114\101\097\115\117\114\101\068\111\111\114')then return'\116\114\101\097\115\117\114\101\068\111\111\114\115'end if aP:HasTag(bK,
'\068\117\110\103\101\111\110\068\111\111\114')then return'\100\111\111\114\115'end if bK.Parent and bK.Parent.Name=='\073\116\101\109\115'then
return bL:lower():find('\115\099\114\097\112',1,true)and'\115\099\114\097\112'or'\105\116\101\109\115'end end local bK=false
local function bL()if bK then return end bK=true task.spawn(function()local bM={
workspace}local bN=0 while aR and#bM>0 do local bO=table.remove(bM)local bP=bJ(
bO)if bP then bI[bO]=bP end for bQ,bR in ipairs(bO:GetChildren())do bM[#bM+1]=bR
end bN+=1 if bN%120==0 then task.wait()end end bK=false end)end a0(workspace.
DescendantAdded,function(bM)local bN=bJ(bM)if bN then bI[bM]=bN end end)local bM
={}local function bN(bO)local bP=bM[bO]if bP then for bQ,bR in pairs(bP)do if
typeof(bR)=='\073\110\115\116\097\110\099\101'then bR:Destroy()end end bM[bO]=nil end end local function
bO()local bP={}for bQ in pairs(bM)do bP[#bP+1]=bQ end for bQ,bR in ipairs(bP)do
bN(bR)end end local bP,bQ,bR,bS,bT local bU=setmetatable({},{__mode='\107'})local
bV,bW local function bX()if bV then pcall(function()bV.Range=bW end)bV=nil end
end local function bY()if bT then bT:Destroy()bT=nil end if bS then bS:Destroy()
bS=nil end bR=nil end local function bZ()for b_,b0 in pairs(bU)do if b_.Parent
then b_.CanCollide=b0 end bU[b_]=nil end end local b_={}local b0,b1,b2 local
function b3()if b0 and b0.GetAimRay==b2 then b0.GetAimRay=b1 end b0=nil b1=nil
b2=nil end local function b4()for b5,b6 in pairs(b_)do if b5.Parent then b5.Size
=b6.size end b6.box:Destroy()b_[b5]=nil end end local function b5(b6,b7)local b8
,b9=nil,b7 local ca=workspace:FindFirstChild('\078\112\099')for cb,cc in ipairs(ca and ca
:GetChildren()or{})do local cd=bJ(cc)local ce=cc:FindFirstChildOfClass(
'\072\117\109\097\110\111\105\100')local cf=cc:FindFirstChild('\072\101\097\100')if(cd=='\109\111\098\115'or cd=='\109\105\109\105\099\115')and ce
and ce.Health>0 and cf and cf:IsA('\066\097\115\101\080\097\114\116')then local cg=(cf.Position-b6.
Position).Magnitude if cg<b9 then b9=cg b8=cf end end end return b8,b9 end local
function b6()for b7 in pairs(aW)do aW[b7]=false aT[b7].paint(false)end bX()bY()
bZ()b3()b4()bA=0 if bP and bP.Parent then bP.WalkSpeed=bQ end bP=nil end a0(aO.
Heartbeat,function()if not aR then return end local b7,b8,b9=aJ.actor()if bP and
(bP~=b9 or not aW.speed)then if bP.Parent then bP.WalkSpeed=bQ end bP=nil end if
b9 and aW.speed then if bP~=b9 then bP=b9 bQ=b9.WalkSpeed end b9.WalkSpeed=aV.
speed end if not b7 or not aW.noclip then bZ()else for ca,cb in ipairs(b7:
GetDescendants())do if cb:IsA('\066\097\115\101\080\097\114\116')then if bU[cb]==nil then bU[cb]=cb.
CanCollide end cb.CanCollide=false end end end if not b8 or not aW.fly then bY()
else if bR~=b8 then bY()bR=b8 bS=a1('\065\116\116\097\099\104\109\101\110\116',{},b8)bT=a1('\076\105\110\101\097\114\086\101\108\111\099\105\116\121',{
Attachment0=bS,MaxForce=1e7,RelativeTo=Enum.ActuatorRelativeTo.World},b8)end
local ca=b9.MoveDirection local cb=workspace.CurrentCamera if ca.Magnitude>0.1
and cb then ca=Vector3.new(ca.X,cb.CFrame.LookVector.Y*ca.Magnitude,ca.Z)end
local cc=bA if not aN:GetFocusedTextBox()then if aN:IsKeyDown(Enum.KeyCode.Space
)then cc+=1 end if aN:IsKeyDown(Enum.KeyCode.LeftControl)then cc-=1 end end bT.
VectorVelocity=(ca+Vector3.new(0,cc,0))*aV.flySpeed end end)local b7,b8,b9=0,0,0
task.spawn(function()while aR do local ca,cb=pcall(function()local ca,cb,cc=aJ.
actor()if not cb then bX()b3()b4()bO()return end for cd,ce in pairs(bG)do ce.
BackgroundColor3=aW[cd]and Color3.fromRGB(30,85,100)or Color3.fromRGB(20,27,39)
end if not aW.hitbox then b4()else local cd={}local ce=b5(cb,aV.gunRange)if ce
then cd[ce]=true local cf=b_[ce]if not cf then cf={size=ce.Size,box=a1(
'\066\111\120\072\097\110\100\108\101\065\100\111\114\110\109\101\110\116',{Adornee=ce,AlwaysOnTop=true,ZIndex=1,Transparency=0.93,
Color3=Color3.fromRGB(110,190,255)},by)}b_[ce]=cf end ce.Size=Vector3.new(aV.
hitboxSize,aV.hitboxSize,aV.hitboxSize)cf.box.Size=ce.Size end for cf,cg in
pairs(b_)do if not cd[cf]then if cf.Parent then cf.Size=cg.size end cg.box:
Destroy()b_[cf]=nil end end end local cd=false for ce,cf in pairs(aY)do if cf.
enabled then cd=true end end if cd and os.clock()-b7>30 then b7=os.clock()bL()
end if cd and os.clock()-b8>0.3 then b8=os.clock()local ce={}for cf,cg in
ipairs(game:GetService('\080\108\097\121\101\114\115'):GetPlayers())do if cg~=aM and cg.Character
then bI[cg.Character]='\112\108\097\121\101\114\115'end end for cf,cg in pairs(bI)do if not cf.Parent
or not cf:IsDescendantOf(workspace)then bI[cf]=nil else cg=bJ(cf)or cg bI[cf]=cg
if aY[cg].enabled then local ch=bH(cf)local ci=true local cj=cf:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local ck=cj and cj.Health or cf:GetAttribute(
'\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')if aV.hideDead and aG(cg,ck,cf:GetAttribute('\067\097\116\101\103\111\114\121'),cf:
GetAttribute('\067\111\114\112\115\101\077\097\120\072\101\097\108\116\104'),cf:GetAttribute('\067\111\114\112\115\101\080\108\097\121\101\114\085\115\101\114\073\100'))then ci=
false end if aV.hideAttached and(cg=='\105\116\101\109\115'or cg=='\115\099\114\097\112')and(cf:GetAttribute(
'\087\101\108\100\101\100')==true or cf:GetAttribute('\068\114\105\108\108\087\101\108\100\067\111\108\108\105\115\105\111\110\083\117\112\112\114\101\115\115\101\100')==true)then ci
=false end if cg=='\111\114\101\115'then local cl=tostring(cf:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101')
or cf.Name):lower()ci=false for cm in aV.oreFilter:gmatch('\091\094\044\093\043')do if cl:find(
cm:match('\094\037\115\042\040\046\045\041\037\115\042\036'):lower(),1,true)then ci=true end end end if ch and ci
then local cl=(ch.Position-cb.Position).Magnitude if cl<=aV.maxDistance then ce[
#ce+1]={o=cf,kind=cg,anchor=ch,distance=cl}end end end end end table.sort(ce,
function(cf,cg)local ch,ci=bl(cf.kind),bl(cg.kind)if ch~=ci then return ch<ci
end return cf.distance<cg.distance end)local cf={}for cg=1,math.min(#ce,aV.
maxESP)do local ch=ce[cg]local ci=ch.o cf[ci]=true if bM[ci]and bM[ci].style~=aV
.style then bN(ci)end local cj=bM[ci]if not cj then cj={style=aV.style}bM[ci]=cj
cj.billboard=a1('\066\105\108\108\098\111\097\114\100\071\117\105',{Adornee=ch.anchor,AlwaysOnTop=true,Size=UDim2.
fromOffset(220,48),StudsOffset=Vector3.new(0,3,0)},by)cj.text=a1('\084\101\120\116\076\097\098\101\108',{
Size=UDim2.fromScale(1,1),BackgroundTransparency=1,TextSize=12,RichText=true,
TextStrokeTransparency=0.3,Font=Enum.Font.GothamBold,TextWrapped=true},cj.
billboard)if aV.style=='\066\111\120'then cj.visual=a1('\066\111\120\072\097\110\100\108\101\065\100\111\114\110\109\101\110\116',{Adornee=ch.
anchor,AlwaysOnTop=true,ZIndex=5,Transparency=0.65},by)else cj.visual=a1(
'\072\105\103\104\108\105\103\104\116',{Adornee=ci,DepthMode=Enum.HighlightDepthMode.AlwaysOnTop,
FillTransparency=0.85},by)end end local ck=a2(aY[ch.kind].color)local cl=ci:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cm=cl and cl.Health or ci:GetAttribute(
'\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')local cn=false local co=tostring(ci:GetAttribute('\082\101\097\108\078\097\109\101')or
ci.Name)cj.billboard.Adornee=ch.anchor if ch.kind=='\111\114\101\115'then local cp=tostring(
ci:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101')or ci:GetAttribute('\082\101\097\108\078\097\109\101')or ci.Name)local
cq={Coal='\067\097\114\118\u{e3}\111',Iron='\070\101\114\114\111',Gold='\079\117\114\111',Diamond='\068\105\097\109\097\110\116\101',Emerald=
'\069\115\109\101\114\097\108\100\097',Ruby='\082\117\098\105'}for cr,cs in pairs(cq)do if cp:lower():find(cr:lower(),1
,true)then co=aL(cs,cr)break end end cn=aP:HasTag(ci,'\087\111\114\109')or ci:
FindFirstChild('\087\111\114\109',true)~=nil if cn then co=co..aL('\032\105\110\102\101\115\116\097\100\111','\032\105\110\102\101\115\116\101\100')
end elseif ch.kind=='\099\104\117\114\099\104'then co=aL('\073\103\114\101\106\097','\067\104\117\114\099\104')elseif ch.kind==
'\109\105\109\105\099\115'then co=aL('\091\033\093\032\077\u{ed}\109\105\099\111','\091\033\093\032\077\105\109\105\099')end co=co:gsub('\038','\038\097\109\112\059'):
gsub('\060','\038\108\116\059'):gsub('\062','\038\103\116\059')cj.billboard.Size=UDim2.fromOffset(260,aV.
textSize*4)if not cj.worm then cj.worm=a1('\070\114\097\109\101',{Size=UDim2.fromOffset(22,22),
Position=UDim2.fromOffset(-22,0),BackgroundTransparency=1,Visible=false},cj.
billboard)for cp=0,4 do local cq=a1('\070\114\097\109\101',{Size=UDim2.fromOffset(7,7),Position
=UDim2.fromOffset(cp*4,8+math.sin(cp)*4),BackgroundColor3=Color3.fromRGB(225,145
,190),BorderSizePixel=0},cj.worm)a1('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},cq)
end cj.mimic=a1('\070\114\097\109\101',{Size=UDim2.fromOffset(22,18),Position=UDim2.fromOffset(
-24,0),BackgroundColor3=Color3.fromRGB(125,65,45),Visible=false},cj.billboard)
a1('\085\073\083\116\114\111\107\101',{Color=Color3.fromRGB(255,185,75),Thickness=1.5},cj.mimic)a1(
'\070\114\097\109\101',{Size=UDim2.fromOffset(20,7),Position=UDim2.fromOffset(1,6),
BackgroundColor3=Color3.fromRGB(30,15,20),BorderSizePixel=0},cj.mimic)for cp=0,3
do a1('\070\114\097\109\101',{Size=UDim2.fromOffset(3,4),Position=UDim2.fromOffset(2+cp*5,6),
BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=0},cj.mimic)end end cj.worm.
Visible=cn cj.mimic.Visible=ch.kind=='\109\105\109\105\099\115'cj.text.TextSize=aV.textSize cj.
text.Text=string.format('\037\115\032\u{b7}\032\060\102\111\110\116\032\099\111\108\111\114\061\034\035\037\115\034\062\037\100\032\115\116\117\100\115\060\047\102\111\110\116\062\037\115',co,aV.
distanceColor,ch.distance,cm and string.format('\n\072\080\032\037\046\048\102',cm)or'')cj.text.
TextColor3=ck if aV.style=='\066\111\120'then cj.visual.Color3=ck cj.visual.Adornee=ch.
anchor if ci:IsA('\077\111\100\101\108')then local cp,cq=ci:GetBoundingBox()cj.visual.Size=cq
cj.visual.CFrame=ch.anchor.CFrame:ToObjectSpace(cp)else cj.visual.Size=ci.Size
end else cj.visual.FillColor=ck cj.visual.OutlineColor=ck end end local cg={}for
ch in pairs(bM)do if not cf[ch]then cg[#cg+1]=ch end end for ch,ci in ipairs(cg)
do bN(ci)end elseif not cd then bO()end local ce=aJ.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local
cf=ce and ce.ActiveTool local cg=cf and type(cf.Shoot)=='\102\117\110\099\116\105\111\110'and cf.Tool
and(cf.Tool.Name:find('\082\105\102\108\101',1,true)or cf.Tool.Name:find('\082\101\118\111\108\118\101\114',1,true)or
cf.Tool.Name:find('\083\104\111\116\103\117\110',1,true))if aW.silentAim and cg then local ch=aJ.
ctrl('\067\097\109\101\114\097\067\111\110\116\114\111\108\108\101\114')if ch and type(ch.GetAimRay)=='\102\117\110\099\116\105\111\110'and b0~=ch then
b3()b0=ch b1=ch.GetAimRay local ci=b1 b2=function(cj,...)local ck=ci(cj,...)
local cl,cm=aJ.actor()local cn=aJ.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local co=cn and cn.
ActiveTool if not aR or not aW.silentAim or not cm or not co or type(co.Shoot)~=
'\102\117\110\099\116\105\111\110'or not ck then return ck end local cp=b5(cm,aV.gunRange)if cp and(cp.
Position-ck.Origin).Magnitude>0.01 then return Ray.new(ck.Origin,(cp.Position-ck
.Origin).Unit)end return ck end ch.GetAimRay=b2 end else b3()end local ch=aJ.
ctrl('\085\073\067\111\110\116\114\111\108\108\101\114')local ci=not workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')and not aN:
GetFocusedTextBox()and not(ch and ch.ActiveFrame and ch.ActiveFrame.Visible)if
aW.autoMove and ci and not cc.SeatPart and not aW.fly then local cj=b5(cb,150)if
cj then local ck=Vector3.new(cb.Position.X-cj.Position.X,0,cb.Position.Z-cj.
Position.Z)if ck.Magnitude<0.01 then ck=Vector3.new(0,0,1)end local cl=cj.
Position+ck.Unit*aV.combatDistance if math.abs((cb.Position-cj.Position).
Magnitude-aV.combatDistance)>1.5 then cc:MoveTo(Vector3.new(cl.X,cb.Position.Y,
cl.Z))end end end if aW.autoFire and cg and ci and b5(cb,aV.gunRange)then cf:
Shoot()end local cj=aW.aura or aW.oreAura or aW.autoMove if bV and(bV~=cf or not
cj)then bX()end local ck=aJ.ctrl('\085\073\067\111\110\116\114\111\108\108\101\114')if cj and cf and cf.Tool and
type(cf.Swing)=='\102\117\110\099\116\105\111\110'and not workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')and not aN
:GetFocusedTextBox()and not(ck and ck.ActiveFrame and ck.ActiveFrame.Visible)
then local cl=cf.Tool.Name:find('\080\105\099\107\097\120\101',1,true)~=nil if aW.aura or aW.autoMove
or aW.oreAura and cl then if type(cf.Range)=='\110\117\109\098\101\114'then if bV~=cf then bV=cf
bW=cf.Range end cf.Range=aW.autoMove and math.max(aV.reach,aV.combatDistance+2)
or aV.reach end local cm,cn=nil,aW.autoMove and math.max(aV.reach,aV.
combatDistance+2)or aV.reach local co=workspace:FindFirstChild('\078\112\099')if aW.aura
or aW.autoMove then for cp,cq in ipairs(co and co:GetChildren()or{})do local cr=
bJ(cq)local cs=bH(cq)local ct=cq:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cu=ct
and ct.Health or cq:GetAttribute('\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')or 0 local cv=cq:
GetAttribute('\083\101\115\115\105\111\110\070\117\101\108\076\101\101\099\104\073\100')~=nil local cw=not cv or(aM:GetAttribute(
'\073\110\068\117\110\103\101\111\110')~=true and cq:GetAttribute('\070\117\101\108\076\101\101\099\104\086\117\108\110\101\114\097\098\108\101')==true)if cw and(cr
=='\109\111\098\115'or cr=='\109\105\109\105\099\115')and cs and cu>0 then local cx=(cb.Position-cs.Position).
Magnitude if cx<cn then cm=cs cn=cx end end end end if cm and aV.position~='\079\102\102'
and not aW.fly and not aW.autoMove and not cc.SeatPart and os.clock()-b9>0.4
then b9=os.clock()local cp=aV.position=='\065\098\111\118\101'and Vector3.new(0,aV.offset,0)or-
cm.CFrame.LookVector*aV.offset ca:PivotTo(CFrame.lookAt(cm.Position+cp,cm.
Position,aV.position=='\065\098\111\118\101'and cm.CFrame.RightVector or Vector3.yAxis))end if
cm or aW.oreAura and cl then cf:Swing()end end end end)if not ca then aJ.say(aL(
'\067\111\110\116\114\111\108\101\115\032\097\118\097\110\u{e7}\097\100\111\115\058\032','\065\100\118\097\110\099\101\100\032\099\111\110\116\114\111\108\115\058\032')..tostring(cb))end task.wait(
0.15)end end)return{stop=b6,cleanup=function()aR=false b6()for ca,cb in ipairs(
aS)do cb:Disconnect()end bO()bz:Destroy()end}end local function aI(aJ,aK,aL,aM,
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
'\080\097\114\097\114\032\108\111\103\u{ed}\115\116\105\099\097','\083\116\111\112\032\108\111\103\105\115\116\105\099\115'),46)local function a7()aS+=1 aU=false aV
=false a4(false)end a1(a6.Activated,a7)a1(a3.Activated,function()aU=not aU a4(aU
)a0(aU and
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
bk or not bl or not bm then return end for bn,bo in ipairs(bk:GetChildren())do
local bp=a8(bo)if bp and not aY[bo]and(bc(bp,bo)or bo:GetAttribute(
'\068\114\105\108\108\087\101\108\100\067\111\108\108\105\115\105\111\110\083\117\112\112\114\101\115\115\101\100')==true)and not aP:HasTag(bo,'\083\104\111\112\073\116\101\109')and not bo
:GetAttribute('\065\100\118\101\110\116\117\114\101\081\117\101\115\116\080\114\111\116\101\099\116\101\100')and not bo:GetAttribute('\068\101\097\116\104\067\104\101\115\116')and
not bo:GetAttribute('\067\114\097\102\116\101\100\080\108\097\099\101\097\098\108\101')then local bq=bo:GetAttribute('\086\097\108\117\101')if
type(bq)=='\110\117\109\098\101\114'then bq=math.round(bm.ScaleByCharges(bq,bo:GetAttribute(
'\070\114\111\109\084\111\111\108\095\073\116\101\109\067\104\097\114\103\101\115')or bl.GetAttribute(bo,'\073\116\101\109\067\104\097\114\103\101\115'),bo:GetAttribute(
'\070\114\111\109\084\111\111\108\095\077\097\120\073\116\101\109\067\104\097\114\103\101\115')or bl.GetAttribute(bo,'\077\097\120\073\116\101\109\067\104\097\114\103\101\115')))local br=bq>=
aW and'\083\101\108\108\080\097\114\116'or bl.GetAttribute(bo,'\067\097\116\101\103\111\114\121')=='\083\099\114\097\112'and'\083\099\114\097\112\067\111\108\108\101\099\116\111\114'or
nil local bs=br and bd(br,bh)if bs then aY[bo]=true if bo:GetAttribute('\087\101\108\100\101\100')
==true then local bt=aL.await(aL.service('\068\114\097\103\083\101\114\118\105\099\101'):Weld(bo))if bt~=
'\100\101\116\097\099\104\101\100'or not ba(bf)or not aU then return end end local bt=aL.await(aL.
service('\068\114\097\103\083\101\114\118\105\099\101'):Request(bo))if not ba(bf)or not aU then if bt then pcall(
function()aL.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)end return end if bt==true
and bo.Parent and bs.Parent then bo:PivotTo(bs.CFrame*CFrame.new(0,bs.Size.Y*0.5
+1,0))task.wait()pcall(function()aL.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)
local bu=bb(bf,function()return not bo:IsDescendantOf(workspace)end,3)a0(bu and
'\073\116\101\109\032\112\114\111\099\101\115\115\097\100\111\032\112\101\108\097\032\101\115\116\097\u{e7}\u{e3}\111\046'or
'\069\115\116\097\u{e7}\u{e3}\111\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\111\032\112\114\111\099\101\115\115\097\109\101\110\116\111\059\032\105\116\101\109\032\110\u{e3}\111\032\115\101\114\u{e1}\032\114\101\112\101\116\105\100\111\032\110\101\115\116\097\032\115\101\115\115\u{e3}\111\046'
,bu and'\073\116\101\109\032\112\114\111\099\101\115\115\101\100\032\098\121\032\115\116\097\116\105\111\110\046'or
"\083\116\097\116\105\111\110\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\112\114\111\099\101\115\115\105\110\103\059\032\105\116\101\109\032\119\105\108\108\032\110\111\116\032\098\101\032\114\101\116\114\105\101\100\032\116\104\105\115\032\115\101\115\115\105\111\110\046")
end return end end end end end local function bf(bg)local bh=bg.Parent if bh and
bh:IsA('\065\116\116\097\099\104\109\101\110\116')then return bh.WorldCFrame end local bi=a8(bh)return bi and
bi.CFrame end local function bg(bh,bi,bj)assert(bi and bi.Parent and bi.Enabled
and type(fireproximityprompt)=='\102\117\110\099\116\105\111\110',aN(
'\080\111\114\116\097\108\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\047\098\108\111\113\117\101\097\100\111\046','\080\111\114\116\097\108\032\117\110\097\118\097\105\108\097\098\108\101\047\108\111\099\107\101\100\046'))local bk=aL.
actor()local bl=bf(bi)assert(bk and bl,'\080\111\114\116\097\108\032\112\111\115\105\116\105\111\110\032\117\110\097\118\097\105\108\097\098\108\101')bk:PivotTo(
bl*CFrame.new(0,2,3))task.wait(0.4)assert(ba(bh),'\083\116\111\112\112\101\100')fireproximityprompt(
bi)assert(bb(bh,function()return(aO:GetAttribute('\073\110\068\117\110\103\101\111\110')==true)==bj end,8),
aN('\079\032\106\111\103\111\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\097\032\112\097\115\115\097\103\101\109\032\112\101\108\111\032\112\111\114\116\097\108\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\112\111\114\116\097\108\032\116\114\097\110\115\105\116\105\111\110\046'))end a1(a5.Activated,function()if
aV then return end aS+=1 local bh=aS aV=true aU=false a4(false)aL.pauseCombat()
task.spawn(function()local bi,bj=pcall(function()assert(aO:GetAttribute(
'\073\110\068\117\110\103\101\111\110')==true,aN('\069\110\116\114\101\032\112\114\105\109\101\105\114\111\032\110\097\032\068\117\110\103\101\111\110\046','\069\110\116\101\114\032\116\104\101\032\068\117\110\103\101\111\110\032\102\105\114\115\116\046'))
local bi=aL.ctrl('\068\117\110\103\101\111\110\085\073\067\111\110\116\114\111\108\108\101\114')local bj=bi and bi._BoundDungeon local bk
=assert(a9('\068\117\110\103\101\111\110\068\111\111\114\083\116\097\116\101'))local bl,bm bj=bj and(bk.GetRoot(bj)or bj)if not(
bj and bj.Parent)then local bn=aO:GetAttribute(
'\065\099\116\105\118\101\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')for bo,bp in ipairs(aP:GetTagged(
'\068\117\110\103\101\111\110\068\111\111\114'))do local bq=bk.GetRoot(bp)if bq and bn and(bq:GetAttribute(
'\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')==bn or bq:GetAttribute('\083\101\115\115\105\111\110\068\117\110\103\101\111\110\073\100')==bn)
then bj=bq break end end end assert(bj and bj.Parent,aN(
'\068\117\110\103\101\111\110\032\110\u{e3}\111\032\105\100\101\110\116\105\102\105\099\097\100\097\046\032\069\110\116\114\101\032\112\101\108\111\032\112\111\114\116\097\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046',
'\068\117\110\103\101\111\110\032\110\111\116\032\105\100\101\110\116\105\102\105\101\100\046\032\069\110\116\101\114\032\116\104\114\111\117\103\104\032\105\116\115\032\112\111\114\116\097\108\032\097\110\100\032\114\101\116\114\121\046'))for bn,bo in
ipairs(aP:GetTagged('\068\117\110\103\101\111\110\068\111\111\114'))do if bk.GetRoot(bo)==bj then bl=bo:
FindFirstChild('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116',true)bm=bo:FindFirstChild('\068\117\110\103\101\111\110\069\120\105\116\080\114\111\109\112\116',
true)if bl and bm then break end end end local bn=aL.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local
bo=bn and bn.ActiveTool if not(bo and bo.IsSack)then local bp=aO:FindFirstChild(
'\066\097\099\107\112\097\099\107')local bq,br,bs=aL.actor()for bt,bu in ipairs(bp and bp:GetChildren()
or{})do if bu:IsA('\084\111\111\108')and(bu.Name=='\083\097\099\107'or bu:GetAttribute('\073\116\101\109\068\097\116\097\098\097\115\101\073\100')
=='\083\097\099\107')then bs:EquipTool(bu)break end end bb(bh,function()bo=bn and bn.
ActiveTool return bo and bo.IsSack end,4)end assert(bo and bo.IsSack and type(bo
.CanStoreTarget)=='\102\117\110\099\116\105\111\110',aN('\069\113\117\105\112\101\032\111\032\115\097\099\111\032\112\097\114\097\032\099\111\108\101\116\097\114\046',
'\069\113\117\105\112\032\116\104\101\032\115\097\099\107\032\116\111\032\099\111\108\108\101\099\116\046'))local bp=assert(a9('\083\097\099\107\067\111\110\102\105\103'))local br=aO:
GetAttribute('\065\099\116\105\118\101\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')or bj:GetAttribute(
'\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')local bs=bj:GetAttribute('\083\101\115\115\105\111\110\068\117\110\103\101\111\110\073\100')local
bt,bu if bj:IsA('\077\111\100\101\108')then bt,bu=bj:GetBoundingBox()end local function bv(bw)
local bx=bw:GetAttribute('\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')or bw:GetAttribute(
'\083\101\115\115\105\111\110\068\117\110\103\101\111\110\073\100')local by=a8(bw)local bz=by and bt and bt:PointToObjectSpace(
by.Position)local bA=bu and bu*0.5+Vector3.new(4,4,4)return aI(bx,br,bs,bw:
IsDescendantOf(bj),bz,bA)end local bw={}local bx={}local by=0 local bz=0 local
bA=nil local function bB()assert(bl and bm and bm.Parent and bm.Enabled,aN(
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
'\046\032\084\097\107\101\032\099\111\110\116\114\111\108\059\032\114\101\115\116\097\114\116\032\097\102\116\101\114\032\116\104\101\032\098\111\115\115\046')end)if aR and aS==bh then aV=false if
not bi then a0('\076\111\103\u{ed}\115\116\105\099\097\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(bj),
'\076\111\103\105\115\116\105\099\115\032\115\116\111\112\112\101\100\058\032'..tostring(bj))end end end)end)local bh=5000 local bi=100
aM.label(aZ,'\084\101\120\116\076\097\098\101\108',aN(
'\082\111\116\097\032\100\101\032\098\097\u{fa}\115\058\032\118\105\115\105\116\097\032\098\097\u{fa}\115\032\101\032\088\032\099\097\114\114\101\103\097\100\111\115\032\102\111\114\097\032\100\097\115\032\068\117\110\103\101\111\110\115\046\032\085\115\097\032\111\115\032\112\114\111\109\112\116\115\032\100\111\032\106\111\103\111\044\032\097\116\u{e9}\032\111\032\108\105\109\105\116\101\032\100\101\032\100\105\115\116\u{e2}\110\099\105\097\044\032\101\032\118\111\108\116\097\032\u{e0}\032\098\114\111\099\097\046\032\078\u{e3}\111\032\103\097\114\097\110\116\101\032\067\111\114\101\115\032\112\111\114\032\098\097\u{fa}\046'
,
"\067\104\101\115\116\032\114\111\117\116\101\058\032\118\105\115\105\116\115\032\108\111\097\100\101\100\032\099\104\101\115\116\115\032\097\110\100\032\088\032\115\112\111\116\115\032\111\117\116\115\105\100\101\032\068\117\110\103\101\111\110\115\046\032\085\115\101\115\032\103\097\109\101\032\112\114\111\109\112\116\115\032\119\105\116\104\105\110\032\116\104\101\032\100\105\115\116\097\110\099\101\032\108\105\109\105\116\044\032\116\104\101\110\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\100\114\105\108\108\046\032\067\111\114\101\115\032\112\101\114\032\099\104\101\115\116\032\097\114\101\032\110\111\116\032\103\117\097\114\097\110\116\101\101\100\046"
),85,50)local bj=aM.label(aZ,'\084\101\120\116\066\111\120',tostring(bh),40,51)a1(bj.FocusLost,
function()local bk=tonumber(bj.Text)if bk and bk==bk then bh=math.clamp(bk,100,
50000)end bj.Text=tostring(bh)end)local bk=aM.button(aZ,aN(
'\073\110\105\099\105\097\114\032\114\111\116\097\032\100\101\032\098\097\u{fa}\115\032\099\097\114\114\101\103\097\100\111\115\032\047\032\067\111\114\101\115','\083\116\097\114\116\032\108\111\097\100\101\100\032\099\104\101\115\116\032\047\032\067\111\114\101\032\114\111\117\116\101'
),52)a1(bk.Activated,function()if aV then return end aS+=1 local bl=aS aV=true
aU=false a4(false)aL.pauseCombat()task.spawn(function()local bm,bn=pcall(
function()assert(aO:GetAttribute('\073\110\068\117\110\103\101\111\110')~=true,'\076\101\097\118\101\032\116\104\101\032\068\117\110\103\101\111\110\032\102\105\114\115\116')
assert(type(fireproximityprompt)=='\102\117\110\099\116\105\111\110','\080\114\111\109\112\116\032\065\080\073\032\117\110\097\118\097\105\108\097\098\108\101')local bm,
bn=aL.actor()local bo=bn.Position local bp=bn.CFrame.LookVector local br=assert(
a9('\068\117\110\103\101\111\110\068\111\111\114\083\116\097\116\101'))local bs={}local bt=0 local function bu(bv)local bw=os.
clock()+math.min(180,(bn.Position-bv).Magnitude/bi+10)repeat assert(ba(bl)and aO
:GetAttribute('\073\110\068\117\110\103\101\111\110')~=true and not workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101'),
'\082\111\117\116\101\032\105\110\116\101\114\114\117\112\116\101\100')local bx,by,bz=aL.actor()assert(not bz.SeatPart,
'\076\101\097\118\101\032\116\104\101\032\100\114\105\118\101\114\032\115\101\097\116\032\102\105\114\115\116')local bA=bv-by.Position if bA.Magnitude<4 then
return end assert(os.clock()<bw,'\077\111\118\101\109\101\110\116\032\116\105\109\101\100\032\111\117\116')bx:PivotTo(CFrame.new(by.
Position+bA.Unit*math.min(bA.Magnitude,bi*0.05)))task.wait(0.05)until false end
while ba(bl)and bt<100 do local bv,bw,bx=nil,nil,math.huge for by,bz in ipairs(
workspace:GetDescendants())do if bz:IsA('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and bz.Enabled and not
bs[bz]then local bA=bz:GetFullName()local bB=bf(bz)local bC=bA:find('\067\104\101\115\116\078\111\100\101',
1,true)or bA:find('\068\105\103\083\112\111\116',1,true)if bC and bB and not bA:find('\067\117\116\083\099\101\110\101',1,
true)and not bA:find('\068\117\110\103\101\111\110',1,true)and not br.GetRoot(bz)then local bD=bB.
Position-bo local bE=bD:Dot(bp)if bE>=-30 and bD.Magnitude<=bh and bE<bx then bv
=bz bw=bB bx=bE end end end end if not bv then break end bs[bv]=true bu(bw.
Position+Vector3.new(0,3,0))if bv.Parent and bv.Enabled and ba(bl)then
fireproximityprompt(bv)bt+=1 a0('\082\111\116\097\032\100\101\032\098\097\u{fa}\115\058\032'..bt..
'\032\105\110\116\101\114\097\u{e7}\u{f5}\101\115\032\115\111\108\105\099\105\116\097\100\097\115\046','\067\104\101\115\116\032\114\111\117\116\101\058\032'..bt..
'\032\105\110\116\101\114\097\099\116\105\111\110\115\032\114\101\113\117\101\115\116\101\100\046')bb(bl,function()return not bv.Parent or not bv.
Enabled end,3)end end assert(ba(bl),'\083\116\111\112\112\101\100')local bv=workspace:FindFirstChild(
'\068\114\105\108\108')local bw=bv and(bv:FindFirstChild('\066\111\100\121')or bv.PrimaryPart)assert(bw and
bw:IsA('\066\097\115\101\080\097\114\116'),'\068\114\105\108\108\032\110\111\116\032\108\111\097\100\101\100\032\102\111\114\032\114\101\116\117\114\110')bu(bw.Position+Vector3.new(0,bw
.Size.Y*0.5+4,0))a0(
'\082\111\116\097\032\099\111\110\099\108\117\u{ed}\100\097\059\032\114\101\116\111\114\110\111\032\u{e0}\032\098\114\111\099\097\046\032\073\110\116\101\114\097\u{e7}\u{f5}\101\115\058\032'..bt,
'\082\111\117\116\101\032\099\111\109\112\108\101\116\101\059\032\114\101\116\117\114\110\101\100\032\116\111\032\100\114\105\108\108\046\032\073\110\116\101\114\097\099\116\105\111\110\115\058\032'..bt)end)if aR and aS==bl
then aV=false if not bm then a0('\082\111\116\097\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(bn),
'\082\111\117\116\101\032\115\116\111\112\112\101\100\058\032'..tostring(bn))end end end)end)task.spawn(function()while aR do
if aU and not aV then local bl=aS local bm,bn=pcall(be,bl)if not bm then a7()a0(
'\086\101\110\100\097\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(bn),'\083\101\108\108\105\110\103\032\115\116\111\112\112\101\100\058\032'..tostring(bn))end end
task.wait(aU and not aV and 0.05 or 0.5)end end)return{stop=a7,cleanup=function(
)aR=false a7()for bl,bm in ipairs(aT)do bm:Disconnect()end end}end local
function aK(aL,aM,aN,aO)local aP={}local aQ,aR,aS=0,0,0 local aT,aU=0,0 for aV,
aW in ipairs(aL)do local aX,aY,aZ=aW.X+0.25,aW.Z+0.25,aW.Y+0.15 if aX>aM or aY>
aN or aZ>aO then return nil,aV end if aQ+aX>aM then aQ=0 aR+=aT aT=0 end if aR+
aY>aN then aQ=0 aR=0 aS+=aU aT=0 aU=0 end if aS+aZ>aO then return nil,aV end aP[
aV]=Vector3.new(-aM*0.5+aQ+aX*0.5,-aO*0.5+aS+aZ*0.5,-aN*0.5+aR+aY*0.5)aQ+=aX aT=
math.max(aT,aY)aU=math.max(aU,aZ)end return aP end local function aL(aM,aN)local
aO,aP=aM.ui,aM.T local aQ=game:GetService('\067\111\108\108\101\099\116\105\111\110\083\101\114\118\105\099\101')local aR=game:
GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local aS=true local aT=false local aU=0 local aV=
{}local aW={}local aX={}local aY={}local aZ={}local a_ local a0=aM.section(
'\076\111\106\097')aO.label(a0,'\084\101\120\116\076\097\098\101\108',aP(
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
Destroy()end table.clear(aX)end local function a9()aU+=1 aT=false end a5(a4.
Activated,a9)local function ba(bb)return bb:IsA('\066\097\115\101\080\097\114\116')and bb or bb:IsA(
'\077\111\100\101\108')and(bb.PrimaryPart or bb:FindFirstChildWhichIsA('\066\097\115\101\080\097\114\116',true))end
local function bb(bc,bd)local be,bf=bd,nil for bg,bh in ipairs(aQ:GetTagged(
'\066\117\121\080\097\114\116'))do if bh:IsA('\066\097\115\101\080\097\114\116')and bh:IsDescendantOf(workspace)and not bh:
GetFullName():find('\067\117\116\083\099\101\110\101',1,true)then local bi=(bc-bh.Position).Magnitude if
bi<be then be=bi bf=bh end end end return bf end local function bc()local bd,be=
0,0 for bf,bg in ipairs(aY)do if aZ[bg.item]then bd+=1 be+=bg.cost end end a6(
string.format(aP(
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
)end end)a5(a3.Activated,function()if aT then return end aT=true aU+=1 local bd=
aU aN.pauseCombat()task.spawn(function()local be,bf=pcall(function()assert(a_
and a_.Parent,'\082\101\108\111\097\100\032\116\104\101\032\115\104\111\112\032\102\105\114\115\116')local be={}for bf,bg in ipairs(aY)do if aZ
[bg.item]then assert(bg.item:IsDescendantOf(workspace)and aQ:HasTag(bg.item,
'\083\104\111\112\073\116\101\109'),'\083\116\111\099\107\032\099\104\097\110\103\101\100\059\032\114\101\108\111\097\100\032\115\104\111\112')local bh,bi if bg.item:IsA('\077\111\100\101\108')then
bh,bi=bg.item:GetBoundingBox()else bh,bi=bg.item.CFrame,bg.item.Size end be[#be+
1]={item=bg.item,cf=bh,size=bi}end end assert(#be>0,aP(
'\083\101\108\101\099\105\111\110\101\032\097\111\032\109\101\110\111\115\032\117\109\032\105\116\101\109\046','\083\101\108\101\099\116\032\097\116\032\108\101\097\115\116\032\111\110\101\032\105\116\101\109\046'))table.sort(be,
function(bf,bg)return bf.size.X*bf.size.Z>bg.size.X*bg.size.Z end)local bf={}for
bg,bh in ipairs(be)do bf[#bf+1]=bh.size end local bg=aK(bf,a_.Size.X-0.4,a_.Size
.Z-0.4,a_.Size.Y-0.1)assert(bg,aP(
'\083\101\108\101\u{e7}\u{e3}\111\032\110\u{e3}\111\032\099\097\098\101\032\110\111\032\113\117\097\100\114\097\100\111\046\032\079\114\103\097\110\105\122\101\032\101\109\032\108\111\116\101\115\032\109\101\110\111\114\101\115\046',
'\083\101\108\101\099\116\105\111\110\032\100\111\101\115\032\110\111\116\032\102\105\116\032\116\104\101\032\115\113\117\097\114\101\046\032\083\116\097\103\101\032\115\109\097\108\108\101\114\032\098\097\116\099\104\101\115\046'))local bh,bi=aN.
actor()assert(bi and(bi.Position-a_.Position).Magnitude<=150,
'\065\112\112\114\111\097\099\104\032\116\104\101\032\115\104\111\112\032\102\105\114\115\116')for bj,bk in ipairs(be)do assert(aS and aU==bd,
'\083\116\111\112\112\101\100')local bl=aN.actor()local bm=ba(bk.item)assert(bl and bm and a_.Parent,
'\073\116\101\109\047\099\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101')bl:PivotTo(bm.CFrame*CFrame.new(0,3,4))task.wait(
0.2)assert(aS and aU==bd,'\083\116\111\112\112\101\100')local bn=aN.await(aN.service('\068\114\097\103\083\101\114\118\105\099\101'):
Request(bk.item))if not aS or aU~=bd then if bn then pcall(function()aN.service(
'\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)end error('\083\116\111\112\112\101\100')end assert(bn==true,aP(
'\079\032\106\111\103\111\032\114\101\099\117\115\111\117\032\109\111\118\101\114\032\117\109\032\105\116\101\109\046\032\079\114\103\097\110\105\122\097\u{e7}\u{e3}\111\032\105\110\116\101\114\114\111\109\112\105\100\097\046',
'\071\097\109\101\032\114\101\102\117\115\101\100\032\116\111\032\109\111\118\101\032\097\110\032\105\116\101\109\046\032\083\116\097\103\105\110\103\032\115\116\111\112\112\101\100\046'))local bo,bp=pcall(function()
assert(a_.Parent and bk.item.Parent,'\083\116\111\099\107\032\117\110\108\111\097\100\101\100')bl:PivotTo(a_.CFrame*CFrame
.new(a_.Size.X*0.5+4,1,0))local bo=a_.CFrame*CFrame.new(bg[bj])local bp=bk.cf:
ToObjectSpace(bk.item:GetPivot())bk.item:PivotTo(bo*bp)task.wait(0.3)end)pcall(
function()aN.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)assert(bo,bp)assert(aS and
aU==bd,'\083\116\111\112\112\101\100')a6(string.format(aP(
'\079\114\103\097\110\105\122\097\110\100\111\058\032\037\100\047\037\100\046\032\078\101\110\104\117\109\097\032\099\111\109\112\114\097\032\114\101\097\108\105\122\097\100\097\046',
'\083\116\097\103\105\110\103\058\032\037\100\047\037\100\046\032\078\111\032\112\117\114\099\104\097\115\101\032\109\097\100\101\046'),bj,#be))end a6(
'\073\116\101\110\115\032\112\111\115\105\099\105\111\110\097\100\111\115\046\032\067\111\110\102\105\114\097\032\111\032\113\117\097\100\114\097\100\111\032\101\032\111\032\112\114\101\u{e7}\111\032\110\111\032\099\097\105\120\097\059\032\099\108\105\113\117\101\032\067\079\077\080\082\065\082\032\110\111\032\106\111\103\111\046'
,"\073\116\101\109\115\032\112\111\115\105\116\105\111\110\101\100\046\032\067\104\101\099\107\032\116\104\101\032\115\113\117\097\114\101\032\097\110\100\032\114\101\103\105\115\116\101\114\032\112\114\105\099\101\059\032\099\108\105\099\107\032\066\085\089\032\105\110\032\103\097\109\101\046")
end)if aS and aU==bd then aT=false if not be then a6(
'\079\114\103\097\110\105\122\097\u{e7}\u{e3}\111\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(bf),'\083\116\097\103\105\110\103\032\115\116\111\112\112\101\100\058\032'..
tostring(bf))end end end)end)return{stop=a9,cleanup=function()aS=false a9()a8()
for bd,be in ipairs(aV)do be:Disconnect()end end}end local aM={}function aM.role
(aN,aO)if aO~=9796898051 then return nil end return({[101906032112547]='\108\111\098\098\121',[
74507545904779]='\114\117\110'})[aN]end function aM.names(aN)local aO={}for aP in
tostring(aN):gmatch('\091\094\044\093\043')do aP=aP:match('\094\037\115\042\040\046\045\041\037\115\042\036')if aP~=''then aO[#aO+1
]=aP end end return aO end function aM.offer(aN,aO,aP,aQ)if type(aO)~='\110\117\109\098\101\114'or
aO~=aO then return nil end for aR,aS in ipairs(aQ)do for aT,aU in ipairs(type(aN
)=='\116\097\098\108\101'and aN or{})do if aU.UpgradeName==aS and aU.Type=='\067\111\105\110\115'and type(aU.
Cost)=='\110\117\109\098\101\114'and aU.Cost>=0 and aU.Cost<math.huge and aO-aU.Cost>=aP then
return aU end end end end function aM.selection(aN,aO,aP)local aQ={}local aR=
math.clamp(math.floor(tonumber(aO)or 0),0,100)for aS,aT in ipairs(aP)do for aU,
aV in ipairs(type(aN)=='\116\097\098\108\101'and aN or{})do if aV.Name==aT and aV.Id~=nil and
not aQ[aV.Id]then local aW=math.min(aR,math.max(0,math.floor(tonumber(aV.Count)
or 0)))if aW>0 then aQ[aV.Id]=aW aR-=aW end end end end return aQ end function
aM.medalOffer(aN,aO,aP,aQ)if type(aO)~='\116\097\098\108\101'or type(aO.Medals)~='\110\117\109\098\101\114'or aO.
Medals~=aO.Medals or type(aO.Available)~='\116\097\098\108\101'then return nil end for aR,aS in
ipairs(aQ)do local aT=aN[aS]if aT and type(aT.Cost)=='\110\117\109\098\101\114'and aT.Cost>=0 and
aT.Cost<math.huge and aO.Available[aS]and aO.Medals-aT.Cost>=aP then return aS
end end end function aM.skipRequest(aN)if not aN or not aN.CurrentCutScene or aN
.AbortingCutScene then return nil end local aO=aN.CurrentCutSceneContext if aO
and aO.DisableSkip then return nil end return{name=aN.CurrentCutScene,id=aO and
aO.RuntimeId,private=aO and aO.Private==true and aO.RuntimeId~=nil,session=aN.
CurrentCutSceneSessionId}end local aN=function(aN)local aO=assert(aM.role(game.
PlaceId,game.GameId),'\085\110\115\117\112\112\111\114\116\101\100\032\069\097\114\116\104\032\067\111\114\101\032\112\108\097\099\101')local aP,aQ=aN.ui,aN.T local
aR=game:GetService('\080\108\097\121\101\114\115').LocalPlayer local aS=game:GetService(
'\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local aT=game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local aU=true local
aV={}local aW={swing=false,upgrades=false,craft=false,skip=false,medals=false}
local aX={upgrades=0,craft=0,medals=0}local aY={}local aZ={}local a_,a0,a1 local
a2={reserve=1000,limit=10,priority=
"\084\101\097\109\072\101\097\108\116\104\044\076\105\102\101\083\116\101\097\108\044\068\114\105\108\108\080\111\119\101\114\044\082\080\077\079\118\101\114\099\108\111\099\107\044\083\097\099\107\083\116\111\114\097\103\101\044\068\114\105\118\101\083\112\101\101\100",gear=
'\080\105\099\107\097\120\101\095\071\111\108\100',craftLimit=3,medalReserve=100,medalLimit=10,medalPriority=
'\084\117\114\114\101\116\068\097\109\097\103\101\044\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111'}local a3=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095'..aR.UserId..'\095'..aO..'\046\106\115\111\110'if type(readfile)=='\102\117\110\099\116\105\111\110'
then pcall(function()local a4=aT:JSONDecode(readfile(a3))for a5,a6 in pairs(a2)
do if type(a4[a5])==type(a6)then a2[a5]=a4[a5]end end end)end a2.reserve=math.
clamp(tonumber(a2.reserve)or 1000,0,1e9)a2.limit=math.clamp(tonumber(a2.limit)or
10,1,100)a2.medalReserve=math.clamp(tonumber(a2.medalReserve)or 100,0,1e9)a2.
medalLimit=math.clamp(tonumber(a2.medalLimit)or 10,1,100)a2.craftLimit=math.
clamp(tonumber(a2.craftLimit)or 3,1,100)local function a4()if type(writefile)==
'\102\117\110\099\116\105\111\110'then pcall(writefile,a3,aT:JSONEncode(a2))end end local function a5(a6
,a7)aV[#aV+1]=a6:Connect(a7)end local a6=aN.section('\070\097\114\109')local a7=aP.label(a6,
'\084\101\120\116\076\097\098\101\108',aQ('\067\097\114\114\101\103\097\110\100\111\032\101\115\116\097\100\111\u{2026}','\076\111\097\100\105\110\103\032\115\116\097\116\101\u{2026}'),76,1)local
a8=aP.label(a6,'\084\101\120\116\076\097\098\101\108','',72,2)local function a9(ba,bb)if aU then a8.Text=
aQ(ba,bb or ba)end end local function ba()for bb in pairs(aW)do aW[bb]=false if
aZ[bb]then aZ[bb](false)end end if a_ then a_.stop()end if a0 then a0.stop()end
if a1 then a1.stop()end end aN.attach(function()aU=false ba()if a_ then a_.
cleanup()end if a0 then a0.cleanup()end if a1 then a1.cleanup()end for bb,bc in
ipairs(aV)do bc:Disconnect()end end)aN.quick(ba)local function bb(bc,bd,be,bf,bg
)local bh=aP.button(bc,aQ(bd,be),bf)a5(bh.Activated,function()if aY[bh]then
return end aY[bh]=true task.spawn(function()local bi,bj=pcall(bg)aY[bh]=nil if
not bi then a9(aQ('\070\097\108\104\097\058\032','\070\097\105\108\101\100\058\032')..tostring(bj))end end)end)return bh end
local function bc(bd,be,bf,bg,bh,bi)aP.label(bd,'\084\101\120\116\076\097\098\101\108',aQ(bf,bg),32,bh)
local bj=aP.label(bd,'\084\101\120\116\066\111\120',tostring(a2[be]),42,bh+1)a5(bj.FocusLost,function
()if bi then local bk=tonumber(bj.Text)if bk and bk==bk and bk<math.huge then a2
[be]=math.clamp(math.floor(bk),bi[1],bi[2])end else a2[be]=bj.Text:sub(1,600)end
bj.Text=tostring(a2[be])a4()end)end local function bd(be,bf,bg,bh,bi)local bj,bk
=aP.checkbox(be,aQ(bg,bh),bi)aZ[bf]=bk a5(bj.Activated,function()aW[bf]=not aW[
bf]bk(aW[bf])end)end local be local function bf(bg,bh)if not be then local bi=aS
:FindFirstChild('\080\097\099\107\097\103\101\115')local bj=bi and bi:FindFirstChild('\075\110\105\116')if not bj
then return nil end be=require(bj)end local bi,bj=pcall(bg=='\099\111\110\116\114\111\108\108\101\114'and be.
GetController or be.GetService,bh)return bi and bj or nil end local function bg(
bh)return bf('\099\111\110\116\114\111\108\108\101\114',bh)end local function bh(bi)return assert(bf('\115\101\114\118\105\099\101'
,bi),bi..'\032\117\110\097\118\097\105\108\097\098\108\101')end local function bi(bj)if type(bj)=='\116\097\098\108\101'and type(bj
.await)=='\102\117\110\099\116\105\111\110'then local bk=table.pack(bj:timeout(8):await())if not bk[1]
then error(tostring(bk[2]))end return table.unpack(bk,2,bk.n)end return bj end
local function bj()local bk=aR.Character local bl=bk and bk:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local bm=bk and bk:FindFirstChild(
'\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if bm and bl and bl.Health>0 then return bk,bm,bl end end
local function bk()if aO=='\108\111\098\098\121'then local bl=workspace:FindFirstChild('\076\111\098\098\121')
local bm=bl and bl:FindFirstChild('\079\117\116\101\114\083\116\114\117\099\116\117\114\101\115')return bm and bm:
FindFirstChild('\067\104\117\114\099\104')end return workspace:FindFirstChild('\067\104\117\114\099\104')end local
function bl()local bm=bk()local bn=bm and bm:FindFirstChild('\083\116\114\117\099\116\117\114\101')local bo
=bn and bn:FindFirstChild('\082\105\110\103')local bp=bo and bo:FindFirstChild('\083\097\118\101\071\101\097\114')
return bp and bp:IsA('\066\097\115\101\080\097\114\116')and bp or nil end local bm,bn local function bo(
)local bp=bl()if bp then bm=bp.CFrame bn=workspace:GetAttribute(
'\073\110\102\105\110\105\116\101\068\101\112\116\104\079\102\102\115\101\116\077\101\116\101\114\115')end end bo()local bp,br bb(a6,
'\073\114\032\097\116\u{e9}\032\097\032\105\103\114\101\106\097\032\099\097\114\114\101\103\097\100\097','\071\111\032\116\111\032\108\111\097\100\101\100\032\099\104\117\114\099\104',10,function()local bs,bt=
bj()assert(bs,aQ('\080\101\114\115\111\110\097\103\101\109\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\046','\067\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101\046'))bo()
local bu=bl()if not bu and bm and bn==workspace:GetAttribute(
'\073\110\102\105\110\105\116\101\068\101\112\116\104\079\102\102\115\101\116\077\101\116\101\114\115')then local bv=bt.CFrame bs:PivotTo(bm*CFrame.new(0,3
,5))pcall(function()aR:RequestStreamAroundAsync(bm.Position,5)end)bu=bl()if not
bu then bs:PivotTo(bv)end end assert(bu,aQ(
'\073\103\114\101\106\097\032\097\105\110\100\097\032\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097\046\032\065\032\112\111\115\105\u{e7}\u{e3}\111\032\108\101\109\098\114\097\100\097\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\032\117\109\032\097\108\116\097\114\032\100\105\115\112\111\110\u{ed}\118\101\108\046'
,
"\067\104\117\114\099\104\032\110\111\116\032\108\111\097\100\101\100\046\032\065\032\114\101\109\101\109\098\101\114\101\100\032\112\111\115\105\116\105\111\110\032\100\111\101\115\032\110\111\116\032\099\111\110\102\105\114\109\032\097\110\032\097\118\097\105\108\097\098\108\101\032\097\108\116\097\114\046"
))bp=bt.CFrame br=bs bs:PivotTo(bu.CFrame*CFrame.new(0,3,5))a9(
'\068\101\115\108\111\099\097\109\101\110\116\111\032\115\111\108\105\099\105\116\097\100\111\046\032\067\111\110\102\105\114\097\032\115\117\097\032\112\111\115\105\u{e7}\u{e3}\111\046',
'\077\111\118\101\109\101\110\116\032\114\101\113\117\101\115\116\101\100\046\032\067\104\101\099\107\032\121\111\117\114\032\112\111\115\105\116\105\111\110\046')end)bb(a6,
'\086\111\108\116\097\114\032\u{e0}\032\112\111\115\105\u{e7}\u{e3}\111\032\097\110\116\101\114\105\111\114','\082\101\116\117\114\110\032\116\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110',11,
function()local bs=bj()assert(bs and bs==br and bp,
'\078\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110\032\102\111\114\032\116\104\105\115\032\099\104\097\114\097\099\116\101\114')bs:PivotTo(bp)end)bb(a6,
'\080\097\114\097\114\032\116\111\100\097\115\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115','\083\116\111\112\032\097\108\108\032\097\117\116\111\109\097\116\105\111\110',12,function()ba()a9(
'\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\114\097\100\097\115\046','\065\117\116\111\109\097\116\105\111\110\032\115\116\111\112\112\101\100\046')end)if aO=='\108\111\098\098\121'then aP.
label(a6,'\084\101\120\116\076\097\098\101\108',aQ(
'\076\111\098\098\121\058\032\101\113\117\105\112\097\109\101\110\116\111\115\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\100\101\032\101\120\112\101\100\105\u{e7}\u{e3}\111\032\097\112\097\114\101\099\101\109\032\110\097\032\112\097\114\116\105\100\097\046'
,"\076\111\098\098\121\058\032\101\113\117\105\112\109\101\110\116\046\032\069\120\112\101\100\105\116\105\111\110\032\102\101\097\116\117\114\101\115\032\097\112\112\101\097\114\032\105\110\032\116\104\101\032\103\097\109\101\032\112\108\097\099\101\046"),54,15)bc(
a6,'\103\101\097\114','\078\111\109\101\032\101\120\097\116\111\032\100\111\032\101\113\117\105\112\097\109\101\110\116\111\032\100\111\032\108\111\098\098\121','\069\120\097\099\116\032\108\111\098\098\121\032\101\113\117\105\112\109\101\110\116\032\110\097\109\101',20)
bb(a6,'\069\113\117\105\112\097\114\032\111\032\105\116\101\109\032\105\110\102\111\114\109\097\100\111','\069\113\117\105\112\032\101\110\116\101\114\101\100\032\105\116\101\109',23,function()local bs=aM.
names(a2.gear)[1]assert(bs,'\069\110\116\101\114\032\097\110\032\105\116\101\109\032\110\097\109\101')local bt=bi(bh(
'\076\111\098\098\121\066\097\099\107\112\097\099\107\083\101\114\118\105\099\101'):SetEquipped(bs))a9(bt and aQ('\069\113\117\105\112\097\109\101\110\116\111\032\097\099\101\105\116\111\046',
'\069\113\117\105\112\109\101\110\116\032\097\099\099\101\112\116\101\100\046')or aQ('\079\032\106\111\103\111\032\110\u{e3}\111\032\097\099\101\105\116\111\117\032\111\032\105\116\101\109\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\097\099\099\101\112\116\032\116\104\105\115\032\105\116\101\109\046'))end)else bd(a6,'\115\119\105\110\103',
'\065\117\116\111\032\112\105\099\097\114\101\116\097\032\101\113\117\105\112\097\100\097\032\040\097\108\099\097\110\099\101\032\110\111\114\109\097\108\041','\065\117\116\111\032\101\113\117\105\112\112\101\100\032\112\105\099\107\097\120\101\032\040\110\111\114\109\097\108\032\114\097\110\103\101\041'
,20)aP.label(a6,'\084\101\120\116\076\097\098\101\108',aQ(
"\069\113\117\105\112\101\032\097\032\112\105\099\097\114\101\116\097\032\101\032\097\112\114\111\120\105\109\101\045\115\101\032\100\111\032\097\108\118\111\046\032\082\101\115\112\101\105\116\097\032\111\032\099\111\111\108\100\111\119\110\032\110\097\116\105\118\111\046",
"\069\113\117\105\112\032\121\111\117\114\032\112\105\099\107\097\120\101\032\097\110\100\032\097\112\112\114\111\097\099\104\032\116\104\101\032\116\097\114\103\101\116\046\032\085\115\101\115\032\116\104\101\032\110\097\116\105\118\101\032\099\111\111\108\100\111\119\110\046"),48,21
)local bs=aN.section('\077\101\108\104\111\114\105\097\115')aP.label(bs,'\084\101\120\116\076\097\098\101\108',aQ(
'\079\114\103\097\110\105\122\101\032\097\032\108\105\115\116\097\032\099\111\109\032\u{2191}\047\u{2193}\032\097\098\097\105\120\111\046\032\068\101\115\109\097\114\113\117\101\032\111\032\113\117\101\032\110\u{e3}\111\032\100\101\115\101\106\097\032\099\111\109\112\114\097\114\046'
,
'\082\101\111\114\100\101\114\032\119\105\116\104\032\u{2191}\047\u{2193}\032\098\101\108\111\119\046\032\085\110\099\104\101\099\107\032\117\112\103\114\097\100\101\115\032\121\111\117\032\100\111\032\110\111\116\032\119\097\110\116\032\116\111\032\098\117\121\046'
),50,1)bc(bs,'\114\101\115\101\114\118\101','\082\101\115\101\114\118\097\032\109\u{ed}\110\105\109\097\032\100\101\032\109\111\101\100\097\115','\077\105\110\105\109\117\109\032\099\111\105\110\032\114\101\115\101\114\118\101',4,
{0,1e9})bc(bs,'\108\105\109\105\116','\076\105\109\105\116\101\032\100\101\032\116\101\110\116\097\116\105\118\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\065\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',7,{1,100})bd(bs,'\117\112\103\114\097\100\101\115',
'\065\117\116\111\032\109\101\108\104\111\114\105\097\115\032\099\111\109\032\109\111\101\100\097\115','\065\117\116\111\032\099\111\105\110\032\117\112\103\114\097\100\101\115',10)bc(bs,'\099\114\097\102\116\076\105\109\105\116',
'\076\105\109\105\116\101\032\100\101\032\102\097\098\114\105\099\097\u{e7}\u{e3}\111\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\067\114\097\102\116\032\097\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',12,{1,100})bd(bs,'\099\114\097\102\116',
'\065\117\116\111\032\102\097\098\114\105\099\097\114\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\032\110\111\032\106\111\103\111','\065\117\116\111\032\099\114\097\102\116\032\105\116\101\109\032\115\101\108\101\099\116\101\100\032\105\110\032\103\097\109\101',15)
aP.label(bs,'\084\101\120\116\076\097\098\101\108',aQ(
'\067\114\097\102\116\105\110\103\058\032\097\098\114\097\032\097\032\098\097\110\099\097\100\097\032\101\032\101\115\099\111\108\104\097\032\111\032\105\116\101\109\032\110\111\032\106\111\103\111\046\032\082\111\098\117\120\032\102\105\099\097\032\101\120\099\108\117\u{ed}\100\111\046\032\065\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\099\111\109\101\u{e7}\097\109\032\100\101\115\108\105\103\097\100\097\115\046'
,
"\067\114\097\102\116\105\110\103\058\032\111\112\101\110\032\116\104\101\032\098\101\110\099\104\032\097\110\100\032\115\101\108\101\099\116\032\097\110\032\105\116\101\109\032\105\110\032\103\097\109\101\046\032\082\111\098\117\120\032\105\115\032\101\120\099\108\117\100\101\100\046\032\065\117\116\111\109\097\116\105\111\110\032\115\116\097\114\116\115\032\100\105\115\097\098\108\101\100\046"
),72,16)local bt=aN.section('\073\103\114\101\106\097')bc(bt,'\103\101\097\114',
'\080\114\105\111\114\105\100\097\100\101\032\100\101\032\105\116\101\110\115\032\097\032\115\097\108\118\097\114\032\040\110\111\109\101\115\032\101\120\097\116\111\115\041','\071\101\097\114\032\115\097\118\101\032\112\114\105\111\114\105\116\121\032\040\101\120\097\099\116\032\110\097\109\101\115\041'
,1)local bu=aP.label(bt,'\084\101\120\116\076\097\098\101\108',aQ(
"\083\101\108\101\099\105\111\110\101\032\111\115\032\105\116\101\110\115\032\101\032\114\101\118\105\115\101\032\097\110\116\101\115\032\100\101\032\115\097\108\118\097\114\046\032\083\097\108\118\097\114\032\114\101\116\111\114\110\097\032\097\111\032\108\111\098\098\121\046",
"\083\101\108\101\099\116\032\097\110\100\032\114\101\118\105\101\119\032\103\101\097\114\032\098\101\102\111\114\101\032\115\097\118\105\110\103\046\032\083\097\118\105\110\103\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\108\111\098\098\121\046"),90,5)
local bv=nil local bw={}local bx={}local function by()for bz,bA in ipairs(bx)do
bA:Disconnect()end table.clear(bx)for bz,bA in ipairs(bw)do bA:Destroy()end
table.clear(bw)end aN.attach(function()aU=false ba()by()if a_ then a_.cleanup()
end if a0 then a0.cleanup()end if a1 then a1.cleanup()end for bz,bA in ipairs(aV
)do bA:Disconnect()end end)bb(bt,'\067\097\114\114\101\103\097\114\032\105\110\118\101\110\116\u{e1}\114\105\111\032\101\032\101\115\099\111\108\104\101\114\032\105\116\101\110\115',
'\076\111\097\100\032\105\110\118\101\110\116\111\114\121\032\097\110\100\032\115\101\108\101\099\116\032\105\116\101\109\115',10,function()local bz=assert(bg(
'\083\097\118\101\071\101\097\114\067\111\110\116\114\111\108\108\101\114'),'\083\097\118\101\032\085\073\032\117\110\097\118\097\105\108\097\098\108\101')assert(bz.Loaded and bz.Frame.
Visible and not bz.Pending and not bz.DeathMode,aQ('\065\098\114\097\032\112\114\105\109\101\105\114\111\032\111\032\097\108\116\097\114\046',
'\079\112\101\110\032\116\104\101\032\097\108\116\097\114\032\102\105\114\115\116\046'))local bA=bi(bh('\080\108\097\121\101\114\083\101\114\118\105\099\101'):GetSaveGearChoices())
assert(aU and type(bA)=='\116\097\098\108\101'and bz.Loaded and bz.Frame.Visible and not bz.
Pending and not bz.DeathMode,'\065\108\116\097\114\032\099\108\111\115\101\100')by()bz.Selection={}bz.Limit=math.
max(0,math.floor(tonumber(bA.Limit)or 0))bv=bz local bB={}local function bC()
local bD=0 for bE,bF in pairs(bz.Selection)do bD+=bF end bu.Text=string.format(
aQ("\083\101\108\101\099\105\111\110\097\100\111\115\058\032\037\100\047\037\100\046\032\067\111\110\102\105\114\097\032\097\032\108\105\115\116\097\032\101\032\117\115\101\032\083\065\076\086\065\082\032\112\097\114\097\032\118\111\108\116\097\114\032\097\111\032\108\111\098\098\121\046",
"\083\101\108\101\099\116\101\100\058\032\037\100\047\037\100\046\032\082\101\118\105\101\119\032\116\104\101\032\108\105\115\116\032\097\110\100\032\117\115\101\032\083\065\086\069\032\116\111\032\114\101\116\117\114\110\032\116\111\032\116\104\101\032\108\111\098\098\121\046"),bD,bz
.Limit)bz:UpdateTotal()for bE,bF in ipairs(bB)do bF()end end for bD,bE in
ipairs(bA.Items or{})do if bE.Id~=nil and bE.Count and bE.Count>0 then local bF=
Instance.new('\070\114\097\109\101')bF.Size=UDim2.new(1,-8,0,64)bF.BackgroundTransparency=0.2
bF.BackgroundColor3=Color3.fromRGB(23,31,44)bF.LayoutOrder=100+bD bF.Parent=bt
bw[#bw+1]=bF local bG=Instance.new('\085\073\083\116\114\111\107\101')bG.Color=Color3.fromRGB(77,110,140
)bG.Transparency=0.35 bG.Parent=bF local bH,bI=bz:GetItemDisplay(bE.Name)local
bJ=Instance.new('\073\109\097\103\101\076\097\098\101\108')bJ.Size=UDim2.fromOffset(40,40)bJ.Position=UDim2.
fromOffset(6,10)bJ.BackgroundTransparency=1 bJ.Image=bH or''bJ.Parent=bF local
bK,bL=aP.checkbox(bF,'',1)bK.Size=UDim2.new(1,-150,0,58)bK.Position=UDim2.
fromOffset(50,2)local bM=bK:FindFirstChildWhichIsA('\084\101\120\116\076\097\098\101\108')local function bN
()local bO=bz.Selection[bE.Id]or 0 bL(bO>0)if bM then bM.Text=tostring(bI or bE.
Name)..'\032\u{b7}\032'..bO..'\047'..bE.Count end end bB[#bB+1]=bN local function bO(bP)
if not aU or bv~=bz or not bz.Loaded or not bz.Frame.Visible or bz.Pending or bz
.DeathMode then return end local bQ=0 for bR,bS in pairs(bz.Selection)do bQ+=bS
end local bR=bz.Selection[bE.Id]or 0 if bP>0 and bQ>=bz.Limit then return end bz
.Selection[bE.Id]=math.clamp(bR+bP,0,bE.Count)bC()end bx[#bx+1]=bK.Activated:
Connect(function()if not aU or bv~=bz or bz.Pending or not bz.Frame.Visible then
return end if(bz.Selection[bE.Id]or 0)>0 then bz.Selection[bE.Id]=0 bC()else bO(
1)end end)for bP,bQ in ipairs({-1,1})do local bR=aP.button(bF,bQ<0 and'\u{2212}'
or'\043',2+bP)bR.Size=UDim2.fromOffset(40,42)bR.Position=UDim2.new(1,-94+(bP-1)*46,
0,10)bx[#bx+1]=bR.Activated:Connect(function()bO(bQ)end)end end end bC()end)bb(
bt,'\065\098\114\105\114\032\097\108\116\097\114\032\101\032\099\097\114\114\101\103\097\114\032\105\116\101\110\115','\079\112\101\110\032\097\108\116\097\114\032\097\110\100\032\108\111\097\100\032\103\101\097\114',7,function()local
bz,bA=bj()local bB=bl()assert(bA and bB and(bA.Position-bB.Position).Magnitude<=
20,aQ('\065\112\114\111\120\105\109\101\045\115\101\032\100\111\032\097\108\116\097\114\032\112\114\105\109\101\105\114\111\046','\065\112\112\114\111\097\099\104\032\116\104\101\032\097\108\116\097\114\032\102\105\114\115\116\046'))local bC=
assert(bg('\085\073\067\111\110\116\114\111\108\108\101\114'),'\085\073\032\117\110\097\118\097\105\108\097\098\108\101')bC:ToggleFrame('\083\097\118\101\071\101\097\114',true)bv=nil
bu.Text=aQ('\065\103\117\097\114\100\101\032\097\032\108\105\115\116\097\032\110\097\116\105\118\097\059\032\100\101\112\111\105\115\032\112\114\101\112\097\114\101\032\097\032\115\101\108\101\u{e7}\u{e3}\111\046',
'\087\097\105\116\032\102\111\114\032\116\104\101\032\110\097\116\105\118\101\032\108\105\115\116\044\032\116\104\101\110\032\112\114\101\112\097\114\101\032\116\104\101\032\115\101\108\101\099\116\105\111\110\046')end)bb(bt,
'\080\114\101\112\097\114\097\114\032\115\101\108\101\u{e7}\u{e3}\111\032\112\111\114\032\112\114\105\111\114\105\100\097\100\101','\080\114\101\112\097\114\101\032\115\101\108\101\099\116\105\111\110\032\098\121\032\112\114\105\111\114\105\116\121',8,
function()local bz=assert(bg('\083\097\118\101\071\101\097\114\067\111\110\116\114\111\108\108\101\114'),'\083\097\118\101\032\085\073\032\117\110\097\118\097\105\108\097\098\108\101')assert(
bz.Loaded and bz.Frame.Visible and not bz.Pending and not bz.DeathMode,
'\079\112\101\110\032\116\104\101\032\108\105\118\101\032\097\108\116\097\114\032\085\073\032\102\105\114\115\116')local bA=bi(bh('\080\108\097\121\101\114\083\101\114\118\105\099\101'):
GetSaveGearChoices())assert(aU and type(bA)=='\116\097\098\108\101'and bz.Loaded and bz.Frame.
Visible and not bz.Pending and not bz.DeathMode,
'\067\104\111\105\099\101\115\032\117\110\097\118\097\105\108\097\098\108\101\032\111\114\032\097\108\116\097\114\032\099\108\111\115\101\100')local bB=aM.selection(bA.Items,bA.Limit,aM
.names(a2.gear))local bC=0 for bD,bE in pairs(bB)do bC+=bE end assert(bC>0,aQ(
'\078\101\110\104\117\109\032\105\116\101\109\032\100\105\115\112\111\110\u{ed}\118\101\108\032\099\111\105\110\099\105\100\101\032\099\111\109\032\097\032\108\105\115\116\097\046',
'\078\111\032\097\118\097\105\108\097\098\108\101\032\103\101\097\114\032\109\097\116\099\104\101\115\032\121\111\117\114\032\108\105\115\116\046'))bz.Selection=bB bz:UpdateTotal()bv=bz bu
.Text=string.format(aQ(
'\037\100\032\105\116\101\109\040\110\115\041\032\115\101\108\101\099\105\111\110\097\100\111\115\046\032\082\101\118\105\115\101\032\110\097\032\106\097\110\101\108\097\032\100\111\032\106\111\103\111\046\032\079\032\112\114\u{f3}\120\105\109\111\032\098\111\116\u{e3}\111\032\115\097\108\118\097\032\101\032\115\097\105\046'
,
"\037\100\032\105\116\101\109\040\115\041\032\115\101\108\101\099\116\101\100\046\032\082\101\118\105\101\119\032\105\110\032\116\104\101\032\103\097\109\101\032\119\105\110\100\111\119\046\032\084\104\101\032\110\101\120\116\032\098\117\116\116\111\110\032\115\097\118\101\115\032\097\110\100\032\101\120\105\116\115\046"
),bC)end)bb(bt,'\083\065\076\086\065\082\032\115\101\108\101\u{e7}\u{e3}\111\032\114\101\118\105\115\097\100\097\032\101\032\115\097\105\114',
'\083\065\086\069\032\114\101\118\105\101\119\101\100\032\115\101\108\101\099\116\105\111\110\032\097\110\100\032\101\120\105\116',9,function()local bz=bv local bA,bB=bj()local
bC=bl()assert(aU and bB and bC and(bB.Position-bC.Position).Magnitude<=20 and bz
and bz.Loaded and bz.Frame.Visible and not bz.Pending and not bz.DeathMode,
'\082\101\118\105\101\119\032\103\101\097\114\032\097\116\032\116\104\101\032\097\108\116\097\114\032\119\104\105\108\101\032\097\108\105\118\101\032\102\105\114\115\116')ba()bv=nil bz:Teleport()a9(
'\083\111\108\105\099\105\116\097\u{e7}\u{e3}\111\032\101\110\118\105\097\100\097\046\032\079\032\106\111\103\111\032\099\111\110\102\105\114\109\097\032\101\032\102\097\122\032\111\032\116\101\108\101\112\111\114\116\101\046',
'\082\101\113\117\101\115\116\032\115\101\110\116\046\032\084\104\101\032\103\097\109\101\032\099\111\110\102\105\114\109\115\032\097\110\100\032\116\101\108\101\112\111\114\116\115\032\121\111\117\046')end)end if aO=='\114\117\110'and aH
then a_=aH(aN,{actor=bj,ctrl=bg,say=a9,priority=a2.priority,setPriority=function
(bs)a2.priority=bs a4()end})end if aO=='\114\117\110'and aJ then a0=aJ(aN,{actor=bj,ctrl=
bg,service=bh,await=bi,pauseCombat=function()if a_ then a_.stop()end end})end if
aO=='\114\117\110'and aL then a1=aL(aN,{actor=bj,service=bh,await=bi,pauseCombat=function
()if a_ then a_.stop()end if a0 then a0.stop()end end})end local bs local bt if
aO=='\114\117\110'then bd(a6,'\115\107\105\112','\065\117\116\111\032\118\111\116\097\114\032\112\097\114\097\032\112\117\108\097\114\032\099\117\116\115\099\101\110\101\115',
'\065\117\116\111\032\118\111\116\101\032\116\111\032\115\107\105\112\032\099\117\116\115\099\101\110\101\115',24)aP.label(a6,'\084\101\120\116\076\097\098\101\108',aQ(
'\079\032\112\114\111\103\114\101\115\115\111\032\100\101\112\101\110\100\101\032\100\097\032\098\114\111\099\097\032\101\032\100\097\115\032\112\097\114\101\100\101\115\046\032\084\101\108\101\112\111\114\116\101\032\101\032\118\111\111\032\110\u{e3}\111\032\099\111\110\116\097\109\032\113\117\105\108\u{f4}\109\101\116\114\111\115\046'
,
"\080\114\111\103\114\101\115\115\032\100\101\112\101\110\100\115\032\111\110\032\116\104\101\032\100\114\105\108\108\032\097\110\100\032\119\097\108\108\115\046\032\084\101\108\101\112\111\114\116\105\110\103\032\097\110\100\032\102\108\121\105\110\103\032\100\111\032\110\111\116\032\099\111\117\110\116\032\107\105\108\111\109\101\116\101\114\115\046"
),58,25)bb(a6,'\067\111\110\115\117\108\116\097\114\032\082\080\032\097\116\117\097\108\032\100\097\032\112\097\114\116\105\100\097','\067\104\101\099\107\032\099\117\114\114\101\110\116\032\114\117\110\032\082\080',27,function
()assert(aR:GetAttribute('\082\097\110\107\101\100\082\117\110\065\099\116\105\118\101')==true,aQ(
'\069\115\116\097\032\112\097\114\116\105\100\097\032\110\u{e3}\111\032\u{e9}\032\114\097\110\113\117\101\097\100\097\046','\084\104\105\115\032\114\117\110\032\105\115\032\110\111\116\032\114\097\110\107\101\100\046'))local bu=
bi(bh('\082\097\110\107\101\100\083\101\114\118\105\099\101'):GetRankChange())assert(type(bu)=='\116\097\098\108\101'and type(bu.
DeltaRP)=='\110\117\109\098\101\114','\082\080\032\117\110\097\118\097\105\108\097\098\108\101')a9(string.format(aQ(
'\082\080\032\112\114\111\106\101\116\097\100\111\032\112\101\108\111\032\106\111\103\111\058\032\037\043\100\046\032\078\u{e3}\111\032\115\097\108\118\097\032\110\101\109\032\115\097\105\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046',
"\071\097\109\101\045\112\114\111\106\101\099\116\101\100\032\082\080\058\032\037\043\100\046\032\068\111\101\115\032\110\111\116\032\097\117\116\111\109\097\116\105\099\097\108\108\121\032\115\097\118\101\032\111\114\032\101\120\105\116\046"),bu.DeltaRP))
end)local bu=aN.section('\077\101\108\104\111\114\105\097\115')bc(bu,'\109\101\100\097\108\080\114\105\111\114\105\116\121',
'\077\101\100\097\108\104\097\115\058\032\112\114\105\111\114\105\100\097\100\101\115\032\040\073\068\115\032\115\101\112\097\114\097\100\111\115\032\112\111\114\032\118\u{ed}\114\103\117\108\097\041',
'\077\101\100\097\108\115\058\032\112\114\105\111\114\105\116\105\101\115\032\040\099\111\109\109\097\045\115\101\112\097\114\097\116\101\100\032\073\068\115\041',80)bc(bu,'\109\101\100\097\108\082\101\115\101\114\118\101',
'\082\101\115\101\114\118\097\032\100\101\032\109\101\100\097\108\104\097\115','\077\101\100\097\108\032\114\101\115\101\114\118\101',83,{0,1e9})bc(bu,'\109\101\100\097\108\076\105\109\105\116',
'\076\105\109\105\116\101\032\100\101\032\099\111\109\112\114\097\115\032\100\101\032\109\101\100\097\108\104\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\077\101\100\097\108\032\112\117\114\099\104\097\115\101\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',86,{1,100})bd(bu,'\109\101\100\097\108\115',
'\065\117\116\111\032\109\101\108\104\111\114\105\097\115\032\100\101\032\076\097\114\114\121\032\099\111\109\032\109\101\100\097\108\104\097\115','\065\117\116\111\032\076\097\114\114\121\032\109\101\100\097\108\032\117\112\103\114\097\100\101\115',89)aP.label(
bu,'\084\101\120\116\076\097\098\101\108',aQ(
'\065\098\114\097\032\076\097\114\114\121\032\112\101\114\116\111\032\100\097\032\101\115\116\097\u{e7}\u{e3}\111\046\032\073\068\115\058\032\084\117\114\114\101\116\068\097\109\097\103\101\044\032\070\108\097\109\101\068\117\114\097\116\105\111\110\044\032\070\114\111\115\116\068\117\114\097\116\105\111\110\044\032\070\108\097\109\101\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\070\114\111\115\116\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111\046\032\083\101\109\032\099\111\109\112\114\097\115\032\082\111\098\117\120\046'
,
"\079\112\101\110\032\076\097\114\114\121\032\110\101\097\114\032\116\104\101\032\115\116\097\116\105\111\110\046\032\073\068\115\058\032\084\117\114\114\101\116\068\097\109\097\103\101\044\032\070\108\097\109\101\068\117\114\097\116\105\111\110\044\032\070\114\111\115\116\068\117\114\097\116\105\111\110\044\032\070\108\097\109\101\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\070\114\111\115\116\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111\046\032\078\111\032\082\111\098\117\120\032\112\117\114\099\104\097\115\101\115\046"
),110,90)end local bu,bv=0,0 task.spawn(function()while aU do local bw,bx=pcall(
function()local bw,bx,by=bj()if os.clock()>=bv then bv=os.clock()+2 bo()a7.Text=
string.format(
'\037\115\032\u{b7}\032\080\108\097\099\101\032\037\115\n\037\115\058\032\037\115\032\u{b7}\032\037\115\058\032\037\115\n\037\115\058\032\037\100\047\037\100\032\u{b7}\032\067\114\097\102\116\058\032\037\100\047\037\100',aO==
'\108\111\098\098\121'and'\076\111\098\098\121'or aQ('\069\120\112\101\100\105\u{e7}\u{e3}\111','\069\120\112\101\100\105\116\105\111\110'),game.PlaceId,aQ(
'\086\105\100\097','\072\101\097\108\116\104'),by and math.floor(by.Health)or 0,aQ('\073\103\114\101\106\097','\067\104\117\114\099\104'),bl()and
aQ('\099\097\114\114\101\103\097\100\097','\108\111\097\100\101\100')or aQ('\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097','\110\111\116\032\108\111\097\100\101\100'),aQ(
'\084\101\110\116\097\116\105\118\097\115\032\117\112\103\114\097\100\101','\085\112\103\114\097\100\101\032\097\116\116\101\109\112\116\115'),aX.upgrades,a2.limit,aX.craft,a2.
craftLimit)end if aO~='\114\117\110'or not bx then return end if aW.skip then local bz=aM
.skipRequest(bg('\067\117\116\083\099\101\110\101\067\111\110\116\114\111\108\108\101\114'))if not bz then bs=nil elseif not bs or bs.
name~=bz.name or bs.id~=bz.id or bs.session~=bz.session then bs=bz local bA=bh(
'\067\117\116\083\099\101\110\101\083\101\114\118\105\099\101')if bz.private then bi(bA:VoteSkipPrivate(bz.id,bz.name))else
bi(bA:VoteSkip(bz.name,bz.id))end end end if workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101'
)then return end if aW.swing and not game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101'):
GetFocusedTextBox()then local bz=bg('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local bA=bz and bz.
ActiveTool local bB=bg('\085\073\067\111\110\116\114\111\108\108\101\114')if bA and bA.Tool and bA.Tool.Name:find(
'\080\105\099\107\097\120\101',1,true)and type(bA.Swing)=='\102\117\110\099\116\105\111\110'and not(bB and bB.ActiveFrame and
bB.ActiveFrame.Visible)then bA:Swing()end end if os.clock()<bu then return end
bu=os.clock()+3 if aW.upgrades and aX.upgrades<a2.limit then local bz=bg(
'\068\114\105\108\108\085\112\103\114\097\100\101\067\111\110\116\114\111\108\108\101\114')if bz and not bz.PurchasePending and not bz.CardsLocked
and not bz.ActiveClassReward and bz.OptionsVersion~=nil then local bA=bz.
OptionsVersion local bB=bz.RollToken local bC=bi(bh('\067\117\114\114\101\110\099\121\083\101\114\118\105\099\101'):
GetCurrency())if not aU or not aW.upgrades or bA~=bz.OptionsVersion or bB~=bz.
RollToken or bz.PurchasePending or bz.CardsLocked or bz.ActiveClassReward or not
bj()then return end local bD=aM.offer(bz.Options,bC,a2.reserve,aM.names(a2.
priority))if bD then aX.upgrades+=1 bz:SetPurchasePending(true)local bE,bF=
pcall(function()return bi(bh('\068\114\105\108\108\083\101\114\118\105\099\101'):UpgradeDrill(bD.UpgradeName,bA))end
)if bA==bz.OptionsVersion and bB==bz.RollToken then bz:SetPurchasePending(false)
end if not bE then error(bF)end if not aU then return end if bF=='\112\114\111\109\112\116\101\100'then
aW.upgrades=false aZ.upgrades(false)a9(
'\079\032\106\111\103\111\032\114\101\116\111\114\110\111\117\032\117\109\032\102\108\117\120\111\032\100\101\032\099\111\109\112\114\097\059\032\097\117\116\111\109\097\u{e7}\u{e3}\111\032\100\101\115\097\116\105\118\097\100\097\046',
'\084\104\101\032\103\097\109\101\032\114\101\116\117\114\110\101\100\032\097\032\112\117\114\099\104\097\115\101\032\102\108\111\119\059\032\097\117\116\111\109\097\116\105\111\110\032\100\105\115\097\098\108\101\100\046')else a9(aQ(
'\077\101\108\104\111\114\105\097\032\115\111\108\105\099\105\116\097\100\097\058\032','\085\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\058\032')..bD.UpgradeName)end if type(bz.
FetchUpgradeOptions)=='\102\117\110\099\116\105\111\110'then bz:FetchUpgradeOptions()end end end end if
aW.medals and aX.medals<a2.medalLimit then local bz=bg('\076\097\114\114\121\067\111\110\116\114\111\108\108\101\114')if bz
and bz.Frame and bz.Frame.Visible and not bz.PurchasePending and bz:FindStation(
)then if not bt then local bA=aS:FindFirstChild('\083\104\097\114\101\100')local bB=bA and bA:
FindFirstChild('\076\097\114\114\121\067\111\110\102\105\103')if bB then bt=require(bB).Upgrades end end local bA
=bt and aM.medalOffer(bt,bz.State,a2.medalReserve,aM.names(a2.medalPriority))if
bA then aX.medals+=1 bz:BuyUpgrade(bA)a9(aQ('\077\101\108\104\111\114\105\097\032\099\111\109\032\109\101\100\097\108\104\097\115\032\115\111\108\105\099\105\116\097\100\097\058\032'
,'\077\101\100\097\108\032\117\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\058\032')..bA)end end end if aW.craft and aX.craft<a2.
craftLimit then local bz=bg('\067\114\097\102\116\105\110\103\067\111\110\116\114\111\108\108\101\114')if bz and bz.CurrentItem and
not bz.PendingCraft and bz.Frame and bz.Frame.Visible and not bz:
CanPurchaseWithRobux(bz.CurrentItem)and bz:CanCraft(bz.CurrentItem)then aX.craft
+=1 bz:CraftCurrentItem()a9(
'\070\097\098\114\105\099\097\u{e7}\u{e3}\111\032\115\111\108\105\099\105\116\097\100\097\032\112\097\114\097\032\111\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\046',
'\067\114\097\102\116\032\114\101\113\117\101\115\116\101\100\032\102\111\114\032\116\104\101\032\115\101\108\101\099\116\101\100\032\105\116\101\109\046')end end end)if not bw then a9(aQ(
'\065\103\117\097\114\100\097\110\100\111\032\047\032\101\114\114\111\058\032','\087\097\105\116\105\110\103\032\047\032\101\114\114\111\114\058\032')..tostring(bx))bu=os.clock()+8 end
task.wait(0.2)end end)end local aO,aP,aQ=false,nil,false local aR=task.spawn(
function()aO,aP=pcall(aN,{ui=O,page=N('\070\097\114\109'),T=function(aR,aS)return b.language
=='\112\116'and aR or aS end,progress=aE,attach=function(aR)j=aR end,section=N,quick=
function(aR)k=aR end})aQ=true end)local aS=os.clock()+45 while l and not aQ and
os.clock()<aS do task.wait(0.05)end if not aQ then pcall(task.cancel,aR)aO=false
aP=p('\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\052\053\032\115\101\103\117\110\100\111\115\032\101\120\099\101\100\105\100\111\046\032\u{da}\108\116\105\109\097\032\101\116\097\112\097\058\032',
'\052\053\045\115\101\099\111\110\100\032\116\105\109\101\111\117\116\046\032\076\097\115\116\032\115\116\097\103\101\058\032')..as.Text end if not l then return end if not
aO then if j then pcall(j)j=nil end ar.Text=p(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\099\097\114\114\101\103\097\114\032\097\115\032\102\117\110\u{e7}\u{f5}\101\115',
'\067\111\117\108\100\032\110\111\116\032\108\111\097\100\032\116\104\101\032\102\101\097\116\117\114\101\115')as.Text=p(
'\070\101\099\104\101\032\111\032\112\097\105\110\101\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046\032\068\101\116\097\108\104\101\115\058\032',
'\067\108\111\115\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\116\114\121\032\097\103\097\105\110\046\032\068\101\116\097\105\108\115\058\032')..tostring(aP)aw.Text=p(
'\067\097\114\114\101\103\097\109\101\110\116\111\032\105\110\116\101\114\114\111\109\112\105\100\111','\076\111\097\100\105\110\103\032\105\110\116\101\114\114\117\112\116\101\100')b.ready()return end local
function aT(aU,aV)local aW,aX,aY=false,false,nil local aZ=task.spawn(function()
aX,aY=pcall(aU)aW=true end)local a_=os.clock()+aV while l and not aW and os.
clock()<a_ do task.wait(0.05)end if not aW then pcall(task.cancel,aZ)return
false,p('\084\101\109\112\111\032\108\105\109\105\116\101\032\101\120\099\101\100\105\100\111','\084\105\109\101\032\108\105\109\105\116\032\101\120\099\101\101\100\101\100')end return aX,aY end aE(
0.92,'\077\111\110\116\097\110\100\111\032\111\115\032\097\106\117\115\116\101\115\032\100\101\032\116\101\108\097\u{2026}','\066\117\105\108\100\105\110\103\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\u{2026}')
local aU local aV,aW=aT(function()local aV=N('\065\106\117\115\116\101\115')ab(aV)local aW=O.button(
aV,p('\u{1f1e7}\u{1f1f7}\032\032\073\100\105\111\109\097\058\032\080\111\114\116\117\103\117\u{ea}\115\032\032\u{b7}\032\032\065\108\116\101\114\097\114',
'\u{1f1fa}\u{1f1f8}\032\032\076\097\110\103\117\097\103\101\058\032\069\110\103\108\105\115\104\032\032\u{b7}\032\032\067\104\097\110\103\101'),870)r(aW.Activated,
function()if type(b.chooseLanguage)=='\102\117\110\099\116\105\111\110'then b.chooseLanguage()end end)O.
label(aV,'\084\101\120\116\076\097\098\101\108',p(
'\084\114\111\099\097\114\032\111\032\105\100\105\111\109\097\032\114\101\097\098\114\101\032\111\032\112\097\105\110\101\108\032\099\111\109\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\117\115\097\100\097\115\046',
'\067\104\097\110\103\105\110\103\032\108\097\110\103\117\097\103\101\032\114\101\111\112\101\110\115\032\116\104\101\032\112\097\110\101\108\032\119\105\116\104\032\097\117\116\111\109\097\116\105\111\110\032\112\097\117\115\101\100\046'),44,871)O.label(aV
,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\084\111\113\117\101\032\065\058\032\097\098\114\105\114\047\102\101\099\104\097\114\046\032\083\101\103\117\114\101\032\048\044\054\053\115\032\101\032\115\111\108\116\101\058\032\112\097\114\097\114\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\046\032\065\114\114\097\115\116\101\058\032\109\111\118\101\114\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\105\110\101\108\046'
or
"\084\097\112\032\065\058\032\116\111\103\103\108\101\032\112\097\110\101\108\046\032\072\111\108\100\032\048\046\054\053\115\032\097\110\100\032\114\101\108\101\097\115\101\058\032\115\116\111\112\032\097\117\116\111\109\097\116\105\111\110\046\032\068\114\097\103\058\032\109\111\118\101\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\110\101\108\046"
,68,900)local aX=O.label(aV,'\084\101\120\116\066\111\120','\069\066\065\053\070\070',40,902)aX.ClearTextOnFocus=false
O.label(aV,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\067\111\114\032\100\101\032\100\101\115\116\097\113\117\101\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\120\046\058\032\070\070\067\065\052\050\041'or
'\065\099\099\101\110\116\032\099\111\108\111\114\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\046\103\046\032\070\070\067\065\052\050\041',30,901)local aY=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\084\104\101\109\101\046\106\115\111\110'local aZ='\065\109\101\116\104\121\115\116'local a_={Amethyst={'\048\067\048\067\049\048',
'\050\055\049\056\051\053','\057\054\051\067\068\067','\070\070\070\053\070\070','\067\065\066\052\068\056','\069\066\065\053\070\070','\049\057\048\070\050\051'},Potato={'\050\051\049\070\049\057','\052\049\051\054\050\055'
,'\055\052\053\056\051\049','\070\067\070\054\069\050','\068\053\067\051\065\051','\069\066\065\053\070\070','\051\048\050\055\049\068'},Bloodmoon={'\049\055\048\067\049\051','\051\048\049\051\049\070',
'\054\066\050\054\051\068','\070\070\069\065\070\048','\068\050\065\048\066\048','\070\070\052\053\054\056','\050\051\048\070\049\065'},Midnight={'\049\048\049\051\049\069','\049\068\050\052\051\054',
'\051\053\052\054\054\053','\069\068\070\051\070\070','\065\052\066\051\067\067','\055\051\057\070\070\070','\049\053\049\066\050\065'},Emerald={'\048\066\049\057\049\054','\049\052\050\069\050\054',
'\050\066\053\057\052\055','\069\054\070\070\070\051','\057\069\067\054\066\051','\053\054\068\068\065\048','\049\048\050\052\049\069'},Arctic={'\049\049\049\066\050\054','\049\067\050\068\051\068','\051\054\053\049\054\065'
,'\069\066\070\056\070\070','\065\057\067\055\068\065','\055\057\068\057\070\070','\049\055\050\051\051\049'}}local function a0(a1)return Color3.
fromRGB(tonumber(a1:sub(1,2),16),tonumber(a1:sub(3,4),16),tonumber(a1:sub(5,6),
16))end local function a1()if type(writefile)=='\102\117\110\099\116\105\111\110'then task.spawn(
function()pcall(writefile,aY,e:JSONEncode({preset=aZ,hex=aX.Text}))end)end end
local function a2(a3)if type(a3)~='\115\116\114\105\110\103'or not a3:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then
return false end o=Color3.fromRGB(tonumber(a3:sub(1,2),16),tonumber(a3:sub(3,4),
16),tonumber(a3:sub(5,6),16))m.accent=o F.BackgroundColor3=o z.BackgroundColor3=
o M(J)for a4,a5 in ipairs(P)do a5()end for a4,a5 in pairs(H)do a5.
ScrollBarImageColor3=o end aX.Text=a3 return true end local function a3(a4)local
a5=a_[a4]if not a5 then return end aZ=a4 for a6,a7 in ipairs({'\100\097\114\107','\116\105\108\101',
'\101\100\103\101','\116\101\120\116','\109\117\116\101\100','\097\099\099\101\110\116','\115\105\100\101\098\097\114'})do m[a7]=a0(a5[a6])end o=m.accent for
a6,a7 in pairs(n)do if a6.Parent then for a8,a9 in pairs(a7)do a6[a8]=m[a9]end
end end local a6=w:FindFirstChildOfClass('\085\073\071\114\097\100\105\101\110\116')if a6 then a6.Color=
ColorSequence.new(m.tile,m.dark)end a2(a5[6])end O.label(aV,'\084\101\120\116\076\097\098\101\108',p(
'\084\069\077\065\083\032\080\082\079\078\084\079\083','\084\072\069\077\069\032\080\082\069\083\069\084\083'),32,880)for a4,a5 in ipairs({'\065\109\101\116\104\121\115\116','\080\111\116\097\116\111'
,'\066\108\111\111\100\109\111\111\110','\077\105\100\110\105\103\104\116','\069\109\101\114\097\108\100','\065\114\099\116\105\099'})do local a6=O.button(aV,a5,880+a4)r(
a6.Activated,function()a3(a5)a1()end)end aU=function()if type(readfile)==
'\102\117\110\099\116\105\111\110'then local a4=readfile(aY)if type(a4)=='\115\116\114\105\110\103'and#a4<=2048 then local
a5=e:JSONDecode(a4)if l and aX.Parent and type(a5)=='\116\097\098\108\101'then if a_[a5.preset]
then a3(a5.preset)end a2(a5.hex)end end end end r(aX.FocusLost,function()local
a4=aX.Text:gsub('\035',''):upper()if a2(a4)then a1()end end)end,5)if not l then
return end aE(0.96,'\065\106\117\115\116\097\110\100\111\032\111\032\112\097\105\110\101\108\032\u{e0}\032\115\117\097\032\116\101\108\097\u{2026}',
'\070\105\116\116\105\110\103\032\116\104\101\032\112\097\110\101\108\032\116\111\032\121\111\117\114\032\115\099\114\101\101\110\u{2026}')local aX,aY=pcall(X)if not aX then T=
table.clone(S)pcall(X)end local aZ if not aV or not aX then aZ=p(
'\065\106\117\115\116\101\115\032\118\105\115\117\097\105\115\032\105\110\099\111\109\112\108\101\116\111\115\058\032','\083\111\109\101\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\032\102\097\105\108\101\100\058\032')..tostring(aW
or aY)E.Text=aZ warn('\091\065\110\111\110\072\117\098\032'..a..'\093\032'..aZ)end aE(1,
'\080\097\105\110\101\108\032\112\114\111\110\116\111\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\101\115\116\u{e3}\111\032\112\097\117\115\097\100\097\115\046',
'\080\097\110\101\108\032\114\101\097\100\121\046\032\070\101\097\116\117\114\101\115\032\097\114\101\032\112\097\117\115\101\100\046')ar.Text=p('\083\101\117\032\112\097\105\110\101\108\032\101\115\116\u{e1}\032\112\114\111\110\116\111',
'\089\111\117\114\032\112\097\110\101\108\032\105\115\032\114\101\097\100\121')am=true if ao()then ap:Destroy()else task.spawn(function()
while l and ap.Parent and not ao()do task.wait(0.05)end if l and ap.Parent then
ap:Destroy()end end)end pcall(b.ready)if aU then task.defer(function()aT(aU,2)
end)end
