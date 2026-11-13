-- Luau
-- AnonHub protected distribution 0.38.10
-- local BOOT_VERSION="0.38.10"
local a='\048\046\051\056\046\049\048'local b=...assert(type(b)=='\116\097\098\108\101'and b.access,
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
'\065\110\111\110\072\117\098\083\117\112\101\114\112\111\119\101\114',ResetOnSpawn=false,DisplayOrder=10032,ZIndexBehavior=Enum.
ZIndexBehavior.Sibling},g:WaitForChild('\080\108\097\121\101\114\071\117\105'))local w=q('\070\114\097\109\101',{
AnchorPoint=Vector2.new(0.5,0.5),Size=UDim2.fromScale(0.94,0.88),Position=UDim2.
fromScale(0.5,0.5),BackgroundColor3=m.dark,ClipsDescendants=true},v)t(w,9)u(w)q(
'\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(m.tile,m.dark),Rotation=90},w)local x=q(
'\070\114\097\109\101',{Size=UDim2.new(0,174,1,0),BackgroundColor3=m.sidebar},w)q('\084\101\120\116\076\097\098\101\108',{
Text='\065\078\079\078\072\085\066',Position=UDim2.fromOffset(17,24),Size=UDim2.fromOffset(145,28),
BackgroundTransparency=1,TextColor3=m.text,Font=Enum.Font.GothamBold,TextSize=20
,TextXAlignment=Enum.TextXAlignment.Left},x)q('\084\101\120\116\076\097\098\101\108',{Text=
'\083\085\080\069\082\080\079\087\069\082\032\047\032\067\079\078\084\082\079\076',Position=UDim2.fromOffset(18,56),Size=UDim2.fromOffset(
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
BackgroundColor3=m.tile},w)t(G)local H,I={},{}local J='\070\097\114\109'local K={Farm='\070\097\114\109'
,Cartas='\067\097\114\100\115',Combate='\067\111\109\098\097\116',Ajustes='\083\101\116\116\105\110\103\115'}local function L(M)J=M for N
,O in pairs(H)do O.Visible=N==M s(I[N],{BackgroundColor3=N==M and o or m.tile,
TextColor3=N==M and m.dark or m.muted})if N==M then local P=O.Position O.
Position=P+UDim2.fromOffset(6,0)s(O,{Position=P})end end end local function M(N)
if H[N]then return H[N]end local O=q('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Name=N,Size=UDim2.new(1,-
32,1,-166),Position=UDim2.fromOffset(16,126),BackgroundTransparency=1,
ScrollBarThickness=3,ScrollBarImageColor3=o,CanvasSize=UDim2.new(),
AutomaticCanvasSize=Enum.AutomaticSize.Y,Visible=N=='\070\097\114\109'},w)q('\085\073\076\105\115\116\076\097\121\111\117\116',{
Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.LayoutOrder},O)q('\085\073\080\097\100\100\105\110\103',{
PaddingTop=UDim.new(0,2),PaddingBottom=UDim.new(0,12),PaddingLeft=UDim.new(0,2)}
,O)local P={Farm=p('\069\115\099\111\108\104\097\032\115\101\117\115\032\097\108\118\111\115\032\101\032\099\111\110\116\114\111\108\101\032\097\032\112\114\111\103\114\101\115\115\u{e3}\111\046',
'\067\104\111\111\115\101\032\121\111\117\114\032\116\097\114\103\101\116\115\032\097\110\100\032\099\111\110\116\114\111\108\032\112\114\111\103\114\101\115\115\105\111\110\046'),Cartas=p(
'\079\114\103\097\110\105\122\101\032\115\117\097\032\099\111\108\101\u{e7}\u{e3}\111\032\101\032\097\117\116\111\109\097\116\105\122\101\032\097\115\032\109\101\108\104\111\114\105\097\115\046',
'\077\097\110\097\103\101\032\121\111\117\114\032\099\111\108\108\101\099\116\105\111\110\032\097\110\100\032\097\117\116\111\109\097\116\101\032\117\112\103\114\097\100\101\115\046'),Combate=p(
'\067\111\110\116\114\111\108\101\115\032\100\101\032\099\111\109\098\097\116\101\032\101\032\104\097\098\105\108\105\100\097\100\101\115\046','\067\111\109\098\097\116\032\097\110\100\032\097\098\105\108\105\116\121\032\099\111\110\116\114\111\108\115\046'),Ajustes=p(
'\080\101\114\115\111\110\097\108\105\122\101\032\111\032\112\097\105\110\101\108\032\101\032\097\115\032\114\101\103\114\097\115\032\100\101\032\097\117\116\111\109\097\u{e7}\u{e3}\111\046',
'\067\117\115\116\111\109\105\122\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\097\117\116\111\109\097\116\105\111\110\032\114\117\108\101\115\046')}local Q=q('\084\101\120\116\076\097\098\101\108',{Text=b.
language=='\112\116'and N or K[N],Size=UDim2.new(1,-8,0,28),LayoutOrder=-30,
BackgroundTransparency=1,TextColor3=m.text,TextSize=20,Font=Enum.Font.GothamBold
,TextXAlignment=Enum.TextXAlignment.Left},O)q('\084\101\120\116\076\097\098\101\108',{Text=P[N],Size=UDim2.
new(1,-8,0,38),LayoutOrder=-29,BackgroundTransparency=1,TextColor3=m.muted,
TextSize=12,TextWrapped=true,Font=Enum.Font.Gotham,TextXAlignment=Enum.
TextXAlignment.Left},O)local R=0 for S in pairs(H)do R+=1 end local S=q(
'\084\101\120\116\066\117\116\116\111\110',{Text=b.language=='\112\116'and N or K[N],Font=Enum.Font.GothamMedium,
TextSize=12,TextColor3=N=='\070\097\114\109'and m.dark or m.muted,Size=UDim2.new(0.25,-8,1,-
8),Position=UDim2.new(R*0.25,4,0,4),BackgroundColor3=N=='\070\097\114\109'and o or m.tile,
AutoButtonColor=false},G)t(S,8)q('\085\073\080\097\100\100\105\110\103',{PaddingLeft=UDim.new(0,10),
PaddingRight=UDim.new(0,10)},S)H[N]=O I[N]=S r(S.Activated,function()L(N)end)
return O end local N={}function N.label(O,P,Q,R,S)local T=q(P,{Text=Q,Size=UDim2
.new(1,-10,0,R),LayoutOrder=S,BackgroundTransparency=P=='\084\101\120\116\066\111\120'and 0 or 1,
BackgroundColor3=m.tile,TextColor3=m.text,TextSize=13,Font=Enum.Font.Gotham,
TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left},O)q('\085\073\080\097\100\100\105\110\103',{
PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0,12)},T)if P=='\084\101\120\116\066\111\120'then t(
T,8)u(T)T.ClearTextOnFocus=false r(T.Focused,function()s(T,{BackgroundColor3=m.
edge})end)r(T.FocusLost,function()s(T,{BackgroundColor3=m.tile})end)end return T
end function N.button(O,P,Q)local R=N.label(O,'\084\101\120\116\066\117\116\116\111\110',P,48,Q)R.
BackgroundTransparency=0 R.AutoButtonColor=false t(R,10)u(R)local S=q('\070\114\097\109\101',{
Name='\066\117\116\116\111\110\083\104\097\100\111\119',Position=UDim2.new(0,4,1,1),Size=UDim2.new(1,-8,0,3),
BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=0.6,Active=false},R)t(
S,3)r(R.MouseEnter,function()s(R,{BackgroundColor3=m.edge})end)r(R.MouseLeave,
function()s(R,{BackgroundColor3=m.tile})end)r(R.MouseButton1Down,function()s(R,{
BackgroundColor3=m.dark})end)r(R.MouseButton1Up,function()s(R,{BackgroundColor3=
m.tile})end)return R end local O={}function N.checkbox(P,Q,R)local S=N.button(P,
'',R)local T=N.label(S,'\084\101\120\116\076\097\098\101\108',Q,48,0)T.Size=UDim2.new(1,-44,1,0)local U=q(
'\084\101\120\116\076\097\098\101\108',{Text='',AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,-2,0.5,
0),Size=UDim2.fromOffset(24,24),TextSize=18,Font=Enum.Font.GothamBold,TextColor3
=m.dark,BackgroundColor3=m.dark},S)t(U,6)local V=u(U)local W=false local
function X(Y)W=Y==true U.Text=W and'\u{2713}'or''s(U,{BackgroundColor3=W and o
or m.dark})s(V,{Color=W and o or m.edge})end O[#O+1]=function()X(W)end return S,
X end local P={}function P.resolve(Q,R,S)local T=math.max(0.1,math.min(S.scale/
100,math.max(1,Q-16)/300,math.max(1,R-16)/340))local U=math.min(S.width,math.
max(1,Q-16)/T)local V=math.min(S.height,math.max(1,R-16)/T)return{scale=T,width=
U,height=V,x=8+math.max(0,Q-16-U*T)*S.x,y=8+math.max(0,R-16-V*T)*S.y,compact=U<
620}end local Q='\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095\076\097\121\111\117\116\095'..g.UserId..'\046\106\115\111\110'local R={width=
760,height=580,scale=d.TouchEnabled and 80 or 100,launcher=56,x=0.5,y=0.5}local
S=table.clone(R)local T={width={300,1100},height={340,900},scale={65,150},
launcher={44,88},x={0,1},y={0,1}}if type(readfile)=='\102\117\110\099\116\105\111\110'then pcall(
function()local U=e:JSONDecode(readfile(Q))for V,W in pairs(T)do local X=U[V]if
type(X)=='\110\117\109\098\101\114'and X==X then S[V]=math.clamp(X,W[1],W[2])end end end)end local
function U()if type(writefile)=='\102\117\110\099\116\105\111\110'then pcall(writefile,Q,e:JSONEncode(S)
)end end local V=q('\085\073\083\099\097\108\101',{Scale=1},w)local function W()local X=v.
AbsoluteSize if X.X<100 or X.Y<100 then return end local Y=P.resolve(X.X,X.Y,S)w
.AnchorPoint=Vector2.zero w.Size=UDim2.fromOffset(Y.width,Y.height)w.Position=
UDim2.fromOffset(Y.x,Y.y)V.Scale=Y.scale x.Visible=not Y.compact y.Position=
UDim2.fromOffset(Y.compact and 0 or 174,0)y.Size=UDim2.new(1,Y.compact and 0 or-
174,0,76)G.Parent=w G.Position=Y.compact and UDim2.new(0,12,1,-84)or UDim2.
fromOffset(12,100)G.Size=Y.compact and UDim2.new(1,-24,0,44)or UDim2.new(0,150,1
,-180)G.BackgroundTransparency=1 for Z,_ in ipairs({'\070\097\114\109','\067\097\114\116\097\115','\067\111\109\098\097\116\101',
'\065\106\117\115\116\101\115'})do local aa=I[_]if aa then aa.Size=Y.compact and UDim2.new(0.25,-6,0,
42)or UDim2.new(1,0,0,44)aa.Position=Y.compact and UDim2.new((Z-1)*0.25,0,0,0)or
UDim2.fromOffset(0,(Z-1)*52)aa.Text=Y.compact and(b.language=='\112\116'and _ or K[_])
or string.format('\037\048\050\100\032\u{b7}\032\037\115',Z,b.language=='\112\116'and _ or K[_])aa.
TextXAlignment=Y.compact and Enum.TextXAlignment.Center or Enum.TextXAlignment.
Left end end for aa,Z in pairs(H)do Z.Position=UDim2.fromOffset(Y.compact and 16
or 190,88)Z.Size=UDim2.new(1,Y.compact and-32 or-206,1,Y.compact and-184 or-136)
end E.Position=UDim2.new(0,Y.compact and 16 or 190,1,-34)E.Size=UDim2.new(1,Y.
compact and-40 or-214,0,26)F.Size=UDim2.fromOffset(S.launcher,S.launcher)end r(v
:GetPropertyChangedSignal('\065\098\115\111\108\117\116\101\083\105\122\101'),W)local aa={}local function X(Y)N.
label(Y,'\084\101\120\116\076\097\098\101\108',p('\084\069\076\065\032\069\032\084\079\081\085\069','\068\073\083\080\076\065\089\032\038\032\084\079\085\067\072'),32,-10)N.label(Y,
'\084\101\120\116\076\097\098\101\108',p(
'\065\114\114\097\115\116\101\032\111\032\099\097\098\101\u{e7}\097\108\104\111\032\112\097\114\097\032\109\111\118\101\114\046\032\085\115\101\032\111\032\099\097\110\116\111\032\105\110\102\101\114\105\111\114\032\112\097\114\097\032\114\101\100\105\109\101\110\115\105\111\110\097\114\046\032\079\115\032\097\106\117\115\116\101\115\032\115\u{e3}\111\032\115\097\108\118\111\115\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046'
,
"\068\114\097\103\032\116\104\101\032\104\101\097\100\101\114\032\116\111\032\109\111\118\101\046\032\085\115\101\032\116\104\101\032\098\111\116\116\111\109\032\099\111\114\110\101\114\032\116\111\032\114\101\115\105\122\101\046\032\067\104\097\110\103\101\115\032\097\114\101\032\115\097\118\101\100\032\097\117\116\111\109\097\116\105\099\097\108\108\121\046"
),64,-9)for Z,_ in ipairs({{'\115\099\097\108\101','\069\115\099\097\108\097\032\100\097\032\105\110\116\101\114\102\097\099\101','\073\110\116\101\114\102\097\099\101\032\115\099\097\108\101',5,
'\037'},{'\119\105\100\116\104','\076\097\114\103\117\114\097\032\100\111\032\112\097\105\110\101\108','\080\097\110\101\108\032\119\105\100\116\104',10,'\032\112\120'},{'\104\101\105\103\104\116',
'\065\108\116\117\114\097\032\100\111\032\112\097\105\110\101\108','\080\097\110\101\108\032\104\101\105\103\104\116',10,'\032\112\120'},{'\108\097\117\110\099\104\101\114',
'\084\097\109\097\110\104\111\032\100\111\032\098\111\116\u{e3}\111\032\065','\076\097\117\110\099\104\101\114\032\115\105\122\101',2,'\032\112\120'}})do local ab=_[1]local ac=q(
'\070\114\097\109\101',{Size=UDim2.new(1,-8,0,76),BackgroundColor3=m.tile,LayoutOrder=-8+Z},Y)
t(ac,10)u(ac)local ad=N.label(ac,'\084\101\120\116\076\097\098\101\108',p(_[2],_[3]),28,0)ad.Size=UDim2.
new(1,0,0,28)local ae=N.button(ac,'\u{2212}',0)ae.Size=UDim2.fromOffset(42,36)ae
.Position=UDim2.fromOffset(12,32)ae.TextXAlignment=Enum.TextXAlignment.Center
local af=N.label(ac,'\084\101\120\116\066\111\120','',36,0)af.Position=UDim2.fromOffset(62,32)af.Size
=UDim2.new(1,-124,0,36)af.TextXAlignment=Enum.TextXAlignment.Center local ag=N.
button(ac,'\043',0)ag.Size=UDim2.fromOffset(42,36)ag.Position=UDim2.new(1,-54,0,32)
ag.TextXAlignment=Enum.TextXAlignment.Center local function ah()af.Text=
tostring(math.floor(S[ab])).._[5]end aa[#aa+1]=ah local function ai(aj)if aj and
aj==aj then S[ab]=math.clamp(aj,T[ab][1],T[ab][2])W()U()end ah()end r(ae.
Activated,function()ai(S[ab]-_[4])end)r(ag.Activated,function()ai(S[ab]+_[4])end
)r(af.FocusLost,function()ai(tonumber(af.Text:match('\091\037\100\037\046\093\043')))end)ah()end
local ab=N.button(Y,p('\067\101\110\116\114\097\108\105\122\097\114\032\101\032\114\101\115\116\097\117\114\097\114\032\116\097\109\097\110\104\111',
'\067\101\110\116\101\114\032\097\110\100\032\114\101\115\116\111\114\101\032\115\105\122\101'),-3)r(ab.Activated,function()S=table.clone(R)W()U()for
ac,ad in ipairs(aa)do ad()end end)end local ab=q('\084\101\120\116\066\117\116\116\111\110',{Text='\u{25e2}',
TextSize=20,TextColor3=m.muted,BackgroundTransparency=1,Size=UDim2.fromOffset(30
,30),Position=UDim2.new(1,-30,1,-30)},w)local ac local function ad(ae,af)if ae.
UserInputType~=Enum.UserInputType.MouseButton1 and ae.UserInputType~=Enum.
UserInputType.Touch then return end ac={input=ae,kind=af,origin=ae.Position,pos=
w.Position,width=w.Size.X.Offset,height=w.Size.Y.Offset}end r(y.InputBegan,
function(ae)ad(ae,'\109\111\118\101')end)r(ab.InputBegan,function(ae)ad(ae,'\114\101\115\105\122\101')end)r(d.
InputChanged,function(ae)if not ac or(ae~=ac.input and ae.UserInputType~=Enum.
UserInputType.MouseMovement)then return end local af=ae.Position-ac.origin local
ag=v.AbsoluteSize if ac.kind=='\114\101\115\105\122\101'then S.width=math.clamp(ac.width+af.X/V.
Scale,300,1100)S.height=math.clamp(ac.height+af.Y/V.Scale,340,900)else local ah=
math.max(1,ag.X-16-w.Size.X.Offset*V.Scale)local ai=math.max(1,ag.Y-16-w.Size.Y.
Offset*V.Scale)S.x=math.clamp((ac.pos.X.Offset+af.X-8)/ah,0,1)S.y=math.clamp((ac
.pos.Y.Offset+af.Y-8)/ai,0,1)end W()end)r(d.InputEnded,function(ae)if ac and ae
==ac.input then ac=nil U()for af,ag in ipairs(aa)do ag()end end end)local
function ae()if not l then return end l=false if j then pcall(j)end for af,ag in
ipairs(h)do ag:Disconnect()end v:Destroy()end b.attach(ae)local function af(ag)w
.Visible=ag if ag then W()local ah=w.Position w.Position=ah+UDim2.fromOffset(0,8
)s(w,{Position=ah})end end local ag=q('\084\101\120\116\066\117\116\116\111\110',{Text='\u{2014}',Size=UDim2.
fromOffset(32,32),Position=UDim2.new(1,-76,0,16)},y)local ah=q('\084\101\120\116\066\117\116\116\111\110',{
Text='\u{d7}',Size=UDim2.fromOffset(32,32),Position=UDim2.new(1,-38,0,16)},y)for
ai,aj in ipairs({ag,ah})do aj.BackgroundColor3=m.tile aj.TextColor3=m.text aj.
Font=Enum.Font.GothamMedium aj.TextSize=18 t(aj,8)end r(ag.Activated,function()
af(false)end)r(ah.Activated,function()b.unload()end)local ai,aj,Y,Z,_ r(F.
InputBegan,function(ak)if ak.UserInputType==Enum.UserInputType.MouseButton1 or
ak.UserInputType==Enum.UserInputType.Touch then ai=ak aj=ak.Position Y=F.
Position Z=os.clock()_=false end end)r(d.InputChanged,function(ak)if ai and(ak==
ai or ak.UserInputType==Enum.UserInputType.MouseMovement)then local al=ak.
Position-aj if al.Magnitude>8 then _=true end if _ then local am=v.AbsoluteSize
local an=math.clamp(Y.X.Scale*am.X+Y.X.Offset+al.X,0,math.max(0,am.X-S.launcher)
)local ao=math.clamp(Y.Y.Scale*am.Y+Y.Y.Offset+al.Y,0,math.max(0,am.Y-S.launcher
))F.Position=UDim2.fromOffset(an,ao)end end end)r(d.InputEnded,function(ak)if ai
and(ak==ai or ak.UserInputType==Enum.UserInputType.MouseButton1)then if not _
then if os.clock()-Z>=0.65 then if k then k()end else af(not w.Visible)end end
ai=nil end end)r(d.InputBegan,function(ak,al)if not al and ak.KeyCode==Enum.
KeyCode.RightControl then af(not w.Visible)end end)local ak=os.clock()local al,
am=false,false local function an()return al and(am or os.clock()-ak>=2.5)end
local ao=q('\070\114\097\109\101',{Name='\076\111\097\100\105\110\103',Size=UDim2.fromScale(1,1),BackgroundColor3=m.
dark,ZIndex=50},w)t(ao,10)local ap=q('\084\101\120\116\076\097\098\101\108',{Text='\065\078\079\078\072\085\066',Position=UDim2.
fromScale(0.1,0.045),Size=UDim2.fromScale(0.8,0.12),BackgroundTransparency=1,
Font=Enum.Font.GothamBlack,TextSize=28,TextColor3=o,ZIndex=51},ao)local aq=q(
'\084\101\120\116\076\097\098\101\108',{Text=p('\067\097\114\114\101\103\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115','\076\111\097\100\105\110\103\032\102\101\097\116\117\114\101\115'),Position=
UDim2.fromScale(0.1,0.59),Size=UDim2.fromScale(0.8,0.1),BackgroundTransparency=1
,Font=Enum.Font.GothamBold,TextSize=18,TextWrapped=true,TextColor3=m.text,ZIndex
=51},ao)local ar=q('\084\101\120\116\076\097\098\101\108',{Text='',Position=UDim2.fromScale(0.1,0.69),Size=
UDim2.fromScale(0.8,0.1),BackgroundTransparency=1,Font=Enum.Font.Gotham,TextSize
=13,TextWrapped=true,TextColor3=m.muted,ZIndex=51},ao)local as=q('\070\114\097\109\101',{
Position=UDim2.fromScale(0.15,0.82),Size=UDim2.new(0.7,0,0,10),BackgroundColor3=
m.edge,ZIndex=51},ao)t(as,4)local at=q('\070\114\097\109\101',{Size=UDim2.fromScale(0,1),
BackgroundColor3=o,ZIndex=52},as)t(at,4)q('\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(
Color3.fromRGB(150,60,220),Color3.fromRGB(235,165,255)),Rotation=0},at)local au=
q('\084\101\120\116\076\097\098\101\108',{Text='\083\085\080\069\082\080\079\087\069\082\032\047\032\065\078\079\078\072\085\066\032\032\u{b7}\032\032\118'..a,Position=UDim2.
fromScale(0.1,0.145),Size=UDim2.fromScale(0.8,0.05),BackgroundTransparency=1,
Font=Enum.Font.Code,TextSize=10,TextColor3=m.muted,ZIndex=51},ao)local av=q(
'\084\101\120\116\076\097\098\101\108',{Text='',Position=UDim2.fromScale(0.15,0.87),Size=UDim2.fromScale(
0.7,0.06),BackgroundTransparency=1,Font=Enum.Font.Code,TextSize=11,TextColor3=m.
muted,ZIndex=51},ao)local aw=q('\070\114\097\109\101',{Name='\071\097\109\101\067\111\118\101\114',Position=UDim2.
fromScale(0.12,0.22),Size=UDim2.fromScale(0.76,0.34),BackgroundColor3=m.tile,
ClipsDescendants=true,ZIndex=51},ao)t(aw,14)q('\085\073\083\116\114\111\107\101',{Color=o,Thickness=2,
Transparency=0.15,ApplyStrokeMode=Enum.ApplyStrokeMode.Border},aw)local ax=q(
'\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Image=b.
identity and b.identity.cover or
'\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\071\097\109\101\084\104\117\109\098\110\097\105\108\038\105\100\061\055\052\049\056\051\050\052\054\050\056\053\053\054\057\038\119\061\052\056\048\038\104\061\050\055\048',ScaleType=Enum.
ScaleType.Crop,ZIndex=52},aw)t(ax,14)q('\084\101\120\116\076\097\098\101\108',{Text='\083\084\069\065\076\032\065\032\083\085\080\069\082\080\079\087\069\082',
Size=UDim2.new(1,0,0,30),Position=UDim2.new(0,0,1,-30),BackgroundColor3=m.dark,
BackgroundTransparency=0.25,TextColor3=Color3.new(1,1,1),TextSize=12,Font=Enum.
Font.GothamBold,ZIndex=53},aw)local ay=q('\070\114\097\109\101',{Name='\067\111\118\101\114\082\101\102\108\101\099\116\105\111\110',Size=
UDim2.fromScale(1,1),BackgroundColor3=Color3.new(1,1,1),ZIndex=54,Active=false},
aw)t(ay,14)local az=q('\085\073\071\114\097\100\105\101\110\116',{Rotation=20,Offset=Vector2.new(-1,0),
Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(0.4,1),NumberSequenceKeypoint.new(0.5,0.65),
NumberSequenceKeypoint.new(0.6,1),NumberSequenceKeypoint.new(1,1)})},ay)local aA
=f:Create(az,TweenInfo.new(1.6,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,
-1,false,0.6),{Offset=Vector2.new(1,0)})aA:Play()r(ao.Destroying,function()aA:
Cancel()end)task.spawn(function()pcall(function()game:GetService(
'\067\111\110\116\101\110\116\080\114\111\118\105\100\101\114'):PreloadAsync({ax})end)end)local aB=q('\084\101\120\116\066\117\116\116\111\110',{Text=p(
'\080\117\108\097\114\032\097\110\105\109\097\u{e7}\u{e3}\111','\083\107\105\112\032\097\110\105\109\097\116\105\111\110'),Position=UDim2.fromScale(0.3,0.93),
Size=UDim2.fromScale(0.4,0.055),BackgroundColor3=m.tile,TextColor3=m.text,Font=
Enum.Font.GothamMedium,TextSize=11,ZIndex=52},ao)t(aB,8)r(aB.Activated,function(
)am=true if al then ao:Destroy()else aB.Text=p(
'\065\103\117\097\114\100\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115\u{2026}','\087\097\105\116\105\110\103\032\102\111\114\032\102\101\097\116\117\114\101\115\u{2026}')aB.Active=
false end end)local aC=q('\084\101\120\116\066\117\116\116\111\110',{Text=p('\070\101\099\104\097\114','\067\108\111\115\101'),Position=UDim2.
new(1,-88,0,12),Size=UDim2.fromOffset(76,32),BackgroundColor3=m.tile,TextColor3=
m.text,Font=Enum.Font.Gotham,TextSize=12,ZIndex=52},ao)t(aC,8)r(aC.Activated,
function()b.unload()end)local function aD(aE,aF,aG)if not l then error(
'\073\110\105\116\105\097\108\105\122\097\116\105\111\110\032\099\097\110\099\101\108\108\101\100')end ar.Text=p(aF,aG)av.Text=string.format('\037\100\037\037',math
.floor(aE*100))if b.progress then b.progress(0.43+0.57*aE,aF,aG)end s(at,{Size=
UDim2.fromScale(aE,1)})game:GetService('\082\117\110\083\101\114\118\105\099\101').Heartbeat:Wait()end W()aD(
0.08,'\080\114\101\112\097\114\097\110\100\111\032\097\032\105\110\116\101\114\102\097\099\101\u{2026}','\080\114\101\112\097\114\105\110\103\032\116\104\101\032\105\110\116\101\114\102\097\099\101\u{2026}')local aE
=(function()local aE={}function aE.manualEligible(aF,aG,aH,aI,aJ)if aF=='\077\105\120\101\100'
then return(aG and aH==aI)or(not aG and aH==aJ)end if aF=='\066\111\115\115'then return aG
and aH==aI end return aF=='\078\080\067'and not aG and aH==aJ end function aE.protected(
aF,aG,aH)local aI=aF.Cards and aF.Cards[aG]return not aI or aH[aG]or aI.Favorite
==true or aI.Locked==true or table.find(aF.Equipped or{},aG)~=nil end function
aE.sacrificeCount(aF,aG,aH,aI,aJ,aK,aL)if aE.protected(aF,aG,aH)or aJ>(aL or 3)
then return 0 end for aM,aN in pairs(aF.Base and aF.Base.Holders or{})do if aN==
aG then return 0 end end return math.min(1000,aK,math.max(0,math.floor(aF.Cards[
aG].Count)-aI))end function aE.nextBoss(aF,aG)for aH,aI in ipairs(aF)do if aI.
gate and not aG[aI.gate]then return aI end end end function aE.sameList(aF,aG)if
#aF~=#aG then return false end for aH,aI in ipairs(aF)do if aG[aH]~=aI then
return false end end return true end function aE.sameArea(aF,aG)if not aF or not
aG or aF.gate or aG.gate then return false end if aF.minZ~=nil and aF.maxZ~=nil
and aG.minZ~=nil and aG.maxZ~=nil then return aF.minZ==aG.minZ and aF.maxZ==aG.
maxZ end return aF.id==aG.id end function aE.carried(aF)local aG,aH={},0 if
type(aF)=='\115\116\114\105\110\103'then for aI in aF:gmatch('\040\037\100\043\041\058\091\037\119\095\093\043')do if not aG[aI]then
aG[aI]=true aH+=1 end end end return aG,aH end function aE.displayName(aF)return
tostring(aF or''):gsub('\095','\032'):gsub('\040\037\108\041\040\037\117\041','\037\049\032\037\050'):gsub('\037\115\043','\032'):match(
'\094\037\115\042\040\046\045\041\037\115\042\036')end function aE.tripState(aF,aG,aH)if aF==0 then return aG and
'\100\101\108\105\118\101\114\101\100'or'\108\111\115\116'end if aH>15 then return'\116\105\109\101\111\117\116'end return'\119\097\105\116\105\110\103'end
return function(aF)assert(game.PlaceId==74183246285569 and game.GameId==
10770228857,'\087\114\111\110\103\032\103\097\109\101')local aG,aH,aI=aF.ui,aF.page,aF.T local aJ=game:
GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local aK=game:GetService('\080\108\097\121\101\114\115')local aL=game:
GetService('\072\116\116\112\083\101\114\118\105\099\101')local aM=game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101')local aN=aK
.LocalPlayer local aO=true local aP,aQ,aR={},{},{}local aS local function aT()aO
=false for aU,aV in ipairs(aP)do aV:Disconnect()end for aU,aV in pairs(aR)do for
aW,aX in ipairs(aV)do aX:Disconnect()end end table.clear(aR)for aU=#aQ,1,-1 do
local aV=aQ[aU]if aV.object[aV.key]==aV.replacement then aV.object[aV.key]=aV.
original end end if aS then pcall(aS)end end aF.attach(aT)local aU=0 local
function aV(aW,aX)aU=aU+1 local aY=aG.label(aH,'\084\101\120\116\076\097\098\101\108',aW,aX or 42,aU)aY.
TextSize=12 aY.TextWrapped=true return aY end local aW=aV(aI(
'\067\097\114\114\101\103\097\110\100\111\032\105\110\116\101\114\102\097\099\101\115\032\100\111\032\106\111\103\111\046\046\046','\076\111\097\100\105\110\103\032\103\097\109\101\032\105\110\116\101\114\102\097\099\101\115\046\046\046'),62)aW.
LayoutOrder=800 local aX=aV('',110)aX.LayoutOrder=801 local aY={}local function
aZ(a_)aY[#aY+1]=os.date('\037\072\058\037\077\058\037\083')..'\032'..tostring(a_)if#aY>30 then table.
remove(aY,1)end aW.Text=tostring(a_)end local a_={returnFull=false,farm=false,
progress=false,boss=false,open=false,equip=false,place=false,fuse=false,
sacrifice=false,tree=false,upgrades=false,abilities=false,boost=false,guard=
false,stun=false,multiplier=1e12,reserve=1,maxRank=3,protected='',branch='\080\111\119\101\114'
,farmMode='\065\117\116\111',bossId=2,npcId=1,rarities={Common=true,Uncommon=true,Rare=true}
}local a0='\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095'..aN.UserId..'\046\106\115\111\110'if type(readfile)=='\102\117\110\099\116\105\111\110'
then local a1,a2=pcall(function()return aL:JSONDecode(readfile(a0))end)if a1 and
type(a2)=='\116\097\098\108\101'then if type(a2.protected)=='\115\116\114\105\110\103'then a_.protected=a2.
protected:sub(1,2000)end if type(a2.multiplier)=='\110\117\109\098\101\114'and a2.multiplier==a2.
multiplier then a_.multiplier=math.clamp(a2.multiplier,1,1e12)end if type(a2.
reserve)=='\110\117\109\098\101\114'and a2.reserve==a2.reserve then a_.reserve=math.clamp(math.
floor(a2.reserve),1,1000)end if table.find({'\065\117\116\111','\066\111\115\115','\078\080\067','\077\105\120\101\100'},a2.
farmMode)then a_.farmMode=a2.farmMode end if type(a2.bossId)=='\110\117\109\098\101\114'then a_.
bossId=a2.bossId end if type(a2.npcId)=='\110\117\109\098\101\114'then a_.npcId=a2.npcId end if
type(a2.rarities)=='\116\097\098\108\101'then a_.rarities=a2.rarities end if table.find({'\067\097\115\104'
,'\076\117\099\107','\080\111\119\101\114','\083\112\101\101\100','\066\111\115\115'},a2.branch)then a_.branch=a2.branch end end end
local function a1()if type(writefile)=='\102\117\110\099\116\105\111\110'then pcall(writefile,a0,aL:
JSONEncode({protected=a_.protected,multiplier=a_.multiplier,reserve=a_.reserve,
branch=a_.branch,farmMode=a_.farmMode,bossId=a_.bossId,npcId=a_.npcId,rarities=
a_.rarities}))end end local function a2(a3,a4)aP[#aP+1]=a3:Connect(a4)end local
function a3(a4)local a5=aJ for a6 in a4:gmatch('\091\094\047\093\043')do a5=a5:FindFirstChild(
a6)assert(a5,'\077\105\115\115\105\110\103\032\109\111\100\117\108\101\058\032'..a4)end local a6,a7,a8=false,false,nil local a9=
task.spawn(function()a7,a8=pcall(require,a5)a6=true end)local ba=os.clock()+12
while aO and not a6 and os.clock()<ba do task.wait(0.05)end if not a6 then
pcall(task.cancel,a9)error(aI('\084\101\109\112\111\032\108\105\109\105\116\101\032\097\111\032\099\097\114\114\101\103\097\114\058\032','\076\111\097\100\105\110\103\032\116\105\109\101\100\032\111\117\116\058\032'
)..a4)end if not a7 then error(tostring(a8))end return a8 end local a4={}local
a5={State='\067\108\105\101\110\116\047\067\111\114\101\047\080\108\097\121\101\114\083\116\097\116\101',Cards='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\067\097\114\100\067\111\110\102\105\103',Stats=
'\083\104\097\114\101\100\047\082\117\108\101\115\047\067\097\114\100\083\116\097\116\115',Base='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\066\097\115\101\067\111\110\102\105\103',Shrine=
'\083\104\097\114\101\100\047\082\117\108\101\115\047\083\104\114\105\110\101',Progress='\083\104\097\114\101\100\047\082\117\108\101\115\047\080\114\111\103\114\101\115\115\105\111\110',Big='\083\104\097\114\101\100\047\085\116\105\108\047\066\105\103',
Packs='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\080\097\099\107\067\111\110\102\105\103',Opening='\067\108\105\101\110\116\047\085\073\047\080\097\099\107\115\047\080\097\099\107\079\112\101\110\105\110\103',Registry=
'\067\108\105\101\110\116\047\067\111\114\101\047\076\111\099\097\108\069\110\101\109\121\082\101\103\105\115\116\114\121',Shields='\083\104\097\114\101\100\047\067\111\109\098\097\116\047\083\104\105\101\108\100\115',Ability=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\065\098\105\108\105\116\121\067\111\110\102\105\103',Settings='\067\108\105\101\110\116\047\067\111\110\116\114\111\108\108\101\114\115\047\083\101\116\116\105\110\103\115\067\111\110\116\114\111\108\108\101\114',
Power='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\080\111\119\101\114\067\111\110\102\105\103'}local a6,a7=0,0 for a8 in pairs(a5)do a7+=1
end local a8,a9=pcall(function()for a8,a9 in pairs(a5)do if aF.progress then aF.
progress(0.18+0.46*a6/a7,'\067\097\114\114\101\103\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115\032\100\111\032\106\111\103\111\u{2026}\032\040'..a6..
'\047'..a7..'\041','\076\111\097\100\105\110\103\032\103\097\109\101\032\102\101\097\116\117\114\101\115\u{2026}\032\040'..a6..'\047'..a7..'\041')end a4[a8]=a3(
a9)a6+=1 end end)if not a8 then error(a9)end if aF.progress then aF.progress(0.7
,'\080\114\101\112\097\114\097\110\100\111\032\099\111\110\116\114\111\108\101\115\032\101\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\u{2026}',
'\080\114\101\112\097\114\105\110\103\032\099\111\110\116\114\111\108\115\032\097\110\100\032\097\117\116\111\109\097\116\105\111\110\u{2026}')end local ba=a4.State local bb=aJ:
FindFirstChild('\082\101\109\111\116\101\115')assert(bb,'\082\101\109\111\116\101\115\032\109\105\115\115\105\110\103')local bc=a4.Settings.Get(
'\065\117\116\111\065\116\116\097\099\107')local bd=false aS=function()if bd then a4.Settings.Set('\065\117\116\111\065\116\116\097\099\107'
,bc)end end local function be(bf)if a4.Settings.Get('\065\117\116\111\065\116\116\097\099\107')~=bf then a4.
Settings.Set('\065\117\116\111\065\116\116\097\099\107',bf)end bd=true end local function bf(bg,bh,bi)assert(
type(bg[bh])=='\102\117\110\099\116\105\111\110','\077\105\115\115\105\110\103\032\102\117\110\099\116\105\111\110\058\032'..bh)local bj=bg[bh]local bk=bi(bj)
bg[bh]=bk aQ[#aQ+1]={object=bg,key=bh,original=bj,replacement=bk}end local bg,bh
=pcall(function()bf(a4.Registry,'\068\097\109\097\103\101',function(bg)return function(bh,bi,...)
if aO and a_.boost and typeof(bh)=='\073\110\115\116\097\110\099\101'and bh:GetAttribute('\076\111\099\097\108')==true
and type(bi)=='\110\117\109\098\101\114'and bi>0 and bi<math.huge then bi=math.min(bi*a_.
multiplier,1e100)end return bg(bh,bi,...)end end)bf(a4.Shields,'\065\098\115\111\114\098',function
(bg)return function(bh,...)if aO and a_.guard and bh==aN.Character then return
true,false end return bg(bh,...)end end)bf(a4.Shields,'\071\117\097\114\100\101\100',function(bg)
return function(bh,...)if aO and a_.stun and bh==aN.Character then return true
end return bg(bh,...)end end)end)if not bg then for bi=#aQ,1,-1 do local bj=aQ[
bi]if bj.object[bj.key]==bj.replacement then bj.object[bj.key]=bj.original end
end table.clear(aQ)aZ(aI('\067\111\109\098\097\116\101\032\101\120\112\101\114\105\109\101\110\116\097\108\032\105\110\100\105\115\112\111\110\105\118\101\108\058\032',
'\069\120\112\101\114\105\109\101\110\116\097\108\032\099\111\109\098\097\116\032\117\110\097\118\097\105\108\097\098\108\101\058\032')..tostring(bh))end local bi={}local function
bj(bk,bl,bm)aU=aU+1 local bn,bo=aG.checkbox(aH,aI(bl,bm),aU)local function bp()
bo(a_[bk])end bi[#bi+1]=bp bp()a2(bn.Activated,function()if(bk=='\098\111\111\115\116'or bk==
'\103\117\097\114\100'or bk=='\115\116\117\110')and not bg then aZ(aI(
'\073\110\116\101\114\102\097\099\101\115\032\100\101\032\099\111\109\098\097\116\101\032\105\110\100\105\115\112\111\110\105\118\101\105\115\058\032','\067\111\109\098\097\116\032\105\110\116\101\114\102\097\099\101\115\032\117\110\097\118\097\105\108\097\098\108\101\058\032')..
tostring(bh))return end a_[bk]=not a_[bk]if bk=='\112\114\111\103\114\101\115\115'then for bq,br in
ipairs({'\102\097\114\109','\098\111\115\115','\111\112\101\110','\101\113\117\105\112','\112\108\097\099\101','\102\117\115\101','\116\114\101\101','\117\112\103\114\097\100\101\115',
'\097\098\105\108\105\116\105\101\115','\114\101\116\117\114\110\070\117\108\108'})do a_[br]=a_.progress end for bq,br in ipairs(bi)do
br()end end if bk=='\097\098\105\108\105\116\105\101\115'or bk=='\112\114\111\103\114\101\115\115'then pcall(be,a_.abilities)end
bp()end)end aF.quick(function()a_.progress=not a_.progress for bk,bl in ipairs({
'\102\097\114\109','\098\111\115\115','\111\112\101\110','\101\113\117\105\112','\112\108\097\099\101','\102\117\115\101','\116\114\101\101','\117\112\103\114\097\100\101\115','\097\098\105\108\105\116\105\101\115',
'\114\101\116\117\114\110\070\117\108\108'})do a_[bl]=a_.progress end pcall(be,a_.abilities)for bk,bl in
ipairs(bi)do bl()end aZ(a_.progress and aI('\080\114\111\103\114\101\115\115\097\111\032\108\105\103\097\100\097',
'\080\114\111\103\114\101\115\115\105\111\110\032\101\110\097\098\108\101\100')or aI('\080\114\111\103\114\101\115\115\097\111\032\100\101\115\108\105\103\097\100\097','\080\114\111\103\114\101\115\115\105\111\110\032\100\105\115\097\098\108\101\100'))end)
bj('\112\114\111\103\114\101\115\115','\080\114\111\103\114\101\115\115\u{e3}\111\032\097\117\116\111\109\u{e1}\116\105\099\097','\065\117\116\111\032\112\114\111\103\114\101\115\115\105\111\110')bj('\102\097\114\109',
'\070\097\114\109\032\100\101\032\105\110\105\109\105\103\111\115','\069\110\101\109\121\032\102\097\114\109')bj('\114\101\116\117\114\110\070\117\108\108',
'\077\111\099\104\105\108\097\032\099\104\101\105\097\058\032\112\111\114\116\097\108\032\101\032\114\101\116\111\109\097\114\032\102\097\114\109','\070\117\108\108\032\098\097\103\058\032\112\111\114\116\097\108\032\097\110\100\032\114\101\115\117\109\101\032\102\097\114\109\105\110\103')bj(
'\098\111\115\115','\080\114\105\111\114\105\122\097\114\032\098\111\115\115\101\115','\080\114\105\111\114\105\116\105\122\101\032\098\111\115\115\101\115')bj('\097\098\105\108\105\116\105\101\115',
'\072\097\098\105\108\105\100\097\100\101\115\032\097\117\116\111\109\u{e1}\116\105\099\097\115','\065\117\116\111\109\097\116\105\099\032\097\098\105\108\105\116\105\101\115')aH=aF.section('\067\097\114\116\097\115')bj(
'\111\112\101\110','\065\098\114\105\114\032\112\097\099\111\116\101\115','\079\112\101\110\032\112\097\099\107\115')bj('\101\113\117\105\112','\069\113\117\105\112\097\114\032\109\101\108\104\111\114\032\099\097\114\116\097',
'\069\113\117\105\112\032\098\101\115\116\032\099\097\114\100')bj('\112\108\097\099\101','\077\101\108\104\111\114\101\115\032\099\097\114\116\097\115\032\110\097\032\098\097\115\101','\066\101\115\116\032\099\097\114\100\115\032\111\110\032\098\097\115\101')bj(
'\102\117\115\101','\070\117\110\100\105\114\032\099\097\114\116\097\115','\070\117\115\101\032\099\097\114\100\115')bj('\116\114\101\101','\067\111\109\112\114\097\114\032\110\u{f3}\115\032\100\097\032\u{e1}\114\118\111\114\101',
'\066\117\121\032\115\107\105\108\108\032\116\114\101\101\032\110\111\100\101\115')bj('\117\112\103\114\097\100\101\115','\085\112\103\114\097\100\101\115\032\099\111\109\032\100\105\110\104\101\105\114\111\032\100\111\032\106\111\103\111',
'\085\112\103\114\097\100\101\115\032\119\105\116\104\032\103\097\109\101\032\099\097\115\104')bj('\115\097\099\114\105\102\105\099\101','\083\097\099\114\105\102\105\099\097\114\032\099\097\114\116\097\115\032\101\120\099\101\100\101\110\116\101\115',
'\083\097\099\114\105\102\105\099\101\032\115\112\097\114\101\115\032\097\099\099\111\114\100\105\110\103\032\116\111\032\083\101\116\116\105\110\103\115')aV(aI(
'\083\097\099\114\105\102\u{ed}\099\105\111\032\112\114\101\115\101\114\118\097\032\099\097\114\116\097\115\032\101\113\117\105\112\097\100\097\115\044\032\112\111\115\105\099\105\111\110\097\100\097\115\044\032\112\114\111\116\101\103\105\100\097\115\032\101\032\097\032\114\101\115\101\114\118\097\046\032\068\101\115\108\105\103\097\100\111\032\112\111\114\032\112\097\100\114\u{e3}\111\046'
,
"\083\097\099\114\105\102\105\099\101\032\112\114\101\115\101\114\118\101\115\032\101\113\117\105\112\112\101\100\044\032\112\108\097\099\101\100\044\032\112\114\111\116\101\099\116\101\100\032\099\097\114\100\115\032\097\110\100\032\116\104\101\032\114\101\115\101\114\118\101\046\032\079\102\102\032\098\121\032\100\101\102\097\117\108\116\046"
),54)aH=aF.section('\067\111\109\098\097\116\101')bj('\098\111\111\115\116','\068\097\110\111\032\078\080\067\032\108\111\099\097\108\032\097\109\112\108\105\097\100\111\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041'
,'\066\111\111\115\116\032\108\111\099\097\108\032\078\080\067\032\100\097\109\097\103\101\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041')bj('\103\117\097\114\100',
'\066\108\111\113\117\101\097\114\032\100\097\110\111\032\108\111\099\097\108\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041','\066\108\111\099\107\032\108\111\099\097\108\032\100\097\109\097\103\101\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041')bj(
'\115\116\117\110','\066\108\111\113\117\101\097\114\032\115\116\117\110\032\108\111\099\097\108\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041','\066\108\111\099\107\032\108\111\099\097\108\032\115\116\117\110\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041')
aV(aI(
"\078\097\111\032\103\097\114\097\110\116\101\032\105\109\117\110\105\100\097\100\101\032\110\111\032\115\101\114\118\105\100\111\114\046\032\077\117\108\116\105\112\108\105\099\097\100\111\114\032\097\116\117\097\032\101\109\032\078\080\067\115\032\109\097\114\099\097\100\111\115\032\076\111\099\097\108\046"
,"\068\111\101\115\032\110\111\116\032\103\117\097\114\097\110\116\101\101\032\115\101\114\118\101\114\032\105\109\109\117\110\105\116\121\046\032\077\117\108\116\105\112\108\105\101\114\032\097\102\102\101\099\116\115\032\078\080\067\115\032\109\097\114\107\101\100\032\076\111\099\097\108\046"),
42)aV(aI('\070\097\114\109\032\117\115\097\032\116\101\108\101\112\111\114\116\101\032\097\116\u{e9}\032\111\032\097\108\118\111\032\115\101\108\101\099\105\111\110\097\100\111\046',
'\070\097\114\109\032\116\101\108\101\112\111\114\116\115\032\116\111\032\116\104\101\032\115\101\108\101\099\116\101\100\032\116\097\114\103\101\116\046'),36)aH=aF.section('\065\106\117\115\116\101\115')local
function bk(bl,bm,bn)aV(bm,28)aU=aU+1 local bo=aG.label(aH,'\084\101\120\116\066\111\120',tostring(a_
[bl]),38,aU)bo.TextEditable=true bo.ClearTextOnFocus=false a2(bo.FocusLost,
function()local bp=bn(bo.Text)if bp~=nil then a_[bl]=bp a1()end bo.Text=
tostring(a_[bl])end)end bk('\109\117\108\116\105\112\108\105\101\114',aI('\077\117\108\116\105\112\108\105\099\097\100\111\114\032\040\049\032\097\116\101\032\049\048\048\048\048\048\048\048\048\048\048\048\048\041'
,'\077\117\108\116\105\112\108\105\101\114\032\040\049\032\116\111\032\049\048\048\048\048\048\048\048\048\048\048\048\048\041'),function(bl)local bm=tonumber(bl)if bm and
bm==bm and bm<math.huge then return math.clamp(bm,1,1e12)end end)bk('\114\101\115\101\114\118\101',
aI('\067\111\112\105\097\115\032\114\101\115\101\114\118\097\100\097\115\032\112\111\114\032\099\097\114\116\097','\082\101\115\101\114\118\101\100\032\099\111\112\105\101\115\032\112\101\114\032\099\097\114\100'),function(bl)local
bm=tonumber(bl)if bm and bm==bm and bm<math.huge then return math.clamp(math.
floor(bm),1,1000)end end)bk('\112\114\111\116\101\099\116\101\100',aI(
'\073\068\115\032\100\101\032\099\097\114\116\097\115\032\112\114\111\116\101\103\105\100\097\115\044\032\115\101\112\097\114\097\100\111\115\032\112\111\114\032\118\105\114\103\117\108\097',
'\080\114\111\116\101\099\116\101\100\032\099\097\114\100\032\073\068\115\044\032\099\111\109\109\097\032\115\101\112\097\114\097\116\101\100'),function(bl)return bl:sub(1,2000)end)aV(
aI('\082\097\114\105\100\097\100\101\115\032\112\101\114\109\105\116\105\100\097\115\032\110\111\032\115\097\099\114\105\102\u{ed}\099\105\111',
'\065\108\108\111\119\101\100\032\115\097\099\114\105\102\105\099\101\032\114\097\114\105\116\105\101\115\032\040\105\110\100\105\118\105\100\117\097\108\032\115\101\108\101\099\116\105\111\110\041'),42)local bl={Common='\067\111\109\117\109'
,Uncommon='\073\110\099\111\109\117\109',Rare='\082\097\114\097',Epic='\u{c9}\112\105\099\097',Legendary='\076\101\110\100\u{e1}\114\105\097',
Mythic='\077\u{ed}\116\105\099\097',God='\068\105\118\105\110\097',Secret='\083\101\099\114\101\116\097',Cosmic='\067\u{f3}\115\109\105\099\097',Ancient
='\065\110\099\101\115\116\114\097\108'}for bm,bn in ipairs(a4.Cards.RarityOrder)do aU=aU+1 local bo,bp=aG.
checkbox(aH,aI(bl[bn]or bn,bn),aU)local function bq()bp(a_.rarities[bn]==true)
end bq()a2(bo.Activated,function()a_.rarities[bn]=not a_.rarities[bn]a1()bq()end
)end bk('\098\114\097\110\099\104',aI('\082\097\109\111\058\032\067\097\115\104\044\032\076\117\099\107\044\032\080\111\119\101\114\044\032\083\112\101\101\100\032\111\117\032\066\111\115\115',
'\066\114\097\110\099\104\058\032\067\097\115\104\044\032\076\117\099\107\044\032\080\111\119\101\114\044\032\083\112\101\101\100\032\111\114\032\066\111\115\115'),function(bm)return table.find({
'\067\097\115\104','\076\117\099\107','\080\111\119\101\114','\083\112\101\101\100','\066\111\115\115'},bm)and bm or nil end)local function bm()
local bn={}for bo in a_.protected:gmatch('\091\094\044\093\043')do bn[bo:match('\094\037\115\042\040\046\045\041\037\115\042\036')]
=true end return bn end local bn={}local bo=aJ:FindFirstChild('\069\110\101\109\121\080\097\100\115')if bo
then for bp,bq in ipairs(bo:GetChildren())do local br=bq:GetAttributes()bn[#bn+1
]={id=tonumber(bq.Name),level=br.Level or 1,gate=br.Gate,enemy=br.Enemy,name=br.
Name or br.Enemy,respawn=br.RespawnTime or 90,cf=br.PadCFrame,minZ=br.ZoneMinZ,
maxZ=br.ZoneMaxZ}end end table.sort(bn,function(bp,bq)return bp.level<bq.level
end)local bp={}for bq,br in ipairs(bn)do bp[br.id]=br end local bq=aH aH=aF.
section('\070\097\114\109')local br=aV('',54)local function bs(bt,bu,bv)aU=aU+1 local bw=aG.
button(aH,'',aU)aU=aU+1 local bx=Instance.new('\083\099\114\111\108\108\105\110\103\070\114\097\109\101')bx.Size=UDim2.
new(1,-8,0,160)bx.LayoutOrder=aU bx.Visible=false bx.BackgroundTransparency=1 bx
.ScrollBarThickness=5 bx.CanvasSize=UDim2.new()bx.AutomaticCanvasSize=Enum.
AutomaticSize.Y bx.Parent=aH local by=Instance.new('\085\073\076\105\115\116\076\097\121\111\117\116')by.Padding=
UDim.new(0,4)by.SortOrder=Enum.SortOrder.LayoutOrder by.Parent=bx local function
bz()local bA=aI('\083\101\108\101\099\105\111\110\101','\083\101\108\101\099\116')for bB,bC in ipairs(bv)do if bC.id==a_[bu]
then bA=bC.text end end bw.Text=bt..'\058\032'..bA..'\032\u{25bc}'end for bA,bB in
ipairs(bv)do local bC=aG.button(bx,bB.text,bA)a2(bC.Activated,function()a_[bu]=
bB.id bx.Visible=false a1()bz()end)end a2(bw.Activated,function()bx.Visible=not
bx.Visible end)bz()end bs(aI('\077\111\100\111\032\100\101\032\102\097\114\109','\070\097\114\109\032\109\111\100\101'),'\102\097\114\109\077\111\100\101',{{id='\065\117\116\111',
text=aI('\080\114\111\103\114\101\115\115\u{e3}\111\032\097\117\116\111\109\u{e1}\116\105\099\097','\065\117\116\111\109\097\116\105\099\032\112\114\111\103\114\101\115\115\105\111\110')},{id='\066\111\115\115',
text=aI('\066\111\115\115\032\101\115\099\111\108\104\105\100\111','\083\101\108\101\099\116\101\100\032\098\111\115\115')},{id='\078\080\067',text=aI(
'\u{c1}\114\101\097\032\100\101\032\078\080\067\115\032\101\115\099\111\108\104\105\100\097','\083\101\108\101\099\116\101\100\032\078\080\067\032\097\114\101\097')},{id='\077\105\120\101\100',text=aI(
'\078\080\067\115\032\043\032\066\111\115\115\032\040\112\114\105\111\114\105\100\097\100\101\032\097\111\032\098\111\115\115\041','\078\080\067\115\032\043\032\066\111\115\115\032\040\098\111\115\115\032\112\114\105\111\114\105\116\121\041')}})local bt,bu,
bv={},{},{}for bw,bx in ipairs(bn)do local by={id=bx.id,text=aE.displayName(bx.
name)..'\032\u{b7}\032\076\118\032'..bx.level..'\032\u{b7}\032'..bx.respawn..'\115'}if bx.gate then bt[#
bt+1]=by else local bz for bA,bB in ipairs(bv)do if aE.sameArea(bx,bB)then bz=bB
break end end if bz then if a_.npcId==bx.id then a_.npcId=bz.id end else bv[#bv+
1]=bx local bA=0 for bB,bC in ipairs(bn)do if aE.sameArea(bx,bC)then bA+=1 end
end by.text=aE.displayName(bx.name)..aI('\032\u{b7}\032\u{c1}\114\101\097\032\099\111\109\112\108\101\116\097\032\u{b7}\032',
'\032\u{b7}\032\070\117\108\108\032\097\114\101\097\032\u{b7}\032')..bA..aI('\032\112\111\110\116\111\115','\032\115\112\097\119\110\032\112\111\105\110\116\115')bu[#bu+1]=by end
end end bs('\066\111\115\115','\098\111\115\115\073\100',bt)bs(aI('\u{c1}\114\101\097\032\100\101\032\078\080\067\115','\078\080\067\032\097\114\101\097'),'\110\112\099\073\100',bu)
aV(aI(
"\078\080\067\115\032\043\032\066\111\115\115\058\032\102\097\114\109\097\032\097\032\097\114\101\097\032\101\115\099\111\108\104\105\100\097\032\110\097\032\101\115\112\101\114\097\032\101\032\118\111\108\116\097\032\097\111\032\098\111\115\115\032\113\117\097\110\100\111\032\101\108\101\032\097\112\097\114\101\099\101\046\032\086\101\114\105\102\105\099\097\032\112\101\114\105\111\100\105\099\097\109\101\110\116\101\032\097\032\097\114\101\110\097\032\115\101\032\111\032\098\111\115\115\032\101\115\116\105\118\101\114\032\102\111\114\097\032\100\111\032\115\116\114\101\097\109\105\110\103\046"
,
"\078\080\067\115\032\043\032\066\111\115\115\058\032\102\097\114\109\115\032\116\104\101\032\115\101\108\101\099\116\101\100\032\097\114\101\097\032\119\104\105\108\101\032\119\097\105\116\105\110\103\044\032\116\104\101\110\032\115\119\105\116\099\104\101\115\032\116\111\032\116\104\101\032\098\111\115\115\046\032\080\101\114\105\111\100\105\099\097\108\108\121\032\099\104\101\099\107\115\032\116\104\101\032\097\114\101\110\097\032\119\104\101\110\032\116\104\101\032\098\111\115\115\032\105\115\032\111\117\116\115\105\100\101\032\115\116\114\101\097\109\105\110\103\032\114\097\110\103\101\046"
),70)aV(aI(
'\069\115\099\111\108\104\101\114\032\111\032\097\108\118\111\032\110\097\111\032\108\105\103\097\032\111\032\102\097\114\109\046\032\065\116\105\118\101\032\070\097\114\109\032\111\117\032\080\114\111\103\114\101\115\115\u{e3}\111\032\097\117\116\111\109\u{e1}\116\105\099\097\032\097\099\105\109\097\046'
,
"\083\101\108\101\099\116\105\110\103\032\097\032\116\097\114\103\101\116\032\100\111\101\115\032\110\111\116\032\115\116\097\114\116\032\102\097\114\109\105\110\103\046\032\069\110\097\098\108\101\032\070\097\114\109\032\111\114\032\065\117\116\111\032\112\114\111\103\114\101\115\115\105\111\110\032\097\098\111\118\101\046"
),46)aH=bq local bw=workspace:FindFirstChild('\069\110\101\109\105\101\115')local bx=setmetatable({},
{__mode='\107'})local by={}local bz local bA=setmetatable({},{__mode='\107'})local
function bB(bC)if bx[bC]then return end local bD=bC:FindFirstChildOfClass(
'\072\117\109\097\110\111\105\100')if not bD then return end bx[bC]=true local bE={}aR[bC]=bE bE[#bE+1]=
bD.Died:Connect(function()local bF=bp[bC:GetAttribute('\080\097\100\073\100')]if bF and bF.gate
then by[bF.id]=os.clock()+bF.respawn end if bz then bz()end end)bE[#bE+1]=bC.
AncestryChanged:Connect(function()if bC.Parent~=bw then for bF,bG in ipairs(bE)
do bG:Disconnect()end aR[bC]=nil bx[bC]=nil end end)if bC:GetAttribute('\066\111\115\115')==
true then by[bC:GetAttribute('\080\097\100\073\100')]=nil end end local bC=false local bD={}
local function bE(bF,...)if not aO or bC or os.clock()<(bD[bF]or 0)then return
nil end local bG=bb:FindFirstChild(bF)if not bG or not bG:IsA('\082\101\109\111\116\101\070\117\110\099\116\105\111\110')
then aZ(aI('\082\101\109\111\116\101\070\117\110\099\116\105\111\110\032\097\117\115\101\110\116\101\058\032','\077\105\115\115\105\110\103\032\082\101\109\111\116\101\070\117\110\099\116\105\111\110\058\032')..bF)return nil
end bC=true local bH=table.pack(...)local bI,bJ=false,nil task.spawn(function()
bJ=table.pack(pcall(bG.InvokeServer,bG,table.unpack(bH,1,bH.n)))bI=true bC=false
end)local bK=os.clock()while aO and not bI and os.clock()-bK<10 do task.wait(0.1
)end if not aO then return nil end if not bI then aZ(bF..aI(
'\058\032\097\103\117\097\114\100\097\110\100\111\032\115\101\114\118\105\100\111\114\059\032\115\101\109\032\114\101\112\101\116\105\099\097\111\032\099\111\110\099\111\114\114\101\110\116\101',
'\058\032\119\097\105\116\105\110\103\032\102\111\114\032\115\101\114\118\101\114\059\032\110\111\032\099\111\110\099\117\114\114\101\110\116\032\114\101\116\114\121'))bD[bF]=os.clock()+15 return nil end
if not bJ[1]or bJ[2]==false then aZ(bF..'\058\032'..tostring(bJ[3]or bJ[2]))bD[bF]=os.
clock()+8 return nil end aZ(bF..aI('\058\032\114\101\115\112\111\115\116\097\032\114\101\099\101\098\105\100\097','\058\032\114\101\115\112\111\110\115\101\032\114\101\099\101\105\118\101\100'))
return table.unpack(bJ,2,bJ.n)end local bF={}bF[1]=function(bG)if not a_.open or
a4.Opening.Playing then return end for bH,bI in pairs(bG.Packs or{})do if type(
bI)=='\110\117\109\098\101\114'and bI>0 then local bJ=math.min(bI,a4.Packs.MaxOpenAtOnce or 1)
local bK={}for bL,bM in pairs(bG.Cards or{})do bK[bL]=bM.Level end local bL=bE(
'\079\112\101\110\080\097\099\107',bH,bJ)if aO and type(bL)=='\116\097\098\108\101'then a4.Opening.Play(bH,function()
return bL end,bK,nil,bJ)end return end end end bF[2]=function(bG)if not a_.fuse
then return end local bH=bm()for bI,bJ in pairs(bG.Cards or{})do if not bH[bI]
and not bJ.Favorite and not bJ.Locked and a4.Stats.Fuse(bJ)then bE('\070\117\115\101',bI)
return end end end bF[3]=function(bG)if not a_.equip then return end local bH=a4
.Stats.Best(bG.Cards,function(bH)return a4.Base.SlotOf(bG,bH)~=nil end)if not aE
.sameList(bH,bG.Equipped or{})then bE('\069\113\117\105\112\066\101\115\116')end end bF[4]=function(bG)if
not a_.place or not bG.Base then return end local bH,bI=a4.Base.BestHolders(bG)
if bI then for bJ,bK in pairs(bH)do if bG.Base.Holders[bJ]~=bK then bE(
'\066\097\115\101\080\108\097\099\101',tonumber(bJ),bK)return end end end end bF[5]=function(bG)if not a_.
tree then return end if not a4.Shrine.Open(bG)then aZ(aI(
'\065\114\118\111\114\101\032\098\108\111\113\117\101\097\100\097\058\032\100\101\114\114\111\116\101\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046',
'\084\114\101\101\032\108\111\099\107\101\100\058\032\100\101\102\101\097\116\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046'))return end local bH={}for bI,
bJ in pairs(a4.Shrine.Tree or{})do if bJ.Branch==a_.branch and not a4.Shrine.
CantBuy(bG,bJ.Id)then bH[#bH+1]=bJ end end table.sort(bH,function(bI,bJ)return
bI.Cost==bJ.Cost and bI.Id<bJ.Id or bI.Cost<bJ.Cost end)if bH[1]then bE(
'\084\114\101\101\066\117\121',bH[1].Id)else local bI=aI('\078\101\110\104\117\109\032\110\111\032\101\108\101\103\105\118\101\108\032\110\111\032\114\097\109\111\032',
'\078\111\032\101\108\105\103\105\098\108\101\032\110\111\100\101\032\105\110\032\098\114\097\110\099\104\032')..a_.branch for bJ,bK in pairs(a4.Shrine.Tree or{}
)do if bK.Branch==a_.branch and not a4.Shrine.Owns(bG,bK.Id)then bI=tostring(a4.
Shrine.CantBuy(bG,bK.Id))break end end aZ(aI('\065\114\118\111\114\101\058\032','\084\114\101\101\058\032')..bI)end end bF
[6]=function(bG)if not a_.sacrifice then return end if not a4.Shrine.Open(bG)
then aZ(aI('\083\097\099\114\105\102\105\099\105\111\032\098\108\111\113\117\101\097\100\111\058\032\100\101\114\114\111\116\101\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046',
'\083\097\099\114\105\102\105\099\101\032\108\111\099\107\101\100\058\032\100\101\102\101\097\116\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046'))return end local bH=bm()
for bI in pairs(bG.Cards or{})do local bJ=a4.Cards.ById[bI]local bK=bJ and a4.
Cards.RarityRank[bJ.Rarity]or 999 local bL=aE.sacrificeCount(bG,bI,bH,a_.reserve
,bK,a4.Shrine.Spare(bG,bI),a_.rarities[bJ and bJ.Rarity or'']==true and 999 or 0
)if bL>0 then bE('\083\097\099\114\105\102\105\099\101',bI,bL)return end end aZ(aI(
"\083\097\099\114\105\102\105\099\105\111\058\032\110\101\110\104\117\109\097\032\115\111\098\114\097\032\101\108\101\103\105\118\101\108\046\032\067\111\110\102\105\114\097\032\114\101\115\101\114\118\097\044\032\114\097\114\105\100\097\100\101\032\101\032\099\097\114\116\097\115\032\112\114\111\116\101\103\105\100\097\115\032\101\109\032\065\106\117\115\116\101\115\046"
,
"\083\097\099\114\105\102\105\099\101\058\032\110\111\032\101\108\105\103\105\098\108\101\032\115\112\097\114\101\115\046\032\067\104\101\099\107\032\114\101\115\101\114\118\101\044\032\114\097\114\105\116\121\032\097\110\100\032\112\114\111\116\101\099\116\101\100\032\099\097\114\100\115\032\105\110\032\083\101\116\116\105\110\103\115\046"
))end bF[7]=function(bG)if not a_.upgrades then return end local bH,bI for bJ,bK
in pairs(a4.Progress.Upgrades or{})do local bL=a4.Progress.UpgradeLevel(bG,bK.Id
)if bL<bK.MaxLevel then local bM=a4.Progress.UpgradePrice(bG,bK.Id,bL)if not a4.
Big.lt(bG.Cash,bM)and(not bI or a4.Big.lt(bM,bI))then bH=bK.Id bI=bM end end end
if bH then bE('\066\117\121\085\112\103\114\097\100\101',bH)end end local bG=1 task.spawn(function()while aO
do local bH=ba.Data if bH and not bC and not a4.Opening.Playing then local bI,bJ
=pcall(bF[bG],bH)if not bI then aZ(bJ)end bG=bG%#bF+1 end task.wait(0.8)end end)
local bH=1 local bI=0 local bJ,bK=0,0 local bL,bM,bN=0,0,nil local function bO(
bP,bQ)bQ=bQ or a_.npcId local bR=bp[bQ]local bS={}for bT,bU in ipairs(bn)do if
aE.sameArea(bU,bR)then bS[#bS+1]=bU end end if#bS==0 then return bR end if bN~=
bQ then bN=bQ bL=0 bM=0 end if bP>=bM then bL=bL%#bS+1 bM=bP+8 end return bS[bL]
end local bP=aV('',60)bP.LayoutOrder=799 local bQ=aE.carried(aN:GetAttribute(
'\067\097\114\114\105\101\100\080\097\099\107\115'))local bR,bS,bT=0,0,0 local bU,bV,bW,bX,bY=false,0,nil,0,''local
function bZ()local b_,b0=aE.carried(aN:GetAttribute('\067\097\114\114\105\101\100\080\097\099\107\115'))for b1 in
pairs(b_)do if not bQ[b1]then bQ[b1]=true bR+=1 end end bT=b0 end a2(aN:
GetAttributeChangedSignal('\067\097\114\114\105\101\100\080\097\099\107\115'),bZ)bZ()local function b_(b0,b1,b2)
local b3=aN:GetAttribute('\067\097\114\114\121\067\097\112\097\099\105\116\121')if type(b3)~='\110\117\109\098\101\114'or b3<1 then b3=a4
.Progress.CarryCapacity(b2)end bP.Text=aI('\080\097\099\111\116\101\115\032\099\111\108\101\116\097\100\111\115\058\032',
'\080\097\099\107\115\032\099\111\108\108\101\099\116\101\100\058\032')..bR..aI('\032\u{b7}\032\077\111\099\104\105\108\097\058\032','\032\u{b7}\032\066\097\103\058\032')..bT..'\047'..b3..
aI('\032\u{b7}\032\086\105\097\103\101\110\115\058\032','\032\u{b7}\032\084\114\105\112\115\058\032')..bS..'\n'..bY if not a_.returnFull or
not(a_.farm or a_.boss)then bU=false bY=''return false end if not b0 or not b1
or b1.Health<=0 then bU=false return false end local b4=aN:GetAttribute(
'\066\097\115\101\083\112\097\119\110')local b5=typeof(b4)=='\067\070\114\097\109\101'and(b0.Position-b4.Position).Magnitude<
45 if bU then local b6=aE.tripState(bT,b5,os.clock()-bV)if b6=='\100\101\108\105\118\101\114\101\100'or b6
=='\108\111\115\116'then bU=false if b5 then bS+=1 bY=aI(
'\069\110\116\114\101\103\097\032\099\111\110\099\108\117\u{ed}\100\097\046\032\082\101\116\111\109\097\110\100\111\032\111\032\102\097\114\109\046',
'\068\101\108\105\118\101\114\121\032\099\111\109\112\108\101\116\101\046\032\082\101\115\117\109\105\110\103\032\102\097\114\109\105\110\103\046')if bW then b0.CFrame=bW end bJ=0 bM=0
else bY=aI('\077\111\099\104\105\108\097\032\118\097\122\105\097\032\102\111\114\097\032\100\097\032\098\097\115\101\059\032\118\105\097\103\101\109\032\110\u{e3}\111\032\099\111\110\116\097\098\105\108\105\122\097\100\097\046',
'\066\097\103\032\101\109\112\116\105\101\100\032\097\119\097\121\032\102\114\111\109\032\104\111\109\101\059\032\116\114\105\112\032\110\111\116\032\099\111\117\110\116\101\100\046')end return true end if b6==
'\116\105\109\101\111\117\116'then bU=false bX=os.clock()+5 bY=aI(
'\069\110\116\114\101\103\097\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\100\097\046\032\084\101\110\116\097\110\100\111\032\111\032\112\111\114\116\097\108\032\110\111\118\097\109\101\110\116\101\046',
'\068\101\108\105\118\101\114\121\032\110\111\116\032\099\111\110\102\105\114\109\101\100\046\032\082\101\116\114\121\105\110\103\032\116\104\101\032\112\111\114\116\097\108\046')end return true end if bT<b3 then
return false end if os.clock()<bX then return true end bX=os.clock()+3 local b6=
workspace:FindFirstChild('\066\111\115\115\080\111\114\116\097\108\115')local b7,b8,b9=nil,nil,math.huge if b6
then for ca,cb in ipairs(b6:GetDescendants())do if cb:IsA('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and
cb.Name=='\080\111\114\116\097\108\080\114\111\109\112\116'and cb.Enabled then local cc=cb.Parent local cd=cc:IsA(
'\065\116\116\097\099\104\109\101\110\116')and cc.WorldCFrame or cc:IsA('\066\097\115\101\080\097\114\116')and cc.CFrame if cd then
local ce=(b0.Position-cd.Position).Magnitude if ce<b9 then b7=cb b8=cd b9=ce end
end end end end if not b7 then bY=aI(
'\077\111\099\104\105\108\097\032\099\104\101\105\097\046\032\065\103\117\097\114\100\097\110\100\111\032\117\109\032\112\111\114\116\097\108\032\100\105\115\112\111\110\u{ed}\118\101\108\046',
'\066\097\103\032\102\117\108\108\046\032\087\097\105\116\105\110\103\032\102\111\114\032\097\110\032\097\118\097\105\108\097\098\108\101\032\112\111\114\116\097\108\046')return false end bW=b0.CFrame bV=os
.clock()bU=true b0.CFrame=b8+Vector3.new(0,0,3)bY=aI(
'\082\101\116\111\114\110\097\110\100\111\032\112\101\108\111\032\112\111\114\116\097\108\059\032\097\103\117\097\114\100\097\110\100\111\032\099\111\110\102\105\114\109\097\u{e7}\u{e3}\111\032\100\097\032\101\110\116\114\101\103\097\046',
"\082\101\116\117\114\110\105\110\103\032\116\104\114\111\117\103\104\032\116\104\101\032\112\111\114\116\097\108\059\032\119\097\105\116\105\110\103\032\102\111\114\032\100\101\108\105\118\101\114\121\032\099\111\110\102\105\114\109\097\116\105\111\110\046")task.spawn(
function()task.wait(0.3)if not aO or not bU or not a_.returnFull or not b7.
Parent then return end if type(fireproximityprompt)=='\102\117\110\099\116\105\111\110'then pcall(
fireproximityprompt,b7)else b7:InputHoldBegin()task.wait(b7.HoldDuration+0.1)if
b7.Parent then b7:InputHoldEnd()end end end)return true end local function b0()
local b1=ba.Data if not b1 then aZ(aI('\065\103\117\097\114\100\097\110\100\111\032\100\097\100\111\115\032\114\101\112\108\105\099\097\100\111\115\046\046\046',
'\087\097\105\116\105\110\103\032\102\111\114\032\114\101\112\108\105\099\097\116\101\100\032\100\097\116\097\046\046\046'))return end bw=workspace:FindFirstChild(
'\069\110\101\109\105\101\115')local b2=bw and bw:GetChildren()or{}local b3={}local b4=aE.nextBoss(bn
,b1.Gates or{})local b5=aN.Character local b6=b5 and b5:FindFirstChild(
'\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')local b7=b5 and b5:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')if b_(b6,
b7,b1)then return end local b8=a4.Power.Level(b1.Power or 0)local b9 if a_.
farmMode=='\065\117\116\111'and a_.farm then for ca,cb in ipairs(bn)do if not cb.gate and cb
.level<=b8 then b9=cb end end end local ca=(a_.farmMode=='\078\080\067'or a_.farmMode==
'\077\105\120\101\100')and bO(os.clock())or b9 and bO(os.clock(),b9.id)local cb,cc,cd,ce=nil,
false,false,math.huge local cf={}for cg,ch in ipairs(b2)do bB(ch)local ci=ch:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cj=ch:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')
if ci and ci.Health>0 and cj then local ck=ch:GetAttribute('\080\097\100\073\100')if ck then cf
[ck]=true end if b6 then local cl=ch:GetAttribute('\066\111\115\115')==true local cm=ch:
GetAttribute('\076\101\118\101\108')or 1 local cn=a_.boost or cm<=b8 if a_.farmMode~='\065\117\116\111'then
cn=aE.manualEligible(a_.farmMode,cl,ck,a_.bossId,a_.npcId)or(not cl and(a_.
farmMode=='\078\080\067'or a_.farmMode=='\077\105\120\101\100')and aE.sameArea(bp[ck],bp[a_.npcId]))
elseif a_.progress and cl then cn=cn and b4 and ck==b4.id end if cn and(a_.farm
or(a_.boss and(cl or a_.farmMode=='\077\105\120\101\100')))then local co=(b6.Position-cj.
Position).Magnitude local cp=os.clock()-(bA[ch]or-10)<1 if cp then co-=2000000
end if ca and not cl and ck~=ca.id then co+=1000000 end if(a_.boss or a_.
farmMode=='\077\105\120\101\100')and cl then co=co-1000000000 end if co<ce then ce=co cb=cj cc=
cl cd=cp end end end end end for cg,ch in ipairs(bn)do if ch.gate then local ci=
cf[ch.id]and aI('\086\073\086\079','\065\076\073\086\069')or(by[ch.id]and(math.ceil(math.max(0,by[ch.id]-os
.clock()))..aI('\115\032\101\115\116\105\109\097\100\111\115','\115\032\101\115\116\105\109\097\116\101\100'))or aI('\110\u{e3}\111\032\111\098\115\101\114\118\097\100\111',
'\110\111\116\032\111\098\115\101\114\118\101\100'))b3[#b3+1]=aE.displayName(ch.enemy)..'\058\032'..ci end end aX.Text=
table.concat(b3,'\032\124\032')local cg=(a_.farmMode=='\066\111\115\115'or a_.farmMode=='\077\105\120\101\100'and cf
[a_.bossId])and bp[a_.bossId]or(a_.farmMode=='\078\080\067'or a_.farmMode=='\077\105\120\101\100')and bp
[a_.npcId]or b4 local ch=a_.farmMode=='\077\105\120\101\100'and'\078\080\067\115\032\043\032\066\111\115\115'or a_.farmMode br.
Text=ch..'\032\u{b7}\032'..(cg and aE.displayName(cg.name)or aI('\083\101\109\032\097\108\118\111','\078\111\032\116\097\114\103\101\116'
))..'\032\u{b7}\032'..(cb and aI('\065\108\118\111\032\101\110\099\111\110\116\114\097\100\111','\084\097\114\103\101\116\032\102\111\117\110\100')or aI(
'\065\103\117\097\114\100\097\110\100\111\032\115\112\097\119\110\047\115\116\114\101\097\109\105\110\103\032\111\117\032\108\105\098\101\114\097\099\097\111\032\100\097\032\097\114\101\097',
'\087\097\105\116\105\110\103\032\102\111\114\032\115\112\097\119\110\047\115\116\114\101\097\109\105\110\103\032\111\114\032\097\114\101\097\032\117\110\108\111\099\107'))if not(b6 and b7 and b7.Health>0)
or a4.Opening.Playing then return end if a_.farm or a_.boss then if a_.farmMode
=='\077\105\120\101\100'and not cf[a_.bossId]then local ci=bp[a_.bossId]local cj=os.clock()if
ci and typeof(ci.cf)=='\067\070\114\097\109\101'and cj>=bJ and cj>=(by[a_.bossId]or 0)then bJ=cj+
20 bK=cj+2 b6.CFrame=ci.cf+Vector3.new(0,4,0)end if cj<bK then br.Text=aI(
'\086\101\114\105\102\105\099\097\110\100\111\032\115\112\097\119\110\032\100\111\032\098\111\115\115\046\046\046','\067\104\101\099\107\105\110\103\032\098\111\115\115\032\115\112\097\119\110\046\046\046')return end end if ca and
not cc and not cd and not cf[ca.id]and not(a_.farmMode=='\077\105\120\101\100'and cf[a_.bossId]
)and typeof(ca.cf)=='\067\070\114\097\109\101'then local ci=ca.cf+Vector3.new(0,4,0)if(b6.Position
-ci.Position).Magnitude>15 then b6.CFrame=ci end return end if cb then local ci=
b6.Position-cb.Position if ci.Magnitude>10 then local cj=cb.Position+(ci.
Magnitude>0 and ci.Unit or Vector3.new(0,0,1))*7 b6.CFrame=CFrame.lookAt(cj,cb.
Position)end else local ci=a_.farmMode=='\066\111\115\115'and bp[a_.bossId]or(a_.farmMode==
'\078\080\067'or a_.farmMode=='\077\105\120\101\100')and bp[a_.npcId]or a_.progress and b4 if ca then ci
=ca end if ci and typeof(ci.cf)=='\067\070\114\097\109\101'and(a_.farmMode~='\065\117\116\111'or a_.boost or
ci.level<=b8)then local cj=ci.cf.Position+Vector3.new(0,4,0)if(b6.Position-cj).
Magnitude>15 then b6.CFrame=CFrame.new(cj)end end end end if a_.abilities and cb
and os.clock()-bI>0.6 and not aM:GetFocusedTextBox()then bI=os.clock()local ci=
a4.Ability.Loadout(b1)if#ci>0 then bH=(bH-1)%#ci+1 local cj=a4.Ability.Keys[bH]
if cj then local ck=game:GetService('\086\105\114\116\117\097\108\073\110\112\117\116\077\097\110\097\103\101\114')ck:SendKeyEvent(true,
cj,false,game)ck:SendKeyEvent(false,cj,false,game)end bH=bH+1 end end end local
b1,b2,b3=false,false,-1 bz=function()if not aO or b1 then return end b1=true
task.delay(math.max(0,0.05-(os.clock()-b3)),function()b1=false if not aO then
return end if b2 then bz()return end b2=true b3=os.clock()local b4,b5=pcall(b0)
b2=false if not b4 then aZ(b5)end end)end local b4,b5 local function b6(b7)if b4
==b7 then return end if b5 then b5:Disconnect()end b4=b7 if not b7 then return
end b5=b7.DescendantAdded:Connect(function(b8)local b9=b8 while b9 and b9.Parent
~=b7 do b9=b9.Parent end if b9 and(b8==b9 or b8.Name=='\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116'or b8:
IsA('\072\117\109\097\110\111\105\100'))and b9:IsA('\077\111\100\101\108')and b9:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')and
b9:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')then bA[b9]=os.clock()bz()end end)aP[#aP+1]=
b5 end b6(bw)a2(workspace.ChildAdded,function(b7)if b7.Name=='\069\110\101\109\105\101\115'then b6(b7
)bz()end end)task.spawn(function()while aO do bz()task.wait(0.15)end end)aU=aU+1
local b7=aG.button(aH,aI('\080\097\114\097\114\032\116\111\100\097\115\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115',
'\083\116\111\112\032\097\108\108\032\097\117\116\111\109\097\116\105\111\110'),aU)a2(b7.Activated,function()for b8,b9 in pairs(a_)do if
type(b9)=='\098\111\111\108\101\097\110'then a_[b8]=false end end pcall(be,bc)for b8,b9 in ipairs(bi)
do b9()end aZ(aI('\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\114\097\100\097\115\046','\065\117\116\111\109\097\116\105\111\110\032\115\116\111\112\112\101\100\046'))end)aU=
aU+1 local b8=aG.button(aH,aI('\069\120\112\111\114\116\097\114\032\100\105\097\103\110\u{f3}\115\116\105\099\111\032\100\101\032\116\101\115\116\101',
'\069\120\112\111\114\116\032\116\101\115\116\032\100\105\097\103\110\111\115\116\105\099\115'),aU)a2(b8.Activated,function()if type(writefile)==
'\102\117\110\099\116\105\111\110'then local b9='\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095\084\101\115\116\095'..os.time()..'\046\106\115\111\110'local ca,
cb=pcall(writefile,b9,aL:JSONEncode({placeId=game.PlaceId,version=game.
PlaceVersion,log=aY,config=a_,patches=bg,pending=bC}))aZ(ca and b9 or tostring(
cb))end end)aZ(aI('\080\114\111\110\116\111\032\112\097\114\097\032\116\101\115\116\101\046\032\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\100\101\115\108\105\103\097\100\097\115\046',
'\082\101\097\100\121\032\102\111\114\032\116\101\115\116\105\110\103\046\032\065\117\116\111\109\097\116\105\111\110\032\105\115\032\111\102\102\046'))return aT end end)()local aF,aG,aH=
false,nil,false local aI=task.spawn(function()aF,aG=pcall(aE,{ui=N,page=M('\070\097\114\109'
),T=function(aI,aJ)return b.language=='\112\116'and aI or aJ end,progress=aD,attach=
function(aI)j=aI end,section=M,quick=function(aI)k=aI end})aH=true end)local aJ=
os.clock()+45 while l and not aH and os.clock()<aJ do task.wait(0.05)end if not
aH then pcall(task.cancel,aI)aF=false aG=p(
'\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\052\053\032\115\101\103\117\110\100\111\115\032\101\120\099\101\100\105\100\111\046\032\u{da}\108\116\105\109\097\032\101\116\097\112\097\058\032',
'\052\053\045\115\101\099\111\110\100\032\116\105\109\101\111\117\116\046\032\076\097\115\116\032\115\116\097\103\101\058\032')..ar.Text end if not l then return end if not
aF then if j then pcall(j)j=nil end aq.Text=p(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\099\097\114\114\101\103\097\114\032\097\115\032\102\117\110\u{e7}\u{f5}\101\115',
'\067\111\117\108\100\032\110\111\116\032\108\111\097\100\032\116\104\101\032\102\101\097\116\117\114\101\115')ar.Text=p(
'\070\101\099\104\101\032\111\032\112\097\105\110\101\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046\032\068\101\116\097\108\104\101\115\058\032',
'\067\108\111\115\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\116\114\121\032\097\103\097\105\110\046\032\068\101\116\097\105\108\115\058\032')..tostring(aG)av.Text=p(
'\067\097\114\114\101\103\097\109\101\110\116\111\032\105\110\116\101\114\114\111\109\112\105\100\111','\076\111\097\100\105\110\103\032\105\110\116\101\114\114\117\112\116\101\100')b.ready()return end local
function aK(aL,aM)local aN,aO,aP=false,false,nil local aQ=task.spawn(function()
aO,aP=pcall(aL)aN=true end)local aR=os.clock()+aM while l and not aN and os.
clock()<aR do task.wait(0.05)end if not aN then pcall(task.cancel,aQ)return
false,p('\084\101\109\112\111\032\108\105\109\105\116\101\032\101\120\099\101\100\105\100\111','\084\105\109\101\032\108\105\109\105\116\032\101\120\099\101\101\100\101\100')end return aO,aP end aD(
0.92,'\077\111\110\116\097\110\100\111\032\111\115\032\097\106\117\115\116\101\115\032\100\101\032\116\101\108\097\u{2026}','\066\117\105\108\100\105\110\103\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\u{2026}')
local aL local aM,aN=aK(function()local aM=M('\065\106\117\115\116\101\115')X(aM)local aN=N.button(aM
,p('\u{1f1e7}\u{1f1f7}\032\032\073\100\105\111\109\097\058\032\080\111\114\116\117\103\117\u{ea}\115\032\032\u{b7}\032\032\065\108\116\101\114\097\114',
'\u{1f1fa}\u{1f1f8}\032\032\076\097\110\103\117\097\103\101\058\032\069\110\103\108\105\115\104\032\032\u{b7}\032\032\067\104\097\110\103\101'),870)r(aN.Activated,
function()if type(b.chooseLanguage)=='\102\117\110\099\116\105\111\110'then b.chooseLanguage()end end)N.
label(aM,'\084\101\120\116\076\097\098\101\108',p(
'\084\114\111\099\097\114\032\111\032\105\100\105\111\109\097\032\114\101\097\098\114\101\032\111\032\112\097\105\110\101\108\032\099\111\109\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\117\115\097\100\097\115\046',
'\067\104\097\110\103\105\110\103\032\108\097\110\103\117\097\103\101\032\114\101\111\112\101\110\115\032\116\104\101\032\112\097\110\101\108\032\119\105\116\104\032\097\117\116\111\109\097\116\105\111\110\032\112\097\117\115\101\100\046'),44,871)N.label(aM
,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
"\084\111\113\117\101\032\065\058\032\097\098\114\105\114\047\102\101\099\104\097\114\046\032\083\101\103\117\114\101\032\048\044\054\053\115\032\101\032\115\111\108\116\101\058\032\097\108\116\101\114\110\097\114\032\112\114\111\103\114\101\115\115\097\111\046\032\065\114\114\097\115\116\101\058\032\109\111\118\101\114\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\105\110\101\108\046"
or
"\084\097\112\032\065\058\032\116\111\103\103\108\101\032\112\097\110\101\108\046\032\072\111\108\100\032\048\046\054\053\115\032\097\110\100\032\114\101\108\101\097\115\101\058\032\116\111\103\103\108\101\032\112\114\111\103\114\101\115\115\105\111\110\046\032\068\114\097\103\058\032\109\111\118\101\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\110\101\108\046"
,68,900)local aO=N.label(aM,'\084\101\120\116\066\111\120','\069\066\065\053\070\070',40,902)aO.ClearTextOnFocus=false
N.label(aM,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\067\111\114\032\100\101\032\100\101\115\116\097\113\117\101\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\120\046\058\032\070\070\067\065\052\050\041'or
'\065\099\099\101\110\116\032\099\111\108\111\114\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\046\103\046\032\070\070\067\065\052\050\041',30,901)local aP=
'\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095\084\104\101\109\101\046\106\115\111\110'local aQ='\083\117\112\101\114\112\111\119\101\114'local aR={Superpower={
'\048\067\048\067\049\048','\050\055\049\056\051\053','\057\054\051\067\068\067','\070\070\070\053\070\070','\067\065\066\052\068\056','\069\066\065\053\070\070','\049\057\048\070\050\051'},Potato={'\050\051\049\070\049\057'
,'\052\049\051\054\050\055','\055\052\053\056\051\049','\070\067\070\054\069\050','\068\053\067\051\065\051','\069\066\065\053\070\070','\051\048\050\055\049\068'},Bloodmoon={'\049\055\048\067\049\051',
'\051\048\049\051\049\070','\054\066\050\054\051\068','\070\070\069\065\070\048','\068\050\065\048\066\048','\070\070\052\053\054\056','\050\051\048\070\049\065'},Midnight={'\049\048\049\051\049\069',
'\049\068\050\052\051\054','\051\053\052\054\054\053','\069\068\070\051\070\070','\065\052\066\051\067\067','\055\051\057\070\070\070','\049\053\049\066\050\065'},Emerald={'\048\066\049\057\049\054',
'\049\052\050\069\050\054','\050\066\053\057\052\055','\069\054\070\070\070\051','\057\069\067\054\066\051','\053\054\068\068\065\048','\049\048\050\052\049\069'},Arctic={'\049\049\049\066\050\054','\049\067\050\068\051\068'
,'\051\054\053\049\054\065','\069\066\070\056\070\070','\065\057\067\055\068\065','\055\057\068\057\070\070','\049\055\050\051\051\049'}}local function aS(aT)return
Color3.fromRGB(tonumber(aT:sub(1,2),16),tonumber(aT:sub(3,4),16),tonumber(aT:
sub(5,6),16))end local function aT()if type(writefile)=='\102\117\110\099\116\105\111\110'then task.
spawn(function()pcall(writefile,aP,e:JSONEncode({preset=aQ,hex=aO.Text}))end)end
end local function aU(aV)if type(aV)~='\115\116\114\105\110\103'or not aV:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')
then return false end o=Color3.fromRGB(tonumber(aV:sub(1,2),16),tonumber(aV:sub(
3,4),16),tonumber(aV:sub(5,6),16))m.accent=o F.BackgroundColor3=o z.
BackgroundColor3=o L(J)for aW,aX in ipairs(O)do aX()end for aW,aX in pairs(H)do
aX.ScrollBarImageColor3=o end aO.Text=aV return true end local function aV(aW)
local aX=aR[aW]if not aX then return end aQ=aW for aY,aZ in ipairs({'\100\097\114\107',
'\116\105\108\101','\101\100\103\101','\116\101\120\116','\109\117\116\101\100','\097\099\099\101\110\116','\115\105\100\101\098\097\114'})do m[aZ]=aS(aX[aY])end o=m.
accent for aY,aZ in pairs(n)do if aY.Parent then for a_,a0 in pairs(aZ)do aY[a_]
=m[a0]end end end local aY=w:FindFirstChildOfClass('\085\073\071\114\097\100\105\101\110\116')if aY then aY.
Color=ColorSequence.new(m.tile,m.dark)end aU(aX[6])end N.label(aM,'\084\101\120\116\076\097\098\101\108',p(
'\084\069\077\065\083\032\080\082\079\078\084\079\083','\084\072\069\077\069\032\080\082\069\083\069\084\083'),32,880)for aW,aX in ipairs({'\083\117\112\101\114\112\111\119\101\114',
'\080\111\116\097\116\111','\066\108\111\111\100\109\111\111\110','\077\105\100\110\105\103\104\116','\069\109\101\114\097\108\100','\065\114\099\116\105\099'})do local aY=N.button(aM,aX,
880+aW)r(aY.Activated,function()aV(aX)aT()end)end aL=function()if type(readfile)
=='\102\117\110\099\116\105\111\110'then local aW=readfile(aP)if type(aW)=='\115\116\114\105\110\103'and#aW<=2048 then
local aX=e:JSONDecode(aW)if l and aO.Parent and type(aX)=='\116\097\098\108\101'then if aR[aX.
preset]then aV(aX.preset)end aU(aX.hex)end end end end r(aO.FocusLost,function()
local aW=aO.Text:gsub('\035',''):upper()if aU(aW)then aT()end end)end,5)if not l
then return end aD(0.96,'\065\106\117\115\116\097\110\100\111\032\111\032\112\097\105\110\101\108\032\u{e0}\032\115\117\097\032\116\101\108\097\u{2026}',
'\070\105\116\116\105\110\103\032\116\104\101\032\112\097\110\101\108\032\116\111\032\121\111\117\114\032\115\099\114\101\101\110\u{2026}')local aO,aP=pcall(W)if not aO then S=
table.clone(R)pcall(W)end local aQ if not aM or not aO then aQ=p(
'\065\106\117\115\116\101\115\032\118\105\115\117\097\105\115\032\105\110\099\111\109\112\108\101\116\111\115\058\032','\083\111\109\101\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\032\102\097\105\108\101\100\058\032')..tostring(aN
or aP)E.Text=aQ warn('\091\065\110\111\110\072\117\098\032'..a..'\093\032'..aQ)end aD(1,
'\080\097\105\110\101\108\032\112\114\111\110\116\111\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\101\115\116\u{e3}\111\032\112\097\117\115\097\100\097\115\046',
'\080\097\110\101\108\032\114\101\097\100\121\046\032\070\101\097\116\117\114\101\115\032\097\114\101\032\112\097\117\115\101\100\046')aq.Text=p('\083\101\117\032\112\097\105\110\101\108\032\101\115\116\u{e1}\032\112\114\111\110\116\111',
'\089\111\117\114\032\112\097\110\101\108\032\105\115\032\114\101\097\100\121')al=true if an()then ao:Destroy()else task.spawn(function()
while l and ao.Parent and not an()do task.wait(0.05)end if l and ao.Parent then
ao:Destroy()end end)end pcall(b.ready)if aL then task.defer(function()aK(aL,2)
end)end
