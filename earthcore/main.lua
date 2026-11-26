-- Luau
-- AnonHub protected distribution 0.40.4
-- local BOOT_VERSION="0.40.4"
local a='\048\046\052\048\046\052'local b=...assert(type(b)=='\116\097\098\108\101'and b.access,
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
'\079\102\102',style='\079\117\116\108\105\110\101',textSize=12,distanceColor='\068\048\068\056\069\056',hideDead=true,
hideAttached=true,combatDistance=22,gunRange=250,hitboxSize=8}local aV={speed=
false,noclip=false,fly=false,aura=false,oreAura=false,autoMove=false,autoFire=
false,silentAim=false,hitbox=false}local aW={{'\109\111\098\115','\077\111\110\115\116\114\111\115','\069\110\101\109\105\101\115',
'\070\070\054\048\054\048'},{'\112\108\097\121\101\114\115','\074\111\103\097\100\111\114\101\115','\080\108\097\121\101\114\115','\054\048\068\056\070\070'},{'\099\111\109\112\097\110\105\111\110\115',
'\067\111\109\112\097\110\104\101\105\114\111\115','\067\111\109\112\097\110\105\111\110\115','\054\048\070\070\066\048'},{'\099\104\101\115\116\115','\066\097\u{fa}\115','\067\104\101\115\116\115','\070\070\068\048\054\048'},{
'\109\105\109\105\099\115','\077\u{ed}\109\105\099\111\115\032\105\100\101\110\116\105\102\105\099\097\100\111\115','\073\100\101\110\116\105\102\105\101\100\032\109\105\109\105\099\115','\070\070\053\048\068\048'},{'\105\116\101\109\115',
'\073\116\101\110\115','\073\116\101\109\115','\070\070\070\070\070\070'},{'\115\099\114\097\112','\083\117\099\097\116\097\115','\083\099\114\097\112','\066\053\067\048\068\048'},{'\111\114\101\115',
'\077\105\110\u{e9}\114\105\111\115','\079\114\101\115','\054\048\069\048\070\070'},{'\099\104\117\114\099\104','\073\103\114\101\106\097','\067\104\117\114\099\104','\070\070\070\048\065\048'},{'\100\111\111\114\115',
'\069\110\116\114\097\100\097\115\032\100\101\032\068\117\110\103\101\111\110','\068\117\110\103\101\111\110\032\101\110\116\114\097\110\099\101\115','\066\048\056\048\070\070'},{'\097\114\101\110\097\115','\080\111\114\116\097\115\032\100\101\032\097\114\101\110\097',
'\065\114\101\110\097\032\100\111\111\114\115','\070\070\056\048\052\048'},{'\116\114\101\097\115\117\114\101\068\111\111\114\115','\080\111\114\116\097\115\032\100\101\032\116\101\115\111\117\114\111','\084\114\101\097\115\117\114\101\032\100\111\111\114\115',
'\070\070\069\048\056\048'}}local aX={}for aY,aZ in ipairs(aW)do aX[aZ[1] ]={enabled=false,color=
aZ[4]}end local aY='\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\086\105\115\117\097\108\095'..aL.UserId..'\046\106\115\111\110'if type(
readfile)=='\102\117\110\099\116\105\111\110'then pcall(function()local aZ=aP:JSONDecode(readfile(aY))
for a_,a0 in pairs(aU)do if type(aZ.config[a_])==type(a0)then aU[a_]=aZ.config[
a_]end end for a_,a0 in pairs(aX)do local a1=aZ.colors and aZ.colors[a_]if type(
a1)=='\115\116\114\105\110\103'and a1:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then a0.color=a1 end end end)end
local function aZ()if type(writefile)=='\102\117\110\099\116\105\111\110'then local a_={}for a0,a1 in
pairs(aX)do a_[a0]=a1.color end pcall(writefile,aY,aP:JSONEncode({config=aU,
colors=a_}))end end local function a_(a0,a1)aR[#aR+1]=a0:Connect(a1)end local
function a0(a1,a2,a3)local a4=Instance.new(a1)for a5,a6 in pairs(a2)do a4[a5]=a6
end a4.Parent=a3 return a4 end local function a1(a2)return Color3.fromRGB(
tonumber(a2:sub(1,2),16),tonumber(a2:sub(3,4),16),tonumber(a2:sub(5,6),16))end
local function a2(a3,a4,a5,a6,a7,a8)a8=a8 or aV local a9,ba=aJ.checkbox(a3,aK(a5
,a6),a7)aS[a4]={paint=ba,table=a8}a_(a9.Activated,function()a8[a4]=not a8[a4]ba(
a8[a4])end)end local function a3(a4,a5,a6,a7,a8,a9,ba)aU[a5]=math.clamp(
tonumber(aU[a5])or a9,a9,ba)if aU[a5]~=aU[a5]then aU[a5]=a9 end aJ.label(a4,
'\084\101\120\116\076\097\098\101\108',aK(a6,a7),30,a8)local bb=aJ.label(a4,'\084\101\120\116\066\111\120',tostring(aU[a5]),40,
a8+1)a_(bb.FocusLost,function()local bc=tonumber(bb.Text)if bc and bc==bc and
math.abs(bc)<math.huge then aU[a5]=math.clamp(bc,a9,ba)aZ()end bb.Text=tostring(
aU[a5])end)end local a4=aH.section('\077\101\108\104\111\114\105\097\115')local a5={TeamHealth=
'\086\105\100\097\032\109\u{e1}\120\105\109\097',LifeSteal='\082\111\117\098\111\032\100\101\032\118\105\100\097',DrillPower='\080\111\116\u{ea}\110\099\105\097\032\100\097\032\098\114\111\099\097'
,RPMOverclock='\082\080\077\032\100\097\032\098\114\111\099\097',SackStorage='\067\097\112\097\099\105\100\097\100\101\032\100\097\032\109\111\099\104\105\108\097',DriveSpeed=
'\086\101\108\111\099\105\100\097\100\101\032\100\097\032\098\114\111\099\097',FuelStorage='\067\097\112\097\099\105\100\097\100\101\032\100\101\032\099\111\109\098\117\115\116\u{ed}\118\101\108',DrillDefense=
'\068\097\110\111\032\100\101\032\099\111\110\116\097\116\111',PowerDrive='\065\099\101\108\101\114\097\u{e7}\u{e3}\111',PowerSlam='\073\109\112\097\099\116\111\032\112\111\116\101\110\116\101',
EngineOverdrive='\083\111\098\114\101\099\097\114\103\097\032\100\111\032\109\111\116\111\114',MegaDrill='\077\101\103\097\032\098\114\111\099\097',TeamGunDamage=
'\068\097\110\111\032\100\101\032\097\114\109\097\115',TeamMeleeDamage='\068\097\110\111\032\099\111\114\112\111\032\097\032\099\111\114\112\111',TeamPickaxeDamage=
'\068\097\110\111\032\100\101\032\112\105\099\097\114\101\116\097',TeamExplosiveDamage='\068\097\110\111\032\101\120\112\108\111\115\105\118\111',PowerBurst=
'\069\120\112\108\111\115\u{e3}\111\032\100\101\032\112\111\116\u{ea}\110\099\105\097',MountedGunner='\065\116\105\114\097\100\111\114\032\109\111\110\116\097\100\111',MoneyDrill=
'\077\111\101\100\097\115\032\112\111\114\032\112\097\114\101\100\101',UltraDrill='\085\108\116\114\097\032\098\114\111\099\097',HealthRegen='\082\101\103\101\110\101\114\097\u{e7}\u{e3}\111'
,CartExtension='\069\120\116\101\110\115\u{e3}\111\032\100\097\032\098\114\111\099\097'}local a6,a7={},{}for a8,a9 in ipairs(aF)
do a7[a9.id]=a9 end for a8 in aI.priority:gmatch('\091\094\044\093\043')do a8=a8:match(
'\094\037\115\042\040\046\045\041\037\115\042\036')if a7[a8]and not table.find(a6,a8)then a6[#a6+1]=a8 end end local
a8={}for a9,ba in ipairs(a6)do a8[ba]=true end for a9,ba in ipairs(aF)do if not
table.find(a6,ba.id)then a6[#a6+1]=ba.id end end local a9={}local function ba()
local bb={}for bc,bd in ipairs(a6)do local be=a9[bd]if be then be.frame.
LayoutOrder=100+bc be.caption.Text=bc..'\032\u{b7}\032'..aK(a5[bd]or a7[bd].name,a7[bd
].name)be.paint(a8[bd])end if a8[bd]then bb[#bb+1]=bd end end aI.setPriority(
table.concat(bb,'\044'))end for bb,bc in ipairs(a6)do local bd=a7[bc]local be=a0(
'\070\114\097\109\101',{Size=UDim2.new(1,-8,0,58),BackgroundTransparency=1},a4)a0('\073\109\097\103\101\076\097\098\101\108',
{Size=UDim2.fromOffset(36,36),Position=UDim2.fromOffset(0,10),Image=bd.icon,
BackgroundTransparency=1},be)local bf,bg=aJ.checkbox(be,'',0)bf.Size=UDim2.new(1
,-136,0,48)bf.Position=UDim2.fromOffset(42,4)local bh=bf:FindFirstChildWhichIsA(
'\084\101\120\116\076\097\098\101\108')a9[bc]={frame=be,paint=bg,caption=bh}a_(bf.Activated,function()a8[bc
]=not a8[bc]ba()end)for bi,bj in ipairs({-1,1})do local bk=a0('\084\101\120\116\066\117\116\116\111\110',{Text
=bj<0 and'\u{2191}'or'\u{2193}',Size=UDim2.fromOffset(36,44),Position=UDim2.new(
1,-82+(bi-1)*40,0,6),BackgroundColor3=Color3.fromRGB(35,45,60),TextColor3=Color3
.new(1,1,1),TextSize=20},be)a0('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,8)},bk)a_(bk.
Activated,function()local bl=table.find(a6,bc)local bm=bl+bj if bm>=1 and bm<=#
a6 then a6[bl],a6[bm]=a6[bm],a6[bl]ba()end end)end end ba()local bb=aH.section(
'\077\111\118\105\109\101\110\116\111')a2(bb,'\115\112\101\101\100','\086\101\108\111\099\105\100\097\100\101\032\112\101\114\115\111\110\097\108\105\122\097\100\097','\067\117\115\116\111\109\032\119\097\108\107\032\115\112\101\101\100',1)a3(bb
,'\115\112\101\101\100','\086\101\108\111\099\105\100\097\100\101\032\040\087\097\108\107\083\112\101\101\100\041','\087\097\108\107\083\112\101\101\100',2,8,100)a2(bb,'\110\111\099\108\105\112','\078\111\099\108\105\112',
'\078\111\099\108\105\112',5)a2(bb,'\102\108\121','\070\108\121\032\u{b7}\032\115\105\103\097\032\097\032\099\u{e2}\109\101\114\097\032\047\032\106\111\121\115\116\105\099\107',
'\070\108\121\032\u{b7}\032\099\097\109\101\114\097\032\047\032\106\111\121\115\116\105\099\107\032\100\105\114\101\099\116\105\111\110',6)a3(bb,'\102\108\121\083\112\101\101\100','\086\101\108\111\099\105\100\097\100\101\032\100\111\032\070\108\121',
'\070\108\121\032\115\112\101\101\100',7,5,150)aJ.label(bb,'\084\101\120\116\076\097\098\101\108',aK(
'\070\108\121\058\032\087\065\083\068\047\106\111\121\115\116\105\099\107\044\032\069\115\112\097\u{e7}\111\032\115\111\098\101\032\101\032\067\116\114\108\032\100\101\115\099\101\046\032\078\111\032\099\101\108\117\108\097\114\044\032\117\115\101\032\111\115\032\098\111\116\u{f5}\101\115\032\u{2191}\047\u{2193}\046'
,
'\070\108\121\058\032\087\065\083\068\047\106\111\121\115\116\105\099\107\044\032\083\112\097\099\101\032\117\112\032\097\110\100\032\067\116\114\108\032\100\111\119\110\046\032\079\110\032\109\111\098\105\108\101\044\032\117\115\101\032\u{2191}\047\u{2193}\032\098\117\116\116\111\110\115\046'
),56,10)local bc=aH.section('\067\111\109\098\097\116\101')a2(bc,'\097\117\116\111\077\111\118\101',
'\065\117\116\111\032\077\111\118\101\032\u{b7}\032\109\097\110\116\101\114\032\100\105\115\116\u{e2}\110\099\105\097\032\100\111\032\105\110\105\109\105\103\111',
'\065\117\116\111\032\077\111\118\101\032\u{b7}\032\109\097\105\110\116\097\105\110\032\101\110\101\109\121\032\100\105\115\116\097\110\099\101',30)a3(bc,'\099\111\109\098\097\116\068\105\115\116\097\110\099\101',
'\068\105\115\116\u{e2}\110\099\105\097\032\100\111\032\065\117\116\111\032\077\111\118\101\032\040\115\116\117\100\115\041','\065\117\116\111\032\077\111\118\101\032\100\105\115\116\097\110\099\101\032\040\115\116\117\100\115\041',31,5,40)aJ.
label(bc,'\084\101\120\116\076\097\098\101\108',aK(
'\077\111\118\101\045\115\101\032\101\032\117\115\097\032\111\032\097\116\097\113\117\101\032\101\113\117\105\112\097\100\111\046\032\050\050\032\115\116\117\100\115\032\u{e9}\032\097\032\100\105\115\116\u{e2}\110\099\105\097\032\105\110\105\099\105\097\108\059\032\110\u{e3}\111\032\103\097\114\097\110\116\101\032\105\110\118\117\108\110\101\114\097\098\105\108\105\100\097\100\101\046\032\078\u{e3}\111\032\109\111\118\101\032\101\110\113\117\097\110\116\111\032\112\105\108\111\116\097\046'
,
"\077\111\118\101\115\032\097\110\100\032\117\115\101\115\032\116\104\101\032\101\113\117\105\112\112\101\100\032\097\116\116\097\099\107\046\032\083\116\097\114\116\115\032\097\116\032\050\050\032\115\116\117\100\115\059\032\100\111\101\115\032\110\111\116\032\103\117\097\114\097\110\116\101\101\032\105\109\109\117\110\105\116\121\046\032\068\111\101\115\032\110\111\116\032\109\111\118\101\032\119\104\105\108\101\032\100\114\105\118\105\110\103\046"
),66,33)a2(bc,'\097\117\116\111\070\105\114\101','\065\117\116\111\032\070\105\114\101\032\u{b7}\032\097\114\109\097\032\100\101\032\102\111\103\111\032\101\113\117\105\112\097\100\097',
'\065\117\116\111\032\070\105\114\101\032\u{b7}\032\101\113\117\105\112\112\101\100\032\102\105\114\101\097\114\109',35)a2(bc,'\115\105\108\101\110\116\065\105\109',
'\083\105\108\101\110\116\032\065\105\109\032\u{b7}\032\109\105\114\097\114\032\110\097\032\099\097\098\101\u{e7}\097\032\100\111\115\032\078\080\067\115',
'\083\105\108\101\110\116\032\065\105\109\032\u{b7}\032\097\105\109\032\097\116\032\078\080\067\032\104\101\097\100\115',36)a3(bc,'\103\117\110\082\097\110\103\101',
'\068\105\115\116\u{e2}\110\099\105\097\032\100\101\032\115\101\108\101\u{e7}\u{e3}\111\032\100\097\032\097\114\109\097','\071\117\110\032\116\097\114\103\101\116\032\115\101\108\101\099\116\105\111\110\032\100\105\115\116\097\110\099\101',37
,10,1000)a2(bc,'\104\105\116\098\111\120','\072\105\116\098\111\120\032\108\111\099\097\108\032\097\109\112\108\105\097\100\111\032\u{b7}\032\099\097\105\120\097\032\116\114\097\110\115\112\097\114\101\110\116\101',
'\076\097\114\103\101\114\032\108\111\099\097\108\032\104\105\116\098\111\120\032\u{b7}\032\116\114\097\110\115\112\097\114\101\110\116\032\098\111\120',40)a3(bc,'\104\105\116\098\111\120\083\105\122\101',
'\084\097\109\097\110\104\111\032\100\111\032\104\105\116\098\111\120\032\108\111\099\097\108','\076\111\099\097\108\032\104\105\116\098\111\120\032\115\105\122\101',41,2,20)a2(bc,'\097\117\114\097',
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
'\109\097\120\069\083\080','\077\u{e1}\120\105\109\111\032\100\101\032\109\097\114\099\097\100\111\114\101\115\032\040\049\u{2013}\049\048\048\048\041',
'\077\097\114\107\101\114\032\108\105\109\105\116\032\040\049\u{2013}\049\048\048\048\041',18,1,1000)local bh={'\068\117\110\103\101\111\110\115','\069\110\101\109\105\101\115','\076\111\111\116',
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
),78,27)a2(bf,'\104\105\100\101\068\101\097\100','\079\099\117\108\116\097\114\032\105\110\105\109\105\103\111\115\032\109\111\114\116\111\115','\072\105\100\101\032\100\101\097\100\032\101\110\101\109\105\101\115',40,aU)a2(
bf,'\104\105\100\101\065\116\116\097\099\104\101\100','\079\099\117\108\116\097\114\032\105\116\101\110\115\032\097\110\101\120\097\100\111\115\032\u{e0}\032\098\114\111\099\097',
'\072\105\100\101\032\105\116\101\109\115\032\097\116\116\097\099\104\101\100\032\116\111\032\100\114\105\108\108',41,aU)aS.hideDead.paint(aU.hideDead)aS.
hideAttached.paint(aU.hideAttached)a3(bf,'\116\101\120\116\083\105\122\101',
'\084\097\109\097\110\104\111\032\100\111\115\032\110\111\109\101\115\032\101\032\100\105\115\116\u{e2}\110\099\105\097\115','\078\097\109\101\032\097\110\100\032\100\105\115\116\097\110\099\101\032\116\101\120\116\032\115\105\122\101',43,8,28)aJ.
label(bf,'\084\101\120\116\076\097\098\101\108',aK('\067\111\114\032\100\097\032\100\105\115\116\u{e2}\110\099\105\097\032\040\072\069\088\041','\068\105\115\116\097\110\099\101\032\099\111\108\111\114\032\040\072\069\088\041'),30
,46)if not aU.distanceColor:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then aU.distanceColor=
'\068\048\068\056\069\056'end local bw=aJ.label(bf,'\084\101\120\116\066\111\120',aU.distanceColor,40,47)a_(bw.
FocusLost,function()local bx=bw.Text:gsub('\035',''):upper()if bx:match(
'\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then aU.distanceColor=bx aZ()end bw.Text=aU.distanceColor end)
local bx=bb:FindFirstAncestorOfClass('\083\099\114\101\101\110\071\117\105')local by=a0('\070\114\097\109\101',{Size=UDim2
.fromScale(1,1),BackgroundTransparency=1},bx)local bz=0 local bA,bB,bC,bD local
bE={{'\097\117\114\097','\065\116\097\113\117\101','\065\116\116\097\099\107'},{'\111\114\101\065\117\114\097','\080\105\099\097\114\101\116\097','\080\105\099\107\097\120\101'},{'\102\108\121','\086\111\097\114',
'\070\108\121'},{'\110\111\099\108\105\112','\078\111\099\108\105\112','\078\111\099\108\105\112'},{'\115\112\101\101\100','\086\101\108\111\099\105\100\097\100\101','\083\112\101\101\100'},{'\097\117\116\111\077\111\118\101',
'\065\117\116\111\032\077\111\118\101','\065\117\116\111\032\077\111\118\101'},{'\097\117\116\111\070\105\114\101','\065\117\116\111\032\070\105\114\101','\065\117\116\111\032\070\105\114\101'},{'\117\112','\083\117\098\105\114','\085\112'
},{'\100\111\119\110','\068\101\115\099\101\114','\068\111\119\110'}}local bF={}for bG,bH in ipairs(bE)do local bI=bH[1]
local bJ=a0('\070\114\097\109\101',{Size=UDim2.fromOffset(66,76),Position=UDim2.new(0,12+((bG-1
)%4)*72,1,-90-math.floor((bG-1)/4)*82),BackgroundColor3=Color3.fromRGB(20,27,39)
,Visible=false},by)a0('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,10)},bJ)a0('\085\073\083\116\114\111\107\101',
{Color=Color3.fromRGB(105,165,220),Thickness=1.5,Transparency=0.2},bJ)local bK,
bL=aJ.checkbox(bb,aK('\065\116\097\108\104\111\032\110\097\032\116\101\108\097\058\032','\083\099\114\101\101\110\032\115\104\111\114\116\099\117\116\058\032')..aK(bH[2],bH[3]),80
+bG)a_(bK.Activated,function()bJ.Visible=not bJ.Visible bL(bJ.Visible)if not bJ.
Visible then bz=0 end end)local bM=a0('\084\101\120\116\066\117\116\116\111\110',{Text='\061',Size=UDim2.new(1,0,
0,18),BackgroundTransparency=1,TextColor3=Color3.fromRGB(150,180,210),TextSize=
14},bJ)local bN=a0('\084\101\120\116\066\117\116\116\111\110',{Text='',Size=UDim2.new(1,0,1,-18),Position=
UDim2.fromOffset(0,18),BackgroundTransparency=1},bJ)local bO=a0('\070\114\097\109\101',{Size=
UDim2.fromOffset(26,26),Position=UDim2.new(0.5,-13,0,2),BackgroundTransparency=1
},bN)local function bP(bQ,bR,bS,bT)a0('\070\114\097\109\101',{Size=UDim2.fromOffset(bS,2),
Position=UDim2.fromOffset(bQ,bR),Rotation=bT or 0,BorderSizePixel=0,
BackgroundColor3=Color3.fromRGB(210,235,255)},bO)end if bI=='\117\112'or bI=='\100\111\119\110'or
bI=='\102\108\121'then bP(12,5,2,90)bP(4,8,12,-40)bP(12,8,12,40)bP(7,20,12,0)if bI==
'\100\111\119\110'then bO.Rotation=180 end elseif bI=='\111\114\101\065\117\114\097'then bP(4,12,23,-45)bP(1,5,23
,15)elseif bI=='\097\117\114\097'then bP(2,12,26,-45)bP(2,12,26,45)else bP(2,12,24,0)bP(2,12
,24,90)local bQ=a0('\070\114\097\109\101',{Size=UDim2.fromOffset(18,18),Position=UDim2.
fromOffset(4,4),BackgroundTransparency=1},bO)a0('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.
new(1,0)},bQ)a0('\085\073\083\116\114\111\107\101',{Thickness=2,Color=Color3.fromRGB(210,235,255)},bQ)
end a0('\084\101\120\116\076\097\098\101\108',{Text=aK(bH[2],bH[3]),Size=UDim2.new(1,-4,0,20),Position=
UDim2.fromOffset(2,32),BackgroundTransparency=1,TextSize=10,TextColor3=Color3.
new(1,1,1),TextWrapped=true},bN)a_(bM.InputBegan,function(bQ)if bQ.UserInputType
==Enum.UserInputType.Touch or bQ.UserInputType==Enum.UserInputType.MouseButton1
then bA=bQ bB=bQ.Position bC=bJ.AbsolutePosition bD=bJ end end)if bI=='\117\112'or bI
=='\100\111\119\110'then a_(bN.InputBegan,function(bQ)if bQ.UserInputType==Enum.
UserInputType.Touch or bQ.UserInputType==Enum.UserInputType.MouseButton1 then bz
=bI=='\117\112'and 1 or-1 end end)a_(bN.InputEnded,function()bz=0 end)else bF[bI]=bJ
a_(bN.Activated,function()aV[bI]=not aV[bI]aS[bI].paint(aV[bI])end)end end a_(aM
.InputChanged,function(bG)if not bA or not bD or not bD.Visible then return end
if bG~=bA and bG.UserInputType~=Enum.UserInputType.MouseMovement then return end
local bH=bG.Position-bB local bI=workspace.CurrentCamera local bJ=bI and bI.
ViewportSize local bK,bL=bC.X+bH.X,bC.Y+bH.Y if bJ then bK=math.clamp(bK,0,math.
max(0,bJ.X-66))bL=math.clamp(bL,0,math.max(0,bJ.Y-76))end bD.Position=UDim2.
fromOffset(bK,bL)end)a_(aM.InputEnded,function(bG)if bG==bA then bA=nil bD=nil
end bz=0 end)local function bG(bH)if bH:IsA('\066\097\115\101\080\097\114\116')then return bH end return
bH:IsA('\077\111\100\101\108')and(bH.PrimaryPart or bH:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')or bH:
FindFirstChildWhichIsA('\066\097\115\101\080\097\114\116',true))or nil end local bH=setmetatable({},{
__mode='\107'})local function bI(bJ)if not(bJ:IsA('\077\111\100\101\108')or bJ:IsA('\066\097\115\101\080\097\114\116'))
then return nil end local bK=tostring(bJ:GetAttribute('\082\101\097\108\078\097\109\101')or bJ.Name)if
bJ.Name=='\067\104\117\114\099\104'and bJ:IsA('\077\111\100\101\108')then return'\099\104\117\114\099\104'end if bJ.Parent and bJ.
Parent.Name=='\078\112\099'then if bJ:GetAttribute('\078\112\099\070\097\099\116\105\111\110')=='\070\114\105\101\110\100\108\121\067\111\109\112\097\110\105\111\110'or
bK:lower():find('\099\111\109\112\097\110\105\111\110',1,true)or bJ:GetAttribute('\070\114\105\101\110\100\108\121')==true then
return'\099\111\109\112\097\110\105\111\110\115'end if bK:lower():find('\109\105\109\105\099',1,true)or bJ:GetAttribute(
'\077\105\109\105\099\067\104\101\115\116\068\097\109\097\103\101\097\098\108\101')~=nil then return'\109\105\109\105\099\115'end return'\109\111\098\115'end if bJ:
GetAttribute('\082\117\110\116\105\109\101\067\104\101\115\116\077\111\100\101\108')==true then return'\099\104\101\115\116\115'end if aO:HasTag(bJ,
'\079\114\101')or type(bJ:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101'))=='\115\116\114\105\110\103'then return'\111\114\101\115'end
if aO:HasTag(bJ,'\068\117\110\103\101\111\110\065\114\101\110\097\068\111\111\114')then return'\097\114\101\110\097\115'end if aO:HasTag(bJ,
'\068\117\110\103\101\111\110\084\114\101\097\115\117\114\101\068\111\111\114')then return'\116\114\101\097\115\117\114\101\068\111\111\114\115'end if aO:HasTag(bJ,
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
then bZ.CanCollide=b_ end bT[bZ]=nil end end local bZ={}local b_,b0,b1 local
function b2()if b_ and b_.GetAimRay==b1 then b_.GetAimRay=b0 end b_=nil b0=nil
b1=nil end local function b3()for b4,b5 in pairs(bZ)do if b4.Parent then b4.Size
=b5.size end b5.box:Destroy()bZ[b4]=nil end end local function b4(b5,b6)local b7
,b8=nil,b6 local b9=workspace:FindFirstChild('\078\112\099')for ca,cb in ipairs(b9 and b9
:GetChildren()or{})do local cc=bI(cb)local cd=cb:FindFirstChildOfClass(
'\072\117\109\097\110\111\105\100')local ce=cb:FindFirstChild('\072\101\097\100')if(cc=='\109\111\098\115'or cc=='\109\105\109\105\099\115')and cd
and cd.Health>0 and ce and ce:IsA('\066\097\115\101\080\097\114\116')then local cf=(ce.Position-b5.
Position).Magnitude if cf<b8 then b8=cf b7=ce end end end return b7,b8 end local
function b5()for b6 in pairs(aV)do aV[b6]=false aS[b6].paint(false)end bW()bX()
bY()b2()b3()bz=0 if bO and bO.Parent then bO.WalkSpeed=bP end bO=nil end a_(aN.
Heartbeat,function()if not aQ then return end local b6,b7,b8=aI.actor()if bO and
(bO~=b8 or not aV.speed)then if bO.Parent then bO.WalkSpeed=bP end bO=nil end if
b8 and aV.speed then if bO~=b8 then bO=b8 bP=b8.WalkSpeed end b8.WalkSpeed=aU.
speed end if not b6 or not aV.noclip then bY()else for b9,ca in ipairs(b6:
GetDescendants())do if ca:IsA('\066\097\115\101\080\097\114\116')then if bT[ca]==nil then bT[ca]=ca.
CanCollide end ca.CanCollide=false end end end if not b7 or not aV.fly then bX()
else if bQ~=b7 then bX()bQ=b7 bR=a0('\065\116\116\097\099\104\109\101\110\116',{},b7)bS=a0('\076\105\110\101\097\114\086\101\108\111\099\105\116\121',{
Attachment0=bR,MaxForce=1e7,RelativeTo=Enum.ActuatorRelativeTo.World},b7)end
local b9=b8.MoveDirection local ca=workspace.CurrentCamera if b9.Magnitude>0.1
and ca then b9=Vector3.new(b9.X,ca.CFrame.LookVector.Y*b9.Magnitude,b9.Z)end
local cb=bz if not aM:GetFocusedTextBox()then if aM:IsKeyDown(Enum.KeyCode.Space
)then cb+=1 end if aM:IsKeyDown(Enum.KeyCode.LeftControl)then cb-=1 end end bS.
VectorVelocity=(b9+Vector3.new(0,cb,0))*aU.flySpeed end end)local b6,b7,b8=0,0,0
task.spawn(function()while aQ do local b9,ca=pcall(function()local b9,ca,cb=aI.
actor()if not ca then bW()b2()b3()bN()return end for cc,cd in pairs(bF)do cd.
BackgroundColor3=aV[cc]and Color3.fromRGB(30,85,100)or Color3.fromRGB(20,27,39)
end if not aV.hitbox then b3()else local cc={}local cd=b4(ca,aU.gunRange)if cd
then cc[cd]=true local ce=bZ[cd]if not ce then ce={size=cd.Size,box=a0(
'\066\111\120\072\097\110\100\108\101\065\100\111\114\110\109\101\110\116',{Adornee=cd,AlwaysOnTop=true,ZIndex=1,Transparency=0.93,
Color3=Color3.fromRGB(110,190,255)},bx)}bZ[cd]=ce end cd.Size=Vector3.new(aU.
hitboxSize,aU.hitboxSize,aU.hitboxSize)ce.box.Size=cd.Size end for ce,cf in
pairs(bZ)do if not cc[ce]then if ce.Parent then ce.Size=cf.size end cf.box:
Destroy()bZ[ce]=nil end end end local cc=false for cd,ce in pairs(aX)do if ce.
enabled then cc=true end end if cc and os.clock()-b6>30 then b6=os.clock()bK()
end if cc and os.clock()-b7>0.3 then b7=os.clock()local cd={}for ce,cf in
ipairs(game:GetService('\080\108\097\121\101\114\115'):GetPlayers())do if cf~=aL and cf.Character
then bH[cf.Character]='\112\108\097\121\101\114\115'end end for ce,cf in pairs(bH)do if not ce.Parent
or not ce:IsDescendantOf(workspace)then bH[ce]=nil else cf=bI(ce)or cf bH[ce]=cf
if aX[cf].enabled then local cg=bG(ce)local ch=true local ci=ce:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cj=ci and ci.Health or ce:GetAttribute(
'\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')if aU.hideDead and cf~='\112\108\097\121\101\114\115'and type(cj)=='\110\117\109\098\101\114'and cj<=
0 then ch=false end if aU.hideAttached and(cf=='\105\116\101\109\115'or cf=='\115\099\114\097\112')and(ce:
GetAttribute('\087\101\108\100\101\100')==true or ce:GetAttribute('\068\114\105\108\108\087\101\108\100\067\111\108\108\105\115\105\111\110\083\117\112\112\114\101\115\115\101\100')
==true)then ch=false end if cf=='\111\114\101\115'then local ck=tostring(ce:GetAttribute(
'\083\101\115\115\105\111\110\079\114\101\084\121\112\101')or ce.Name):lower()ch=false for cl in aU.oreFilter:gmatch(
'\091\094\044\093\043')do if ck:find(cl:match('\094\037\115\042\040\046\045\041\037\115\042\036'):lower(),1,true)then ch=true end
end end if cg and ch then local ck=(cg.Position-ca.Position).Magnitude if ck<=aU
.maxDistance then cd[#cd+1]={o=ce,kind=cf,anchor=cg,distance=ck}end end end end
end table.sort(cd,function(ce,cf)local cg,ch=bk(ce.kind),bk(cf.kind)if cg~=ch
then return cg<ch end return ce.distance<cf.distance end)local ce={}for cf=1,
math.min(#cd,aU.maxESP)do local cg=cd[cf]local ch=cg.o ce[ch]=true if bL[ch]and
bL[ch].style~=aU.style then bM(ch)end local ci=bL[ch]if not ci then ci={style=aU
.style}bL[ch]=ci ci.billboard=a0('\066\105\108\108\098\111\097\114\100\071\117\105',{Adornee=cg.anchor,AlwaysOnTop=
true,Size=UDim2.fromOffset(220,48),StudsOffset=Vector3.new(0,3,0)},bx)ci.text=
a0('\084\101\120\116\076\097\098\101\108',{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,TextSize=12,
RichText=true,TextStrokeTransparency=0.3,Font=Enum.Font.GothamBold,TextWrapped=
true},ci.billboard)if aU.style=='\066\111\120'then ci.visual=a0('\066\111\120\072\097\110\100\108\101\065\100\111\114\110\109\101\110\116',{
Adornee=cg.anchor,AlwaysOnTop=true,ZIndex=5,Transparency=0.65},bx)else ci.visual
=a0('\072\105\103\104\108\105\103\104\116',{Adornee=ch,DepthMode=Enum.HighlightDepthMode.AlwaysOnTop,
FillTransparency=0.85},bx)end end local cj=a1(aX[cg.kind].color)local ck=ch:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cl=ck and ck.Health or ch:GetAttribute(
'\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')local cm=false local cn=tostring(ch:GetAttribute('\082\101\097\108\078\097\109\101')or
ch.Name)ci.billboard.Adornee=cg.anchor if cg.kind=='\111\114\101\115'then local co=tostring(
ch:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101')or ch:GetAttribute('\082\101\097\108\078\097\109\101')or ch.Name)local
cp={Coal='\067\097\114\118\u{e3}\111',Iron='\070\101\114\114\111',Gold='\079\117\114\111',Diamond='\068\105\097\109\097\110\116\101',Emerald=
'\069\115\109\101\114\097\108\100\097',Ruby='\082\117\098\105'}for cq,cr in pairs(cp)do if co:lower():find(cq:lower(),1
,true)then cn=aK(cr,cq)break end end cm=aO:HasTag(ch,'\087\111\114\109')or ch:
FindFirstChild('\087\111\114\109',true)~=nil if cm then cn=cn..aK('\032\105\110\102\101\115\116\097\100\111','\032\105\110\102\101\115\116\101\100')
end elseif cg.kind=='\099\104\117\114\099\104'then cn=aK('\073\103\114\101\106\097','\067\104\117\114\099\104')elseif cg.kind==
'\109\105\109\105\099\115'then cn=aK('\091\033\093\032\077\u{ed}\109\105\099\111','\091\033\093\032\077\105\109\105\099')end cn=cn:gsub('\038','\038\097\109\112\059'):
gsub('\060','\038\108\116\059'):gsub('\062','\038\103\116\059')ci.billboard.Size=UDim2.fromOffset(260,aU.
textSize*4)if not ci.worm then ci.worm=a0('\070\114\097\109\101',{Size=UDim2.fromOffset(22,22),
Position=UDim2.fromOffset(-22,0),BackgroundTransparency=1,Visible=false},ci.
billboard)for co=0,4 do local cp=a0('\070\114\097\109\101',{Size=UDim2.fromOffset(7,7),Position
=UDim2.fromOffset(co*4,8+math.sin(co)*4),BackgroundColor3=Color3.fromRGB(225,145
,190),BorderSizePixel=0},ci.worm)a0('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},cp)
end ci.mimic=a0('\070\114\097\109\101',{Size=UDim2.fromOffset(22,18),Position=UDim2.fromOffset(
-24,0),BackgroundColor3=Color3.fromRGB(125,65,45),Visible=false},ci.billboard)
a0('\085\073\083\116\114\111\107\101',{Color=Color3.fromRGB(255,185,75),Thickness=1.5},ci.mimic)a0(
'\070\114\097\109\101',{Size=UDim2.fromOffset(20,7),Position=UDim2.fromOffset(1,6),
BackgroundColor3=Color3.fromRGB(30,15,20),BorderSizePixel=0},ci.mimic)for co=0,3
do a0('\070\114\097\109\101',{Size=UDim2.fromOffset(3,4),Position=UDim2.fromOffset(2+co*5,6),
BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=0},ci.mimic)end end ci.worm.
Visible=cm ci.mimic.Visible=cg.kind=='\109\105\109\105\099\115'ci.text.TextSize=aU.textSize ci.
text.Text=string.format('\037\115\032\u{b7}\032\060\102\111\110\116\032\099\111\108\111\114\061\034\035\037\115\034\062\037\100\032\115\116\117\100\115\060\047\102\111\110\116\062\037\115',cn,aU.
distanceColor,cg.distance,cl and string.format('\n\072\080\032\037\046\048\102',cl)or'')ci.text.
TextColor3=cj if aU.style=='\066\111\120'then ci.visual.Color3=cj ci.visual.Adornee=cg.
anchor if ch:IsA('\077\111\100\101\108')then local co,cp=ch:GetBoundingBox()ci.visual.Size=cp
ci.visual.CFrame=cg.anchor.CFrame:ToObjectSpace(co)else ci.visual.Size=ch.Size
end else ci.visual.FillColor=cj ci.visual.OutlineColor=cj end end local cf={}for
cg in pairs(bL)do if not ce[cg]then cf[#cf+1]=cg end end for cg,ch in ipairs(cf)
do bM(ch)end elseif not cc then bN()end local cd=aI.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local
ce=cd and cd.ActiveTool local cf=ce and type(ce.Shoot)=='\102\117\110\099\116\105\111\110'and ce.Tool
and(ce.Tool.Name:find('\082\105\102\108\101',1,true)or ce.Tool.Name:find('\082\101\118\111\108\118\101\114',1,true)or
ce.Tool.Name:find('\083\104\111\116\103\117\110',1,true))if aV.silentAim and cf then local cg=aI.
ctrl('\067\097\109\101\114\097\067\111\110\116\114\111\108\108\101\114')if cg and type(cg.GetAimRay)=='\102\117\110\099\116\105\111\110'and b_~=cg then
b2()b_=cg b0=cg.GetAimRay local ch=b0 b1=function(ci,...)local cj=ch(ci,...)
local ck,cl=aI.actor()local cm=aI.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local cn=cm and cm.
ActiveTool if not aQ or not aV.silentAim or not cl or not cn or type(cn.Shoot)~=
'\102\117\110\099\116\105\111\110'or not cj then return cj end local co=b4(cl,aU.gunRange)if co and(co.
Position-cj.Origin).Magnitude>0.01 then return Ray.new(cj.Origin,(co.Position-cj
.Origin).Unit)end return cj end cg.GetAimRay=b1 end else b2()end local cg=aI.
ctrl('\085\073\067\111\110\116\114\111\108\108\101\114')local ch=not workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')and not aM:
GetFocusedTextBox()and not(cg and cg.ActiveFrame and cg.ActiveFrame.Visible)if
aV.autoMove and ch and not cb.SeatPart and not aV.fly then local ci=b4(ca,150)if
ci then local cj=Vector3.new(ca.Position.X-ci.Position.X,0,ca.Position.Z-ci.
Position.Z)if cj.Magnitude<0.01 then cj=Vector3.new(0,0,1)end local ck=ci.
Position+cj.Unit*aU.combatDistance if math.abs((ca.Position-ci.Position).
Magnitude-aU.combatDistance)>1.5 then cb:MoveTo(Vector3.new(ck.X,ca.Position.Y,
ck.Z))end end end if aV.autoFire and cf and ch and b4(ca,aU.gunRange)then ce:
Shoot()end local ci=aV.aura or aV.oreAura or aV.autoMove if bU and(bU~=ce or not
ci)then bW()end local cj=aI.ctrl('\085\073\067\111\110\116\114\111\108\108\101\114')if ci and ce and ce.Tool and
type(ce.Swing)=='\102\117\110\099\116\105\111\110'and not workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')and not aM
:GetFocusedTextBox()and not(cj and cj.ActiveFrame and cj.ActiveFrame.Visible)
then local ck=ce.Tool.Name:find('\080\105\099\107\097\120\101',1,true)~=nil if aV.aura or aV.autoMove
or aV.oreAura and ck then if type(ce.Range)=='\110\117\109\098\101\114'then if bU~=ce then bU=ce
bV=ce.Range end ce.Range=aV.autoMove and math.max(aU.reach,aU.combatDistance+2)
or aU.reach end local cl,cm=nil,aV.autoMove and math.max(aU.reach,aU.
combatDistance+2)or aU.reach local cn=workspace:FindFirstChild('\078\112\099')if aV.aura
or aV.autoMove then for co,cp in ipairs(cn and cn:GetChildren()or{})do local cq=
bI(cp)local cr=bG(cp)local cs=cp:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local ct=cs
and cs.Health or cp:GetAttribute('\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')or 0 local cu=cp:
GetAttribute('\083\101\115\115\105\111\110\070\117\101\108\076\101\101\099\104\073\100')~=nil local cv=not cu or(aL:GetAttribute(
'\073\110\068\117\110\103\101\111\110')~=true and cp:GetAttribute('\070\117\101\108\076\101\101\099\104\086\117\108\110\101\114\097\098\108\101')==true)if cv and(cq
=='\109\111\098\115'or cq=='\109\105\109\105\099\115')and cr and ct>0 then local cw=(ca.Position-cr.Position).
Magnitude if cw<cm then cl=cr cm=cw end end end end if cl and aU.position~='\079\102\102'
and not aV.fly and not aV.autoMove and not cb.SeatPart and os.clock()-b8>0.4
then b8=os.clock()local co=aU.position=='\065\098\111\118\101'and Vector3.new(0,aU.offset,0)or-
cl.CFrame.LookVector*aU.offset b9:PivotTo(CFrame.lookAt(cl.Position+co,cl.
Position,aU.position=='\065\098\111\118\101'and cl.CFrame.RightVector or Vector3.yAxis))end if
cl or aV.oreAura and ck then ce:Swing()end end end end)if not b9 then aI.say(aK(
'\067\111\110\116\114\111\108\101\115\032\097\118\097\110\u{e7}\097\100\111\115\058\032','\065\100\118\097\110\099\101\100\032\099\111\110\116\114\111\108\115\058\032')..tostring(ca))end task.wait(
0.15)end end)return{stop=b5,cleanup=function()aQ=false b5()for b9,ca in ipairs(
aR)do ca:Disconnect()end bN()by:Destroy()end}end local function aH(aI,aJ)local
aK,aL=aI.ui,aI.T local aM=game:GetService('\080\108\097\121\101\114\115').LocalPlayer local aN=game:
GetService('\067\111\108\108\101\099\116\105\111\110\083\101\114\118\105\099\101')local aO=game:GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')
local aP=true local aQ=0 local aR={}local aS=false local aT=false local aU=400
local aV=250 local aW=setmetatable({},{__mode='\107'})local aX=aI.section('\070\097\114\109')
local aY=aK.label(aX,'\084\101\120\116\076\097\098\101\108',aL(
'\076\111\103\u{ed}\115\116\105\099\097\058\032\112\097\114\097\100\097\046\032\085\115\097\032\105\116\101\110\115\032\115\111\108\116\111\115\032\105\100\101\110\116\105\102\105\099\097\100\111\115\059\032\112\111\114\116\097\105\115\032\098\108\111\113\117\101\097\100\111\115\032\105\110\116\101\114\114\111\109\112\101\109\032\097\032\099\111\108\101\116\097\046'
,
"\076\111\103\105\115\116\105\099\115\058\032\115\116\111\112\112\101\100\046\032\085\115\101\115\032\105\100\101\110\116\105\102\105\101\100\032\108\111\111\115\101\032\105\116\101\109\115\059\032\108\111\099\107\101\100\032\112\111\114\116\097\108\115\032\115\116\111\112\032\099\111\108\108\101\099\116\105\111\110\046"
),65,40)local function aZ(a_,a0)if aP then aY.Text=aL(a_,a0)end end local
function a_(a0,a1)aR[#aR+1]=a0:Connect(a1)end aK.label(aX,'\084\101\120\116\076\097\098\101\108',aL(
'\086\101\110\100\101\032\112\101\108\111\032\118\097\108\111\114\032\101\120\105\098\105\100\111\032\100\111\032\105\116\101\109\032\u{2265}\032\108\105\109\105\116\101\046\032\065\098\097\105\120\111\044\032\101\110\118\105\097\032\097\112\101\110\097\115\032\105\116\101\110\115\032\100\097\032\099\097\116\101\103\111\114\105\097\032\083\099\114\097\112\032\112\097\114\097\032\114\101\099\105\099\108\097\103\101\109\046\032\070\105\113\117\101\032\115\111\098\114\101\032\097\032\098\114\111\099\097\032\112\101\114\116\111\032\100\101\032\117\109\097\032\101\115\116\097\u{e7}\u{e3}\111\046'
,
'\083\101\108\108\115\032\119\104\101\110\032\100\105\115\112\108\097\121\101\100\032\105\116\101\109\032\118\097\108\117\101\032\u{2265}\032\116\104\114\101\115\104\111\108\100\046\032\066\101\108\111\119\032\105\116\044\032\115\101\110\100\115\032\111\110\108\121\032\083\099\114\097\112\045\099\097\116\101\103\111\114\121\032\105\116\101\109\115\032\102\111\114\032\114\101\099\121\099\108\105\110\103\046\032\083\116\097\121\032\111\110\032\116\104\101\032\100\114\105\108\108\032\110\101\097\114\032\097\032\115\116\097\116\105\111\110\046'
),85,41)local a0=aK.label(aX,'\084\101\120\116\066\111\120','\052\048\048',40,42)a_(a0.FocusLost,function()
local a1=tonumber(a0.Text)if a1 and a1==a1 and a1<math.huge then aU=math.clamp(
math.floor(a1),0,1000000)end a0.Text=tostring(aU)end)local a1,a2=aK.checkbox(aX,
aL('\065\117\116\111\032\118\101\110\100\097\032\047\032\115\117\099\097\116\097\032\110\097\032\098\114\111\099\097','\065\117\116\111\032\115\101\108\108\032\047\032\115\099\114\097\112\032\111\110\032\100\114\105\108\108'),43)local a3=aK.
button(aX,aL('\067\111\108\101\116\097\114\032\108\111\111\116\032\115\111\108\116\111\032\100\101\115\116\097\032\068\117\110\103\101\111\110\032\101\032\112\097\114\097\114',
"\067\111\108\108\101\099\116\032\116\104\105\115\032\068\117\110\103\101\111\110\039\115\032\108\111\111\115\101\032\108\111\111\116\032\097\110\100\032\115\116\111\112"),45)local a4=aK.button(aX,aL(
'\080\097\114\097\114\032\108\111\103\u{ed}\115\116\105\099\097','\083\116\111\112\032\108\111\103\105\115\116\105\099\115'),46)local function a5()aQ+=1 aS=false aT
=false a2(false)end a_(a4.Activated,a5)a_(a1.Activated,function()aS=not aS a2(aS
)aZ(aS and
'\065\117\116\111\032\118\101\110\100\097\032\097\116\105\118\097\058\032\097\103\117\097\114\100\097\110\100\111\032\105\116\101\110\115\032\110\097\032\098\114\111\099\097\032\101\032\101\115\116\097\u{e7}\u{e3}\111\032\112\114\u{f3}\120\105\109\097\046'
or'\065\117\116\111\032\118\101\110\100\097\032\112\097\114\097\100\097\046',aS and
"\065\117\116\111\032\115\101\108\108\032\097\099\116\105\118\101\058\032\119\097\105\116\105\110\103\032\102\111\114\032\100\114\105\108\108\032\105\116\101\109\115\032\097\110\100\032\097\032\110\101\097\114\098\121\032\115\116\097\116\105\111\110\046"or
'\065\117\116\111\032\115\101\108\108\032\115\116\111\112\112\101\100\046')end)local function a6(a7)return a7 and(a7:IsA('\066\097\115\101\080\097\114\116')
and a7 or a7:IsA('\077\111\100\101\108')and(a7.PrimaryPart or a7:FindFirstChildWhichIsA(
'\066\097\115\101\080\097\114\116',true)))or nil end local function a7(a8)local a9=aO:FindFirstChild(
'\083\104\097\114\101\100')local ba=a9 and a9:FindFirstChild(a8)return ba and require(ba)end local
function a8(a9)return aP and aQ==a9 and aJ.actor()~=nil end local function a9(ba
,bb,bc)local bd=os.clock()+bc repeat if not a8(ba)then return false end if bb()
then return true end task.wait(0.1)until os.clock()>=bd return false end local
function ba(bb,bc)local bd=workspace:FindFirstChild('\068\114\105\108\108')if not bd or not bb
then return false end local be=RaycastParams.new()be.FilterType=Enum.
RaycastFilterType.Exclude be.FilterDescendantsInstances={bc}local bf=workspace:
Raycast(bb.Position,Vector3.new(0,-15,0),be)return bf and bf.Instance:
IsDescendantOf(bd)or false end local function bb(bc,bd)local be,bf=nil,aV for bg
,bh in ipairs(aN:GetTagged(bc))do if bh:IsA('\066\097\115\101\080\097\114\116')and bh:IsDescendantOf(
workspace)and not bh:GetFullName():find('\067\117\116\083\099\101\110\101',1,true)then local bi=(bh.
Position-bd.Position).Magnitude if bi<bf then be=bh bf=bi end end end return be
end local function bc(bd)local be,bf,bg=aJ.actor()if not bf or aM:GetAttribute(
'\073\110\068\117\110\103\101\111\110')==true or workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')then return end local
bh=workspace:FindFirstChild('\068\114\105\108\108')if not bh or not(ba(bf,be)or bg.SeatPart and
bg.SeatPart:IsDescendantOf(bh))then return end local bi=workspace:
FindFirstChild('\073\116\101\109\115')local bj=a7('\073\116\101\109\068\097\116\097\098\097\115\101')local bk=a7('\083\101\108\108\086\097\108\117\101')if not
bi or not bj or not bk then return end for bl,bm in ipairs(bi:GetChildren())do
local bn=a6(bm)if bn and not aW[bm]and(ba(bn,bm)or bm:GetAttribute(
'\068\114\105\108\108\087\101\108\100\067\111\108\108\105\115\105\111\110\083\117\112\112\114\101\115\115\101\100')==true)and not aN:HasTag(bm,'\083\104\111\112\073\116\101\109')and not bm
:GetAttribute('\065\100\118\101\110\116\117\114\101\081\117\101\115\116\080\114\111\116\101\099\116\101\100')and not bm:GetAttribute('\068\101\097\116\104\067\104\101\115\116')and
not bm:GetAttribute('\067\114\097\102\116\101\100\080\108\097\099\101\097\098\108\101')then local bo=bm:GetAttribute('\086\097\108\117\101')if
type(bo)=='\110\117\109\098\101\114'then bo=math.round(bk.ScaleByCharges(bo,bm:GetAttribute(
'\070\114\111\109\084\111\111\108\095\073\116\101\109\067\104\097\114\103\101\115')or bj.GetAttribute(bm,'\073\116\101\109\067\104\097\114\103\101\115'),bm:GetAttribute(
'\070\114\111\109\084\111\111\108\095\077\097\120\073\116\101\109\067\104\097\114\103\101\115')or bj.GetAttribute(bm,'\077\097\120\073\116\101\109\067\104\097\114\103\101\115')))local bp=bo>=
aU and'\083\101\108\108\080\097\114\116'or bj.GetAttribute(bm,'\067\097\116\101\103\111\114\121')=='\083\099\114\097\112'and'\083\099\114\097\112\067\111\108\108\101\099\116\111\114'or
nil local bq=bp and bb(bp,bf)if bq then aW[bm]=true if bm:GetAttribute('\087\101\108\100\101\100')
==true then local br=aJ.await(aJ.service('\068\114\097\103\083\101\114\118\105\099\101'):Weld(bm))if br~=
'\100\101\116\097\099\104\101\100'or not a8(bd)or not aS then return end end local br=aJ.await(aJ.
service('\068\114\097\103\083\101\114\118\105\099\101'):Request(bm))if not a8(bd)or not aS then if br then pcall(
function()aJ.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)end return end if br==true
and bm.Parent and bq.Parent then bm:PivotTo(bq.CFrame*CFrame.new(0,bq.Size.Y*0.5
+1,0))task.wait(0.3)pcall(function()aJ.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)
local bs=a9(bd,function()return not bm:IsDescendantOf(workspace)end,3)aZ(bs and
'\073\116\101\109\032\112\114\111\099\101\115\115\097\100\111\032\112\101\108\097\032\101\115\116\097\u{e7}\u{e3}\111\046'or
'\069\115\116\097\u{e7}\u{e3}\111\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\111\032\112\114\111\099\101\115\115\097\109\101\110\116\111\059\032\105\116\101\109\032\110\u{e3}\111\032\115\101\114\u{e1}\032\114\101\112\101\116\105\100\111\032\110\101\115\116\097\032\115\101\115\115\u{e3}\111\046'
,bs and'\073\116\101\109\032\112\114\111\099\101\115\115\101\100\032\098\121\032\115\116\097\116\105\111\110\046'or
"\083\116\097\116\105\111\110\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\112\114\111\099\101\115\115\105\110\103\059\032\105\116\101\109\032\119\105\108\108\032\110\111\116\032\098\101\032\114\101\116\114\105\101\100\032\116\104\105\115\032\115\101\115\115\105\111\110\046")
end return end end end end end local function bd(be)local bf=be.Parent if bf and
bf:IsA('\065\116\116\097\099\104\109\101\110\116')then return bf.WorldCFrame end local bg=a6(bf)return bg and
bg.CFrame end local function be(bf,bg,bh)assert(bg and bg.Parent and bg.Enabled
and type(fireproximityprompt)=='\102\117\110\099\116\105\111\110',aL(
'\080\111\114\116\097\108\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\047\098\108\111\113\117\101\097\100\111\046','\080\111\114\116\097\108\032\117\110\097\118\097\105\108\097\098\108\101\047\108\111\099\107\101\100\046'))local bi=aJ.
actor()local bj=bd(bg)assert(bi and bj,'\080\111\114\116\097\108\032\112\111\115\105\116\105\111\110\032\117\110\097\118\097\105\108\097\098\108\101')bi:PivotTo(
bj*CFrame.new(0,2,3))task.wait(0.4)assert(a8(bf),'\083\116\111\112\112\101\100')fireproximityprompt(
bg)assert(a9(bf,function()return(aM:GetAttribute('\073\110\068\117\110\103\101\111\110')==true)==bh end,8),
aL('\079\032\106\111\103\111\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\097\032\112\097\115\115\097\103\101\109\032\112\101\108\111\032\112\111\114\116\097\108\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\112\111\114\116\097\108\032\116\114\097\110\115\105\116\105\111\110\046'))end a_(a3.Activated,function()if
aT then return end aQ+=1 local bf=aQ aT=true aS=false a2(false)aJ.pauseCombat()
task.spawn(function()local bg,bh=pcall(function()assert(aM:GetAttribute(
'\073\110\068\117\110\103\101\111\110')==true,aL('\069\110\116\114\101\032\112\114\105\109\101\105\114\111\032\110\097\032\068\117\110\103\101\111\110\046','\069\110\116\101\114\032\116\104\101\032\068\117\110\103\101\111\110\032\102\105\114\115\116\046'))
local bg=aJ.ctrl('\068\117\110\103\101\111\110\085\073\067\111\110\116\114\111\108\108\101\114')local bh=bg and bg._BoundDungeon assert(
bh and bh.Parent,'\068\117\110\103\101\111\110\032\117\110\097\118\097\105\108\097\098\108\101')local bi=assert(a7('\068\117\110\103\101\111\110\068\111\111\114\083\116\097\116\101'))
local bj,bk for bl,bm in ipairs(aN:GetTagged('\068\117\110\103\101\111\110\068\111\111\114'))do if bi.GetRoot(bm)
==bh then bj=bm:FindFirstChild('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116',true)bk=bm:FindFirstChild(
'\068\117\110\103\101\111\110\069\120\105\116\080\114\111\109\112\116',true)if bj and bk then break end end end assert(bj and bk
and bk.Enabled,aL(
'\083\097\u{ed}\100\097\032\098\108\111\113\117\101\097\100\097\058\032\100\101\114\114\111\116\101\032\097\032\111\110\100\097\032\097\110\116\101\115\032\100\101\032\116\114\097\110\115\112\111\114\116\097\114\032\105\116\101\110\115\046',
'\069\120\105\116\032\108\111\099\107\101\100\058\032\100\101\102\101\097\116\032\116\104\101\032\119\097\118\101\032\098\101\102\111\114\101\032\116\114\097\110\115\112\111\114\116\105\110\103\032\105\116\101\109\115\046'))local bl=aJ.ctrl(
'\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local bm=bl and bl.ActiveTool assert(bm and bm.IsSack and type(
bm.CanStoreTarget)=='\102\117\110\099\116\105\111\110',aL('\069\113\117\105\112\101\032\111\032\115\097\099\111\032\118\097\122\105\111\046','\069\113\117\105\112\032\116\104\101\032\101\109\112\116\121\032\115\097\099\107\046'
))assert((bm.Size or 0)==0,aL('\069\115\118\097\122\105\101\032\111\032\115\097\099\111\032\097\110\116\101\115\032\100\101\115\116\097\032\099\111\108\101\116\097\046',
'\069\109\112\116\121\032\116\104\101\032\115\097\099\107\032\098\101\102\111\114\101\032\116\104\105\115\032\099\111\108\108\101\099\116\105\111\110\046'))local bn=assert(a7('\083\097\099\107\067\111\110\102\105\103'))local
bo=aM:GetAttribute('\065\099\116\105\118\101\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')or bh:GetAttribute(
'\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')assert(type(bo)=='\115\116\114\105\110\103'and bo~='',
'\068\117\110\103\101\111\110\032\108\111\111\116\032\073\068\032\117\110\097\118\097\105\108\097\098\108\101')local bp={}local bq={}local br=0 local function bs
()be(bf,bk,false)local bt=workspace:FindFirstChild('\068\114\105\108\108')local bu=bt and(bt:
FindFirstChild('\066\111\100\121')or bt.PrimaryPart)assert(bu and bu:IsA('\066\097\115\101\080\097\114\116'),
'\068\114\105\108\108\032\110\111\116\032\108\111\097\100\101\100')local bv=aJ.actor()bv:PivotTo(bu.CFrame*CFrame.new(0,bu.Size.
Y*0.5+4,0))task.wait(0.5)assert(a8(bf)and bl.ActiveTool==bm,
'\083\097\099\107\032\099\104\097\110\103\101\100\032\047\032\115\116\111\112\112\101\100')bm.Execute:Fire({'\068\114\111\112\065\108\108'})assert(a9(bf,function()
return(bm.Size or 0)==0 end,5),'\068\101\112\111\115\105\116\032\110\111\116\032\099\111\110\102\105\114\109\101\100')be(bf,bj,true)end while
a8(bf)do assert(bl.ActiveTool==bm and bh.Parent,
'\083\097\099\107\032\099\104\097\110\103\101\100\032\047\032\100\117\110\103\101\111\110\032\117\110\108\111\097\100\101\100')local bt=workspace:FindFirstChild('\073\116\101\109\115')
local bu for bv,bw in ipairs(bt and bt:GetChildren()or{})do if not bp[bw]and bw:
GetAttribute('\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')==bo and bm:CanStoreTarget(bw)and a6(
bw)then bu=bw break end end if not bu then local bv for bw,bx in ipairs(bh:
GetDescendants())do if bx:IsA('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and bx.Enabled and not bq[bx]and
bx:GetFullName():find('\067\104\101\115\116\078\111\100\101',1,true)then bv=bx break end end if not bv then
break end bq[bv]=true local bw=bd(bv)assert(bw and type(fireproximityprompt)==
'\102\117\110\099\116\105\111\110','\067\104\101\115\116\032\112\114\111\109\112\116\032\117\110\097\118\097\105\108\097\098\108\101')local bx=aJ.actor()bx:PivotTo(bw*CFrame.
new(0,3,3))task.wait(0.3)assert(a8(bf),'\083\116\111\112\112\101\100')fireproximityprompt(bv)a9(bf,
function()return not bv.Parent or not bv.Enabled end,3)task.wait(0.5)continue
end bp[bu]=true local bv=aJ.actor()bv:PivotTo(a6(bu).CFrame*CFrame.new(0,3,3))
task.wait(0.3)assert(a8(bf)and bl.ActiveTool==bm,'\083\116\111\112\112\101\100')local bw=bm.Size or 0
bm.Execute:Fire({'\080\105\099\107\117\112',bu})assert(a9(bf,function()return(bm.Size or 0)>bw end
,3),aL('\067\111\108\101\116\097\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\100\097\046\032\080\097\114\097\100\111\032\112\097\114\097\032\101\118\105\116\097\114\032\112\101\114\100\101\114\032\105\116\101\110\115\046',
'\080\105\099\107\117\112\032\110\111\116\032\099\111\110\102\105\114\109\101\100\046\032\083\116\111\112\112\101\100\032\116\111\032\097\118\111\105\100\032\108\111\115\105\110\103\032\105\116\101\109\115\046'))br+=1 if(bm.Size or 0)>=
bn.Capacity then bs()end end assert(a8(bf),'\083\116\111\112\112\101\100')if(bm.Size or 0)>0 then bs(
)end aZ('\083\101\109\032\109\097\105\115\032\108\111\111\116\032\101\108\101\103\u{ed}\118\101\108\032\099\097\114\114\101\103\097\100\111\046\032\067\111\108\101\116\097\100\111\115\058\032'..br..
'\046\032\065\115\115\117\109\097\032\111\032\099\111\110\116\114\111\108\101\059\032\114\101\097\116\105\118\101\032\097\112\u{f3}\115\032\111\032\099\104\101\102\101\046',
'\078\111\032\109\111\114\101\032\101\108\105\103\105\098\108\101\032\108\111\097\100\101\100\032\108\111\111\116\046\032\067\111\108\108\101\099\116\101\100\058\032'..br..
'\046\032\084\097\107\101\032\099\111\110\116\114\111\108\059\032\114\101\115\116\097\114\116\032\097\102\116\101\114\032\116\104\101\032\098\111\115\115\046')end)if aP and aQ==bf then aT=false if
not bg then aZ('\076\111\103\u{ed}\115\116\105\099\097\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(bh),
'\076\111\103\105\115\116\105\099\115\032\115\116\111\112\112\101\100\058\032'..tostring(bh))end end end)end)local bf=5000 local bg=100
aK.label(aX,'\084\101\120\116\076\097\098\101\108',aL(
'\082\111\116\097\032\100\101\032\098\097\u{fa}\115\058\032\118\105\115\105\116\097\032\098\097\u{fa}\115\032\101\032\088\032\099\097\114\114\101\103\097\100\111\115\032\102\111\114\097\032\100\097\115\032\068\117\110\103\101\111\110\115\046\032\085\115\097\032\111\115\032\112\114\111\109\112\116\115\032\100\111\032\106\111\103\111\044\032\097\116\u{e9}\032\111\032\108\105\109\105\116\101\032\100\101\032\100\105\115\116\u{e2}\110\099\105\097\044\032\101\032\118\111\108\116\097\032\u{e0}\032\098\114\111\099\097\046\032\078\u{e3}\111\032\103\097\114\097\110\116\101\032\067\111\114\101\115\032\112\111\114\032\098\097\u{fa}\046'
,
"\067\104\101\115\116\032\114\111\117\116\101\058\032\118\105\115\105\116\115\032\108\111\097\100\101\100\032\099\104\101\115\116\115\032\097\110\100\032\088\032\115\112\111\116\115\032\111\117\116\115\105\100\101\032\068\117\110\103\101\111\110\115\046\032\085\115\101\115\032\103\097\109\101\032\112\114\111\109\112\116\115\032\119\105\116\104\105\110\032\116\104\101\032\100\105\115\116\097\110\099\101\032\108\105\109\105\116\044\032\116\104\101\110\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\100\114\105\108\108\046\032\067\111\114\101\115\032\112\101\114\032\099\104\101\115\116\032\097\114\101\032\110\111\116\032\103\117\097\114\097\110\116\101\101\100\046"
),85,50)local bh=aK.label(aX,'\084\101\120\116\066\111\120',tostring(bf),40,51)a_(bh.FocusLost,
function()local bi=tonumber(bh.Text)if bi and bi==bi then bf=math.clamp(bi,100,
50000)end bh.Text=tostring(bf)end)local bi=aK.button(aX,aL(
'\073\110\105\099\105\097\114\032\114\111\116\097\032\100\101\032\098\097\u{fa}\115\032\099\097\114\114\101\103\097\100\111\115\032\047\032\067\111\114\101\115','\083\116\097\114\116\032\108\111\097\100\101\100\032\099\104\101\115\116\032\047\032\067\111\114\101\032\114\111\117\116\101'
),52)a_(bi.Activated,function()if aT then return end aQ+=1 local bj=aQ aT=true
aS=false a2(false)aJ.pauseCombat()task.spawn(function()local bk,bl=pcall(
function()assert(aM:GetAttribute('\073\110\068\117\110\103\101\111\110')~=true,'\076\101\097\118\101\032\116\104\101\032\068\117\110\103\101\111\110\032\102\105\114\115\116')
assert(type(fireproximityprompt)=='\102\117\110\099\116\105\111\110','\080\114\111\109\112\116\032\065\080\073\032\117\110\097\118\097\105\108\097\098\108\101')local bk,
bl=aJ.actor()local bm=bl.Position local bn=bl.CFrame.LookVector local bo=assert(
a7('\068\117\110\103\101\111\110\068\111\111\114\083\116\097\116\101'))local bp={}local bq=0 local function br(bs)local bt=os.
clock()+math.min(180,(bl.Position-bs).Magnitude/bg+10)repeat assert(a8(bj)and aM
:GetAttribute('\073\110\068\117\110\103\101\111\110')~=true and not workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101'),
'\082\111\117\116\101\032\105\110\116\101\114\114\117\112\116\101\100')local bu,bv,bw=aJ.actor()assert(not bw.SeatPart,
'\076\101\097\118\101\032\116\104\101\032\100\114\105\118\101\114\032\115\101\097\116\032\102\105\114\115\116')local bx=bs-bv.Position if bx.Magnitude<4 then
return end assert(os.clock()<bt,'\077\111\118\101\109\101\110\116\032\116\105\109\101\100\032\111\117\116')bu:PivotTo(CFrame.new(bv.
Position+bx.Unit*math.min(bx.Magnitude,bg*0.05)))task.wait(0.05)until false end
while a8(bj)and bq<100 do local bs,bt,bu=nil,nil,math.huge for bv,bw in ipairs(
workspace:GetDescendants())do if bw:IsA('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and bw.Enabled and not
bp[bw]then local bx=bw:GetFullName()local by=bd(bw)local bz=bx:find('\067\104\101\115\116\078\111\100\101',
1,true)or bx:find('\068\105\103\083\112\111\116',1,true)if bz and by and not bx:find('\067\117\116\083\099\101\110\101',1,
true)and not bx:find('\068\117\110\103\101\111\110',1,true)and not bo.GetRoot(bw)then local bA=by.
Position-bm local bB=bA:Dot(bn)if bB>=-30 and bA.Magnitude<=bf and bB<bu then bs
=bw bt=by bu=bB end end end end if not bs then break end bp[bs]=true br(bt.
Position+Vector3.new(0,3,0))if bs.Parent and bs.Enabled and a8(bj)then
fireproximityprompt(bs)bq+=1 aZ('\082\111\116\097\032\100\101\032\098\097\u{fa}\115\058\032'..bq..
'\032\105\110\116\101\114\097\u{e7}\u{f5}\101\115\032\115\111\108\105\099\105\116\097\100\097\115\046','\067\104\101\115\116\032\114\111\117\116\101\058\032'..bq..
'\032\105\110\116\101\114\097\099\116\105\111\110\115\032\114\101\113\117\101\115\116\101\100\046')a9(bj,function()return not bs.Parent or not bs.
Enabled end,3)end end assert(a8(bj),'\083\116\111\112\112\101\100')local bs=workspace:FindFirstChild(
'\068\114\105\108\108')local bt=bs and(bs:FindFirstChild('\066\111\100\121')or bs.PrimaryPart)assert(bt and
bt:IsA('\066\097\115\101\080\097\114\116'),'\068\114\105\108\108\032\110\111\116\032\108\111\097\100\101\100\032\102\111\114\032\114\101\116\117\114\110')br(bt.Position+Vector3.new(0,bt
.Size.Y*0.5+4,0))aZ(
'\082\111\116\097\032\099\111\110\099\108\117\u{ed}\100\097\059\032\114\101\116\111\114\110\111\032\u{e0}\032\098\114\111\099\097\046\032\073\110\116\101\114\097\u{e7}\u{f5}\101\115\058\032'..bq,
'\082\111\117\116\101\032\099\111\109\112\108\101\116\101\059\032\114\101\116\117\114\110\101\100\032\116\111\032\100\114\105\108\108\046\032\073\110\116\101\114\097\099\116\105\111\110\115\058\032'..bq)end)if aP and aQ==bj
then aT=false if not bk then aZ('\082\111\116\097\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(bl),
'\082\111\117\116\101\032\115\116\111\112\112\101\100\058\032'..tostring(bl))end end end)end)task.spawn(function()while aP do
if aS and not aT then local bj=aQ local bk,bl=pcall(bc,bj)if not bk then a5()aZ(
'\086\101\110\100\097\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(bl),'\083\101\108\108\105\110\103\032\115\116\111\112\112\101\100\058\032'..tostring(bl))end end
task.wait(2)end end)return{stop=a5,cleanup=function()aP=false a5()for bj,bk in
ipairs(aR)do bk:Disconnect()end end}end local aI={}function aI.role(aJ,aK)if aK
~=9796898051 then return nil end return({[101906032112547]='\108\111\098\098\121',[
74507545904779]='\114\117\110'})[aJ]end function aI.names(aJ)local aK={}for aL in
tostring(aJ):gmatch('\091\094\044\093\043')do aL=aL:match('\094\037\115\042\040\046\045\041\037\115\042\036')if aL~=''then aK[#aK+1
]=aL end end return aK end function aI.offer(aJ,aK,aL,aM)if type(aK)~='\110\117\109\098\101\114'or
aK~=aK then return nil end for aN,aO in ipairs(aM)do for aP,aQ in ipairs(type(aJ
)=='\116\097\098\108\101'and aJ or{})do if aQ.UpgradeName==aO and aQ.Type=='\067\111\105\110\115'and type(aQ.
Cost)=='\110\117\109\098\101\114'and aQ.Cost>=0 and aQ.Cost<math.huge and aK-aQ.Cost>=aL then
return aQ end end end end function aI.selection(aJ,aK,aL)local aM={}local aN=
math.clamp(math.floor(tonumber(aK)or 0),0,100)for aO,aP in ipairs(aL)do for aQ,
aR in ipairs(type(aJ)=='\116\097\098\108\101'and aJ or{})do if aR.Name==aP and aR.Id~=nil and
not aM[aR.Id]then local aS=math.min(aN,math.max(0,math.floor(tonumber(aR.Count)
or 0)))if aS>0 then aM[aR.Id]=aS aN-=aS end end end end return aM end function
aI.medalOffer(aJ,aK,aL,aM)if type(aK)~='\116\097\098\108\101'or type(aK.Medals)~='\110\117\109\098\101\114'or aK.
Medals~=aK.Medals or type(aK.Available)~='\116\097\098\108\101'then return nil end for aN,aO in
ipairs(aM)do local aP=aJ[aO]if aP and type(aP.Cost)=='\110\117\109\098\101\114'and aP.Cost>=0 and
aP.Cost<math.huge and aK.Available[aO]and aK.Medals-aP.Cost>=aL then return aO
end end end function aI.skipRequest(aJ)if not aJ or not aJ.CurrentCutScene or aJ
.AbortingCutScene then return nil end local aK=aJ.CurrentCutSceneContext if aK
and aK.DisableSkip then return nil end return{name=aJ.CurrentCutScene,id=aK and
aK.RuntimeId,private=aK and aK.Private==true and aK.RuntimeId~=nil,session=aJ.
CurrentCutSceneSessionId}end local aJ=function(aJ)local aK=assert(aI.role(game.
PlaceId,game.GameId),'\085\110\115\117\112\112\111\114\116\101\100\032\069\097\114\116\104\032\067\111\114\101\032\112\108\097\099\101')local aL,aM=aJ.ui,aJ.T local
aN=game:GetService('\080\108\097\121\101\114\115').LocalPlayer local aO=game:GetService(
'\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local aP=game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local aQ=true local
aR={}local aS={swing=false,upgrades=false,craft=false,skip=false,medals=false}
local aT={upgrades=0,craft=0,medals=0}local aU={}local aV={}local aW,aX local aY
={reserve=1000,limit=10,priority=
"\084\101\097\109\072\101\097\108\116\104\044\076\105\102\101\083\116\101\097\108\044\068\114\105\108\108\080\111\119\101\114\044\082\080\077\079\118\101\114\099\108\111\099\107\044\083\097\099\107\083\116\111\114\097\103\101\044\068\114\105\118\101\083\112\101\101\100",gear=
'\080\105\099\107\097\120\101\095\071\111\108\100',craftLimit=3,medalReserve=100,medalLimit=10,medalPriority=
'\084\117\114\114\101\116\068\097\109\097\103\101\044\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111'}local aZ=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095'..aN.UserId..'\095'..aK..'\046\106\115\111\110'if type(readfile)=='\102\117\110\099\116\105\111\110'
then pcall(function()local a_=aP:JSONDecode(readfile(aZ))for a0,a1 in pairs(aY)
do if type(a_[a0])==type(a1)then aY[a0]=a_[a0]end end end)end aY.reserve=math.
clamp(tonumber(aY.reserve)or 1000,0,1e9)aY.limit=math.clamp(tonumber(aY.limit)or
10,1,100)aY.medalReserve=math.clamp(tonumber(aY.medalReserve)or 100,0,1e9)aY.
medalLimit=math.clamp(tonumber(aY.medalLimit)or 10,1,100)aY.craftLimit=math.
clamp(tonumber(aY.craftLimit)or 3,1,100)local function a_()if type(writefile)==
'\102\117\110\099\116\105\111\110'then pcall(writefile,aZ,aP:JSONEncode(aY))end end local function a0(a1
,a2)aR[#aR+1]=a1:Connect(a2)end local a1=aJ.section('\070\097\114\109')local a2=aL.label(a1,
'\084\101\120\116\076\097\098\101\108',aM('\067\097\114\114\101\103\097\110\100\111\032\101\115\116\097\100\111\u{2026}','\076\111\097\100\105\110\103\032\115\116\097\116\101\u{2026}'),76,1)local
a3=aL.label(a1,'\084\101\120\116\076\097\098\101\108','',72,2)local function a4(a5,a6)if aQ then a3.Text=
aM(a5,a6 or a5)end end local function a5()for a6 in pairs(aS)do aS[a6]=false if
aV[a6]then aV[a6](false)end end if aW then aW.stop()end if aX then aX.stop()end
end aJ.attach(function()aQ=false a5()if aW then aW.cleanup()end if aX then aX.
cleanup()end for a6,a7 in ipairs(aR)do a7:Disconnect()end end)aJ.quick(a5)local
function a6(a7,a8,a9,ba,bb)local bc=aL.button(a7,aM(a8,a9),ba)a0(bc.Activated,
function()if aU[bc]then return end aU[bc]=true task.spawn(function()local bd,be=
pcall(bb)aU[bc]=nil if not bd then a4(aM('\070\097\108\104\097\058\032','\070\097\105\108\101\100\058\032')..tostring(be))end
end)end)return bc end local function a7(a8,a9,ba,bb,bc,bd)aL.label(a8,
'\084\101\120\116\076\097\098\101\108',aM(ba,bb),32,bc)local be=aL.label(a8,'\084\101\120\116\066\111\120',tostring(aY[a9]),42,
bc+1)a0(be.FocusLost,function()if bd then local bf=tonumber(be.Text)if bf and bf
==bf and bf<math.huge then aY[a9]=math.clamp(math.floor(bf),bd[1],bd[2])end else
aY[a9]=be.Text:sub(1,600)end be.Text=tostring(aY[a9])a_()end)end local function
a8(a9,ba,bb,bc,bd)local be,bf=aL.checkbox(a9,aM(bb,bc),bd)aV[ba]=bf a0(be.
Activated,function()aS[ba]=not aS[ba]bf(aS[ba])end)end local a9 local function
ba(bb,bc)if not a9 then local bd=aO:FindFirstChild('\080\097\099\107\097\103\101\115')local be=bd and bd
:FindFirstChild('\075\110\105\116')if not be then return nil end a9=require(be)end local bd,
be=pcall(bb=='\099\111\110\116\114\111\108\108\101\114'and a9.GetController or a9.GetService,bc)return bd and
be or nil end local function bb(bc)return ba('\099\111\110\116\114\111\108\108\101\114',bc)end local function
bc(bd)return assert(ba('\115\101\114\118\105\099\101',bd),bd..'\032\117\110\097\118\097\105\108\097\098\108\101')end local function bd(be
)if type(be)=='\116\097\098\108\101'and type(be.await)=='\102\117\110\099\116\105\111\110'then local bf=table.pack(be:
timeout(8):await())if not bf[1]then error(tostring(bf[2]))end return table.
unpack(bf,2,bf.n)end return be end local function be()local bf=aN.Character
local bg=bf and bf:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local bh=bf and bf:
FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if bh and bg and bg.Health>0 then return bf,bh
,bg end end local function bf()if aK=='\108\111\098\098\121'then local bg=workspace:
FindFirstChild('\076\111\098\098\121')local bh=bg and bg:FindFirstChild('\079\117\116\101\114\083\116\114\117\099\116\117\114\101\115')
return bh and bh:FindFirstChild('\067\104\117\114\099\104')end return workspace:FindFirstChild(
'\067\104\117\114\099\104')end local function bg()local bh=bf()local bi=bh and bh:FindFirstChild(
'\083\116\114\117\099\116\117\114\101')local bj=bi and bi:FindFirstChild('\082\105\110\103')local bk=bj and bj:
FindFirstChild('\083\097\118\101\071\101\097\114')return bk and bk:IsA('\066\097\115\101\080\097\114\116')and bk or nil end
local bh,bi local function bj()local bk=bg()if bk then bh=bk.CFrame bi=workspace
:GetAttribute('\073\110\102\105\110\105\116\101\068\101\112\116\104\079\102\102\115\101\116\077\101\116\101\114\115')end end bj()local bk,bl a6(a1,
'\073\114\032\097\116\u{e9}\032\097\032\105\103\114\101\106\097\032\099\097\114\114\101\103\097\100\097','\071\111\032\116\111\032\108\111\097\100\101\100\032\099\104\117\114\099\104',10,function()local bm,bn=
be()assert(bm,aM('\080\101\114\115\111\110\097\103\101\109\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\046','\067\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101\046'))bj()
local bo=bg()if not bo and bh and bi==workspace:GetAttribute(
'\073\110\102\105\110\105\116\101\068\101\112\116\104\079\102\102\115\101\116\077\101\116\101\114\115')then local bp=bn.CFrame bm:PivotTo(bh*CFrame.new(0,3
,5))pcall(function()aN:RequestStreamAroundAsync(bh.Position,5)end)bo=bg()if not
bo then bm:PivotTo(bp)end end assert(bo,aM(
'\073\103\114\101\106\097\032\097\105\110\100\097\032\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097\046\032\065\032\112\111\115\105\u{e7}\u{e3}\111\032\108\101\109\098\114\097\100\097\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\032\117\109\032\097\108\116\097\114\032\100\105\115\112\111\110\u{ed}\118\101\108\046'
,
"\067\104\117\114\099\104\032\110\111\116\032\108\111\097\100\101\100\046\032\065\032\114\101\109\101\109\098\101\114\101\100\032\112\111\115\105\116\105\111\110\032\100\111\101\115\032\110\111\116\032\099\111\110\102\105\114\109\032\097\110\032\097\118\097\105\108\097\098\108\101\032\097\108\116\097\114\046"
))bk=bn.CFrame bl=bm bm:PivotTo(bo.CFrame*CFrame.new(0,3,5))a4(
'\068\101\115\108\111\099\097\109\101\110\116\111\032\115\111\108\105\099\105\116\097\100\111\046\032\067\111\110\102\105\114\097\032\115\117\097\032\112\111\115\105\u{e7}\u{e3}\111\046',
'\077\111\118\101\109\101\110\116\032\114\101\113\117\101\115\116\101\100\046\032\067\104\101\099\107\032\121\111\117\114\032\112\111\115\105\116\105\111\110\046')end)a6(a1,
'\086\111\108\116\097\114\032\u{e0}\032\112\111\115\105\u{e7}\u{e3}\111\032\097\110\116\101\114\105\111\114','\082\101\116\117\114\110\032\116\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110',11,
function()local bm=be()assert(bm and bm==bl and bk,
'\078\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110\032\102\111\114\032\116\104\105\115\032\099\104\097\114\097\099\116\101\114')bm:PivotTo(bk)end)a6(a1,
'\080\097\114\097\114\032\116\111\100\097\115\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115','\083\116\111\112\032\097\108\108\032\097\117\116\111\109\097\116\105\111\110',12,function()a5()a4(
'\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\114\097\100\097\115\046','\065\117\116\111\109\097\116\105\111\110\032\115\116\111\112\112\101\100\046')end)if aK=='\108\111\098\098\121'then aL.
label(a1,'\084\101\120\116\076\097\098\101\108',aM(
'\076\111\098\098\121\058\032\101\113\117\105\112\097\109\101\110\116\111\115\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\100\101\032\101\120\112\101\100\105\u{e7}\u{e3}\111\032\097\112\097\114\101\099\101\109\032\110\097\032\112\097\114\116\105\100\097\046'
,"\076\111\098\098\121\058\032\101\113\117\105\112\109\101\110\116\046\032\069\120\112\101\100\105\116\105\111\110\032\102\101\097\116\117\114\101\115\032\097\112\112\101\097\114\032\105\110\032\116\104\101\032\103\097\109\101\032\112\108\097\099\101\046"),54,15)a7(
a1,'\103\101\097\114','\078\111\109\101\032\101\120\097\116\111\032\100\111\032\101\113\117\105\112\097\109\101\110\116\111\032\100\111\032\108\111\098\098\121','\069\120\097\099\116\032\108\111\098\098\121\032\101\113\117\105\112\109\101\110\116\032\110\097\109\101',20)
a6(a1,'\069\113\117\105\112\097\114\032\111\032\105\116\101\109\032\105\110\102\111\114\109\097\100\111','\069\113\117\105\112\032\101\110\116\101\114\101\100\032\105\116\101\109',23,function()local bm=aI.
names(aY.gear)[1]assert(bm,'\069\110\116\101\114\032\097\110\032\105\116\101\109\032\110\097\109\101')local bn=bd(bc(
'\076\111\098\098\121\066\097\099\107\112\097\099\107\083\101\114\118\105\099\101'):SetEquipped(bm))a4(bn and aM('\069\113\117\105\112\097\109\101\110\116\111\032\097\099\101\105\116\111\046',
'\069\113\117\105\112\109\101\110\116\032\097\099\099\101\112\116\101\100\046')or aM('\079\032\106\111\103\111\032\110\u{e3}\111\032\097\099\101\105\116\111\117\032\111\032\105\116\101\109\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\097\099\099\101\112\116\032\116\104\105\115\032\105\116\101\109\046'))end)else a8(a1,'\115\119\105\110\103',
'\065\117\116\111\032\112\105\099\097\114\101\116\097\032\101\113\117\105\112\097\100\097\032\040\097\108\099\097\110\099\101\032\110\111\114\109\097\108\041','\065\117\116\111\032\101\113\117\105\112\112\101\100\032\112\105\099\107\097\120\101\032\040\110\111\114\109\097\108\032\114\097\110\103\101\041'
,20)aL.label(a1,'\084\101\120\116\076\097\098\101\108',aM(
"\069\113\117\105\112\101\032\097\032\112\105\099\097\114\101\116\097\032\101\032\097\112\114\111\120\105\109\101\045\115\101\032\100\111\032\097\108\118\111\046\032\082\101\115\112\101\105\116\097\032\111\032\099\111\111\108\100\111\119\110\032\110\097\116\105\118\111\046",
"\069\113\117\105\112\032\121\111\117\114\032\112\105\099\107\097\120\101\032\097\110\100\032\097\112\112\114\111\097\099\104\032\116\104\101\032\116\097\114\103\101\116\046\032\085\115\101\115\032\116\104\101\032\110\097\116\105\118\101\032\099\111\111\108\100\111\119\110\046"),48,21
)local bm=aJ.section('\077\101\108\104\111\114\105\097\115')aL.label(bm,'\084\101\120\116\076\097\098\101\108',aM(
'\079\114\103\097\110\105\122\101\032\097\032\108\105\115\116\097\032\099\111\109\032\u{2191}\047\u{2193}\032\097\098\097\105\120\111\046\032\068\101\115\109\097\114\113\117\101\032\111\032\113\117\101\032\110\u{e3}\111\032\100\101\115\101\106\097\032\099\111\109\112\114\097\114\046'
,
'\082\101\111\114\100\101\114\032\119\105\116\104\032\u{2191}\047\u{2193}\032\098\101\108\111\119\046\032\085\110\099\104\101\099\107\032\117\112\103\114\097\100\101\115\032\121\111\117\032\100\111\032\110\111\116\032\119\097\110\116\032\116\111\032\098\117\121\046'
),50,1)a7(bm,'\114\101\115\101\114\118\101','\082\101\115\101\114\118\097\032\109\u{ed}\110\105\109\097\032\100\101\032\109\111\101\100\097\115','\077\105\110\105\109\117\109\032\099\111\105\110\032\114\101\115\101\114\118\101',4,
{0,1e9})a7(bm,'\108\105\109\105\116','\076\105\109\105\116\101\032\100\101\032\116\101\110\116\097\116\105\118\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\065\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',7,{1,100})a8(bm,'\117\112\103\114\097\100\101\115',
'\065\117\116\111\032\109\101\108\104\111\114\105\097\115\032\099\111\109\032\109\111\101\100\097\115','\065\117\116\111\032\099\111\105\110\032\117\112\103\114\097\100\101\115',10)a7(bm,'\099\114\097\102\116\076\105\109\105\116',
'\076\105\109\105\116\101\032\100\101\032\102\097\098\114\105\099\097\u{e7}\u{e3}\111\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\067\114\097\102\116\032\097\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',12,{1,100})a8(bm,'\099\114\097\102\116',
'\065\117\116\111\032\102\097\098\114\105\099\097\114\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\032\110\111\032\106\111\103\111','\065\117\116\111\032\099\114\097\102\116\032\105\116\101\109\032\115\101\108\101\099\116\101\100\032\105\110\032\103\097\109\101',15)
aL.label(bm,'\084\101\120\116\076\097\098\101\108',aM(
'\067\114\097\102\116\105\110\103\058\032\097\098\114\097\032\097\032\098\097\110\099\097\100\097\032\101\032\101\115\099\111\108\104\097\032\111\032\105\116\101\109\032\110\111\032\106\111\103\111\046\032\082\111\098\117\120\032\102\105\099\097\032\101\120\099\108\117\u{ed}\100\111\046\032\065\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\099\111\109\101\u{e7}\097\109\032\100\101\115\108\105\103\097\100\097\115\046'
,
"\067\114\097\102\116\105\110\103\058\032\111\112\101\110\032\116\104\101\032\098\101\110\099\104\032\097\110\100\032\115\101\108\101\099\116\032\097\110\032\105\116\101\109\032\105\110\032\103\097\109\101\046\032\082\111\098\117\120\032\105\115\032\101\120\099\108\117\100\101\100\046\032\065\117\116\111\109\097\116\105\111\110\032\115\116\097\114\116\115\032\100\105\115\097\098\108\101\100\046"
),72,16)local bn=aJ.section('\073\103\114\101\106\097')a7(bn,'\103\101\097\114',
'\080\114\105\111\114\105\100\097\100\101\032\100\101\032\105\116\101\110\115\032\097\032\115\097\108\118\097\114\032\040\110\111\109\101\115\032\101\120\097\116\111\115\041','\071\101\097\114\032\115\097\118\101\032\112\114\105\111\114\105\116\121\032\040\101\120\097\099\116\032\110\097\109\101\115\041'
,1)local bo=aL.label(bn,'\084\101\120\116\076\097\098\101\108',aM(
"\083\101\108\101\099\105\111\110\101\032\111\115\032\105\116\101\110\115\032\101\032\114\101\118\105\115\101\032\097\110\116\101\115\032\100\101\032\115\097\108\118\097\114\046\032\083\097\108\118\097\114\032\114\101\116\111\114\110\097\032\097\111\032\108\111\098\098\121\046",
"\083\101\108\101\099\116\032\097\110\100\032\114\101\118\105\101\119\032\103\101\097\114\032\098\101\102\111\114\101\032\115\097\118\105\110\103\046\032\083\097\118\105\110\103\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\108\111\098\098\121\046"),90,5)
local bp=nil local bq={}local br={}local function bs()for bt,bu in ipairs(br)do
bu:Disconnect()end table.clear(br)for bt,bu in ipairs(bq)do bu:Destroy()end
table.clear(bq)end aJ.attach(function()aQ=false a5()bs()if aW then aW.cleanup()
end if aX then aX.cleanup()end for bt,bu in ipairs(aR)do bu:Disconnect()end end)
a6(bn,'\067\097\114\114\101\103\097\114\032\105\110\118\101\110\116\u{e1}\114\105\111\032\101\032\101\115\099\111\108\104\101\114\032\105\116\101\110\115',
'\076\111\097\100\032\105\110\118\101\110\116\111\114\121\032\097\110\100\032\115\101\108\101\099\116\032\105\116\101\109\115',10,function()local bt=assert(bb(
'\083\097\118\101\071\101\097\114\067\111\110\116\114\111\108\108\101\114'),'\083\097\118\101\032\085\073\032\117\110\097\118\097\105\108\097\098\108\101')assert(bt.Loaded and bt.Frame.
Visible and not bt.Pending and not bt.DeathMode,aM('\065\098\114\097\032\112\114\105\109\101\105\114\111\032\111\032\097\108\116\097\114\046',
'\079\112\101\110\032\116\104\101\032\097\108\116\097\114\032\102\105\114\115\116\046'))local bu=bd(bc('\080\108\097\121\101\114\083\101\114\118\105\099\101'):GetSaveGearChoices())
assert(aQ and type(bu)=='\116\097\098\108\101'and bt.Loaded and bt.Frame.Visible and not bt.
Pending and not bt.DeathMode,'\065\108\116\097\114\032\099\108\111\115\101\100')bs()bt.Selection={}bt.Limit=math.
max(0,math.floor(tonumber(bu.Limit)or 0))bp=bt local bv={}local function bw()
local bx=0 for by,bz in pairs(bt.Selection)do bx+=bz end bo.Text=string.format(
aM("\083\101\108\101\099\105\111\110\097\100\111\115\058\032\037\100\047\037\100\046\032\067\111\110\102\105\114\097\032\097\032\108\105\115\116\097\032\101\032\117\115\101\032\083\065\076\086\065\082\032\112\097\114\097\032\118\111\108\116\097\114\032\097\111\032\108\111\098\098\121\046",
"\083\101\108\101\099\116\101\100\058\032\037\100\047\037\100\046\032\082\101\118\105\101\119\032\116\104\101\032\108\105\115\116\032\097\110\100\032\117\115\101\032\083\065\086\069\032\116\111\032\114\101\116\117\114\110\032\116\111\032\116\104\101\032\108\111\098\098\121\046"),bx,bt
.Limit)bt:UpdateTotal()for by,bz in ipairs(bv)do bz()end end for bx,by in
ipairs(bu.Items or{})do if by.Id~=nil and by.Count and by.Count>0 then local bz=
Instance.new('\070\114\097\109\101')bz.Size=UDim2.new(1,-8,0,64)bz.BackgroundTransparency=0.2
bz.BackgroundColor3=Color3.fromRGB(23,31,44)bz.LayoutOrder=100+bx bz.Parent=bn
bq[#bq+1]=bz local bA=Instance.new('\085\073\083\116\114\111\107\101')bA.Color=Color3.fromRGB(77,110,140
)bA.Transparency=0.35 bA.Parent=bz local bB,bC=bt:GetItemDisplay(by.Name)local
bD=Instance.new('\073\109\097\103\101\076\097\098\101\108')bD.Size=UDim2.fromOffset(40,40)bD.Position=UDim2.
fromOffset(6,10)bD.BackgroundTransparency=1 bD.Image=bB or''bD.Parent=bz local
bE,bF=aL.checkbox(bz,'',1)bE.Size=UDim2.new(1,-150,0,58)bE.Position=UDim2.
fromOffset(50,2)local bG=bE:FindFirstChildWhichIsA('\084\101\120\116\076\097\098\101\108')local function bH
()local bI=bt.Selection[by.Id]or 0 bF(bI>0)if bG then bG.Text=tostring(bC or by.
Name)..'\032\u{b7}\032'..bI..'\047'..by.Count end end bv[#bv+1]=bH local function bI(bJ)
if not aQ or bp~=bt or not bt.Loaded or not bt.Frame.Visible or bt.Pending or bt
.DeathMode then return end local bK=0 for bL,bM in pairs(bt.Selection)do bK+=bM
end local bL=bt.Selection[by.Id]or 0 if bJ>0 and bK>=bt.Limit then return end bt
.Selection[by.Id]=math.clamp(bL+bJ,0,by.Count)bw()end br[#br+1]=bE.Activated:
Connect(function()if not aQ or bp~=bt or bt.Pending or not bt.Frame.Visible then
return end if(bt.Selection[by.Id]or 0)>0 then bt.Selection[by.Id]=0 bw()else bI(
1)end end)for bJ,bK in ipairs({-1,1})do local bL=aL.button(bz,bK<0 and'\u{2212}'
or'\043',2+bJ)bL.Size=UDim2.fromOffset(40,42)bL.Position=UDim2.new(1,-94+(bJ-1)*46,
0,10)br[#br+1]=bL.Activated:Connect(function()bI(bK)end)end end end bw()end)a6(
bn,'\065\098\114\105\114\032\097\108\116\097\114\032\101\032\099\097\114\114\101\103\097\114\032\105\116\101\110\115','\079\112\101\110\032\097\108\116\097\114\032\097\110\100\032\108\111\097\100\032\103\101\097\114',7,function()local
bt,bu=be()local bv=bg()assert(bu and bv and(bu.Position-bv.Position).Magnitude<=
20,aM('\065\112\114\111\120\105\109\101\045\115\101\032\100\111\032\097\108\116\097\114\032\112\114\105\109\101\105\114\111\046','\065\112\112\114\111\097\099\104\032\116\104\101\032\097\108\116\097\114\032\102\105\114\115\116\046'))local bw=
assert(bb('\085\073\067\111\110\116\114\111\108\108\101\114'),'\085\073\032\117\110\097\118\097\105\108\097\098\108\101')bw:ToggleFrame('\083\097\118\101\071\101\097\114',true)bp=nil
bo.Text=aM('\065\103\117\097\114\100\101\032\097\032\108\105\115\116\097\032\110\097\116\105\118\097\059\032\100\101\112\111\105\115\032\112\114\101\112\097\114\101\032\097\032\115\101\108\101\u{e7}\u{e3}\111\046',
'\087\097\105\116\032\102\111\114\032\116\104\101\032\110\097\116\105\118\101\032\108\105\115\116\044\032\116\104\101\110\032\112\114\101\112\097\114\101\032\116\104\101\032\115\101\108\101\099\116\105\111\110\046')end)a6(bn,
'\080\114\101\112\097\114\097\114\032\115\101\108\101\u{e7}\u{e3}\111\032\112\111\114\032\112\114\105\111\114\105\100\097\100\101','\080\114\101\112\097\114\101\032\115\101\108\101\099\116\105\111\110\032\098\121\032\112\114\105\111\114\105\116\121',8,
function()local bt=assert(bb('\083\097\118\101\071\101\097\114\067\111\110\116\114\111\108\108\101\114'),'\083\097\118\101\032\085\073\032\117\110\097\118\097\105\108\097\098\108\101')assert(
bt.Loaded and bt.Frame.Visible and not bt.Pending and not bt.DeathMode,
'\079\112\101\110\032\116\104\101\032\108\105\118\101\032\097\108\116\097\114\032\085\073\032\102\105\114\115\116')local bu=bd(bc('\080\108\097\121\101\114\083\101\114\118\105\099\101'):
GetSaveGearChoices())assert(aQ and type(bu)=='\116\097\098\108\101'and bt.Loaded and bt.Frame.
Visible and not bt.Pending and not bt.DeathMode,
'\067\104\111\105\099\101\115\032\117\110\097\118\097\105\108\097\098\108\101\032\111\114\032\097\108\116\097\114\032\099\108\111\115\101\100')local bv=aI.selection(bu.Items,bu.Limit,aI
.names(aY.gear))local bw=0 for bx,by in pairs(bv)do bw+=by end assert(bw>0,aM(
'\078\101\110\104\117\109\032\105\116\101\109\032\100\105\115\112\111\110\u{ed}\118\101\108\032\099\111\105\110\099\105\100\101\032\099\111\109\032\097\032\108\105\115\116\097\046',
'\078\111\032\097\118\097\105\108\097\098\108\101\032\103\101\097\114\032\109\097\116\099\104\101\115\032\121\111\117\114\032\108\105\115\116\046'))bt.Selection=bv bt:UpdateTotal()bp=bt bo
.Text=string.format(aM(
'\037\100\032\105\116\101\109\040\110\115\041\032\115\101\108\101\099\105\111\110\097\100\111\115\046\032\082\101\118\105\115\101\032\110\097\032\106\097\110\101\108\097\032\100\111\032\106\111\103\111\046\032\079\032\112\114\u{f3}\120\105\109\111\032\098\111\116\u{e3}\111\032\115\097\108\118\097\032\101\032\115\097\105\046'
,
"\037\100\032\105\116\101\109\040\115\041\032\115\101\108\101\099\116\101\100\046\032\082\101\118\105\101\119\032\105\110\032\116\104\101\032\103\097\109\101\032\119\105\110\100\111\119\046\032\084\104\101\032\110\101\120\116\032\098\117\116\116\111\110\032\115\097\118\101\115\032\097\110\100\032\101\120\105\116\115\046"
),bw)end)a6(bn,'\083\065\076\086\065\082\032\115\101\108\101\u{e7}\u{e3}\111\032\114\101\118\105\115\097\100\097\032\101\032\115\097\105\114',
'\083\065\086\069\032\114\101\118\105\101\119\101\100\032\115\101\108\101\099\116\105\111\110\032\097\110\100\032\101\120\105\116',9,function()local bt=bp local bu,bv=be()local
bw=bg()assert(aQ and bv and bw and(bv.Position-bw.Position).Magnitude<=20 and bt
and bt.Loaded and bt.Frame.Visible and not bt.Pending and not bt.DeathMode,
'\082\101\118\105\101\119\032\103\101\097\114\032\097\116\032\116\104\101\032\097\108\116\097\114\032\119\104\105\108\101\032\097\108\105\118\101\032\102\105\114\115\116')a5()bp=nil bt:Teleport()a4(
'\083\111\108\105\099\105\116\097\u{e7}\u{e3}\111\032\101\110\118\105\097\100\097\046\032\079\032\106\111\103\111\032\099\111\110\102\105\114\109\097\032\101\032\102\097\122\032\111\032\116\101\108\101\112\111\114\116\101\046',
'\082\101\113\117\101\115\116\032\115\101\110\116\046\032\084\104\101\032\103\097\109\101\032\099\111\110\102\105\114\109\115\032\097\110\100\032\116\101\108\101\112\111\114\116\115\032\121\111\117\046')end)end if aK=='\114\117\110'and aG
then aW=aG(aJ,{actor=be,ctrl=bb,say=a4,priority=aY.priority,setPriority=function
(bm)aY.priority=bm a_()end})end if aK=='\114\117\110'and aH then aX=aH(aJ,{actor=be,ctrl=
bb,service=bc,await=bd,pauseCombat=function()if aW then aW.stop()end end})end
local bm local bn if aK=='\114\117\110'then a8(a1,'\115\107\105\112',
'\065\117\116\111\032\118\111\116\097\114\032\112\097\114\097\032\112\117\108\097\114\032\099\117\116\115\099\101\110\101\115','\065\117\116\111\032\118\111\116\101\032\116\111\032\115\107\105\112\032\099\117\116\115\099\101\110\101\115',24)aL.label(a1,
'\084\101\120\116\076\097\098\101\108',aM(
'\079\032\112\114\111\103\114\101\115\115\111\032\100\101\112\101\110\100\101\032\100\097\032\098\114\111\099\097\032\101\032\100\097\115\032\112\097\114\101\100\101\115\046\032\084\101\108\101\112\111\114\116\101\032\101\032\118\111\111\032\110\u{e3}\111\032\099\111\110\116\097\109\032\113\117\105\108\u{f4}\109\101\116\114\111\115\046'
,
"\080\114\111\103\114\101\115\115\032\100\101\112\101\110\100\115\032\111\110\032\116\104\101\032\100\114\105\108\108\032\097\110\100\032\119\097\108\108\115\046\032\084\101\108\101\112\111\114\116\105\110\103\032\097\110\100\032\102\108\121\105\110\103\032\100\111\032\110\111\116\032\099\111\117\110\116\032\107\105\108\111\109\101\116\101\114\115\046"
),58,25)a6(a1,'\067\111\110\115\117\108\116\097\114\032\082\080\032\097\116\117\097\108\032\100\097\032\112\097\114\116\105\100\097','\067\104\101\099\107\032\099\117\114\114\101\110\116\032\114\117\110\032\082\080',27,function
()assert(aN:GetAttribute('\082\097\110\107\101\100\082\117\110\065\099\116\105\118\101')==true,aM(
'\069\115\116\097\032\112\097\114\116\105\100\097\032\110\u{e3}\111\032\u{e9}\032\114\097\110\113\117\101\097\100\097\046','\084\104\105\115\032\114\117\110\032\105\115\032\110\111\116\032\114\097\110\107\101\100\046'))local bo=
bd(bc('\082\097\110\107\101\100\083\101\114\118\105\099\101'):GetRankChange())assert(type(bo)=='\116\097\098\108\101'and type(bo.
DeltaRP)=='\110\117\109\098\101\114','\082\080\032\117\110\097\118\097\105\108\097\098\108\101')a4(string.format(aM(
'\082\080\032\112\114\111\106\101\116\097\100\111\032\112\101\108\111\032\106\111\103\111\058\032\037\043\100\046\032\078\u{e3}\111\032\115\097\108\118\097\032\110\101\109\032\115\097\105\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046',
"\071\097\109\101\045\112\114\111\106\101\099\116\101\100\032\082\080\058\032\037\043\100\046\032\068\111\101\115\032\110\111\116\032\097\117\116\111\109\097\116\105\099\097\108\108\121\032\115\097\118\101\032\111\114\032\101\120\105\116\046"),bo.DeltaRP))
end)local bo=aJ.section('\077\101\108\104\111\114\105\097\115')a7(bo,'\109\101\100\097\108\080\114\105\111\114\105\116\121',
'\077\101\100\097\108\104\097\115\058\032\112\114\105\111\114\105\100\097\100\101\115\032\040\073\068\115\032\115\101\112\097\114\097\100\111\115\032\112\111\114\032\118\u{ed}\114\103\117\108\097\041',
'\077\101\100\097\108\115\058\032\112\114\105\111\114\105\116\105\101\115\032\040\099\111\109\109\097\045\115\101\112\097\114\097\116\101\100\032\073\068\115\041',80)a7(bo,'\109\101\100\097\108\082\101\115\101\114\118\101',
'\082\101\115\101\114\118\097\032\100\101\032\109\101\100\097\108\104\097\115','\077\101\100\097\108\032\114\101\115\101\114\118\101',83,{0,1e9})a7(bo,'\109\101\100\097\108\076\105\109\105\116',
'\076\105\109\105\116\101\032\100\101\032\099\111\109\112\114\097\115\032\100\101\032\109\101\100\097\108\104\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\077\101\100\097\108\032\112\117\114\099\104\097\115\101\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',86,{1,100})a8(bo,'\109\101\100\097\108\115',
'\065\117\116\111\032\109\101\108\104\111\114\105\097\115\032\100\101\032\076\097\114\114\121\032\099\111\109\032\109\101\100\097\108\104\097\115','\065\117\116\111\032\076\097\114\114\121\032\109\101\100\097\108\032\117\112\103\114\097\100\101\115',89)aL.label(
bo,'\084\101\120\116\076\097\098\101\108',aM(
'\065\098\114\097\032\076\097\114\114\121\032\112\101\114\116\111\032\100\097\032\101\115\116\097\u{e7}\u{e3}\111\046\032\073\068\115\058\032\084\117\114\114\101\116\068\097\109\097\103\101\044\032\070\108\097\109\101\068\117\114\097\116\105\111\110\044\032\070\114\111\115\116\068\117\114\097\116\105\111\110\044\032\070\108\097\109\101\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\070\114\111\115\116\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111\046\032\083\101\109\032\099\111\109\112\114\097\115\032\082\111\098\117\120\046'
,
"\079\112\101\110\032\076\097\114\114\121\032\110\101\097\114\032\116\104\101\032\115\116\097\116\105\111\110\046\032\073\068\115\058\032\084\117\114\114\101\116\068\097\109\097\103\101\044\032\070\108\097\109\101\068\117\114\097\116\105\111\110\044\032\070\114\111\115\116\068\117\114\097\116\105\111\110\044\032\070\108\097\109\101\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\070\114\111\115\116\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111\046\032\078\111\032\082\111\098\117\120\032\112\117\114\099\104\097\115\101\115\046"
),110,90)end local bo,bp=0,0 task.spawn(function()while aQ do local bq,br=pcall(
function()local bq,br,bs=be()if os.clock()>=bp then bp=os.clock()+2 bj()a2.Text=
string.format(
'\037\115\032\u{b7}\032\080\108\097\099\101\032\037\115\n\037\115\058\032\037\115\032\u{b7}\032\037\115\058\032\037\115\n\037\115\058\032\037\100\047\037\100\032\u{b7}\032\067\114\097\102\116\058\032\037\100\047\037\100',aK==
'\108\111\098\098\121'and'\076\111\098\098\121'or aM('\069\120\112\101\100\105\u{e7}\u{e3}\111','\069\120\112\101\100\105\116\105\111\110'),game.PlaceId,aM(
'\086\105\100\097','\072\101\097\108\116\104'),bs and math.floor(bs.Health)or 0,aM('\073\103\114\101\106\097','\067\104\117\114\099\104'),bg()and
aM('\099\097\114\114\101\103\097\100\097','\108\111\097\100\101\100')or aM('\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097','\110\111\116\032\108\111\097\100\101\100'),aM(
'\084\101\110\116\097\116\105\118\097\115\032\117\112\103\114\097\100\101','\085\112\103\114\097\100\101\032\097\116\116\101\109\112\116\115'),aT.upgrades,aY.limit,aT.craft,aY.
craftLimit)end if aK~='\114\117\110'or not br then return end if aS.skip then local bt=aI
.skipRequest(bb('\067\117\116\083\099\101\110\101\067\111\110\116\114\111\108\108\101\114'))if not bt then bm=nil elseif not bm or bm.
name~=bt.name or bm.id~=bt.id or bm.session~=bt.session then bm=bt local bu=bc(
'\067\117\116\083\099\101\110\101\083\101\114\118\105\099\101')if bt.private then bd(bu:VoteSkipPrivate(bt.id,bt.name))else
bd(bu:VoteSkip(bt.name,bt.id))end end end if workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101'
)then return end if aS.swing and not game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101'):
GetFocusedTextBox()then local bt=bb('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local bu=bt and bt.
ActiveTool local bv=bb('\085\073\067\111\110\116\114\111\108\108\101\114')if bu and bu.Tool and bu.Tool.Name:find(
'\080\105\099\107\097\120\101',1,true)and type(bu.Swing)=='\102\117\110\099\116\105\111\110'and not(bv and bv.ActiveFrame and
bv.ActiveFrame.Visible)then bu:Swing()end end if os.clock()<bo then return end
bo=os.clock()+3 if aS.upgrades and aT.upgrades<aY.limit then local bt=bb(
'\068\114\105\108\108\085\112\103\114\097\100\101\067\111\110\116\114\111\108\108\101\114')if bt and not bt.PurchasePending and not bt.CardsLocked
and not bt.ActiveClassReward and bt.OptionsVersion~=nil then local bu=bt.
OptionsVersion local bv=bt.RollToken local bw=bd(bc('\067\117\114\114\101\110\099\121\083\101\114\118\105\099\101'):
GetCurrency())if not aQ or not aS.upgrades or bu~=bt.OptionsVersion or bv~=bt.
RollToken or bt.PurchasePending or bt.CardsLocked or bt.ActiveClassReward or not
be()then return end local bx=aI.offer(bt.Options,bw,aY.reserve,aI.names(aY.
priority))if bx then aT.upgrades+=1 bt:SetPurchasePending(true)local by,bz=
pcall(function()return bd(bc('\068\114\105\108\108\083\101\114\118\105\099\101'):UpgradeDrill(bx.UpgradeName,bu))end
)if bu==bt.OptionsVersion and bv==bt.RollToken then bt:SetPurchasePending(false)
end if not by then error(bz)end if not aQ then return end if bz=='\112\114\111\109\112\116\101\100'then
aS.upgrades=false aV.upgrades(false)a4(
'\079\032\106\111\103\111\032\114\101\116\111\114\110\111\117\032\117\109\032\102\108\117\120\111\032\100\101\032\099\111\109\112\114\097\059\032\097\117\116\111\109\097\u{e7}\u{e3}\111\032\100\101\115\097\116\105\118\097\100\097\046',
'\084\104\101\032\103\097\109\101\032\114\101\116\117\114\110\101\100\032\097\032\112\117\114\099\104\097\115\101\032\102\108\111\119\059\032\097\117\116\111\109\097\116\105\111\110\032\100\105\115\097\098\108\101\100\046')else a4(aM(
'\077\101\108\104\111\114\105\097\032\115\111\108\105\099\105\116\097\100\097\058\032','\085\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\058\032')..bx.UpgradeName)end if type(bt.
FetchUpgradeOptions)=='\102\117\110\099\116\105\111\110'then bt:FetchUpgradeOptions()end end end end if
aS.medals and aT.medals<aY.medalLimit then local bt=bb('\076\097\114\114\121\067\111\110\116\114\111\108\108\101\114')if bt
and bt.Frame and bt.Frame.Visible and not bt.PurchasePending and bt:FindStation(
)then if not bn then local bu=aO:FindFirstChild('\083\104\097\114\101\100')local bv=bu and bu:
FindFirstChild('\076\097\114\114\121\067\111\110\102\105\103')if bv then bn=require(bv).Upgrades end end local bu
=bn and aI.medalOffer(bn,bt.State,aY.medalReserve,aI.names(aY.medalPriority))if
bu then aT.medals+=1 bt:BuyUpgrade(bu)a4(aM('\077\101\108\104\111\114\105\097\032\099\111\109\032\109\101\100\097\108\104\097\115\032\115\111\108\105\099\105\116\097\100\097\058\032'
,'\077\101\100\097\108\032\117\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\058\032')..bu)end end end if aS.craft and aT.craft<aY.
craftLimit then local bt=bb('\067\114\097\102\116\105\110\103\067\111\110\116\114\111\108\108\101\114')if bt and bt.CurrentItem and
not bt.PendingCraft and bt.Frame and bt.Frame.Visible and not bt:
CanPurchaseWithRobux(bt.CurrentItem)and bt:CanCraft(bt.CurrentItem)then aT.craft
+=1 bt:CraftCurrentItem()a4(
'\070\097\098\114\105\099\097\u{e7}\u{e3}\111\032\115\111\108\105\099\105\116\097\100\097\032\112\097\114\097\032\111\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\046',
'\067\114\097\102\116\032\114\101\113\117\101\115\116\101\100\032\102\111\114\032\116\104\101\032\115\101\108\101\099\116\101\100\032\105\116\101\109\046')end end end)if not bq then a4(aM(
'\065\103\117\097\114\100\097\110\100\111\032\047\032\101\114\114\111\058\032','\087\097\105\116\105\110\103\032\047\032\101\114\114\111\114\058\032')..tostring(br))bo=os.clock()+8 end
task.wait(0.2)end end)end local aK,aL,aM=false,nil,false local aN=task.spawn(
function()aK,aL=pcall(aJ,{ui=O,page=N('\070\097\114\109'),T=function(aN,aO)return b.language
=='\112\116'and aN or aO end,progress=aE,attach=function(aN)j=aN end,section=N,quick=
function(aN)k=aN end})aM=true end)local aO=os.clock()+45 while l and not aM and
os.clock()<aO do task.wait(0.05)end if not aM then pcall(task.cancel,aN)aK=false
aL=p('\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\052\053\032\115\101\103\117\110\100\111\115\032\101\120\099\101\100\105\100\111\046\032\u{da}\108\116\105\109\097\032\101\116\097\112\097\058\032',
'\052\053\045\115\101\099\111\110\100\032\116\105\109\101\111\117\116\046\032\076\097\115\116\032\115\116\097\103\101\058\032')..as.Text end if not l then return end if not
aK then if j then pcall(j)j=nil end ar.Text=p(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\099\097\114\114\101\103\097\114\032\097\115\032\102\117\110\u{e7}\u{f5}\101\115',
'\067\111\117\108\100\032\110\111\116\032\108\111\097\100\032\116\104\101\032\102\101\097\116\117\114\101\115')as.Text=p(
'\070\101\099\104\101\032\111\032\112\097\105\110\101\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046\032\068\101\116\097\108\104\101\115\058\032',
'\067\108\111\115\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\116\114\121\032\097\103\097\105\110\046\032\068\101\116\097\105\108\115\058\032')..tostring(aL)aw.Text=p(
'\067\097\114\114\101\103\097\109\101\110\116\111\032\105\110\116\101\114\114\111\109\112\105\100\111','\076\111\097\100\105\110\103\032\105\110\116\101\114\114\117\112\116\101\100')b.ready()return end local
function aP(aQ,aR)local aS,aT,aU=false,false,nil local aV=task.spawn(function()
aT,aU=pcall(aQ)aS=true end)local aW=os.clock()+aR while l and not aS and os.
clock()<aW do task.wait(0.05)end if not aS then pcall(task.cancel,aV)return
false,p('\084\101\109\112\111\032\108\105\109\105\116\101\032\101\120\099\101\100\105\100\111','\084\105\109\101\032\108\105\109\105\116\032\101\120\099\101\101\100\101\100')end return aT,aU end aE(
0.92,'\077\111\110\116\097\110\100\111\032\111\115\032\097\106\117\115\116\101\115\032\100\101\032\116\101\108\097\u{2026}','\066\117\105\108\100\105\110\103\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\u{2026}')
local aQ local aR,aS=aP(function()local aR=N('\065\106\117\115\116\101\115')ab(aR)local aS=O.button(
aR,p('\u{1f1e7}\u{1f1f7}\032\032\073\100\105\111\109\097\058\032\080\111\114\116\117\103\117\u{ea}\115\032\032\u{b7}\032\032\065\108\116\101\114\097\114',
'\u{1f1fa}\u{1f1f8}\032\032\076\097\110\103\117\097\103\101\058\032\069\110\103\108\105\115\104\032\032\u{b7}\032\032\067\104\097\110\103\101'),870)r(aS.Activated,
function()if type(b.chooseLanguage)=='\102\117\110\099\116\105\111\110'then b.chooseLanguage()end end)O.
label(aR,'\084\101\120\116\076\097\098\101\108',p(
'\084\114\111\099\097\114\032\111\032\105\100\105\111\109\097\032\114\101\097\098\114\101\032\111\032\112\097\105\110\101\108\032\099\111\109\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\117\115\097\100\097\115\046',
'\067\104\097\110\103\105\110\103\032\108\097\110\103\117\097\103\101\032\114\101\111\112\101\110\115\032\116\104\101\032\112\097\110\101\108\032\119\105\116\104\032\097\117\116\111\109\097\116\105\111\110\032\112\097\117\115\101\100\046'),44,871)O.label(aR
,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\084\111\113\117\101\032\065\058\032\097\098\114\105\114\047\102\101\099\104\097\114\046\032\083\101\103\117\114\101\032\048\044\054\053\115\032\101\032\115\111\108\116\101\058\032\112\097\114\097\114\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\046\032\065\114\114\097\115\116\101\058\032\109\111\118\101\114\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\105\110\101\108\046'
or
"\084\097\112\032\065\058\032\116\111\103\103\108\101\032\112\097\110\101\108\046\032\072\111\108\100\032\048\046\054\053\115\032\097\110\100\032\114\101\108\101\097\115\101\058\032\115\116\111\112\032\097\117\116\111\109\097\116\105\111\110\046\032\068\114\097\103\058\032\109\111\118\101\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\110\101\108\046"
,68,900)local aT=O.label(aR,'\084\101\120\116\066\111\120','\069\066\065\053\070\070',40,902)aT.ClearTextOnFocus=false
O.label(aR,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\067\111\114\032\100\101\032\100\101\115\116\097\113\117\101\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\120\046\058\032\070\070\067\065\052\050\041'or
'\065\099\099\101\110\116\032\099\111\108\111\114\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\046\103\046\032\070\070\067\065\052\050\041',30,901)local aU=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\084\104\101\109\101\046\106\115\111\110'local aV='\065\109\101\116\104\121\115\116'local aW={Amethyst={'\048\067\048\067\049\048',
'\050\055\049\056\051\053','\057\054\051\067\068\067','\070\070\070\053\070\070','\067\065\066\052\068\056','\069\066\065\053\070\070','\049\057\048\070\050\051'},Potato={'\050\051\049\070\049\057','\052\049\051\054\050\055'
,'\055\052\053\056\051\049','\070\067\070\054\069\050','\068\053\067\051\065\051','\069\066\065\053\070\070','\051\048\050\055\049\068'},Bloodmoon={'\049\055\048\067\049\051','\051\048\049\051\049\070',
'\054\066\050\054\051\068','\070\070\069\065\070\048','\068\050\065\048\066\048','\070\070\052\053\054\056','\050\051\048\070\049\065'},Midnight={'\049\048\049\051\049\069','\049\068\050\052\051\054',
'\051\053\052\054\054\053','\069\068\070\051\070\070','\065\052\066\051\067\067','\055\051\057\070\070\070','\049\053\049\066\050\065'},Emerald={'\048\066\049\057\049\054','\049\052\050\069\050\054',
'\050\066\053\057\052\055','\069\054\070\070\070\051','\057\069\067\054\066\051','\053\054\068\068\065\048','\049\048\050\052\049\069'},Arctic={'\049\049\049\066\050\054','\049\067\050\068\051\068','\051\054\053\049\054\065'
,'\069\066\070\056\070\070','\065\057\067\055\068\065','\055\057\068\057\070\070','\049\055\050\051\051\049'}}local function aX(aY)return Color3.
fromRGB(tonumber(aY:sub(1,2),16),tonumber(aY:sub(3,4),16),tonumber(aY:sub(5,6),
16))end local function aY()if type(writefile)=='\102\117\110\099\116\105\111\110'then task.spawn(
function()pcall(writefile,aU,e:JSONEncode({preset=aV,hex=aT.Text}))end)end end
local function aZ(a_)if type(a_)~='\115\116\114\105\110\103'or not a_:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then
return false end o=Color3.fromRGB(tonumber(a_:sub(1,2),16),tonumber(a_:sub(3,4),
16),tonumber(a_:sub(5,6),16))m.accent=o F.BackgroundColor3=o z.BackgroundColor3=
o M(J)for a0,a1 in ipairs(P)do a1()end for a0,a1 in pairs(H)do a1.
ScrollBarImageColor3=o end aT.Text=a_ return true end local function a_(a0)local
a1=aW[a0]if not a1 then return end aV=a0 for a2,a3 in ipairs({'\100\097\114\107','\116\105\108\101',
'\101\100\103\101','\116\101\120\116','\109\117\116\101\100','\097\099\099\101\110\116','\115\105\100\101\098\097\114'})do m[a3]=aX(a1[a2])end o=m.accent for
a2,a3 in pairs(n)do if a2.Parent then for a4,a5 in pairs(a3)do a2[a4]=m[a5]end
end end local a2=w:FindFirstChildOfClass('\085\073\071\114\097\100\105\101\110\116')if a2 then a2.Color=
ColorSequence.new(m.tile,m.dark)end aZ(a1[6])end O.label(aR,'\084\101\120\116\076\097\098\101\108',p(
'\084\069\077\065\083\032\080\082\079\078\084\079\083','\084\072\069\077\069\032\080\082\069\083\069\084\083'),32,880)for a0,a1 in ipairs({'\065\109\101\116\104\121\115\116','\080\111\116\097\116\111'
,'\066\108\111\111\100\109\111\111\110','\077\105\100\110\105\103\104\116','\069\109\101\114\097\108\100','\065\114\099\116\105\099'})do local a2=O.button(aR,a1,880+a0)r(
a2.Activated,function()a_(a1)aY()end)end aQ=function()if type(readfile)==
'\102\117\110\099\116\105\111\110'then local a0=readfile(aU)if type(a0)=='\115\116\114\105\110\103'and#a0<=2048 then local
a1=e:JSONDecode(a0)if l and aT.Parent and type(a1)=='\116\097\098\108\101'then if aW[a1.preset]
then a_(a1.preset)end aZ(a1.hex)end end end end r(aT.FocusLost,function()local
a0=aT.Text:gsub('\035',''):upper()if aZ(a0)then aY()end end)end,5)if not l then
return end aE(0.96,'\065\106\117\115\116\097\110\100\111\032\111\032\112\097\105\110\101\108\032\u{e0}\032\115\117\097\032\116\101\108\097\u{2026}',
'\070\105\116\116\105\110\103\032\116\104\101\032\112\097\110\101\108\032\116\111\032\121\111\117\114\032\115\099\114\101\101\110\u{2026}')local aT,aU=pcall(X)if not aT then T=
table.clone(S)pcall(X)end local aV if not aR or not aT then aV=p(
'\065\106\117\115\116\101\115\032\118\105\115\117\097\105\115\032\105\110\099\111\109\112\108\101\116\111\115\058\032','\083\111\109\101\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\032\102\097\105\108\101\100\058\032')..tostring(aS
or aU)E.Text=aV warn('\091\065\110\111\110\072\117\098\032'..a..'\093\032'..aV)end aE(1,
'\080\097\105\110\101\108\032\112\114\111\110\116\111\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\101\115\116\u{e3}\111\032\112\097\117\115\097\100\097\115\046',
'\080\097\110\101\108\032\114\101\097\100\121\046\032\070\101\097\116\117\114\101\115\032\097\114\101\032\112\097\117\115\101\100\046')ar.Text=p('\083\101\117\032\112\097\105\110\101\108\032\101\115\116\u{e1}\032\112\114\111\110\116\111',
'\089\111\117\114\032\112\097\110\101\108\032\105\115\032\114\101\097\100\121')am=true if ao()then ap:Destroy()else task.spawn(function()
while l and ap.Parent and not ao()do task.wait(0.05)end if l and ap.Parent then
ap:Destroy()end end)end pcall(b.ready)if aQ then task.defer(function()aP(aQ,2)
end)end
