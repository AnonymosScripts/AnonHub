-- Luau
-- AnonHub protected distribution 0.39.3
-- local BOOT_VERSION="0.39.3"
local a='\048\046\051\057\046\051'local b=...assert(type(b)=='\116\097\098\108\101'and b.access,
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
local G=q('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{CanvasSize=UDim2.new(),ScrollBarThickness=3,Size=
UDim2.new(1,-32,0,44),Position=UDim2.fromOffset(16,72),BackgroundColor3=m.tile},
w)t(G)local H,I={},{}local J='\070\097\114\109'local K={'\070\097\114\109','\068\117\110\103\101\111\110','\067\097\114\116\097\115',
'\077\101\108\104\111\114\105\097\115','\067\111\109\098\097\116\101','\065\106\117\115\116\101\115'}local L={Farm='\070\097\114\109',Dungeon='\068\117\110\103\101\111\110',Cartas=
'\067\097\114\100\115',Melhorias='\085\112\103\114\097\100\101\115',Combate='\067\111\109\098\097\116',Ajustes='\083\101\116\116\105\110\103\115'}local function
M(N)J=N for O,P in pairs(H)do P.Visible=O==N s(I[O],{BackgroundColor3=O==N and o
or m.tile,TextColor3=O==N and m.dark or m.muted})if O==N then local Q=P.Position
P.Position=Q+UDim2.fromOffset(6,0)s(P,{Position=Q})end end end local function N(
O)if H[O]then return H[O]end local P=q('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Name=O,Size=UDim2.new(1
,-32,1,-166),Position=UDim2.fromOffset(16,126),BackgroundTransparency=1,
ScrollBarThickness=3,ScrollBarImageColor3=o,CanvasSize=UDim2.new(),
AutomaticCanvasSize=Enum.AutomaticSize.Y,Visible=O=='\070\097\114\109'},w)q('\085\073\076\105\115\116\076\097\121\111\117\116',{
Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.LayoutOrder},P)q('\085\073\080\097\100\100\105\110\103',{
PaddingTop=UDim.new(0,2),PaddingBottom=UDim.new(0,12),PaddingLeft=UDim.new(0,2)}
,P)local Q={Dungeon=p('\079\110\100\097\115\044\032\099\104\101\099\107\112\111\105\110\116\115\032\101\032\114\101\099\111\109\112\101\110\115\097\115\046',
'\087\097\118\101\115\044\032\099\104\101\099\107\112\111\105\110\116\115\032\097\110\100\032\114\101\119\097\114\100\115\046'),Melhorias=p(
'\067\111\109\112\114\097\115\044\032\114\101\115\101\114\118\097\115\032\101\032\101\113\117\105\112\097\109\101\110\116\111\115\046','\080\117\114\099\104\097\115\101\115\044\032\114\101\115\101\114\118\101\115\032\097\110\100\032\101\113\117\105\112\109\101\110\116\046'),Farm=
p('\069\115\099\111\108\104\097\032\115\101\117\115\032\097\108\118\111\115\032\101\032\099\111\110\116\114\111\108\101\032\097\032\112\114\111\103\114\101\115\115\u{e3}\111\046',
'\067\104\111\111\115\101\032\121\111\117\114\032\116\097\114\103\101\116\115\032\097\110\100\032\099\111\110\116\114\111\108\032\112\114\111\103\114\101\115\115\105\111\110\046'),Cartas=p(
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
TextSize=12,TextColor3=O=='\070\097\114\109'and m.dark or m.muted,Size=UDim2.new(0.25,-8,1,-
8),Position=UDim2.new(S*0.25,4,0,4),BackgroundColor3=O=='\070\097\114\109'and o or m.tile,
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
620}end local R='\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095\076\097\121\111\117\116\095'..g.UserId..'\046\106\115\111\110'local S={width=
760,height=580,scale=d.TouchEnabled and 80 or 100,launcher=56,x=0.5,y=0.5}local
T=table.clone(S)local U={width={300,1100},height={340,900},scale={65,150},
launcher={44,88},x={0,1},y={0,1}}if type(readfile)=='\102\117\110\099\116\105\111\110'then pcall(
function()local V=e:JSONDecode(readfile(R))for W,X in pairs(U)do local Y=V[W]if
type(Y)=='\110\117\109\098\101\114'and Y==Y then T[W]=math.clamp(Y,X[1],X[2])end end end)end local
function V()if type(writefile)=='\102\117\110\099\116\105\111\110'then pcall(writefile,R,e:JSONEncode(T)
)end end local W=q('\085\073\083\099\097\108\101',{Scale=1},w)local function X()local Y=v.
AbsoluteSize if Y.X<100 or Y.Y<100 then return end local Z=Q.resolve(Y.X,Y.Y,T)w
.AnchorPoint=Vector2.zero w.Size=UDim2.fromOffset(Z.width,Z.height)w.Position=
UDim2.fromOffset(Z.x,Z.y)W.Scale=Z.scale x.Visible=not Z.compact y.Position=
UDim2.fromOffset(Z.compact and 0 or 174,0)y.Size=UDim2.new(1,Z.compact and 0 or-
174,0,76)G.Parent=w G.Position=Z.compact and UDim2.new(0,12,1,-84)or UDim2.
fromOffset(12,100)G.Size=Z.compact and UDim2.new(1,-24,0,44)or UDim2.new(0,150,1
,-180)G.BackgroundTransparency=1 G.CanvasSize=Z.compact and UDim2.fromOffset(#K*
110,0)or UDim2.fromOffset(0,#K*52)G.ScrollingDirection=Z.compact and Enum.
ScrollingDirection.X or Enum.ScrollingDirection.Y for _,aa in ipairs(K)do local
ab=I[aa]if ab then ab.Size=Z.compact and UDim2.fromOffset(104,42)or UDim2.new(1,
0,0,44)ab.Position=Z.compact and UDim2.fromOffset((_-1)*110,0)or UDim2.
fromOffset(0,(_-1)*52)ab.Text=Z.compact and(b.language=='\112\116'and aa or L[aa])or
string.format('\037\048\050\100\032\u{b7}\032\037\115',_,b.language=='\112\116'and aa or L[aa])ab.
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
p('\067\097\114\114\101\103\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115','\076\111\097\100\105\110\103\032\102\101\097\116\117\114\101\115'),Position=UDim2.fromScale(
0.1,0.59),Size=UDim2.fromScale(0.8,0.1),BackgroundTransparency=1,Font=Enum.Font.
GothamBold,TextSize=18,TextWrapped=true,TextColor3=m.text,ZIndex=51},ap)local as
=q('\084\101\120\116\076\097\098\101\108',{Text='',Position=UDim2.fromScale(0.1,0.69),Size=UDim2.fromScale(
0.8,0.1),BackgroundTransparency=1,Font=Enum.Font.Gotham,TextSize=13,TextWrapped=
true,TextColor3=m.muted,ZIndex=51},ap)local at=q('\070\114\097\109\101',{Position=UDim2.
fromScale(0.15,0.82),Size=UDim2.new(0.7,0,0,10),BackgroundColor3=m.edge,ZIndex=
51},ap)t(at,4)local au=q('\070\114\097\109\101',{Size=UDim2.fromScale(0,1),BackgroundColor3=o,
ZIndex=52},at)t(au,4)q('\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(Color3.fromRGB(150,
60,220),Color3.fromRGB(235,165,255)),Rotation=0},au)local av=q('\084\101\120\116\076\097\098\101\108',{Text
='\083\085\080\069\082\080\079\087\069\082\032\047\032\065\078\079\078\072\085\066\032\032\u{b7}\032\032\118'..a,Position=UDim2.fromScale(0.1,0.145),Size=
UDim2.fromScale(0.8,0.05),BackgroundTransparency=1,Font=Enum.Font.Code,TextSize=
10,TextColor3=m.muted,ZIndex=51},ap)local aw=q('\084\101\120\116\076\097\098\101\108',{Text='',Position=
UDim2.fromScale(0.15,0.87),Size=UDim2.fromScale(0.7,0.06),BackgroundTransparency
=1,Font=Enum.Font.Code,TextSize=11,TextColor3=m.muted,ZIndex=51},ap)local ax=q(
'\070\114\097\109\101',{Name='\071\097\109\101\067\111\118\101\114',Position=UDim2.fromScale(0.12,0.22),Size=UDim2.
fromScale(0.76,0.34),BackgroundColor3=m.tile,ClipsDescendants=true,ZIndex=51},ap
)t(ax,14)q('\085\073\083\116\114\111\107\101',{Color=o,Thickness=2,Transparency=0.15,ApplyStrokeMode=
Enum.ApplyStrokeMode.Border},ax)local ay=q('\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromScale(1,
1),BackgroundTransparency=1,Image=b.identity and b.identity.cover or
'\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\071\097\109\101\084\104\117\109\098\110\097\105\108\038\105\100\061\055\052\049\056\051\050\052\054\050\056\053\053\054\057\038\119\061\052\056\048\038\104\061\050\055\048',ScaleType=Enum.
ScaleType.Crop,ZIndex=52},ax)t(ay,14)q('\084\101\120\116\076\097\098\101\108',{Text='\083\084\069\065\076\032\065\032\083\085\080\069\082\080\079\087\069\082',
Size=UDim2.new(1,0,0,30),Position=UDim2.new(0,0,1,-30),BackgroundColor3=m.dark,
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
=(function()local aF={}function aF.manualEligible(aG,aH,aI,aJ,aK)if aG=='\077\105\120\101\100'
then return(aH and aI==aJ)or(not aH and aI==aK)end if aG=='\066\111\115\115'then return aH
and aI==aJ end return aG=='\078\080\067'and not aH and aI==aK end function aF.protected(
aG,aH,aI)local aJ=aG.Cards and aG.Cards[aH]return not aJ or aI[aH]or aJ.Favorite
==true or aJ.Locked==true or table.find(aG.Equipped or{},aH)~=nil end function
aF.sacrificeCount(aG,aH,aI,aJ,aK,aL,aM)if aF.protected(aG,aH,aI)or aK>(aM or 3)
then return 0 end for aN,aO in pairs(aG.Base and aG.Base.Holders or{})do if aO==
aH then return 0 end end return math.min(1000,aL,math.max(0,math.floor(aG.Cards[
aH].Count)-aJ))end function aF.nextBoss(aG,aH)for aI,aJ in ipairs(aG)do if aJ.
gate and not aH[aJ.gate]then return aJ end end end function aF.sameList(aG,aH)if
#aG~=#aH then return false end for aI,aJ in ipairs(aG)do if aH[aI]~=aJ then
return false end end return true end function aF.sameArea(aG,aH)if not aG or not
aH or aG.gate or aH.gate then return false end if aG.minZ~=nil and aG.maxZ~=nil
and aH.minZ~=nil and aH.maxZ~=nil then return aG.minZ==aH.minZ and aG.maxZ==aH.
maxZ end return aG.id==aH.id end function aF.carried(aG)local aH,aI={},0 if
type(aG)=='\115\116\114\105\110\103'then for aJ in aG:gmatch('\040\037\100\043\041\058\091\037\119\095\093\043')do if not aH[aJ]then
aH[aJ]=true aI+=1 end end end return aH,aI end function aF.displayName(aG)return
tostring(aG or''):gsub('\095','\032'):gsub('\040\037\108\041\040\037\117\041','\037\049\032\037\050'):gsub('\037\115\043','\032'):match(
'\094\037\115\042\040\046\045\041\037\115\042\036')end function aF.tripState(aG,aH,aI)if aG==0 then return aH and
'\100\101\108\105\118\101\114\101\100'or'\108\111\115\116'end if aI>15 then return'\116\105\109\101\111\117\116'end return'\119\097\105\116\105\110\103'end
function aF.number(aG,aH,aI,aJ)local aK=tonumber(aG)if not aK or aK~=aK or math.
abs(aK)==math.huge then return nil end aK=math.clamp(aK,aH,aI)return aJ and math
.floor(aK)or aK end function aF.tokenAffordable(aG,aH,aI)return type(aH)==
'\110\117\109\098\101\114'and aH>=0 and(tonumber(aG)or 0)>=aH+aI end function aF.dungeonEnemy(aG,
aH,aI,aJ)return aG~=nil and aH==aG and aI>0 and aJ~=true end function aF.
shouldExit(aG,aH,aI)return aG>0 and aH>=aG and aI end function aF.world(aG,aH)if
aH~=10770228857 then return nil end return({[74183246285569]=1,[82739382053686]=
2})[aG]end function aF.multiplier(aG,aH)local aI=aF.number(aG,1,1e18)if not aI
then return 1e15 end if aH~=2 and aI==1e12 then return 1e15 end return aI end
return function(aG)local aH=aF.world(game.PlaceId,game.GameId)assert(aH,
'\085\110\115\117\112\112\111\114\116\101\100\032\083\117\112\101\114\112\111\119\101\114\032\119\111\114\108\100')local aI,aJ,aK=aG.ui,aG.page,aG.T local aL=game:
GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local aM=game:GetService('\080\108\097\121\101\114\115')local aN=game:
GetService('\072\116\116\112\083\101\114\118\105\099\101')local aO=game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101')local aP=aM
.LocalPlayer local aQ=true local aR,aS,aT={},{},{}local aU local function aV()aQ
=false for aW,aX in ipairs(aR)do aX:Disconnect()end for aW,aX in pairs(aT)do for
aY,aZ in ipairs(aX)do aZ:Disconnect()end end table.clear(aT)for aW=#aS,1,-1 do
local aX=aS[aW]if aX.object[aX.key]==aX.replacement then aX.object[aX.key]=aX.
original end end if aU then pcall(aU)end end aG.attach(aV)local aW=0 local
function aX(aY,aZ)aW=aW+1 local a_=aI.label(aJ,'\084\101\120\116\076\097\098\101\108',aY,aZ or 42,aW)a_.
TextSize=12 a_.TextWrapped=true return a_ end local aY=aX(aK(
'\067\097\114\114\101\103\097\110\100\111\032\105\110\116\101\114\102\097\099\101\115\032\100\111\032\106\111\103\111\046\046\046','\076\111\097\100\105\110\103\032\103\097\109\101\032\105\110\116\101\114\102\097\099\101\115\046\046\046'),62)aY.
LayoutOrder=800 local aZ=aX('',110)aZ.LayoutOrder=801 local a_={}local function
a0(a1)a_[#a_+1]=os.date('\037\072\058\037\077\058\037\083')..'\032'..tostring(a1)if#a_>30 then table.
remove(a_,1)end aY.Text=tostring(a1)end local a1={rebirth=false,returnFull=false
,farm=false,progress=false,boss=false,open=false,equip=false,place=false,fuse=
false,sacrifice=false,tree=false,upgrades=false,abilities=false,boost=false,
guard=false,stun=false,multiplier=1e15,reserve=1,maxRank=3,protected='',branch=
'\080\111\119\101\114',farmMode='\065\117\116\111',bossId=2,npcId=1,rarities={Common=true,Uncommon=true,
Rare=true}}a1.dungeonFarm=false a1.dungeonEnter=false a1.dungeonRepeat=false a1.
dungeonAbilities=false a1.dungeonSpeed=false a1.potionBuy=false a1.dungeonBuy=
false a1.cosmeticBuy=false a1.cosmeticEquip=false a1.trinketEquip=false a1.
hoverHeight=8 a1.exitFloor=10 a1.walkSpeed=30 a1.repeatDelay=15 a1.cashReserve=0
a1.tokenReserve=0 a1.buyLimit=25 a1.potionStock=3 a1.potionTier=4 a1.
dungeonStock=1 a1.trinketStat='\068\097\109\097\103\101'a1.upgradeKinds={Cash=true,Health=true,
Carry=true,Crit=true,Cooldown=true,Streak=true}a1.potionKinds={}a1.dungeonItems=
{}a1.cosmeticKinds={Aura=true,Trail=true}if aH==2 then a1.rarities={Cosmic=true,
Ancient=true,Cursed=true}end local a2={'\104\111\118\101\114\072\101\105\103\104\116','\101\120\105\116\070\108\111\111\114','\119\097\108\107\083\112\101\101\100',
'\114\101\112\101\097\116\068\101\108\097\121','\099\097\115\104\082\101\115\101\114\118\101','\116\111\107\101\110\082\101\115\101\114\118\101','\098\117\121\076\105\109\105\116','\112\111\116\105\111\110\083\116\111\099\107','\112\111\116\105\111\110\084\105\101\114'
,'\100\117\110\103\101\111\110\083\116\111\099\107','\116\114\105\110\107\101\116\083\116\097\116','\117\112\103\114\097\100\101\075\105\110\100\115','\112\111\116\105\111\110\075\105\110\100\115','\100\117\110\103\101\111\110\073\116\101\109\115',
'\099\111\115\109\101\116\105\099\075\105\110\100\115'}local a3={hoverHeight={4,24},exitFloor={0,1000},walkSpeed={16,
100},repeatDelay={5,300},cashReserve={0,1e100},tokenReserve={0,1e12},buyLimit={1
,1000},potionStock={1,100},potionTier={1,5},dungeonStock={1,100}}local a4=
'\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095'..aP.UserId..(aH==2 and'\095\087\111\114\108\100\050'or'')..'\046\106\115\111\110'if type(
readfile)=='\102\117\110\099\116\105\111\110'then local a5,a6=pcall(function()return aN:JSONDecode(
readfile(a4))end)if a5 and type(a6)=='\116\097\098\108\101'then for a7,a8 in ipairs(a2)do local
a9=a6[a8]if a3[a8]then a1[a8]=aF.number(a9,a3[a8][1],a3[a8][2],a8~='\099\097\115\104\082\101\115\101\114\118\101'
)or a1[a8]elseif type(a1[a8])=='\116\097\098\108\101'and type(a9)=='\116\097\098\108\101'then local ba={}for
bb,bc in pairs(a9)do if type(bb)=='\115\116\114\105\110\103'and#bb<120 and type(bc)=='\098\111\111\108\101\097\110'then
ba[bb]=bc end end a1[a8]=ba elseif a8=='\116\114\105\110\107\101\116\083\116\097\116'and table.find({'\068\097\109\097\103\101',
'\072\101\097\108\116\104','\080\111\119\101\114','\067\097\115\104','\076\117\099\107','\067\111\111\108\100\111\119\110'},a9)then a1[a8]=a9 end end if type(a6.
protected)=='\115\116\114\105\110\103'then a1.protected=a6.protected:sub(1,2000)end a1.multiplier=
aF.multiplier(a6.multiplier,a6.multiplierVersion)if type(a6.reserve)=='\110\117\109\098\101\114'
and a6.reserve==a6.reserve then a1.reserve=math.clamp(math.floor(a6.reserve),1,
1000)end if table.find({'\065\117\116\111','\066\111\115\115','\078\080\067','\077\105\120\101\100'},a6.farmMode)then a1.
farmMode=a6.farmMode end if type(a6.bossId)=='\110\117\109\098\101\114'then a1.bossId=a6.bossId
end if type(a6.npcId)=='\110\117\109\098\101\114'then a1.npcId=a6.npcId end if type(a6.rarities)==
'\116\097\098\108\101'then a1.rarities=a6.rarities end if table.find({'\067\097\115\104','\076\117\099\107','\080\111\119\101\114',
'\083\112\101\101\100','\066\111\115\115'},a6.branch)then a1.branch=a6.branch end end end local function a5
()if type(writefile)=='\102\117\110\099\116\105\111\110'then local a6={world=aH,multiplierVersion=2,
protected=a1.protected,multiplier=a1.multiplier,reserve=a1.reserve,branch=a1.
branch,farmMode=a1.farmMode,bossId=a1.bossId,npcId=a1.npcId,rarities=a1.rarities
}for a7,a8 in ipairs(a2)do a6[a8]=a1[a8]end pcall(writefile,a4,aN:JSONEncode(a6)
)end end local function a6(a7,a8)aR[#aR+1]=a7:Connect(a8)end local function a7(
a8)local a9=aL for ba in a8:gmatch('\091\094\047\093\043')do a9=a9:FindFirstChild(ba)assert(a9,
'\077\105\115\115\105\110\103\032\109\111\100\117\108\101\058\032'..a8)end local ba,bb,bc=false,false,nil local bd=task.spawn(
function()bb,bc=pcall(require,a9)ba=true end)local be=os.clock()+12 while aQ and
not ba and os.clock()<be do task.wait(0.05)end if not ba then pcall(task.cancel,
bd)error(aK('\084\101\109\112\111\032\108\105\109\105\116\101\032\097\111\032\099\097\114\114\101\103\097\114\058\032','\076\111\097\100\105\110\103\032\116\105\109\101\100\032\111\117\116\058\032')..a8)end if not
bb then error(tostring(bc))end return bc end local a8={}local a9={Place=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\080\108\097\099\101\067\111\110\102\105\103',State='\067\108\105\101\110\116\047\067\111\114\101\047\080\108\097\121\101\114\083\116\097\116\101',Cards=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\067\097\114\100\067\111\110\102\105\103',Stats='\083\104\097\114\101\100\047\082\117\108\101\115\047\067\097\114\100\083\116\097\116\115',Base=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\066\097\115\101\067\111\110\102\105\103',Shrine='\083\104\097\114\101\100\047\082\117\108\101\115\047\083\104\114\105\110\101',Progress=
'\083\104\097\114\101\100\047\082\117\108\101\115\047\080\114\111\103\114\101\115\115\105\111\110',Big='\083\104\097\114\101\100\047\085\116\105\108\047\066\105\103',Packs=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\080\097\099\107\067\111\110\102\105\103',Opening='\067\108\105\101\110\116\047\085\073\047\080\097\099\107\115\047\080\097\099\107\079\112\101\110\105\110\103',Registry=
'\067\108\105\101\110\116\047\067\111\114\101\047\076\111\099\097\108\069\110\101\109\121\082\101\103\105\115\116\114\121',Shields='\083\104\097\114\101\100\047\067\111\109\098\097\116\047\083\104\105\101\108\100\115',Ability=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\065\098\105\108\105\116\121\067\111\110\102\105\103',Settings='\067\108\105\101\110\116\047\067\111\110\116\114\111\108\108\101\114\115\047\083\101\116\116\105\110\103\115\067\111\110\116\114\111\108\108\101\114',
Power='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\080\111\119\101\114\067\111\110\102\105\103'}local ba,bb=0,0 for bc in pairs(a9)do bb+=1
end local bc,bd=pcall(function()for bc,bd in pairs(a9)do if aG.progress then aG.
progress(0.18+0.46*ba/bb,'\067\097\114\114\101\103\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115\032\100\111\032\106\111\103\111\u{2026}\032\040'..ba..
'\047'..bb..'\041','\076\111\097\100\105\110\103\032\103\097\109\101\032\102\101\097\116\117\114\101\115\u{2026}\032\040'..ba..'\047'..bb..'\041')end a8[bc]=a7(
bd)ba+=1 end end)if not bc then error(bd)end assert(a8.Place.World==aH,aK(
'\077\117\110\100\111\032\100\105\118\101\114\103\101\110\116\101\058\032\114\101\105\110\105\099\105\101\032\111\032\108\111\097\100\101\114\032\097\112\u{f3}\115\032\116\114\111\099\097\114\032\100\101\032\109\117\110\100\111\046',
'\087\111\114\108\100\032\109\105\115\109\097\116\099\104\058\032\114\101\115\116\097\114\116\032\116\104\101\032\108\111\097\100\101\114\032\097\102\116\101\114\032\115\119\105\116\099\104\105\110\103\032\119\111\114\108\100\115\046'))aX(aK(
'\077\117\110\100\111\032\100\101\116\101\099\116\097\100\111\058\032','\068\101\116\101\099\116\101\100\032\119\111\114\108\100\058\032')..aH..'\032\u{b7}\032\080\108\097\099\101\073\100\032'..game.PlaceId,36
)if aG.progress then aG.progress(0.7,
'\080\114\101\112\097\114\097\110\100\111\032\099\111\110\116\114\111\108\101\115\032\101\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\u{2026}',
'\080\114\101\112\097\114\105\110\103\032\099\111\110\116\114\111\108\115\032\097\110\100\032\097\117\116\111\109\097\116\105\111\110\u{2026}')end local be={}for bf,bg in pairs({
Dungeon='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\068\117\110\103\101\111\110\067\111\110\102\105\103',Cosmetics='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\067\111\115\109\101\116\105\099\067\111\110\102\105\103',
Trinkets='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\084\114\105\110\107\101\116\067\111\110\102\105\103'})do local bh,bi=pcall(a7,bg)if bh then a8
[bf]=bi else be[bf]=true a0(tostring(bi))end end a8.Dungeon=a8.Dungeon or{Offers
=function()return{}end,CanBuy=function()return false end}a8.Cosmetics=a8.
Cosmetics or{Potions={Types={},Selling=false},Kinds={}}a8.Trinkets=a8.Trinkets
or{List={}}local bf=a8.State local bg=aL:FindFirstChild('\082\101\109\111\116\101\115')assert(bg,
'\082\101\109\111\116\101\115\032\109\105\115\115\105\110\103')local bh=a8.Settings.Get('\065\117\116\111\065\116\116\097\099\107')local bi=false aU=
function()if bi then a8.Settings.Set('\065\117\116\111\065\116\116\097\099\107',bh)end end local function bj(
bk)if a8.Settings.Get('\065\117\116\111\065\116\116\097\099\107')~=bk then a8.Settings.Set('\065\117\116\111\065\116\116\097\099\107',bk)end
bi=true end local function bk(bl,bm,bn)assert(type(bl[bm])=='\102\117\110\099\116\105\111\110',
'\077\105\115\115\105\110\103\032\102\117\110\099\116\105\111\110\058\032'..bm)local bo=bl[bm]local bp=bn(bo)bl[bm]=bp aS[#aS+1]={
object=bl,key=bm,original=bo,replacement=bp}end local bl,bm=pcall(function()bk(
a8.Registry,'\068\097\109\097\103\101',function(bl)return function(bm,bn,...)if aQ and a1.boost
and typeof(bm)=='\073\110\115\116\097\110\099\101'and bm:GetAttribute('\076\111\099\097\108')==true and type(bn)==
'\110\117\109\098\101\114'and bn>0 and bn<math.huge then bn=math.min(bn*a1.multiplier,1e100)end
return bl(bm,bn,...)end end)bk(a8.Shields,'\065\098\115\111\114\098',function(bl)return function(
bm,...)if aQ and a1.guard and bm==aP.Character then return true,false end return
bl(bm,...)end end)bk(a8.Shields,'\071\117\097\114\100\101\100',function(bl)return function(bm,...)if
aQ and a1.stun and bm==aP.Character then return true end return bl(bm,...)end
end)end)if not bl then for bn=#aS,1,-1 do local bo=aS[bn]if bo.object[bo.key]==
bo.replacement then bo.object[bo.key]=bo.original end end table.clear(aS)a0(aK(
'\067\111\109\098\097\116\101\032\101\120\112\101\114\105\109\101\110\116\097\108\032\105\110\100\105\115\112\111\110\105\118\101\108\058\032','\069\120\112\101\114\105\109\101\110\116\097\108\032\099\111\109\098\097\116\032\117\110\097\118\097\105\108\097\098\108\101\058\032')..
tostring(bm))end local bn={}local function bo(bp,bq,br)aW=aW+1 local bs,bt=aI.
checkbox(aJ,aK(bq,br),aW)local function bu()bt(a1[bp])end bn[#bn+1]=bu bu()a6(bs
.Activated,function()if(bp=='\098\111\111\115\116'or bp=='\103\117\097\114\100'or bp=='\115\116\117\110')and not bl then
a0(aK('\073\110\116\101\114\102\097\099\101\115\032\100\101\032\099\111\109\098\097\116\101\032\105\110\100\105\115\112\111\110\105\118\101\105\115\058\032','\067\111\109\098\097\116\032\105\110\116\101\114\102\097\099\101\115\032\117\110\097\118\097\105\108\097\098\108\101\058\032')
..tostring(bm))return end local bv={potionBuy='\067\111\115\109\101\116\105\099\115',cosmeticBuy=
'\067\111\115\109\101\116\105\099\115',cosmeticEquip='\067\111\115\109\101\116\105\099\115',dungeonBuy='\068\117\110\103\101\111\110',trinketEquip=
'\084\114\105\110\107\101\116\115'}if bv[bp]and be[bv[bp] ]then a0(aK(
'\067\111\110\102\105\103\117\114\097\u{e7}\u{e3}\111\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\032\110\101\115\116\097\032\118\101\114\115\u{e3}\111\032\100\111\032\106\111\103\111\046',
'\067\111\110\102\105\103\117\114\097\116\105\111\110\032\117\110\097\118\097\105\108\097\098\108\101\032\105\110\032\116\104\105\115\032\103\097\109\101\032\118\101\114\115\105\111\110\046'))return end a1[bp]=not a1[bp]
if bp=='\112\114\111\103\114\101\115\115'then for bw,bx in ipairs({'\102\097\114\109','\098\111\115\115','\111\112\101\110','\101\113\117\105\112','\112\108\097\099\101',
'\102\117\115\101','\116\114\101\101','\117\112\103\114\097\100\101\115','\097\098\105\108\105\116\105\101\115','\114\101\116\117\114\110\070\117\108\108'})do a1[bx]=a1.progress end for
bw,bx in ipairs(bn)do bx()end end if bp=='\097\098\105\108\105\116\105\101\115'or bp=='\112\114\111\103\114\101\115\115'then pcall(
bj,a1.abilities)end bu()end)end aG.quick(function()a1.progress=not a1.progress
for bp,bq in ipairs({'\102\097\114\109','\098\111\115\115','\111\112\101\110','\101\113\117\105\112','\112\108\097\099\101','\102\117\115\101','\116\114\101\101',
'\117\112\103\114\097\100\101\115','\097\098\105\108\105\116\105\101\115','\114\101\116\117\114\110\070\117\108\108'})do a1[bq]=a1.progress end pcall(bj,a1.
abilities)for bp,bq in ipairs(bn)do bq()end a0(a1.progress and aK(
'\080\114\111\103\114\101\115\115\097\111\032\108\105\103\097\100\097','\080\114\111\103\114\101\115\115\105\111\110\032\101\110\097\098\108\101\100')or aK('\080\114\111\103\114\101\115\115\097\111\032\100\101\115\108\105\103\097\100\097',
'\080\114\111\103\114\101\115\115\105\111\110\032\100\105\115\097\098\108\101\100'))end)bo('\112\114\111\103\114\101\115\115','\080\114\111\103\114\101\115\115\u{e3}\111\032\097\117\116\111\109\u{e1}\116\105\099\097',
'\065\117\116\111\032\112\114\111\103\114\101\115\115\105\111\110')bo('\102\097\114\109','\070\097\114\109\032\100\101\032\105\110\105\109\105\103\111\115','\069\110\101\109\121\032\102\097\114\109')bo('\114\101\116\117\114\110\070\117\108\108',
'\077\111\099\104\105\108\097\032\099\104\101\105\097\058\032\112\111\114\116\097\108\032\101\032\114\101\116\111\109\097\114\032\102\097\114\109','\070\117\108\108\032\098\097\103\058\032\112\111\114\116\097\108\032\097\110\100\032\114\101\115\117\109\101\032\102\097\114\109\105\110\103')bo(
'\098\111\115\115','\080\114\105\111\114\105\122\097\114\032\098\111\115\115\101\115','\080\114\105\111\114\105\116\105\122\101\032\098\111\115\115\101\115')bo('\097\098\105\108\105\116\105\101\115',
'\072\097\098\105\108\105\100\097\100\101\115\032\097\117\116\111\109\u{e1}\116\105\099\097\115','\065\117\116\111\109\097\116\105\099\032\097\098\105\108\105\116\105\101\115')bo('\114\101\098\105\114\116\104',
'\065\117\116\111\032\082\101\110\097\115\099\105\109\101\110\116\111','\065\117\116\111\032\082\101\098\105\114\116\104')local bp=aX(aK(
'\082\101\110\097\115\099\105\109\101\110\116\111\032\097\117\116\111\109\u{e1}\116\105\099\111\032\100\101\115\108\105\103\097\100\111\046\032\082\101\105\110\105\099\105\097\032\111\032\112\111\100\101\114\032\099\111\110\102\111\114\109\101\032\097\115\032\114\101\103\114\097\115\032\100\111\032\106\111\103\111\046'
,"\065\117\116\111\032\082\101\098\105\114\116\104\032\105\115\032\111\102\102\046\032\082\101\115\101\116\115\032\112\111\119\101\114\032\097\099\099\111\114\100\105\110\103\032\116\111\032\116\104\101\032\103\097\109\101\032\114\117\108\101\115\046"),54)aJ=aG.
section('\067\097\114\116\097\115')bo('\111\112\101\110','\065\098\114\105\114\032\112\097\099\111\116\101\115','\079\112\101\110\032\112\097\099\107\115')bo('\101\113\117\105\112',
'\069\113\117\105\112\097\114\032\109\101\108\104\111\114\032\099\097\114\116\097','\069\113\117\105\112\032\098\101\115\116\032\099\097\114\100')bo('\112\108\097\099\101','\077\101\108\104\111\114\101\115\032\099\097\114\116\097\115\032\110\097\032\098\097\115\101',
'\066\101\115\116\032\099\097\114\100\115\032\111\110\032\098\097\115\101')bo('\102\117\115\101','\070\117\110\100\105\114\032\099\097\114\116\097\115','\070\117\115\101\032\099\097\114\100\115')bo('\116\114\101\101',
'\067\111\109\112\114\097\114\032\110\u{f3}\115\032\100\097\032\u{e1}\114\118\111\114\101','\066\117\121\032\115\107\105\108\108\032\116\114\101\101\032\110\111\100\101\115')bo('\115\097\099\114\105\102\105\099\101',
'\083\097\099\114\105\102\105\099\097\114\032\099\097\114\116\097\115\032\101\120\099\101\100\101\110\116\101\115','\083\097\099\114\105\102\105\099\101\032\115\112\097\114\101\115\032\097\099\099\111\114\100\105\110\103\032\116\111\032\083\101\116\116\105\110\103\115')aX(aK(
'\083\097\099\114\105\102\u{ed}\099\105\111\032\112\114\101\115\101\114\118\097\032\099\097\114\116\097\115\032\101\113\117\105\112\097\100\097\115\044\032\112\111\115\105\099\105\111\110\097\100\097\115\044\032\112\114\111\116\101\103\105\100\097\115\032\101\032\097\032\114\101\115\101\114\118\097\046\032\068\101\115\108\105\103\097\100\111\032\112\111\114\032\112\097\100\114\u{e3}\111\046'
,
"\083\097\099\114\105\102\105\099\101\032\112\114\101\115\101\114\118\101\115\032\101\113\117\105\112\112\101\100\044\032\112\108\097\099\101\100\044\032\112\114\111\116\101\099\116\101\100\032\099\097\114\100\115\032\097\110\100\032\116\104\101\032\114\101\115\101\114\118\101\046\032\079\102\102\032\098\121\032\100\101\102\097\117\108\116\046"
),54)aJ=aG.section('\067\111\109\098\097\116\101')bo('\098\111\111\115\116','\068\097\110\111\032\078\080\067\032\108\111\099\097\108\032\097\109\112\108\105\097\100\111\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041'
,'\066\111\111\115\116\032\108\111\099\097\108\032\078\080\067\032\100\097\109\097\103\101\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041')bo('\103\117\097\114\100',
'\066\108\111\113\117\101\097\114\032\100\097\110\111\032\108\111\099\097\108\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041','\066\108\111\099\107\032\108\111\099\097\108\032\100\097\109\097\103\101\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041')bo(
'\115\116\117\110','\066\108\111\113\117\101\097\114\032\115\116\117\110\032\108\111\099\097\108\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041','\066\108\111\099\107\032\108\111\099\097\108\032\115\116\117\110\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041')
aX(aK(
'\080\114\111\116\101\u{e7}\u{e3}\111\032\097\116\117\097\032\110\111\032\099\108\105\101\110\116\101\044\032\105\110\099\108\117\115\105\118\101\032\100\117\114\097\110\116\101\032\097\032\068\117\110\103\101\111\110\059\032\100\097\110\111\032\100\111\032\115\101\114\118\105\100\111\114\032\110\u{e3}\111\032\u{e9}\032\098\108\111\113\117\101\097\100\111\046\032\077\117\108\116\105\112\108\105\099\097\100\111\114\032\101\120\105\103\101\032\078\080\067\032\076\111\099\097\108\046'
,
"\080\114\111\116\101\099\116\105\111\110\032\105\115\032\099\108\105\101\110\116\045\115\105\100\101\044\032\105\110\099\108\117\100\105\110\103\032\068\117\110\103\101\111\110\059\032\115\101\114\118\101\114\032\100\097\109\097\103\101\032\105\115\032\110\111\116\032\098\108\111\099\107\101\100\046\032\077\117\108\116\105\112\108\105\101\114\032\114\101\113\117\105\114\101\115\032\097\032\076\111\099\097\108\032\078\080\067\046"
),42)aX(aK('\070\097\114\109\032\117\115\097\032\116\101\108\101\112\111\114\116\101\032\097\116\u{e9}\032\111\032\097\108\118\111\032\115\101\108\101\099\105\111\110\097\100\111\046',
'\070\097\114\109\032\116\101\108\101\112\111\114\116\115\032\116\111\032\116\104\101\032\115\101\108\101\099\116\101\100\032\116\097\114\103\101\116\046'),36)aJ=aG.section('\065\106\117\115\116\101\115')local
function bq(br,bs,bt)aX(bs,28)aW=aW+1 local bu=aI.label(aJ,'\084\101\120\116\066\111\120',tostring(a1
[br]),38,aW)bu.TextEditable=true bu.ClearTextOnFocus=false a6(bu.FocusLost,
function()local bv=bt(bu.Text)if bv~=nil then a1[br]=bv a5()end bu.Text=
tostring(a1[br])end)end bq('\109\117\108\116\105\112\108\105\101\114',aK(
'\077\117\108\116\105\112\108\105\099\097\100\111\114\032\108\111\099\097\108\058\032\112\097\100\114\u{e3}\111\032\049\032\113\117\097\100\114\105\108\104\u{e3}\111\032\040\049\101\049\053\041\044\032\109\u{e1}\120\105\109\111\032\049\101\049\056',
"\076\111\099\097\108\032\109\117\108\116\105\112\108\105\101\114\058\032\100\101\102\097\117\108\116\032\049\032\113\117\097\100\114\105\108\108\105\111\110\032\040\049\101\049\053\041\044\032\109\097\120\105\109\117\109\032\049\101\049\056"),function(br)
local bs=tonumber(br)if bs and bs==bs and bs<math.huge then return math.clamp(bs
,1,1e18)end end)bq('\114\101\115\101\114\118\101',aK('\067\111\112\105\097\115\032\114\101\115\101\114\118\097\100\097\115\032\112\111\114\032\099\097\114\116\097',
'\082\101\115\101\114\118\101\100\032\099\111\112\105\101\115\032\112\101\114\032\099\097\114\100'),function(br)local bs=tonumber(br)if bs and bs==bs
and bs<math.huge then return math.clamp(math.floor(bs),1,1000)end end)bq(
'\112\114\111\116\101\099\116\101\100',aK('\073\068\115\032\100\101\032\099\097\114\116\097\115\032\112\114\111\116\101\103\105\100\097\115\044\032\115\101\112\097\114\097\100\111\115\032\112\111\114\032\118\105\114\103\117\108\097',
'\080\114\111\116\101\099\116\101\100\032\099\097\114\100\032\073\068\115\044\032\099\111\109\109\097\032\115\101\112\097\114\097\116\101\100'),function(br)return br:sub(1,2000)end)aX(
aK('\082\097\114\105\100\097\100\101\115\032\112\101\114\109\105\116\105\100\097\115\032\110\111\032\115\097\099\114\105\102\u{ed}\099\105\111',
'\065\108\108\111\119\101\100\032\115\097\099\114\105\102\105\099\101\032\114\097\114\105\116\105\101\115\032\040\105\110\100\105\118\105\100\117\097\108\032\115\101\108\101\099\116\105\111\110\041'),42)local br={Common='\067\111\109\117\109'
,Uncommon='\073\110\099\111\109\117\109',Rare='\082\097\114\097',Epic='\u{c9}\112\105\099\097',Legendary='\076\101\110\100\u{e1}\114\105\097',
Mythic='\077\u{ed}\116\105\099\097',God='\068\105\118\105\110\097',Secret='\083\101\099\114\101\116\097',Cosmic='\067\u{f3}\115\109\105\099\097',Ancient
='\065\110\099\101\115\116\114\097\108',Cursed='\065\109\097\108\100\105\u{e7}\111\097\100\097',Omega='\u{d4}\109\101\103\097',Ethereal='\069\116\u{e9}\114\101\097'
,Divine='\068\105\118\105\110\097',Void='\086\097\122\105\111',Transcendent='\084\114\097\110\115\099\101\110\100\101\110\116\101',Eternal='\069\116\101\114\110\097',
Oblivion='\079\098\108\105\118\105\111\110'}for bs,bt in ipairs(a8.Cards.RarityOrder)do aW=aW+1 local bu
,bv=aI.checkbox(aJ,aK(br[bt]or bt,bt),aW)local function bw()bv(a1.rarities[bt]==
true)end bw()a6(bu.Activated,function()a1.rarities[bt]=not a1.rarities[bt]a5()
bw()end)end bq('\098\114\097\110\099\104',aK('\082\097\109\111\058\032\067\097\115\104\044\032\076\117\099\107\044\032\080\111\119\101\114\044\032\083\112\101\101\100\032\111\117\032\066\111\115\115',
'\066\114\097\110\099\104\058\032\067\097\115\104\044\032\076\117\099\107\044\032\080\111\119\101\114\044\032\083\112\101\101\100\032\111\114\032\066\111\115\115'),function(bs)return table.find({
'\067\097\115\104','\076\117\099\107','\080\111\119\101\114','\083\112\101\101\100','\066\111\115\115'},bs)and bs or nil end)local function bs()
local bt={}for bu in a1.protected:gmatch('\091\094\044\093\043')do bt[bu:match('\094\037\115\042\040\046\045\041\037\115\042\036')]
=true end return bt end local bt={}local bu=aL:FindFirstChild('\069\110\101\109\121\080\097\100\115')if bu
then for bv,bw in ipairs(bu:GetChildren())do local bx=bw:GetAttributes()bt[#bt+1
]={id=tonumber(bw.Name),level=bx.Level or 1,gate=bx.Gate,enemy=bx.Enemy,name=bx.
Name or bx.Enemy,respawn=bx.RespawnTime or 90,cf=bx.PadCFrame,minZ=bx.ZoneMinZ,
maxZ=bx.ZoneMaxZ}end end table.sort(bt,function(bv,bw)return bv.level<bw.level
end)local bv={}for bw,bx in ipairs(bt)do bv[bx.id]=bx end local bw=aJ aJ=aG.
section('\070\097\114\109')local bx=aX('',54)local function by(bz,bA,bB)aW=aW+1 local bC=aI.
button(aJ,'',aW)aW=aW+1 local bD=Instance.new('\083\099\114\111\108\108\105\110\103\070\114\097\109\101')bD.Size=UDim2.
new(1,-8,0,160)bD.LayoutOrder=aW bD.Visible=false bD.BackgroundTransparency=1 bD
.ScrollBarThickness=5 bD.CanvasSize=UDim2.new()bD.AutomaticCanvasSize=Enum.
AutomaticSize.Y bD.Parent=aJ local bE=Instance.new('\085\073\076\105\115\116\076\097\121\111\117\116')bE.Padding=
UDim.new(0,4)bE.SortOrder=Enum.SortOrder.LayoutOrder bE.Parent=bD local function
bF()local bG=aK('\083\101\108\101\099\105\111\110\101','\083\101\108\101\099\116')for bH,bI in ipairs(bB)do if bI.id==a1[bA]
then bG=bI.text end end bC.Text=bz..'\058\032'..bG..'\032\u{25bc}'end for bG,bH in
ipairs(bB)do local bI=aI.button(bD,bH.text,bG)a6(bI.Activated,function()a1[bA]=
bH.id bD.Visible=false a5()bF()end)end a6(bC.Activated,function()bD.Visible=not
bD.Visible end)bF()end by(aK('\077\111\100\111\032\100\101\032\102\097\114\109','\070\097\114\109\032\109\111\100\101'),'\102\097\114\109\077\111\100\101',{{id='\065\117\116\111',
text=aK('\080\114\111\103\114\101\115\115\u{e3}\111\032\097\117\116\111\109\u{e1}\116\105\099\097','\065\117\116\111\109\097\116\105\099\032\112\114\111\103\114\101\115\115\105\111\110')},{id='\066\111\115\115',
text=aK('\066\111\115\115\032\101\115\099\111\108\104\105\100\111','\083\101\108\101\099\116\101\100\032\098\111\115\115')},{id='\078\080\067',text=aK(
'\u{c1}\114\101\097\032\100\101\032\078\080\067\115\032\101\115\099\111\108\104\105\100\097','\083\101\108\101\099\116\101\100\032\078\080\067\032\097\114\101\097')},{id='\077\105\120\101\100',text=aK(
'\078\080\067\115\032\043\032\066\111\115\115\032\040\112\114\105\111\114\105\100\097\100\101\032\097\111\032\098\111\115\115\041','\078\080\067\115\032\043\032\066\111\115\115\032\040\098\111\115\115\032\112\114\105\111\114\105\116\121\041')}})local bz,bA,
bB={},{},{}for bC,bD in ipairs(bt)do local bE={id=bD.id,text=aF.displayName(bD.
name)..'\032\u{b7}\032\076\118\032'..bD.level..'\032\u{b7}\032'..bD.respawn..'\115'}if bD.gate then bz[#
bz+1]=bE else local bF for bG,bH in ipairs(bB)do if aF.sameArea(bD,bH)then bF=bH
break end end if bF then if a1.npcId==bD.id then a1.npcId=bF.id end else bB[#bB+
1]=bD local bG=0 for bH,bI in ipairs(bt)do if aF.sameArea(bD,bI)then bG+=1 end
end bE.text=aF.displayName(bD.name)..aK('\032\u{b7}\032\u{c1}\114\101\097\032\099\111\109\112\108\101\116\097\032\u{b7}\032',
'\032\u{b7}\032\070\117\108\108\032\097\114\101\097\032\u{b7}\032')..bG..aK('\032\112\111\110\116\111\115','\032\115\112\097\119\110\032\112\111\105\110\116\115')bA[#bA+1]=bE end
end end if not bv[a1.bossId]or not bv[a1.bossId].gate then a1.bossId=bz[1]and bz
[1].id or 0 end if not bv[a1.npcId]or bv[a1.npcId].gate then a1.npcId=bA[1]and
bA[1].id or 0 end by('\066\111\115\115','\098\111\115\115\073\100',bz)by(aK('\u{c1}\114\101\097\032\100\101\032\078\080\067\115','\078\080\067\032\097\114\101\097'),
'\110\112\099\073\100',bA)aX(aK(
"\078\080\067\115\032\043\032\066\111\115\115\058\032\102\097\114\109\097\032\097\032\097\114\101\097\032\101\115\099\111\108\104\105\100\097\032\110\097\032\101\115\112\101\114\097\032\101\032\118\111\108\116\097\032\097\111\032\098\111\115\115\032\113\117\097\110\100\111\032\101\108\101\032\097\112\097\114\101\099\101\046\032\086\101\114\105\102\105\099\097\032\112\101\114\105\111\100\105\099\097\109\101\110\116\101\032\097\032\097\114\101\110\097\032\115\101\032\111\032\098\111\115\115\032\101\115\116\105\118\101\114\032\102\111\114\097\032\100\111\032\115\116\114\101\097\109\105\110\103\046"
,
"\078\080\067\115\032\043\032\066\111\115\115\058\032\102\097\114\109\115\032\116\104\101\032\115\101\108\101\099\116\101\100\032\097\114\101\097\032\119\104\105\108\101\032\119\097\105\116\105\110\103\044\032\116\104\101\110\032\115\119\105\116\099\104\101\115\032\116\111\032\116\104\101\032\098\111\115\115\046\032\080\101\114\105\111\100\105\099\097\108\108\121\032\099\104\101\099\107\115\032\116\104\101\032\097\114\101\110\097\032\119\104\101\110\032\116\104\101\032\098\111\115\115\032\105\115\032\111\117\116\115\105\100\101\032\115\116\114\101\097\109\105\110\103\032\114\097\110\103\101\046"
),70)aX(aK(
'\069\115\099\111\108\104\101\114\032\111\032\097\108\118\111\032\110\097\111\032\108\105\103\097\032\111\032\102\097\114\109\046\032\065\116\105\118\101\032\070\097\114\109\032\111\117\032\080\114\111\103\114\101\115\115\u{e3}\111\032\097\117\116\111\109\u{e1}\116\105\099\097\032\097\099\105\109\097\046'
,
"\083\101\108\101\099\116\105\110\103\032\097\032\116\097\114\103\101\116\032\100\111\101\115\032\110\111\116\032\115\116\097\114\116\032\102\097\114\109\105\110\103\046\032\069\110\097\098\108\101\032\070\097\114\109\032\111\114\032\065\117\116\111\032\112\114\111\103\114\101\115\115\105\111\110\032\097\098\111\118\101\046"
),46)aJ=aG.section('\068\117\110\103\101\111\110')aX(aK('\077\085\078\068\079\032','\087\079\082\076\068\032')..aH..aK(
'\032\u{b7}\032\068\117\110\103\101\111\110\032\112\111\114\032\112\097\114\116\105\100\097\032\101\032\097\110\100\097\114','\032\u{b7}\032\068\117\110\103\101\111\110\032\098\121\032\114\117\110\032\097\110\100\032\102\108\111\111\114'),36)bo(
'\100\117\110\103\101\111\110\070\097\114\109','\065\117\116\111\032\068\117\110\103\101\111\110\058\032\099\111\109\098\097\116\101\114\032\101\032\097\118\097\110\u{e7}\097\114',
'\065\117\116\111\032\068\117\110\103\101\111\110\058\032\102\105\103\104\116\032\097\110\100\032\097\100\118\097\110\099\101')bo('\100\117\110\103\101\111\110\069\110\116\101\114',
'\069\110\116\114\097\114\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\032\110\111\032\112\111\114\116\097\108','\065\117\116\111\109\097\116\105\099\097\108\108\121\032\101\110\116\101\114\032\116\104\101\032\112\111\114\116\097\108')bo(
'\100\117\110\103\101\111\110\082\101\112\101\097\116','\082\101\112\101\116\105\114\032\097\112\u{f3}\115\032\115\097\105\114','\082\101\112\101\097\116\032\097\102\116\101\114\032\101\120\105\116')bo(
'\100\117\110\103\101\111\110\065\098\105\108\105\116\105\101\115','\072\097\098\105\108\105\100\097\100\101\115\032\097\117\116\111\109\u{e1}\116\105\099\097\115\032\110\097\032\068\117\110\103\101\111\110',
'\065\117\116\111\032\097\098\105\108\105\116\105\101\115\032\105\110\032\068\117\110\103\101\111\110')aX(aK(
'\067\111\109\098\097\116\101\032\112\097\114\097\100\111\032\110\111\032\097\108\116\111\032\100\097\032\115\097\108\097\046\032\078\u{e3}\111\032\116\101\108\101\112\111\114\116\097\032\097\116\u{e9}\032\078\080\067\115\046\032\065\115\032\104\097\098\105\108\105\100\097\100\101\115\032\109\097\110\116\u{ea}\109\032\111\032\097\108\099\097\110\099\101\032\110\097\116\105\118\111\032\100\111\032\106\111\103\111\046'
,
"\083\116\097\116\105\111\110\097\114\121\032\099\111\109\098\097\116\032\097\098\111\118\101\032\116\104\101\032\114\111\111\109\046\032\078\101\118\101\114\032\116\101\108\101\112\111\114\116\115\032\116\111\032\078\080\067\115\046\032\065\098\105\108\105\116\105\101\115\032\114\101\116\097\105\110\032\116\104\101\105\114\032\110\097\116\105\118\101\032\103\097\109\101\032\114\097\110\103\101\046"
),64)bq('\104\111\118\101\114\072\101\105\103\104\116',aK('\065\108\116\117\114\097\032\097\099\105\109\097\032\100\097\032\101\110\116\114\097\100\097\032\040\052\u{2013}\050\052\032\115\116\117\100\115\041',
'\072\101\105\103\104\116\032\097\098\111\118\101\032\101\110\116\114\121\032\040\052\u{2013}\050\052\032\115\116\117\100\115\041'),function(bC)return aF.number(bC,4,24)
end)bo('\100\117\110\103\101\111\110\083\112\101\101\100','\087\097\108\107\032\083\112\101\101\100\032\110\097\032\068\117\110\103\101\111\110','\068\117\110\103\101\111\110\032\087\097\108\107\032\083\112\101\101\100')by(aK(
'\083\097\105\114\032\110\111\032\099\104\101\099\107\112\111\105\110\116','\069\120\105\116\032\097\116\032\099\104\101\099\107\112\111\105\110\116'),'\101\120\105\116\070\108\111\111\114',{{id=5,text='\053'},{id=10,
text='\049\048'},{id=15,text='\049\053'},{id=20,text='\050\048'},{id=25,text='\050\053'},{id=50,text=
'\053\048'},{id=0,text=aK('\067\111\110\116\105\110\117\097\114\032\115\101\109\032\115\097\u{ed}\100\097\032\097\117\116\111\109\u{e1}\116\105\099\097',
'\067\111\110\116\105\110\117\101\032\119\105\116\104\111\117\116\032\097\117\116\111\109\097\116\105\099\032\101\120\105\116')}})bq('\119\097\108\107\083\112\101\101\100',aK(
'\086\101\108\111\099\105\100\097\100\101\032\110\097\032\068\117\110\103\101\111\110\032\040\049\054\u{2013}\049\048\048\041','\068\117\110\103\101\111\110\032\115\112\101\101\100\032\040\049\054\u{2013}\049\048\048\041'),
function(bC)return aF.number(bC,16,100)end)bq('\114\101\112\101\097\116\068\101\108\097\121',aK(
'\073\110\116\101\114\118\097\108\111\032\101\110\116\114\101\032\112\097\114\116\105\100\097\115\032\040\053\u{2013}\051\048\048\032\115\041',
'\068\101\108\097\121\032\098\101\116\119\101\101\110\032\114\117\110\115\032\040\053\u{2013}\051\048\048\032\115\041'),function(bC)return aF.number(bC,5,300)end
)local bC=aX(aK(
'\065\103\117\097\114\100\097\110\100\111\032\112\097\114\116\105\100\097\046\032\084\111\100\097\115\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\099\111\109\101\u{e7}\097\109\032\100\101\115\108\105\103\097\100\097\115\046',
'\087\097\105\116\105\110\103\032\102\111\114\032\097\032\114\117\110\046\032\065\108\108\032\097\117\116\111\109\097\116\105\111\110\032\115\116\097\114\116\115\032\111\102\102\046'),110)aX(aK(
'\079\032\102\097\114\109\032\100\111\032\109\117\110\100\111\032\112\097\117\115\097\032\100\101\110\116\114\111\032\100\097\032\068\117\110\103\101\111\110\046\032\082\101\110\097\115\099\105\109\101\110\116\111\044\032\112\097\099\111\116\101\115\044\032\099\111\109\112\114\097\115\032\101\032\114\101\111\114\103\097\110\105\122\097\u{e7}\u{e3}\111\032\100\101\032\099\097\114\116\097\115\032\097\103\117\097\114\100\097\109\032\097\032\115\097\u{ed}\100\097\046'
,
"\087\111\114\108\100\032\102\097\114\109\105\110\103\032\112\097\117\115\101\115\032\105\110\032\068\117\110\103\101\111\110\046\032\082\101\098\105\114\116\104\044\032\112\097\099\107\115\044\032\112\117\114\099\104\097\115\101\115\032\097\110\100\032\099\097\114\100\032\099\104\097\110\103\101\115\032\119\097\105\116\032\117\110\116\105\108\032\101\120\105\116\046"
),64)aJ=aG.section('\077\101\108\104\111\114\105\097\115')bo('\117\112\103\114\097\100\101\115','\065\117\116\111\032\085\112\103\114\097\100\101\032\099\111\109\032\100\105\110\104\101\105\114\111',
'\065\117\116\111\032\099\097\115\104\032\117\112\103\114\097\100\101\115')aX(aK('\077\101\108\104\111\114\105\097\115\032\112\101\114\109\105\116\105\100\097\115','\065\108\108\111\119\101\100\032\117\112\103\114\097\100\101\115'),28)local
function bD(bE,bF,bG)aW+=1 local bH,bI=aI.checkbox(aJ,bG,aW)bI(bE[bF]==true)a6(
bH.Activated,function()bE[bF]=not bE[bF]bI(bE[bF]==true)a5()end)end for bE,bF in
ipairs(a8.Progress.Upgrades or{})do local bG={Cash={'\068\105\110\104\101\105\114\111','\067\097\115\104'},Health={
'\086\105\100\097','\072\101\097\108\116\104'},Carry={'\077\111\099\104\105\108\097','\067\097\114\114\121'},Crit={'\067\114\u{ed}\116\105\099\111','\067\114\105\116\105\099\097\108'},
Cooldown={'\082\101\099\097\114\103\097','\067\111\111\108\100\111\119\110'},Streak={'\083\101\113\117\u{ea}\110\099\105\097','\083\116\114\101\097\107'}}local bH=bG[
bF.Id]bD(a1.upgradeKinds,bF.Id,bH and aK(bH[1],bH[2])or aF.displayName(bF.Id))
end bq('\099\097\115\104\082\101\115\101\114\118\101',aK('\068\105\110\104\101\105\114\111\032\109\u{ed}\110\105\109\111\032\114\101\115\101\114\118\097\100\111\032\040\097\099\101\105\116\097\032\049\101\049\050\041',
'\077\105\110\105\109\117\109\032\099\097\115\104\032\114\101\115\101\114\118\101\032\040\097\099\099\101\112\116\115\032\049\101\049\050\041'),function(bE)return aF.number(bE,0,1e100)
end)bq('\098\117\121\076\105\109\105\116',aK('\076\105\109\105\116\101\032\100\101\032\099\111\109\112\114\097\115\032\097\117\116\111\109\u{e1}\116\105\099\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\065\117\116\111\032\112\117\114\099\104\097\115\101\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110'),function(bE)return aF.number(bE,1,1000,true)
end)bo('\112\111\116\105\111\110\066\117\121','\065\117\116\111\032\099\111\109\112\114\097\114\032\112\111\u{e7}\u{f5}\101\115\032\099\111\109\032\100\105\110\104\101\105\114\111',
'\065\117\116\111\032\098\117\121\032\112\111\116\105\111\110\115\032\119\105\116\104\032\099\097\115\104')bq('\112\111\116\105\111\110\083\116\111\099\107',aK(
'\069\115\116\111\113\117\101\032\100\101\115\101\106\097\100\111\032\112\111\114\032\112\111\u{e7}\u{e3}\111\032\101\032\110\u{ed}\118\101\108',
'\084\097\114\103\101\116\032\115\116\111\099\107\032\112\101\114\032\112\111\116\105\111\110\032\097\110\100\032\116\105\101\114'),function(bE)return aF.number(bE,1,100,true)
end)bq('\112\111\116\105\111\110\084\105\101\114',aK('\078\u{ed}\118\101\108\032\109\u{e1}\120\105\109\111\032\100\097\032\112\111\u{e7}\u{e3}\111\032\040\049\u{2013}\053\041',
'\077\097\120\105\109\117\109\032\112\111\116\105\111\110\032\116\105\101\114\032\040\049\u{2013}\053\041'),function(bE)return aF.number(bE,1,5,true)end
)for bE,bF in ipairs(a8.Cosmetics.Potions.Types or{})do bD(a1.potionKinds,bF.Id,
aF.displayName(bF.Id))end bo('\100\117\110\103\101\111\110\066\117\121','\065\117\116\111\032\099\111\109\112\114\097\114\032\099\111\109\032\068\117\110\103\101\111\110\032\084\111\107\101\110\115',
'\065\117\116\111\032\098\117\121\032\119\105\116\104\032\068\117\110\103\101\111\110\032\084\111\107\101\110\115')bq('\116\111\107\101\110\082\101\115\101\114\118\101',aK(
'\084\111\107\101\110\115\032\109\u{ed}\110\105\109\111\115\032\114\101\115\101\114\118\097\100\111\115','\077\105\110\105\109\117\109\032\116\111\107\101\110\032\114\101\115\101\114\118\101'),function(bE)return aF.
number(bE,0,1e12,true)end)bq('\100\117\110\103\101\111\110\083\116\111\099\107',aK(
'\069\115\116\111\113\117\101\032\100\101\115\101\106\097\100\111\032\112\111\114\032\105\116\101\109\032\100\097\032\068\117\110\103\101\111\110','\084\097\114\103\101\116\032\115\116\111\099\107\032\112\101\114\032\068\117\110\103\101\111\110\032\105\116\101\109'),function
(bE)return aF.number(bE,1,100,true)end)aX(aK(
'\069\115\099\111\108\104\097\032\111\115\032\105\116\101\110\115\032\100\097\032\108\111\106\097\032\100\097\032\068\117\110\103\101\111\110','\067\104\111\111\115\101\032\068\117\110\103\101\111\110\032\115\104\111\112\032\105\116\101\109\115'),34)local bE=
a8.Dungeon.Offers()for bF,bG in ipairs(bE)do local bH=bG.Trinket or(bG.Potion
and bG.Potion.Type)local bI=bH and(bH.Name or bH.Id)or bG.Id local bJ=bG.Potion
and('\032\u{b7}\032'..bG.Potion.Tier.Tier)or''bD(a1.dungeonItems,bG.Id,aF.displayName(
bI)..bJ..'\032\u{b7}\032'..bG.Price..aK('\032\116\111\107\101\110\115\032\u{b7}\032\097\110\100\097\114\032',
'\032\116\111\107\101\110\115\032\u{b7}\032\102\108\111\111\114\032')..bG.Floor)end bo('\099\111\115\109\101\116\105\099\066\117\121',
'\065\117\116\111\032\099\111\109\112\114\097\114\032\097\117\114\097\032\101\032\116\114\105\108\104\097\032\109\101\108\104\111\114\101\115','\065\117\116\111\032\098\117\121\032\098\101\116\116\101\114\032\097\117\114\097\032\097\110\100\032\116\114\097\105\108')bo(
'\099\111\115\109\101\116\105\099\069\113\117\105\112','\065\117\116\111\032\101\113\117\105\112\097\114\032\109\101\108\104\111\114\032\097\117\114\097\032\101\032\116\114\105\108\104\097',
'\065\117\116\111\032\101\113\117\105\112\032\098\101\115\116\032\097\117\114\097\032\097\110\100\032\116\114\097\105\108')bD(a1.cosmeticKinds,'\065\117\114\097',aK('\065\117\114\097','\065\117\114\097'))
bD(a1.cosmeticKinds,'\084\114\097\105\108',aK('\084\114\105\108\104\097','\084\114\097\105\108'))bo('\116\114\105\110\107\101\116\069\113\117\105\112',
'\065\117\116\111\032\101\113\117\105\112\097\114\032\109\101\100\097\108\104\u{f5}\101\115\032\101\109\032\101\115\112\097\u{e7}\111\115\032\118\097\122\105\111\115',
'\065\117\116\111\032\101\113\117\105\112\032\116\114\105\110\107\101\116\115\032\105\110\116\111\032\101\109\112\116\121\032\115\108\111\116\115')by(aK('\065\116\114\105\098\117\116\111\032\100\111\032\109\101\100\097\108\104\u{e3}\111',
'\084\114\105\110\107\101\116\032\115\116\097\116'),'\116\114\105\110\107\101\116\083\116\097\116',{{id='\068\097\109\097\103\101',text=aK('\068\097\110\111','\068\097\109\097\103\101')},{id=
'\072\101\097\108\116\104',text=aK('\086\105\100\097','\072\101\097\108\116\104')},{id='\080\111\119\101\114',text=aK('\080\111\100\101\114','\080\111\119\101\114')},{id=
'\067\097\115\104',text=aK('\068\105\110\104\101\105\114\111','\067\097\115\104')},{id='\076\117\099\107',text=aK('\083\111\114\116\101','\076\117\099\107')},{id=
'\067\111\111\108\100\111\119\110',text=aK('\082\101\099\097\114\103\097','\067\111\111\108\100\111\119\110')}})aX(aK(
'\077\101\100\097\108\104\u{f5}\101\115\032\106\u{e1}\032\099\111\108\111\099\097\100\111\115\032\115\u{e3}\111\032\112\114\101\115\101\114\118\097\100\111\115\046\032\067\111\109\112\114\097\115\032\097\117\116\111\109\u{e1}\116\105\099\097\115\032\117\115\097\109\032\097\112\101\110\097\115\032\100\105\110\104\101\105\114\111\032\100\111\032\106\111\103\111\032\101\032\116\111\107\101\110\115\059\032\115\101\108\101\099\105\111\110\101\032\111\115\032\105\116\101\110\115\032\100\101\115\101\106\097\100\111\115\046'
,
"\069\120\105\115\116\105\110\103\032\116\114\105\110\107\101\116\115\032\097\114\101\032\112\114\101\115\101\114\118\101\100\046\032\065\117\116\111\032\112\117\114\099\104\097\115\101\115\032\117\115\101\032\111\110\108\121\032\103\097\109\101\032\099\097\115\104\032\097\110\100\032\116\111\107\101\110\115\059\032\115\101\108\101\099\116\032\116\104\101\032\105\116\101\109\115\032\121\111\117\032\119\097\110\116\046"
),64)local bF=aX('',54)aJ=bw local bG=workspace:FindFirstChild('\069\110\101\109\105\101\115')local
bH=setmetatable({},{__mode='\107'})local bI={}local bJ local bK=setmetatable({},{
__mode='\107'})local function bL(bM)if bH[bM]then return end local bN=bM:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')if not bN then return end bH[bM]=true local bO=
{}aT[bM]=bO bO[#bO+1]=bN.Died:Connect(function()local bP=bv[bM:GetAttribute(
'\080\097\100\073\100')]if bP and bP.gate then bI[bP.id]=os.clock()+bP.respawn end if bJ then
bJ()end end)bO[#bO+1]=bM.AncestryChanged:Connect(function()if bM.Parent~=bG then
for bP,bQ in ipairs(bO)do bQ:Disconnect()end aT[bM]=nil bH[bM]=nil end end)local
bP=bM:GetAttribute('\080\097\100\073\100')if bM:GetAttribute('\066\111\115\115')==true and bP then bI[bP]=
nil end end local bM=false local bN={}local function bO(bP,...)if not aQ or bM
or os.clock()<(bN[bP]or 0)then return nil end local bQ=bg:FindFirstChild(bP)if
not bQ or not bQ:IsA('\082\101\109\111\116\101\070\117\110\099\116\105\111\110')then a0(aK('\082\101\109\111\116\101\070\117\110\099\116\105\111\110\032\097\117\115\101\110\116\101\058\032',
'\077\105\115\115\105\110\103\032\082\101\109\111\116\101\070\117\110\099\116\105\111\110\058\032')..bP)return nil end bM=true local bR=table.pack(...)
local bS,bT=false,nil task.spawn(function()bT=table.pack(pcall(bQ.InvokeServer,
bQ,table.unpack(bR,1,bR.n)))bS=true bM=false end)local bU=os.clock()while aQ and
not bS and os.clock()-bU<10 do task.wait(0.1)end if not aQ then return nil end
if not bS then a0(bP..aK('\058\032\097\103\117\097\114\100\097\110\100\111\032\115\101\114\118\105\100\111\114\059\032\115\101\109\032\114\101\112\101\116\105\099\097\111\032\099\111\110\099\111\114\114\101\110\116\101',
'\058\032\119\097\105\116\105\110\103\032\102\111\114\032\115\101\114\118\101\114\059\032\110\111\032\099\111\110\099\117\114\114\101\110\116\032\114\101\116\114\121'))bN[bP]=os.clock()+15 return nil end
if not bT[1]or bT[2]==false then a0(bP..'\058\032'..tostring(bT[3]or bT[2]))bN[bP]=os.
clock()+8 return nil end a0(bP..aK('\058\032\114\101\115\112\111\115\116\097\032\114\101\099\101\098\105\100\097','\058\032\114\101\115\112\111\110\115\101\032\114\101\099\101\105\118\101\100'))
return table.unpack(bT,2,bT.n)end local bP=0 local function bQ(bR,bS)if type(bS)
~='\110\117\109\098\101\114'and type(bS)~='\115\116\114\105\110\103'then return false end if type(bS)=='\110\117\109\098\101\114'and(
bS~=bS or bS==math.huge)then return false end return not a8.Big.lt(bS,0)and not
a8.Big.lt(bR.Cash or 0,a8.Big.add(bS,a1.cashReserve))end local function bR(bS,
...)if bP>=a1.buyLimit then return end if bO(bS,...)==true then bP+=1 end bF.
Text=aK('\067\111\109\112\114\097\115\032\110\101\115\116\097\032\115\101\115\115\u{e3}\111\058\032','\080\117\114\099\104\097\115\101\115\032\116\104\105\115\032\115\101\115\115\105\111\110\058\032')..bP..'\032\047\032'..a1
.buyLimit end local bS=false local bT={}bT[1]=function(bU)if not a1.open or a8.
Opening.Playing then return end for bV,bW in pairs(bU.Packs or{})do if type(bW)
=='\110\117\109\098\101\114'and bW>0 then local bX=math.min(bW,a8.Packs.MaxOpenAtOnce or 1)local
bY={}for bZ,b_ in pairs(bU.Cards or{})do bY[bZ]=b_.Level end local bZ=bO(
'\079\112\101\110\080\097\099\107',bV,bX)if aQ and type(bZ)=='\116\097\098\108\101'then a8.Opening.Play(bV,function()
return bZ end,bY,nil,bX)end return end end end bT[2]=function(bU)if not a1.fuse
then return end local bV=bs()for bW,bX in pairs(bU.Cards or{})do if not bV[bW]
and not bX.Favorite and not bX.Locked and a8.Stats.Fuse(bX)then bO('\070\117\115\101',bW)
return end end end bT[3]=function(bU)if not a1.equip then return end local bV=a8
.Stats.Best(bU.Cards,function(bV)return a8.Base.SlotOf(bU,bV)~=nil end)if not aF
.sameList(bV,bU.Equipped or{})then bO('\069\113\117\105\112\066\101\115\116')end end bT[4]=function(bU)if
not a1.place or not bU.Base then return end local bV,bW=a8.Base.BestHolders(bU)
if bW then for bX,bY in pairs(bV)do if bU.Base.Holders[bX]~=bY then bO(
'\066\097\115\101\080\108\097\099\101',tonumber(bX),bY)return end end end end bT[5]=function(bU)if not a1.
tree then return end if not a8.Shrine.Open(bU)then a0(aK(
'\065\114\118\111\114\101\032\098\108\111\113\117\101\097\100\097\058\032\100\101\114\114\111\116\101\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046',
'\084\114\101\101\032\108\111\099\107\101\100\058\032\100\101\102\101\097\116\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046'))return end local bV={}for bW,
bX in pairs(a8.Shrine.Tree or{})do if bX.Branch==a1.branch and not a8.Shrine.
CantBuy(bU,bX.Id)then bV[#bV+1]=bX end end table.sort(bV,function(bW,bX)return
bW.Cost==bX.Cost and bW.Id<bX.Id or bW.Cost<bX.Cost end)if bV[1]then bO(
'\084\114\101\101\066\117\121',bV[1].Id)else local bW=aK('\078\101\110\104\117\109\032\110\111\032\101\108\101\103\105\118\101\108\032\110\111\032\114\097\109\111\032',
'\078\111\032\101\108\105\103\105\098\108\101\032\110\111\100\101\032\105\110\032\098\114\097\110\099\104\032')..a1.branch for bX,bY in pairs(a8.Shrine.Tree or{}
)do if bY.Branch==a1.branch and not a8.Shrine.Owns(bU,bY.Id)then bW=tostring(a8.
Shrine.CantBuy(bU,bY.Id))break end end a0(aK('\065\114\118\111\114\101\058\032','\084\114\101\101\058\032')..bW)end end bT
[6]=function(bU)if not a1.sacrifice then return end if not a8.Shrine.Open(bU)
then a0(aK('\083\097\099\114\105\102\105\099\105\111\032\098\108\111\113\117\101\097\100\111\058\032\100\101\114\114\111\116\101\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046',
'\083\097\099\114\105\102\105\099\101\032\108\111\099\107\101\100\058\032\100\101\102\101\097\116\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046'))return end local bV=bs()
for bW in pairs(bU.Cards or{})do local bX=a8.Cards.ById[bW]local bY=bX and a8.
Cards.RarityRank[bX.Rarity]or 999 local bZ=aF.sacrificeCount(bU,bW,bV,a1.reserve
,bY,a8.Shrine.Spare(bU,bW),a1.rarities[bX and bX.Rarity or'']==true and 999 or 0
)if bZ>0 then bO('\083\097\099\114\105\102\105\099\101',bW,bZ)return end end a0(aK(
"\083\097\099\114\105\102\105\099\105\111\058\032\110\101\110\104\117\109\097\032\115\111\098\114\097\032\101\108\101\103\105\118\101\108\046\032\067\111\110\102\105\114\097\032\114\101\115\101\114\118\097\044\032\114\097\114\105\100\097\100\101\032\101\032\099\097\114\116\097\115\032\112\114\111\116\101\103\105\100\097\115\032\101\109\032\065\106\117\115\116\101\115\046"
,
"\083\097\099\114\105\102\105\099\101\058\032\110\111\032\101\108\105\103\105\098\108\101\032\115\112\097\114\101\115\046\032\067\104\101\099\107\032\114\101\115\101\114\118\101\044\032\114\097\114\105\116\121\032\097\110\100\032\112\114\111\116\101\099\116\101\100\032\099\097\114\100\115\032\105\110\032\083\101\116\116\105\110\103\115\046"
))end bT[7]=function(bU)if not a1.upgrades then return end local bV,bW for bX,bY
in pairs(a8.Progress.Upgrades or{})do local bZ=a8.Progress.UpgradeLevel(bU,bY.Id
)if a1.upgradeKinds[bY.Id]and bZ<bY.MaxLevel then local b_=a8.Progress.
UpgradePrice(bU,bY.Id,bZ)if bQ(bU,b_)and(not bW or a8.Big.lt(b_,bW))then bV=bY.
Id bW=b_ end end end if bV then bR('\066\117\121\085\112\103\114\097\100\101',bV)end end local bU=0 local bV
bT[8]=function(bW)if not a1.rebirth then return end local bX=bW.Rebirths or 0
local bY=a8.Progress.RebirthLevelRequirement(bX)local bZ=a8.Power.Level(bW.Power
or 0)bp.Text=aK('\082\101\110\097\115\099\105\109\101\110\116\111\115\058\032','\082\101\098\105\114\116\104\115\058\032')..bX..aK('\032\u{b7}\032\078\u{ed}\118\101\108\058\032',
'\032\u{b7}\032\076\101\118\101\108\058\032')..bZ..'\032\047\032'..bY if bV~=nil then if bX>bV then bV=nil a0(aK(
'\082\101\110\097\115\099\105\109\101\110\116\111\032\099\111\110\102\105\114\109\097\100\111\032\112\101\108\111\032\115\101\114\118\105\100\111\114\046','\082\101\098\105\114\116\104\032\099\111\110\102\105\114\109\101\100\032\098\121\032\116\104\101\032\115\101\114\118\101\114\046'))
elseif os.clock()<bU then return else bV=nil end end if bZ<bY or os.clock()<bU
then return end bV=bX bU=os.clock()+20 local b_=bO('\082\101\098\105\114\116\104')if b_~=true then bp
.Text=aK('\065\103\117\097\114\100\097\110\100\111\032\099\111\110\102\105\114\109\097\u{e7}\u{e3}\111\032\111\117\032\110\111\118\097\032\116\101\110\116\097\116\105\118\097\032\100\101\032\114\101\110\097\115\099\105\109\101\110\116\111\046',
'\087\097\105\116\105\110\103\032\102\111\114\032\099\111\110\102\105\114\109\097\116\105\111\110\032\111\114\032\097\032\114\101\098\105\114\116\104\032\114\101\116\114\121\046')end end bT[9]=function(bW)if not
a1.potionBuy or not a8.Cosmetics.Potions.Selling then return end local bX=
workspace:GetServerTimeNow()local bY=a8.Cosmetics.PotionShelf(bW,bX)for bZ,b_ in
ipairs(a8.Cosmetics.PotionStock(aP.UserId,bY))do local b0=a8.Cosmetics.
PotionKey(b_.Type.Id,b_.Tier.Tier)local b1=tonumber((bW.Backpack or{})[b0])or 0
if a1.potionKinds[b_.Type.Id]and b_.Tier.Tier<=a1.potionTier and b1<a1.
potionStock and a8.Cosmetics.PotionLeft(bW,b_,bY)>0 and bQ(bW,b_.Tier.Price)then
bR('\066\117\121\067\111\115\109\101\116\105\099','\080\111\116\105\111\110',b_.Type.Id,b_.Tier.Tier)return end end end bT[10]=
function(bW)if not a1.dungeonBuy then return end for bX,bY in ipairs(bE)do if a1
.dungeonItems[bY.Id]and(tonumber((bW.Backpack or{})[bY.Id])or 0)<a1.dungeonStock
and aF.tokenAffordable(bW.DungeonTokens,bY.Price,a1.tokenReserve)and a8.Dungeon.
CanBuy(bW,bY.Id)then bR('\068\117\110\103\101\111\110\066\117\121',bY.Id)return end end end bT[11]=function(bW
)if not(a1.cosmeticBuy or a1.cosmeticEquip)then return end for bX,bY in ipairs({
'\065\117\114\097','\084\114\097\105\108'})do if a1.cosmeticKinds[bY]then local bZ=a8.Cosmetics.Kinds[bY]
local b_=bW[bZ.Owned]or{}local b0=a8.Cosmetics.Equipped(bW,bY)local b1=b0 local
b2 local function b3(b4)return b4 and(bY=='\084\114\097\105\108'and b4.Speed or b4.Multiplier)
or 0 end for b4,b5 in ipairs(bZ.Items)do if b_[b5.Id]and b3(b5)>b3(b1)then b1=b5
end local b6=a8.Cosmetics.PriceFor(bW,bY,b5)if(b5.World or 1)==aH and not b_[b5.
Id]and not b5.RobuxOnly and bQ(bW,b6)and b3(b5)>b3(b0)and(not b2 or b3(b5)>b3(b2
))then b2=b5 end end if a1.cosmeticEquip and b1 and(not b0 or b1.Id~=b0.Id)then
bO('\069\113\117\105\112\067\111\115\109\101\116\105\099',bY,b1.Id)return end if a1.cosmeticBuy and b2 then bR(
'\066\117\121\067\111\115\109\101\116\105\099',bY,b2.Id)return end end end end bT[12]=function(bW)if not a1.
trinketEquip then return end local bX for bY,bZ in ipairs(a8.Trinkets.List)do if
bZ.Stat==a1.trinketStat and(tonumber((bW.Backpack or{})[a8.Trinkets.Key(bZ.Id)])
or 0)>0 and(not bX or bZ.Amount>bX.Amount)then bX=bZ end end if not bX then
return end for bY,bZ in ipairs(bW.Equipped or{})do local b_=(bW.CardTrinkets or{
})[bZ]or{}for b0=1,a8.Trinkets.Slots(bZ)do if not b_[tostring(b0)]and not b_[b0]
then bO('\069\113\117\105\112\067\111\115\109\101\116\105\099','\084\114\105\110\107\101\116',bZ,b0,bX.Id,50,90)return end end end end local
bW=1 task.spawn(function()while aQ do local bX=bf.Data if bX and not bS and aP:
GetAttribute('\068\117\110\103\101\111\110\082\117\110')==nil and not bM and not a8.Opening.Playing then local
bY,bZ=pcall(bT[bW],bX)if not bY then a0(bZ)end bW=bW%#bT+1 end task.wait(0.8)end
end)local bX=1 local bY=0 local bZ,b_=0,0 local b0,b1,b2=0,0,nil local function
b3(b4,b5)b5=b5 or a1.npcId local b6=bv[b5]local b7={}for b8,b9 in ipairs(bt)do
if aF.sameArea(b9,b6)then b7[#b7+1]=b9 end end if#b7==0 then return b6 end if b2
~=b5 then b2=b5 b0=0 b1=0 end if b4>=b1 then b0=b0%#b7+1 b1=b4+8 end return b7[
b0]end local b4=aX('',60)b4.LayoutOrder=799 local b5=aF.carried(aP:GetAttribute(
'\067\097\114\114\105\101\100\080\097\099\107\115'))local b6,b7,b8=0,0,0 local b9,ca,cb,cc,cd=false,0,nil,0,''local
function ce()local cf,cg=aF.carried(aP:GetAttribute('\067\097\114\114\105\101\100\080\097\099\107\115'))for ch in
pairs(cf)do if not b5[ch]then b5[ch]=true b6+=1 end end b8=cg end a6(aP:
GetAttributeChangedSignal('\067\097\114\114\105\101\100\080\097\099\107\115'),ce)ce()local function cf(cg,ch,ci)
local cj=aP:GetAttribute('\067\097\114\114\121\067\097\112\097\099\105\116\121')if type(cj)~='\110\117\109\098\101\114'or cj<1 then cj=a8
.Progress.CarryCapacity(ci)end b4.Text=aK('\080\097\099\111\116\101\115\032\099\111\108\101\116\097\100\111\115\058\032',
'\080\097\099\107\115\032\099\111\108\108\101\099\116\101\100\058\032')..b6..aK('\032\u{b7}\032\077\111\099\104\105\108\097\058\032','\032\u{b7}\032\066\097\103\058\032')..b8..'\047'..cj..
aK('\032\u{b7}\032\086\105\097\103\101\110\115\058\032','\032\u{b7}\032\084\114\105\112\115\058\032')..b7..'\n'..cd if not a1.returnFull or
not(a1.farm or a1.boss)then b9=false cd=''return false end if not cg or not ch
or ch.Health<=0 then b9=false return false end local ck=aP:GetAttribute(
'\066\097\115\101\083\112\097\119\110')local cl=typeof(ck)=='\067\070\114\097\109\101'and(cg.Position-ck.Position).Magnitude<
45 if b9 then local cm=aF.tripState(b8,cl,os.clock()-ca)if cm=='\100\101\108\105\118\101\114\101\100'or cm
=='\108\111\115\116'then b9=false if cl then b7+=1 cd=aK(
'\069\110\116\114\101\103\097\032\099\111\110\099\108\117\u{ed}\100\097\046\032\082\101\116\111\109\097\110\100\111\032\111\032\102\097\114\109\046',
'\068\101\108\105\118\101\114\121\032\099\111\109\112\108\101\116\101\046\032\082\101\115\117\109\105\110\103\032\102\097\114\109\105\110\103\046')if cb then cg.CFrame=cb end bZ=0 b1=0
else cd=aK('\077\111\099\104\105\108\097\032\118\097\122\105\097\032\102\111\114\097\032\100\097\032\098\097\115\101\059\032\118\105\097\103\101\109\032\110\u{e3}\111\032\099\111\110\116\097\098\105\108\105\122\097\100\097\046',
'\066\097\103\032\101\109\112\116\105\101\100\032\097\119\097\121\032\102\114\111\109\032\104\111\109\101\059\032\116\114\105\112\032\110\111\116\032\099\111\117\110\116\101\100\046')end return true end if cm==
'\116\105\109\101\111\117\116'then b9=false cc=os.clock()+5 cd=aK(
'\069\110\116\114\101\103\097\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\100\097\046\032\084\101\110\116\097\110\100\111\032\111\032\112\111\114\116\097\108\032\110\111\118\097\109\101\110\116\101\046',
'\068\101\108\105\118\101\114\121\032\110\111\116\032\099\111\110\102\105\114\109\101\100\046\032\082\101\116\114\121\105\110\103\032\116\104\101\032\112\111\114\116\097\108\046')end return true end if b8<cj then
return false end if os.clock()<cc then return true end cc=os.clock()+3 local cm=
workspace:FindFirstChild('\066\111\115\115\080\111\114\116\097\108\115')local cn,co,cp=nil,nil,math.huge if cm
then for cq,cr in ipairs(cm:GetDescendants())do if cr:IsA('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and
cr.Name=='\080\111\114\116\097\108\080\114\111\109\112\116'and cr.Enabled then local cs=cr.Parent local ct=cs:IsA(
'\065\116\116\097\099\104\109\101\110\116')and cs.WorldCFrame or cs:IsA('\066\097\115\101\080\097\114\116')and cs.CFrame if ct then
local cu=(cg.Position-ct.Position).Magnitude if cu<cp then cn=cr co=ct cp=cu end
end end end end if not cn then cd=aK(
'\077\111\099\104\105\108\097\032\099\104\101\105\097\046\032\065\103\117\097\114\100\097\110\100\111\032\117\109\032\112\111\114\116\097\108\032\100\105\115\112\111\110\u{ed}\118\101\108\046',
'\066\097\103\032\102\117\108\108\046\032\087\097\105\116\105\110\103\032\102\111\114\032\097\110\032\097\118\097\105\108\097\098\108\101\032\112\111\114\116\097\108\046')return false end cb=cg.CFrame ca=os
.clock()b9=true cg.CFrame=co+Vector3.new(0,0,3)cd=aK(
'\082\101\116\111\114\110\097\110\100\111\032\112\101\108\111\032\112\111\114\116\097\108\059\032\097\103\117\097\114\100\097\110\100\111\032\099\111\110\102\105\114\109\097\u{e7}\u{e3}\111\032\100\097\032\101\110\116\114\101\103\097\046',
"\082\101\116\117\114\110\105\110\103\032\116\104\114\111\117\103\104\032\116\104\101\032\112\111\114\116\097\108\059\032\119\097\105\116\105\110\103\032\102\111\114\032\100\101\108\105\118\101\114\121\032\099\111\110\102\105\114\109\097\116\105\111\110\046")task.spawn(
function()task.wait(0.3)if not aQ or not b9 or not a1.returnFull or not cn.
Parent then return end if type(fireproximityprompt)=='\102\117\110\099\116\105\111\110'then pcall(
fireproximityprompt,cn)else cn:InputHoldBegin()task.wait(cn.HoldDuration+0.1)if
cn.Parent then cn:InputHoldEnd()end end end)return true end local cg={run=nil,
checkpoint=0,portal=nil,banked=0,runs=0,nextEntry=0,nextExit=0,lastMove=0}local
ch,ci,cj local ck local function cl()if not ck then return end for cm,cn in
ipairs({ck.position,ck.orientation,ck.attachment})do cn:Destroy()end if ck.
humanoid.Parent then ck.humanoid.AutoRotate=ck.autoRotate end ck=nil end local
function cm(cn,co,cp,cq)local cr=cn:FindFirstChild('\069\110\116\114\121')local cs=cn:
FindFirstChild('\066\111\117\110\100\115')if not cr or not cr:IsA('\066\097\115\101\080\097\114\116')or not cs or not cs:
IsA('\066\097\115\101\080\097\114\116')then return end if ck and(ck.room~=cn or ck.root~=co)then cl()end
local ct=cr.Position.Y+a1.hoverHeight ct=math.min(ct,cs.Position.Y+cs.Size.Y/2-6
)local cu=Vector3.new(cs.Position.X,ct,cs.Position.Z)if not ck then local cv=
Instance.new('\065\116\116\097\099\104\109\101\110\116')cv.Name='\065\110\111\110\072\117\098\068\117\110\103\101\111\110\072\111\118\101\114'cv.Parent=co local cw=
Instance.new('\065\108\105\103\110\080\111\115\105\116\105\111\110')cw.Mode=Enum.PositionAlignmentMode.OneAttachment cw
.Attachment0=cv cw.ApplyAtCenterOfMass=true cw.MaxForce=1000000 cw.MaxVelocity=
40 cw.Responsiveness=25 cw.Position=cu cw.Parent=co local cx=Instance.new(
'\065\108\105\103\110\079\114\105\101\110\116\097\116\105\111\110')cx.Mode=Enum.OrientationAlignmentMode.OneAttachment cx.
Attachment0=cv cx.MaxTorque=1000000 cx.Responsiveness=20 cx.Parent=co ck={room=
cn,root=co,humanoid=cp,autoRotate=cp.AutoRotate,attachment=cv,position=cw,
orientation=cx}cp.AutoRotate=false cp:Move(Vector3.zero)co.
AssemblyLinearVelocity=Vector3.zero co.AssemblyAngularVelocity=Vector3.zero co.
CFrame=CFrame.new(cu)end ck.position.Position=cu if cq then local cv=Vector3.
new(cq.Position.X-cu.X,0,cq.Position.Z-cu.Z)if cv.Magnitude>0.1 then ck.
orientation.CFrame=CFrame.lookAt(Vector3.zero,cv)end end end local function cn()
if ch and ch.Parent and ch.WalkSpeed==cj then ch.WalkSpeed=ci end ch=nil ci=nil
cj=nil end local co=aU aU=function()cl()cn()co()end local cp=bg:FindFirstChild(
'\068\117\110\103\101\111\110')if cp and cp:IsA('\082\101\109\111\116\101\069\118\101\110\116')then a6(cp.OnClientEvent,function(cq,cr
,cs)if cq=='\083\116\097\114\116'then cg.run=cr cg.checkpoint=0 cg.portal=nil cg.nextExit=0
elseif cq=='\080\111\114\116\097\108'and typeof(cr)=='\086\101\099\116\111\114\051'then cg.portal=cr elseif cq==
'\080\111\114\116\097\108\071\111\110\101'then cg.portal=nil elseif cq=='\067\104\101\099\107\112\111\105\110\116'then cg.checkpoint=
tonumber(cr)or 0 cg.banked=tonumber(cs)or 0 elseif cq=='\069\110\100'and type(cr)==
'\116\097\098\108\101'then cl()cg.runs+=1 cg.run=nil cg.portal=nil cg.banked=tonumber(cr.Banked
)or 0 cg.nextEntry=os.clock()+a1.repeatDelay if not a1.dungeonRepeat then a1.
dungeonEnter=false for ct,cu in ipairs(bn)do cu()end end a0(aK(
'\068\117\110\103\101\111\110\032\099\111\110\099\108\117\u{ed}\100\097\058\032\097\110\100\097\114\032','\068\117\110\103\101\111\110\032\102\105\110\105\115\104\101\100\058\032\102\108\111\111\114\032')..tostring(cr.Floor)
..'\032\u{b7}\032'..cg.banked..aK('\032\116\111\107\101\110\115\032\u{b7}\032\112\101\114\100\105\100\111\115\058\032','\032\116\111\107\101\110\115\032\u{b7}\032\108\111\115\116\058\032')
..tostring(cr.Lost))end end)end local function cq(cr,cs,ct)if not ct or not cs
or os.clock()-bY<0.6 or aO:GetFocusedTextBox()then return end bY=os.clock()local
cu=a8.Ability.Loadout(cr)if#cu>0 then bX=(bX-1)%#cu+1 local cv=a8.Ability.Keys[
bX]if cv then local cw=game:GetService('\086\105\114\116\117\097\108\073\110\112\117\116\077\097\110\097\103\101\114')cw:SendKeyEvent(
true,cv,false,game)cw:SendKeyEvent(false,cv,false,game)end bX+=1 end end local
function cr(cs,ct,cu)local cv=aP:GetAttribute('\068\117\110\103\101\111\110\082\117\110')bS=false local cw=
tonumber(aP:GetAttribute('\068\117\110\103\101\111\110\070\108\111\111\114'))or 0 local cx=tonumber(aP:GetAttribute(
'\068\117\110\103\101\111\110\069\110\101\109\105\101\115'))or 0 bC.Text=aK('\065\110\100\097\114\058\032','\070\108\111\111\114\058\032')..cw..aK(
'\032\u{b7}\032\073\110\105\109\105\103\111\115\058\032','\032\u{b7}\032\069\110\101\109\105\101\115\058\032')..cx..aK('\n\084\111\107\101\110\115\032\112\101\110\100\101\110\116\101\115\058\032',
'\n\085\110\098\097\110\107\101\100\032\116\111\107\101\110\115\058\032')..tostring(aP:GetAttribute('\068\117\110\103\101\111\110\085\110\098\097\110\107\101\100')or 0)..aK(
'\032\u{b7}\032\083\097\108\100\111\058\032','\032\u{b7}\032\066\097\108\097\110\099\101\058\032')..tostring(cu.DungeonTokens or 0)..aK(
'\n\067\104\101\099\107\112\111\105\110\116\058\032','\n\067\104\101\099\107\112\111\105\110\116\058\032')..cg.checkpoint..aK('\032\u{b7}\032\080\097\114\116\105\100\097\115\058\032',
'\032\u{b7}\032\082\117\110\115\058\032')..cg.runs if cv==nil then cl()cn()if a1.dungeonEnter and a1.
dungeonFarm and os.clock()>=cg.nextEntry and cs and ct and ct.Health>0 then bS=
true if bM or a8.Opening.Playing then return true end local cy=workspace:
FindFirstChild('\068\117\110\103\101\111\110\080\111\114\116\097\108')if cy and cy:IsA('\077\111\100\101\108')then local cz=cy:
GetPivot()+Vector3.new(0,3,0)if(cs.Position-cz.Position).Magnitude>4 then cs.
CFrame=cz end local cA=cy:GetAttribute('\083\116\097\114\116\115\065\116')bC.Text=aK(
'\078\097\032\102\105\108\097\032\100\097\032\068\117\110\103\101\111\110','\073\110\032\068\117\110\103\101\111\110\032\113\117\101\117\101')..(type(cA)=='\110\117\109\098\101\114'and('\032\u{b7}\032'..
math.max(0,math.ceil(cA-workspace:GetServerTimeNow()))..'\115')or'')return true end
end return false end if a1.dungeonSpeed and ct then if ch~=ct then cn()ch=ct ci=
ct.WalkSpeed end cj=a1.walkSpeed ct.WalkSpeed=cj else cn()end if not a1.
dungeonFarm or not cs or not ct or ct.Health<=0 or aP:GetAttribute('\068\111\119\110\101\100')==
true then cl()return true end if aF.shouldExit(a1.exitFloor,cg.checkpoint,cg.
portal~=nil)then cl()cs.CFrame=CFrame.new(cg.portal+Vector3.new(0,3,0))if cp and
os.clock()>=cg.nextExit then cg.nextExit=os.clock()+3 cp:FireServer('\069\120\105\116')end
return true end local cy=workspace:FindFirstChild('\069\110\101\109\105\101\115')local cz,cA=nil,math
.huge for cB,cC in ipairs(cy and cy:GetChildren()or{})do local cD=cC:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cE=cC:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')
if aF.dungeonEnemy(cv,cC:GetAttribute('\068\117\110\103\101\111\110'),cD and cD.Health or 0,cC:
GetAttribute('\065\108\108\121'))and cE then local cF=(cs.Position-cE.Position).Magnitude-(
cC:GetAttribute('\066\111\115\115')==true and 1000000 or 0)if cF<cA then cA=cF cz=cE end end
end local cB=workspace:FindFirstChild('\068\117\110\103\101\111\110\077\097\112\115')local cC=cB and cB:
FindFirstChild('\082\117\110'..tostring(cv)..'\095\070\108\111\111\114'..tostring(cw))if ck and(ck.room~=cC
or ck.root~=cs)then cl()end if cz then if cC then cm(cC,cs,ct,cz)end cq(cu,cz,a1
.dungeonAbilities)elseif aP:GetAttribute('\068\117\110\103\101\111\110\070\105\103\104\116')~=true and cx==0 then if
cC then local cD=cC:FindFirstChild('\069\120\105\116\068\111\111\114')local cE=cC:FindFirstChild('\069\110\116\114\121'
)if cD and cD:IsA('\066\097\115\101\080\097\114\116')and cE and cE:IsA('\066\097\115\101\080\097\114\116')then local cF=cD.
Position-cE.Position cF=Vector3.new(cF.X,0,cF.Z)if cF.Magnitude>0 and os.clock()
-cg.lastMove>=0.8 then local cG=tostring(cv)..'\058'..tostring(cw)if cg.moveRoom~=
cG then cg.moveRoom=cG cg.crossing=0 end local cH=cD.CanCollide==false if not cH
and ck then return true end cl()local cI=cH and cD.Position or cE.Position local
cJ=cH and((cg.crossing or 0)%2)*8 or 8 local cK=Vector3.new(cI.X,cE.Position.Y,
cI.Z)+cF.Unit*cJ cg.lastMove=os.clock()if cH then cg.crossing=(cg.crossing or 0)
+1 end if(cs.Position-cK).Magnitude>2 then ct:Move(Vector3.zero)cs.
AssemblyLinearVelocity=Vector3.zero cs.AssemblyAngularVelocity=Vector3.zero cs.
CFrame=CFrame.lookAt(cK,cK+cF.Unit)end end end end end return true end local
function cs()local ct=bf.Data if not ct then a0(aK(
'\065\103\117\097\114\100\097\110\100\111\032\100\097\100\111\115\032\114\101\112\108\105\099\097\100\111\115\046\046\046','\087\097\105\116\105\110\103\032\102\111\114\032\114\101\112\108\105\099\097\116\101\100\032\100\097\116\097\046\046\046'))return end bG
=workspace:FindFirstChild('\069\110\101\109\105\101\115')local cu=bG and bG:GetChildren()or{}local cv
={}local cw=aF.nextBoss(bt,ct.Gates or{})local cx=aP.Character local cy=cx and
cx:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')local cz=cx and cx:FindFirstChildOfClass(
'\072\117\109\097\110\111\105\100')local cA=aP:GetAttribute('\068\117\110\103\101\111\110\082\117\110')~=nil if bi or a1.abilities or(
cA and a1.dungeonFarm and a1.dungeonAbilities)then pcall(bj,cA and a1.
dungeonFarm and a1.dungeonAbilities or(not cA and a1.abilities))end if cr(cy,cz,
ct)then return end if cf(cy,cz,ct)then return end local cB=a8.Power.Level(ct.
Power or 0)local cC if a1.farmMode=='\065\117\116\111'and a1.farm then for cD,cE in ipairs(
bt)do if not cE.gate and cE.level<=cB then cC=cE end end end local cD=(a1.
farmMode=='\078\080\067'or a1.farmMode=='\077\105\120\101\100')and b3(os.clock())or cC and b3(os.clock()
,cC.id)local cE,cF,cG,cH=nil,false,false,math.huge local cI={}for cJ,cK in
ipairs(cu)do bL(cK)local cL=cK:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cM=cK:
FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if cL and cL.Health>0 and cM and cK:
GetAttribute('\068\117\110\103\101\111\110')==nil then local cN=cK:GetAttribute('\080\097\100\073\100')if cN then cI
[cN]=true end if cy then local cO=cK:GetAttribute('\066\111\115\115')==true local cP=cK:
GetAttribute('\076\101\118\101\108')or 1 local cQ=a1.boost or cP<=cB if a1.farmMode~='\065\117\116\111'then
cQ=aF.manualEligible(a1.farmMode,cO,cN,a1.bossId,a1.npcId)or(not cO and(a1.
farmMode=='\078\080\067'or a1.farmMode=='\077\105\120\101\100')and aF.sameArea(bv[cN],bv[a1.npcId]))
elseif a1.progress and cO then cQ=cQ and cw and cN==cw.id end if cQ and(a1.farm
or(a1.boss and(cO or a1.farmMode=='\077\105\120\101\100')))then local cR=(cy.Position-cM.
Position).Magnitude local cS=os.clock()-(bK[cK]or-10)<1 if cS then cR-=2000000
end if cD and not cO and cN~=cD.id then cR+=1000000 end if(a1.boss or a1.
farmMode=='\077\105\120\101\100')and cO then cR=cR-1000000000 end if cR<cH then cH=cR cE=cM cF=
cO cG=cS end end end end end for cJ,cK in ipairs(bt)do if cK.gate then local cL=
cI[cK.id]and aK('\086\073\086\079','\065\076\073\086\069')or(bI[cK.id]and(math.ceil(math.max(0,bI[cK.id]-os
.clock()))..aK('\115\032\101\115\116\105\109\097\100\111\115','\115\032\101\115\116\105\109\097\116\101\100'))or aK('\110\u{e3}\111\032\111\098\115\101\114\118\097\100\111',
'\110\111\116\032\111\098\115\101\114\118\101\100'))cv[#cv+1]=aF.displayName(cK.enemy)..'\058\032'..cL end end aZ.Text=
table.concat(cv,'\032\124\032')local cJ=(a1.farmMode=='\066\111\115\115'or a1.farmMode=='\077\105\120\101\100'and cI
[a1.bossId])and bv[a1.bossId]or(a1.farmMode=='\078\080\067'or a1.farmMode=='\077\105\120\101\100')and bv
[a1.npcId]or cw local cK=a1.farmMode=='\077\105\120\101\100'and'\078\080\067\115\032\043\032\066\111\115\115'or a1.farmMode bx.
Text=cK..'\032\u{b7}\032'..(cJ and aF.displayName(cJ.name)or aK('\083\101\109\032\097\108\118\111','\078\111\032\116\097\114\103\101\116'
))..'\032\u{b7}\032'..(cE and aK('\065\108\118\111\032\101\110\099\111\110\116\114\097\100\111','\084\097\114\103\101\116\032\102\111\117\110\100')or aK(
'\065\103\117\097\114\100\097\110\100\111\032\115\112\097\119\110\047\115\116\114\101\097\109\105\110\103\032\111\117\032\108\105\098\101\114\097\099\097\111\032\100\097\032\097\114\101\097',
'\087\097\105\116\105\110\103\032\102\111\114\032\115\112\097\119\110\047\115\116\114\101\097\109\105\110\103\032\111\114\032\097\114\101\097\032\117\110\108\111\099\107'))if not(cy and cz and cz.Health>0)
or a8.Opening.Playing then return end if a1.farm or a1.boss then if a1.farmMode
=='\077\105\120\101\100'and not cI[a1.bossId]then local cL=bv[a1.bossId]local cM=os.clock()if
cL and typeof(cL.cf)=='\067\070\114\097\109\101'and cM>=bZ and cM>=(bI[a1.bossId]or 0)then bZ=cM+
20 b_=cM+2 cy.CFrame=cL.cf+Vector3.new(0,4,0)end if cM<b_ then bx.Text=aK(
'\086\101\114\105\102\105\099\097\110\100\111\032\115\112\097\119\110\032\100\111\032\098\111\115\115\046\046\046','\067\104\101\099\107\105\110\103\032\098\111\115\115\032\115\112\097\119\110\046\046\046')return end end if cD and
not cF and not cG and not cI[cD.id]and not(a1.farmMode=='\077\105\120\101\100'and cI[a1.bossId]
)and typeof(cD.cf)=='\067\070\114\097\109\101'then local cL=cD.cf+Vector3.new(0,4,0)if(cy.Position
-cL.Position).Magnitude>15 then cy.CFrame=cL end return end if cE then local cL=
cy.Position-cE.Position if cL.Magnitude>10 then local cM=cE.Position+(cL.
Magnitude>0 and cL.Unit or Vector3.new(0,0,1))*7 cy.CFrame=CFrame.lookAt(cM,cE.
Position)end else local cL=a1.farmMode=='\066\111\115\115'and bv[a1.bossId]or(a1.farmMode==
'\078\080\067'or a1.farmMode=='\077\105\120\101\100')and bv[a1.npcId]or a1.progress and cw if cD then cL
=cD end if cL and typeof(cL.cf)=='\067\070\114\097\109\101'and(a1.farmMode~='\065\117\116\111'or a1.boost or
cL.level<=cB)then local cM=cL.cf.Position+Vector3.new(0,4,0)if(cy.Position-cM).
Magnitude>15 then cy.CFrame=CFrame.new(cM)end end end end if a1.abilities and cE
and os.clock()-bY>0.6 and not aO:GetFocusedTextBox()then bY=os.clock()local cL=
a8.Ability.Loadout(ct)if#cL>0 then bX=(bX-1)%#cL+1 local cM=a8.Ability.Keys[bX]
if cM then local cN=game:GetService('\086\105\114\116\117\097\108\073\110\112\117\116\077\097\110\097\103\101\114')cN:SendKeyEvent(true,
cM,false,game)cN:SendKeyEvent(false,cM,false,game)end bX=bX+1 end end end local
ct,cu,cv=false,false,-1 bJ=function()if not aQ or ct then return end ct=true
task.delay(math.max(0,0.05-(os.clock()-cv)),function()ct=false if not aQ then
return end if cu then bJ()return end cu=true cv=os.clock()local cw,cx=pcall(cs)
cu=false if not cw then a0(cx)end end)end local cw,cx local function cy(cz)if cw
==cz then return end if cx then cx:Disconnect()end cw=cz if not cz then return
end cx=cz.DescendantAdded:Connect(function(cA)local cB=cA while cB and cB.Parent
~=cz do cB=cB.Parent end if cB and(cA==cB or cA.Name=='\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116'or cA:
IsA('\072\117\109\097\110\111\105\100'))and cB:IsA('\077\111\100\101\108')and cB:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')and
cB:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')then bK[cB]=os.clock()bJ()end end)aR[#aR+1]=
cx end cy(bG)a6(workspace.ChildAdded,function(cz)if cz.Name=='\069\110\101\109\105\101\115'then cy(cz
)bJ()end end)task.spawn(function()while aQ do bJ()task.wait(0.15)end end)aW=aW+1
local cz=aI.button(aJ,aK('\080\097\114\097\114\032\116\111\100\097\115\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115',
'\083\116\111\112\032\097\108\108\032\097\117\116\111\109\097\116\105\111\110'),aW)a6(cz.Activated,function()for cA,cB in pairs(a1)do if
type(cB)=='\098\111\111\108\101\097\110'then a1[cA]=false end end pcall(aU)bi=false local cA=aP.
Character local cB=cA and cA:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cC=cA and cA
:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if cB and cC then cB:MoveTo(cC.Position)end
for cD,cE in ipairs(bn)do cE()end a0(aK('\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\114\097\100\097\115\046',
'\065\117\116\111\109\097\116\105\111\110\032\115\116\111\112\112\101\100\046'))end)aW=aW+1 local cA=aI.button(aJ,aK(
'\069\120\112\111\114\116\097\114\032\100\105\097\103\110\u{f3}\115\116\105\099\111\032\100\101\032\116\101\115\116\101','\069\120\112\111\114\116\032\116\101\115\116\032\100\105\097\103\110\111\115\116\105\099\115'),aW)a6(cA.
Activated,function()if type(writefile)=='\102\117\110\099\116\105\111\110'then local cB=
'\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095\084\101\115\116\095'..os.time()..'\046\106\115\111\110'local cC,cD=pcall(writefile,cB,aN:
JSONEncode({placeId=game.PlaceId,version=game.PlaceVersion,log=a_,config=a1,
patches=bl,pending=bM}))a0(cC and cB or tostring(cD))end end)a0(aK(
'\080\114\111\110\116\111\032\112\097\114\097\032\116\101\115\116\101\046\032\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\100\101\115\108\105\103\097\100\097\115\046',
'\082\101\097\100\121\032\102\111\114\032\116\101\115\116\105\110\103\046\032\065\117\116\111\109\097\116\105\111\110\032\105\115\032\111\102\102\046'))return aV end end)()local aG,aH,aI=
false,nil,false local aJ=task.spawn(function()aG,aH=pcall(aF,{ui=O,page=N('\070\097\114\109'
),T=function(aJ,aK)return b.language=='\112\116'and aJ or aK end,progress=aE,attach=
function(aJ)j=aJ end,section=N,quick=function(aJ)k=aJ end})aI=true end)local aK=
os.clock()+45 while l and not aI and os.clock()<aK do task.wait(0.05)end if not
aI then pcall(task.cancel,aJ)aG=false aH=p(
'\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\052\053\032\115\101\103\117\110\100\111\115\032\101\120\099\101\100\105\100\111\046\032\u{da}\108\116\105\109\097\032\101\116\097\112\097\058\032',
'\052\053\045\115\101\099\111\110\100\032\116\105\109\101\111\117\116\046\032\076\097\115\116\032\115\116\097\103\101\058\032')..as.Text end if not l then return end if not
aG then if j then pcall(j)j=nil end ar.Text=p(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\099\097\114\114\101\103\097\114\032\097\115\032\102\117\110\u{e7}\u{f5}\101\115',
'\067\111\117\108\100\032\110\111\116\032\108\111\097\100\032\116\104\101\032\102\101\097\116\117\114\101\115')as.Text=p(
'\070\101\099\104\101\032\111\032\112\097\105\110\101\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046\032\068\101\116\097\108\104\101\115\058\032',
'\067\108\111\115\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\116\114\121\032\097\103\097\105\110\046\032\068\101\116\097\105\108\115\058\032')..tostring(aH)aw.Text=p(
'\067\097\114\114\101\103\097\109\101\110\116\111\032\105\110\116\101\114\114\111\109\112\105\100\111','\076\111\097\100\105\110\103\032\105\110\116\101\114\114\117\112\116\101\100')b.ready()return end local
function aL(aM,aN)local aO,aP,aQ=false,false,nil local aR=task.spawn(function()
aP,aQ=pcall(aM)aO=true end)local aS=os.clock()+aN while l and not aO and os.
clock()<aS do task.wait(0.05)end if not aO then pcall(task.cancel,aR)return
false,p('\084\101\109\112\111\032\108\105\109\105\116\101\032\101\120\099\101\100\105\100\111','\084\105\109\101\032\108\105\109\105\116\032\101\120\099\101\101\100\101\100')end return aP,aQ end aE(
0.92,'\077\111\110\116\097\110\100\111\032\111\115\032\097\106\117\115\116\101\115\032\100\101\032\116\101\108\097\u{2026}','\066\117\105\108\100\105\110\103\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\u{2026}')
local aM local aN,aO=aL(function()local aN=N('\065\106\117\115\116\101\115')ab(aN)local aO=O.button(
aN,p('\u{1f1e7}\u{1f1f7}\032\032\073\100\105\111\109\097\058\032\080\111\114\116\117\103\117\u{ea}\115\032\032\u{b7}\032\032\065\108\116\101\114\097\114',
'\u{1f1fa}\u{1f1f8}\032\032\076\097\110\103\117\097\103\101\058\032\069\110\103\108\105\115\104\032\032\u{b7}\032\032\067\104\097\110\103\101'),870)r(aO.Activated,
function()if type(b.chooseLanguage)=='\102\117\110\099\116\105\111\110'then b.chooseLanguage()end end)O.
label(aN,'\084\101\120\116\076\097\098\101\108',p(
'\084\114\111\099\097\114\032\111\032\105\100\105\111\109\097\032\114\101\097\098\114\101\032\111\032\112\097\105\110\101\108\032\099\111\109\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\117\115\097\100\097\115\046',
'\067\104\097\110\103\105\110\103\032\108\097\110\103\117\097\103\101\032\114\101\111\112\101\110\115\032\116\104\101\032\112\097\110\101\108\032\119\105\116\104\032\097\117\116\111\109\097\116\105\111\110\032\112\097\117\115\101\100\046'),44,871)O.label(aN
,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
"\084\111\113\117\101\032\065\058\032\097\098\114\105\114\047\102\101\099\104\097\114\046\032\083\101\103\117\114\101\032\048\044\054\053\115\032\101\032\115\111\108\116\101\058\032\097\108\116\101\114\110\097\114\032\112\114\111\103\114\101\115\115\097\111\046\032\065\114\114\097\115\116\101\058\032\109\111\118\101\114\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\105\110\101\108\046"
or
"\084\097\112\032\065\058\032\116\111\103\103\108\101\032\112\097\110\101\108\046\032\072\111\108\100\032\048\046\054\053\115\032\097\110\100\032\114\101\108\101\097\115\101\058\032\116\111\103\103\108\101\032\112\114\111\103\114\101\115\115\105\111\110\046\032\068\114\097\103\058\032\109\111\118\101\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\110\101\108\046"
,68,900)local aP=O.label(aN,'\084\101\120\116\066\111\120','\069\066\065\053\070\070',40,902)aP.ClearTextOnFocus=false
O.label(aN,'\084\101\120\116\076\097\098\101\108',b.language=='\112\116'and
'\067\111\114\032\100\101\032\100\101\115\116\097\113\117\101\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\120\046\058\032\070\070\067\065\052\050\041'or
'\065\099\099\101\110\116\032\099\111\108\111\114\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\046\103\046\032\070\070\067\065\052\050\041',30,901)local aQ=
'\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095\084\104\101\109\101\046\106\115\111\110'local aR='\083\117\112\101\114\112\111\119\101\114'local aS={Superpower={
'\048\067\048\067\049\048','\050\055\049\056\051\053','\057\054\051\067\068\067','\070\070\070\053\070\070','\067\065\066\052\068\056','\069\066\065\053\070\070','\049\057\048\070\050\051'},Potato={'\050\051\049\070\049\057'
,'\052\049\051\054\050\055','\055\052\053\056\051\049','\070\067\070\054\069\050','\068\053\067\051\065\051','\069\066\065\053\070\070','\051\048\050\055\049\068'},Bloodmoon={'\049\055\048\067\049\051',
'\051\048\049\051\049\070','\054\066\050\054\051\068','\070\070\069\065\070\048','\068\050\065\048\066\048','\070\070\052\053\054\056','\050\051\048\070\049\065'},Midnight={'\049\048\049\051\049\069',
'\049\068\050\052\051\054','\051\053\052\054\054\053','\069\068\070\051\070\070','\065\052\066\051\067\067','\055\051\057\070\070\070','\049\053\049\066\050\065'},Emerald={'\048\066\049\057\049\054',
'\049\052\050\069\050\054','\050\066\053\057\052\055','\069\054\070\070\070\051','\057\069\067\054\066\051','\053\054\068\068\065\048','\049\048\050\052\049\069'},Arctic={'\049\049\049\066\050\054','\049\067\050\068\051\068'
,'\051\054\053\049\054\065','\069\066\070\056\070\070','\065\057\067\055\068\065','\055\057\068\057\070\070','\049\055\050\051\051\049'}}local function aT(aU)return
Color3.fromRGB(tonumber(aU:sub(1,2),16),tonumber(aU:sub(3,4),16),tonumber(aU:
sub(5,6),16))end local function aU()if type(writefile)=='\102\117\110\099\116\105\111\110'then task.
spawn(function()pcall(writefile,aQ,e:JSONEncode({preset=aR,hex=aP.Text}))end)end
end local function aV(aW)if type(aW)~='\115\116\114\105\110\103'or not aW:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')
then return false end o=Color3.fromRGB(tonumber(aW:sub(1,2),16),tonumber(aW:sub(
3,4),16),tonumber(aW:sub(5,6),16))m.accent=o F.BackgroundColor3=o z.
BackgroundColor3=o M(J)for aX,aY in ipairs(P)do aY()end for aX,aY in pairs(H)do
aY.ScrollBarImageColor3=o end aP.Text=aW return true end local function aW(aX)
local aY=aS[aX]if not aY then return end aR=aX for aZ,a_ in ipairs({'\100\097\114\107',
'\116\105\108\101','\101\100\103\101','\116\101\120\116','\109\117\116\101\100','\097\099\099\101\110\116','\115\105\100\101\098\097\114'})do m[a_]=aT(aY[aZ])end o=m.
accent for aZ,a_ in pairs(n)do if aZ.Parent then for a0,a1 in pairs(a_)do aZ[a0]
=m[a1]end end end local aZ=w:FindFirstChildOfClass('\085\073\071\114\097\100\105\101\110\116')if aZ then aZ.
Color=ColorSequence.new(m.tile,m.dark)end aV(aY[6])end O.label(aN,'\084\101\120\116\076\097\098\101\108',p(
'\084\069\077\065\083\032\080\082\079\078\084\079\083','\084\072\069\077\069\032\080\082\069\083\069\084\083'),32,880)for aX,aY in ipairs({'\083\117\112\101\114\112\111\119\101\114',
'\080\111\116\097\116\111','\066\108\111\111\100\109\111\111\110','\077\105\100\110\105\103\104\116','\069\109\101\114\097\108\100','\065\114\099\116\105\099'})do local aZ=O.button(aN,aY,
880+aX)r(aZ.Activated,function()aW(aY)aU()end)end aM=function()if type(readfile)
=='\102\117\110\099\116\105\111\110'then local aX=readfile(aQ)if type(aX)=='\115\116\114\105\110\103'and#aX<=2048 then
local aY=e:JSONDecode(aX)if l and aP.Parent and type(aY)=='\116\097\098\108\101'then if aS[aY.
preset]then aW(aY.preset)end aV(aY.hex)end end end end r(aP.FocusLost,function()
local aX=aP.Text:gsub('\035',''):upper()if aV(aX)then aU()end end)end,5)if not l
then return end aE(0.96,'\065\106\117\115\116\097\110\100\111\032\111\032\112\097\105\110\101\108\032\u{e0}\032\115\117\097\032\116\101\108\097\u{2026}',
'\070\105\116\116\105\110\103\032\116\104\101\032\112\097\110\101\108\032\116\111\032\121\111\117\114\032\115\099\114\101\101\110\u{2026}')local aP,aQ=pcall(X)if not aP then T=
table.clone(S)pcall(X)end local aR if not aN or not aP then aR=p(
'\065\106\117\115\116\101\115\032\118\105\115\117\097\105\115\032\105\110\099\111\109\112\108\101\116\111\115\058\032','\083\111\109\101\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\032\102\097\105\108\101\100\058\032')..tostring(aO
or aQ)E.Text=aR warn('\091\065\110\111\110\072\117\098\032'..a..'\093\032'..aR)end aE(1,
'\080\097\105\110\101\108\032\112\114\111\110\116\111\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\101\115\116\u{e3}\111\032\112\097\117\115\097\100\097\115\046',
'\080\097\110\101\108\032\114\101\097\100\121\046\032\070\101\097\116\117\114\101\115\032\097\114\101\032\112\097\117\115\101\100\046')ar.Text=p('\083\101\117\032\112\097\105\110\101\108\032\101\115\116\u{e1}\032\112\114\111\110\116\111',
'\089\111\117\114\032\112\097\110\101\108\032\105\115\032\114\101\097\100\121')am=true if ao()then ap:Destroy()else task.spawn(function()
while l and ap.Parent and not ao()do task.wait(0.05)end if l and ap.Parent then
ap:Destroy()end end)end pcall(b.ready)if aM then task.defer(function()aL(aM,2)
end)end
