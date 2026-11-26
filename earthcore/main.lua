-- Luau
-- AnonHub protected distribution 0.40.3
-- local BOOT_VERSION="0.40.3"
local a='\048\046\052\048\046\051'local b=...assert(type(b)=='\116\097\098\108\101'and b.access,
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
,'\073\103\114\101\106\097','\067\111\109\098\097\116\101','\077\111\118\105\109\101\110\116\111','\069\083\080','\065\106\117\115\116\101\115'}local L={Farm='\069\120\112\101\100\105\116\105\111\110',
Melhorias='\085\112\103\114\097\100\101\115',Igreja='\067\104\117\114\099\104',Combate='\067\111\109\098\097\116',Movimento='\077\111\118\101\109\101\110\116',ESP=
'\069\083\080',Ajustes='\083\101\116\116\105\110\103\115'}local function M(N)J=N for O,P in pairs(H)do P.Visible=
O==N s(I[O],{BackgroundColor3=O==N and o or m.tile,TextColor3=O==N and m.dark or
m.muted})if O==N then local Q=P.Position P.Position=Q+UDim2.fromOffset(6,0)s(P,{
Position=Q})end end end local function N(O)if H[O]then return H[O]end local P=q(
'\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Name=O,Size=UDim2.new(1,-32,1,-166),Position=UDim2.fromOffset(
16,126),BackgroundTransparency=1,ScrollBarThickness=3,ScrollBarImageColor3=o,
CanvasSize=UDim2.new(),AutomaticCanvasSize=Enum.AutomaticSize.Y,Visible=O==
'\070\097\114\109'},w)q('\085\073\076\105\115\116\076\097\121\111\117\116',{Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.
LayoutOrder},P)q('\085\073\080\097\100\100\105\110\103',{PaddingTop=UDim.new(0,2),PaddingBottom=UDim.new(0,
12),PaddingLeft=UDim.new(0,2)},P)local Q={Movimento=p(
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
function aG(aH,aI)local aJ,aK=aH.ui,aH.T local aL=game:GetService('\080\108\097\121\101\114\115').
LocalPlayer local aM=game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101')local aN=game:
GetService('\082\117\110\083\101\114\118\105\099\101')local aO=game:GetService('\067\111\108\108\101\099\116\105\111\110\083\101\114\118\105\099\101')local aP=
game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local aQ=true local aR={}local aS={}local aT={}
local aU={speed=24,flySpeed=40,reach=12,offset=5,maxDistance=1500,maxESP=60,
espPriority='\068\117\110\103\101\111\110\115',oreFilter='\067\111\097\108\044\073\114\111\110\044\071\111\108\100\044\068\105\097\109\111\110\100\044\069\109\101\114\097\108\100\044\082\117\098\121',position=
'\079\102\102',style='\079\117\116\108\105\110\101'}local aV={speed=false,noclip=false,fly=false,aura=false,
oreAura=false}local aW={{'\109\111\098\115','\077\111\110\115\116\114\111\115','\069\110\101\109\105\101\115','\070\070\054\048\054\048'},{'\112\108\097\121\101\114\115',
'\074\111\103\097\100\111\114\101\115','\080\108\097\121\101\114\115','\054\048\068\056\070\070'},{'\099\111\109\112\097\110\105\111\110\115','\067\111\109\112\097\110\104\101\105\114\111\115','\067\111\109\112\097\110\105\111\110\115',
'\054\048\070\070\066\048'},{'\099\104\101\115\116\115','\066\097\u{fa}\115','\067\104\101\115\116\115','\070\070\068\048\054\048'},{'\109\105\109\105\099\115',
'\077\u{ed}\109\105\099\111\115\032\105\100\101\110\116\105\102\105\099\097\100\111\115','\073\100\101\110\116\105\102\105\101\100\032\109\105\109\105\099\115','\070\070\053\048\068\048'},{'\105\116\101\109\115','\073\116\101\110\115',
'\073\116\101\109\115','\070\070\070\070\070\070'},{'\115\099\114\097\112','\083\117\099\097\116\097\115','\083\099\114\097\112','\066\053\067\048\068\048'},{'\111\114\101\115','\077\105\110\u{e9}\114\105\111\115',
'\079\114\101\115','\054\048\069\048\070\070'},{'\100\111\111\114\115','\069\110\116\114\097\100\097\115\032\100\101\032\068\117\110\103\101\111\110','\068\117\110\103\101\111\110\032\101\110\116\114\097\110\099\101\115','\066\048\056\048\070\070'},{
'\097\114\101\110\097\115','\080\111\114\116\097\115\032\100\101\032\097\114\101\110\097','\065\114\101\110\097\032\100\111\111\114\115','\070\070\056\048\052\048'},{'\116\114\101\097\115\117\114\101\068\111\111\114\115',
'\080\111\114\116\097\115\032\100\101\032\116\101\115\111\117\114\111','\084\114\101\097\115\117\114\101\032\100\111\111\114\115','\070\070\069\048\056\048'}}local aX={}for aY,aZ in ipairs(aW
)do aX[aZ[1] ]={enabled=false,color=aZ[4]}end local aY=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\086\105\115\117\097\108\095'..aL.UserId..'\046\106\115\111\110'if type(readfile)=='\102\117\110\099\116\105\111\110'then
pcall(function()local aZ=aP:JSONDecode(readfile(aY))for a_,a0 in pairs(aU)do if
type(aZ.config[a_])==type(a0)then aU[a_]=aZ.config[a_]end end for a_,a0 in
pairs(aX)do local a1=aZ.colors and aZ.colors[a_]if type(a1)=='\115\116\114\105\110\103'and a1:
match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then a0.color=a1 end end end)end local function aZ()if
type(writefile)=='\102\117\110\099\116\105\111\110'then local a_={}for a0,a1 in pairs(aX)do a_[a0]=a1.
color end pcall(writefile,aY,aP:JSONEncode({config=aU,colors=a_}))end end local
function a_(a0,a1)aR[#aR+1]=a0:Connect(a1)end local function a0(a1,a2,a3)local
a4=Instance.new(a1)for a5,a6 in pairs(a2)do a4[a5]=a6 end a4.Parent=a3 return a4
end local function a1(a2)return Color3.fromRGB(tonumber(a2:sub(1,2),16),
tonumber(a2:sub(3,4),16),tonumber(a2:sub(5,6),16))end local function a2(a3,a4,a5
,a6,a7,a8)a8=a8 or aV local a9,ba=aJ.checkbox(a3,aK(a5,a6),a7)aS[a4]={paint=ba,
table=a8}a_(a9.Activated,function()a8[a4]=not a8[a4]ba(a8[a4])end)end local
function a3(a4,a5,a6,a7,a8,a9,ba)aU[a5]=math.clamp(tonumber(aU[a5])or a9,a9,ba)
if aU[a5]~=aU[a5]then aU[a5]=a9 end aJ.label(a4,'\084\101\120\116\076\097\098\101\108',aK(a6,a7),30,a8)
local bb=aJ.label(a4,'\084\101\120\116\066\111\120',tostring(aU[a5]),40,a8+1)a_(bb.FocusLost,function
()local bc=tonumber(bb.Text)if bc and bc==bc and math.abs(bc)<math.huge then aU[
a5]=math.clamp(bc,a9,ba)aZ()end bb.Text=tostring(aU[a5])end)end local a4=aH.
section('\077\101\108\104\111\114\105\097\115')local a5={TeamHealth='\086\105\100\097\032\109\u{e1}\120\105\109\097',LifeSteal=
'\082\111\117\098\111\032\100\101\032\118\105\100\097',DrillPower='\080\111\116\u{ea}\110\099\105\097\032\100\097\032\098\114\111\099\097',RPMOverclock='\082\080\077\032\100\097\032\098\114\111\099\097',
SackStorage='\067\097\112\097\099\105\100\097\100\101\032\100\097\032\109\111\099\104\105\108\097',DriveSpeed='\086\101\108\111\099\105\100\097\100\101\032\100\097\032\098\114\111\099\097',FuelStorage
='\067\097\112\097\099\105\100\097\100\101\032\100\101\032\099\111\109\098\117\115\116\u{ed}\118\101\108',DrillDefense='\068\097\110\111\032\100\101\032\099\111\110\116\097\116\111',PowerDrive=
'\065\099\101\108\101\114\097\u{e7}\u{e3}\111',PowerSlam='\073\109\112\097\099\116\111\032\112\111\116\101\110\116\101',EngineOverdrive=
'\083\111\098\114\101\099\097\114\103\097\032\100\111\032\109\111\116\111\114',MegaDrill='\077\101\103\097\032\098\114\111\099\097',TeamGunDamage='\068\097\110\111\032\100\101\032\097\114\109\097\115',
TeamMeleeDamage='\068\097\110\111\032\099\111\114\112\111\032\097\032\099\111\114\112\111',TeamPickaxeDamage='\068\097\110\111\032\100\101\032\112\105\099\097\114\101\116\097',
TeamExplosiveDamage='\068\097\110\111\032\101\120\112\108\111\115\105\118\111',PowerBurst='\069\120\112\108\111\115\u{e3}\111\032\100\101\032\112\111\116\u{ea}\110\099\105\097'
,MountedGunner='\065\116\105\114\097\100\111\114\032\109\111\110\116\097\100\111',MoneyDrill='\077\111\101\100\097\115\032\112\111\114\032\112\097\114\101\100\101',UltraDrill=
'\085\108\116\114\097\032\098\114\111\099\097',HealthRegen='\082\101\103\101\110\101\114\097\u{e7}\u{e3}\111',CartExtension=
'\069\120\116\101\110\115\u{e3}\111\032\100\097\032\098\114\111\099\097'}local a6,a7={},{}for a8,a9 in ipairs(aF)do a7[a9.id]=a9
end for a8 in aI.priority:gmatch('\091\094\044\093\043')do a8=a8:match('\094\037\115\042\040\046\045\041\037\115\042\036')if a7[a8]
and not table.find(a6,a8)then a6[#a6+1]=a8 end end local a8={}for a9,ba in
ipairs(a6)do a8[ba]=true end for a9,ba in ipairs(aF)do if not table.find(a6,ba.
id)then a6[#a6+1]=ba.id end end local a9={}local function ba()local bb={}for bc,
bd in ipairs(a6)do local be=a9[bd]if be then be.frame.LayoutOrder=100+bc be.
caption.Text=bc..'\032\u{b7}\032'..aK(a5[bd]or a7[bd].name,a7[bd].name)be.paint(a8[bd]
)end if a8[bd]then bb[#bb+1]=bd end end aI.setPriority(table.concat(bb,'\044'))end
for bb,bc in ipairs(a6)do local bd=a7[bc]local be=a0('\070\114\097\109\101',{Size=UDim2.new(1,-
8,0,58),BackgroundTransparency=1},a4)a0('\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromOffset(36,
36),Position=UDim2.fromOffset(0,10),Image=bd.icon,BackgroundTransparency=1},be)
local bf,bg=aJ.checkbox(be,'',0)bf.Size=UDim2.new(1,-136,0,48)bf.Position=UDim2.
fromOffset(42,4)local bh=bf:FindFirstChildWhichIsA('\084\101\120\116\076\097\098\101\108')a9[bc]={frame=be,
paint=bg,caption=bh}a_(bf.Activated,function()a8[bc]=not a8[bc]ba()end)for bi,bj
in ipairs({-1,1})do local bk=a0('\084\101\120\116\066\117\116\116\111\110',{Text=bj<0 and'\u{2191}'or
'\u{2193}',Size=UDim2.fromOffset(36,44),Position=UDim2.new(1,-82+(bi-1)*40,0,6),
BackgroundColor3=Color3.fromRGB(35,45,60),TextColor3=Color3.new(1,1,1),TextSize=
20},be)a0('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,8)},bk)a_(bk.Activated,function()
local bl=table.find(a6,bc)local bm=bl+bj if bm>=1 and bm<=#a6 then a6[bl],a6[bm]
=a6[bm],a6[bl]ba()end end)end end ba()local bb=aH.section('\077\111\118\105\109\101\110\116\111')a2(bb,
'\115\112\101\101\100','\086\101\108\111\099\105\100\097\100\101\032\112\101\114\115\111\110\097\108\105\122\097\100\097','\067\117\115\116\111\109\032\119\097\108\107\032\115\112\101\101\100',1)a3(bb,'\115\112\101\101\100',
'\086\101\108\111\099\105\100\097\100\101\032\040\087\097\108\107\083\112\101\101\100\041','\087\097\108\107\083\112\101\101\100',2,8,100)a2(bb,'\110\111\099\108\105\112','\078\111\099\108\105\112','\078\111\099\108\105\112',5)
a2(bb,'\102\108\121','\070\108\121\032\u{b7}\032\115\105\103\097\032\097\032\099\u{e2}\109\101\114\097\032\047\032\106\111\121\115\116\105\099\107',
'\070\108\121\032\u{b7}\032\099\097\109\101\114\097\032\047\032\106\111\121\115\116\105\099\107\032\100\105\114\101\099\116\105\111\110',6)a3(bb,'\102\108\121\083\112\101\101\100','\086\101\108\111\099\105\100\097\100\101\032\100\111\032\070\108\121',
'\070\108\121\032\115\112\101\101\100',7,5,150)aJ.label(bb,'\084\101\120\116\076\097\098\101\108',aK(
'\070\108\121\058\032\087\065\083\068\047\106\111\121\115\116\105\099\107\044\032\069\115\112\097\u{e7}\111\032\115\111\098\101\032\101\032\067\116\114\108\032\100\101\115\099\101\046\032\078\111\032\099\101\108\117\108\097\114\044\032\117\115\101\032\111\115\032\098\111\116\u{f5}\101\115\032\u{2191}\047\u{2193}\046'
,
'\070\108\121\058\032\087\065\083\068\047\106\111\121\115\116\105\099\107\044\032\083\112\097\099\101\032\117\112\032\097\110\100\032\067\116\114\108\032\100\111\119\110\046\032\079\110\032\109\111\098\105\108\101\044\032\117\115\101\032\u{2191}\047\u{2193}\032\098\117\116\116\111\110\115\046'
),56,10)local bc=aH.section('\067\111\109\098\097\116\101')a2(bc,'\097\117\114\097',
'\065\117\114\097\032\100\101\032\097\116\097\113\117\101\032\u{b7}\032\097\114\109\097\032\099\111\114\112\111\032\097\032\099\111\114\112\111\032\101\113\117\105\112\097\100\097',
'\065\116\116\097\099\107\032\097\117\114\097\032\u{b7}\032\101\113\117\105\112\112\101\100\032\109\101\108\101\101\032\119\101\097\112\111\110',1)a2(bc,'\111\114\101\065\117\114\097',
'\065\117\114\097\032\100\101\032\109\105\110\u{e9}\114\105\111\115\032\u{b7}\032\112\105\099\097\114\101\116\097\032\101\113\117\105\112\097\100\097',
'\079\114\101\032\097\117\114\097\032\u{b7}\032\101\113\117\105\112\112\101\100\032\112\105\099\107\097\120\101',2)a3(bc,'\114\101\097\099\104','\065\108\099\097\110\099\101\032\115\111\108\105\099\105\116\097\100\111\032\101\109\032\115\116\117\100\115'
,'\082\101\113\117\101\115\116\101\100\032\114\101\097\099\104\032\105\110\032\115\116\117\100\115',3,2,40)aJ.label(bc,'\084\101\120\116\076\097\098\101\108',aK(
"\085\115\097\032\111\032\097\116\097\113\117\101\032\101\032\099\111\111\108\100\111\119\110\032\110\097\116\105\118\111\115\046\032\065\108\099\097\110\099\101\032\097\099\101\105\116\111\032\101\032\100\097\110\111\032\099\111\110\116\105\110\117\097\109\032\115\117\106\101\105\116\111\115\032\097\111\032\115\101\114\118\105\100\111\114\046"
,
"\085\115\101\115\032\110\097\116\105\118\101\032\097\116\116\097\099\107\115\032\097\110\100\032\099\111\111\108\100\111\119\110\115\046\032\065\099\099\101\112\116\101\100\032\114\097\110\103\101\032\097\110\100\032\100\097\109\097\103\101\032\114\101\109\097\105\110\032\115\101\114\118\101\114\045\099\111\110\116\114\111\108\108\101\100\046"
),55,5)local bd=aJ.button(bc,'',6)local function be()bd.Text=aK(
'\080\111\115\105\u{e7}\u{e3}\111\058\032','\080\111\115\105\116\105\111\110\058\032')..({Off=aK('\100\101\115\108\105\103\097\100\111','\111\102\102'),Behind=aK(
'\099\111\115\116\097\115','\098\101\104\105\110\100'),Above=aK('\097\099\105\109\097','\097\098\111\118\101')})[aU.position]end if not({Off=true,
Behind=true,Above=true})[aU.position]then aU.position='\079\102\102'end be()a_(bd.
Activated,function()aU.position=({Off='\066\101\104\105\110\100',Behind='\065\098\111\118\101',Above='\079\102\102'})[aU.
position]aZ()be()end)a3(bc,'\111\102\102\115\101\116','\068\105\115\116\u{e2}\110\099\105\097\032\097\099\105\109\097\047\097\116\114\u{e1}\115\032\100\111\032\097\108\118\111',
'\072\101\105\103\104\116\047\111\102\102\115\101\116\032\102\114\111\109\032\116\097\114\103\101\116',7,2,20)local bf=aH.section('\069\083\080')local bg=aJ.label(
bf,'\084\101\120\116\076\097\098\101\108',aK(
"\069\083\080\032\100\101\115\097\116\105\118\097\100\111\032\097\111\032\097\098\114\105\114\046\032\067\097\116\101\103\111\114\105\097\115\032\105\110\100\101\112\101\110\100\101\110\116\101\115\059\032\115\111\109\101\110\116\101\032\111\098\106\101\116\111\115\032\099\097\114\114\101\103\097\100\111\115\046"
,"\069\083\080\032\115\116\097\114\116\115\032\111\102\102\046\032\073\110\100\101\112\101\110\100\101\110\116\032\099\097\116\101\103\111\114\105\101\115\059\032\108\111\097\100\101\100\032\111\098\106\101\099\116\115\032\111\110\108\121\046"),55,1)for bh,
bi in ipairs(aW)do local bj,bk=aJ.checkbox(bf,aK(bi[2],bi[3]),bh+2)aS['\101\115\112\095'..bi
[1] ]={paint=bk,category=bi[1]}a_(bj.Activated,function()aX[bi[1] ].enabled=not
aX[bi[1] ].enabled bk(aX[bi[1] ].enabled)end)end a3(bf,'\109\097\120\068\105\115\116\097\110\099\101',
'\068\105\115\116\u{e2}\110\099\105\097\032\109\u{e1}\120\105\109\097\032\100\111\032\069\083\080','\069\083\080\032\109\097\120\105\109\117\109\032\100\105\115\116\097\110\099\101',15,50,10000)a3(bf,
'\109\097\120\069\083\080','\077\u{e1}\120\105\109\111\032\100\101\032\109\097\114\099\097\100\111\114\101\115\032\040\049\u{2013}\050\048\048\041',
'\077\097\114\107\101\114\032\108\105\109\105\116\032\040\049\u{2013}\050\048\048\041',18,1,200)local bh={'\068\117\110\103\101\111\110\115','\069\110\101\109\105\101\115','\076\111\111\116',
'\068\105\115\116\097\110\099\101'}if not table.find(bh,aU.espPriority)then aU.espPriority='\068\117\110\103\101\111\110\115'end
local bi=aJ.button(bf,'',20)local function bj()local bk={Dungeons='\068\117\110\103\101\111\110\115',
Enemies='\073\110\105\109\105\103\111\115',Loot='\073\116\101\110\115\032\101\032\098\097\u{fa}\115',Distance='\077\097\105\115\032\112\114\u{f3}\120\105\109\111\115'}bi.
Text=aK('\080\114\105\111\114\105\100\097\100\101\032\069\083\080\058\032','\069\083\080\032\112\114\105\111\114\105\116\121\058\032')..aK(bk[aU.espPriority],aU.
espPriority)end bj()a_(bi.Activated,function()aU.espPriority=bh[table.find(bh,aU
.espPriority)%#bh+1]bj()aZ()end)local function bk(bl)if aU.espPriority==
'\068\117\110\103\101\111\110\115'then return(bl=='\100\111\111\114\115'or bl=='\097\114\101\110\097\115'or bl=='\116\114\101\097\115\117\114\101\068\111\111\114\115')and 0 or
1 end if aU.espPriority=='\069\110\101\109\105\101\115'then return(bl=='\109\111\098\115'or bl=='\109\105\109\105\099\115')and 0 or
1 end if aU.espPriority=='\076\111\111\116'then return(bl=='\105\116\101\109\115'or bl=='\099\104\101\115\116\115'or bl==
'\115\099\114\097\112'or bl=='\111\114\101\115')and 0 or 1 end return 0 end local bl=aJ.button(bf,'',21)
local function bm()bl.Text=aK('\077\111\100\101\108\111\058\032','\083\116\121\108\101\058\032')..(aU.style=='\066\111\120'and aK(
'\099\097\105\120\097','\098\111\120')or aK('\099\111\110\116\111\114\110\111','\111\117\116\108\105\110\101'))end bm()a_(bl.Activated,function()aU.
style=aU.style=='\066\111\120'and'\079\117\116\108\105\110\101'or'\066\111\120'aZ()bm()end)local bn=1 local bo=aJ.
button(bf,'',22)local bp=aJ.label(bf,'\084\101\120\116\066\111\120',aX[aW[1][1] ].color,40,23)local
function bq()bo.Text=aK('\067\111\114\032\100\101\058\032','\067\111\108\111\114\032\102\111\114\058\032')..aK(aW[bn][2],aW[bn][3])bp.
Text=aX[aW[bn][1] ].color end bq()a_(bo.Activated,function()bn=bn%#aW+1 bq()end)
a_(bp.FocusLost,function()local br=bp.Text:gsub('\035',''):upper()if br:match(
'\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then aX[aW[bn][1] ].color=br aZ()else bg.Text=aK(
'\072\069\088\032\105\110\118\u{e1}\108\105\100\111\058\032\117\115\101\032\054\032\099\097\114\097\099\116\101\114\101\115\032\100\101\032\048\u{2013}\057\032\101\032\065\u{2013}\070\044\032\099\111\109\111\032\070\070\065\049\051\049\046',
'\073\110\118\097\108\105\100\032\072\069\088\058\032\117\115\101\032\054\032\099\104\097\114\097\099\116\101\114\115\032\102\114\111\109\032\048\u{2013}\057\032\097\110\100\032\065\u{2013}\070\044\032\115\117\099\104\032\097\115\032\070\070\065\049\051\049\046')
end bq()end)local br=a0('\070\114\097\109\101',{Size=UDim2.new(1,-8,0,190),
BackgroundTransparency=1,LayoutOrder=24},bf)local bs,bt=1,1 for bu=0,23 do local
bv=bu/24 local bw=bv*math.pi*2 local bx=a0('\084\101\120\116\066\117\116\116\111\110',{Text='',Size=UDim2.
fromOffset(24,24),Position=UDim2.new(0.5,math.cos(bw)*72-12,0.5,math.sin(bw)*72-
12),BackgroundColor3=Color3.fromHSV(bv,1,1),BorderSizePixel=0},br)a0('\085\073\067\111\114\110\101\114',
{CornerRadius=UDim.new(1,0)},bx)a_(bx.Activated,function()aX[aW[bn][1] ].color=
Color3.fromHSV(bv,bs,bt):ToHex():upper()aZ()bq()end)end local bu=aJ.button(bf,
aK('\066\114\097\110\099\111\032\047\032\115\097\116\117\114\097\u{e7}\u{e3}\111\032\122\101\114\111','\087\104\105\116\101\032\047\032\122\101\114\111\032\115\097\116\117\114\097\116\105\111\110'),25)a_(bu.
Activated,function()aX[aW[bn][1] ].color='\070\070\070\070\070\070'aZ()bq()end)local bv=aJ.label(
bf,'\084\101\120\116\066\111\120',aU.oreFilter,40,26)a_(bv.FocusLost,function()aU.oreFilter=bv.Text:
sub(1,300)aZ()end)aJ.label(bf,'\084\101\120\116\076\097\098\101\108',aK(
'\070\105\108\116\114\111\032\100\101\032\109\105\110\u{e9}\114\105\111\115\032\112\111\114\032\110\111\109\101\058\032\067\111\097\108\044\032\073\114\111\110\044\032\071\111\108\100\044\032\068\105\097\109\111\110\100\044\032\069\109\101\114\097\108\100\044\032\082\117\098\121\046\032\077\u{ed}\109\105\099\111\115\032\111\099\117\108\116\111\115\032\115\101\109\032\115\105\110\097\108\032\114\101\112\108\105\099\097\100\111\032\110\u{e3}\111\032\112\111\100\101\109\032\115\101\114\032\105\100\101\110\116\105\102\105\099\097\100\111\115\032\099\111\109\032\099\101\114\116\101\122\097\046'
,
"\079\114\101\032\110\097\109\101\032\102\105\108\116\101\114\058\032\067\111\097\108\044\032\073\114\111\110\044\032\071\111\108\100\044\032\068\105\097\109\111\110\100\044\032\069\109\101\114\097\108\100\044\032\082\117\098\121\046\032\072\105\100\100\101\110\032\109\105\109\105\099\115\032\119\105\116\104\111\117\116\032\097\032\114\101\112\108\105\099\097\116\101\100\032\115\105\103\110\097\108\032\099\097\110\110\111\116\032\098\101\032\105\100\101\110\116\105\102\105\101\100\032\119\105\116\104\032\099\101\114\116\097\105\110\116\121\046"
),78,27)local bw=bb:FindFirstAncestorOfClass('\083\099\114\101\101\110\071\117\105')local bx=a0('\070\114\097\109\101',{
Size=UDim2.fromOffset(190,66),Position=UDim2.new(0.5,-95,1,-86),
BackgroundTransparency=1,Visible=false},bw)local by=0 local bz=false local bA,bB
=aJ.checkbox(bb,aK('\077\111\115\116\114\097\114\032\098\111\116\u{f5}\101\115\032\114\u{e1}\112\105\100\111\115\032\040\097\114\114\097\115\116\u{e1}\118\101\105\115\041',
'\083\104\111\119\032\113\117\105\099\107\032\098\117\116\116\111\110\115\032\040\100\114\097\103\103\097\098\108\101\041'),80)a_(bA.Activated,function()bz=not bz bx.
Visible=bz bB(bz)by=0 end)local bC=a0('\084\101\120\116\066\117\116\116\111\110',{Text=aK(
'\u{22ee}\u{22ee}\032\065\114\114\097\115\116\101\032\111\115\032\097\116\097\108\104\111\115','\u{22ee}\u{22ee}\032\068\114\097\103\032\115\104\111\114\116\099\117\116\115'),Size=
UDim2.new(1,0,0,24),BackgroundColor3=Color3.fromRGB(25,35,48),TextColor3=Color3.
new(1,1,1),TextSize=12},bx)local bD,bE,bF a_(bC.InputBegan,function(bG)if bG.
UserInputType==Enum.UserInputType.Touch or bG.UserInputType==Enum.UserInputType.
MouseButton1 then bD=bG bE=bG.Position bF=bx.AbsolutePosition end end)a_(aM.
InputChanged,function(bG)if not bD or not bx.Visible then return end if bG~=bD
and bG.UserInputType~=Enum.UserInputType.MouseMovement then return end local bH=
bG.Position-bE local bI=workspace.CurrentCamera local bJ=bI and bI.ViewportSize
local bK,bL=bF.X+bH.X,bF.Y+bH.Y if bJ then bK=math.clamp(bK,0,math.max(0,bJ.X-
190))bL=math.clamp(bL,0,math.max(0,bJ.Y-66))end bx.Position=UDim2.fromOffset(bK,
bL)end)a_(aM.InputEnded,function(bG)if bG==bD then bD=nil end by=0 end)for bG,bH
in ipairs({{'\u{2694}','\097\117\114\097'},{'\u{25c7}','\111\114\101\065\117\114\097'},{'\u{2191}','\117\112'},{
'\u{2193}','\100\111\119\110'}})do local bI=a0('\084\101\120\116\066\117\116\116\111\110',{Text=bH[1],Size=UDim2.
fromOffset(42,38),Position=UDim2.fromOffset((bG-1)*48,28),BackgroundColor3=
Color3.fromRGB(25,35,48),TextColor3=Color3.new(1,1,1),TextSize=20},bx)a0(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,9)},bI)if bH[2]=='\117\112'or bH[2]=='\100\111\119\110'then
a_(bI.InputBegan,function(bJ)if bJ.UserInputType==Enum.UserInputType.Touch or bJ
.UserInputType==Enum.UserInputType.MouseButton1 then by=bH[2]=='\117\112'and 1 or-1
end end)a_(bI.InputEnded,function()by=0 end)else a_(bI.Activated,function()aV[bH
[2] ]=not aV[bH[2] ]aS[bH[2] ].paint(aV[bH[2] ])end)end end local function bG(bH
)if bH:IsA('\066\097\115\101\080\097\114\116')then return bH end return bH:IsA('\077\111\100\101\108')and(bH.
PrimaryPart or bH:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')or bH:
FindFirstChildWhichIsA('\066\097\115\101\080\097\114\116',true))or nil end local bH=setmetatable({},{
__mode='\107'})local function bI(bJ)if not(bJ:IsA('\077\111\100\101\108')or bJ:IsA('\066\097\115\101\080\097\114\116'))
then return nil end local bK=tostring(bJ:GetAttribute('\082\101\097\108\078\097\109\101')or bJ.Name)if
bJ.Parent and bJ.Parent.Name=='\078\112\099'then if bJ:GetAttribute('\078\112\099\070\097\099\116\105\111\110')==
'\070\114\105\101\110\100\108\121\067\111\109\112\097\110\105\111\110'or bK:lower():find('\099\111\109\112\097\110\105\111\110',1,true)or bJ:GetAttribute(
'\070\114\105\101\110\100\108\121')==true then return'\099\111\109\112\097\110\105\111\110\115'end if bK:lower():find('\109\105\109\105\099',1,true)
or bJ:GetAttribute('\077\105\109\105\099\067\104\101\115\116\068\097\109\097\103\101\097\098\108\101')~=nil then return'\109\105\109\105\099\115'end return
'\109\111\098\115'end if bJ:GetAttribute('\082\117\110\116\105\109\101\067\104\101\115\116\077\111\100\101\108')==true then return'\099\104\101\115\116\115'end
if aO:HasTag(bJ,'\079\114\101')or type(bJ:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101'))=='\115\116\114\105\110\103'then
return'\111\114\101\115'end if aO:HasTag(bJ,'\068\117\110\103\101\111\110\065\114\101\110\097\068\111\111\114')then return'\097\114\101\110\097\115'end if aO:
HasTag(bJ,'\068\117\110\103\101\111\110\084\114\101\097\115\117\114\101\068\111\111\114')then return'\116\114\101\097\115\117\114\101\068\111\111\114\115'end if aO:HasTag(bJ,
'\068\117\110\103\101\111\110\068\111\111\114')then return'\100\111\111\114\115'end if bJ.Parent and bJ.Parent.Name=='\073\116\101\109\115'then
return bK:lower():find('\115\099\114\097\112',1,true)and'\115\099\114\097\112'or'\105\116\101\109\115'end end local bJ=false
local function bK()if bJ then return end bJ=true task.spawn(function()local bL={
workspace}local bM=0 while aQ and#bL>0 do local bN=table.remove(bL)local bO=bI(
bN)if bO then bH[bN]=bO end for bP,bQ in ipairs(bN:GetChildren())do bL[#bL+1]=bQ
end bM+=1 if bM%120==0 then task.wait()end end bJ=false end)end a_(workspace.
DescendantAdded,function(bL)local bM=bI(bL)if bM then bH[bL]=bM end end)local bL
={}local function bM(bN)local bO=bL[bN]if bO then for bP,bQ in pairs(bO)do if
typeof(bQ)=='\073\110\115\116\097\110\099\101'then bQ:Destroy()end end bL[bN]=nil end end local function
bN()local bO={}for bP in pairs(bL)do bO[#bO+1]=bP end for bP,bQ in ipairs(bO)do
bM(bQ)end end local bO,bP,bQ,bR,bS local bT=setmetatable({},{__mode='\107'})local
bU,bV local function bW()if bU then pcall(function()bU.Range=bV end)bU=nil end
end local function bX()if bS then bS:Destroy()bS=nil end if bR then bR:Destroy()
bR=nil end bQ=nil end local function bY()for bZ,b_ in pairs(bT)do if bZ.Parent
then bZ.CanCollide=b_ end bT[bZ]=nil end end local function bZ()for b_ in pairs(
aV)do aV[b_]=false aS[b_].paint(false)end bW()bX()bY()if bO and bO.Parent then
bO.WalkSpeed=bP end bO=nil end a_(aN.Heartbeat,function()if not aQ then return
end local b_,b0,b1=aI.actor()if bO and(bO~=b1 or not aV.speed)then if bO.Parent
then bO.WalkSpeed=bP end bO=nil end if b1 and aV.speed then if bO~=b1 then bO=b1
bP=b1.WalkSpeed end b1.WalkSpeed=aU.speed end if not b_ or not aV.noclip then
bY()else for b2,b3 in ipairs(b_:GetDescendants())do if b3:IsA('\066\097\115\101\080\097\114\116')then if
bT[b3]==nil then bT[b3]=b3.CanCollide end b3.CanCollide=false end end end if not
b0 or not aV.fly then bX()else if bQ~=b0 then bX()bQ=b0 bR=a0('\065\116\116\097\099\104\109\101\110\116',{},b0
)bS=a0('\076\105\110\101\097\114\086\101\108\111\099\105\116\121',{Attachment0=bR,MaxForce=1e7,RelativeTo=Enum.
ActuatorRelativeTo.World},b0)end local b2=b1.MoveDirection local b3=workspace.
CurrentCamera if b2.Magnitude>0.1 and b3 then b2=Vector3.new(b2.X,b3.CFrame.
LookVector.Y*b2.Magnitude,b2.Z)end local b4=by if not aM:GetFocusedTextBox()then
if aM:IsKeyDown(Enum.KeyCode.Space)then b4+=1 end if aM:IsKeyDown(Enum.KeyCode.
LeftControl)then b4-=1 end end bS.VectorVelocity=(b2+Vector3.new(0,b4,0))*aU.
flySpeed end end)local b_,b0,b1=0,0,0 task.spawn(function()while aQ do local b2,
b3=pcall(function()local b2,b3=aI.actor()if not b3 then bW()bN()return end local
b4=false for b5,b6 in pairs(aX)do if b6.enabled then b4=true end end if b4 and
os.clock()-b_>30 then b_=os.clock()bK()end if b4 and os.clock()-b0>0.3 then b0=
os.clock()local b5={}for b6,b7 in ipairs(game:GetService('\080\108\097\121\101\114\115'):GetPlayers()
)do if b7~=aL and b7.Character then bH[b7.Character]='\112\108\097\121\101\114\115'end end for b6,b7
in pairs(bH)do if not b6.Parent or not b6:IsDescendantOf(workspace)then bH[b6]=
nil else b7=bI(b6)or b7 bH[b6]=b7 if aX[b7].enabled then local b8=bG(b6)local b9
=true if b7=='\111\114\101\115'then local ca=tostring(b6:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101')or b6
.Name):lower()b9=false for cb in aU.oreFilter:gmatch('\091\094\044\093\043')do if ca:find(cb:
match('\094\037\115\042\040\046\045\041\037\115\042\036'):lower(),1,true)then b9=true end end end if b8 and b9 then
local ca=(b8.Position-b3.Position).Magnitude if ca<=aU.maxDistance then b5[#b5+1
]={o=b6,kind=b7,anchor=b8,distance=ca}end end end end end table.sort(b5,function
(b6,b7)local b8,b9=bk(b6.kind),bk(b7.kind)if b8~=b9 then return b8<b9 end return
b6.distance<b7.distance end)local b6={}for b7=1,math.min(#b5,aU.maxESP)do local
b8=b5[b7]local b9=b8.o b6[b9]=true if bL[b9]and bL[b9].style~=aU.style then bM(
b9)end local ca=bL[b9]if not ca then ca={style=aU.style}bL[b9]=ca ca.billboard=
a0('\066\105\108\108\098\111\097\114\100\071\117\105',{Adornee=b8.anchor,AlwaysOnTop=true,Size=UDim2.fromOffset(220,
48),StudsOffset=Vector3.new(0,3,0)},bw)ca.text=a0('\084\101\120\116\076\097\098\101\108',{Size=UDim2.
fromScale(1,1),BackgroundTransparency=1,TextSize=12,TextStrokeTransparency=0.3,
Font=Enum.Font.GothamBold,TextWrapped=true},ca.billboard)if aU.style=='\066\111\120'then
ca.visual=a0('\066\111\120\072\097\110\100\108\101\065\100\111\114\110\109\101\110\116',{Adornee=b8.anchor,AlwaysOnTop=true,ZIndex=5,
Transparency=0.65},bw)else ca.visual=a0('\072\105\103\104\108\105\103\104\116',{Adornee=b9,DepthMode=Enum.
HighlightDepthMode.AlwaysOnTop,FillTransparency=0.85},bw)end end local cb=a1(aX[
b8.kind].color)local cc=b9:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cd=cc and cc.
Health or b9:GetAttribute('\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')local ce=tostring(b9:GetAttribute(
'\082\101\097\108\078\097\109\101')or b9.Name)ca.billboard.Adornee=b8.anchor ca.text.Text=string.format(
'\037\115\037\115\032\u{b7}\032\037\100\032\115\116\117\100\115\037\115',(b8.kind=='\109\105\109\105\099\115'or ce:lower():find('\119\111\114\109',1,true))and
'\u{26a0}\032'or'',ce,b8.distance,cd and string.format('\n\072\080\032\037\046\048\102',cd)or'')ca.text.
TextColor3=cb if aU.style=='\066\111\120'then ca.visual.Color3=cb ca.visual.Adornee=b8.
anchor if b9:IsA('\077\111\100\101\108')then local cf,cg=b9:GetBoundingBox()ca.visual.Size=cg
ca.visual.CFrame=b8.anchor.CFrame:ToObjectSpace(cf)else ca.visual.Size=b9.Size
end else ca.visual.FillColor=cb ca.visual.OutlineColor=cb end end local b7={}for
b8 in pairs(bL)do if not b6[b8]then b7[#b7+1]=b8 end end for b8,b9 in ipairs(b7)
do bM(b9)end elseif not b4 then bN()end local b5=aI.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local
b6=b5 and b5.ActiveTool local b7=aV.aura or aV.oreAura if bU and(bU~=b6 or not
b7)then bW()end local b8=aI.ctrl('\085\073\067\111\110\116\114\111\108\108\101\114')if b7 and b6 and b6.Tool and
type(b6.Swing)=='\102\117\110\099\116\105\111\110'and not workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')and not aM
:GetFocusedTextBox()and not(b8 and b8.ActiveFrame and b8.ActiveFrame.Visible)
then local b9=b6.Tool.Name:find('\080\105\099\107\097\120\101',1,true)~=nil if aV.aura or aV.oreAura
and b9 then if type(b6.Range)=='\110\117\109\098\101\114'then if bU~=b6 then bU=b6 bV=b6.Range end
b6.Range=aU.reach end local ca,cb=nil,aU.reach local cc=workspace:
FindFirstChild('\078\112\099')if aV.aura then for cd,ce in ipairs(cc and cc:GetChildren()
or{})do local cf=bI(ce)local cg=bG(ce)local ch=ce:FindFirstChildOfClass(
'\072\117\109\097\110\111\105\100')local ci=ch and ch.Health or ce:GetAttribute('\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')or 0
local cj=ce:GetAttribute('\083\101\115\115\105\111\110\070\117\101\108\076\101\101\099\104\073\100')~=nil local ck=not cj or(aL:
GetAttribute('\073\110\068\117\110\103\101\111\110')~=true and ce:GetAttribute('\070\117\101\108\076\101\101\099\104\086\117\108\110\101\114\097\098\108\101')==true
)if ck and(cf=='\109\111\098\115'or cf=='\109\105\109\105\099\115')and cg and ci>0 then local cl=(b3.Position-
cg.Position).Magnitude if cl<cb then ca=cg cb=cl end end end end if ca and aU.
position~='\079\102\102'and not aV.fly and os.clock()-b1>0.4 then b1=os.clock()local cd=
aU.position=='\065\098\111\118\101'and Vector3.new(0,aU.offset,0)or-ca.CFrame.LookVector*aU.
offset b2:PivotTo(CFrame.lookAt(ca.Position+cd,ca.Position,aU.position=='\065\098\111\118\101'
and ca.CFrame.RightVector or Vector3.yAxis))end if ca or aV.oreAura and b9 then
b6:Swing()end end end end)if not b2 then aI.say(aK('\067\111\110\116\114\111\108\101\115\032\097\118\097\110\u{e7}\097\100\111\115\058\032',
'\065\100\118\097\110\099\101\100\032\099\111\110\116\114\111\108\115\058\032')..tostring(b3))end task.wait(0.15)end end)return{stop=bZ,
cleanup=function()aQ=false bZ()for b2,b3 in ipairs(aR)do b3:Disconnect()end bN()
bx:Destroy()end}end local aH={}function aH.role(aI,aJ)if aJ~=9796898051 then
return nil end return({[101906032112547]='\108\111\098\098\121',[74507545904779]='\114\117\110'})[aI]end
function aH.names(aI)local aJ={}for aK in tostring(aI):gmatch('\091\094\044\093\043')do aK=aK:
match('\094\037\115\042\040\046\045\041\037\115\042\036')if aK~=''then aJ[#aJ+1]=aK end end return aJ end function
aH.offer(aI,aJ,aK,aL)if type(aJ)~='\110\117\109\098\101\114'or aJ~=aJ then return nil end for aM,
aN in ipairs(aL)do for aO,aP in ipairs(type(aI)=='\116\097\098\108\101'and aI or{})do if aP.
UpgradeName==aN and aP.Type=='\067\111\105\110\115'and type(aP.Cost)=='\110\117\109\098\101\114'and aP.Cost>=0
and aP.Cost<math.huge and aJ-aP.Cost>=aK then return aP end end end end function
aH.selection(aI,aJ,aK)local aL={}local aM=math.clamp(math.floor(tonumber(aJ)or 0
),0,100)for aN,aO in ipairs(aK)do for aP,aQ in ipairs(type(aI)=='\116\097\098\108\101'and aI or
{})do if aQ.Name==aO and aQ.Id~=nil and not aL[aQ.Id]then local aR=math.min(aM,
math.max(0,math.floor(tonumber(aQ.Count)or 0)))if aR>0 then aL[aQ.Id]=aR aM-=aR
end end end end return aL end function aH.medalOffer(aI,aJ,aK,aL)if type(aJ)~=
'\116\097\098\108\101'or type(aJ.Medals)~='\110\117\109\098\101\114'or aJ.Medals~=aJ.Medals or type(aJ.Available)
~='\116\097\098\108\101'then return nil end for aM,aN in ipairs(aL)do local aO=aI[aN]if aO and
type(aO.Cost)=='\110\117\109\098\101\114'and aO.Cost>=0 and aO.Cost<math.huge and aJ.Available[aN]
and aJ.Medals-aO.Cost>=aK then return aN end end end function aH.skipRequest(aI)
if not aI or not aI.CurrentCutScene or aI.AbortingCutScene then return nil end
local aJ=aI.CurrentCutSceneContext if aJ and aJ.DisableSkip then return nil end
return{name=aI.CurrentCutScene,id=aJ and aJ.RuntimeId,private=aJ and aJ.Private
==true and aJ.RuntimeId~=nil,session=aI.CurrentCutSceneSessionId}end local aI=
function(aI)local aJ=assert(aH.role(game.PlaceId,game.GameId),
'\085\110\115\117\112\112\111\114\116\101\100\032\069\097\114\116\104\032\067\111\114\101\032\112\108\097\099\101')local aK,aL=aI.ui,aI.T local aM=game:GetService(
'\080\108\097\121\101\114\115').LocalPlayer local aN=game:GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local aO=
game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local aP=true local aQ={}local aR={swing=false,
upgrades=false,craft=false,skip=false,medals=false}local aS={upgrades=0,craft=0,
medals=0}local aT={}local aU={}local aV local aW={reserve=1000,limit=10,priority
="\084\101\097\109\072\101\097\108\116\104\044\076\105\102\101\083\116\101\097\108\044\068\114\105\108\108\080\111\119\101\114\044\082\080\077\079\118\101\114\099\108\111\099\107\044\083\097\099\107\083\116\111\114\097\103\101\044\068\114\105\118\101\083\112\101\101\100",gear=
'\080\105\099\107\097\120\101\095\071\111\108\100',craftLimit=3,medalReserve=100,medalLimit=10,medalPriority=
'\084\117\114\114\101\116\068\097\109\097\103\101\044\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111'}local aX=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095'..aM.UserId..'\095'..aJ..'\046\106\115\111\110'if type(readfile)=='\102\117\110\099\116\105\111\110'
then pcall(function()local aY=aO:JSONDecode(readfile(aX))for aZ,a_ in pairs(aW)
do if type(aY[aZ])==type(a_)then aW[aZ]=aY[aZ]end end end)end aW.reserve=math.
clamp(tonumber(aW.reserve)or 1000,0,1e9)aW.limit=math.clamp(tonumber(aW.limit)or
10,1,100)aW.medalReserve=math.clamp(tonumber(aW.medalReserve)or 100,0,1e9)aW.
medalLimit=math.clamp(tonumber(aW.medalLimit)or 10,1,100)aW.craftLimit=math.
clamp(tonumber(aW.craftLimit)or 3,1,100)local function aY()if type(writefile)==
'\102\117\110\099\116\105\111\110'then pcall(writefile,aX,aO:JSONEncode(aW))end end local function aZ(a_
,a0)aQ[#aQ+1]=a_:Connect(a0)end local a_=aI.section('\070\097\114\109')local a0=aK.label(a_,
'\084\101\120\116\076\097\098\101\108',aL('\067\097\114\114\101\103\097\110\100\111\032\101\115\116\097\100\111\u{2026}','\076\111\097\100\105\110\103\032\115\116\097\116\101\u{2026}'),76,1)local
a1=aK.label(a_,'\084\101\120\116\076\097\098\101\108','',72,2)local function a2(a3,a4)if aP then a1.Text=
aL(a3,a4 or a3)end end local function a3()for a4 in pairs(aR)do aR[a4]=false if
aU[a4]then aU[a4](false)end end if aV then aV.stop()end end aI.attach(function()
aP=false a3()if aV then aV.cleanup()end for a4,a5 in ipairs(aQ)do a5:Disconnect(
)end end)aI.quick(a3)local function a4(a5,a6,a7,a8,a9)local ba=aK.button(a5,aL(
a6,a7),a8)aZ(ba.Activated,function()if aT[ba]then return end aT[ba]=true task.
spawn(function()local bb,bc=pcall(a9)aT[ba]=nil if not bb then a2(aL('\070\097\108\104\097\058\032',
'\070\097\105\108\101\100\058\032')..tostring(bc))end end)end)return ba end local function a5(a6,a7,a8,
a9,ba,bb)aK.label(a6,'\084\101\120\116\076\097\098\101\108',aL(a8,a9),32,ba)local bc=aK.label(a6,'\084\101\120\116\066\111\120',
tostring(aW[a7]),42,ba+1)aZ(bc.FocusLost,function()if bb then local bd=tonumber(
bc.Text)if bd and bd==bd and bd<math.huge then aW[a7]=math.clamp(math.floor(bd),
bb[1],bb[2])end else aW[a7]=bc.Text:sub(1,600)end bc.Text=tostring(aW[a7])aY()
end)end local function a6(a7,a8,a9,ba,bb)local bc,bd=aK.checkbox(a7,aL(a9,ba),bb
)aU[a8]=bd aZ(bc.Activated,function()aR[a8]=not aR[a8]bd(aR[a8])end)end local a7
local function a8(a9,ba)if not a7 then local bb=aN:FindFirstChild('\080\097\099\107\097\103\101\115')
local bc=bb and bb:FindFirstChild('\075\110\105\116')if not bc then return nil end a7=
require(bc)end local bb,bc=pcall(a9=='\099\111\110\116\114\111\108\108\101\114'and a7.GetController or a7.
GetService,ba)return bb and bc or nil end local function a9(ba)return a8(
'\099\111\110\116\114\111\108\108\101\114',ba)end local function ba(bb)return assert(a8('\115\101\114\118\105\099\101',bb),bb..
'\032\117\110\097\118\097\105\108\097\098\108\101')end local function bb(bc)if type(bc)=='\116\097\098\108\101'and type(bc.await)==
'\102\117\110\099\116\105\111\110'then local bd=table.pack(bc:timeout(8):await())if not bd[1]then error(
tostring(bd[2]))end return table.unpack(bd,2,bd.n)end return bc end local
function bc()local bd=aM.Character local be=bd and bd:FindFirstChildOfClass(
'\072\117\109\097\110\111\105\100')local bf=bd and bd:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if bf and be and
be.Health>0 then return bd,bf,be end end local function bd()if aJ=='\108\111\098\098\121'then
local be=workspace:FindFirstChild('\076\111\098\098\121')local bf=be and be:FindFirstChild(
'\079\117\116\101\114\083\116\114\117\099\116\117\114\101\115')return bf and bf:FindFirstChild('\067\104\117\114\099\104')end return workspace:
FindFirstChild('\067\104\117\114\099\104')end local function be()local bf=bd()local bg=bf and bf:
FindFirstChild('\083\116\114\117\099\116\117\114\101')local bh=bg and bg:FindFirstChild('\082\105\110\103')local bi=bh
and bh:FindFirstChild('\083\097\118\101\071\101\097\114')return bi and bi:IsA('\066\097\115\101\080\097\114\116')and bi or nil
end local bf,bg a4(a_,'\073\114\032\097\116\u{e9}\032\097\032\105\103\114\101\106\097\032\099\097\114\114\101\103\097\100\097','\071\111\032\116\111\032\108\111\097\100\101\100\032\099\104\117\114\099\104',10,
function()local bh,bi=bc()local bj=be()assert(bh and bj,aL(
'\073\103\114\101\106\097\047\112\101\114\115\111\110\097\103\101\109\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\046','\067\104\117\114\099\104\047\099\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101\046'))bf=bi.
CFrame bg=bh bh:PivotTo(bj.CFrame*CFrame.new(0,3,5))a2(
'\068\101\115\108\111\099\097\109\101\110\116\111\032\115\111\108\105\099\105\116\097\100\111\046\032\067\111\110\102\105\114\097\032\115\117\097\032\112\111\115\105\u{e7}\u{e3}\111\046',
'\077\111\118\101\109\101\110\116\032\114\101\113\117\101\115\116\101\100\046\032\067\104\101\099\107\032\121\111\117\114\032\112\111\115\105\116\105\111\110\046')end)a4(a_,
'\086\111\108\116\097\114\032\u{e0}\032\112\111\115\105\u{e7}\u{e3}\111\032\097\110\116\101\114\105\111\114','\082\101\116\117\114\110\032\116\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110',11,
function()local bh=bc()assert(bh and bh==bg and bf,
'\078\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110\032\102\111\114\032\116\104\105\115\032\099\104\097\114\097\099\116\101\114')bh:PivotTo(bf)end)a4(a_,
'\080\097\114\097\114\032\116\111\100\097\115\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115','\083\116\111\112\032\097\108\108\032\097\117\116\111\109\097\116\105\111\110',12,function()a3()a2(
'\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\114\097\100\097\115\046','\065\117\116\111\109\097\116\105\111\110\032\115\116\111\112\112\101\100\046')end)if aJ=='\108\111\098\098\121'then aK.
label(a_,'\084\101\120\116\076\097\098\101\108',aL(
'\076\111\098\098\121\058\032\101\113\117\105\112\097\109\101\110\116\111\115\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\100\101\032\101\120\112\101\100\105\u{e7}\u{e3}\111\032\097\112\097\114\101\099\101\109\032\110\097\032\112\097\114\116\105\100\097\046'
,"\076\111\098\098\121\058\032\101\113\117\105\112\109\101\110\116\046\032\069\120\112\101\100\105\116\105\111\110\032\102\101\097\116\117\114\101\115\032\097\112\112\101\097\114\032\105\110\032\116\104\101\032\103\097\109\101\032\112\108\097\099\101\046"),54,15)a5(
a_,'\103\101\097\114','\078\111\109\101\032\101\120\097\116\111\032\100\111\032\101\113\117\105\112\097\109\101\110\116\111\032\100\111\032\108\111\098\098\121','\069\120\097\099\116\032\108\111\098\098\121\032\101\113\117\105\112\109\101\110\116\032\110\097\109\101',20)
a4(a_,'\069\113\117\105\112\097\114\032\111\032\105\116\101\109\032\105\110\102\111\114\109\097\100\111','\069\113\117\105\112\032\101\110\116\101\114\101\100\032\105\116\101\109',23,function()local bh=aH.
names(aW.gear)[1]assert(bh,'\069\110\116\101\114\032\097\110\032\105\116\101\109\032\110\097\109\101')local bi=bb(ba(
'\076\111\098\098\121\066\097\099\107\112\097\099\107\083\101\114\118\105\099\101'):SetEquipped(bh))a2(bi and aL('\069\113\117\105\112\097\109\101\110\116\111\032\097\099\101\105\116\111\046',
'\069\113\117\105\112\109\101\110\116\032\097\099\099\101\112\116\101\100\046')or aL('\079\032\106\111\103\111\032\110\u{e3}\111\032\097\099\101\105\116\111\117\032\111\032\105\116\101\109\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\097\099\099\101\112\116\032\116\104\105\115\032\105\116\101\109\046'))end)else a6(a_,'\115\119\105\110\103',
'\065\117\116\111\032\112\105\099\097\114\101\116\097\032\101\113\117\105\112\097\100\097\032\040\097\108\099\097\110\099\101\032\110\111\114\109\097\108\041','\065\117\116\111\032\101\113\117\105\112\112\101\100\032\112\105\099\107\097\120\101\032\040\110\111\114\109\097\108\032\114\097\110\103\101\041'
,20)aK.label(a_,'\084\101\120\116\076\097\098\101\108',aL(
"\069\113\117\105\112\101\032\097\032\112\105\099\097\114\101\116\097\032\101\032\097\112\114\111\120\105\109\101\045\115\101\032\100\111\032\097\108\118\111\046\032\082\101\115\112\101\105\116\097\032\111\032\099\111\111\108\100\111\119\110\032\110\097\116\105\118\111\046",
"\069\113\117\105\112\032\121\111\117\114\032\112\105\099\107\097\120\101\032\097\110\100\032\097\112\112\114\111\097\099\104\032\116\104\101\032\116\097\114\103\101\116\046\032\085\115\101\115\032\116\104\101\032\110\097\116\105\118\101\032\099\111\111\108\100\111\119\110\046"),48,21
)local bh=aI.section('\077\101\108\104\111\114\105\097\115')aK.label(bh,'\084\101\120\116\076\097\098\101\108',aL(
'\079\114\103\097\110\105\122\101\032\097\032\108\105\115\116\097\032\099\111\109\032\u{2191}\047\u{2193}\032\097\098\097\105\120\111\046\032\068\101\115\109\097\114\113\117\101\032\111\032\113\117\101\032\110\u{e3}\111\032\100\101\115\101\106\097\032\099\111\109\112\114\097\114\046'
,
'\082\101\111\114\100\101\114\032\119\105\116\104\032\u{2191}\047\u{2193}\032\098\101\108\111\119\046\032\085\110\099\104\101\099\107\032\117\112\103\114\097\100\101\115\032\121\111\117\032\100\111\032\110\111\116\032\119\097\110\116\032\116\111\032\098\117\121\046'
),50,1)a5(bh,'\114\101\115\101\114\118\101','\082\101\115\101\114\118\097\032\109\u{ed}\110\105\109\097\032\100\101\032\109\111\101\100\097\115','\077\105\110\105\109\117\109\032\099\111\105\110\032\114\101\115\101\114\118\101',4,
{0,1e9})a5(bh,'\108\105\109\105\116','\076\105\109\105\116\101\032\100\101\032\116\101\110\116\097\116\105\118\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\065\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',7,{1,100})a6(bh,'\117\112\103\114\097\100\101\115',
'\065\117\116\111\032\109\101\108\104\111\114\105\097\115\032\099\111\109\032\109\111\101\100\097\115','\065\117\116\111\032\099\111\105\110\032\117\112\103\114\097\100\101\115',10)a5(bh,'\099\114\097\102\116\076\105\109\105\116',
'\076\105\109\105\116\101\032\100\101\032\102\097\098\114\105\099\097\u{e7}\u{e3}\111\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\067\114\097\102\116\032\097\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',12,{1,100})a6(bh,'\099\114\097\102\116',
'\065\117\116\111\032\102\097\098\114\105\099\097\114\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\032\110\111\032\106\111\103\111','\065\117\116\111\032\099\114\097\102\116\032\105\116\101\109\032\115\101\108\101\099\116\101\100\032\105\110\032\103\097\109\101',15)
aK.label(bh,'\084\101\120\116\076\097\098\101\108',aL(
'\067\114\097\102\116\105\110\103\058\032\097\098\114\097\032\097\032\098\097\110\099\097\100\097\032\101\032\101\115\099\111\108\104\097\032\111\032\105\116\101\109\032\110\111\032\106\111\103\111\046\032\082\111\098\117\120\032\102\105\099\097\032\101\120\099\108\117\u{ed}\100\111\046\032\065\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\099\111\109\101\u{e7}\097\109\032\100\101\115\108\105\103\097\100\097\115\046'
,
"\067\114\097\102\116\105\110\103\058\032\111\112\101\110\032\116\104\101\032\098\101\110\099\104\032\097\110\100\032\115\101\108\101\099\116\032\097\110\032\105\116\101\109\032\105\110\032\103\097\109\101\046\032\082\111\098\117\120\032\105\115\032\101\120\099\108\117\100\101\100\046\032\065\117\116\111\109\097\116\105\111\110\032\115\116\097\114\116\115\032\100\105\115\097\098\108\101\100\046"
),72,16)local bi=aI.section('\073\103\114\101\106\097')a5(bi,'\103\101\097\114',
'\080\114\105\111\114\105\100\097\100\101\032\100\101\032\105\116\101\110\115\032\097\032\115\097\108\118\097\114\032\040\110\111\109\101\115\032\101\120\097\116\111\115\041','\071\101\097\114\032\115\097\118\101\032\112\114\105\111\114\105\116\121\032\040\101\120\097\099\116\032\110\097\109\101\115\041'
,1)local bj=aK.label(bi,'\084\101\120\116\076\097\098\101\108',aL(
"\083\101\108\101\099\105\111\110\101\032\111\115\032\105\116\101\110\115\032\101\032\114\101\118\105\115\101\032\097\110\116\101\115\032\100\101\032\115\097\108\118\097\114\046\032\083\097\108\118\097\114\032\114\101\116\111\114\110\097\032\097\111\032\108\111\098\098\121\046",
"\083\101\108\101\099\116\032\097\110\100\032\114\101\118\105\101\119\032\103\101\097\114\032\098\101\102\111\114\101\032\115\097\118\105\110\103\046\032\083\097\118\105\110\103\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\108\111\098\098\121\046"),90,5)
local bk=nil a4(bi,'\065\098\114\105\114\032\097\108\116\097\114\032\101\032\099\097\114\114\101\103\097\114\032\105\116\101\110\115','\079\112\101\110\032\097\108\116\097\114\032\097\110\100\032\108\111\097\100\032\103\101\097\114',7,
function()local bl,bm=bc()local bn=be()assert(bm and bn and(bm.Position-bn.
Position).Magnitude<=20,aL('\065\112\114\111\120\105\109\101\045\115\101\032\100\111\032\097\108\116\097\114\032\112\114\105\109\101\105\114\111\046',
'\065\112\112\114\111\097\099\104\032\116\104\101\032\097\108\116\097\114\032\102\105\114\115\116\046'))local bo=assert(a9('\085\073\067\111\110\116\114\111\108\108\101\114'),'\085\073\032\117\110\097\118\097\105\108\097\098\108\101'
)bo:ToggleFrame('\083\097\118\101\071\101\097\114',true)bk=nil bj.Text=aL(
'\065\103\117\097\114\100\101\032\097\032\108\105\115\116\097\032\110\097\116\105\118\097\059\032\100\101\112\111\105\115\032\112\114\101\112\097\114\101\032\097\032\115\101\108\101\u{e7}\u{e3}\111\046',
'\087\097\105\116\032\102\111\114\032\116\104\101\032\110\097\116\105\118\101\032\108\105\115\116\044\032\116\104\101\110\032\112\114\101\112\097\114\101\032\116\104\101\032\115\101\108\101\099\116\105\111\110\046')end)a4(bi,
'\080\114\101\112\097\114\097\114\032\115\101\108\101\u{e7}\u{e3}\111\032\112\111\114\032\112\114\105\111\114\105\100\097\100\101','\080\114\101\112\097\114\101\032\115\101\108\101\099\116\105\111\110\032\098\121\032\112\114\105\111\114\105\116\121',8,
function()local bl=assert(a9('\083\097\118\101\071\101\097\114\067\111\110\116\114\111\108\108\101\114'),'\083\097\118\101\032\085\073\032\117\110\097\118\097\105\108\097\098\108\101')assert(
bl.Loaded and bl.Frame.Visible and not bl.Pending and not bl.DeathMode,
'\079\112\101\110\032\116\104\101\032\108\105\118\101\032\097\108\116\097\114\032\085\073\032\102\105\114\115\116')local bm=bb(ba('\080\108\097\121\101\114\083\101\114\118\105\099\101'):
GetSaveGearChoices())assert(aP and type(bm)=='\116\097\098\108\101'and bl.Loaded and bl.Frame.
Visible and not bl.Pending and not bl.DeathMode,
'\067\104\111\105\099\101\115\032\117\110\097\118\097\105\108\097\098\108\101\032\111\114\032\097\108\116\097\114\032\099\108\111\115\101\100')local bn=aH.selection(bm.Items,bm.Limit,aH
.names(aW.gear))local bo=0 for bp,bq in pairs(bn)do bo+=bq end assert(bo>0,aL(
'\078\101\110\104\117\109\032\105\116\101\109\032\100\105\115\112\111\110\u{ed}\118\101\108\032\099\111\105\110\099\105\100\101\032\099\111\109\032\097\032\108\105\115\116\097\046',
'\078\111\032\097\118\097\105\108\097\098\108\101\032\103\101\097\114\032\109\097\116\099\104\101\115\032\121\111\117\114\032\108\105\115\116\046'))bl.Selection=bn bl:UpdateTotal()bk=bl bj
.Text=string.format(aL(
'\037\100\032\105\116\101\109\040\110\115\041\032\115\101\108\101\099\105\111\110\097\100\111\115\046\032\082\101\118\105\115\101\032\110\097\032\106\097\110\101\108\097\032\100\111\032\106\111\103\111\046\032\079\032\112\114\u{f3}\120\105\109\111\032\098\111\116\u{e3}\111\032\115\097\108\118\097\032\101\032\115\097\105\046'
,
"\037\100\032\105\116\101\109\040\115\041\032\115\101\108\101\099\116\101\100\046\032\082\101\118\105\101\119\032\105\110\032\116\104\101\032\103\097\109\101\032\119\105\110\100\111\119\046\032\084\104\101\032\110\101\120\116\032\098\117\116\116\111\110\032\115\097\118\101\115\032\097\110\100\032\101\120\105\116\115\046"
),bo)end)a4(bi,'\083\065\076\086\065\082\032\115\101\108\101\u{e7}\u{e3}\111\032\114\101\118\105\115\097\100\097\032\101\032\115\097\105\114',
'\083\065\086\069\032\114\101\118\105\101\119\101\100\032\115\101\108\101\099\116\105\111\110\032\097\110\100\032\101\120\105\116',9,function()local bl=bk local bm,bn=bc()local
bo=be()assert(aP and bn and bo and(bn.Position-bo.Position).Magnitude<=20 and bl
and bl.Loaded and bl.Frame.Visible and not bl.Pending and not bl.DeathMode,
'\082\101\118\105\101\119\032\103\101\097\114\032\097\116\032\116\104\101\032\097\108\116\097\114\032\119\104\105\108\101\032\097\108\105\118\101\032\102\105\114\115\116')a3()bk=nil bl:Teleport()a2(
'\083\111\108\105\099\105\116\097\u{e7}\u{e3}\111\032\101\110\118\105\097\100\097\046\032\079\032\106\111\103\111\032\099\111\110\102\105\114\109\097\032\101\032\102\097\122\032\111\032\116\101\108\101\112\111\114\116\101\046',
'\082\101\113\117\101\115\116\032\115\101\110\116\046\032\084\104\101\032\103\097\109\101\032\099\111\110\102\105\114\109\115\032\097\110\100\032\116\101\108\101\112\111\114\116\115\032\121\111\117\046')end)end if aJ=='\114\117\110'and aG
then aV=aG(aI,{actor=bc,ctrl=a9,say=a2,priority=aW.priority,setPriority=function
(bh)aW.priority=bh aY()end})end local bh local bi if aJ=='\114\117\110'then a6(a_,'\115\107\105\112',
'\065\117\116\111\032\118\111\116\097\114\032\112\097\114\097\032\112\117\108\097\114\032\099\117\116\115\099\101\110\101\115','\065\117\116\111\032\118\111\116\101\032\116\111\032\115\107\105\112\032\099\117\116\115\099\101\110\101\115',24)aK.label(a_,
'\084\101\120\116\076\097\098\101\108',aL(
'\079\032\112\114\111\103\114\101\115\115\111\032\100\101\112\101\110\100\101\032\100\097\032\098\114\111\099\097\032\101\032\100\097\115\032\112\097\114\101\100\101\115\046\032\084\101\108\101\112\111\114\116\101\032\101\032\118\111\111\032\110\u{e3}\111\032\099\111\110\116\097\109\032\113\117\105\108\u{f4}\109\101\116\114\111\115\046'
,
"\080\114\111\103\114\101\115\115\032\100\101\112\101\110\100\115\032\111\110\032\116\104\101\032\100\114\105\108\108\032\097\110\100\032\119\097\108\108\115\046\032\084\101\108\101\112\111\114\116\105\110\103\032\097\110\100\032\102\108\121\105\110\103\032\100\111\032\110\111\116\032\099\111\117\110\116\032\107\105\108\111\109\101\116\101\114\115\046"
),58,25)a4(a_,'\067\111\110\115\117\108\116\097\114\032\082\080\032\097\116\117\097\108\032\100\097\032\112\097\114\116\105\100\097','\067\104\101\099\107\032\099\117\114\114\101\110\116\032\114\117\110\032\082\080',27,function
()assert(aM:GetAttribute('\082\097\110\107\101\100\082\117\110\065\099\116\105\118\101')==true,aL(
'\069\115\116\097\032\112\097\114\116\105\100\097\032\110\u{e3}\111\032\u{e9}\032\114\097\110\113\117\101\097\100\097\046','\084\104\105\115\032\114\117\110\032\105\115\032\110\111\116\032\114\097\110\107\101\100\046'))local bj=
bb(ba('\082\097\110\107\101\100\083\101\114\118\105\099\101'):GetRankChange())assert(type(bj)=='\116\097\098\108\101'and type(bj.
DeltaRP)=='\110\117\109\098\101\114','\082\080\032\117\110\097\118\097\105\108\097\098\108\101')a2(string.format(aL(
'\082\080\032\112\114\111\106\101\116\097\100\111\032\112\101\108\111\032\106\111\103\111\058\032\037\043\100\046\032\078\u{e3}\111\032\115\097\108\118\097\032\110\101\109\032\115\097\105\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046',
"\071\097\109\101\045\112\114\111\106\101\099\116\101\100\032\082\080\058\032\037\043\100\046\032\068\111\101\115\032\110\111\116\032\097\117\116\111\109\097\116\105\099\097\108\108\121\032\115\097\118\101\032\111\114\032\101\120\105\116\046"),bj.DeltaRP))
end)local bj=aI.section('\077\101\108\104\111\114\105\097\115')a5(bj,'\109\101\100\097\108\080\114\105\111\114\105\116\121',
'\077\101\100\097\108\104\097\115\058\032\112\114\105\111\114\105\100\097\100\101\115\032\040\073\068\115\032\115\101\112\097\114\097\100\111\115\032\112\111\114\032\118\u{ed}\114\103\117\108\097\041',
'\077\101\100\097\108\115\058\032\112\114\105\111\114\105\116\105\101\115\032\040\099\111\109\109\097\045\115\101\112\097\114\097\116\101\100\032\073\068\115\041',80)a5(bj,'\109\101\100\097\108\082\101\115\101\114\118\101',
'\082\101\115\101\114\118\097\032\100\101\032\109\101\100\097\108\104\097\115','\077\101\100\097\108\032\114\101\115\101\114\118\101',83,{0,1e9})a5(bj,'\109\101\100\097\108\076\105\109\105\116',
'\076\105\109\105\116\101\032\100\101\032\099\111\109\112\114\097\115\032\100\101\032\109\101\100\097\108\104\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\077\101\100\097\108\032\112\117\114\099\104\097\115\101\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',86,{1,100})a6(bj,'\109\101\100\097\108\115',
'\065\117\116\111\032\109\101\108\104\111\114\105\097\115\032\100\101\032\076\097\114\114\121\032\099\111\109\032\109\101\100\097\108\104\097\115','\065\117\116\111\032\076\097\114\114\121\032\109\101\100\097\108\032\117\112\103\114\097\100\101\115',89)aK.label(
bj,'\084\101\120\116\076\097\098\101\108',aL(
'\065\098\114\097\032\076\097\114\114\121\032\112\101\114\116\111\032\100\097\032\101\115\116\097\u{e7}\u{e3}\111\046\032\073\068\115\058\032\084\117\114\114\101\116\068\097\109\097\103\101\044\032\070\108\097\109\101\068\117\114\097\116\105\111\110\044\032\070\114\111\115\116\068\117\114\097\116\105\111\110\044\032\070\108\097\109\101\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\070\114\111\115\116\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111\046\032\083\101\109\032\099\111\109\112\114\097\115\032\082\111\098\117\120\046'
,
"\079\112\101\110\032\076\097\114\114\121\032\110\101\097\114\032\116\104\101\032\115\116\097\116\105\111\110\046\032\073\068\115\058\032\084\117\114\114\101\116\068\097\109\097\103\101\044\032\070\108\097\109\101\068\117\114\097\116\105\111\110\044\032\070\114\111\115\116\068\117\114\097\116\105\111\110\044\032\070\108\097\109\101\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\070\114\111\115\116\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111\046\032\078\111\032\082\111\098\117\120\032\112\117\114\099\104\097\115\101\115\046"
),110,90)end local bj,bk=0,0 task.spawn(function()while aP do local bl,bm=pcall(
function()local bl,bm,bn=bc()if os.clock()>=bk then bk=os.clock()+2 a0.Text=
string.format(
'\037\115\032\u{b7}\032\080\108\097\099\101\032\037\115\n\037\115\058\032\037\115\032\u{b7}\032\037\115\058\032\037\115\n\037\115\058\032\037\100\047\037\100\032\u{b7}\032\067\114\097\102\116\058\032\037\100\047\037\100',aJ==
'\108\111\098\098\121'and'\076\111\098\098\121'or aL('\069\120\112\101\100\105\u{e7}\u{e3}\111','\069\120\112\101\100\105\116\105\111\110'),game.PlaceId,aL(
'\086\105\100\097','\072\101\097\108\116\104'),bn and math.floor(bn.Health)or 0,aL('\073\103\114\101\106\097','\067\104\117\114\099\104'),be()and
aL('\099\097\114\114\101\103\097\100\097','\108\111\097\100\101\100')or aL('\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097','\110\111\116\032\108\111\097\100\101\100'),aL(
'\084\101\110\116\097\116\105\118\097\115\032\117\112\103\114\097\100\101','\085\112\103\114\097\100\101\032\097\116\116\101\109\112\116\115'),aS.upgrades,aW.limit,aS.craft,aW.
craftLimit)end if aJ~='\114\117\110'or not bm then return end if aR.skip then local bo=aH
.skipRequest(a9('\067\117\116\083\099\101\110\101\067\111\110\116\114\111\108\108\101\114'))if not bo then bh=nil elseif not bh or bh.
name~=bo.name or bh.id~=bo.id or bh.session~=bo.session then bh=bo local bp=ba(
'\067\117\116\083\099\101\110\101\083\101\114\118\105\099\101')if bo.private then bb(bp:VoteSkipPrivate(bo.id,bo.name))else
bb(bp:VoteSkip(bo.name,bo.id))end end end if workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101'
)then return end if aR.swing and not game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101'):
GetFocusedTextBox()then local bo=a9('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local bp=bo and bo.
ActiveTool local bq=a9('\085\073\067\111\110\116\114\111\108\108\101\114')if bp and bp.Tool and bp.Tool.Name:find(
'\080\105\099\107\097\120\101',1,true)and type(bp.Swing)=='\102\117\110\099\116\105\111\110'and not(bq and bq.ActiveFrame and
bq.ActiveFrame.Visible)then bp:Swing()end end if os.clock()<bj then return end
bj=os.clock()+3 if aR.upgrades and aS.upgrades<aW.limit then local bo=a9(
'\068\114\105\108\108\085\112\103\114\097\100\101\067\111\110\116\114\111\108\108\101\114')if bo and not bo.PurchasePending and not bo.CardsLocked
and not bo.ActiveClassReward and bo.OptionsVersion~=nil then local bp=bo.
OptionsVersion local bq=bo.RollToken local br=bb(ba('\067\117\114\114\101\110\099\121\083\101\114\118\105\099\101'):
GetCurrency())if not aP or not aR.upgrades or bp~=bo.OptionsVersion or bq~=bo.
RollToken or bo.PurchasePending or bo.CardsLocked or bo.ActiveClassReward or not
bc()then return end local bs=aH.offer(bo.Options,br,aW.reserve,aH.names(aW.
priority))if bs then aS.upgrades+=1 bo:SetPurchasePending(true)local bt,bu=
pcall(function()return bb(ba('\068\114\105\108\108\083\101\114\118\105\099\101'):UpgradeDrill(bs.UpgradeName,bp))end
)if bp==bo.OptionsVersion and bq==bo.RollToken then bo:SetPurchasePending(false)
end if not bt then error(bu)end if not aP then return end if bu=='\112\114\111\109\112\116\101\100'then
aR.upgrades=false aU.upgrades(false)a2(
'\079\032\106\111\103\111\032\114\101\116\111\114\110\111\117\032\117\109\032\102\108\117\120\111\032\100\101\032\099\111\109\112\114\097\059\032\097\117\116\111\109\097\u{e7}\u{e3}\111\032\100\101\115\097\116\105\118\097\100\097\046',
'\084\104\101\032\103\097\109\101\032\114\101\116\117\114\110\101\100\032\097\032\112\117\114\099\104\097\115\101\032\102\108\111\119\059\032\097\117\116\111\109\097\116\105\111\110\032\100\105\115\097\098\108\101\100\046')else a2(aL(
'\077\101\108\104\111\114\105\097\032\115\111\108\105\099\105\116\097\100\097\058\032','\085\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\058\032')..bs.UpgradeName)end if type(bo.
FetchUpgradeOptions)=='\102\117\110\099\116\105\111\110'then bo:FetchUpgradeOptions()end end end end if
aR.medals and aS.medals<aW.medalLimit then local bo=a9('\076\097\114\114\121\067\111\110\116\114\111\108\108\101\114')if bo
and bo.Frame and bo.Frame.Visible and not bo.PurchasePending and bo:FindStation(
)then if not bi then local bp=aN:FindFirstChild('\083\104\097\114\101\100')local bq=bp and bp:
FindFirstChild('\076\097\114\114\121\067\111\110\102\105\103')if bq then bi=require(bq).Upgrades end end local bp
=bi and aH.medalOffer(bi,bo.State,aW.medalReserve,aH.names(aW.medalPriority))if
bp then aS.medals+=1 bo:BuyUpgrade(bp)a2(aL('\077\101\108\104\111\114\105\097\032\099\111\109\032\109\101\100\097\108\104\097\115\032\115\111\108\105\099\105\116\097\100\097\058\032'
,'\077\101\100\097\108\032\117\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\058\032')..bp)end end end if aR.craft and aS.craft<aW.
craftLimit then local bo=a9('\067\114\097\102\116\105\110\103\067\111\110\116\114\111\108\108\101\114')if bo and bo.CurrentItem and
not bo.PendingCraft and bo.Frame and bo.Frame.Visible and not bo:
CanPurchaseWithRobux(bo.CurrentItem)and bo:CanCraft(bo.CurrentItem)then aS.craft
+=1 bo:CraftCurrentItem()a2(
'\070\097\098\114\105\099\097\u{e7}\u{e3}\111\032\115\111\108\105\099\105\116\097\100\097\032\112\097\114\097\032\111\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\046',
'\067\114\097\102\116\032\114\101\113\117\101\115\116\101\100\032\102\111\114\032\116\104\101\032\115\101\108\101\099\116\101\100\032\105\116\101\109\046')end end end)if not bl then a2(aL(
'\065\103\117\097\114\100\097\110\100\111\032\047\032\101\114\114\111\058\032','\087\097\105\116\105\110\103\032\047\032\101\114\114\111\114\058\032')..tostring(bm))bj=os.clock()+8 end
task.wait(0.2)end end)end local aJ,aK,aL=false,nil,false local aM=task.spawn(
function()aJ,aK=pcall(aI,{ui=O,page=N('\070\097\114\109'),T=function(aM,aN)return b.language
=='\112\116'and aM or aN end,progress=aE,attach=function(aM)j=aM end,section=N,quick=
function(aM)k=aM end})aL=true end)local aN=os.clock()+45 while l and not aL and
os.clock()<aN do task.wait(0.05)end if not aL then pcall(task.cancel,aM)aJ=false
aK=p('\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\052\053\032\115\101\103\117\110\100\111\115\032\101\120\099\101\100\105\100\111\046\032\u{da}\108\116\105\109\097\032\101\116\097\112\097\058\032',
'\052\053\045\115\101\099\111\110\100\032\116\105\109\101\111\117\116\046\032\076\097\115\116\032\115\116\097\103\101\058\032')..as.Text end if not l then return end if not
aJ then if j then pcall(j)j=nil end ar.Text=p(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\099\097\114\114\101\103\097\114\032\097\115\032\102\117\110\u{e7}\u{f5}\101\115',
'\067\111\117\108\100\032\110\111\116\032\108\111\097\100\032\116\104\101\032\102\101\097\116\117\114\101\115')as.Text=p(
'\070\101\099\104\101\032\111\032\112\097\105\110\101\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046\032\068\101\116\097\108\104\101\115\058\032',
'\067\108\111\115\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\116\114\121\032\097\103\097\105\110\046\032\068\101\116\097\105\108\115\058\032')..tostring(aK)aw.Text=p(
'\067\097\114\114\101\103\097\109\101\110\116\111\032\105\110\116\101\114\114\111\109\112\105\100\111','\076\111\097\100\105\110\103\032\105\110\116\101\114\114\117\112\116\101\100')b.ready()return end local
function aO(aP,aQ)local aR,aS,aT=false,false,nil local aU=task.spawn(function()
aS,aT=pcall(aP)aR=true end)local aV=os.clock()+aQ while l and not aR and os.
clock()<aV do task.wait(0.05)end if not aR then pcall(task.cancel,aU)return
false,p('\084\101\109\112\111\032\108\105\109\105\116\101\032\101\120\099\101\100\105\100\111','\084\105\109\101\032\108\105\109\105\116\032\101\120\099\101\101\100\101\100')end return aS,aT end aE(
0.92,'\077\111\110\116\097\110\100\111\032\111\115\032\097\106\117\115\116\101\115\032\100\101\032\116\101\108\097\u{2026}','\066\117\105\108\100\105\110\103\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\u{2026}')
local aP local aQ,aR=aO(function()local aQ=N('\065\106\117\115\116\101\115')ab(aQ)local aR=O.button(
aQ,p('\u{1f1e7}\u{1f1f7}\032\032\073\100\105\111\109\097\058\032\080\111\114\116\117\103\117\u{ea}\115\032\032\u{b7}\032\032\065\108\116\101\114\097\114',
'\u{1f1fa}\u{1f1f8}\032\032\076\097\110\103\117\097\103\101\058\032\069\110\103\108\105\115\104\032\032\u{b7}\032\032\067\104\097\110\103\101'),870)r(aR.Activated,
function()if type(b.chooseLanguage)=='\102\117\110\099\116\105\111\110'then b.chooseLanguage()end end)O.
label(aQ,'\084\101\120\116\076\097\098\101\108',p(
'\084\114\111\099\097\114\032\111\032\105\100\105\111\109\097\032\114\101\097\098\114\101\032\111\032\112\097\105\110\101\108\032\099\111\109\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\117\115\097\100\097\115\046',
'\067\104\097\110\103\105\110\103\032\108\097\110\103\117\097\103\101\032\114\101\111\112\101\110\115\032\116\104\101\032\112\097\110\101\108\032\119\105\116\104\032\097\117\116\111\109\097\116\105\111\110\032\112\097\117\115\101\100\046'),44,871)O.label(aQ
,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\084\111\113\117\101\032\065\058\032\097\098\114\105\114\047\102\101\099\104\097\114\046\032\083\101\103\117\114\101\032\048\044\054\053\115\032\101\032\115\111\108\116\101\058\032\112\097\114\097\114\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\046\032\065\114\114\097\115\116\101\058\032\109\111\118\101\114\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\105\110\101\108\046'
or
"\084\097\112\032\065\058\032\116\111\103\103\108\101\032\112\097\110\101\108\046\032\072\111\108\100\032\048\046\054\053\115\032\097\110\100\032\114\101\108\101\097\115\101\058\032\115\116\111\112\032\097\117\116\111\109\097\116\105\111\110\046\032\068\114\097\103\058\032\109\111\118\101\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\110\101\108\046"
,68,900)local aS=O.label(aQ,'\084\101\120\116\066\111\120','\069\066\065\053\070\070',40,902)aS.ClearTextOnFocus=false
O.label(aQ,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\067\111\114\032\100\101\032\100\101\115\116\097\113\117\101\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\120\046\058\032\070\070\067\065\052\050\041'or
'\065\099\099\101\110\116\032\099\111\108\111\114\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\046\103\046\032\070\070\067\065\052\050\041',30,901)local aT=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\084\104\101\109\101\046\106\115\111\110'local aU='\065\109\101\116\104\121\115\116'local aV={Amethyst={'\048\067\048\067\049\048',
'\050\055\049\056\051\053','\057\054\051\067\068\067','\070\070\070\053\070\070','\067\065\066\052\068\056','\069\066\065\053\070\070','\049\057\048\070\050\051'},Potato={'\050\051\049\070\049\057','\052\049\051\054\050\055'
,'\055\052\053\056\051\049','\070\067\070\054\069\050','\068\053\067\051\065\051','\069\066\065\053\070\070','\051\048\050\055\049\068'},Bloodmoon={'\049\055\048\067\049\051','\051\048\049\051\049\070',
'\054\066\050\054\051\068','\070\070\069\065\070\048','\068\050\065\048\066\048','\070\070\052\053\054\056','\050\051\048\070\049\065'},Midnight={'\049\048\049\051\049\069','\049\068\050\052\051\054',
'\051\053\052\054\054\053','\069\068\070\051\070\070','\065\052\066\051\067\067','\055\051\057\070\070\070','\049\053\049\066\050\065'},Emerald={'\048\066\049\057\049\054','\049\052\050\069\050\054',
'\050\066\053\057\052\055','\069\054\070\070\070\051','\057\069\067\054\066\051','\053\054\068\068\065\048','\049\048\050\052\049\069'},Arctic={'\049\049\049\066\050\054','\049\067\050\068\051\068','\051\054\053\049\054\065'
,'\069\066\070\056\070\070','\065\057\067\055\068\065','\055\057\068\057\070\070','\049\055\050\051\051\049'}}local function aW(aX)return Color3.
fromRGB(tonumber(aX:sub(1,2),16),tonumber(aX:sub(3,4),16),tonumber(aX:sub(5,6),
16))end local function aX()if type(writefile)=='\102\117\110\099\116\105\111\110'then task.spawn(
function()pcall(writefile,aT,e:JSONEncode({preset=aU,hex=aS.Text}))end)end end
local function aY(aZ)if type(aZ)~='\115\116\114\105\110\103'or not aZ:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then
return false end o=Color3.fromRGB(tonumber(aZ:sub(1,2),16),tonumber(aZ:sub(3,4),
16),tonumber(aZ:sub(5,6),16))m.accent=o F.BackgroundColor3=o z.BackgroundColor3=
o M(J)for a_,a0 in ipairs(P)do a0()end for a_,a0 in pairs(H)do a0.
ScrollBarImageColor3=o end aS.Text=aZ return true end local function aZ(a_)local
a0=aV[a_]if not a0 then return end aU=a_ for a1,a2 in ipairs({'\100\097\114\107','\116\105\108\101',
'\101\100\103\101','\116\101\120\116','\109\117\116\101\100','\097\099\099\101\110\116','\115\105\100\101\098\097\114'})do m[a2]=aW(a0[a1])end o=m.accent for
a1,a2 in pairs(n)do if a1.Parent then for a3,a4 in pairs(a2)do a1[a3]=m[a4]end
end end local a1=w:FindFirstChildOfClass('\085\073\071\114\097\100\105\101\110\116')if a1 then a1.Color=
ColorSequence.new(m.tile,m.dark)end aY(a0[6])end O.label(aQ,'\084\101\120\116\076\097\098\101\108',p(
'\084\069\077\065\083\032\080\082\079\078\084\079\083','\084\072\069\077\069\032\080\082\069\083\069\084\083'),32,880)for a_,a0 in ipairs({'\065\109\101\116\104\121\115\116','\080\111\116\097\116\111'
,'\066\108\111\111\100\109\111\111\110','\077\105\100\110\105\103\104\116','\069\109\101\114\097\108\100','\065\114\099\116\105\099'})do local a1=O.button(aQ,a0,880+a_)r(
a1.Activated,function()aZ(a0)aX()end)end aP=function()if type(readfile)==
'\102\117\110\099\116\105\111\110'then local a_=readfile(aT)if type(a_)=='\115\116\114\105\110\103'and#a_<=2048 then local
a0=e:JSONDecode(a_)if l and aS.Parent and type(a0)=='\116\097\098\108\101'then if aV[a0.preset]
then aZ(a0.preset)end aY(a0.hex)end end end end r(aS.FocusLost,function()local
a_=aS.Text:gsub('\035',''):upper()if aY(a_)then aX()end end)end,5)if not l then
return end aE(0.96,'\065\106\117\115\116\097\110\100\111\032\111\032\112\097\105\110\101\108\032\u{e0}\032\115\117\097\032\116\101\108\097\u{2026}',
'\070\105\116\116\105\110\103\032\116\104\101\032\112\097\110\101\108\032\116\111\032\121\111\117\114\032\115\099\114\101\101\110\u{2026}')local aS,aT=pcall(X)if not aS then T=
table.clone(S)pcall(X)end local aU if not aQ or not aS then aU=p(
'\065\106\117\115\116\101\115\032\118\105\115\117\097\105\115\032\105\110\099\111\109\112\108\101\116\111\115\058\032','\083\111\109\101\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\032\102\097\105\108\101\100\058\032')..tostring(aR
or aT)E.Text=aU warn('\091\065\110\111\110\072\117\098\032'..a..'\093\032'..aU)end aE(1,
'\080\097\105\110\101\108\032\112\114\111\110\116\111\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\101\115\116\u{e3}\111\032\112\097\117\115\097\100\097\115\046',
'\080\097\110\101\108\032\114\101\097\100\121\046\032\070\101\097\116\117\114\101\115\032\097\114\101\032\112\097\117\115\101\100\046')ar.Text=p('\083\101\117\032\112\097\105\110\101\108\032\101\115\116\u{e1}\032\112\114\111\110\116\111',
'\089\111\117\114\032\112\097\110\101\108\032\105\115\032\114\101\097\100\121')am=true if ao()then ap:Destroy()else task.spawn(function()
while l and ap.Parent and not ao()do task.wait(0.05)end if l and ap.Parent then
ap:Destroy()end end)end pcall(b.ready)if aP then task.defer(function()aO(aP,2)
end)end
