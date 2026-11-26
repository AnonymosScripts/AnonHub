-- Luau
-- AnonHub protected distribution 0.40.2
-- local BOOT_VERSION="0.39.4"
local a='\048\046\051\057\046\052'local b=game.GameId==10770228857 and({[74183246285569]=1,[
82739382053686]=2})[game.PlaceId]assert(b,'\085\110\115\117\112\112\111\114\116\101\100\032\083\117\112\101\114\112\111\119\101\114\032\119\111\114\108\100')local c
=...assert(type(c)=='\116\097\098\108\101'and c.access,'\065\098\114\097\032\112\101\108\111\032\108\111\097\100\101\114\032\097\117\116\101\110\116\105\099\097\100\111')local d=
game:GetService('\080\108\097\121\101\114\115')local e=game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101')local f=
game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local g=game:GetService('\084\119\101\101\110\083\101\114\118\105\099\101')local h=d.
LocalPlayer local i,j={},{}local k,l local m=true local n={dark=Color3.fromRGB(
12,12,16),tile=Color3.fromRGB(39,24,53),edge=Color3.fromRGB(150,60,220),text=
Color3.fromRGB(255,245,255),muted=Color3.fromRGB(202,180,216),accent=Color3.
fromRGB(235,165,255)}n.sidebar=Color3.fromRGB(25,15,35)local o=setmetatable({},{
__mode='\107'})local p=n.accent local function q(r,s)return c.language=='\112\116'and r
or s end local function r(s,t,u)local v=Instance.new(s)if v:IsA('\071\117\105\079\098\106\101\099\116')then
v.BorderSizePixel=0 end for w,x in pairs(t)do v[w]=x if typeof(x)=='\067\111\108\111\114\051'then
for y,z in pairs(n)do if x==z then o[v]=o[v]or{}o[v][w]=y break end end end end
if v:IsA('\084\101\120\116\076\097\098\101\108')or v:IsA('\084\101\120\116\066\117\116\116\111\110')or v:IsA('\084\101\120\116\066\111\120')then v.
AutoLocalize=false end v.Parent=u return v end local function s(t,u)i[#i+1]=t:
Connect(u)end local function t(u,v)g:Create(u,TweenInfo.new(0.18,Enum.
EasingStyle.Quad,Enum.EasingDirection.Out),v):Play()end local function u(v,w)r(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,w or 10)},v)end local function v(w)return r(
'\085\073\083\116\114\111\107\101',{Color=n.edge,Thickness=1,ApplyStrokeMode=Enum.ApplyStrokeMode.Border
},w)end local w=r('\083\099\114\101\101\110\071\117\105',{Name='\065\110\111\110\072\117\098\083\117\112\101\114\112\111\119\101\114',ResetOnSpawn=false,
DisplayOrder=10032,ZIndexBehavior=Enum.ZIndexBehavior.Sibling},h:WaitForChild(
'\080\108\097\121\101\114\071\117\105'))local x=r('\070\114\097\109\101',{AnchorPoint=Vector2.new(0.5,0.5),Size=UDim2.
fromScale(0.94,0.88),Position=UDim2.fromScale(0.5,0.5),BackgroundColor3=n.dark,
ClipsDescendants=true},w)u(x,9)v(x)r('\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(n.
tile,n.dark),Rotation=90},x)local y=r('\070\114\097\109\101',{Size=UDim2.new(0,174,1,0),
BackgroundColor3=n.sidebar},x)r('\084\101\120\116\076\097\098\101\108',{Text='\065\078\079\078\072\085\066',Position=UDim2.
fromOffset(17,24),Size=UDim2.fromOffset(145,28),BackgroundTransparency=1,
TextColor3=n.text,Font=Enum.Font.GothamBold,TextSize=20,TextXAlignment=Enum.
TextXAlignment.Left},y)r('\084\101\120\116\076\097\098\101\108',{Text='\083\085\080\069\082\080\079\087\069\082\032\047\032\067\079\078\084\082\079\076',Position=UDim2
.fromOffset(18,56),Size=UDim2.fromOffset(146,20),BackgroundTransparency=1,
TextColor3=p,Font=Enum.Font.Code,TextSize=9,TextXAlignment=Enum.TextXAlignment.
Left},y)r('\084\101\120\116\076\097\098\101\108',{Text=h.DisplayName,Position=UDim2.new(0,16,1,-62),Size=
UDim2.new(1,-32,0,24),BackgroundTransparency=1,TextColor3=n.text,Font=Enum.Font.
GothamMedium,TextSize=12,TextTruncate=Enum.TextTruncate.AtEnd,TextXAlignment=
Enum.TextXAlignment.Left},y)local z=r('\070\114\097\109\101',{Size=UDim2.new(1,0,0,68),
BackgroundTransparency=1,Active=true},x)local A=r('\084\101\120\116\076\097\098\101\108',{Text='\065',Font=
Enum.Font.GothamBlack,TextSize=20,TextColor3=n.dark,BackgroundColor3=p,Position=
UDim2.fromOffset(16,16),Size=UDim2.fromOffset(36,36)},z)u(A)A.Text=string.upper(
h.DisplayName:sub(1,1))A.Size=UDim2.fromOffset(40,40)A.Position=UDim2.
fromOffset(14,16)local B=r('\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,Image='\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\065\118\097\116\097\114\072\101\097\100\083\104\111\116\038\105\100\061'..h.UserId..
'\038\119\061\049\053\048\038\104\061\049\053\048',ScaleType=Enum.ScaleType.Fit},A)u(B,10)s(B:
GetPropertyChangedSignal('\073\115\076\111\097\100\101\100'),function()if B.IsLoaded then A.
TextTransparency=1 end end)local C=r('\084\101\120\116\076\097\098\101\108',{Text=h.DisplayName,Size=UDim2.
new(1,-154,0,22),Position=UDim2.fromOffset(64,8),BackgroundTransparency=1,
TextColor3=n.text,TextSize=15,Font=Enum.Font.GothamBold,TextTruncate=Enum.
TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left},z)r('\084\101\120\116\076\097\098\101\108',{
Text='\064'..h.Name,Position=UDim2.fromOffset(65,31),Size=UDim2.new(1,-154,0,16),
BackgroundTransparency=1,TextColor3=n.muted,TextSize=11,Font=Enum.Font.Gotham,
TextTruncate=Enum.TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left},z)
local D=r('\084\101\120\116\076\097\098\101\108',{Text='',Position=UDim2.fromOffset(65,49),Size=UDim2.new(1
,-82,0,18),BackgroundTransparency=1,TextColor3=p,TextSize=10,Font=Enum.Font.
GothamMedium,TextXAlignment=Enum.TextXAlignment.Left},z)local function E(F,G,H)
local I=F.plan=='\080\114\101\109\105\117\109'and'\080\114\101\109\105\117\109'or'\077\101\109\098\101\114'local J=type(F.deadline)==
'\110\117\109\098\101\114'and F.deadline-G or type(F.expiresAt)=='\110\117\109\098\101\114'and F.expiresAt-H if J
then if J<=0 then return I..q('\032\u{b7}\032\069\120\112\105\114\097\100\111','\032\u{b7}\032\069\120\112\105\114\101\100')end local K=
math.floor(J)local L=math.floor(K/86400)K=K%86400 local M=math.floor(K/3600)
local N=math.floor(K%3600/60)local O=(L>0 and L..'\100\032'or'')..string.format(
'\037\048\050\100\104\032\037\048\050\100\109\032\037\048\050\100\115',M,N,K%60)return I..'\032\u{b7}\032'..O end return I..(F.lifetime==
true and q('\032\u{b7}\032\086\105\116\097\108\u{ed}\099\105\111','\032\u{b7}\032\076\105\102\101\116\105\109\101')or q(
'\032\u{b7}\032\080\114\097\122\111\032\110\u{e3}\111\032\105\110\102\111\114\109\097\100\111','\032\u{b7}\032\068\117\114\097\116\105\111\110\032\117\110\097\118\097\105\108\097\098\108\101'))end D.Text=E(
c.access,os.clock(),os.time())task.spawn(function()while m do D.Text=E(c.access,
os.clock(),os.time())task.wait(1)end end)local F=r('\084\101\120\116\076\097\098\101\108',{Text=q(
'\077\u{d3}\068\085\076\079\032\068\079\032\074\079\071\079\032\032\047\032\032\080\084','\071\065\077\069\032\077\079\068\085\076\069\032\032\047\032\032\069\078')..'\032\u{b7}\032\118'..a,Size=UDim2.
new(1,-32,0,30),Position=UDim2.new(0,16,1,-32),BackgroundTransparency=1,
TextColor3=n.muted,TextSize=10,Font=Enum.Font.Code,TextXAlignment=Enum.
TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd},x)local G=r(
'\084\101\120\116\066\117\116\116\111\110',{Text='\065',Size=UDim2.fromOffset(52,52),Position=UDim2.fromScale(
0.02,0.7),BackgroundColor3=p,TextColor3=n.dark,TextSize=20,Font=Enum.Font.
GothamBlack},w)u(G,16)v(G)if c.decorateLauncher then c.decorateLauncher(G)end
local H=r('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{CanvasSize=UDim2.new(),ScrollBarThickness=3,Size=
UDim2.new(1,-32,0,44),Position=UDim2.fromOffset(16,72),BackgroundColor3=n.tile},
x)u(H)local I,J={},{}local K='\070\097\114\109'local L=b==2 and{'\070\097\114\109','\068\117\110\103\101\111\110','\067\097\114\116\097\115',
'\077\101\108\104\111\114\105\097\115','\067\111\109\098\097\116\101','\065\106\117\115\116\101\115'}or{'\070\097\114\109','\067\097\114\116\097\115','\077\101\108\104\111\114\105\097\115','\067\111\109\098\097\116\101',
'\065\106\117\115\116\101\115'}local M={Farm='\070\097\114\109',Dungeon='\068\117\110\103\101\111\110',Cartas='\067\097\114\100\115',Melhorias=
'\085\112\103\114\097\100\101\115',Combate='\067\111\109\098\097\116',Ajustes='\083\101\116\116\105\110\103\115'}local function N(O)K=O for P,Q in
pairs(I)do Q.Visible=P==O t(J[P],{BackgroundColor3=P==O and p or n.tile,
TextColor3=P==O and n.dark or n.muted})if P==O then local R=Q.Position Q.
Position=R+UDim2.fromOffset(6,0)t(Q,{Position=R})end end end local function O(P)
assert(P~='\068\117\110\103\101\111\110'or b==2,'\068\117\110\103\101\111\110\032\105\115\032\111\110\108\121\032\097\118\097\105\108\097\098\108\101\032\105\110\032\087\111\114\108\100\032\050')if I[P]then
return I[P]end local Q=r('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Name=P,Size=UDim2.new(1,-32,1,-166),
Position=UDim2.fromOffset(16,126),BackgroundTransparency=1,ScrollBarThickness=3,
ScrollBarImageColor3=p,CanvasSize=UDim2.new(),AutomaticCanvasSize=Enum.
AutomaticSize.Y,Visible=P=='\070\097\114\109'},x)r('\085\073\076\105\115\116\076\097\121\111\117\116',{Padding=UDim.new(0,8),
SortOrder=Enum.SortOrder.LayoutOrder},Q)r('\085\073\080\097\100\100\105\110\103',{PaddingTop=UDim.new(0,2),
PaddingBottom=UDim.new(0,12),PaddingLeft=UDim.new(0,2)},Q)local R={Dungeon=q(
'\079\110\100\097\115\044\032\099\104\101\099\107\112\111\105\110\116\115\032\101\032\114\101\099\111\109\112\101\110\115\097\115\046','\087\097\118\101\115\044\032\099\104\101\099\107\112\111\105\110\116\115\032\097\110\100\032\114\101\119\097\114\100\115\046'),Melhorias
=q('\067\111\109\112\114\097\115\044\032\114\101\115\101\114\118\097\115\032\101\032\101\113\117\105\112\097\109\101\110\116\111\115\046','\080\117\114\099\104\097\115\101\115\044\032\114\101\115\101\114\118\101\115\032\097\110\100\032\101\113\117\105\112\109\101\110\116\046'),
Farm=q('\069\115\099\111\108\104\097\032\115\101\117\115\032\097\108\118\111\115\032\101\032\099\111\110\116\114\111\108\101\032\097\032\112\114\111\103\114\101\115\115\u{e3}\111\046',
'\067\104\111\111\115\101\032\121\111\117\114\032\116\097\114\103\101\116\115\032\097\110\100\032\099\111\110\116\114\111\108\032\112\114\111\103\114\101\115\115\105\111\110\046'),Cartas=q(
'\079\114\103\097\110\105\122\101\032\115\117\097\032\099\111\108\101\u{e7}\u{e3}\111\032\101\032\097\117\116\111\109\097\116\105\122\101\032\097\115\032\109\101\108\104\111\114\105\097\115\046',
'\077\097\110\097\103\101\032\121\111\117\114\032\099\111\108\108\101\099\116\105\111\110\032\097\110\100\032\097\117\116\111\109\097\116\101\032\117\112\103\114\097\100\101\115\046'),Combate=q(
'\067\111\110\116\114\111\108\101\115\032\100\101\032\099\111\109\098\097\116\101\032\101\032\104\097\098\105\108\105\100\097\100\101\115\046','\067\111\109\098\097\116\032\097\110\100\032\097\098\105\108\105\116\121\032\099\111\110\116\114\111\108\115\046'),Ajustes=q(
'\080\101\114\115\111\110\097\108\105\122\101\032\111\032\112\097\105\110\101\108\032\101\032\097\115\032\114\101\103\114\097\115\032\100\101\032\097\117\116\111\109\097\u{e7}\u{e3}\111\046',
'\067\117\115\116\111\109\105\122\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\097\117\116\111\109\097\116\105\111\110\032\114\117\108\101\115\046')}local S=r('\084\101\120\116\076\097\098\101\108',{Text=c.
language=='\112\116'and P or M[P],Size=UDim2.new(1,-8,0,28),LayoutOrder=-30,
BackgroundTransparency=1,TextColor3=n.text,TextSize=20,Font=Enum.Font.GothamBold
,TextXAlignment=Enum.TextXAlignment.Left},Q)r('\084\101\120\116\076\097\098\101\108',{Text=R[P],Size=UDim2.
new(1,-8,0,38),LayoutOrder=-29,BackgroundTransparency=1,TextColor3=n.muted,
TextSize=12,TextWrapped=true,Font=Enum.Font.Gotham,TextXAlignment=Enum.
TextXAlignment.Left},Q)local T=0 for U in pairs(I)do T+=1 end local U=r(
'\084\101\120\116\066\117\116\116\111\110',{Text=c.language=='\112\116'and P or M[P],Font=Enum.Font.GothamMedium,
TextSize=12,TextColor3=P=='\070\097\114\109'and n.dark or n.muted,Size=UDim2.new(0.25,-8,1,-
8),Position=UDim2.new(T*0.25,4,0,4),BackgroundColor3=P=='\070\097\114\109'and p or n.tile,
AutoButtonColor=false},H)u(U,8)r('\085\073\080\097\100\100\105\110\103',{PaddingLeft=UDim.new(0,10),
PaddingRight=UDim.new(0,10)},U)I[P]=Q J[P]=U s(U.Activated,function()N(P)end)
return Q end local P={}function P.label(Q,R,S,T,U)local V=r(R,{Text=S,Size=UDim2
.new(1,-10,0,T),LayoutOrder=U,BackgroundTransparency=R=='\084\101\120\116\066\111\120'and 0 or 1,
BackgroundColor3=n.tile,TextColor3=n.text,TextSize=13,Font=Enum.Font.Gotham,
TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left},Q)r('\085\073\080\097\100\100\105\110\103',{
PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0,12)},V)if R=='\084\101\120\116\066\111\120'then u(
V,8)v(V)V.ClearTextOnFocus=false s(V.Focused,function()t(V,{BackgroundColor3=n.
edge})end)s(V.FocusLost,function()t(V,{BackgroundColor3=n.tile})end)end return V
end function P.button(Q,R,S)local T=P.label(Q,'\084\101\120\116\066\117\116\116\111\110',R,48,S)T.
BackgroundTransparency=0 T.AutoButtonColor=false u(T,10)v(T)local U=r('\070\114\097\109\101',{
Name='\066\117\116\116\111\110\083\104\097\100\111\119',Position=UDim2.new(0,4,1,1),Size=UDim2.new(1,-8,0,3),
BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=0.6,Active=false},T)u(
U,3)s(T.MouseEnter,function()t(T,{BackgroundColor3=n.edge})end)s(T.MouseLeave,
function()t(T,{BackgroundColor3=n.tile})end)s(T.MouseButton1Down,function()t(T,{
BackgroundColor3=n.dark})end)s(T.MouseButton1Up,function()t(T,{BackgroundColor3=
n.tile})end)return T end local Q={}function P.checkbox(R,S,T)local U=P.button(R,
'',T)local V=P.label(U,'\084\101\120\116\076\097\098\101\108',S,48,0)V.Size=UDim2.new(1,-44,1,0)local W=r(
'\084\101\120\116\076\097\098\101\108',{Text='',AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,-2,0.5,
0),Size=UDim2.fromOffset(24,24),TextSize=18,Font=Enum.Font.GothamBold,TextColor3
=n.dark,BackgroundColor3=n.dark},U)u(W,6)local X=v(W)local Y=false local
function Z(_)Y=_==true W.Text=Y and'\u{2713}'or''t(W,{BackgroundColor3=Y and p
or n.dark})t(X,{Color=Y and p or n.edge})end Q[#Q+1]=function()Z(Y)end return U,
Z end local R={}function R.resolve(S,T,U)local V=math.max(0.1,math.min(U.scale/
100,math.max(1,S-16)/300,math.max(1,T-16)/340))local W=math.min(U.width,math.
max(1,S-16)/V)local X=math.min(U.height,math.max(1,T-16)/V)return{scale=V,width=
W,height=X,x=8+math.max(0,S-16-W*V)*U.x,y=8+math.max(0,T-16-X*V)*U.y,compact=W<
620}end local S='\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095\076\097\121\111\117\116\095'..h.UserId..'\046\106\115\111\110'local T={width=
760,height=580,scale=e.TouchEnabled and 80 or 100,launcher=56,x=0.5,y=0.5}local
U=table.clone(T)local V={width={300,1100},height={340,900},scale={65,150},
launcher={44,88},x={0,1},y={0,1}}if type(readfile)=='\102\117\110\099\116\105\111\110'then pcall(
function()local W=f:JSONDecode(readfile(S))for X,Y in pairs(V)do local Z=W[X]if
type(Z)=='\110\117\109\098\101\114'and Z==Z then U[X]=math.clamp(Z,Y[1],Y[2])end end end)end local
function W()if type(writefile)=='\102\117\110\099\116\105\111\110'then pcall(writefile,S,f:JSONEncode(U)
)end end local X=r('\085\073\083\099\097\108\101',{Scale=1},x)local function Y()local Z=w.
AbsoluteSize if Z.X<100 or Z.Y<100 then return end local _=R.resolve(Z.X,Z.Y,U)x
.AnchorPoint=Vector2.zero x.Size=UDim2.fromOffset(_.width,_.height)x.Position=
UDim2.fromOffset(_.x,_.y)X.Scale=_.scale y.Visible=not _.compact z.Position=
UDim2.fromOffset(_.compact and 0 or 174,0)z.Size=UDim2.new(1,_.compact and 0 or-
174,0,76)H.Parent=x H.Position=_.compact and UDim2.new(0,12,1,-84)or UDim2.
fromOffset(12,100)H.Size=_.compact and UDim2.new(1,-24,0,44)or UDim2.new(0,150,1
,-180)H.BackgroundTransparency=1 H.CanvasSize=_.compact and UDim2.fromOffset(#L*
110,0)or UDim2.fromOffset(0,#L*52)H.ScrollingDirection=_.compact and Enum.
ScrollingDirection.X or Enum.ScrollingDirection.Y for aa,ab in ipairs(L)do local
ac=J[ab]if ac then ac.Size=_.compact and UDim2.fromOffset(104,42)or UDim2.new(1,
0,0,44)ac.Position=_.compact and UDim2.fromOffset((aa-1)*110,0)or UDim2.
fromOffset(0,(aa-1)*52)ac.Text=_.compact and(c.language=='\112\116'and ab or M[ab])or
string.format('\037\048\050\100\032\u{b7}\032\037\115',aa,c.language=='\112\116'and ab or M[ab])ac.
TextXAlignment=_.compact and Enum.TextXAlignment.Center or Enum.TextXAlignment.
Left end end for aa,ab in pairs(I)do ab.Position=UDim2.fromOffset(_.compact and
16 or 190,88)ab.Size=UDim2.new(1,_.compact and-32 or-206,1,_.compact and-184 or-
136)end F.Position=UDim2.new(0,_.compact and 16 or 190,1,-34)F.Size=UDim2.new(1,
_.compact and-40 or-214,0,26)G.Size=UDim2.fromOffset(U.launcher,U.launcher)end
s(w:GetPropertyChangedSignal('\065\098\115\111\108\117\116\101\083\105\122\101'),Y)local aa={}local function ab(ac)P
.label(ac,'\084\101\120\116\076\097\098\101\108',q('\084\069\076\065\032\069\032\084\079\081\085\069','\068\073\083\080\076\065\089\032\038\032\084\079\085\067\072'),32,-10)P.label(ac,
'\084\101\120\116\076\097\098\101\108',q(
'\065\114\114\097\115\116\101\032\111\032\099\097\098\101\u{e7}\097\108\104\111\032\112\097\114\097\032\109\111\118\101\114\046\032\085\115\101\032\111\032\099\097\110\116\111\032\105\110\102\101\114\105\111\114\032\112\097\114\097\032\114\101\100\105\109\101\110\115\105\111\110\097\114\046\032\079\115\032\097\106\117\115\116\101\115\032\115\u{e3}\111\032\115\097\108\118\111\115\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046'
,
"\068\114\097\103\032\116\104\101\032\104\101\097\100\101\114\032\116\111\032\109\111\118\101\046\032\085\115\101\032\116\104\101\032\098\111\116\116\111\109\032\099\111\114\110\101\114\032\116\111\032\114\101\115\105\122\101\046\032\067\104\097\110\103\101\115\032\097\114\101\032\115\097\118\101\100\032\097\117\116\111\109\097\116\105\099\097\108\108\121\046"
),64,-9)for Z,_ in ipairs({{'\115\099\097\108\101','\069\115\099\097\108\097\032\100\097\032\105\110\116\101\114\102\097\099\101','\073\110\116\101\114\102\097\099\101\032\115\099\097\108\101',5,
'\037'},{'\119\105\100\116\104','\076\097\114\103\117\114\097\032\100\111\032\112\097\105\110\101\108','\080\097\110\101\108\032\119\105\100\116\104',10,'\032\112\120'},{'\104\101\105\103\104\116',
'\065\108\116\117\114\097\032\100\111\032\112\097\105\110\101\108','\080\097\110\101\108\032\104\101\105\103\104\116',10,'\032\112\120'},{'\108\097\117\110\099\104\101\114','\084\097\109\097\110\104\111\032\100\111\032\102\108\117\116\117\097\110\116\101',
'\070\108\111\097\116\105\110\103\032\098\117\116\116\111\110\032\115\105\122\101',2,'\032\112\120'}})do local ad=_[1]local ae=r('\070\114\097\109\101',{Size=UDim2.
new(1,-8,0,76),BackgroundColor3=n.tile,LayoutOrder=-8+Z},ac)u(ae,10)v(ae)local
af=P.label(ae,'\084\101\120\116\076\097\098\101\108',q(_[2],_[3]),28,0)af.Size=UDim2.new(1,0,0,28)local ag=
P.button(ae,'\u{2212}',0)ag.Size=UDim2.fromOffset(42,36)ag.Position=UDim2.
fromOffset(12,32)ag.TextXAlignment=Enum.TextXAlignment.Center local ah=P.label(
ae,'\084\101\120\116\066\111\120','',36,0)ah.Position=UDim2.fromOffset(62,32)ah.Size=UDim2.new(1,-124
,0,36)ah.TextXAlignment=Enum.TextXAlignment.Center local ai=P.button(ae,'\043',0)ai
.Size=UDim2.fromOffset(42,36)ai.Position=UDim2.new(1,-54,0,32)ai.TextXAlignment=
Enum.TextXAlignment.Center local function aj()ah.Text=tostring(math.floor(U[ad])
).._[5]end aa[#aa+1]=aj local function ak(al)if al and al==al then U[ad]=math.
clamp(al,V[ad][1],V[ad][2])Y()W()end aj()end s(ag.Activated,function()ak(U[ad]-_
[4])end)s(ai.Activated,function()ak(U[ad]+_[4])end)s(ah.FocusLost,function()ak(
tonumber(ah.Text:match('\091\037\100\037\046\093\043')))end)aj()end local ad=P.button(ac,q(
'\067\101\110\116\114\097\108\105\122\097\114\032\101\032\114\101\115\116\097\117\114\097\114\032\116\097\109\097\110\104\111','\067\101\110\116\101\114\032\097\110\100\032\114\101\115\116\111\114\101\032\115\105\122\101'),-3)s(ad.Activated,
function()U=table.clone(T)Y()W()for ae,af in ipairs(aa)do af()end end)end local
ac=r('\084\101\120\116\066\117\116\116\111\110',{Text='\u{25e2}',TextSize=20,TextColor3=n.muted,
BackgroundTransparency=1,Size=UDim2.fromOffset(30,30),Position=UDim2.new(1,-30,1
,-30)},x)local ad local function ae(af,ag)if af.UserInputType~=Enum.
UserInputType.MouseButton1 and af.UserInputType~=Enum.UserInputType.Touch then
return end ad={input=af,kind=ag,origin=af.Position,pos=x.Position,width=x.Size.X
.Offset,height=x.Size.Y.Offset}end s(z.InputBegan,function(af)ae(af,'\109\111\118\101')end)
s(ac.InputBegan,function(af)ae(af,'\114\101\115\105\122\101')end)s(e.InputChanged,function(af)if
not ad or(af~=ad.input and af.UserInputType~=Enum.UserInputType.MouseMovement)
then return end local ag=af.Position-ad.origin local ah=w.AbsoluteSize if ad.
kind=='\114\101\115\105\122\101'then U.width=math.clamp(ad.width+ag.X/X.Scale,300,1100)U.height=
math.clamp(ad.height+ag.Y/X.Scale,340,900)else local ai=math.max(1,ah.X-16-x.
Size.X.Offset*X.Scale)local aj=math.max(1,ah.Y-16-x.Size.Y.Offset*X.Scale)U.x=
math.clamp((ad.pos.X.Offset+ag.X-8)/ai,0,1)U.y=math.clamp((ad.pos.Y.Offset+ag.Y-
8)/aj,0,1)end Y()end)s(e.InputEnded,function(af)if ad and af==ad.input then ad=
nil W()for ag,ah in ipairs(aa)do ah()end end end)local function af()if not m
then return end m=false if k then pcall(k)end for ag,ah in ipairs(i)do ah:
Disconnect()end w:Destroy()end c.attach(af)local function ag(ah)x.Visible=ah if
ah then Y()local ai=x.Position x.Position=ai+UDim2.fromOffset(0,8)t(x,{Position=
ai})end end local ah=r('\084\101\120\116\066\117\116\116\111\110',{Text='\u{2014}',Size=UDim2.fromOffset(32,32
),Position=UDim2.new(1,-76,0,16)},z)local ai=r('\084\101\120\116\066\117\116\116\111\110',{Text='\u{d7}',Size=
UDim2.fromOffset(32,32),Position=UDim2.new(1,-38,0,16)},z)for aj,ak in ipairs({
ah,ai})do ak.BackgroundColor3=n.tile ak.TextColor3=n.text ak.Font=Enum.Font.
GothamMedium ak.TextSize=18 u(ak,8)end s(ah.Activated,function()ag(false)end)s(
ai.Activated,function()c.unload()end)local aj,ak,al,Z,_ s(G.InputBegan,function(
am)if am.UserInputType==Enum.UserInputType.MouseButton1 or am.UserInputType==
Enum.UserInputType.Touch then aj=am ak=am.Position al=G.Position Z=os.clock()_=
false end end)s(e.InputChanged,function(am)if aj and(am==aj or am.UserInputType
==Enum.UserInputType.MouseMovement)then local an=am.Position-ak if an.Magnitude>
8 then _=true end if _ then local ao=w.AbsoluteSize local ap=math.clamp(al.X.
Scale*ao.X+al.X.Offset+an.X,0,math.max(0,ao.X-U.launcher))local aq=math.clamp(al
.Y.Scale*ao.Y+al.Y.Offset+an.Y,0,math.max(0,ao.Y-U.launcher))G.Position=UDim2.
fromOffset(ap,aq)end end end)s(e.InputEnded,function(am)if aj and(am==aj or am.
UserInputType==Enum.UserInputType.MouseButton1)then if not _ then if os.clock()-
Z>=0.65 then if l then l()end else ag(not x.Visible)end end aj=nil end end)s(e.
InputBegan,function(am,an)if not an and am.KeyCode==Enum.KeyCode.RightControl
then ag(not x.Visible)end end)local am=os.clock()local an,ao=false,false local
function ap()return an and(ao or os.clock()-am>=2.5)end local aq=r('\070\114\097\109\101',{Name
='\076\111\097\100\105\110\103',Size=UDim2.fromScale(1,1),BackgroundColor3=n.dark,ZIndex=50},x)u(aq,
10)local ar=r('\084\101\120\116\076\097\098\101\108',{Text='\065\078\079\078\072\085\066',Position=UDim2.fromScale(0.1,0.045),
Size=UDim2.fromScale(0.8,0.12),BackgroundTransparency=1,Font=Enum.Font.
GothamBlack,TextSize=28,TextColor3=p,ZIndex=51},aq)local as=r('\084\101\120\116\076\097\098\101\108',{Text=
q('\067\097\114\114\101\103\097\110\100\111\032\077\117\110\100\111\032','\076\111\097\100\105\110\103\032\087\111\114\108\100\032')..b,Position=UDim2.fromScale(0.1,0.59),
Size=UDim2.fromScale(0.8,0.1),BackgroundTransparency=1,Font=Enum.Font.GothamBold
,TextSize=18,TextWrapped=true,TextColor3=n.text,ZIndex=51},aq)local at=r(
'\084\101\120\116\076\097\098\101\108',{Text='',Position=UDim2.fromScale(0.1,0.69),Size=UDim2.fromScale(0.8
,0.1),BackgroundTransparency=1,Font=Enum.Font.Gotham,TextSize=13,TextWrapped=
true,TextColor3=n.muted,ZIndex=51},aq)local au=r('\070\114\097\109\101',{Position=UDim2.
fromScale(0.15,0.82),Size=UDim2.new(0.7,0,0,10),BackgroundColor3=n.edge,ZIndex=
51},aq)u(au,4)local av=r('\070\114\097\109\101',{Size=UDim2.fromScale(0,1),BackgroundColor3=p,
ZIndex=52},au)u(av,4)r('\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(Color3.fromRGB(150,
60,220),Color3.fromRGB(235,165,255)),Rotation=0},av)local aw=r('\084\101\120\116\076\097\098\101\108',{Text
=q('\077\085\078\068\079\032','\087\079\082\076\068\032')..b..'\032\032\u{b7}\032\032\065\078\079\078\072\085\066\032\118'..a,Position=UDim2.fromScale(0.1,
0.145),Size=UDim2.fromScale(0.8,0.05),BackgroundTransparency=1,Font=Enum.Font.
Code,TextSize=10,TextColor3=n.muted,ZIndex=51},aq)local ax=r('\084\101\120\116\076\097\098\101\108',{Text=
'',Position=UDim2.fromScale(0.15,0.87),Size=UDim2.fromScale(0.7,0.06),
BackgroundTransparency=1,Font=Enum.Font.Code,TextSize=11,TextColor3=n.muted,
ZIndex=51},aq)local ay=r('\070\114\097\109\101',{Name='\071\097\109\101\067\111\118\101\114',Position=UDim2.fromScale(0.12
,0.22),Size=UDim2.fromScale(0.76,0.34),BackgroundColor3=n.tile,ClipsDescendants=
true,ZIndex=51},aq)u(ay,14)r('\085\073\083\116\114\111\107\101',{Color=p,Thickness=2,Transparency=0.15,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border},ay)local az=r('\073\109\097\103\101\076\097\098\101\108',{Size=
UDim2.fromScale(1,1),BackgroundTransparency=1,Image=c.identity and c.identity.
cover or'\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\071\097\109\101\084\104\117\109\098\110\097\105\108\038\105\100\061\055\052\049\056\051\050\052\054\050\056\053\053\054\057\038\119\061\052\056\048\038\104\061\050\055\048',ScaleType=
Enum.ScaleType.Crop,ZIndex=52},ay)u(az,14)r('\084\101\120\116\076\097\098\101\108',{Text=
'\083\084\069\065\076\032\065\032\083\085\080\069\082\080\079\087\069\082'..q('\032\u{b7}\032\077\085\078\068\079\032','\032\u{b7}\032\087\079\082\076\068\032')..b,Size=UDim2.new(1,0
,0,30),Position=UDim2.new(0,0,1,-30),BackgroundColor3=n.dark,
BackgroundTransparency=0.25,TextColor3=Color3.new(1,1,1),TextSize=12,Font=Enum.
Font.GothamBold,ZIndex=53},ay)local aA=r('\070\114\097\109\101',{Name='\067\111\118\101\114\082\101\102\108\101\099\116\105\111\110',Size=
UDim2.fromScale(1,1),BackgroundColor3=Color3.new(1,1,1),ZIndex=54,Active=false},
ay)u(aA,14)local aB=r('\085\073\071\114\097\100\105\101\110\116',{Rotation=20,Offset=Vector2.new(-1,0),
Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(0.4,1),NumberSequenceKeypoint.new(0.5,0.65),
NumberSequenceKeypoint.new(0.6,1),NumberSequenceKeypoint.new(1,1)})},aA)local aC
=g:Create(aB,TweenInfo.new(1.6,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,
-1,false,0.6),{Offset=Vector2.new(1,0)})aC:Play()s(aq.Destroying,function()aC:
Cancel()end)task.spawn(function()pcall(function()game:GetService(
'\067\111\110\116\101\110\116\080\114\111\118\105\100\101\114'):PreloadAsync({az})end)end)local aD=r('\084\101\120\116\066\117\116\116\111\110',{Text=q(
'\080\117\108\097\114\032\097\110\105\109\097\u{e7}\u{e3}\111','\083\107\105\112\032\097\110\105\109\097\116\105\111\110'),Position=UDim2.fromScale(0.3,0.93),
Size=UDim2.fromScale(0.4,0.055),BackgroundColor3=n.tile,TextColor3=n.text,Font=
Enum.Font.GothamMedium,TextSize=11,ZIndex=52},aq)u(aD,8)s(aD.Activated,function(
)ao=true if an then aq:Destroy()else aD.Text=q(
'\065\103\117\097\114\100\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115\u{2026}','\087\097\105\116\105\110\103\032\102\111\114\032\102\101\097\116\117\114\101\115\u{2026}')aD.Active=
false end end)local aE=r('\084\101\120\116\066\117\116\116\111\110',{Text=q('\070\101\099\104\097\114','\067\108\111\115\101'),Position=UDim2.
new(1,-88,0,12),Size=UDim2.fromOffset(76,32),BackgroundColor3=n.tile,TextColor3=
n.text,Font=Enum.Font.Gotham,TextSize=12,ZIndex=52},aq)u(aE,8)s(aE.Activated,
function()c.unload()end)local function aF(aG,aH,aI)if not m then error(
'\073\110\105\116\105\097\108\105\122\097\116\105\111\110\032\099\097\110\099\101\108\108\101\100')end at.Text=q(aH,aI)ax.Text=string.format('\037\100\037\037',math
.floor(aG*100))if c.progress then c.progress(0.43+0.57*aG,aH,aI)end t(av,{Size=
UDim2.fromScale(aG,1)})game:GetService('\082\117\110\083\101\114\118\105\099\101').Heartbeat:Wait()end Y()aF(
0.08,'\080\114\101\112\097\114\097\110\100\111\032\097\032\105\110\116\101\114\102\097\099\101\u{2026}','\080\114\101\112\097\114\105\110\103\032\116\104\101\032\105\110\116\101\114\102\097\099\101\u{2026}')local aG
=(function()local aG={}function aG.manualEligible(aH,aI,aJ,aK,aL)if aH=='\077\105\120\101\100'
then return(aI and aJ==aK)or(not aI and aJ==aL)end if aH=='\066\111\115\115'then return aI
and aJ==aK end return aH=='\078\080\067'and not aI and aJ==aL end function aG.protected(
aH,aI,aJ)local aK=aH.Cards and aH.Cards[aI]return not aK or aJ[aI]or aK.Favorite
==true or aK.Locked==true or table.find(aH.Equipped or{},aI)~=nil end function
aG.sacrificeCount(aH,aI,aJ,aK,aL,aM,aN)if aG.protected(aH,aI,aJ)or aL>(aN or 3)
then return 0 end for aO,aP in pairs(aH.Base and aH.Base.Holders or{})do if aP==
aI then return 0 end end return math.min(1000,aM,math.max(0,math.floor(aH.Cards[
aI].Count)-aK))end function aG.nextBoss(aH,aI)for aJ,aK in ipairs(aH)do if aK.
gate and not aI[aK.gate]then return aK end end end function aG.sameList(aH,aI)if
#aH~=#aI then return false end for aJ,aK in ipairs(aH)do if aI[aJ]~=aK then
return false end end return true end function aG.sameArea(aH,aI)if not aH or not
aI or aH.gate or aI.gate then return false end if aH.minZ~=nil and aH.maxZ~=nil
and aI.minZ~=nil and aI.maxZ~=nil then return aH.minZ==aI.minZ and aH.maxZ==aI.
maxZ end return aH.id==aI.id end function aG.carried(aH)local aI,aJ={},0 if
type(aH)=='\115\116\114\105\110\103'then for aK in aH:gmatch('\040\037\100\043\041\058\091\037\119\095\093\043')do if not aI[aK]then
aI[aK]=true aJ+=1 end end end return aI,aJ end function aG.displayName(aH)return
tostring(aH or''):gsub('\095','\032'):gsub('\040\037\108\041\040\037\117\041','\037\049\032\037\050'):gsub('\037\115\043','\032'):match(
'\094\037\115\042\040\046\045\041\037\115\042\036')end function aG.tripState(aH,aI,aJ)if aH==0 then return aI and
'\100\101\108\105\118\101\114\101\100'or'\108\111\115\116'end if aJ>15 then return'\116\105\109\101\111\117\116'end return'\119\097\105\116\105\110\103'end
function aG.number(aH,aI,aJ,aK)local aL=tonumber(aH)if not aL or aL~=aL or math.
abs(aL)==math.huge then return nil end aL=math.clamp(aL,aI,aJ)return aK and math
.floor(aL)or aL end function aG.tokenAffordable(aH,aI,aJ)return type(aI)==
'\110\117\109\098\101\114'and aI>=0 and(tonumber(aH)or 0)>=aI+aJ end function aG.dungeonEnemy(aH,
aI,aJ,aK)return aH~=nil and aI==aH and aJ>0 and aK~=true end function aG.
shouldExit(aH,aI,aJ)return aH>0 and aI>=aH and aJ end function aG.world(aH,aI)if
aI~=10770228857 then return nil end return({[74183246285569]=1,[82739382053686]=
2})[aH]end function aG.multiplier(aH,aI)local aJ=aG.number(aH,1,1e18)if not aJ
then return 1e15 end if aI~=2 and aJ==1e12 then return 1e15 end return aJ end
return function(aH)local aI=aG.world(game.PlaceId,game.GameId)assert(aI,
'\085\110\115\117\112\112\111\114\116\101\100\032\083\117\112\101\114\112\111\119\101\114\032\119\111\114\108\100')local aJ,aK,aL=aH.ui,aH.page,aH.T local aM=game:
GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local aN=game:GetService('\080\108\097\121\101\114\115')local aO=game:
GetService('\072\116\116\112\083\101\114\118\105\099\101')local aP=game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101')local aQ=aN
.LocalPlayer local aR=true local aS,aT,aU={},{},{}local aV local function aW()aR
=false for aX,aY in ipairs(aS)do aY:Disconnect()end for aX,aY in pairs(aU)do for
aZ,a_ in ipairs(aY)do a_:Disconnect()end end table.clear(aU)for aX=#aT,1,-1 do
local aY=aT[aX]if aY.object[aY.key]==aY.replacement then aY.object[aY.key]=aY.
original end end if aV then pcall(aV)end end aH.attach(aW)local aX=0 local
function aY(aZ,a_)aX=aX+1 local a0=aJ.label(aK,'\084\101\120\116\076\097\098\101\108',aZ,a_ or 42,aX)a0.
TextSize=12 a0.TextWrapped=true return a0 end local aZ=aY(aL(
'\067\097\114\114\101\103\097\110\100\111\032\105\110\116\101\114\102\097\099\101\115\032\100\111\032\106\111\103\111\046\046\046','\076\111\097\100\105\110\103\032\103\097\109\101\032\105\110\116\101\114\102\097\099\101\115\046\046\046'),62)aZ.
LayoutOrder=800 local a_=aY('',110)a_.LayoutOrder=801 local a0={}local function
a1(a2)a0[#a0+1]=os.date('\037\072\058\037\077\058\037\083')..'\032'..tostring(a2)if#a0>30 then table.
remove(a0,1)end aZ.Text=tostring(a2)end local a2={rebirth=false,returnFull=false
,farm=false,progress=false,boss=false,open=false,equip=false,place=false,fuse=
false,sacrifice=false,tree=false,upgrades=false,abilities=false,boost=false,
guard=false,stun=false,multiplier=1e15,reserve=1,maxRank=3,protected='',branch=
'\080\111\119\101\114',farmMode='\065\117\116\111',bossId=2,npcId=1,rarities={Common=true,Uncommon=true,
Rare=true}}a2.dungeonFarm=false a2.dungeonEnter=false a2.dungeonRepeat=false a2.
dungeonAbilities=false a2.dungeonSpeed=false a2.potionBuy=false a2.dungeonBuy=
false a2.cosmeticBuy=false a2.cosmeticEquip=false a2.trinketEquip=false a2.
hoverHeight=8 a2.exitFloor=10 a2.walkSpeed=30 a2.repeatDelay=15 a2.cashReserve=0
a2.tokenReserve=0 a2.buyLimit=25 a2.potionStock=3 a2.potionTier=4 a2.
dungeonStock=1 a2.trinketStat='\068\097\109\097\103\101'a2.upgradeKinds={Cash=true,Health=true,
Carry=true,Crit=true,Cooldown=true,Streak=true}a2.potionKinds={}a2.dungeonItems=
{}a2.cosmeticKinds={Aura=true,Trail=true}if aI==2 then a2.rarities={Cosmic=true,
Ancient=true,Cursed=true}end local a3={'\104\111\118\101\114\072\101\105\103\104\116','\101\120\105\116\070\108\111\111\114','\119\097\108\107\083\112\101\101\100',
'\114\101\112\101\097\116\068\101\108\097\121','\099\097\115\104\082\101\115\101\114\118\101','\116\111\107\101\110\082\101\115\101\114\118\101','\098\117\121\076\105\109\105\116','\112\111\116\105\111\110\083\116\111\099\107','\112\111\116\105\111\110\084\105\101\114'
,'\100\117\110\103\101\111\110\083\116\111\099\107','\116\114\105\110\107\101\116\083\116\097\116','\117\112\103\114\097\100\101\075\105\110\100\115','\112\111\116\105\111\110\075\105\110\100\115','\100\117\110\103\101\111\110\073\116\101\109\115',
'\099\111\115\109\101\116\105\099\075\105\110\100\115'}local a4={hoverHeight={4,24},exitFloor={0,1000},walkSpeed={16,
100},repeatDelay={5,300},cashReserve={0,1e100},tokenReserve={0,1e12},buyLimit={1
,1000},potionStock={1,100},potionTier={1,5},dungeonStock={1,100}}local a5=
'\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095'..aQ.UserId..(aI==2 and'\095\087\111\114\108\100\050'or'')..'\046\106\115\111\110'if type(
readfile)=='\102\117\110\099\116\105\111\110'then local a6,a7=pcall(function()return aO:JSONDecode(
readfile(a5))end)if a6 and type(a7)=='\116\097\098\108\101'then for a8,a9 in ipairs(a3)do local
ba=a7[a9]if a4[a9]then a2[a9]=aG.number(ba,a4[a9][1],a4[a9][2],a9~='\099\097\115\104\082\101\115\101\114\118\101'
)or a2[a9]elseif type(a2[a9])=='\116\097\098\108\101'and type(ba)=='\116\097\098\108\101'then local bb={}for
bc,bd in pairs(ba)do if type(bc)=='\115\116\114\105\110\103'and#bc<120 and type(bd)=='\098\111\111\108\101\097\110'then
bb[bc]=bd end end a2[a9]=bb elseif a9=='\116\114\105\110\107\101\116\083\116\097\116'and table.find({'\068\097\109\097\103\101',
'\072\101\097\108\116\104','\080\111\119\101\114','\067\097\115\104','\076\117\099\107','\067\111\111\108\100\111\119\110'},ba)then a2[a9]=ba end end if type(a7.
protected)=='\115\116\114\105\110\103'then a2.protected=a7.protected:sub(1,2000)end a2.multiplier=
aG.multiplier(a7.multiplier,a7.multiplierVersion)if type(a7.reserve)=='\110\117\109\098\101\114'
and a7.reserve==a7.reserve then a2.reserve=math.clamp(math.floor(a7.reserve),1,
1000)end if table.find({'\065\117\116\111','\066\111\115\115','\078\080\067','\077\105\120\101\100'},a7.farmMode)then a2.
farmMode=a7.farmMode end if type(a7.bossId)=='\110\117\109\098\101\114'then a2.bossId=a7.bossId
end if type(a7.npcId)=='\110\117\109\098\101\114'then a2.npcId=a7.npcId end if type(a7.rarities)==
'\116\097\098\108\101'then a2.rarities=a7.rarities end if table.find({'\067\097\115\104','\076\117\099\107','\080\111\119\101\114',
'\083\112\101\101\100','\066\111\115\115'},a7.branch)then a2.branch=a7.branch end end end local function a6
()if type(writefile)=='\102\117\110\099\116\105\111\110'then local a7={world=aI,multiplierVersion=2,
protected=a2.protected,multiplier=a2.multiplier,reserve=a2.reserve,branch=a2.
branch,farmMode=a2.farmMode,bossId=a2.bossId,npcId=a2.npcId,rarities=a2.rarities
}for a8,a9 in ipairs(a3)do a7[a9]=a2[a9]end pcall(writefile,a5,aO:JSONEncode(a7)
)end end local function a7(a8,a9)aS[#aS+1]=a8:Connect(a9)end local function a8(
a9)local ba=aM for bb in a9:gmatch('\091\094\047\093\043')do ba=ba:FindFirstChild(bb)assert(ba,
'\077\105\115\115\105\110\103\032\109\111\100\117\108\101\058\032'..a9)end local bb,bc,bd=false,false,nil local be=task.spawn(
function()bc,bd=pcall(require,ba)bb=true end)local bf=os.clock()+12 while aR and
not bb and os.clock()<bf do task.wait(0.05)end if not bb then pcall(task.cancel,
be)error(aL('\084\101\109\112\111\032\108\105\109\105\116\101\032\097\111\032\099\097\114\114\101\103\097\114\058\032','\076\111\097\100\105\110\103\032\116\105\109\101\100\032\111\117\116\058\032')..a9)end if not
bc then error(tostring(bd))end return bd end local a9={}local ba={Place=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\080\108\097\099\101\067\111\110\102\105\103',State='\067\108\105\101\110\116\047\067\111\114\101\047\080\108\097\121\101\114\083\116\097\116\101',Cards=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\067\097\114\100\067\111\110\102\105\103',Stats='\083\104\097\114\101\100\047\082\117\108\101\115\047\067\097\114\100\083\116\097\116\115',Base=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\066\097\115\101\067\111\110\102\105\103',Shrine='\083\104\097\114\101\100\047\082\117\108\101\115\047\083\104\114\105\110\101',Progress=
'\083\104\097\114\101\100\047\082\117\108\101\115\047\080\114\111\103\114\101\115\115\105\111\110',Big='\083\104\097\114\101\100\047\085\116\105\108\047\066\105\103',Packs=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\080\097\099\107\067\111\110\102\105\103',Opening='\067\108\105\101\110\116\047\085\073\047\080\097\099\107\115\047\080\097\099\107\079\112\101\110\105\110\103',Registry=
'\067\108\105\101\110\116\047\067\111\114\101\047\076\111\099\097\108\069\110\101\109\121\082\101\103\105\115\116\114\121',Shields='\083\104\097\114\101\100\047\067\111\109\098\097\116\047\083\104\105\101\108\100\115',Ability=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\065\098\105\108\105\116\121\067\111\110\102\105\103',Settings='\067\108\105\101\110\116\047\067\111\110\116\114\111\108\108\101\114\115\047\083\101\116\116\105\110\103\115\067\111\110\116\114\111\108\108\101\114',
Power='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\080\111\119\101\114\067\111\110\102\105\103'}local bb,bc=0,0 for bd in pairs(ba)do bc+=1
end local bd,be=pcall(function()for bd,be in pairs(ba)do if aH.progress then aH.
progress(0.18+0.46*bb/bc,'\067\097\114\114\101\103\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115\032\100\111\032\106\111\103\111\u{2026}\032\040'..bb..
'\047'..bc..'\041','\076\111\097\100\105\110\103\032\103\097\109\101\032\102\101\097\116\117\114\101\115\u{2026}\032\040'..bb..'\047'..bc..'\041')end a9[bd]=a8(
be)bb+=1 end end)if not bd then error(be)end assert(a9.Place.World==aI,aL(
'\077\117\110\100\111\032\100\105\118\101\114\103\101\110\116\101\058\032\114\101\105\110\105\099\105\101\032\111\032\108\111\097\100\101\114\032\097\112\u{f3}\115\032\116\114\111\099\097\114\032\100\101\032\109\117\110\100\111\046',
'\087\111\114\108\100\032\109\105\115\109\097\116\099\104\058\032\114\101\115\116\097\114\116\032\116\104\101\032\108\111\097\100\101\114\032\097\102\116\101\114\032\115\119\105\116\099\104\105\110\103\032\119\111\114\108\100\115\046'))aY(aL(
'\077\117\110\100\111\032\100\101\116\101\099\116\097\100\111\058\032','\068\101\116\101\099\116\101\100\032\119\111\114\108\100\058\032')..aI..'\032\u{b7}\032\080\108\097\099\101\073\100\032'..game.PlaceId,36
)if aH.progress then aH.progress(0.7,
'\080\114\101\112\097\114\097\110\100\111\032\099\111\110\116\114\111\108\101\115\032\101\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\u{2026}',
'\080\114\101\112\097\114\105\110\103\032\099\111\110\116\114\111\108\115\032\097\110\100\032\097\117\116\111\109\097\116\105\111\110\u{2026}')end local bf={}for bg,bh in pairs({
Dungeon='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\068\117\110\103\101\111\110\067\111\110\102\105\103',Cosmetics='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\067\111\115\109\101\116\105\099\067\111\110\102\105\103',
Trinkets='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\084\114\105\110\107\101\116\067\111\110\102\105\103'})do local bi,bj=false,nil if bg~=
'\068\117\110\103\101\111\110'or aI==2 then bi,bj=pcall(a8,bh)end if bi then a9[bg]=bj else bf[bg]=
true if bj then a1(tostring(bj))end end end a9.Dungeon=a9.Dungeon or{Offers=
function()return{}end,CanBuy=function()return false end}a9.Cosmetics=a9.
Cosmetics or{Potions={Types={},Selling=false},Kinds={}}a9.Trinkets=a9.Trinkets
or{List={}}local bg=a9.State local bh=aM:FindFirstChild('\082\101\109\111\116\101\115')assert(bh,
'\082\101\109\111\116\101\115\032\109\105\115\115\105\110\103')local bi=a9.Settings.Get('\065\117\116\111\065\116\116\097\099\107')local bj=false aV=
function()if bj then a9.Settings.Set('\065\117\116\111\065\116\116\097\099\107',bi)end end local function bk(
bl)if a9.Settings.Get('\065\117\116\111\065\116\116\097\099\107')~=bl then a9.Settings.Set('\065\117\116\111\065\116\116\097\099\107',bl)end
bj=true end local function bl(bm,bn,bo)assert(type(bm[bn])=='\102\117\110\099\116\105\111\110',
'\077\105\115\115\105\110\103\032\102\117\110\099\116\105\111\110\058\032'..bn)local bp=bm[bn]local bq=bo(bp)bm[bn]=bq aT[#aT+1]={
object=bm,key=bn,original=bp,replacement=bq}end local bm,bn=pcall(function()bl(
a9.Registry,'\068\097\109\097\103\101',function(bm)return function(bn,bo,...)if aR and a2.boost
and typeof(bn)=='\073\110\115\116\097\110\099\101'and bn:GetAttribute('\076\111\099\097\108')==true and type(bo)==
'\110\117\109\098\101\114'and bo>0 and bo<math.huge then bo=math.min(bo*a2.multiplier,1e100)end
return bm(bn,bo,...)end end)bl(a9.Shields,'\065\098\115\111\114\098',function(bm)return function(
bn,...)if aR and a2.guard and bn==aQ.Character then return true,false end return
bm(bn,...)end end)bl(a9.Shields,'\071\117\097\114\100\101\100',function(bm)return function(bn,...)if
aR and a2.stun and bn==aQ.Character then return true end return bm(bn,...)end
end)end)if not bm then for bo=#aT,1,-1 do local bp=aT[bo]if bp.object[bp.key]==
bp.replacement then bp.object[bp.key]=bp.original end end table.clear(aT)a1(aL(
'\067\111\109\098\097\116\101\032\101\120\112\101\114\105\109\101\110\116\097\108\032\105\110\100\105\115\112\111\110\105\118\101\108\058\032','\069\120\112\101\114\105\109\101\110\116\097\108\032\099\111\109\098\097\116\032\117\110\097\118\097\105\108\097\098\108\101\058\032')..
tostring(bn))end local bo={}local function bp(bq,br,bs)aX=aX+1 local bt,bu=aJ.
checkbox(aK,aL(br,bs),aX)local function bv()bu(a2[bq])end bo[#bo+1]=bv bv()a7(bt
.Activated,function()if(bq=='\098\111\111\115\116'or bq=='\103\117\097\114\100'or bq=='\115\116\117\110')and not bm then
a1(aL('\073\110\116\101\114\102\097\099\101\115\032\100\101\032\099\111\109\098\097\116\101\032\105\110\100\105\115\112\111\110\105\118\101\105\115\058\032','\067\111\109\098\097\116\032\105\110\116\101\114\102\097\099\101\115\032\117\110\097\118\097\105\108\097\098\108\101\058\032')
..tostring(bn))return end local bw={potionBuy='\067\111\115\109\101\116\105\099\115',cosmeticBuy=
'\067\111\115\109\101\116\105\099\115',cosmeticEquip='\067\111\115\109\101\116\105\099\115',dungeonBuy='\068\117\110\103\101\111\110',trinketEquip=
'\084\114\105\110\107\101\116\115'}if bw[bq]and bf[bw[bq] ]then a1(aL(
'\067\111\110\102\105\103\117\114\097\u{e7}\u{e3}\111\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\032\110\101\115\116\097\032\118\101\114\115\u{e3}\111\032\100\111\032\106\111\103\111\046',
'\067\111\110\102\105\103\117\114\097\116\105\111\110\032\117\110\097\118\097\105\108\097\098\108\101\032\105\110\032\116\104\105\115\032\103\097\109\101\032\118\101\114\115\105\111\110\046'))return end a2[bq]=not a2[bq]
if bq=='\112\114\111\103\114\101\115\115'then for bx,by in ipairs({'\102\097\114\109','\098\111\115\115','\111\112\101\110','\101\113\117\105\112','\112\108\097\099\101',
'\102\117\115\101','\116\114\101\101','\117\112\103\114\097\100\101\115','\097\098\105\108\105\116\105\101\115','\114\101\116\117\114\110\070\117\108\108'})do a2[by]=a2.progress end for
bx,by in ipairs(bo)do by()end end if bq=='\097\098\105\108\105\116\105\101\115'or bq=='\112\114\111\103\114\101\115\115'then pcall(
bk,a2.abilities)end bv()end)end aH.quick(function()a2.progress=not a2.progress
for bq,br in ipairs({'\102\097\114\109','\098\111\115\115','\111\112\101\110','\101\113\117\105\112','\112\108\097\099\101','\102\117\115\101','\116\114\101\101',
'\117\112\103\114\097\100\101\115','\097\098\105\108\105\116\105\101\115','\114\101\116\117\114\110\070\117\108\108'})do a2[br]=a2.progress end pcall(bk,a2.
abilities)for bq,br in ipairs(bo)do br()end a1(a2.progress and aL(
'\080\114\111\103\114\101\115\115\097\111\032\108\105\103\097\100\097','\080\114\111\103\114\101\115\115\105\111\110\032\101\110\097\098\108\101\100')or aL('\080\114\111\103\114\101\115\115\097\111\032\100\101\115\108\105\103\097\100\097',
'\080\114\111\103\114\101\115\115\105\111\110\032\100\105\115\097\098\108\101\100'))end)bp('\112\114\111\103\114\101\115\115','\080\114\111\103\114\101\115\115\u{e3}\111\032\097\117\116\111\109\u{e1}\116\105\099\097',
'\065\117\116\111\032\112\114\111\103\114\101\115\115\105\111\110')bp('\102\097\114\109','\070\097\114\109\032\100\101\032\105\110\105\109\105\103\111\115','\069\110\101\109\121\032\102\097\114\109')bp('\114\101\116\117\114\110\070\117\108\108',
'\077\111\099\104\105\108\097\032\099\104\101\105\097\058\032\112\111\114\116\097\108\032\101\032\114\101\116\111\109\097\114\032\102\097\114\109','\070\117\108\108\032\098\097\103\058\032\112\111\114\116\097\108\032\097\110\100\032\114\101\115\117\109\101\032\102\097\114\109\105\110\103')bp(
'\098\111\115\115','\080\114\105\111\114\105\122\097\114\032\098\111\115\115\101\115','\080\114\105\111\114\105\116\105\122\101\032\098\111\115\115\101\115')bp('\097\098\105\108\105\116\105\101\115',
'\072\097\098\105\108\105\100\097\100\101\115\032\097\117\116\111\109\u{e1}\116\105\099\097\115','\065\117\116\111\109\097\116\105\099\032\097\098\105\108\105\116\105\101\115')bp('\114\101\098\105\114\116\104',
'\065\117\116\111\032\082\101\110\097\115\099\105\109\101\110\116\111','\065\117\116\111\032\082\101\098\105\114\116\104')local bq=aY(aL(
'\082\101\110\097\115\099\105\109\101\110\116\111\032\097\117\116\111\109\u{e1}\116\105\099\111\032\100\101\115\108\105\103\097\100\111\046\032\082\101\105\110\105\099\105\097\032\111\032\112\111\100\101\114\032\099\111\110\102\111\114\109\101\032\097\115\032\114\101\103\114\097\115\032\100\111\032\106\111\103\111\046'
,"\065\117\116\111\032\082\101\098\105\114\116\104\032\105\115\032\111\102\102\046\032\082\101\115\101\116\115\032\112\111\119\101\114\032\097\099\099\111\114\100\105\110\103\032\116\111\032\116\104\101\032\103\097\109\101\032\114\117\108\101\115\046"),54)aK=aH.
section('\067\097\114\116\097\115')bp('\111\112\101\110','\065\098\114\105\114\032\112\097\099\111\116\101\115','\079\112\101\110\032\112\097\099\107\115')bp('\101\113\117\105\112',
'\069\113\117\105\112\097\114\032\109\101\108\104\111\114\032\099\097\114\116\097','\069\113\117\105\112\032\098\101\115\116\032\099\097\114\100')bp('\112\108\097\099\101','\077\101\108\104\111\114\101\115\032\099\097\114\116\097\115\032\110\097\032\098\097\115\101',
'\066\101\115\116\032\099\097\114\100\115\032\111\110\032\098\097\115\101')bp('\102\117\115\101','\070\117\110\100\105\114\032\099\097\114\116\097\115','\070\117\115\101\032\099\097\114\100\115')bp('\116\114\101\101',
'\067\111\109\112\114\097\114\032\110\u{f3}\115\032\100\097\032\u{e1}\114\118\111\114\101','\066\117\121\032\115\107\105\108\108\032\116\114\101\101\032\110\111\100\101\115')bp('\115\097\099\114\105\102\105\099\101',
'\083\097\099\114\105\102\105\099\097\114\032\099\097\114\116\097\115\032\101\120\099\101\100\101\110\116\101\115','\083\097\099\114\105\102\105\099\101\032\115\112\097\114\101\115\032\097\099\099\111\114\100\105\110\103\032\116\111\032\083\101\116\116\105\110\103\115')aY(aL(
'\083\097\099\114\105\102\u{ed}\099\105\111\032\112\114\101\115\101\114\118\097\032\099\097\114\116\097\115\032\101\113\117\105\112\097\100\097\115\044\032\112\111\115\105\099\105\111\110\097\100\097\115\044\032\112\114\111\116\101\103\105\100\097\115\032\101\032\097\032\114\101\115\101\114\118\097\046\032\068\101\115\108\105\103\097\100\111\032\112\111\114\032\112\097\100\114\u{e3}\111\046'
,
"\083\097\099\114\105\102\105\099\101\032\112\114\101\115\101\114\118\101\115\032\101\113\117\105\112\112\101\100\044\032\112\108\097\099\101\100\044\032\112\114\111\116\101\099\116\101\100\032\099\097\114\100\115\032\097\110\100\032\116\104\101\032\114\101\115\101\114\118\101\046\032\079\102\102\032\098\121\032\100\101\102\097\117\108\116\046"
),54)aK=aH.section('\067\111\109\098\097\116\101')bp('\098\111\111\115\116','\068\097\110\111\032\078\080\067\032\108\111\099\097\108\032\097\109\112\108\105\097\100\111\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041'
,'\066\111\111\115\116\032\108\111\099\097\108\032\078\080\067\032\100\097\109\097\103\101\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041')bp('\103\117\097\114\100',
'\066\108\111\113\117\101\097\114\032\100\097\110\111\032\108\111\099\097\108\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041','\066\108\111\099\107\032\108\111\099\097\108\032\100\097\109\097\103\101\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041')bp(
'\115\116\117\110','\066\108\111\113\117\101\097\114\032\115\116\117\110\032\108\111\099\097\108\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041','\066\108\111\099\107\032\108\111\099\097\108\032\115\116\117\110\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041')
aY(aL(
'\080\114\111\116\101\u{e7}\u{e3}\111\032\097\116\117\097\032\110\111\032\099\108\105\101\110\116\101\059\032\100\097\110\111\032\100\111\032\115\101\114\118\105\100\111\114\032\110\u{e3}\111\032\u{e9}\032\098\108\111\113\117\101\097\100\111\046\032\077\117\108\116\105\112\108\105\099\097\100\111\114\032\101\120\105\103\101\032\078\080\067\032\076\111\099\097\108\046'
,
"\080\114\111\116\101\099\116\105\111\110\032\105\115\032\099\108\105\101\110\116\045\115\105\100\101\059\032\115\101\114\118\101\114\032\100\097\109\097\103\101\032\105\115\032\110\111\116\032\098\108\111\099\107\101\100\046\032\077\117\108\116\105\112\108\105\101\114\032\114\101\113\117\105\114\101\115\032\097\032\076\111\099\097\108\032\078\080\067\046"
),42)aY(aL('\070\097\114\109\032\117\115\097\032\116\101\108\101\112\111\114\116\101\032\097\116\u{e9}\032\111\032\097\108\118\111\032\115\101\108\101\099\105\111\110\097\100\111\046',
'\070\097\114\109\032\116\101\108\101\112\111\114\116\115\032\116\111\032\116\104\101\032\115\101\108\101\099\116\101\100\032\116\097\114\103\101\116\046'),36)aK=aH.section('\065\106\117\115\116\101\115')local
function br(bs,bt,bu)aY(bt,28)aX=aX+1 local bv=aJ.label(aK,'\084\101\120\116\066\111\120',tostring(a2
[bs]),38,aX)bv.TextEditable=true bv.ClearTextOnFocus=false a7(bv.FocusLost,
function()local bw=bu(bv.Text)if bw~=nil then a2[bs]=bw a6()end bv.Text=
tostring(a2[bs])end)end br('\109\117\108\116\105\112\108\105\101\114',aL(
'\077\117\108\116\105\112\108\105\099\097\100\111\114\032\108\111\099\097\108\058\032\112\097\100\114\u{e3}\111\032\049\032\113\117\097\100\114\105\108\104\u{e3}\111\032\040\049\101\049\053\041\044\032\109\u{e1}\120\105\109\111\032\049\101\049\056',
"\076\111\099\097\108\032\109\117\108\116\105\112\108\105\101\114\058\032\100\101\102\097\117\108\116\032\049\032\113\117\097\100\114\105\108\108\105\111\110\032\040\049\101\049\053\041\044\032\109\097\120\105\109\117\109\032\049\101\049\056"),function(bs)
local bt=tonumber(bs)if bt and bt==bt and bt<math.huge then return math.clamp(bt
,1,1e18)end end)br('\114\101\115\101\114\118\101',aL('\067\111\112\105\097\115\032\114\101\115\101\114\118\097\100\097\115\032\112\111\114\032\099\097\114\116\097',
'\082\101\115\101\114\118\101\100\032\099\111\112\105\101\115\032\112\101\114\032\099\097\114\100'),function(bs)local bt=tonumber(bs)if bt and bt==bt
and bt<math.huge then return math.clamp(math.floor(bt),1,1000)end end)br(
'\112\114\111\116\101\099\116\101\100',aL('\073\068\115\032\100\101\032\099\097\114\116\097\115\032\112\114\111\116\101\103\105\100\097\115\044\032\115\101\112\097\114\097\100\111\115\032\112\111\114\032\118\105\114\103\117\108\097',
'\080\114\111\116\101\099\116\101\100\032\099\097\114\100\032\073\068\115\044\032\099\111\109\109\097\032\115\101\112\097\114\097\116\101\100'),function(bs)return bs:sub(1,2000)end)aY(
aL('\082\097\114\105\100\097\100\101\115\032\112\101\114\109\105\116\105\100\097\115\032\110\111\032\115\097\099\114\105\102\u{ed}\099\105\111',
'\065\108\108\111\119\101\100\032\115\097\099\114\105\102\105\099\101\032\114\097\114\105\116\105\101\115\032\040\105\110\100\105\118\105\100\117\097\108\032\115\101\108\101\099\116\105\111\110\041'),42)local bs={Common='\067\111\109\117\109'
,Uncommon='\073\110\099\111\109\117\109',Rare='\082\097\114\097',Epic='\u{c9}\112\105\099\097',Legendary='\076\101\110\100\u{e1}\114\105\097',
Mythic='\077\u{ed}\116\105\099\097',God='\068\105\118\105\110\097',Secret='\083\101\099\114\101\116\097',Cosmic='\067\u{f3}\115\109\105\099\097',Ancient
='\065\110\099\101\115\116\114\097\108',Cursed='\065\109\097\108\100\105\u{e7}\111\097\100\097',Omega='\u{d4}\109\101\103\097',Ethereal='\069\116\u{e9}\114\101\097'
,Divine='\068\105\118\105\110\097',Void='\086\097\122\105\111',Transcendent='\084\114\097\110\115\099\101\110\100\101\110\116\101',Eternal='\069\116\101\114\110\097',
Oblivion='\079\098\108\105\118\105\111\110'}for bt,bu in ipairs(a9.Cards.RarityOrder)do aX=aX+1 local bv
,bw=aJ.checkbox(aK,aL(bs[bu]or bu,bu),aX)local function bx()bw(a2.rarities[bu]==
true)end bx()a7(bv.Activated,function()a2.rarities[bu]=not a2.rarities[bu]a6()
bx()end)end br('\098\114\097\110\099\104',aL('\082\097\109\111\058\032\067\097\115\104\044\032\076\117\099\107\044\032\080\111\119\101\114\044\032\083\112\101\101\100\032\111\117\032\066\111\115\115',
'\066\114\097\110\099\104\058\032\067\097\115\104\044\032\076\117\099\107\044\032\080\111\119\101\114\044\032\083\112\101\101\100\032\111\114\032\066\111\115\115'),function(bt)return table.find({
'\067\097\115\104','\076\117\099\107','\080\111\119\101\114','\083\112\101\101\100','\066\111\115\115'},bt)and bt or nil end)local function bt()
local bu={}for bv in a2.protected:gmatch('\091\094\044\093\043')do bu[bv:match('\094\037\115\042\040\046\045\041\037\115\042\036')]
=true end return bu end local bu={}local bv=aM:FindFirstChild('\069\110\101\109\121\080\097\100\115')if bv
then for bw,bx in ipairs(bv:GetChildren())do local by=bx:GetAttributes()bu[#bu+1
]={id=tonumber(bx.Name),level=by.Level or 1,gate=by.Gate,enemy=by.Enemy,name=by.
Name or by.Enemy,respawn=by.RespawnTime or 90,cf=by.PadCFrame,minZ=by.ZoneMinZ,
maxZ=by.ZoneMaxZ}end end table.sort(bu,function(bw,bx)return bw.level<bx.level
end)local bw={}for bx,by in ipairs(bu)do bw[by.id]=by end local bx=aK aK=aH.
section('\070\097\114\109')local by=aY('',54)local function bz(bA,bB,bC)aX=aX+1 local bD=aJ.
button(aK,'',aX)aX=aX+1 local bE=Instance.new('\083\099\114\111\108\108\105\110\103\070\114\097\109\101')bE.Size=UDim2.
new(1,-8,0,160)bE.LayoutOrder=aX bE.Visible=false bE.BackgroundTransparency=1 bE
.ScrollBarThickness=5 bE.CanvasSize=UDim2.new()bE.AutomaticCanvasSize=Enum.
AutomaticSize.Y bE.Parent=aK local bF=Instance.new('\085\073\076\105\115\116\076\097\121\111\117\116')bF.Padding=
UDim.new(0,4)bF.SortOrder=Enum.SortOrder.LayoutOrder bF.Parent=bE local function
bG()local bH=aL('\083\101\108\101\099\105\111\110\101','\083\101\108\101\099\116')for bI,bJ in ipairs(bC)do if bJ.id==a2[bB]
then bH=bJ.text end end bD.Text=bA..'\058\032'..bH..'\032\u{25bc}'end for bH,bI in
ipairs(bC)do local bJ=aJ.button(bE,bI.text,bH)a7(bJ.Activated,function()a2[bB]=
bI.id bE.Visible=false a6()bG()end)end a7(bD.Activated,function()bE.Visible=not
bE.Visible end)bG()end bz(aL('\077\111\100\111\032\100\101\032\102\097\114\109','\070\097\114\109\032\109\111\100\101'),'\102\097\114\109\077\111\100\101',{{id='\065\117\116\111',
text=aL('\080\114\111\103\114\101\115\115\u{e3}\111\032\097\117\116\111\109\u{e1}\116\105\099\097','\065\117\116\111\109\097\116\105\099\032\112\114\111\103\114\101\115\115\105\111\110')},{id='\066\111\115\115',
text=aL('\066\111\115\115\032\101\115\099\111\108\104\105\100\111','\083\101\108\101\099\116\101\100\032\098\111\115\115')},{id='\078\080\067',text=aL(
'\u{c1}\114\101\097\032\100\101\032\078\080\067\115\032\101\115\099\111\108\104\105\100\097','\083\101\108\101\099\116\101\100\032\078\080\067\032\097\114\101\097')},{id='\077\105\120\101\100',text=aL(
'\078\080\067\115\032\043\032\066\111\115\115\032\040\112\114\105\111\114\105\100\097\100\101\032\097\111\032\098\111\115\115\041','\078\080\067\115\032\043\032\066\111\115\115\032\040\098\111\115\115\032\112\114\105\111\114\105\116\121\041')}})local bA,bB,
bC={},{},{}for bD,bE in ipairs(bu)do local bF={id=bE.id,text=aG.displayName(bE.
name)..'\032\u{b7}\032\076\118\032'..bE.level..'\032\u{b7}\032'..bE.respawn..'\115'}if bE.gate then bA[#
bA+1]=bF else local bG for bH,bI in ipairs(bC)do if aG.sameArea(bE,bI)then bG=bI
break end end if bG then if a2.npcId==bE.id then a2.npcId=bG.id end else bC[#bC+
1]=bE local bH=0 for bI,bJ in ipairs(bu)do if aG.sameArea(bE,bJ)then bH+=1 end
end bF.text=aG.displayName(bE.name)..aL('\032\u{b7}\032\u{c1}\114\101\097\032\099\111\109\112\108\101\116\097\032\u{b7}\032',
'\032\u{b7}\032\070\117\108\108\032\097\114\101\097\032\u{b7}\032')..bH..aL('\032\112\111\110\116\111\115','\032\115\112\097\119\110\032\112\111\105\110\116\115')bB[#bB+1]=bF end
end end if not bw[a2.bossId]or not bw[a2.bossId].gate then a2.bossId=bA[1]and bA
[1].id or 0 end if not bw[a2.npcId]or bw[a2.npcId].gate then a2.npcId=bB[1]and
bB[1].id or 0 end bz('\066\111\115\115','\098\111\115\115\073\100',bA)bz(aL('\u{c1}\114\101\097\032\100\101\032\078\080\067\115','\078\080\067\032\097\114\101\097'),
'\110\112\099\073\100',bB)aY(aL(
"\078\080\067\115\032\043\032\066\111\115\115\058\032\102\097\114\109\097\032\097\032\097\114\101\097\032\101\115\099\111\108\104\105\100\097\032\110\097\032\101\115\112\101\114\097\032\101\032\118\111\108\116\097\032\097\111\032\098\111\115\115\032\113\117\097\110\100\111\032\101\108\101\032\097\112\097\114\101\099\101\046\032\086\101\114\105\102\105\099\097\032\112\101\114\105\111\100\105\099\097\109\101\110\116\101\032\097\032\097\114\101\110\097\032\115\101\032\111\032\098\111\115\115\032\101\115\116\105\118\101\114\032\102\111\114\097\032\100\111\032\115\116\114\101\097\109\105\110\103\046"
,
"\078\080\067\115\032\043\032\066\111\115\115\058\032\102\097\114\109\115\032\116\104\101\032\115\101\108\101\099\116\101\100\032\097\114\101\097\032\119\104\105\108\101\032\119\097\105\116\105\110\103\044\032\116\104\101\110\032\115\119\105\116\099\104\101\115\032\116\111\032\116\104\101\032\098\111\115\115\046\032\080\101\114\105\111\100\105\099\097\108\108\121\032\099\104\101\099\107\115\032\116\104\101\032\097\114\101\110\097\032\119\104\101\110\032\116\104\101\032\098\111\115\115\032\105\115\032\111\117\116\115\105\100\101\032\115\116\114\101\097\109\105\110\103\032\114\097\110\103\101\046"
),70)aY(aL(
'\069\115\099\111\108\104\101\114\032\111\032\097\108\118\111\032\110\097\111\032\108\105\103\097\032\111\032\102\097\114\109\046\032\065\116\105\118\101\032\070\097\114\109\032\111\117\032\080\114\111\103\114\101\115\115\u{e3}\111\032\097\117\116\111\109\u{e1}\116\105\099\097\032\097\099\105\109\097\046'
,
"\083\101\108\101\099\116\105\110\103\032\097\032\116\097\114\103\101\116\032\100\111\101\115\032\110\111\116\032\115\116\097\114\116\032\102\097\114\109\105\110\103\046\032\069\110\097\098\108\101\032\070\097\114\109\032\111\114\032\065\117\116\111\032\112\114\111\103\114\101\115\115\105\111\110\032\097\098\111\118\101\046"
),46)local bD if aI==2 then aK=aH.section('\068\117\110\103\101\111\110')aY(aL('\077\085\078\068\079\032','\087\079\082\076\068\032')..aI
..aL('\032\u{b7}\032\068\117\110\103\101\111\110\032\112\111\114\032\112\097\114\116\105\100\097\032\101\032\097\110\100\097\114','\032\u{b7}\032\068\117\110\103\101\111\110\032\098\121\032\114\117\110\032\097\110\100\032\102\108\111\111\114'),
36)bp('\100\117\110\103\101\111\110\070\097\114\109','\065\117\116\111\032\068\117\110\103\101\111\110\058\032\099\111\109\098\097\116\101\114\032\101\032\097\118\097\110\u{e7}\097\114',
'\065\117\116\111\032\068\117\110\103\101\111\110\058\032\102\105\103\104\116\032\097\110\100\032\097\100\118\097\110\099\101')bp('\100\117\110\103\101\111\110\069\110\116\101\114',
'\069\110\116\114\097\114\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\032\110\111\032\112\111\114\116\097\108','\065\117\116\111\109\097\116\105\099\097\108\108\121\032\101\110\116\101\114\032\116\104\101\032\112\111\114\116\097\108')bp(
'\100\117\110\103\101\111\110\082\101\112\101\097\116','\082\101\112\101\116\105\114\032\097\112\u{f3}\115\032\115\097\105\114','\082\101\112\101\097\116\032\097\102\116\101\114\032\101\120\105\116')bp(
'\100\117\110\103\101\111\110\065\098\105\108\105\116\105\101\115','\072\097\098\105\108\105\100\097\100\101\115\032\097\117\116\111\109\u{e1}\116\105\099\097\115\032\110\097\032\068\117\110\103\101\111\110',
'\065\117\116\111\032\097\098\105\108\105\116\105\101\115\032\105\110\032\068\117\110\103\101\111\110')aY(aL(
'\067\111\109\098\097\116\101\032\112\097\114\097\100\111\032\110\111\032\097\108\116\111\032\100\097\032\115\097\108\097\046\032\078\u{e3}\111\032\116\101\108\101\112\111\114\116\097\032\097\116\u{e9}\032\078\080\067\115\046\032\065\115\032\104\097\098\105\108\105\100\097\100\101\115\032\109\097\110\116\u{ea}\109\032\111\032\097\108\099\097\110\099\101\032\110\097\116\105\118\111\032\100\111\032\106\111\103\111\046'
,
"\083\116\097\116\105\111\110\097\114\121\032\099\111\109\098\097\116\032\097\098\111\118\101\032\116\104\101\032\114\111\111\109\046\032\078\101\118\101\114\032\116\101\108\101\112\111\114\116\115\032\116\111\032\078\080\067\115\046\032\065\098\105\108\105\116\105\101\115\032\114\101\116\097\105\110\032\116\104\101\105\114\032\110\097\116\105\118\101\032\103\097\109\101\032\114\097\110\103\101\046"
),64)br('\104\111\118\101\114\072\101\105\103\104\116',aL('\065\108\116\117\114\097\032\097\099\105\109\097\032\100\097\032\101\110\116\114\097\100\097\032\040\052\u{2013}\050\052\032\115\116\117\100\115\041',
'\072\101\105\103\104\116\032\097\098\111\118\101\032\101\110\116\114\121\032\040\052\u{2013}\050\052\032\115\116\117\100\115\041'),function(bE)return aG.number(bE,4,24)
end)bp('\100\117\110\103\101\111\110\083\112\101\101\100','\087\097\108\107\032\083\112\101\101\100\032\110\097\032\068\117\110\103\101\111\110','\068\117\110\103\101\111\110\032\087\097\108\107\032\083\112\101\101\100')bz(aL(
'\083\097\105\114\032\110\111\032\099\104\101\099\107\112\111\105\110\116','\069\120\105\116\032\097\116\032\099\104\101\099\107\112\111\105\110\116'),'\101\120\105\116\070\108\111\111\114',{{id=5,text='\053'},{id=10,
text='\049\048'},{id=15,text='\049\053'},{id=20,text='\050\048'},{id=25,text='\050\053'},{id=50,text=
'\053\048'},{id=0,text=aL('\067\111\110\116\105\110\117\097\114\032\115\101\109\032\115\097\u{ed}\100\097\032\097\117\116\111\109\u{e1}\116\105\099\097',
'\067\111\110\116\105\110\117\101\032\119\105\116\104\111\117\116\032\097\117\116\111\109\097\116\105\099\032\101\120\105\116')}})br('\119\097\108\107\083\112\101\101\100',aL(
'\086\101\108\111\099\105\100\097\100\101\032\110\097\032\068\117\110\103\101\111\110\032\040\049\054\u{2013}\049\048\048\041','\068\117\110\103\101\111\110\032\115\112\101\101\100\032\040\049\054\u{2013}\049\048\048\041'),
function(bE)return aG.number(bE,16,100)end)br('\114\101\112\101\097\116\068\101\108\097\121',aL(
'\073\110\116\101\114\118\097\108\111\032\101\110\116\114\101\032\112\097\114\116\105\100\097\115\032\040\053\u{2013}\051\048\048\032\115\041',
'\068\101\108\097\121\032\098\101\116\119\101\101\110\032\114\117\110\115\032\040\053\u{2013}\051\048\048\032\115\041'),function(bE)return aG.number(bE,5,300)end
)bD=aY(aL(
'\065\103\117\097\114\100\097\110\100\111\032\112\097\114\116\105\100\097\046\032\084\111\100\097\115\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\099\111\109\101\u{e7}\097\109\032\100\101\115\108\105\103\097\100\097\115\046',
'\087\097\105\116\105\110\103\032\102\111\114\032\097\032\114\117\110\046\032\065\108\108\032\097\117\116\111\109\097\116\105\111\110\032\115\116\097\114\116\115\032\111\102\102\046'),110)aY(aL(
'\079\032\102\097\114\109\032\100\111\032\109\117\110\100\111\032\112\097\117\115\097\032\100\101\110\116\114\111\032\100\097\032\068\117\110\103\101\111\110\046\032\082\101\110\097\115\099\105\109\101\110\116\111\044\032\112\097\099\111\116\101\115\044\032\099\111\109\112\114\097\115\032\101\032\114\101\111\114\103\097\110\105\122\097\u{e7}\u{e3}\111\032\100\101\032\099\097\114\116\097\115\032\097\103\117\097\114\100\097\109\032\097\032\115\097\u{ed}\100\097\046'
,
"\087\111\114\108\100\032\102\097\114\109\105\110\103\032\112\097\117\115\101\115\032\105\110\032\068\117\110\103\101\111\110\046\032\082\101\098\105\114\116\104\044\032\112\097\099\107\115\044\032\112\117\114\099\104\097\115\101\115\032\097\110\100\032\099\097\114\100\032\099\104\097\110\103\101\115\032\119\097\105\116\032\117\110\116\105\108\032\101\120\105\116\046"
),64)end aK=aH.section('\077\101\108\104\111\114\105\097\115')bp('\117\112\103\114\097\100\101\115','\065\117\116\111\032\085\112\103\114\097\100\101\032\099\111\109\032\100\105\110\104\101\105\114\111',
'\065\117\116\111\032\099\097\115\104\032\117\112\103\114\097\100\101\115')aY(aL('\077\101\108\104\111\114\105\097\115\032\112\101\114\109\105\116\105\100\097\115','\065\108\108\111\119\101\100\032\117\112\103\114\097\100\101\115'),28)local
function bE(bF,bG,bH)aX+=1 local bI,bJ=aJ.checkbox(aK,bH,aX)bJ(bF[bG]==true)a7(
bI.Activated,function()bF[bG]=not bF[bG]bJ(bF[bG]==true)a6()end)end for bF,bG in
ipairs(a9.Progress.Upgrades or{})do local bH={Cash={'\068\105\110\104\101\105\114\111','\067\097\115\104'},Health={
'\086\105\100\097','\072\101\097\108\116\104'},Carry={'\077\111\099\104\105\108\097','\067\097\114\114\121'},Crit={'\067\114\u{ed}\116\105\099\111','\067\114\105\116\105\099\097\108'},
Cooldown={'\082\101\099\097\114\103\097','\067\111\111\108\100\111\119\110'},Streak={'\083\101\113\117\u{ea}\110\099\105\097','\083\116\114\101\097\107'}}local bI=bH[
bG.Id]bE(a2.upgradeKinds,bG.Id,bI and aL(bI[1],bI[2])or aG.displayName(bG.Id))
end br('\099\097\115\104\082\101\115\101\114\118\101',aL('\068\105\110\104\101\105\114\111\032\109\u{ed}\110\105\109\111\032\114\101\115\101\114\118\097\100\111\032\040\097\099\101\105\116\097\032\049\101\049\050\041',
'\077\105\110\105\109\117\109\032\099\097\115\104\032\114\101\115\101\114\118\101\032\040\097\099\099\101\112\116\115\032\049\101\049\050\041'),function(bF)return aG.number(bF,0,1e100)
end)br('\098\117\121\076\105\109\105\116',aL('\076\105\109\105\116\101\032\100\101\032\099\111\109\112\114\097\115\032\097\117\116\111\109\u{e1}\116\105\099\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\065\117\116\111\032\112\117\114\099\104\097\115\101\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110'),function(bF)return aG.number(bF,1,1000,true)
end)bp('\112\111\116\105\111\110\066\117\121','\065\117\116\111\032\099\111\109\112\114\097\114\032\112\111\u{e7}\u{f5}\101\115\032\099\111\109\032\100\105\110\104\101\105\114\111',
'\065\117\116\111\032\098\117\121\032\112\111\116\105\111\110\115\032\119\105\116\104\032\099\097\115\104')br('\112\111\116\105\111\110\083\116\111\099\107',aL(
'\069\115\116\111\113\117\101\032\100\101\115\101\106\097\100\111\032\112\111\114\032\112\111\u{e7}\u{e3}\111\032\101\032\110\u{ed}\118\101\108',
'\084\097\114\103\101\116\032\115\116\111\099\107\032\112\101\114\032\112\111\116\105\111\110\032\097\110\100\032\116\105\101\114'),function(bF)return aG.number(bF,1,100,true)
end)br('\112\111\116\105\111\110\084\105\101\114',aL('\078\u{ed}\118\101\108\032\109\u{e1}\120\105\109\111\032\100\097\032\112\111\u{e7}\u{e3}\111\032\040\049\u{2013}\053\041',
'\077\097\120\105\109\117\109\032\112\111\116\105\111\110\032\116\105\101\114\032\040\049\u{2013}\053\041'),function(bF)return aG.number(bF,1,5,true)end
)for bF,bG in ipairs(a9.Cosmetics.Potions.Types or{})do bE(a2.potionKinds,bG.Id,
aG.displayName(bG.Id))end local bF={}if aI==2 then bp('\100\117\110\103\101\111\110\066\117\121',
'\065\117\116\111\032\099\111\109\112\114\097\114\032\099\111\109\032\068\117\110\103\101\111\110\032\084\111\107\101\110\115','\065\117\116\111\032\098\117\121\032\119\105\116\104\032\068\117\110\103\101\111\110\032\084\111\107\101\110\115')br(
'\116\111\107\101\110\082\101\115\101\114\118\101',aL('\084\111\107\101\110\115\032\109\u{ed}\110\105\109\111\115\032\114\101\115\101\114\118\097\100\111\115','\077\105\110\105\109\117\109\032\116\111\107\101\110\032\114\101\115\101\114\118\101'),
function(bG)return aG.number(bG,0,1e12,true)end)br('\100\117\110\103\101\111\110\083\116\111\099\107',aL(
'\069\115\116\111\113\117\101\032\100\101\115\101\106\097\100\111\032\112\111\114\032\105\116\101\109\032\100\097\032\068\117\110\103\101\111\110','\084\097\114\103\101\116\032\115\116\111\099\107\032\112\101\114\032\068\117\110\103\101\111\110\032\105\116\101\109'),function
(bG)return aG.number(bG,1,100,true)end)aY(aL(
'\069\115\099\111\108\104\097\032\111\115\032\105\116\101\110\115\032\100\097\032\108\111\106\097\032\100\097\032\068\117\110\103\101\111\110','\067\104\111\111\115\101\032\068\117\110\103\101\111\110\032\115\104\111\112\032\105\116\101\109\115'),34)bF=a9.
Dungeon.Offers()for bG,bH in ipairs(bF)do local bI=bH.Trinket or(bH.Potion and
bH.Potion.Type)local bJ=bI and(bI.Name or bI.Id)or bH.Id local bK=bH.Potion and(
'\032\u{b7}\032'..bH.Potion.Tier.Tier)or''bE(a2.dungeonItems,bH.Id,aG.displayName(bJ)
..bK..'\032\u{b7}\032'..bH.Price..aL('\032\116\111\107\101\110\115\032\u{b7}\032\097\110\100\097\114\032','\032\116\111\107\101\110\115\032\u{b7}\032\102\108\111\111\114\032')
..bH.Floor)end end bp('\099\111\115\109\101\116\105\099\066\117\121','\065\117\116\111\032\099\111\109\112\114\097\114\032\097\117\114\097\032\101\032\116\114\105\108\104\097\032\109\101\108\104\111\114\101\115',
'\065\117\116\111\032\098\117\121\032\098\101\116\116\101\114\032\097\117\114\097\032\097\110\100\032\116\114\097\105\108')bp('\099\111\115\109\101\116\105\099\069\113\117\105\112',
'\065\117\116\111\032\101\113\117\105\112\097\114\032\109\101\108\104\111\114\032\097\117\114\097\032\101\032\116\114\105\108\104\097','\065\117\116\111\032\101\113\117\105\112\032\098\101\115\116\032\097\117\114\097\032\097\110\100\032\116\114\097\105\108')bE(a2.
cosmeticKinds,'\065\117\114\097',aL('\065\117\114\097','\065\117\114\097'))bE(a2.cosmeticKinds,'\084\114\097\105\108',aL('\084\114\105\108\104\097',
'\084\114\097\105\108'))if aI==2 then bp('\116\114\105\110\107\101\116\069\113\117\105\112',
'\065\117\116\111\032\101\113\117\105\112\097\114\032\109\101\100\097\108\104\u{f5}\101\115\032\101\109\032\101\115\112\097\u{e7}\111\115\032\118\097\122\105\111\115',
'\065\117\116\111\032\101\113\117\105\112\032\116\114\105\110\107\101\116\115\032\105\110\116\111\032\101\109\112\116\121\032\115\108\111\116\115')bz(aL('\065\116\114\105\098\117\116\111\032\100\111\032\109\101\100\097\108\104\u{e3}\111',
'\084\114\105\110\107\101\116\032\115\116\097\116'),'\116\114\105\110\107\101\116\083\116\097\116',{{id='\068\097\109\097\103\101',text=aL('\068\097\110\111','\068\097\109\097\103\101')},{id=
'\072\101\097\108\116\104',text=aL('\086\105\100\097','\072\101\097\108\116\104')},{id='\080\111\119\101\114',text=aL('\080\111\100\101\114','\080\111\119\101\114')},{id=
'\067\097\115\104',text=aL('\068\105\110\104\101\105\114\111','\067\097\115\104')},{id='\076\117\099\107',text=aL('\083\111\114\116\101','\076\117\099\107')},{id=
'\067\111\111\108\100\111\119\110',text=aL('\082\101\099\097\114\103\097','\067\111\111\108\100\111\119\110')}})aY(aL(
'\077\101\100\097\108\104\u{f5}\101\115\032\106\u{e1}\032\099\111\108\111\099\097\100\111\115\032\115\u{e3}\111\032\112\114\101\115\101\114\118\097\100\111\115\046\032\067\111\109\112\114\097\115\032\097\117\116\111\109\u{e1}\116\105\099\097\115\032\117\115\097\109\032\097\112\101\110\097\115\032\100\105\110\104\101\105\114\111\032\100\111\032\106\111\103\111\032\101\032\116\111\107\101\110\115\059\032\115\101\108\101\099\105\111\110\101\032\111\115\032\105\116\101\110\115\032\100\101\115\101\106\097\100\111\115\046'
,
"\069\120\105\115\116\105\110\103\032\116\114\105\110\107\101\116\115\032\097\114\101\032\112\114\101\115\101\114\118\101\100\046\032\065\117\116\111\032\112\117\114\099\104\097\115\101\115\032\117\115\101\032\111\110\108\121\032\103\097\109\101\032\099\097\115\104\032\097\110\100\032\116\111\107\101\110\115\059\032\115\101\108\101\099\116\032\116\104\101\032\105\116\101\109\115\032\121\111\117\032\119\097\110\116\046"
),64)end local bG=aY('',54)aK=bx local bH=workspace:FindFirstChild('\069\110\101\109\105\101\115')
local bI=setmetatable({},{__mode='\107'})local bJ={}local bK local bL=setmetatable(
{},{__mode='\107'})local function bM(bN)if bI[bN]then return end local bO=bN:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')if not bO then return end bI[bN]=true local bP=
{}aU[bN]=bP bP[#bP+1]=bO.Died:Connect(function()local bQ=bw[bN:GetAttribute(
'\080\097\100\073\100')]if bQ and bQ.gate then bJ[bQ.id]=os.clock()+bQ.respawn end if bK then
bK()end end)bP[#bP+1]=bN.AncestryChanged:Connect(function()if bN.Parent~=bH then
for bQ,bR in ipairs(bP)do bR:Disconnect()end aU[bN]=nil bI[bN]=nil end end)local
bQ=bN:GetAttribute('\080\097\100\073\100')if bN:GetAttribute('\066\111\115\115')==true and bQ then bJ[bQ]=
nil end end local bN=false local bO={}local function bP(bQ,...)if not aR or bN
or os.clock()<(bO[bQ]or 0)then return nil end local bR=bh:FindFirstChild(bQ)if
not bR or not bR:IsA('\082\101\109\111\116\101\070\117\110\099\116\105\111\110')then a1(aL('\082\101\109\111\116\101\070\117\110\099\116\105\111\110\032\097\117\115\101\110\116\101\058\032',
'\077\105\115\115\105\110\103\032\082\101\109\111\116\101\070\117\110\099\116\105\111\110\058\032')..bQ)return nil end bN=true local bS=table.pack(...)
local bT,bU=false,nil task.spawn(function()bU=table.pack(pcall(bR.InvokeServer,
bR,table.unpack(bS,1,bS.n)))bT=true bN=false end)local bV=os.clock()while aR and
not bT and os.clock()-bV<10 do task.wait(0.1)end if not aR then return nil end
if not bT then a1(bQ..aL('\058\032\097\103\117\097\114\100\097\110\100\111\032\115\101\114\118\105\100\111\114\059\032\115\101\109\032\114\101\112\101\116\105\099\097\111\032\099\111\110\099\111\114\114\101\110\116\101',
'\058\032\119\097\105\116\105\110\103\032\102\111\114\032\115\101\114\118\101\114\059\032\110\111\032\099\111\110\099\117\114\114\101\110\116\032\114\101\116\114\121'))bO[bQ]=os.clock()+15 return nil end
if not bU[1]or bU[2]==false then a1(bQ..'\058\032'..tostring(bU[3]or bU[2]))bO[bQ]=os.
clock()+8 return nil end a1(bQ..aL('\058\032\114\101\115\112\111\115\116\097\032\114\101\099\101\098\105\100\097','\058\032\114\101\115\112\111\110\115\101\032\114\101\099\101\105\118\101\100'))
return table.unpack(bU,2,bU.n)end local bQ=0 local function bR(bS,bT)if type(bT)
~='\110\117\109\098\101\114'and type(bT)~='\115\116\114\105\110\103'then return false end if type(bT)=='\110\117\109\098\101\114'and(
bT~=bT or bT==math.huge)then return false end return not a9.Big.lt(bT,0)and not
a9.Big.lt(bS.Cash or 0,a9.Big.add(bT,a2.cashReserve))end local function bS(bT,
...)if bQ>=a2.buyLimit then return end if bP(bT,...)==true then bQ+=1 end bG.
Text=aL('\067\111\109\112\114\097\115\032\110\101\115\116\097\032\115\101\115\115\u{e3}\111\058\032','\080\117\114\099\104\097\115\101\115\032\116\104\105\115\032\115\101\115\115\105\111\110\058\032')..bQ..'\032\047\032'..a2
.buyLimit end local bT=false local bU={}bU[1]=function(bV)if not a2.open or a9.
Opening.Playing then return end for bW,bX in pairs(bV.Packs or{})do if type(bX)
=='\110\117\109\098\101\114'and bX>0 then local bY=math.min(bX,a9.Packs.MaxOpenAtOnce or 1)local
bZ={}for b_,b0 in pairs(bV.Cards or{})do bZ[b_]=b0.Level end local b_=bP(
'\079\112\101\110\080\097\099\107',bW,bY)if aR and type(b_)=='\116\097\098\108\101'then a9.Opening.Play(bW,function()
return b_ end,bZ,nil,bY)end return end end end bU[2]=function(bV)if not a2.fuse
then return end local bW=bt()for bX,bY in pairs(bV.Cards or{})do if not bW[bX]
and not bY.Favorite and not bY.Locked and a9.Stats.Fuse(bY)then bP('\070\117\115\101',bX)
return end end end bU[3]=function(bV)if not a2.equip then return end local bW=a9
.Stats.Best(bV.Cards,function(bW)return a9.Base.SlotOf(bV,bW)~=nil end)if not aG
.sameList(bW,bV.Equipped or{})then bP('\069\113\117\105\112\066\101\115\116')end end bU[4]=function(bV)if
not a2.place or not bV.Base then return end local bW,bX=a9.Base.BestHolders(bV)
if bX then for bY,bZ in pairs(bW)do if bV.Base.Holders[bY]~=bZ then bP(
'\066\097\115\101\080\108\097\099\101',tonumber(bY),bZ)return end end end end bU[5]=function(bV)if not a2.
tree then return end if not a9.Shrine.Open(bV)then a1(aL(
'\065\114\118\111\114\101\032\098\108\111\113\117\101\097\100\097\058\032\100\101\114\114\111\116\101\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046',
'\084\114\101\101\032\108\111\099\107\101\100\058\032\100\101\102\101\097\116\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046'))return end local bW={}for bX,
bY in pairs(a9.Shrine.Tree or{})do if bY.Branch==a2.branch and not a9.Shrine.
CantBuy(bV,bY.Id)then bW[#bW+1]=bY end end table.sort(bW,function(bX,bY)return
bX.Cost==bY.Cost and bX.Id<bY.Id or bX.Cost<bY.Cost end)if bW[1]then bP(
'\084\114\101\101\066\117\121',bW[1].Id)else local bX=aL('\078\101\110\104\117\109\032\110\111\032\101\108\101\103\105\118\101\108\032\110\111\032\114\097\109\111\032',
'\078\111\032\101\108\105\103\105\098\108\101\032\110\111\100\101\032\105\110\032\098\114\097\110\099\104\032')..a2.branch for bY,bZ in pairs(a9.Shrine.Tree or{}
)do if bZ.Branch==a2.branch and not a9.Shrine.Owns(bV,bZ.Id)then bX=tostring(a9.
Shrine.CantBuy(bV,bZ.Id))break end end a1(aL('\065\114\118\111\114\101\058\032','\084\114\101\101\058\032')..bX)end end bU
[6]=function(bV)if not a2.sacrifice then return end if not a9.Shrine.Open(bV)
then a1(aL('\083\097\099\114\105\102\105\099\105\111\032\098\108\111\113\117\101\097\100\111\058\032\100\101\114\114\111\116\101\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046',
'\083\097\099\114\105\102\105\099\101\032\108\111\099\107\101\100\058\032\100\101\102\101\097\116\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046'))return end local bW=bt()
for bX in pairs(bV.Cards or{})do local bY=a9.Cards.ById[bX]local bZ=bY and a9.
Cards.RarityRank[bY.Rarity]or 999 local b_=aG.sacrificeCount(bV,bX,bW,a2.reserve
,bZ,a9.Shrine.Spare(bV,bX),a2.rarities[bY and bY.Rarity or'']==true and 999 or 0
)if b_>0 then bP('\083\097\099\114\105\102\105\099\101',bX,b_)return end end a1(aL(
"\083\097\099\114\105\102\105\099\105\111\058\032\110\101\110\104\117\109\097\032\115\111\098\114\097\032\101\108\101\103\105\118\101\108\046\032\067\111\110\102\105\114\097\032\114\101\115\101\114\118\097\044\032\114\097\114\105\100\097\100\101\032\101\032\099\097\114\116\097\115\032\112\114\111\116\101\103\105\100\097\115\032\101\109\032\065\106\117\115\116\101\115\046"
,
"\083\097\099\114\105\102\105\099\101\058\032\110\111\032\101\108\105\103\105\098\108\101\032\115\112\097\114\101\115\046\032\067\104\101\099\107\032\114\101\115\101\114\118\101\044\032\114\097\114\105\116\121\032\097\110\100\032\112\114\111\116\101\099\116\101\100\032\099\097\114\100\115\032\105\110\032\083\101\116\116\105\110\103\115\046"
))end bU[7]=function(bV)if not a2.upgrades then return end local bW,bX for bY,bZ
in pairs(a9.Progress.Upgrades or{})do local b_=a9.Progress.UpgradeLevel(bV,bZ.Id
)if a2.upgradeKinds[bZ.Id]and b_<bZ.MaxLevel then local b0=a9.Progress.
UpgradePrice(bV,bZ.Id,b_)if bR(bV,b0)and(not bX or a9.Big.lt(b0,bX))then bW=bZ.
Id bX=b0 end end end if bW then bS('\066\117\121\085\112\103\114\097\100\101',bW)end end local bV=0 local bW
bU[8]=function(bX)if not a2.rebirth then return end local bY=bX.Rebirths or 0
local bZ=a9.Progress.RebirthLevelRequirement(bY)local b_=a9.Power.Level(bX.Power
or 0)bq.Text=aL('\082\101\110\097\115\099\105\109\101\110\116\111\115\058\032','\082\101\098\105\114\116\104\115\058\032')..bY..aL('\032\u{b7}\032\078\u{ed}\118\101\108\058\032',
'\032\u{b7}\032\076\101\118\101\108\058\032')..b_..'\032\047\032'..bZ if bW~=nil then if bY>bW then bW=nil a1(aL(
'\082\101\110\097\115\099\105\109\101\110\116\111\032\099\111\110\102\105\114\109\097\100\111\032\112\101\108\111\032\115\101\114\118\105\100\111\114\046','\082\101\098\105\114\116\104\032\099\111\110\102\105\114\109\101\100\032\098\121\032\116\104\101\032\115\101\114\118\101\114\046'))
elseif os.clock()<bV then return else bW=nil end end if b_<bZ or os.clock()<bV
then return end bW=bY bV=os.clock()+20 local b0=bP('\082\101\098\105\114\116\104')if b0~=true then bq
.Text=aL('\065\103\117\097\114\100\097\110\100\111\032\099\111\110\102\105\114\109\097\u{e7}\u{e3}\111\032\111\117\032\110\111\118\097\032\116\101\110\116\097\116\105\118\097\032\100\101\032\114\101\110\097\115\099\105\109\101\110\116\111\046',
'\087\097\105\116\105\110\103\032\102\111\114\032\099\111\110\102\105\114\109\097\116\105\111\110\032\111\114\032\097\032\114\101\098\105\114\116\104\032\114\101\116\114\121\046')end end bU[9]=function(bX)if not
a2.potionBuy or not a9.Cosmetics.Potions.Selling then return end local bY=
workspace:GetServerTimeNow()local bZ=a9.Cosmetics.PotionShelf(bX,bY)for b_,b0 in
ipairs(a9.Cosmetics.PotionStock(aQ.UserId,bZ))do local b1=a9.Cosmetics.
PotionKey(b0.Type.Id,b0.Tier.Tier)local b2=tonumber((bX.Backpack or{})[b1])or 0
if a2.potionKinds[b0.Type.Id]and b0.Tier.Tier<=a2.potionTier and b2<a2.
potionStock and a9.Cosmetics.PotionLeft(bX,b0,bZ)>0 and bR(bX,b0.Tier.Price)then
bS('\066\117\121\067\111\115\109\101\116\105\099','\080\111\116\105\111\110',b0.Type.Id,b0.Tier.Tier)return end end end bU[10]=
function(bX)if aI~=2 or not a2.dungeonBuy then return end for bY,bZ in ipairs(bF
)do if a2.dungeonItems[bZ.Id]and(tonumber((bX.Backpack or{})[bZ.Id])or 0)<a2.
dungeonStock and aG.tokenAffordable(bX.DungeonTokens,bZ.Price,a2.tokenReserve)
and a9.Dungeon.CanBuy(bX,bZ.Id)then bS('\068\117\110\103\101\111\110\066\117\121',bZ.Id)return end end end bU[
11]=function(bX)if not(a2.cosmeticBuy or a2.cosmeticEquip)then return end for bY
,bZ in ipairs({'\065\117\114\097','\084\114\097\105\108'})do if a2.cosmeticKinds[bZ]then local b_=a9.
Cosmetics.Kinds[bZ]local b0=bX[b_.Owned]or{}local b1=a9.Cosmetics.Equipped(bX,bZ
)local b2=b1 local b3 local function b4(b5)return b5 and(bZ=='\084\114\097\105\108'and b5.Speed
or b5.Multiplier)or 0 end for b5,b6 in ipairs(b_.Items)do if b0[b6.Id]and b4(b6)
>b4(b2)then b2=b6 end local b7=a9.Cosmetics.PriceFor(bX,bZ,b6)if(b6.World or 1)
==aI and not b0[b6.Id]and not b6.RobuxOnly and bR(bX,b7)and b4(b6)>b4(b1)and(not
b3 or b4(b6)>b4(b3))then b3=b6 end end if a2.cosmeticEquip and b2 and(not b1 or
b2.Id~=b1.Id)then bP('\069\113\117\105\112\067\111\115\109\101\116\105\099',bZ,b2.Id)return end if a2.cosmeticBuy and
b3 then bS('\066\117\121\067\111\115\109\101\116\105\099',bZ,b3.Id)return end end end end bU[12]=function(bX)if
aI~=2 or not a2.trinketEquip then return end local bY for bZ,b_ in ipairs(a9.
Trinkets.List)do if b_.Stat==a2.trinketStat and(tonumber((bX.Backpack or{})[a9.
Trinkets.Key(b_.Id)])or 0)>0 and(not bY or b_.Amount>bY.Amount)then bY=b_ end
end if not bY then return end for bZ,b_ in ipairs(bX.Equipped or{})do local b0=(
bX.CardTrinkets or{})[b_]or{}for b1=1,a9.Trinkets.Slots(b_)do if not b0[
tostring(b1)]and not b0[b1]then bP('\069\113\117\105\112\067\111\115\109\101\116\105\099','\084\114\105\110\107\101\116',b_,b1,bY.Id,50,90)
return end end end end local bX=1 task.spawn(function()while aR do local bY=bg.
Data if bY and not bT and(aI~=2 or aQ:GetAttribute('\068\117\110\103\101\111\110\082\117\110')==nil)and not bN
and not a9.Opening.Playing then local bZ,b_=pcall(bU[bX],bY)if not bZ then a1(b_
)end bX=bX%#bU+1 end task.wait(0.8)end end)local bY=1 local bZ=0 local b_,b0=0,0
local b1,b2,b3=0,0,nil local function b4(b5,b6)b6=b6 or a2.npcId local b7=bw[b6]
local b8={}for b9,ca in ipairs(bu)do if aG.sameArea(ca,b7)then b8[#b8+1]=ca end
end if#b8==0 then return b7 end if b3~=b6 then b3=b6 b1=0 b2=0 end if b5>=b2
then b1=b1%#b8+1 b2=b5+8 end return b8[b1]end local b5=aY('',60)b5.LayoutOrder=
799 local b6=aG.carried(aQ:GetAttribute('\067\097\114\114\105\101\100\080\097\099\107\115'))local b7,b8,b9=0,0,0
local ca,cb,cc,cd,ce=false,0,nil,0,''local function cf()local cg,ch=aG.carried(
aQ:GetAttribute('\067\097\114\114\105\101\100\080\097\099\107\115'))for ci in pairs(cg)do if not b6[ci]then b6[ci]=
true b7+=1 end end b9=ch end a7(aQ:GetAttributeChangedSignal('\067\097\114\114\105\101\100\080\097\099\107\115'),cf)
cf()local function cg(ch,ci,cj)local ck=aQ:GetAttribute('\067\097\114\114\121\067\097\112\097\099\105\116\121')if type(
ck)~='\110\117\109\098\101\114'or ck<1 then ck=a9.Progress.CarryCapacity(cj)end b5.Text=aL(
'\080\097\099\111\116\101\115\032\099\111\108\101\116\097\100\111\115\058\032','\080\097\099\107\115\032\099\111\108\108\101\099\116\101\100\058\032')..b7..aL('\032\u{b7}\032\077\111\099\104\105\108\097\058\032',
'\032\u{b7}\032\066\097\103\058\032')..b9..'\047'..ck..aL('\032\u{b7}\032\086\105\097\103\101\110\115\058\032','\032\u{b7}\032\084\114\105\112\115\058\032')..b8..
'\n'..ce if not a2.returnFull or not(a2.farm or a2.boss)then ca=false ce=''
return false end if not ch or not ci or ci.Health<=0 then ca=false return false
end local cl=aQ:GetAttribute('\066\097\115\101\083\112\097\119\110')local cm=typeof(cl)=='\067\070\114\097\109\101'and(ch.
Position-cl.Position).Magnitude<45 if ca then local cn=aG.tripState(b9,cm,os.
clock()-cb)if cn=='\100\101\108\105\118\101\114\101\100'or cn=='\108\111\115\116'then ca=false if cm then b8+=1 ce=aL(
'\069\110\116\114\101\103\097\032\099\111\110\099\108\117\u{ed}\100\097\046\032\082\101\116\111\109\097\110\100\111\032\111\032\102\097\114\109\046',
'\068\101\108\105\118\101\114\121\032\099\111\109\112\108\101\116\101\046\032\082\101\115\117\109\105\110\103\032\102\097\114\109\105\110\103\046')if cc then ch.CFrame=cc end b_=0 b2=0
else ce=aL('\077\111\099\104\105\108\097\032\118\097\122\105\097\032\102\111\114\097\032\100\097\032\098\097\115\101\059\032\118\105\097\103\101\109\032\110\u{e3}\111\032\099\111\110\116\097\098\105\108\105\122\097\100\097\046',
'\066\097\103\032\101\109\112\116\105\101\100\032\097\119\097\121\032\102\114\111\109\032\104\111\109\101\059\032\116\114\105\112\032\110\111\116\032\099\111\117\110\116\101\100\046')end return true end if cn==
'\116\105\109\101\111\117\116'then ca=false cd=os.clock()+5 ce=aL(
'\069\110\116\114\101\103\097\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\100\097\046\032\084\101\110\116\097\110\100\111\032\111\032\112\111\114\116\097\108\032\110\111\118\097\109\101\110\116\101\046',
'\068\101\108\105\118\101\114\121\032\110\111\116\032\099\111\110\102\105\114\109\101\100\046\032\082\101\116\114\121\105\110\103\032\116\104\101\032\112\111\114\116\097\108\046')end return true end if b9<ck then
return false end if os.clock()<cd then return true end cd=os.clock()+3 local cn=
workspace:FindFirstChild('\066\111\115\115\080\111\114\116\097\108\115')local co,cp,cq=nil,nil,math.huge if cn
then for cr,cs in ipairs(cn:GetDescendants())do if cs:IsA('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and
cs.Name=='\080\111\114\116\097\108\080\114\111\109\112\116'and cs.Enabled then local ct=cs.Parent local cu=ct:IsA(
'\065\116\116\097\099\104\109\101\110\116')and ct.WorldCFrame or ct:IsA('\066\097\115\101\080\097\114\116')and ct.CFrame if cu then
local cv=(ch.Position-cu.Position).Magnitude if cv<cq then co=cs cp=cu cq=cv end
end end end end if not co then ce=aL(
'\077\111\099\104\105\108\097\032\099\104\101\105\097\046\032\065\103\117\097\114\100\097\110\100\111\032\117\109\032\112\111\114\116\097\108\032\100\105\115\112\111\110\u{ed}\118\101\108\046',
'\066\097\103\032\102\117\108\108\046\032\087\097\105\116\105\110\103\032\102\111\114\032\097\110\032\097\118\097\105\108\097\098\108\101\032\112\111\114\116\097\108\046')return false end cc=ch.CFrame cb=os
.clock()ca=true ch.CFrame=cp+Vector3.new(0,0,3)ce=aL(
'\082\101\116\111\114\110\097\110\100\111\032\112\101\108\111\032\112\111\114\116\097\108\059\032\097\103\117\097\114\100\097\110\100\111\032\099\111\110\102\105\114\109\097\u{e7}\u{e3}\111\032\100\097\032\101\110\116\114\101\103\097\046',
"\082\101\116\117\114\110\105\110\103\032\116\104\114\111\117\103\104\032\116\104\101\032\112\111\114\116\097\108\059\032\119\097\105\116\105\110\103\032\102\111\114\032\100\101\108\105\118\101\114\121\032\099\111\110\102\105\114\109\097\116\105\111\110\046")task.spawn(
function()task.wait(0.3)if not aR or not ca or not a2.returnFull or not co.
Parent then return end if type(fireproximityprompt)=='\102\117\110\099\116\105\111\110'then pcall(
fireproximityprompt,co)else co:InputHoldBegin()task.wait(co.HoldDuration+0.1)if
co.Parent then co:InputHoldEnd()end end end)return true end local ch=function()
return false end if aI==2 then local ci={run=nil,checkpoint=0,portal=nil,banked=
0,runs=0,nextEntry=0,nextExit=0,lastMove=0}local cj,ck,cl local cm local
function cn()if not cm then return end for co,cp in ipairs({cm.position,cm.
orientation,cm.attachment})do cp:Destroy()end if cm.humanoid.Parent then cm.
humanoid.AutoRotate=cm.autoRotate end cm=nil end local function co(cp,cq,cr,cs)
local ct=cp:FindFirstChild('\069\110\116\114\121')local cu=cp:FindFirstChild('\066\111\117\110\100\115')if not ct
or not ct:IsA('\066\097\115\101\080\097\114\116')or not cu or not cu:IsA('\066\097\115\101\080\097\114\116')then return end if
cm and(cm.room~=cp or cm.root~=cq)then cn()end local cv=ct.Position.Y+a2.
hoverHeight cv=math.min(cv,cu.Position.Y+cu.Size.Y/2-6)local cw=Vector3.new(cu.
Position.X,cv,cu.Position.Z)if not cm then local cx=Instance.new('\065\116\116\097\099\104\109\101\110\116')cx
.Name='\065\110\111\110\072\117\098\068\117\110\103\101\111\110\072\111\118\101\114'cx.Parent=cq local cy=Instance.new('\065\108\105\103\110\080\111\115\105\116\105\111\110')cy
.Mode=Enum.PositionAlignmentMode.OneAttachment cy.Attachment0=cx cy.
ApplyAtCenterOfMass=true cy.MaxForce=1000000 cy.MaxVelocity=40 cy.Responsiveness
=25 cy.Position=cw cy.Parent=cq local cz=Instance.new('\065\108\105\103\110\079\114\105\101\110\116\097\116\105\111\110')cz.Mode
=Enum.OrientationAlignmentMode.OneAttachment cz.Attachment0=cx cz.MaxTorque=
1000000 cz.Responsiveness=20 cz.Parent=cq cm={room=cp,root=cq,humanoid=cr,
autoRotate=cr.AutoRotate,attachment=cx,position=cy,orientation=cz}cr.AutoRotate=
false cr:Move(Vector3.zero)cq.AssemblyLinearVelocity=Vector3.zero cq.
AssemblyAngularVelocity=Vector3.zero cq.CFrame=CFrame.new(cw)end cm.position.
Position=cw if cs then local cx=Vector3.new(cs.Position.X-cw.X,0,cs.Position.Z-
cw.Z)if cx.Magnitude>0.1 then cm.orientation.CFrame=CFrame.lookAt(Vector3.zero,
cx)end end end local function cp()if cj and cj.Parent and cj.WalkSpeed==cl then
cj.WalkSpeed=ck end cj=nil ck=nil cl=nil end local cq=aV aV=function()cn()cp()
cq()end local cr=bh:FindFirstChild('\068\117\110\103\101\111\110')if cr and cr:IsA('\082\101\109\111\116\101\069\118\101\110\116')then
a7(cr.OnClientEvent,function(cs,ct,cu)if cs=='\083\116\097\114\116'then ci.run=ct ci.checkpoint
=0 ci.portal=nil ci.nextExit=0 elseif cs=='\080\111\114\116\097\108'and typeof(ct)=='\086\101\099\116\111\114\051'then
ci.portal=ct elseif cs=='\080\111\114\116\097\108\071\111\110\101'then ci.portal=nil elseif cs=='\067\104\101\099\107\112\111\105\110\116'
then ci.checkpoint=tonumber(ct)or 0 ci.banked=tonumber(cu)or 0 elseif cs=='\069\110\100'
and type(ct)=='\116\097\098\108\101'then cn()ci.runs+=1 ci.run=nil ci.portal=nil ci.banked=
tonumber(ct.Banked)or 0 ci.nextEntry=os.clock()+a2.repeatDelay if not a2.
dungeonRepeat then a2.dungeonEnter=false for cv,cw in ipairs(bo)do cw()end end
a1(aL('\068\117\110\103\101\111\110\032\099\111\110\099\108\117\u{ed}\100\097\058\032\097\110\100\097\114\032','\068\117\110\103\101\111\110\032\102\105\110\105\115\104\101\100\058\032\102\108\111\111\114\032')..tostring(ct.
Floor)..'\032\u{b7}\032'..ci.banked..aL('\032\116\111\107\101\110\115\032\u{b7}\032\112\101\114\100\105\100\111\115\058\032',
'\032\116\111\107\101\110\115\032\u{b7}\032\108\111\115\116\058\032')..tostring(ct.Lost))end end)end local function cs(ct,cu,
cv)if not cv or not cu or os.clock()-bZ<0.6 or aP:GetFocusedTextBox()then return
end bZ=os.clock()local cw=a9.Ability.Loadout(ct)if#cw>0 then bY=(bY-1)%#cw+1
local cx=a9.Ability.Keys[bY]if cx then local cy=game:GetService(
'\086\105\114\116\117\097\108\073\110\112\117\116\077\097\110\097\103\101\114')cy:SendKeyEvent(true,cx,false,game)cy:SendKeyEvent(false,
cx,false,game)end bY+=1 end end ch=function(ct,cu,cv)local cw=aQ:GetAttribute(
'\068\117\110\103\101\111\110\082\117\110')bT=false local cx=tonumber(aQ:GetAttribute('\068\117\110\103\101\111\110\070\108\111\111\114'))or 0
local cy=tonumber(aQ:GetAttribute('\068\117\110\103\101\111\110\069\110\101\109\105\101\115'))or 0 bD.Text=aL('\065\110\100\097\114\058\032',
'\070\108\111\111\114\058\032')..cx..aL('\032\u{b7}\032\073\110\105\109\105\103\111\115\058\032','\032\u{b7}\032\069\110\101\109\105\101\115\058\032')..cy..aL(
'\n\084\111\107\101\110\115\032\112\101\110\100\101\110\116\101\115\058\032','\n\085\110\098\097\110\107\101\100\032\116\111\107\101\110\115\058\032')..tostring(aQ:GetAttribute(
'\068\117\110\103\101\111\110\085\110\098\097\110\107\101\100')or 0)..aL('\032\u{b7}\032\083\097\108\100\111\058\032','\032\u{b7}\032\066\097\108\097\110\099\101\058\032')..tostring(cv.
DungeonTokens or 0)..aL('\n\067\104\101\099\107\112\111\105\110\116\058\032','\n\067\104\101\099\107\112\111\105\110\116\058\032')..ci.checkpoint..aL(
'\032\u{b7}\032\080\097\114\116\105\100\097\115\058\032','\032\u{b7}\032\082\117\110\115\058\032')..ci.runs if cw==nil then cn()cp()if a2.
dungeonEnter and a2.dungeonFarm and os.clock()>=ci.nextEntry and ct and cu and
cu.Health>0 then bT=true if bN or a9.Opening.Playing then return true end local
cz=workspace:FindFirstChild('\068\117\110\103\101\111\110\080\111\114\116\097\108')if cz and cz:IsA('\077\111\100\101\108')then local
cA=cz:GetPivot()+Vector3.new(0,3,0)if(ct.Position-cA.Position).Magnitude>4 then
ct.CFrame=cA end local cB=cz:GetAttribute('\083\116\097\114\116\115\065\116')bD.Text=aL(
'\078\097\032\102\105\108\097\032\100\097\032\068\117\110\103\101\111\110','\073\110\032\068\117\110\103\101\111\110\032\113\117\101\117\101')..(type(cB)=='\110\117\109\098\101\114'and('\032\u{b7}\032'..
math.max(0,math.ceil(cB-workspace:GetServerTimeNow()))..'\115')or'')return true end
end return false end if a2.dungeonSpeed and cu then if cj~=cu then cp()cj=cu ck=
cu.WalkSpeed end cl=a2.walkSpeed cu.WalkSpeed=cl else cp()end if not a2.
dungeonFarm or not ct or not cu or cu.Health<=0 or aQ:GetAttribute('\068\111\119\110\101\100')==
true then cn()return true end if aG.shouldExit(a2.exitFloor,ci.checkpoint,ci.
portal~=nil)then cn()ct.CFrame=CFrame.new(ci.portal+Vector3.new(0,3,0))if cr and
os.clock()>=ci.nextExit then ci.nextExit=os.clock()+3 cr:FireServer('\069\120\105\116')end
return true end local cz=workspace:FindFirstChild('\069\110\101\109\105\101\115')local cA,cB=nil,math
.huge for cC,cD in ipairs(cz and cz:GetChildren()or{})do local cE=cD:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cF=cD:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')
if aG.dungeonEnemy(cw,cD:GetAttribute('\068\117\110\103\101\111\110'),cE and cE.Health or 0,cD:
GetAttribute('\065\108\108\121'))and cF then local cG=(ct.Position-cF.Position).Magnitude-(
cD:GetAttribute('\066\111\115\115')==true and 1000000 or 0)if cG<cB then cB=cG cA=cF end end
end local cC=workspace:FindFirstChild('\068\117\110\103\101\111\110\077\097\112\115')local cD=cC and cC:
FindFirstChild('\082\117\110'..tostring(cw)..'\095\070\108\111\111\114'..tostring(cx))if cm and(cm.room~=cD
or cm.root~=ct)then cn()end if cA then if cD then co(cD,ct,cu,cA)end cs(cv,cA,a2
.dungeonAbilities)elseif aQ:GetAttribute('\068\117\110\103\101\111\110\070\105\103\104\116')~=true and cy==0 then if
cD then local cE=cD:FindFirstChild('\069\120\105\116\068\111\111\114')local cF=cD:FindFirstChild('\069\110\116\114\121'
)if cE and cE:IsA('\066\097\115\101\080\097\114\116')and cF and cF:IsA('\066\097\115\101\080\097\114\116')then local cG=cE.
Position-cF.Position cG=Vector3.new(cG.X,0,cG.Z)if cG.Magnitude>0 and os.clock()
-ci.lastMove>=0.8 then local cH=tostring(cw)..'\058'..tostring(cx)if ci.moveRoom~=
cH then ci.moveRoom=cH ci.crossing=0 end local cI=cE.CanCollide==false if not cI
and cm then return true end cn()local cJ=cI and cE.Position or cF.Position local
cK=cI and((ci.crossing or 0)%2)*8 or 8 local cL=Vector3.new(cJ.X,cF.Position.Y,
cJ.Z)+cG.Unit*cK ci.lastMove=os.clock()if cI then ci.crossing=(ci.crossing or 0)
+1 end if(ct.Position-cL).Magnitude>2 then cu:Move(Vector3.zero)ct.
AssemblyLinearVelocity=Vector3.zero ct.AssemblyAngularVelocity=Vector3.zero ct.
CFrame=CFrame.lookAt(cL,cL+cG.Unit)end end end end end return true end end local
function ci()local cj=bg.Data if not cj then a1(aL(
'\065\103\117\097\114\100\097\110\100\111\032\100\097\100\111\115\032\114\101\112\108\105\099\097\100\111\115\046\046\046','\087\097\105\116\105\110\103\032\102\111\114\032\114\101\112\108\105\099\097\116\101\100\032\100\097\116\097\046\046\046'))return end bH
=workspace:FindFirstChild('\069\110\101\109\105\101\115')local ck=bH and bH:GetChildren()or{}local cl
={}local cm=aG.nextBoss(bu,cj.Gates or{})local cn=aQ.Character local co=cn and
cn:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')local cp=cn and cn:FindFirstChildOfClass(
'\072\117\109\097\110\111\105\100')local cq=aI==2 and aQ:GetAttribute('\068\117\110\103\101\111\110\082\117\110')~=nil if bj or a2.
abilities or(cq and a2.dungeonFarm and a2.dungeonAbilities)then pcall(bk,cq and
a2.dungeonFarm and a2.dungeonAbilities or(not cq and a2.abilities))end if ch(co,
cp,cj)then return end if cg(co,cp,cj)then return end local cr=a9.Power.Level(cj.
Power or 0)local cs if a2.farmMode=='\065\117\116\111'and a2.farm then for ct,cu in ipairs(
bu)do if not cu.gate and cu.level<=cr then cs=cu end end end local ct=(a2.
farmMode=='\078\080\067'or a2.farmMode=='\077\105\120\101\100')and b4(os.clock())or cs and b4(os.clock()
,cs.id)local cu,cv,cw,cx=nil,false,false,math.huge local cy={}for cz,cA in
ipairs(ck)do bM(cA)local cB=cA:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cC=cA:
FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if cB and cB.Health>0 and cC and cA:
GetAttribute('\068\117\110\103\101\111\110')==nil then local cD=cA:GetAttribute('\080\097\100\073\100')if cD then cy
[cD]=true end if co then local cE=cA:GetAttribute('\066\111\115\115')==true local cF=cA:
GetAttribute('\076\101\118\101\108')or 1 local cG=a2.boost or cF<=cr if a2.farmMode~='\065\117\116\111'then
cG=aG.manualEligible(a2.farmMode,cE,cD,a2.bossId,a2.npcId)or(not cE and(a2.
farmMode=='\078\080\067'or a2.farmMode=='\077\105\120\101\100')and aG.sameArea(bw[cD],bw[a2.npcId]))
elseif a2.progress and cE then cG=cG and cm and cD==cm.id end if cG and(a2.farm
or(a2.boss and(cE or a2.farmMode=='\077\105\120\101\100')))then local cH=(co.Position-cC.
Position).Magnitude local cI=os.clock()-(bL[cA]or-10)<1 if cI then cH-=2000000
end if ct and not cE and cD~=ct.id then cH+=1000000 end if(a2.boss or a2.
farmMode=='\077\105\120\101\100')and cE then cH=cH-1000000000 end if cH<cx then cx=cH cu=cC cv=
cE cw=cI end end end end end for cz,cA in ipairs(bu)do if cA.gate then local cB=
cy[cA.id]and aL('\086\073\086\079','\065\076\073\086\069')or(bJ[cA.id]and(math.ceil(math.max(0,bJ[cA.id]-os
.clock()))..aL('\115\032\101\115\116\105\109\097\100\111\115','\115\032\101\115\116\105\109\097\116\101\100'))or aL('\110\u{e3}\111\032\111\098\115\101\114\118\097\100\111',
'\110\111\116\032\111\098\115\101\114\118\101\100'))cl[#cl+1]=aG.displayName(cA.enemy)..'\058\032'..cB end end a_.Text=
table.concat(cl,'\032\124\032')local cz=(a2.farmMode=='\066\111\115\115'or a2.farmMode=='\077\105\120\101\100'and cy
[a2.bossId])and bw[a2.bossId]or(a2.farmMode=='\078\080\067'or a2.farmMode=='\077\105\120\101\100')and bw
[a2.npcId]or cm local cA=a2.farmMode=='\077\105\120\101\100'and'\078\080\067\115\032\043\032\066\111\115\115'or a2.farmMode by.
Text=cA..'\032\u{b7}\032'..(cz and aG.displayName(cz.name)or aL('\083\101\109\032\097\108\118\111','\078\111\032\116\097\114\103\101\116'
))..'\032\u{b7}\032'..(cu and aL('\065\108\118\111\032\101\110\099\111\110\116\114\097\100\111','\084\097\114\103\101\116\032\102\111\117\110\100')or aL(
'\065\103\117\097\114\100\097\110\100\111\032\115\112\097\119\110\047\115\116\114\101\097\109\105\110\103\032\111\117\032\108\105\098\101\114\097\099\097\111\032\100\097\032\097\114\101\097',
'\087\097\105\116\105\110\103\032\102\111\114\032\115\112\097\119\110\047\115\116\114\101\097\109\105\110\103\032\111\114\032\097\114\101\097\032\117\110\108\111\099\107'))if not(co and cp and cp.Health>0)
or a9.Opening.Playing then return end if a2.farm or a2.boss then if a2.farmMode
=='\077\105\120\101\100'and not cy[a2.bossId]then local cB=bw[a2.bossId]local cC=os.clock()if
cB and typeof(cB.cf)=='\067\070\114\097\109\101'and cC>=b_ and cC>=(bJ[a2.bossId]or 0)then b_=cC+
20 b0=cC+2 co.CFrame=cB.cf+Vector3.new(0,4,0)end if cC<b0 then by.Text=aL(
'\086\101\114\105\102\105\099\097\110\100\111\032\115\112\097\119\110\032\100\111\032\098\111\115\115\046\046\046','\067\104\101\099\107\105\110\103\032\098\111\115\115\032\115\112\097\119\110\046\046\046')return end end if ct and
not cv and not cw and not cy[ct.id]and not(a2.farmMode=='\077\105\120\101\100'and cy[a2.bossId]
)and typeof(ct.cf)=='\067\070\114\097\109\101'then local cB=ct.cf+Vector3.new(0,4,0)if(co.Position
-cB.Position).Magnitude>15 then co.CFrame=cB end return end if cu then local cB=
co.Position-cu.Position if cB.Magnitude>10 then local cC=cu.Position+(cB.
Magnitude>0 and cB.Unit or Vector3.new(0,0,1))*7 co.CFrame=CFrame.lookAt(cC,cu.
Position)end else local cB=a2.farmMode=='\066\111\115\115'and bw[a2.bossId]or(a2.farmMode==
'\078\080\067'or a2.farmMode=='\077\105\120\101\100')and bw[a2.npcId]or a2.progress and cm if ct then cB
=ct end if cB and typeof(cB.cf)=='\067\070\114\097\109\101'and(a2.farmMode~='\065\117\116\111'or a2.boost or
cB.level<=cr)then local cC=cB.cf.Position+Vector3.new(0,4,0)if(co.Position-cC).
Magnitude>15 then co.CFrame=CFrame.new(cC)end end end end if a2.abilities and cu
and os.clock()-bZ>0.6 and not aP:GetFocusedTextBox()then bZ=os.clock()local cB=
a9.Ability.Loadout(cj)if#cB>0 then bY=(bY-1)%#cB+1 local cC=a9.Ability.Keys[bY]
if cC then local cD=game:GetService('\086\105\114\116\117\097\108\073\110\112\117\116\077\097\110\097\103\101\114')cD:SendKeyEvent(true,
cC,false,game)cD:SendKeyEvent(false,cC,false,game)end bY=bY+1 end end end local
cj,ck,cl=false,false,-1 bK=function()if not aR or cj then return end cj=true
task.delay(math.max(0,0.05-(os.clock()-cl)),function()cj=false if not aR then
return end if ck then bK()return end ck=true cl=os.clock()local cm,cn=pcall(ci)
ck=false if not cm then a1(cn)end end)end local cm,cn local function co(cp)if cm
==cp then return end if cn then cn:Disconnect()end cm=cp if not cp then return
end cn=cp.DescendantAdded:Connect(function(cq)local cr=cq while cr and cr.Parent
~=cp do cr=cr.Parent end if cr and(cq==cr or cq.Name=='\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116'or cq:
IsA('\072\117\109\097\110\111\105\100'))and cr:IsA('\077\111\100\101\108')and cr:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')and
cr:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')then bL[cr]=os.clock()bK()end end)aS[#aS+1]=
cn end co(bH)a7(workspace.ChildAdded,function(cp)if cp.Name=='\069\110\101\109\105\101\115'then co(cp
)bK()end end)task.spawn(function()while aR do bK()task.wait(0.15)end end)aX=aX+1
local cp=aJ.button(aK,aL('\080\097\114\097\114\032\116\111\100\097\115\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115',
'\083\116\111\112\032\097\108\108\032\097\117\116\111\109\097\116\105\111\110'),aX)a7(cp.Activated,function()for cq,cr in pairs(a2)do if
type(cr)=='\098\111\111\108\101\097\110'then a2[cq]=false end end pcall(aV)bj=false local cq=aQ.
Character local cr=cq and cq:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cs=cq and cq
:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if cr and cs then cr:MoveTo(cs.Position)end
for ct,cu in ipairs(bo)do cu()end a1(aL('\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\114\097\100\097\115\046',
'\065\117\116\111\109\097\116\105\111\110\032\115\116\111\112\112\101\100\046'))end)aX=aX+1 local cq=aJ.button(aK,aL(
'\069\120\112\111\114\116\097\114\032\100\105\097\103\110\u{f3}\115\116\105\099\111\032\100\101\032\116\101\115\116\101','\069\120\112\111\114\116\032\116\101\115\116\032\100\105\097\103\110\111\115\116\105\099\115'),aX)a7(cq.
Activated,function()if type(writefile)=='\102\117\110\099\116\105\111\110'then local cr=
'\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095\084\101\115\116\095'..os.time()..'\046\106\115\111\110'local cs,ct=pcall(writefile,cr,aO:
JSONEncode({placeId=game.PlaceId,version=game.PlaceVersion,log=a0,config=a2,
patches=bm,pending=bN}))a1(cs and cr or tostring(ct))end end)a1(aL(
'\080\114\111\110\116\111\032\112\097\114\097\032\116\101\115\116\101\046\032\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\100\101\115\108\105\103\097\100\097\115\046',
'\082\101\097\100\121\032\102\111\114\032\116\101\115\116\105\110\103\046\032\065\117\116\111\109\097\116\105\111\110\032\105\115\032\111\102\102\046'))return aW end end)()local aH,aI,aJ=
false,nil,false local aK=task.spawn(function()aH,aI=pcall(aG,{ui=P,page=O('\070\097\114\109'
),T=function(aK,aL)return c.language=='\112\116'and aK or aL end,progress=aF,attach=
function(aK)k=aK end,section=O,quick=function(aK)l=aK end})aJ=true end)local aL=
os.clock()+45 while m and not aJ and os.clock()<aL do task.wait(0.05)end if not
aJ then pcall(task.cancel,aK)aH=false aI=q(
'\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\052\053\032\115\101\103\117\110\100\111\115\032\101\120\099\101\100\105\100\111\046\032\u{da}\108\116\105\109\097\032\101\116\097\112\097\058\032',
'\052\053\045\115\101\099\111\110\100\032\116\105\109\101\111\117\116\046\032\076\097\115\116\032\115\116\097\103\101\058\032')..at.Text end if not m then return end if not
aH then if k then pcall(k)k=nil end as.Text=q(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\099\097\114\114\101\103\097\114\032\097\115\032\102\117\110\u{e7}\u{f5}\101\115',
'\067\111\117\108\100\032\110\111\116\032\108\111\097\100\032\116\104\101\032\102\101\097\116\117\114\101\115')at.Text=q(
'\070\101\099\104\101\032\111\032\112\097\105\110\101\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046\032\068\101\116\097\108\104\101\115\058\032',
'\067\108\111\115\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\116\114\121\032\097\103\097\105\110\046\032\068\101\116\097\105\108\115\058\032')..tostring(aI)ax.Text=q(
'\067\097\114\114\101\103\097\109\101\110\116\111\032\105\110\116\101\114\114\111\109\112\105\100\111','\076\111\097\100\105\110\103\032\105\110\116\101\114\114\117\112\116\101\100')c.ready()return end local
function aM(aN,aO)local aP,aQ,aR=false,false,nil local aS=task.spawn(function()
aQ,aR=pcall(aN)aP=true end)local aT=os.clock()+aO while m and not aP and os.
clock()<aT do task.wait(0.05)end if not aP then pcall(task.cancel,aS)return
false,q('\084\101\109\112\111\032\108\105\109\105\116\101\032\101\120\099\101\100\105\100\111','\084\105\109\101\032\108\105\109\105\116\032\101\120\099\101\101\100\101\100')end return aQ,aR end aF(
0.92,'\077\111\110\116\097\110\100\111\032\111\115\032\097\106\117\115\116\101\115\032\100\101\032\116\101\108\097\u{2026}','\066\117\105\108\100\105\110\103\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\u{2026}')
local aN local aO,aP=aM(function()local aO=O('\065\106\117\115\116\101\115')ab(aO)local aP=P.button(
aO,q('\u{1f1e7}\u{1f1f7}\032\032\073\100\105\111\109\097\058\032\080\111\114\116\117\103\117\u{ea}\115\032\032\u{b7}\032\032\065\108\116\101\114\097\114',
'\u{1f1fa}\u{1f1f8}\032\032\076\097\110\103\117\097\103\101\058\032\069\110\103\108\105\115\104\032\032\u{b7}\032\032\067\104\097\110\103\101'),870)s(aP.Activated,
function()if type(c.chooseLanguage)=='\102\117\110\099\116\105\111\110'then c.chooseLanguage()end end)P.
label(aO,'\084\101\120\116\076\097\098\101\108',q(
'\084\114\111\099\097\114\032\111\032\105\100\105\111\109\097\032\114\101\097\098\114\101\032\111\032\112\097\105\110\101\108\032\099\111\109\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\117\115\097\100\097\115\046',
'\067\104\097\110\103\105\110\103\032\108\097\110\103\117\097\103\101\032\114\101\111\112\101\110\115\032\116\104\101\032\112\097\110\101\108\032\119\105\116\104\032\097\117\116\111\109\097\116\105\111\110\032\112\097\117\115\101\100\046'),44,871)P.label(aO
,'\084\101\120\116\076\097\098\101\108',c.language=='\112\116'and
"\084\111\113\117\101\032\065\058\032\097\098\114\105\114\047\102\101\099\104\097\114\046\032\083\101\103\117\114\101\032\048\044\054\053\115\032\101\032\115\111\108\116\101\058\032\097\108\116\101\114\110\097\114\032\112\114\111\103\114\101\115\115\097\111\046\032\065\114\114\097\115\116\101\058\032\109\111\118\101\114\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\105\110\101\108\046"
or
"\084\097\112\032\065\058\032\116\111\103\103\108\101\032\112\097\110\101\108\046\032\072\111\108\100\032\048\046\054\053\115\032\097\110\100\032\114\101\108\101\097\115\101\058\032\116\111\103\103\108\101\032\112\114\111\103\114\101\115\115\105\111\110\046\032\068\114\097\103\058\032\109\111\118\101\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\110\101\108\046"
,68,900)local aQ=P.label(aO,'\084\101\120\116\066\111\120','\069\066\065\053\070\070',40,902)aQ.ClearTextOnFocus=false
P.label(aO,'\084\101\120\116\076\097\098\101\108',c.language=='\112\116'and
'\067\111\114\032\100\101\032\100\101\115\116\097\113\117\101\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\120\046\058\032\070\070\067\065\052\050\041'or
'\065\099\099\101\110\116\032\099\111\108\111\114\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\046\103\046\032\070\070\067\065\052\050\041',30,901)local aR=
'\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095\084\104\101\109\101\046\106\115\111\110'local aS='\083\117\112\101\114\112\111\119\101\114'local aT={Superpower={
'\048\067\048\067\049\048','\050\055\049\056\051\053','\057\054\051\067\068\067','\070\070\070\053\070\070','\067\065\066\052\068\056','\069\066\065\053\070\070','\049\057\048\070\050\051'},Potato={'\050\051\049\070\049\057'
,'\052\049\051\054\050\055','\055\052\053\056\051\049','\070\067\070\054\069\050','\068\053\067\051\065\051','\069\066\065\053\070\070','\051\048\050\055\049\068'},Bloodmoon={'\049\055\048\067\049\051',
'\051\048\049\051\049\070','\054\066\050\054\051\068','\070\070\069\065\070\048','\068\050\065\048\066\048','\070\070\052\053\054\056','\050\051\048\070\049\065'},Midnight={'\049\048\049\051\049\069',
'\049\068\050\052\051\054','\051\053\052\054\054\053','\069\068\070\051\070\070','\065\052\066\051\067\067','\055\051\057\070\070\070','\049\053\049\066\050\065'},Emerald={'\048\066\049\057\049\054',
'\049\052\050\069\050\054','\050\066\053\057\052\055','\069\054\070\070\070\051','\057\069\067\054\066\051','\053\054\068\068\065\048','\049\048\050\052\049\069'},Arctic={'\049\049\049\066\050\054','\049\067\050\068\051\068'
,'\051\054\053\049\054\065','\069\066\070\056\070\070','\065\057\067\055\068\065','\055\057\068\057\070\070','\049\055\050\051\051\049'}}local function aU(aV)return
Color3.fromRGB(tonumber(aV:sub(1,2),16),tonumber(aV:sub(3,4),16),tonumber(aV:
sub(5,6),16))end local function aV()if type(writefile)=='\102\117\110\099\116\105\111\110'then task.
spawn(function()pcall(writefile,aR,f:JSONEncode({preset=aS,hex=aQ.Text}))end)end
end local function aW(aX)if type(aX)~='\115\116\114\105\110\103'or not aX:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')
then return false end p=Color3.fromRGB(tonumber(aX:sub(1,2),16),tonumber(aX:sub(
3,4),16),tonumber(aX:sub(5,6),16))n.accent=p G.BackgroundColor3=p A.
BackgroundColor3=p N(K)for aY,aZ in ipairs(Q)do aZ()end for aY,aZ in pairs(I)do
aZ.ScrollBarImageColor3=p end aQ.Text=aX return true end local function aX(aY)
local aZ=aT[aY]if not aZ then return end aS=aY for a_,a0 in ipairs({'\100\097\114\107',
'\116\105\108\101','\101\100\103\101','\116\101\120\116','\109\117\116\101\100','\097\099\099\101\110\116','\115\105\100\101\098\097\114'})do n[a0]=aU(aZ[a_])end p=n.
accent for a_,a0 in pairs(o)do if a_.Parent then for a1,a2 in pairs(a0)do a_[a1]
=n[a2]end end end local a_=x:FindFirstChildOfClass('\085\073\071\114\097\100\105\101\110\116')if a_ then a_.
Color=ColorSequence.new(n.tile,n.dark)end aW(aZ[6])end P.label(aO,'\084\101\120\116\076\097\098\101\108',q(
'\084\069\077\065\083\032\080\082\079\078\084\079\083','\084\072\069\077\069\032\080\082\069\083\069\084\083'),32,880)for aY,aZ in ipairs({'\083\117\112\101\114\112\111\119\101\114',
'\080\111\116\097\116\111','\066\108\111\111\100\109\111\111\110','\077\105\100\110\105\103\104\116','\069\109\101\114\097\108\100','\065\114\099\116\105\099'})do local a_=P.button(aO,aZ,
880+aY)s(a_.Activated,function()aX(aZ)aV()end)end aN=function()if type(readfile)
=='\102\117\110\099\116\105\111\110'then local aY=readfile(aR)if type(aY)=='\115\116\114\105\110\103'and#aY<=2048 then
local aZ=f:JSONDecode(aY)if m and aQ.Parent and type(aZ)=='\116\097\098\108\101'then if aT[aZ.
preset]then aX(aZ.preset)end aW(aZ.hex)end end end end s(aQ.FocusLost,function()
local aY=aQ.Text:gsub('\035',''):upper()if aW(aY)then aV()end end)end,5)if not m
then return end aF(0.96,'\065\106\117\115\116\097\110\100\111\032\111\032\112\097\105\110\101\108\032\u{e0}\032\115\117\097\032\116\101\108\097\u{2026}',
'\070\105\116\116\105\110\103\032\116\104\101\032\112\097\110\101\108\032\116\111\032\121\111\117\114\032\115\099\114\101\101\110\u{2026}')local aQ,aR=pcall(Y)if not aQ then U=
table.clone(T)pcall(Y)end local aS if not aO or not aQ then aS=q(
'\065\106\117\115\116\101\115\032\118\105\115\117\097\105\115\032\105\110\099\111\109\112\108\101\116\111\115\058\032','\083\111\109\101\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\032\102\097\105\108\101\100\058\032')..tostring(aP
or aR)F.Text=aS warn('\091\065\110\111\110\072\117\098\032'..a..'\093\032'..aS)end aF(1,
'\080\097\105\110\101\108\032\112\114\111\110\116\111\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\101\115\116\u{e3}\111\032\112\097\117\115\097\100\097\115\046',
'\080\097\110\101\108\032\114\101\097\100\121\046\032\070\101\097\116\117\114\101\115\032\097\114\101\032\112\097\117\115\101\100\046')as.Text=q('\083\101\117\032\112\097\105\110\101\108\032\101\115\116\u{e1}\032\112\114\111\110\116\111',
'\089\111\117\114\032\112\097\110\101\108\032\105\115\032\114\101\097\100\121')an=true if ap()then aq:Destroy()else task.spawn(function()
while m and aq.Parent and not ap()do task.wait(0.05)end if m and aq.Parent then
aq:Destroy()end end)end pcall(c.ready)if aN then task.defer(function()aM(aN,2)
end)end
