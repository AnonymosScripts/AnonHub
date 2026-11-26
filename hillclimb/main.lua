-- Luau
-- AnonHub protected distribution 0.40.3
-- local BOOT_VERSION="0.38.13"
local a='\048\046\051\056\046\049\051'local b=...assert(type(b)=='\116\097\098\108\101'and b.access,
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
'\065\110\111\110\072\117\098\072\105\108\108\067\108\105\109\098',ResetOnSpawn=false,DisplayOrder=10032,ZIndexBehavior=Enum.
ZIndexBehavior.Sibling},g:WaitForChild('\080\108\097\121\101\114\071\117\105'))local w=q('\070\114\097\109\101',{
AnchorPoint=Vector2.new(0.5,0.5),Size=UDim2.fromScale(0.94,0.88),Position=UDim2.
fromScale(0.5,0.5),BackgroundColor3=m.dark,ClipsDescendants=true},v)t(w,9)u(w)q(
'\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(m.tile,m.dark),Rotation=90},w)local x=q(
'\070\114\097\109\101',{Size=UDim2.new(0,174,1,0),BackgroundColor3=m.sidebar},w)q('\084\101\120\116\076\097\098\101\108',{
Text='\065\078\079\078\072\085\066',Position=UDim2.fromOffset(17,24),Size=UDim2.fromOffset(145,28),
BackgroundTransparency=1,TextColor3=m.text,Font=Enum.Font.GothamBold,TextSize=20
,TextXAlignment=Enum.TextXAlignment.Left},x)q('\084\101\120\116\076\097\098\101\108',{Text=
'\072\073\076\076\032\067\076\073\077\066\032\047\032\067\079\078\084\082\079\076',Position=UDim2.fromOffset(18,56),Size=UDim2.fromOffset(
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
,O)local P={Farm=p('\065\117\116\111\032\087\105\110\032\049\048\075\032\u{b7}\032\077\117\110\100\111\032\049','\065\117\116\111\032\087\105\110\032\049\048\075\032\u{b7}\032\087\111\114\108\100\032\049'),
Cartas=p('\079\114\103\097\110\105\122\101\032\115\117\097\032\099\111\108\101\u{e7}\u{e3}\111\032\101\032\097\117\116\111\109\097\116\105\122\101\032\097\115\032\109\101\108\104\111\114\105\097\115\046',
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
TextSize=12,TextColor3=N=='\070\097\114\109'and m.dark or m.muted,Size=UDim2.new(0.5,-8,1,-8
),Position=UDim2.new(R*0.5,4,0,4),BackgroundColor3=N=='\070\097\114\109'and o or m.tile,
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
620}end local Q='\065\110\111\110\072\117\098\095\072\105\108\108\067\108\105\109\098\095\076\097\121\111\117\116\095'..g.UserId..'\046\106\115\111\110'local R={width=760
,height=580,scale=d.TouchEnabled and 80 or 100,launcher=56,x=0.5,y=0.5}local S=
table.clone(R)local T={width={300,1100},height={340,900},scale={65,150},launcher
={44,88},x={0,1},y={0,1}}if type(readfile)=='\102\117\110\099\116\105\111\110'then pcall(function()local
U=e:JSONDecode(readfile(Q))for V,W in pairs(T)do local X=U[V]if type(X)==
'\110\117\109\098\101\114'and X==X then S[V]=math.clamp(X,W[1],W[2])end end end)end local function
U()if type(writefile)=='\102\117\110\099\116\105\111\110'then pcall(writefile,Q,e:JSONEncode(S))end end
local V=q('\085\073\083\099\097\108\101',{Scale=1},w)local function W()local X=v.AbsoluteSize if X.X<
100 or X.Y<100 then return end local Y=P.resolve(X.X,X.Y,S)w.AnchorPoint=Vector2
.zero w.Size=UDim2.fromOffset(Y.width,Y.height)w.Position=UDim2.fromOffset(Y.x,Y
.y)V.Scale=Y.scale x.Visible=not Y.compact y.Position=UDim2.fromOffset(Y.compact
and 0 or 174,0)y.Size=UDim2.new(1,Y.compact and 0 or-174,0,76)G.Parent=w G.
Position=Y.compact and UDim2.new(0,12,1,-84)or UDim2.fromOffset(12,100)G.Size=Y.
compact and UDim2.new(1,-24,0,44)or UDim2.new(0,150,1,-180)G.
BackgroundTransparency=1 for Z,_ in ipairs({'\070\097\114\109','\065\106\117\115\116\101\115'})do local aa=I[_]if
aa then aa.Size=Y.compact and UDim2.new(0.5,-6,0,42)or UDim2.new(1,0,0,44)aa.
Position=Y.compact and UDim2.new((Z-1)*0.5,0,0,0)or UDim2.fromOffset(0,(Z-1)*52)
aa.Text=Y.compact and(b.language=='\112\116'and _ or K[_])or string.format(
'\037\048\050\100\032\u{b7}\032\037\115',Z,b.language=='\112\116'and _ or K[_])aa.TextXAlignment=Y.compact and
Enum.TextXAlignment.Center or Enum.TextXAlignment.Left end end for aa,Z in
pairs(H)do Z.Position=UDim2.fromOffset(Y.compact and 16 or 190,88)Z.Size=UDim2.
new(1,Y.compact and-32 or-206,1,Y.compact and-184 or-136)end E.Position=UDim2.
new(0,Y.compact and 16 or 190,1,-34)E.Size=UDim2.new(1,Y.compact and-40 or-214,0
,26)F.Size=UDim2.fromOffset(S.launcher,S.launcher)end r(v:
GetPropertyChangedSignal('\065\098\115\111\108\117\116\101\083\105\122\101'),W)local aa={}local function X(Y)N.
label(Y,'\084\101\120\116\076\097\098\101\108',p('\084\069\076\065\032\069\032\084\079\081\085\069','\068\073\083\080\076\065\089\032\038\032\084\079\085\067\072'),32,-10)N.label(Y,
'\084\101\120\116\076\097\098\101\108',p(
'\065\114\114\097\115\116\101\032\111\032\099\097\098\101\u{e7}\097\108\104\111\032\112\097\114\097\032\109\111\118\101\114\046\032\085\115\101\032\111\032\099\097\110\116\111\032\105\110\102\101\114\105\111\114\032\112\097\114\097\032\114\101\100\105\109\101\110\115\105\111\110\097\114\046\032\079\115\032\097\106\117\115\116\101\115\032\115\u{e3}\111\032\115\097\108\118\111\115\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046'
,
"\068\114\097\103\032\116\104\101\032\104\101\097\100\101\114\032\116\111\032\109\111\118\101\046\032\085\115\101\032\116\104\101\032\098\111\116\116\111\109\032\099\111\114\110\101\114\032\116\111\032\114\101\115\105\122\101\046\032\067\104\097\110\103\101\115\032\097\114\101\032\115\097\118\101\100\032\097\117\116\111\109\097\116\105\099\097\108\108\121\046"
),64,-9)for Z,_ in ipairs({{'\115\099\097\108\101','\069\115\099\097\108\097\032\100\097\032\105\110\116\101\114\102\097\099\101','\073\110\116\101\114\102\097\099\101\032\115\099\097\108\101',5,
'\037'},{'\119\105\100\116\104','\076\097\114\103\117\114\097\032\100\111\032\112\097\105\110\101\108','\080\097\110\101\108\032\119\105\100\116\104',10,'\032\112\120'},{'\104\101\105\103\104\116',
'\065\108\116\117\114\097\032\100\111\032\112\097\105\110\101\108','\080\097\110\101\108\032\104\101\105\103\104\116',10,'\032\112\120'},{'\108\097\117\110\099\104\101\114','\084\097\109\097\110\104\111\032\100\111\032\102\108\117\116\117\097\110\116\101',
'\070\108\111\097\116\105\110\103\032\098\117\116\116\111\110\032\115\105\122\101',2,'\032\112\120'}})do local ab=_[1]local ac=q('\070\114\097\109\101',{Size=UDim2.
new(1,-8,0,76),BackgroundColor3=m.tile,LayoutOrder=-8+Z},Y)t(ac,10)u(ac)local ad
=N.label(ac,'\084\101\120\116\076\097\098\101\108',p(_[2],_[3]),28,0)ad.Size=UDim2.new(1,0,0,28)local ae=N.
button(ac,'\u{2212}',0)ae.Size=UDim2.fromOffset(42,36)ae.Position=UDim2.
fromOffset(12,32)ae.TextXAlignment=Enum.TextXAlignment.Center local af=N.label(
ac,'\084\101\120\116\066\111\120','',36,0)af.Position=UDim2.fromOffset(62,32)af.Size=UDim2.new(1,-124
,0,36)af.TextXAlignment=Enum.TextXAlignment.Center local ag=N.button(ac,'\043',0)ag
.Size=UDim2.fromOffset(42,36)ag.Position=UDim2.new(1,-54,0,32)ag.TextXAlignment=
Enum.TextXAlignment.Center local function ah()af.Text=tostring(math.floor(S[ab])
).._[5]end aa[#aa+1]=ah local function ai(aj)if aj and aj==aj then S[ab]=math.
clamp(aj,T[ab][1],T[ab][2])W()U()end ah()end r(ae.Activated,function()ai(S[ab]-_
[4])end)r(ag.Activated,function()ai(S[ab]+_[4])end)r(af.FocusLost,function()ai(
tonumber(af.Text:match('\091\037\100\037\046\093\043')))end)ah()end local ab=N.button(Y,p(
'\067\101\110\116\114\097\108\105\122\097\114\032\101\032\114\101\115\116\097\117\114\097\114\032\116\097\109\097\110\104\111','\067\101\110\116\101\114\032\097\110\100\032\114\101\115\116\111\114\101\032\115\105\122\101'),-3)r(ab.Activated,
function()S=table.clone(R)W()U()for ac,ad in ipairs(aa)do ad()end end)end local
ab=q('\084\101\120\116\066\117\116\116\111\110',{Text='\u{25e2}',TextSize=20,TextColor3=m.muted,
BackgroundTransparency=1,Size=UDim2.fromOffset(30,30),Position=UDim2.new(1,-30,1
,-30)},w)local ac local function ad(ae,af)if ae.UserInputType~=Enum.
UserInputType.MouseButton1 and ae.UserInputType~=Enum.UserInputType.Touch then
return end ac={input=ae,kind=af,origin=ae.Position,pos=w.Position,width=w.Size.X
.Offset,height=w.Size.Y.Offset}end r(y.InputBegan,function(ae)ad(ae,'\109\111\118\101')end)
r(ab.InputBegan,function(ae)ad(ae,'\114\101\115\105\122\101')end)r(d.InputChanged,function(ae)if
not ac or(ae~=ac.input and ae.UserInputType~=Enum.UserInputType.MouseMovement)
then return end local af=ae.Position-ac.origin local ag=v.AbsoluteSize if ac.
kind=='\114\101\115\105\122\101'then S.width=math.clamp(ac.width+af.X/V.Scale,300,1100)S.height=
math.clamp(ac.height+af.Y/V.Scale,340,900)else local ah=math.max(1,ag.X-16-w.
Size.X.Offset*V.Scale)local ai=math.max(1,ag.Y-16-w.Size.Y.Offset*V.Scale)S.x=
math.clamp((ac.pos.X.Offset+af.X-8)/ah,0,1)S.y=math.clamp((ac.pos.Y.Offset+af.Y-
8)/ai,0,1)end W()end)r(d.InputEnded,function(ae)if ac and ae==ac.input then ac=
nil U()for af,ag in ipairs(aa)do ag()end end end)local function ae()if not l
then return end l=false if j then pcall(j)end for af,ag in ipairs(h)do ag:
Disconnect()end v:Destroy()end b.attach(ae)local function af(ag)w.Visible=ag if
ag then W()local ah=w.Position w.Position=ah+UDim2.fromOffset(0,8)s(w,{Position=
ah})end end local ag=q('\084\101\120\116\066\117\116\116\111\110',{Text='\u{2014}',Size=UDim2.fromOffset(32,32
),Position=UDim2.new(1,-76,0,16)},y)local ah=q('\084\101\120\116\066\117\116\116\111\110',{Text='\u{d7}',Size=
UDim2.fromOffset(32,32),Position=UDim2.new(1,-38,0,16)},y)for ai,aj in ipairs({
ag,ah})do aj.BackgroundColor3=m.tile aj.TextColor3=m.text aj.Font=Enum.Font.
GothamMedium aj.TextSize=18 t(aj,8)end r(ag.Activated,function()af(false)end)r(
ah.Activated,function()b.unload()end)local ai,aj,Y,Z,_ r(F.InputBegan,function(
ak)if ak.UserInputType==Enum.UserInputType.MouseButton1 or ak.UserInputType==
Enum.UserInputType.Touch then ai=ak aj=ak.Position Y=F.Position Z=os.clock()_=
false end end)r(d.InputChanged,function(ak)if ai and(ak==ai or ak.UserInputType
==Enum.UserInputType.MouseMovement)then local al=ak.Position-aj if al.Magnitude>
8 then _=true end if _ then local am=v.AbsoluteSize local an=math.clamp(Y.X.
Scale*am.X+Y.X.Offset+al.X,0,math.max(0,am.X-S.launcher))local ao=math.clamp(Y.Y
.Scale*am.Y+Y.Y.Offset+al.Y,0,math.max(0,am.Y-S.launcher))F.Position=UDim2.
fromOffset(an,ao)end end end)r(d.InputEnded,function(ak)if ai and(ak==ai or ak.
UserInputType==Enum.UserInputType.MouseButton1)then if not _ then if os.clock()-
Z>=0.65 then if k then k()end else af(not w.Visible)end end ai=nil end end)r(d.
InputBegan,function(ak,al)if not al and ak.KeyCode==Enum.KeyCode.RightControl
then af(not w.Visible)end end)local ak=os.clock()local al,am=false,false local
function an()return al and(am or os.clock()-ak>=2.5)end local ao=q('\070\114\097\109\101',{Name
='\076\111\097\100\105\110\103',Size=UDim2.fromScale(1,1),BackgroundColor3=m.dark,ZIndex=50},w)t(ao,
10)local ap=q('\084\101\120\116\076\097\098\101\108',{Text='\065\078\079\078\072\085\066',Position=UDim2.fromScale(0.1,0.045),
Size=UDim2.fromScale(0.8,0.12),BackgroundTransparency=1,Font=Enum.Font.
GothamBlack,TextSize=28,TextColor3=o,ZIndex=51},ao)local aq=q('\084\101\120\116\076\097\098\101\108',{Text=
p('\067\097\114\114\101\103\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115','\076\111\097\100\105\110\103\032\102\101\097\116\117\114\101\115'),Position=UDim2.fromScale(
0.1,0.59),Size=UDim2.fromScale(0.8,0.1),BackgroundTransparency=1,Font=Enum.Font.
GothamBold,TextSize=18,TextWrapped=true,TextColor3=m.text,ZIndex=51},ao)local ar
=q('\084\101\120\116\076\097\098\101\108',{Text='',Position=UDim2.fromScale(0.1,0.69),Size=UDim2.fromScale(
0.8,0.1),BackgroundTransparency=1,Font=Enum.Font.Gotham,TextSize=13,TextWrapped=
true,TextColor3=m.muted,ZIndex=51},ao)local as=q('\070\114\097\109\101',{Position=UDim2.
fromScale(0.15,0.82),Size=UDim2.new(0.7,0,0,10),BackgroundColor3=m.edge,ZIndex=
51},ao)t(as,4)local at=q('\070\114\097\109\101',{Size=UDim2.fromScale(0,1),BackgroundColor3=o,
ZIndex=52},as)t(at,4)q('\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(Color3.fromRGB(150,
60,220),Color3.fromRGB(235,165,255)),Rotation=0},at)local au=q('\084\101\120\116\076\097\098\101\108',{Text
='\072\073\076\076\032\067\076\073\077\066\032\047\032\065\078\079\078\072\085\066\032\032\u{b7}\032\032\118'..a,Position=UDim2.fromScale(0.1,0.145),Size=
UDim2.fromScale(0.8,0.05),BackgroundTransparency=1,Font=Enum.Font.Code,TextSize=
10,TextColor3=m.muted,ZIndex=51},ao)local av=q('\084\101\120\116\076\097\098\101\108',{Text='',Position=
UDim2.fromScale(0.15,0.87),Size=UDim2.fromScale(0.7,0.06),BackgroundTransparency
=1,Font=Enum.Font.Code,TextSize=11,TextColor3=m.muted,ZIndex=51},ao)local aw=q(
'\070\114\097\109\101',{Name='\071\097\109\101\067\111\118\101\114',Position=UDim2.fromScale(0.12,0.22),Size=UDim2.
fromScale(0.76,0.34),BackgroundColor3=m.tile,ClipsDescendants=true,ZIndex=51},ao
)t(aw,14)q('\085\073\083\116\114\111\107\101',{Color=o,Thickness=2,Transparency=0.15,ApplyStrokeMode=
Enum.ApplyStrokeMode.Border},aw)local ax=q('\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromScale(1,
1),BackgroundTransparency=1,Image=b.identity and b.identity.cover or
"\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\071\097\109\101\084\104\117\109\098\110\097\105\108\038\105\100\061\049\048\048\057\056\049\057\049\055\050\048\048\054\054\057\038\119\061\052\056\048\038\104\061\050\055\048",ScaleType=Enum.
ScaleType.Crop,ZIndex=52},aw)t(ax,14)q('\084\101\120\116\076\097\098\101\108',{Text='\073\077\080\079\083\083\073\066\076\069\032\072\073\076\076\032\067\076\073\077\066'
,Size=UDim2.new(1,0,0,30),Position=UDim2.new(0,0,1,-30),BackgroundColor3=m.dark,
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
=function(aE)assert(game.PlaceId==100981917200669 and game.GameId==10772968523,
'\087\114\111\110\103\032\103\097\109\101')local aF,aG,aH=aE.ui,aE.T,aE.section('\070\097\114\109')local aI=Vector3.new(-
8483.69,2631.8,-478.82)local aJ,aK,aL=false,true,true local aM,aN=true,false
local aO,aP=0,-10 local aQ,aR local aS={}local function aT(aU,aV)aS[#aS+1]=aU:
Connect(aV)end aE.attach(function()aM=false aJ=false for aU,aV in ipairs(aS)do
aV:Disconnect()end end)local aU=aF.label(aH,'\084\101\120\116\076\097\098\101\108','\065\085\084\079\032\087\073\078\032\049\048\075',38,1)aU.
Font,aU.TextSize=Enum.Font.GothamBold,22 aF.label(aH,'\084\101\120\116\076\097\098\101\108',aG(
'\077\117\110\100\111\032\049\032\u{b7}\032\070\105\110\097\108\032\100\097\032\115\117\098\105\100\097','\087\111\114\108\100\032\049\032\u{b7}\032\072\105\108\108\032\102\105\110\105\115\104'),28,2)aF.label(aH,
'\084\101\120\116\076\097\098\101\108',aG(
'\082\101\116\111\114\110\097\032\097\111\032\102\105\110\097\108\032\113\117\097\110\100\111\032\118\111\099\u{ea}\032\114\101\110\097\115\099\101\032\111\117\032\115\097\105\032\100\097\032\u{e1}\114\101\097\046\032\065\032\114\101\099\111\109\112\101\110\115\097\032\u{e9}\032\099\111\110\102\105\114\109\097\100\097\032\112\101\108\111\032\106\111\103\111\046'
,
"\082\101\116\117\114\110\115\032\116\111\032\116\104\101\032\102\105\110\105\115\104\032\119\104\101\110\032\121\111\117\032\114\101\115\112\097\119\110\032\111\114\032\108\101\097\118\101\032\116\104\101\032\097\114\101\097\046\032\082\101\119\097\114\100\115\032\097\114\101\032\099\111\110\102\105\114\109\101\100\032\098\121\032\116\104\101\032\103\097\109\101\046"
),62,3)local aV=aF.label(aH,'\084\101\120\116\076\097\098\101\108',aG(
'\080\097\117\115\097\100\111\046\032\083\101\108\101\099\105\111\110\101\032\111\032\100\101\115\116\105\110\111\032\101\032\097\116\105\118\101\032\111\032\065\117\116\111\032\087\105\110\046',
'\080\097\117\115\101\100\046\032\083\101\108\101\099\116\032\116\104\101\032\100\101\115\116\105\110\097\116\105\111\110\032\097\110\100\032\101\110\097\098\108\101\032\065\117\116\111\032\087\105\110\046'),64,4)local aW=aF.label(aH
,'\084\101\120\116\076\097\098\101\108',aG('\084\101\108\101\112\111\114\116\101\115\032\114\101\097\108\105\122\097\100\111\115\058\032\048','\067\111\109\112\108\101\116\101\100\032\116\101\108\101\112\111\114\116\115\058\032\048'),30,5)local
aX,aY=aF.checkbox(aH,aG('\065\116\105\118\097\114\032\065\117\116\111\032\087\105\110\032\049\048\075','\069\110\097\098\108\101\032\065\117\116\111\032\087\105\110\032\049\048\075'),6)local aZ,
a_=aF.checkbox(aH,aG('\068\101\115\116\105\110\111\058\032\077\117\110\100\111\032\049\032\u{b7}\032\070\105\110\097\108',
'\068\101\115\116\105\110\097\116\105\111\110\058\032\087\111\114\108\100\032\049\032\u{b7}\032\070\105\110\105\115\104'),7)local a0,a1=aF.checkbox(aH,aG(
'\080\097\114\097\114\032\111\032\105\109\112\117\108\115\111\032\097\111\032\099\104\101\103\097\114','\083\116\111\112\032\109\111\109\101\110\116\117\109\032\111\110\032\097\114\114\105\118\097\108'),8)aY(false)a_(true)a1(
true)local function a2()aJ=not aJ aY(aJ)aV.Text=aJ and aG(
'\065\117\116\111\032\087\105\110\032\097\116\105\118\111\046\032\080\114\111\099\117\114\097\110\100\111\032\115\101\117\032\112\101\114\115\111\110\097\103\101\109\u{2026}',
'\065\117\116\111\032\087\105\110\032\101\110\097\098\108\101\100\046\032\076\111\111\107\105\110\103\032\102\111\114\032\121\111\117\114\032\099\104\097\114\097\099\116\101\114\u{2026}')or aG('\065\117\116\111\032\087\105\110\032\112\097\117\115\097\100\111\046'
,'\065\117\116\111\032\087\105\110\032\112\097\117\115\101\100\046')end aT(aX.Activated,a2)aE.quick(a2)aT(aZ.Activated,function(
)aK=not aK a_(aK)end)aT(a0.Activated,function()aL=not aL a1(aL)end)local a3=aF.
button(aH,aG('\073\114\032\097\111\032\102\105\110\097\108\032\097\103\111\114\097','\071\111\032\116\111\032\116\104\101\032\102\105\110\105\115\104\032\110\111\119'),9)local a4=aF.button(aH
,aG('\086\111\108\116\097\114\032\u{e0}\032\112\111\115\105\u{e7}\u{e3}\111\032\097\110\116\101\114\105\111\114','\082\101\116\117\114\110\032\116\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110'),10
)local a5=aF.button(aH,aG('\080\097\114\097\114\032\065\117\116\111\032\087\105\110','\083\116\111\112\032\065\117\116\111\032\087\105\110'),11)aF.label(aH,
'\084\101\120\116\076\097\098\101\108','\088\032\u{2212}\056\052\056\051\046\054\057\032\032\u{b7}\032\032\089\032\050\054\051\049\046\056\048\032\032\u{b7}\032\032\090\032\u{2212}\052\055\056\046\056\050',42,
12)local function a6()if not aM or game.PlaceId~=100981917200669 then return end
local a7=g.Character local a8=a7 and a7:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')local
a9=a7 and a7:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')if a8 and a9 and a9.Health>0 then
return a7,a8,a9 end end local function a7(a8,a9)if aN or not aM then return end
if not aK and not a8 then aV.Text=aG('\083\101\108\101\099\105\111\110\101\032\077\117\110\100\111\032\049\032\112\114\105\109\101\105\114\111\046',
'\083\101\108\101\099\116\032\087\111\114\108\100\032\049\032\102\105\114\115\116\046')return end local ba,bb,bc=a6()if not ba then aV.Text=aG(
'\065\103\117\097\114\100\097\110\100\111\032\115\101\117\032\112\101\114\115\111\110\097\103\101\109\u{2026}','\087\097\105\116\105\110\103\032\102\111\114\032\121\111\117\114\032\099\104\097\114\097\099\116\101\114\u{2026}')return
end if a8 and(not aQ or aR~=ba)then aV.Text=aG(
'\078\u{e3}\111\032\104\u{e1}\032\112\111\115\105\u{e7}\u{e3}\111\032\097\110\116\101\114\105\111\114\032\115\097\108\118\097\046',
'\078\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110\032\115\097\118\101\100\046')return end local bd=a8 and aQ or CFrame.new(aI)*bb
.CFrame.Rotation local be=bb.CFrame aN=true aP=os.clock()aV.Text=aG(
'\080\114\101\112\097\114\097\110\100\111\032\111\032\100\101\115\116\105\110\111\u{2026}','\080\114\101\112\097\114\105\110\103\032\116\104\101\032\100\101\115\116\105\110\097\116\105\111\110\u{2026}')task.spawn(
function()local bf,bg=pcall(function()pcall(g.RequestStreamAroundAsync,g,bd.
Position,2)local bf,bg,bh=a6()if bf~=ba or(a9 and not aJ)or(not a8 and not aK)
then return end bh.Sit=false game:GetService('\082\117\110\083\101\114\118\105\099\101').Heartbeat:Wait()if
not aM or g.Character~=ba or bh.Health<=0 or(a9 and not aJ)then return end ba:
PivotTo(bd*bg.CFrame:Inverse()*ba:GetPivot())if aL then for bi,bj in ipairs(ba:
GetDescendants())do if bj:IsA('\066\097\115\101\080\097\114\116')then bj.AssemblyLinearVelocity=Vector3.
zero bj.AssemblyAngularVelocity=Vector3.zero end end end if not a8 then aQ=be aR
=ba aO+=1 end aV.Text=a8 and aG('\082\101\116\111\114\110\111\117\032\u{e0}\032\112\111\115\105\u{e7}\u{e3}\111\032\097\110\116\101\114\105\111\114\046',
'\082\101\116\117\114\110\101\100\032\116\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110\046')or aG(
'\078\111\032\102\105\110\097\108\046\032\065\103\117\097\114\100\097\110\100\111\032\097\032\118\097\108\105\100\097\u{e7}\u{e3}\111\032\111\117\032\111\032\114\101\105\110\u{ed}\099\105\111\032\100\111\032\106\111\103\111\046',
'\065\116\032\116\104\101\032\102\105\110\105\115\104\046\032\087\097\105\116\105\110\103\032\102\111\114\032\116\104\101\032\103\097\109\101\032\116\111\032\118\097\108\105\100\097\116\101\032\111\114\032\114\101\115\116\097\114\116\046')aW.Text=aG(
'\084\101\108\101\112\111\114\116\101\115\032\114\101\097\108\105\122\097\100\111\115\058\032','\067\111\109\112\108\101\116\101\100\032\116\101\108\101\112\111\114\116\115\058\032')..aO end)aN=false if aM and
not bf then aV.Text=aG('\070\097\108\104\097\032\110\111\032\116\101\108\101\112\111\114\116\101\058\032','\084\101\108\101\112\111\114\116\032\102\097\105\108\101\100\058\032')..tostring(bg)
end end)end aT(a3.Activated,function()a7(false,false)end)aT(a4.Activated,
function()aJ=false aY(false)a7(true,false)end)aT(a5.Activated,function()aJ=false
aY(false)aV.Text=aG('\065\117\116\111\032\087\105\110\032\112\097\117\115\097\100\111\046','\065\117\116\111\032\087\105\110\032\112\097\117\115\101\100\046')end)aT(g.
CharacterAdded,function()aQ=nil aR=nil end)local function a8(a9,ba,bb,bc,bd)
return a9 and ba and not bb and bc>=5 and bd>30 end task.spawn(function()while
aM do local a9,ba=a6()if a9 and a8(aJ,aK,aN,os.clock()-aP,(ba.Position-aI).
Magnitude)then a7(false,true)end task.wait(0.25)end end)end local aF,aG,aH=false
,nil,false local aI=task.spawn(function()aF,aG=pcall(aE,{ui=N,page=M('\070\097\114\109'),T=
function(aI,aJ)return b.language=='\112\116'and aI or aJ end,progress=aD,attach=
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
"\084\111\113\117\101\032\065\058\032\097\098\114\105\114\047\102\101\099\104\097\114\046\032\083\101\103\117\114\101\032\048\044\054\053\115\032\101\032\115\111\108\116\101\058\032\097\108\116\101\114\110\097\114\032\065\117\116\111\032\087\105\110\046\032\065\114\114\097\115\116\101\058\032\109\111\118\101\114\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\105\110\101\108\046"
or
"\084\097\112\032\065\058\032\116\111\103\103\108\101\032\112\097\110\101\108\046\032\072\111\108\100\032\048\046\054\053\115\032\097\110\100\032\114\101\108\101\097\115\101\058\032\116\111\103\103\108\101\032\065\117\116\111\032\087\105\110\046\032\068\114\097\103\058\032\109\111\118\101\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\110\101\108\046"
,68,900)local aO=N.label(aM,'\084\101\120\116\066\111\120','\069\066\065\053\070\070',40,902)aO.ClearTextOnFocus=false
N.label(aM,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\067\111\114\032\100\101\032\100\101\115\116\097\113\117\101\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\120\046\058\032\070\070\067\065\052\050\041'or
'\065\099\099\101\110\116\032\099\111\108\111\114\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\046\103\046\032\070\070\067\065\052\050\041',30,901)local aP=
'\065\110\111\110\072\117\098\095\072\105\108\108\067\108\105\109\098\095\084\104\101\109\101\046\106\115\111\110'local aQ='\065\109\101\116\104\121\115\116'local aR={Amethyst={'\048\067\048\067\049\048',
'\050\055\049\056\051\053','\057\054\051\067\068\067','\070\070\070\053\070\070','\067\065\066\052\068\056','\069\066\065\053\070\070','\049\057\048\070\050\051'},Potato={'\050\051\049\070\049\057','\052\049\051\054\050\055'
,'\055\052\053\056\051\049','\070\067\070\054\069\050','\068\053\067\051\065\051','\069\066\065\053\070\070','\051\048\050\055\049\068'},Bloodmoon={'\049\055\048\067\049\051','\051\048\049\051\049\070',
'\054\066\050\054\051\068','\070\070\069\065\070\048','\068\050\065\048\066\048','\070\070\052\053\054\056','\050\051\048\070\049\065'},Midnight={'\049\048\049\051\049\069','\049\068\050\052\051\054',
'\051\053\052\054\054\053','\069\068\070\051\070\070','\065\052\066\051\067\067','\055\051\057\070\070\070','\049\053\049\066\050\065'},Emerald={'\048\066\049\057\049\054','\049\052\050\069\050\054',
'\050\066\053\057\052\055','\069\054\070\070\070\051','\057\069\067\054\066\051','\053\054\068\068\065\048','\049\048\050\052\049\069'},Arctic={'\049\049\049\066\050\054','\049\067\050\068\051\068','\051\054\053\049\054\065'
,'\069\066\070\056\070\070','\065\057\067\055\068\065','\055\057\068\057\070\070','\049\055\050\051\051\049'}}local function aS(aT)return Color3.
fromRGB(tonumber(aT:sub(1,2),16),tonumber(aT:sub(3,4),16),tonumber(aT:sub(5,6),
16))end local function aT()if type(writefile)=='\102\117\110\099\116\105\111\110'then task.spawn(
function()pcall(writefile,aP,e:JSONEncode({preset=aQ,hex=aO.Text}))end)end end
local function aU(aV)if type(aV)~='\115\116\114\105\110\103'or not aV:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then
return false end o=Color3.fromRGB(tonumber(aV:sub(1,2),16),tonumber(aV:sub(3,4),
16),tonumber(aV:sub(5,6),16))m.accent=o F.BackgroundColor3=o z.BackgroundColor3=
o L(J)for aW,aX in ipairs(O)do aX()end for aW,aX in pairs(H)do aX.
ScrollBarImageColor3=o end aO.Text=aV return true end local function aV(aW)local
aX=aR[aW]if not aX then return end aQ=aW for aY,aZ in ipairs({'\100\097\114\107','\116\105\108\101',
'\101\100\103\101','\116\101\120\116','\109\117\116\101\100','\097\099\099\101\110\116','\115\105\100\101\098\097\114'})do m[aZ]=aS(aX[aY])end o=m.accent for
aY,aZ in pairs(n)do if aY.Parent then for a_,a0 in pairs(aZ)do aY[a_]=m[a0]end
end end local aY=w:FindFirstChildOfClass('\085\073\071\114\097\100\105\101\110\116')if aY then aY.Color=
ColorSequence.new(m.tile,m.dark)end aU(aX[6])end N.label(aM,'\084\101\120\116\076\097\098\101\108',p(
'\084\069\077\065\083\032\080\082\079\078\084\079\083','\084\072\069\077\069\032\080\082\069\083\069\084\083'),32,880)for aW,aX in ipairs({'\065\109\101\116\104\121\115\116','\080\111\116\097\116\111'
,'\066\108\111\111\100\109\111\111\110','\077\105\100\110\105\103\104\116','\069\109\101\114\097\108\100','\065\114\099\116\105\099'})do local aY=N.button(aM,aX,880+aW)r(
aY.Activated,function()aV(aX)aT()end)end aL=function()if type(readfile)==
'\102\117\110\099\116\105\111\110'then local aW=readfile(aP)if type(aW)=='\115\116\114\105\110\103'and#aW<=2048 then local
aX=e:JSONDecode(aW)if l and aO.Parent and type(aX)=='\116\097\098\108\101'then if aR[aX.preset]
then aV(aX.preset)end aU(aX.hex)end end end end r(aO.FocusLost,function()local
aW=aO.Text:gsub('\035',''):upper()if aU(aW)then aT()end end)end,5)if not l then
return end aD(0.96,'\065\106\117\115\116\097\110\100\111\032\111\032\112\097\105\110\101\108\032\u{e0}\032\115\117\097\032\116\101\108\097\u{2026}',
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
