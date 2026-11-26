-- Luau
-- AnonHub protected distribution 0.40.0
-- local BOOT_VERSION="0.40.0"
local a='\048\046\052\048\046\048'local b=...assert(type(b)=='\116\097\098\108\101'and b.access,
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
local G=q('\070\114\097\109\101',{Size=UDim2.new(1,-32,0,44),Position=UDim2.fromOffset(16,72),
BackgroundColor3=m.tile},w)t(G)local H,I={},{}local J='\070\097\114\109'local K=game.PlaceId
==101906032112547 and{'\070\097\114\109','\065\106\117\115\116\101\115'}or{'\070\097\114\109','\077\101\108\104\111\114\105\097\115','\073\103\114\101\106\097','\065\106\117\115\116\101\115'}
local L={Farm='\069\120\112\101\100\105\116\105\111\110',Melhorias='\085\112\103\114\097\100\101\115',Igreja='\067\104\117\114\099\104',Ajustes=
'\083\101\116\116\105\110\103\115'}local function M(N)J=N for O,P in pairs(H)do P.Visible=O==N s(I[O],{
BackgroundColor3=O==N and o or m.tile,TextColor3=O==N and m.dark or m.muted})if
O==N then local Q=P.Position P.Position=Q+UDim2.fromOffset(6,0)s(P,{Position=Q})
end end end local function N(O)if H[O]then return H[O]end local P=q(
'\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Name=O,Size=UDim2.new(1,-32,1,-166),Position=UDim2.fromOffset(
16,126),BackgroundTransparency=1,ScrollBarThickness=3,ScrollBarImageColor3=o,
CanvasSize=UDim2.new(),AutomaticCanvasSize=Enum.AutomaticSize.Y,Visible=O==
'\070\097\114\109'},w)q('\085\073\076\105\115\116\076\097\121\111\117\116',{Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.
LayoutOrder},P)q('\085\073\080\097\100\100\105\110\103',{PaddingTop=UDim.new(0,2),PaddingBottom=UDim.new(0,
12),PaddingLeft=UDim.new(0,2)},P)local Q={Farm=game.PlaceId==101906032112547 and
p('\076\111\098\098\121\032\u{b7}\032\069\113\117\105\112\097\109\101\110\116\111\115','\076\111\098\098\121\032\u{b7}\032\069\113\117\105\112\109\101\110\116')or p(
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
BackgroundTransparency=1 for _,aa in ipairs(K)do local ab=I[aa]if ab then ab.
Size=Z.compact and UDim2.new(1/#K,-6,0,42)or UDim2.new(1,0,0,44)ab.Position=Z.
compact and UDim2.new((_-1)/#K,0,0,0)or UDim2.fromOffset(0,(_-1)*52)ab.Text=Z.
compact and(b.language=='\112\116'and aa or L[aa])or string.format('\037\048\050\100\032\u{b7}\032\037\115',_,
b.language=='\112\116'and aa or L[aa])ab.TextXAlignment=Z.compact and Enum.
TextXAlignment.Center or Enum.TextXAlignment.Left end end for aa,ab in pairs(H)
do ab.Position=UDim2.fromOffset(Z.compact and 16 or 190,88)ab.Size=UDim2.new(1,Z
.compact and-32 or-206,1,Z.compact and-184 or-136)end E.Position=UDim2.new(0,Z.
compact and 16 or 190,1,-34)E.Size=UDim2.new(1,Z.compact and-40 or-214,0,26)F.
Size=UDim2.fromOffset(T.launcher,T.launcher)end r(v:GetPropertyChangedSignal(
'\065\098\115\111\108\117\116\101\083\105\122\101'),X)local aa={}local function ab(Y)O.label(Y,'\084\101\120\116\076\097\098\101\108',p(
'\084\069\076\065\032\069\032\084\079\081\085\069','\068\073\083\080\076\065\089\032\038\032\084\079\085\067\072'),32,-10)O.label(Y,'\084\101\120\116\076\097\098\101\108',p(
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
={}function aF.role(aG,aH)if aH~=9796898051 then return nil end return({[
101906032112547]='\108\111\098\098\121',[74507545904779]='\114\117\110'})[aG]end function aF.names(aG)
local aH={}for aI in tostring(aG):gmatch('\091\094\044\093\043')do aI=aI:match('\094\037\115\042\040\046\045\041\037\115\042\036')
if aI~=''then aH[#aH+1]=aI end end return aH end function aF.offer(aG,aH,aI,aJ)
if type(aH)~='\110\117\109\098\101\114'or aH~=aH then return nil end for aK,aL in ipairs(aJ)do for
aM,aN in ipairs(type(aG)=='\116\097\098\108\101'and aG or{})do if aN.UpgradeName==aL and aN.
Type=='\067\111\105\110\115'and type(aN.Cost)=='\110\117\109\098\101\114'and aN.Cost>=0 and aN.Cost<math.huge and
aH-aN.Cost>=aI then return aN end end end end function aF.selection(aG,aH,aI)
local aJ={}local aK=math.clamp(math.floor(tonumber(aH)or 0),0,100)for aL,aM in
ipairs(aI)do for aN,aO in ipairs(type(aG)=='\116\097\098\108\101'and aG or{})do if aO.Name==aM
and aO.Id~=nil and not aJ[aO.Id]then local aP=math.min(aK,math.max(0,math.floor(
tonumber(aO.Count)or 0)))if aP>0 then aJ[aO.Id]=aP aK-=aP end end end end return
aJ end local aG=function(aG)local aH=assert(aF.role(game.PlaceId,game.GameId),
'\085\110\115\117\112\112\111\114\116\101\100\032\069\097\114\116\104\032\067\111\114\101\032\112\108\097\099\101')local aI,aJ=aG.ui,aG.T local aK=game:GetService(
'\080\108\097\121\101\114\115').LocalPlayer local aL=game:GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local aM=
game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local aN=true local aO={}local aP={swing=false,
upgrades=false,craft=false}local aQ={upgrades=0,craft=0}local aR={}local aS={}
local aT={reserve=1000,limit=10,priority=
'\068\114\105\108\108\080\111\119\101\114\044\084\101\097\109\072\101\097\108\116\104\044\083\097\099\107\083\116\111\114\097\103\101\044\068\114\105\118\101\083\112\101\101\100',gear='\080\105\099\107\097\120\101\095\071\111\108\100',craftLimit=3}
local aU='\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095'..aK.UserId..'\095'..aH..'\046\106\115\111\110'if type(readfile)==
'\102\117\110\099\116\105\111\110'then pcall(function()local aV=aM:JSONDecode(readfile(aU))for aW,aX in
pairs(aT)do if type(aV[aW])==type(aX)then aT[aW]=aV[aW]end end end)end aT.
reserve=math.clamp(tonumber(aT.reserve)or 1000,0,1e9)aT.limit=math.clamp(
tonumber(aT.limit)or 10,1,100)aT.craftLimit=math.clamp(tonumber(aT.craftLimit)or
3,1,100)local function aV()if type(writefile)=='\102\117\110\099\116\105\111\110'then pcall(writefile,aU
,aM:JSONEncode(aT))end end local function aW(aX,aY)aO[#aO+1]=aX:Connect(aY)end
local aX=aG.section('\070\097\114\109')local aY=aI.label(aX,'\084\101\120\116\076\097\098\101\108',aJ(
'\067\097\114\114\101\103\097\110\100\111\032\101\115\116\097\100\111\u{2026}','\076\111\097\100\105\110\103\032\115\116\097\116\101\u{2026}'),76,1)local aZ=aI.label(aX,
'\084\101\120\116\076\097\098\101\108','',72,2)local function a_(a0,a1)if aN then aZ.Text=aJ(a0,a1 or a0)
end end local function a0()for a1 in pairs(aP)do aP[a1]=false if aS[a1]then aS[
a1](false)end end end aG.attach(function()aN=false a0()for a1,a2 in ipairs(aO)do
a2:Disconnect()end end)aG.quick(a0)local function a1(a2,a3,a4,a5,a6)local a7=aI.
button(a2,aJ(a3,a4),a5)aW(a7.Activated,function()if aR[a7]then return end aR[a7]
=true task.spawn(function()local a8,a9=pcall(a6)aR[a7]=nil if not a8 then a_(aJ(
'\070\097\108\104\097\058\032','\070\097\105\108\101\100\058\032')..tostring(a9))end end)end)return a7 end local function a2(
a3,a4,a5,a6,a7,a8)aI.label(a3,'\084\101\120\116\076\097\098\101\108',aJ(a5,a6),32,a7)local a9=aI.label(a3,
'\084\101\120\116\066\111\120',tostring(aT[a4]),42,a7+1)aW(a9.FocusLost,function()if a8 then local ba
=tonumber(a9.Text)if ba and ba==ba and ba<math.huge then aT[a4]=math.clamp(math.
floor(ba),a8[1],a8[2])end else aT[a4]=a9.Text:sub(1,600)end a9.Text=tostring(aT[
a4])aV()end)end local function a3(a4,a5,a6,a7,a8)local a9,ba=aI.checkbox(a4,aJ(
a6,a7),a8)aS[a5]=ba aW(a9.Activated,function()aP[a5]=not aP[a5]ba(aP[a5])end)end
local a4 local function a5(a6,a7)if not a4 then local a8=aL:FindFirstChild(
'\080\097\099\107\097\103\101\115')local a9=a8 and a8:FindFirstChild('\075\110\105\116')if not a9 then return nil
end a4=require(a9)end local a8,a9=pcall(a6=='\099\111\110\116\114\111\108\108\101\114'and a4.GetController or
a4.GetService,a7)return a8 and a9 or nil end local function a6(a7)return a5(
'\099\111\110\116\114\111\108\108\101\114',a7)end local function a7(a8)return assert(a5('\115\101\114\118\105\099\101',a8),a8..
'\032\117\110\097\118\097\105\108\097\098\108\101')end local function a8(a9)if type(a9)=='\116\097\098\108\101'and type(a9.await)==
'\102\117\110\099\116\105\111\110'then local ba=table.pack(a9:timeout(8):await())if not ba[1]then error(
tostring(ba[2]))end return table.unpack(ba,2,ba.n)end return a9 end local
function a9()local ba=aK.Character local bb=ba and ba:FindFirstChildOfClass(
'\072\117\109\097\110\111\105\100')local bc=ba and ba:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if bc and bb and
bb.Health>0 then return ba,bc,bb end end local function ba()if aH=='\108\111\098\098\121'then
local bb=workspace:FindFirstChild('\076\111\098\098\121')local bc=bb and bb:FindFirstChild(
'\079\117\116\101\114\083\116\114\117\099\116\117\114\101\115')return bc and bc:FindFirstChild('\067\104\117\114\099\104')end return workspace:
FindFirstChild('\067\104\117\114\099\104')end local function bb()local bc=ba()local bd=bc and bc:
FindFirstChild('\083\116\114\117\099\116\117\114\101')local be=bd and bd:FindFirstChild('\082\105\110\103')local bf=be
and be:FindFirstChild('\083\097\118\101\071\101\097\114')return bf and bf:IsA('\066\097\115\101\080\097\114\116')and bf or nil
end local bc,bd a1(aX,'\073\114\032\097\116\u{e9}\032\097\032\105\103\114\101\106\097\032\099\097\114\114\101\103\097\100\097','\071\111\032\116\111\032\108\111\097\100\101\100\032\099\104\117\114\099\104',10,
function()local be,bf=a9()local bg=bb()assert(be and bg,aJ(
'\073\103\114\101\106\097\047\112\101\114\115\111\110\097\103\101\109\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\046','\067\104\117\114\099\104\047\099\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101\046'))bc=bf.
CFrame bd=be be:PivotTo(bg.CFrame*CFrame.new(0,3,5))a_(
'\068\101\115\108\111\099\097\109\101\110\116\111\032\115\111\108\105\099\105\116\097\100\111\046\032\067\111\110\102\105\114\097\032\115\117\097\032\112\111\115\105\u{e7}\u{e3}\111\046',
'\077\111\118\101\109\101\110\116\032\114\101\113\117\101\115\116\101\100\046\032\067\104\101\099\107\032\121\111\117\114\032\112\111\115\105\116\105\111\110\046')end)a1(aX,
'\086\111\108\116\097\114\032\u{e0}\032\112\111\115\105\u{e7}\u{e3}\111\032\097\110\116\101\114\105\111\114','\082\101\116\117\114\110\032\116\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110',11,
function()local be=a9()assert(be and be==bd and bc,
'\078\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110\032\102\111\114\032\116\104\105\115\032\099\104\097\114\097\099\116\101\114')be:PivotTo(bc)end)a1(aX,
'\080\097\114\097\114\032\116\111\100\097\115\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115','\083\116\111\112\032\097\108\108\032\097\117\116\111\109\097\116\105\111\110',12,function()a0()a_(
'\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\114\097\100\097\115\046','\065\117\116\111\109\097\116\105\111\110\032\115\116\111\112\112\101\100\046')end)if aH=='\108\111\098\098\121'then aI.
label(aX,'\084\101\120\116\076\097\098\101\108',aJ(
'\076\111\098\098\121\058\032\101\113\117\105\112\097\109\101\110\116\111\115\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\100\101\032\101\120\112\101\100\105\u{e7}\u{e3}\111\032\097\112\097\114\101\099\101\109\032\110\097\032\112\097\114\116\105\100\097\046'
,"\076\111\098\098\121\058\032\101\113\117\105\112\109\101\110\116\046\032\069\120\112\101\100\105\116\105\111\110\032\102\101\097\116\117\114\101\115\032\097\112\112\101\097\114\032\105\110\032\116\104\101\032\103\097\109\101\032\112\108\097\099\101\046"),54,15)a2(
aX,'\103\101\097\114','\078\111\109\101\032\101\120\097\116\111\032\100\111\032\101\113\117\105\112\097\109\101\110\116\111\032\100\111\032\108\111\098\098\121','\069\120\097\099\116\032\108\111\098\098\121\032\101\113\117\105\112\109\101\110\116\032\110\097\109\101',20)
a1(aX,'\069\113\117\105\112\097\114\032\111\032\105\116\101\109\032\105\110\102\111\114\109\097\100\111','\069\113\117\105\112\032\101\110\116\101\114\101\100\032\105\116\101\109',23,function()local be=aF.
names(aT.gear)[1]assert(be,'\069\110\116\101\114\032\097\110\032\105\116\101\109\032\110\097\109\101')local bf=a8(a7(
'\076\111\098\098\121\066\097\099\107\112\097\099\107\083\101\114\118\105\099\101'):SetEquipped(be))a_(bf and aJ('\069\113\117\105\112\097\109\101\110\116\111\032\097\099\101\105\116\111\046',
'\069\113\117\105\112\109\101\110\116\032\097\099\099\101\112\116\101\100\046')or aJ('\079\032\106\111\103\111\032\110\u{e3}\111\032\097\099\101\105\116\111\117\032\111\032\105\116\101\109\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\097\099\099\101\112\116\032\116\104\105\115\032\105\116\101\109\046'))end)else a3(aX,'\115\119\105\110\103',
'\065\117\116\111\032\112\105\099\097\114\101\116\097\032\101\113\117\105\112\097\100\097\032\040\097\108\099\097\110\099\101\032\110\111\114\109\097\108\041','\065\117\116\111\032\101\113\117\105\112\112\101\100\032\112\105\099\107\097\120\101\032\040\110\111\114\109\097\108\032\114\097\110\103\101\041'
,20)aI.label(aX,'\084\101\120\116\076\097\098\101\108',aJ(
"\069\113\117\105\112\101\032\097\032\112\105\099\097\114\101\116\097\032\101\032\097\112\114\111\120\105\109\101\045\115\101\032\100\111\032\097\108\118\111\046\032\082\101\115\112\101\105\116\097\032\111\032\099\111\111\108\100\111\119\110\032\110\097\116\105\118\111\046",
"\069\113\117\105\112\032\121\111\117\114\032\112\105\099\107\097\120\101\032\097\110\100\032\097\112\112\114\111\097\099\104\032\116\104\101\032\116\097\114\103\101\116\046\032\085\115\101\115\032\116\104\101\032\110\097\116\105\118\101\032\099\111\111\108\100\111\119\110\046"),48,21
)local be=aG.section('\077\101\108\104\111\114\105\097\115')a2(be,'\112\114\105\111\114\105\116\121',
'\080\114\105\111\114\105\100\097\100\101\032\100\101\032\109\101\108\104\111\114\105\097\115\044\032\115\101\112\097\114\097\100\097\115\032\112\111\114\032\118\u{ed}\114\103\117\108\097',
'\085\112\103\114\097\100\101\032\112\114\105\111\114\105\116\105\101\115\044\032\099\111\109\109\097\032\115\101\112\097\114\097\116\101\100',1)a2(be,'\114\101\115\101\114\118\101',
'\082\101\115\101\114\118\097\032\109\u{ed}\110\105\109\097\032\100\101\032\109\111\101\100\097\115','\077\105\110\105\109\117\109\032\099\111\105\110\032\114\101\115\101\114\118\101',4,{0,1e9})a2(be,'\108\105\109\105\116',
'\076\105\109\105\116\101\032\100\101\032\116\101\110\116\097\116\105\118\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111','\065\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',7,{1,100})a3(
be,'\117\112\103\114\097\100\101\115','\065\117\116\111\032\109\101\108\104\111\114\105\097\115\032\099\111\109\032\109\111\101\100\097\115','\065\117\116\111\032\099\111\105\110\032\117\112\103\114\097\100\101\115',10)a2(be,
'\099\114\097\102\116\076\105\109\105\116','\076\105\109\105\116\101\032\100\101\032\102\097\098\114\105\099\097\u{e7}\u{e3}\111\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\067\114\097\102\116\032\097\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',12,{1,100})a3(be,'\099\114\097\102\116',
'\065\117\116\111\032\102\097\098\114\105\099\097\114\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\032\110\111\032\106\111\103\111','\065\117\116\111\032\099\114\097\102\116\032\105\116\101\109\032\115\101\108\101\099\116\101\100\032\105\110\032\103\097\109\101',15)
aI.label(be,'\084\101\120\116\076\097\098\101\108',aJ(
'\067\114\097\102\116\105\110\103\058\032\097\098\114\097\032\097\032\098\097\110\099\097\100\097\032\101\032\101\115\099\111\108\104\097\032\111\032\105\116\101\109\032\110\111\032\106\111\103\111\046\032\082\111\098\117\120\032\102\105\099\097\032\101\120\099\108\117\u{ed}\100\111\046\032\065\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\099\111\109\101\u{e7}\097\109\032\100\101\115\108\105\103\097\100\097\115\046'
,
"\067\114\097\102\116\105\110\103\058\032\111\112\101\110\032\116\104\101\032\098\101\110\099\104\032\097\110\100\032\115\101\108\101\099\116\032\097\110\032\105\116\101\109\032\105\110\032\103\097\109\101\046\032\082\111\098\117\120\032\105\115\032\101\120\099\108\117\100\101\100\046\032\065\117\116\111\109\097\116\105\111\110\032\115\116\097\114\116\115\032\100\105\115\097\098\108\101\100\046"
),72,16)local bf=aG.section('\073\103\114\101\106\097')a2(bf,'\103\101\097\114',
'\080\114\105\111\114\105\100\097\100\101\032\100\101\032\105\116\101\110\115\032\097\032\115\097\108\118\097\114\032\040\110\111\109\101\115\032\101\120\097\116\111\115\041','\071\101\097\114\032\115\097\118\101\032\112\114\105\111\114\105\116\121\032\040\101\120\097\099\116\032\110\097\109\101\115\041'
,1)local bg=aI.label(bf,'\084\101\120\116\076\097\098\101\108',aJ(
"\083\101\108\101\099\105\111\110\101\032\111\115\032\105\116\101\110\115\032\101\032\114\101\118\105\115\101\032\097\110\116\101\115\032\100\101\032\115\097\108\118\097\114\046\032\083\097\108\118\097\114\032\114\101\116\111\114\110\097\032\097\111\032\108\111\098\098\121\046",
"\083\101\108\101\099\116\032\097\110\100\032\114\101\118\105\101\119\032\103\101\097\114\032\098\101\102\111\114\101\032\115\097\118\105\110\103\046\032\083\097\118\105\110\103\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\108\111\098\098\121\046"),90,5)
local bh=nil a1(bf,'\065\098\114\105\114\032\097\108\116\097\114\032\101\032\099\097\114\114\101\103\097\114\032\105\116\101\110\115','\079\112\101\110\032\097\108\116\097\114\032\097\110\100\032\108\111\097\100\032\103\101\097\114',7,
function()local bi,bj=a9()local bk=bb()assert(bj and bk and(bj.Position-bk.
Position).Magnitude<=20,aJ('\065\112\114\111\120\105\109\101\045\115\101\032\100\111\032\097\108\116\097\114\032\112\114\105\109\101\105\114\111\046',
'\065\112\112\114\111\097\099\104\032\116\104\101\032\097\108\116\097\114\032\102\105\114\115\116\046'))local bl=assert(a6('\085\073\067\111\110\116\114\111\108\108\101\114'),'\085\073\032\117\110\097\118\097\105\108\097\098\108\101'
)bl:ToggleFrame('\083\097\118\101\071\101\097\114',true)bh=nil bg.Text=aJ(
'\065\103\117\097\114\100\101\032\097\032\108\105\115\116\097\032\110\097\116\105\118\097\059\032\100\101\112\111\105\115\032\112\114\101\112\097\114\101\032\097\032\115\101\108\101\u{e7}\u{e3}\111\046',
'\087\097\105\116\032\102\111\114\032\116\104\101\032\110\097\116\105\118\101\032\108\105\115\116\044\032\116\104\101\110\032\112\114\101\112\097\114\101\032\116\104\101\032\115\101\108\101\099\116\105\111\110\046')end)a1(bf,
'\080\114\101\112\097\114\097\114\032\115\101\108\101\u{e7}\u{e3}\111\032\112\111\114\032\112\114\105\111\114\105\100\097\100\101','\080\114\101\112\097\114\101\032\115\101\108\101\099\116\105\111\110\032\098\121\032\112\114\105\111\114\105\116\121',8,
function()local bi=assert(a6('\083\097\118\101\071\101\097\114\067\111\110\116\114\111\108\108\101\114'),'\083\097\118\101\032\085\073\032\117\110\097\118\097\105\108\097\098\108\101')assert(
bi.Loaded and bi.Frame.Visible and not bi.Pending and not bi.DeathMode,
'\079\112\101\110\032\116\104\101\032\108\105\118\101\032\097\108\116\097\114\032\085\073\032\102\105\114\115\116')local bj=a8(a7('\080\108\097\121\101\114\083\101\114\118\105\099\101'):
GetSaveGearChoices())assert(aN and type(bj)=='\116\097\098\108\101'and bi.Loaded and bi.Frame.
Visible and not bi.Pending and not bi.DeathMode,
'\067\104\111\105\099\101\115\032\117\110\097\118\097\105\108\097\098\108\101\032\111\114\032\097\108\116\097\114\032\099\108\111\115\101\100')local bk=aF.selection(bj.Items,bj.Limit,aF
.names(aT.gear))local bl=0 for bm,bn in pairs(bk)do bl+=bn end assert(bl>0,aJ(
'\078\101\110\104\117\109\032\105\116\101\109\032\100\105\115\112\111\110\u{ed}\118\101\108\032\099\111\105\110\099\105\100\101\032\099\111\109\032\097\032\108\105\115\116\097\046',
'\078\111\032\097\118\097\105\108\097\098\108\101\032\103\101\097\114\032\109\097\116\099\104\101\115\032\121\111\117\114\032\108\105\115\116\046'))bi.Selection=bk bi:UpdateTotal()bh=bi bg
.Text=string.format(aJ(
'\037\100\032\105\116\101\109\040\110\115\041\032\115\101\108\101\099\105\111\110\097\100\111\115\046\032\082\101\118\105\115\101\032\110\097\032\106\097\110\101\108\097\032\100\111\032\106\111\103\111\046\032\079\032\112\114\u{f3}\120\105\109\111\032\098\111\116\u{e3}\111\032\115\097\108\118\097\032\101\032\115\097\105\046'
,
"\037\100\032\105\116\101\109\040\115\041\032\115\101\108\101\099\116\101\100\046\032\082\101\118\105\101\119\032\105\110\032\116\104\101\032\103\097\109\101\032\119\105\110\100\111\119\046\032\084\104\101\032\110\101\120\116\032\098\117\116\116\111\110\032\115\097\118\101\115\032\097\110\100\032\101\120\105\116\115\046"
),bl)end)a1(bf,'\083\065\076\086\065\082\032\115\101\108\101\u{e7}\u{e3}\111\032\114\101\118\105\115\097\100\097\032\101\032\115\097\105\114',
'\083\065\086\069\032\114\101\118\105\101\119\101\100\032\115\101\108\101\099\116\105\111\110\032\097\110\100\032\101\120\105\116',9,function()local bi=bh local bj,bk=a9()local
bl=bb()assert(aN and bk and bl and(bk.Position-bl.Position).Magnitude<=20 and bi
and bi.Loaded and bi.Frame.Visible and not bi.Pending and not bi.DeathMode,
'\082\101\118\105\101\119\032\103\101\097\114\032\097\116\032\116\104\101\032\097\108\116\097\114\032\119\104\105\108\101\032\097\108\105\118\101\032\102\105\114\115\116')a0()bh=nil bi:Teleport()a_(
'\083\111\108\105\099\105\116\097\u{e7}\u{e3}\111\032\101\110\118\105\097\100\097\046\032\079\032\106\111\103\111\032\099\111\110\102\105\114\109\097\032\101\032\102\097\122\032\111\032\116\101\108\101\112\111\114\116\101\046',
'\082\101\113\117\101\115\116\032\115\101\110\116\046\032\084\104\101\032\103\097\109\101\032\099\111\110\102\105\114\109\115\032\097\110\100\032\116\101\108\101\112\111\114\116\115\032\121\111\117\046')end)end local be,bf=0,0
task.spawn(function()while aN do local bg,bh=pcall(function()local bg,bh,bi=a9()
if os.clock()>=bf then bf=os.clock()+2 aY.Text=string.format(
'\037\115\032\u{b7}\032\080\108\097\099\101\032\037\115\n\037\115\058\032\037\115\032\u{b7}\032\037\115\058\032\037\115\n\037\115\058\032\037\100\047\037\100\032\u{b7}\032\067\114\097\102\116\058\032\037\100\047\037\100',aH==
'\108\111\098\098\121'and'\076\111\098\098\121'or aJ('\069\120\112\101\100\105\u{e7}\u{e3}\111','\069\120\112\101\100\105\116\105\111\110'),game.PlaceId,aJ(
'\086\105\100\097','\072\101\097\108\116\104'),bi and math.floor(bi.Health)or 0,aJ('\073\103\114\101\106\097','\067\104\117\114\099\104'),bb()and
aJ('\099\097\114\114\101\103\097\100\097','\108\111\097\100\101\100')or aJ('\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097','\110\111\116\032\108\111\097\100\101\100'),aJ(
'\084\101\110\116\097\116\105\118\097\115\032\117\112\103\114\097\100\101','\085\112\103\114\097\100\101\032\097\116\116\101\109\112\116\115'),aQ.upgrades,aT.limit,aQ.craft,aT.
craftLimit)end if aH~='\114\117\110'or not bh or workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')then
return end if aP.swing and not game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101'):
GetFocusedTextBox()then local bj=a6('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local bk=bj and bj.
ActiveTool local bl=a6('\085\073\067\111\110\116\114\111\108\108\101\114')if bk and bk.Tool and bk.Tool.Name:find(
'\080\105\099\107\097\120\101',1,true)and type(bk.Swing)=='\102\117\110\099\116\105\111\110'and not(bl and bl.ActiveFrame and
bl.ActiveFrame.Visible)then bk:Swing()end end if os.clock()<be then return end
be=os.clock()+3 if aP.upgrades and aQ.upgrades<aT.limit then local bj=a6(
'\068\114\105\108\108\085\112\103\114\097\100\101\067\111\110\116\114\111\108\108\101\114')if bj and not bj.PurchasePending and not bj.CardsLocked
and not bj.ActiveClassReward and bj.OptionsVersion~=nil then local bk=bj.
OptionsVersion local bl=bj.RollToken local bm=a8(a7('\067\117\114\114\101\110\099\121\083\101\114\118\105\099\101'):
GetCurrency())if not aN or not aP.upgrades or bk~=bj.OptionsVersion or bl~=bj.
RollToken or bj.PurchasePending or bj.CardsLocked or bj.ActiveClassReward or not
a9()then return end local bn=aF.offer(bj.Options,bm,aT.reserve,aF.names(aT.
priority))if bn then aQ.upgrades+=1 bj:SetPurchasePending(true)local bo,bp=
pcall(function()return a8(a7('\068\114\105\108\108\083\101\114\118\105\099\101'):UpgradeDrill(bn.UpgradeName,bk))end
)if bk==bj.OptionsVersion and bl==bj.RollToken then bj:SetPurchasePending(false)
end if not bo then error(bp)end if not aN then return end if bp=='\112\114\111\109\112\116\101\100'then
aP.upgrades=false aS.upgrades(false)a_(
'\079\032\106\111\103\111\032\114\101\116\111\114\110\111\117\032\117\109\032\102\108\117\120\111\032\100\101\032\099\111\109\112\114\097\059\032\097\117\116\111\109\097\u{e7}\u{e3}\111\032\100\101\115\097\116\105\118\097\100\097\046',
'\084\104\101\032\103\097\109\101\032\114\101\116\117\114\110\101\100\032\097\032\112\117\114\099\104\097\115\101\032\102\108\111\119\059\032\097\117\116\111\109\097\116\105\111\110\032\100\105\115\097\098\108\101\100\046')else a_(aJ(
'\077\101\108\104\111\114\105\097\032\115\111\108\105\099\105\116\097\100\097\058\032','\085\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\058\032')..bn.UpgradeName)end if type(bj.
FetchUpgradeOptions)=='\102\117\110\099\116\105\111\110'then bj:FetchUpgradeOptions()end end end end if
aP.craft and aQ.craft<aT.craftLimit then local bj=a6('\067\114\097\102\116\105\110\103\067\111\110\116\114\111\108\108\101\114')if bj
and bj.CurrentItem and not bj.PendingCraft and bj.Frame and bj.Frame.Visible and
not bj:CanPurchaseWithRobux(bj.CurrentItem)and bj:CanCraft(bj.CurrentItem)then
aQ.craft+=1 bj:CraftCurrentItem()a_(
'\070\097\098\114\105\099\097\u{e7}\u{e3}\111\032\115\111\108\105\099\105\116\097\100\097\032\112\097\114\097\032\111\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\046',
'\067\114\097\102\116\032\114\101\113\117\101\115\116\101\100\032\102\111\114\032\116\104\101\032\115\101\108\101\099\116\101\100\032\105\116\101\109\046')end end end)if not bg then a_(aJ(
'\065\103\117\097\114\100\097\110\100\111\032\047\032\101\114\114\111\058\032','\087\097\105\116\105\110\103\032\047\032\101\114\114\111\114\058\032')..tostring(bh))be=os.clock()+8 end
task.wait(0.2)end end)end local aH,aI,aJ=false,nil,false local aK=task.spawn(
function()aH,aI=pcall(aG,{ui=O,page=N('\070\097\114\109'),T=function(aK,aL)return b.language
=='\112\116'and aK or aL end,progress=aE,attach=function(aK)j=aK end,section=N,quick=
function(aK)k=aK end})aJ=true end)local aL=os.clock()+45 while l and not aJ and
os.clock()<aL do task.wait(0.05)end if not aJ then pcall(task.cancel,aK)aH=false
aI=p('\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\052\053\032\115\101\103\117\110\100\111\115\032\101\120\099\101\100\105\100\111\046\032\u{da}\108\116\105\109\097\032\101\116\097\112\097\058\032',
'\052\053\045\115\101\099\111\110\100\032\116\105\109\101\111\117\116\046\032\076\097\115\116\032\115\116\097\103\101\058\032')..as.Text end if not l then return end if not
aH then if j then pcall(j)j=nil end ar.Text=p(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\099\097\114\114\101\103\097\114\032\097\115\032\102\117\110\u{e7}\u{f5}\101\115',
'\067\111\117\108\100\032\110\111\116\032\108\111\097\100\032\116\104\101\032\102\101\097\116\117\114\101\115')as.Text=p(
'\070\101\099\104\101\032\111\032\112\097\105\110\101\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046\032\068\101\116\097\108\104\101\115\058\032',
'\067\108\111\115\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\116\114\121\032\097\103\097\105\110\046\032\068\101\116\097\105\108\115\058\032')..tostring(aI)aw.Text=p(
'\067\097\114\114\101\103\097\109\101\110\116\111\032\105\110\116\101\114\114\111\109\112\105\100\111','\076\111\097\100\105\110\103\032\105\110\116\101\114\114\117\112\116\101\100')b.ready()return end local
function aM(aN,aO)local aP,aQ,aR=false,false,nil local aS=task.spawn(function()
aQ,aR=pcall(aN)aP=true end)local aT=os.clock()+aO while l and not aP and os.
clock()<aT do task.wait(0.05)end if not aP then pcall(task.cancel,aS)return
false,p('\084\101\109\112\111\032\108\105\109\105\116\101\032\101\120\099\101\100\105\100\111','\084\105\109\101\032\108\105\109\105\116\032\101\120\099\101\101\100\101\100')end return aQ,aR end aE(
0.92,'\077\111\110\116\097\110\100\111\032\111\115\032\097\106\117\115\116\101\115\032\100\101\032\116\101\108\097\u{2026}','\066\117\105\108\100\105\110\103\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\u{2026}')
local aN local aO,aP=aM(function()local aO=N('\065\106\117\115\116\101\115')ab(aO)local aP=O.button(
aO,p('\u{1f1e7}\u{1f1f7}\032\032\073\100\105\111\109\097\058\032\080\111\114\116\117\103\117\u{ea}\115\032\032\u{b7}\032\032\065\108\116\101\114\097\114',
'\u{1f1fa}\u{1f1f8}\032\032\076\097\110\103\117\097\103\101\058\032\069\110\103\108\105\115\104\032\032\u{b7}\032\032\067\104\097\110\103\101'),870)r(aP.Activated,
function()if type(b.chooseLanguage)=='\102\117\110\099\116\105\111\110'then b.chooseLanguage()end end)O.
label(aO,'\084\101\120\116\076\097\098\101\108',p(
'\084\114\111\099\097\114\032\111\032\105\100\105\111\109\097\032\114\101\097\098\114\101\032\111\032\112\097\105\110\101\108\032\099\111\109\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\117\115\097\100\097\115\046',
'\067\104\097\110\103\105\110\103\032\108\097\110\103\117\097\103\101\032\114\101\111\112\101\110\115\032\116\104\101\032\112\097\110\101\108\032\119\105\116\104\032\097\117\116\111\109\097\116\105\111\110\032\112\097\117\115\101\100\046'),44,871)O.label(aO
,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\084\111\113\117\101\032\065\058\032\097\098\114\105\114\047\102\101\099\104\097\114\046\032\083\101\103\117\114\101\032\048\044\054\053\115\032\101\032\115\111\108\116\101\058\032\112\097\114\097\114\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\046\032\065\114\114\097\115\116\101\058\032\109\111\118\101\114\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\105\110\101\108\046'
or
"\084\097\112\032\065\058\032\116\111\103\103\108\101\032\112\097\110\101\108\046\032\072\111\108\100\032\048\046\054\053\115\032\097\110\100\032\114\101\108\101\097\115\101\058\032\115\116\111\112\032\097\117\116\111\109\097\116\105\111\110\046\032\068\114\097\103\058\032\109\111\118\101\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\110\101\108\046"
,68,900)local aQ=O.label(aO,'\084\101\120\116\066\111\120','\069\066\065\053\070\070',40,902)aQ.ClearTextOnFocus=false
O.label(aO,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\067\111\114\032\100\101\032\100\101\115\116\097\113\117\101\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\120\046\058\032\070\070\067\065\052\050\041'or
'\065\099\099\101\110\116\032\099\111\108\111\114\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\046\103\046\032\070\070\067\065\052\050\041',30,901)local aR=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\084\104\101\109\101\046\106\115\111\110'local aS='\065\109\101\116\104\121\115\116'local aT={Amethyst={'\048\067\048\067\049\048',
'\050\055\049\056\051\053','\057\054\051\067\068\067','\070\070\070\053\070\070','\067\065\066\052\068\056','\069\066\065\053\070\070','\049\057\048\070\050\051'},Potato={'\050\051\049\070\049\057','\052\049\051\054\050\055'
,'\055\052\053\056\051\049','\070\067\070\054\069\050','\068\053\067\051\065\051','\069\066\065\053\070\070','\051\048\050\055\049\068'},Bloodmoon={'\049\055\048\067\049\051','\051\048\049\051\049\070',
'\054\066\050\054\051\068','\070\070\069\065\070\048','\068\050\065\048\066\048','\070\070\052\053\054\056','\050\051\048\070\049\065'},Midnight={'\049\048\049\051\049\069','\049\068\050\052\051\054',
'\051\053\052\054\054\053','\069\068\070\051\070\070','\065\052\066\051\067\067','\055\051\057\070\070\070','\049\053\049\066\050\065'},Emerald={'\048\066\049\057\049\054','\049\052\050\069\050\054',
'\050\066\053\057\052\055','\069\054\070\070\070\051','\057\069\067\054\066\051','\053\054\068\068\065\048','\049\048\050\052\049\069'},Arctic={'\049\049\049\066\050\054','\049\067\050\068\051\068','\051\054\053\049\054\065'
,'\069\066\070\056\070\070','\065\057\067\055\068\065','\055\057\068\057\070\070','\049\055\050\051\051\049'}}local function aU(aV)return Color3.
fromRGB(tonumber(aV:sub(1,2),16),tonumber(aV:sub(3,4),16),tonumber(aV:sub(5,6),
16))end local function aV()if type(writefile)=='\102\117\110\099\116\105\111\110'then task.spawn(
function()pcall(writefile,aR,e:JSONEncode({preset=aS,hex=aQ.Text}))end)end end
local function aW(aX)if type(aX)~='\115\116\114\105\110\103'or not aX:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then
return false end o=Color3.fromRGB(tonumber(aX:sub(1,2),16),tonumber(aX:sub(3,4),
16),tonumber(aX:sub(5,6),16))m.accent=o F.BackgroundColor3=o z.BackgroundColor3=
o M(J)for aY,aZ in ipairs(P)do aZ()end for aY,aZ in pairs(H)do aZ.
ScrollBarImageColor3=o end aQ.Text=aX return true end local function aX(aY)local
aZ=aT[aY]if not aZ then return end aS=aY for a_,a0 in ipairs({'\100\097\114\107','\116\105\108\101',
'\101\100\103\101','\116\101\120\116','\109\117\116\101\100','\097\099\099\101\110\116','\115\105\100\101\098\097\114'})do m[a0]=aU(aZ[a_])end o=m.accent for
a_,a0 in pairs(n)do if a_.Parent then for a1,a2 in pairs(a0)do a_[a1]=m[a2]end
end end local a_=w:FindFirstChildOfClass('\085\073\071\114\097\100\105\101\110\116')if a_ then a_.Color=
ColorSequence.new(m.tile,m.dark)end aW(aZ[6])end O.label(aO,'\084\101\120\116\076\097\098\101\108',p(
'\084\069\077\065\083\032\080\082\079\078\084\079\083','\084\072\069\077\069\032\080\082\069\083\069\084\083'),32,880)for aY,aZ in ipairs({'\065\109\101\116\104\121\115\116','\080\111\116\097\116\111'
,'\066\108\111\111\100\109\111\111\110','\077\105\100\110\105\103\104\116','\069\109\101\114\097\108\100','\065\114\099\116\105\099'})do local a_=O.button(aO,aZ,880+aY)r(
a_.Activated,function()aX(aZ)aV()end)end aN=function()if type(readfile)==
'\102\117\110\099\116\105\111\110'then local aY=readfile(aR)if type(aY)=='\115\116\114\105\110\103'and#aY<=2048 then local
aZ=e:JSONDecode(aY)if l and aQ.Parent and type(aZ)=='\116\097\098\108\101'then if aT[aZ.preset]
then aX(aZ.preset)end aW(aZ.hex)end end end end r(aQ.FocusLost,function()local
aY=aQ.Text:gsub('\035',''):upper()if aW(aY)then aV()end end)end,5)if not l then
return end aE(0.96,'\065\106\117\115\116\097\110\100\111\032\111\032\112\097\105\110\101\108\032\u{e0}\032\115\117\097\032\116\101\108\097\u{2026}',
'\070\105\116\116\105\110\103\032\116\104\101\032\112\097\110\101\108\032\116\111\032\121\111\117\114\032\115\099\114\101\101\110\u{2026}')local aQ,aR=pcall(X)if not aQ then T=
table.clone(S)pcall(X)end local aS if not aO or not aQ then aS=p(
'\065\106\117\115\116\101\115\032\118\105\115\117\097\105\115\032\105\110\099\111\109\112\108\101\116\111\115\058\032','\083\111\109\101\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\032\102\097\105\108\101\100\058\032')..tostring(aP
or aR)E.Text=aS warn('\091\065\110\111\110\072\117\098\032'..a..'\093\032'..aS)end aE(1,
'\080\097\105\110\101\108\032\112\114\111\110\116\111\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\101\115\116\u{e3}\111\032\112\097\117\115\097\100\097\115\046',
'\080\097\110\101\108\032\114\101\097\100\121\046\032\070\101\097\116\117\114\101\115\032\097\114\101\032\112\097\117\115\101\100\046')ar.Text=p('\083\101\117\032\112\097\105\110\101\108\032\101\115\116\u{e1}\032\112\114\111\110\116\111',
'\089\111\117\114\032\112\097\110\101\108\032\105\115\032\114\101\097\100\121')am=true if ao()then ap:Destroy()else task.spawn(function()
while l and ap.Parent and not ao()do task.wait(0.05)end if l and ap.Parent then
ap:Destroy()end end)end pcall(b.ready)if aN then task.defer(function()aM(aN,2)
end)end
