-- Luau
-- AnonHub protected distribution 0.40.6
local a={}a['\115\117\112\101\114\112\111\119\101\114\047\109\097\105\110\046\108\117\097']=function(...)local b='\048\046\051\057\046\052'local c=game.
GameId==10770228857 and({[74183246285569]=1,[82739382053686]=2})[game.PlaceId]
assert(c,'\085\110\115\117\112\112\111\114\116\101\100\032\083\117\112\101\114\112\111\119\101\114\032\119\111\114\108\100')local d=...assert(type(d)=='\116\097\098\108\101'and d.
access,'\065\098\114\097\032\112\101\108\111\032\108\111\097\100\101\114\032\097\117\116\101\110\116\105\099\097\100\111')local e=game:GetService('\080\108\097\121\101\114\115')local f=
game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101')local g=game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local h
=game:GetService('\084\119\101\101\110\083\101\114\118\105\099\101')local i=e.LocalPlayer local j,k={},{}local l,m
local n=true local o={dark=Color3.fromRGB(12,12,16),tile=Color3.fromRGB(39,24,53
),edge=Color3.fromRGB(150,60,220),text=Color3.fromRGB(255,245,255),muted=Color3.
fromRGB(202,180,216),accent=Color3.fromRGB(235,165,255)}o.sidebar=Color3.
fromRGB(25,15,35)local p=setmetatable({},{__mode='\107'})local q=o.accent local
function r(s,t)return d.language=='\112\116'and s or t end local function s(t,u,v)
local w=Instance.new(t)if w:IsA('\071\117\105\079\098\106\101\099\116')then w.BorderSizePixel=0 end for x,y
in pairs(u)do w[x]=y if typeof(y)=='\067\111\108\111\114\051'then for z,A in pairs(o)do if y==A
then p[w]=p[w]or{}p[w][x]=z break end end end end if w:IsA('\084\101\120\116\076\097\098\101\108')or w:IsA(
'\084\101\120\116\066\117\116\116\111\110')or w:IsA('\084\101\120\116\066\111\120')then w.AutoLocalize=false end w.Parent=v return
w end local function t(u,v)j[#j+1]=u:Connect(v)end local function u(v,w)h:
Create(v,TweenInfo.new(0.18,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),w):
Play()end local function v(w,x)s('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,x or 10)},w
)end local function w(x)return s('\085\073\083\116\114\111\107\101',{Color=o.edge,Thickness=1,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border},x)end local x=s('\083\099\114\101\101\110\071\117\105',{Name=
'\065\110\111\110\072\117\098\083\117\112\101\114\112\111\119\101\114',ResetOnSpawn=false,DisplayOrder=10032,ZIndexBehavior=Enum.
ZIndexBehavior.Sibling},i:WaitForChild('\080\108\097\121\101\114\071\117\105'))local y=s('\070\114\097\109\101',{
AnchorPoint=Vector2.new(0.5,0.5),Size=UDim2.fromScale(0.94,0.88),Position=UDim2.
fromScale(0.5,0.5),BackgroundColor3=o.dark,ClipsDescendants=true},x)v(y,9)w(y)s(
'\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(o.tile,o.dark),Rotation=90},y)local z=s(
'\070\114\097\109\101',{Size=UDim2.new(0,174,1,0),BackgroundColor3=o.sidebar},y)s('\084\101\120\116\076\097\098\101\108',{
Text='\065\078\079\078\072\085\066',Position=UDim2.fromOffset(17,24),Size=UDim2.fromOffset(145,28),
BackgroundTransparency=1,TextColor3=o.text,Font=Enum.Font.GothamBold,TextSize=20
,TextXAlignment=Enum.TextXAlignment.Left},z)s('\084\101\120\116\076\097\098\101\108',{Text=
'\083\085\080\069\082\080\079\087\069\082\032\047\032\067\079\078\084\082\079\076',Position=UDim2.fromOffset(18,56),Size=UDim2.fromOffset(
146,20),BackgroundTransparency=1,TextColor3=q,Font=Enum.Font.Code,TextSize=9,
TextXAlignment=Enum.TextXAlignment.Left},z)s('\084\101\120\116\076\097\098\101\108',{Text=i.DisplayName,
Position=UDim2.new(0,16,1,-62),Size=UDim2.new(1,-32,0,24),BackgroundTransparency
=1,TextColor3=o.text,Font=Enum.Font.GothamMedium,TextSize=12,TextTruncate=Enum.
TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left},z)local A=s('\070\114\097\109\101',
{Size=UDim2.new(1,0,0,68),BackgroundTransparency=1,Active=true},y)local B=s(
'\084\101\120\116\076\097\098\101\108',{Text='\065',Font=Enum.Font.GothamBlack,TextSize=20,TextColor3=o.dark,
BackgroundColor3=q,Position=UDim2.fromOffset(16,16),Size=UDim2.fromOffset(36,36)
},A)v(B)B.Text=string.upper(i.DisplayName:sub(1,1))B.Size=UDim2.fromOffset(40,40
)B.Position=UDim2.fromOffset(14,16)local C=s('\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromScale(
1,1),BackgroundTransparency=1,Image='\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\065\118\097\116\097\114\072\101\097\100\083\104\111\116\038\105\100\061'..i.
UserId..'\038\119\061\049\053\048\038\104\061\049\053\048',ScaleType=Enum.ScaleType.Fit},B)v(C,10)t(C:
GetPropertyChangedSignal('\073\115\076\111\097\100\101\100'),function()if C.IsLoaded then B.
TextTransparency=1 end end)local D=s('\084\101\120\116\076\097\098\101\108',{Text=i.DisplayName,Size=UDim2.
new(1,-154,0,22),Position=UDim2.fromOffset(64,8),BackgroundTransparency=1,
TextColor3=o.text,TextSize=15,Font=Enum.Font.GothamBold,TextTruncate=Enum.
TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left},A)s('\084\101\120\116\076\097\098\101\108',{
Text='\064'..i.Name,Position=UDim2.fromOffset(65,31),Size=UDim2.new(1,-154,0,16),
BackgroundTransparency=1,TextColor3=o.muted,TextSize=11,Font=Enum.Font.Gotham,
TextTruncate=Enum.TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left},A)
local E=s('\084\101\120\116\076\097\098\101\108',{Text='',Position=UDim2.fromOffset(65,49),Size=UDim2.new(1
,-82,0,18),BackgroundTransparency=1,TextColor3=q,TextSize=10,Font=Enum.Font.
GothamMedium,TextXAlignment=Enum.TextXAlignment.Left},A)local function F(G,H,I)
local J=G.plan=='\080\114\101\109\105\117\109'and'\080\114\101\109\105\117\109'or'\077\101\109\098\101\114'local K=type(G.deadline)==
'\110\117\109\098\101\114'and G.deadline-H or type(G.expiresAt)=='\110\117\109\098\101\114'and G.expiresAt-I if K
then if K<=0 then return J..r('\032\u{b7}\032\069\120\112\105\114\097\100\111','\032\u{b7}\032\069\120\112\105\114\101\100')end local L=
math.floor(K)local M=math.floor(L/86400)L=L%86400 local N=math.floor(L/3600)
local O=math.floor(L%3600/60)local P=(M>0 and M..'\100\032'or'')..string.format(
'\037\048\050\100\104\032\037\048\050\100\109\032\037\048\050\100\115',N,O,L%60)return J..'\032\u{b7}\032'..P end return J..(G.lifetime==
true and r('\032\u{b7}\032\086\105\116\097\108\u{ed}\099\105\111','\032\u{b7}\032\076\105\102\101\116\105\109\101')or r(
'\032\u{b7}\032\080\114\097\122\111\032\110\u{e3}\111\032\105\110\102\111\114\109\097\100\111','\032\u{b7}\032\068\117\114\097\116\105\111\110\032\117\110\097\118\097\105\108\097\098\108\101'))end E.Text=F(
d.access,os.clock(),os.time())task.spawn(function()while n do E.Text=F(d.access,
os.clock(),os.time())task.wait(1)end end)local G=s('\084\101\120\116\076\097\098\101\108',{Text=r(
'\077\u{d3}\068\085\076\079\032\068\079\032\074\079\071\079\032\032\047\032\032\080\084','\071\065\077\069\032\077\079\068\085\076\069\032\032\047\032\032\069\078')..'\032\u{b7}\032\118'..b,Size=UDim2.
new(1,-32,0,30),Position=UDim2.new(0,16,1,-32),BackgroundTransparency=1,
TextColor3=o.muted,TextSize=10,Font=Enum.Font.Code,TextXAlignment=Enum.
TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd},y)local H=s(
'\084\101\120\116\066\117\116\116\111\110',{Text='\065',Size=UDim2.fromOffset(52,52),Position=UDim2.fromScale(
0.02,0.7),BackgroundColor3=q,TextColor3=o.dark,TextSize=20,Font=Enum.Font.
GothamBlack},x)v(H,16)w(H)if d.decorateLauncher then d.decorateLauncher(H)end
local I=s('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{CanvasSize=UDim2.new(),ScrollBarThickness=3,Size=
UDim2.new(1,-32,0,44),Position=UDim2.fromOffset(16,72),BackgroundColor3=o.tile},
y)v(I)local J,K={},{}local L='\070\097\114\109'local M=c==2 and{'\070\097\114\109','\068\117\110\103\101\111\110','\067\097\114\116\097\115',
'\077\101\108\104\111\114\105\097\115','\067\111\109\098\097\116\101','\065\106\117\115\116\101\115'}or{'\070\097\114\109','\067\097\114\116\097\115','\077\101\108\104\111\114\105\097\115','\067\111\109\098\097\116\101',
'\065\106\117\115\116\101\115'}local N={Farm='\070\097\114\109',Dungeon='\068\117\110\103\101\111\110',Cartas='\067\097\114\100\115',Melhorias=
'\085\112\103\114\097\100\101\115',Combate='\067\111\109\098\097\116',Ajustes='\083\101\116\116\105\110\103\115'}local function O(P)L=P for Q,R in
pairs(J)do R.Visible=Q==P u(K[Q],{BackgroundColor3=Q==P and q or o.tile,
TextColor3=Q==P and o.dark or o.muted})if Q==P then local S=R.Position R.
Position=S+UDim2.fromOffset(6,0)u(R,{Position=S})end end end local function P(Q)
assert(Q~='\068\117\110\103\101\111\110'or c==2,'\068\117\110\103\101\111\110\032\105\115\032\111\110\108\121\032\097\118\097\105\108\097\098\108\101\032\105\110\032\087\111\114\108\100\032\050')if J[Q]then
return J[Q]end local R=s('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Name=Q,Size=UDim2.new(1,-32,1,-166),
Position=UDim2.fromOffset(16,126),BackgroundTransparency=1,ScrollBarThickness=3,
ScrollBarImageColor3=q,CanvasSize=UDim2.new(),AutomaticCanvasSize=Enum.
AutomaticSize.Y,Visible=Q=='\070\097\114\109'},y)s('\085\073\076\105\115\116\076\097\121\111\117\116',{Padding=UDim.new(0,8),
SortOrder=Enum.SortOrder.LayoutOrder},R)s('\085\073\080\097\100\100\105\110\103',{PaddingTop=UDim.new(0,2),
PaddingBottom=UDim.new(0,12),PaddingLeft=UDim.new(0,2)},R)local S={Dungeon=r(
'\079\110\100\097\115\044\032\099\104\101\099\107\112\111\105\110\116\115\032\101\032\114\101\099\111\109\112\101\110\115\097\115\046','\087\097\118\101\115\044\032\099\104\101\099\107\112\111\105\110\116\115\032\097\110\100\032\114\101\119\097\114\100\115\046'),Melhorias
=r('\067\111\109\112\114\097\115\044\032\114\101\115\101\114\118\097\115\032\101\032\101\113\117\105\112\097\109\101\110\116\111\115\046','\080\117\114\099\104\097\115\101\115\044\032\114\101\115\101\114\118\101\115\032\097\110\100\032\101\113\117\105\112\109\101\110\116\046'),
Farm=r('\069\115\099\111\108\104\097\032\115\101\117\115\032\097\108\118\111\115\032\101\032\099\111\110\116\114\111\108\101\032\097\032\112\114\111\103\114\101\115\115\u{e3}\111\046',
'\067\104\111\111\115\101\032\121\111\117\114\032\116\097\114\103\101\116\115\032\097\110\100\032\099\111\110\116\114\111\108\032\112\114\111\103\114\101\115\115\105\111\110\046'),Cartas=r(
'\079\114\103\097\110\105\122\101\032\115\117\097\032\099\111\108\101\u{e7}\u{e3}\111\032\101\032\097\117\116\111\109\097\116\105\122\101\032\097\115\032\109\101\108\104\111\114\105\097\115\046',
'\077\097\110\097\103\101\032\121\111\117\114\032\099\111\108\108\101\099\116\105\111\110\032\097\110\100\032\097\117\116\111\109\097\116\101\032\117\112\103\114\097\100\101\115\046'),Combate=r(
'\067\111\110\116\114\111\108\101\115\032\100\101\032\099\111\109\098\097\116\101\032\101\032\104\097\098\105\108\105\100\097\100\101\115\046','\067\111\109\098\097\116\032\097\110\100\032\097\098\105\108\105\116\121\032\099\111\110\116\114\111\108\115\046'),Ajustes=r(
'\080\101\114\115\111\110\097\108\105\122\101\032\111\032\112\097\105\110\101\108\032\101\032\097\115\032\114\101\103\114\097\115\032\100\101\032\097\117\116\111\109\097\u{e7}\u{e3}\111\046',
'\067\117\115\116\111\109\105\122\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\097\117\116\111\109\097\116\105\111\110\032\114\117\108\101\115\046')}local T=s('\084\101\120\116\076\097\098\101\108',{Text=d.
language=='\112\116'and Q or N[Q],Size=UDim2.new(1,-8,0,28),LayoutOrder=-30,
BackgroundTransparency=1,TextColor3=o.text,TextSize=20,Font=Enum.Font.GothamBold
,TextXAlignment=Enum.TextXAlignment.Left},R)s('\084\101\120\116\076\097\098\101\108',{Text=S[Q],Size=UDim2.
new(1,-8,0,38),LayoutOrder=-29,BackgroundTransparency=1,TextColor3=o.muted,
TextSize=12,TextWrapped=true,Font=Enum.Font.Gotham,TextXAlignment=Enum.
TextXAlignment.Left},R)local U=0 for V in pairs(J)do U+=1 end local V=s(
'\084\101\120\116\066\117\116\116\111\110',{Text=d.language=='\112\116'and Q or N[Q],Font=Enum.Font.GothamMedium,
TextSize=12,TextColor3=Q=='\070\097\114\109'and o.dark or o.muted,Size=UDim2.new(0.25,-8,1,-
8),Position=UDim2.new(U*0.25,4,0,4),BackgroundColor3=Q=='\070\097\114\109'and q or o.tile,
AutoButtonColor=false},I)v(V,8)s('\085\073\080\097\100\100\105\110\103',{PaddingLeft=UDim.new(0,10),
PaddingRight=UDim.new(0,10)},V)J[Q]=R K[Q]=V t(V.Activated,function()O(Q)end)
return R end local Q={}function Q.label(R,S,T,U,V)local W=s(S,{Text=T,Size=UDim2
.new(1,-10,0,U),LayoutOrder=V,BackgroundTransparency=S=='\084\101\120\116\066\111\120'and 0 or 1,
BackgroundColor3=o.tile,TextColor3=o.text,TextSize=13,Font=Enum.Font.Gotham,
TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left},R)s('\085\073\080\097\100\100\105\110\103',{
PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0,12)},W)if S=='\084\101\120\116\066\111\120'then v(
W,8)w(W)W.ClearTextOnFocus=false t(W.Focused,function()u(W,{BackgroundColor3=o.
edge})end)t(W.FocusLost,function()u(W,{BackgroundColor3=o.tile})end)end return W
end function Q.button(R,S,T)local U=Q.label(R,'\084\101\120\116\066\117\116\116\111\110',S,48,T)U.
BackgroundTransparency=0 U.AutoButtonColor=false v(U,10)w(U)local V=s('\070\114\097\109\101',{
Name='\066\117\116\116\111\110\083\104\097\100\111\119',Position=UDim2.new(0,4,1,1),Size=UDim2.new(1,-8,0,3),
BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=0.6,Active=false},U)v(
V,3)t(U.MouseEnter,function()u(U,{BackgroundColor3=o.edge})end)t(U.MouseLeave,
function()u(U,{BackgroundColor3=o.tile})end)t(U.MouseButton1Down,function()u(U,{
BackgroundColor3=o.dark})end)t(U.MouseButton1Up,function()u(U,{BackgroundColor3=
o.tile})end)return U end local R={}function Q.checkbox(S,T,U)local V=Q.button(S,
'',U)local W=Q.label(V,'\084\101\120\116\076\097\098\101\108',T,48,0)W.Size=UDim2.new(1,-44,1,0)local X=s(
'\084\101\120\116\076\097\098\101\108',{Text='',AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,-2,0.5,
0),Size=UDim2.fromOffset(24,24),TextSize=18,Font=Enum.Font.GothamBold,TextColor3
=o.dark,BackgroundColor3=o.dark},V)v(X,6)local Y=w(X)local Z=false local
function _(aa)Z=aa==true X.Text=Z and'\u{2713}'or''u(X,{BackgroundColor3=Z and q
or o.dark})u(Y,{Color=Z and q or o.edge})end R[#R+1]=function()_(Z)end return V,
_ end local aa={}function aa.resolve(S,T,U)local V=math.max(0.1,math.min(U.scale
/100,math.max(1,S-16)/300,math.max(1,T-16)/340))local W=math.min(U.width,math.
max(1,S-16)/V)local X=math.min(U.height,math.max(1,T-16)/V)return{scale=V,width=
W,height=X,x=8+math.max(0,S-16-W*V)*U.x,y=8+math.max(0,T-16-X*V)*U.y,compact=W<
620}end local S='\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095\076\097\121\111\117\116\095'..i.UserId..'\046\106\115\111\110'local T={width=
760,height=580,scale=f.TouchEnabled and 80 or 100,launcher=56,x=0.5,y=0.5}local
U=table.clone(T)local V={width={300,1100},height={340,900},scale={65,150},
launcher={44,88},x={0,1},y={0,1}}if type(readfile)=='\102\117\110\099\116\105\111\110'then pcall(
function()local W=g:JSONDecode(readfile(S))for X,Y in pairs(V)do local Z=W[X]if
type(Z)=='\110\117\109\098\101\114'and Z==Z then U[X]=math.clamp(Z,Y[1],Y[2])end end end)end local
function W()if type(writefile)=='\102\117\110\099\116\105\111\110'then pcall(writefile,S,g:JSONEncode(U)
)end end local X=s('\085\073\083\099\097\108\101',{Scale=1},y)local function Y()local Z=x.
AbsoluteSize if Z.X<100 or Z.Y<100 then return end local _=aa.resolve(Z.X,Z.Y,U)
y.AnchorPoint=Vector2.zero y.Size=UDim2.fromOffset(_.width,_.height)y.Position=
UDim2.fromOffset(_.x,_.y)X.Scale=_.scale z.Visible=not _.compact A.Position=
UDim2.fromOffset(_.compact and 0 or 174,0)A.Size=UDim2.new(1,_.compact and 0 or-
174,0,76)I.Parent=y I.Position=_.compact and UDim2.new(0,12,1,-84)or UDim2.
fromOffset(12,100)I.Size=_.compact and UDim2.new(1,-24,0,44)or UDim2.new(0,150,1
,-180)I.BackgroundTransparency=1 I.CanvasSize=_.compact and UDim2.fromOffset(#M*
110,0)or UDim2.fromOffset(0,#M*52)I.ScrollingDirection=_.compact and Enum.
ScrollingDirection.X or Enum.ScrollingDirection.Y for ab,ac in ipairs(M)do local
ad=K[ac]if ad then ad.Size=_.compact and UDim2.fromOffset(104,42)or UDim2.new(1,
0,0,44)ad.Position=_.compact and UDim2.fromOffset((ab-1)*110,0)or UDim2.
fromOffset(0,(ab-1)*52)ad.Text=_.compact and(d.language=='\112\116'and ac or N[ac])or
string.format('\037\048\050\100\032\u{b7}\032\037\115',ab,d.language=='\112\116'and ac or N[ac])ad.
TextXAlignment=_.compact and Enum.TextXAlignment.Center or Enum.TextXAlignment.
Left end end for ab,ac in pairs(J)do ac.Position=UDim2.fromOffset(_.compact and
16 or 190,88)ac.Size=UDim2.new(1,_.compact and-32 or-206,1,_.compact and-184 or-
136)end G.Position=UDim2.new(0,_.compact and 16 or 190,1,-34)G.Size=UDim2.new(1,
_.compact and-40 or-214,0,26)H.Size=UDim2.fromOffset(U.launcher,U.launcher)end
t(x:GetPropertyChangedSignal('\065\098\115\111\108\117\116\101\083\105\122\101'),Y)local ab={}local function ac(ad)Q
.label(ad,'\084\101\120\116\076\097\098\101\108',r('\084\069\076\065\032\069\032\084\079\081\085\069','\068\073\083\080\076\065\089\032\038\032\084\079\085\067\072'),32,-10)Q.label(ad,
'\084\101\120\116\076\097\098\101\108',r(
'\065\114\114\097\115\116\101\032\111\032\099\097\098\101\u{e7}\097\108\104\111\032\112\097\114\097\032\109\111\118\101\114\046\032\085\115\101\032\111\032\099\097\110\116\111\032\105\110\102\101\114\105\111\114\032\112\097\114\097\032\114\101\100\105\109\101\110\115\105\111\110\097\114\046\032\079\115\032\097\106\117\115\116\101\115\032\115\u{e3}\111\032\115\097\108\118\111\115\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046'
,
"\068\114\097\103\032\116\104\101\032\104\101\097\100\101\114\032\116\111\032\109\111\118\101\046\032\085\115\101\032\116\104\101\032\098\111\116\116\111\109\032\099\111\114\110\101\114\032\116\111\032\114\101\115\105\122\101\046\032\067\104\097\110\103\101\115\032\097\114\101\032\115\097\118\101\100\032\097\117\116\111\109\097\116\105\099\097\108\108\121\046"
),64,-9)for Z,_ in ipairs({{'\115\099\097\108\101','\069\115\099\097\108\097\032\100\097\032\105\110\116\101\114\102\097\099\101','\073\110\116\101\114\102\097\099\101\032\115\099\097\108\101',5,
'\037'},{'\119\105\100\116\104','\076\097\114\103\117\114\097\032\100\111\032\112\097\105\110\101\108','\080\097\110\101\108\032\119\105\100\116\104',10,'\032\112\120'},{'\104\101\105\103\104\116',
'\065\108\116\117\114\097\032\100\111\032\112\097\105\110\101\108','\080\097\110\101\108\032\104\101\105\103\104\116',10,'\032\112\120'},{'\108\097\117\110\099\104\101\114','\084\097\109\097\110\104\111\032\100\111\032\102\108\117\116\117\097\110\116\101',
'\070\108\111\097\116\105\110\103\032\098\117\116\116\111\110\032\115\105\122\101',2,'\032\112\120'}})do local ae=_[1]local af=s('\070\114\097\109\101',{Size=UDim2.
new(1,-8,0,76),BackgroundColor3=o.tile,LayoutOrder=-8+Z},ad)v(af,10)w(af)local
ag=Q.label(af,'\084\101\120\116\076\097\098\101\108',r(_[2],_[3]),28,0)ag.Size=UDim2.new(1,0,0,28)local ah=
Q.button(af,'\u{2212}',0)ah.Size=UDim2.fromOffset(42,36)ah.Position=UDim2.
fromOffset(12,32)ah.TextXAlignment=Enum.TextXAlignment.Center local ai=Q.label(
af,'\084\101\120\116\066\111\120','',36,0)ai.Position=UDim2.fromOffset(62,32)ai.Size=UDim2.new(1,-124
,0,36)ai.TextXAlignment=Enum.TextXAlignment.Center local aj=Q.button(af,'\043',0)aj
.Size=UDim2.fromOffset(42,36)aj.Position=UDim2.new(1,-54,0,32)aj.TextXAlignment=
Enum.TextXAlignment.Center local function ak()ai.Text=tostring(math.floor(U[ae])
).._[5]end ab[#ab+1]=ak local function al(am)if am and am==am then U[ae]=math.
clamp(am,V[ae][1],V[ae][2])Y()W()end ak()end t(ah.Activated,function()al(U[ae]-_
[4])end)t(aj.Activated,function()al(U[ae]+_[4])end)t(ai.FocusLost,function()al(
tonumber(ai.Text:match('\091\037\100\037\046\093\043')))end)ak()end local ae=Q.button(ad,r(
'\067\101\110\116\114\097\108\105\122\097\114\032\101\032\114\101\115\116\097\117\114\097\114\032\116\097\109\097\110\104\111','\067\101\110\116\101\114\032\097\110\100\032\114\101\115\116\111\114\101\032\115\105\122\101'),-3)t(ae.Activated,
function()U=table.clone(T)Y()W()for af,ag in ipairs(ab)do ag()end end)end local
ad=s('\084\101\120\116\066\117\116\116\111\110',{Text='\u{25e2}',TextSize=20,TextColor3=o.muted,
BackgroundTransparency=1,Size=UDim2.fromOffset(30,30),Position=UDim2.new(1,-30,1
,-30)},y)local ae local function af(ag,ah)if ag.UserInputType~=Enum.
UserInputType.MouseButton1 and ag.UserInputType~=Enum.UserInputType.Touch then
return end ae={input=ag,kind=ah,origin=ag.Position,pos=y.Position,width=y.Size.X
.Offset,height=y.Size.Y.Offset}end t(A.InputBegan,function(ag)af(ag,'\109\111\118\101')end)
t(ad.InputBegan,function(ag)af(ag,'\114\101\115\105\122\101')end)t(f.InputChanged,function(ag)if
not ae or(ag~=ae.input and ag.UserInputType~=Enum.UserInputType.MouseMovement)
then return end local ah=ag.Position-ae.origin local ai=x.AbsoluteSize if ae.
kind=='\114\101\115\105\122\101'then U.width=math.clamp(ae.width+ah.X/X.Scale,300,1100)U.height=
math.clamp(ae.height+ah.Y/X.Scale,340,900)else local aj=math.max(1,ai.X-16-y.
Size.X.Offset*X.Scale)local ak=math.max(1,ai.Y-16-y.Size.Y.Offset*X.Scale)U.x=
math.clamp((ae.pos.X.Offset+ah.X-8)/aj,0,1)U.y=math.clamp((ae.pos.Y.Offset+ah.Y-
8)/ak,0,1)end Y()end)t(f.InputEnded,function(ag)if ae and ag==ae.input then ae=
nil W()for ah,ai in ipairs(ab)do ai()end end end)local function ag()if not n
then return end n=false if l then pcall(l)end for ah,ai in ipairs(j)do ai:
Disconnect()end x:Destroy()end d.attach(ag)local function ah(ai)y.Visible=ai if
ai then Y()local aj=y.Position y.Position=aj+UDim2.fromOffset(0,8)u(y,{Position=
aj})end end local ai=s('\084\101\120\116\066\117\116\116\111\110',{Text='\u{2014}',Size=UDim2.fromOffset(32,32
),Position=UDim2.new(1,-76,0,16)},A)local aj=s('\084\101\120\116\066\117\116\116\111\110',{Text='\u{d7}',Size=
UDim2.fromOffset(32,32),Position=UDim2.new(1,-38,0,16)},A)for ak,al in ipairs({
ai,aj})do al.BackgroundColor3=o.tile al.TextColor3=o.text al.Font=Enum.Font.
GothamMedium al.TextSize=18 v(al,8)end t(ai.Activated,function()ah(false)end)t(
aj.Activated,function()d.unload()end)local ak,al,am,Z,_ t(H.InputBegan,function(
an)if an.UserInputType==Enum.UserInputType.MouseButton1 or an.UserInputType==
Enum.UserInputType.Touch then ak=an al=an.Position am=H.Position Z=os.clock()_=
false end end)t(f.InputChanged,function(an)if ak and(an==ak or an.UserInputType
==Enum.UserInputType.MouseMovement)then local ao=an.Position-al if ao.Magnitude>
8 then _=true end if _ then local ap=x.AbsoluteSize local aq=math.clamp(am.X.
Scale*ap.X+am.X.Offset+ao.X,0,math.max(0,ap.X-U.launcher))local ar=math.clamp(am
.Y.Scale*ap.Y+am.Y.Offset+ao.Y,0,math.max(0,ap.Y-U.launcher))H.Position=UDim2.
fromOffset(aq,ar)end end end)t(f.InputEnded,function(an)if ak and(an==ak or an.
UserInputType==Enum.UserInputType.MouseButton1)then if not _ then if os.clock()-
Z>=0.65 then if m then m()end else ah(not y.Visible)end end ak=nil end end)t(f.
InputBegan,function(an,ao)if not ao and an.KeyCode==Enum.KeyCode.RightControl
then ah(not y.Visible)end end)local an=os.clock()local ao,ap=false,false local
function aq()return ao and(ap or os.clock()-an>=2.5)end local ar=s('\070\114\097\109\101',{Name
='\076\111\097\100\105\110\103',Size=UDim2.fromScale(1,1),BackgroundColor3=o.dark,ZIndex=50},y)v(ar,
10)local as=s('\084\101\120\116\076\097\098\101\108',{Text='\065\078\079\078\072\085\066',Position=UDim2.fromScale(0.1,0.045),
Size=UDim2.fromScale(0.8,0.12),BackgroundTransparency=1,Font=Enum.Font.
GothamBlack,TextSize=28,TextColor3=q,ZIndex=51},ar)local at=s('\084\101\120\116\076\097\098\101\108',{Text=
r('\067\097\114\114\101\103\097\110\100\111\032\077\117\110\100\111\032','\076\111\097\100\105\110\103\032\087\111\114\108\100\032')..c,Position=UDim2.fromScale(0.1,0.59),
Size=UDim2.fromScale(0.8,0.1),BackgroundTransparency=1,Font=Enum.Font.GothamBold
,TextSize=18,TextWrapped=true,TextColor3=o.text,ZIndex=51},ar)local au=s(
'\084\101\120\116\076\097\098\101\108',{Text='',Position=UDim2.fromScale(0.1,0.69),Size=UDim2.fromScale(0.8
,0.1),BackgroundTransparency=1,Font=Enum.Font.Gotham,TextSize=13,TextWrapped=
true,TextColor3=o.muted,ZIndex=51},ar)local av=s('\070\114\097\109\101',{Position=UDim2.
fromScale(0.15,0.82),Size=UDim2.new(0.7,0,0,10),BackgroundColor3=o.edge,ZIndex=
51},ar)v(av,4)local aw=s('\070\114\097\109\101',{Size=UDim2.fromScale(0,1),BackgroundColor3=q,
ZIndex=52},av)v(aw,4)s('\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(Color3.fromRGB(150,
60,220),Color3.fromRGB(235,165,255)),Rotation=0},aw)local ax=s('\084\101\120\116\076\097\098\101\108',{Text
=r('\077\085\078\068\079\032','\087\079\082\076\068\032')..c..'\032\032\u{b7}\032\032\065\078\079\078\072\085\066\032\118'..b,Position=UDim2.fromScale(0.1,
0.145),Size=UDim2.fromScale(0.8,0.05),BackgroundTransparency=1,Font=Enum.Font.
Code,TextSize=10,TextColor3=o.muted,ZIndex=51},ar)local ay=s('\084\101\120\116\076\097\098\101\108',{Text=
'',Position=UDim2.fromScale(0.15,0.87),Size=UDim2.fromScale(0.7,0.06),
BackgroundTransparency=1,Font=Enum.Font.Code,TextSize=11,TextColor3=o.muted,
ZIndex=51},ar)local az=s('\070\114\097\109\101',{Name='\071\097\109\101\067\111\118\101\114',Position=UDim2.fromScale(0.12
,0.22),Size=UDim2.fromScale(0.76,0.34),BackgroundColor3=o.tile,ClipsDescendants=
true,ZIndex=51},ar)v(az,14)s('\085\073\083\116\114\111\107\101',{Color=q,Thickness=2,Transparency=0.15,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border},az)local aA=s('\073\109\097\103\101\076\097\098\101\108',{Size=
UDim2.fromScale(1,1),BackgroundTransparency=1,Image=d.identity and d.identity.
cover or'\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\071\097\109\101\084\104\117\109\098\110\097\105\108\038\105\100\061\055\052\049\056\051\050\052\054\050\056\053\053\054\057\038\119\061\052\056\048\038\104\061\050\055\048',ScaleType=
Enum.ScaleType.Crop,ZIndex=52},az)v(aA,14)s('\084\101\120\116\076\097\098\101\108',{Text=
'\083\084\069\065\076\032\065\032\083\085\080\069\082\080\079\087\069\082'..r('\032\u{b7}\032\077\085\078\068\079\032','\032\u{b7}\032\087\079\082\076\068\032')..c,Size=UDim2.new(1,0
,0,30),Position=UDim2.new(0,0,1,-30),BackgroundColor3=o.dark,
BackgroundTransparency=0.25,TextColor3=Color3.new(1,1,1),TextSize=12,Font=Enum.
Font.GothamBold,ZIndex=53},az)local aB=s('\070\114\097\109\101',{Name='\067\111\118\101\114\082\101\102\108\101\099\116\105\111\110',Size=
UDim2.fromScale(1,1),BackgroundColor3=Color3.new(1,1,1),ZIndex=54,Active=false},
az)v(aB,14)local aC=s('\085\073\071\114\097\100\105\101\110\116',{Rotation=20,Offset=Vector2.new(-1,0),
Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(0.4,1),NumberSequenceKeypoint.new(0.5,0.65),
NumberSequenceKeypoint.new(0.6,1),NumberSequenceKeypoint.new(1,1)})},aB)local aD
=h:Create(aC,TweenInfo.new(1.6,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,
-1,false,0.6),{Offset=Vector2.new(1,0)})aD:Play()t(ar.Destroying,function()aD:
Cancel()end)task.spawn(function()pcall(function()game:GetService(
'\067\111\110\116\101\110\116\080\114\111\118\105\100\101\114'):PreloadAsync({aA})end)end)local aE=s('\084\101\120\116\066\117\116\116\111\110',{Text=r(
'\080\117\108\097\114\032\097\110\105\109\097\u{e7}\u{e3}\111','\083\107\105\112\032\097\110\105\109\097\116\105\111\110'),Position=UDim2.fromScale(0.3,0.93),
Size=UDim2.fromScale(0.4,0.055),BackgroundColor3=o.tile,TextColor3=o.text,Font=
Enum.Font.GothamMedium,TextSize=11,ZIndex=52},ar)v(aE,8)t(aE.Activated,function(
)ap=true if ao then ar:Destroy()else aE.Text=r(
'\065\103\117\097\114\100\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115\u{2026}','\087\097\105\116\105\110\103\032\102\111\114\032\102\101\097\116\117\114\101\115\u{2026}')aE.Active=
false end end)local aF=s('\084\101\120\116\066\117\116\116\111\110',{Text=r('\070\101\099\104\097\114','\067\108\111\115\101'),Position=UDim2.
new(1,-88,0,12),Size=UDim2.fromOffset(76,32),BackgroundColor3=o.tile,TextColor3=
o.text,Font=Enum.Font.Gotham,TextSize=12,ZIndex=52},ar)v(aF,8)t(aF.Activated,
function()d.unload()end)local function aG(aH,aI,aJ)if not n then error(
'\073\110\105\116\105\097\108\105\122\097\116\105\111\110\032\099\097\110\099\101\108\108\101\100')end au.Text=r(aI,aJ)ay.Text=string.format('\037\100\037\037',math
.floor(aH*100))if d.progress then d.progress(0.43+0.57*aH,aI,aJ)end u(aw,{Size=
UDim2.fromScale(aH,1)})game:GetService('\082\117\110\083\101\114\118\105\099\101').Heartbeat:Wait()end Y()aG(
0.08,'\080\114\101\112\097\114\097\110\100\111\032\097\032\105\110\116\101\114\102\097\099\101\u{2026}','\080\114\101\112\097\114\105\110\103\032\116\104\101\032\105\110\116\101\114\102\097\099\101\u{2026}')local aH
=(function()local aH={}function aH.manualEligible(aI,aJ,aK,aL,aM)if aI=='\077\105\120\101\100'
then return(aJ and aK==aL)or(not aJ and aK==aM)end if aI=='\066\111\115\115'then return aJ
and aK==aL end return aI=='\078\080\067'and not aJ and aK==aM end function aH.protected(
aI,aJ,aK)local aL=aI.Cards and aI.Cards[aJ]return not aL or aK[aJ]or aL.Favorite
==true or aL.Locked==true or table.find(aI.Equipped or{},aJ)~=nil end function
aH.sacrificeCount(aI,aJ,aK,aL,aM,aN,aO)if aH.protected(aI,aJ,aK)or aM>(aO or 3)
then return 0 end for aP,aQ in pairs(aI.Base and aI.Base.Holders or{})do if aQ==
aJ then return 0 end end return math.min(1000,aN,math.max(0,math.floor(aI.Cards[
aJ].Count)-aL))end function aH.nextBoss(aI,aJ)for aK,aL in ipairs(aI)do if aL.
gate and not aJ[aL.gate]then return aL end end end function aH.sameList(aI,aJ)if
#aI~=#aJ then return false end for aK,aL in ipairs(aI)do if aJ[aK]~=aL then
return false end end return true end function aH.sameArea(aI,aJ)if not aI or not
aJ or aI.gate or aJ.gate then return false end if aI.minZ~=nil and aI.maxZ~=nil
and aJ.minZ~=nil and aJ.maxZ~=nil then return aI.minZ==aJ.minZ and aI.maxZ==aJ.
maxZ end return aI.id==aJ.id end function aH.carried(aI)local aJ,aK={},0 if
type(aI)=='\115\116\114\105\110\103'then for aL in aI:gmatch('\040\037\100\043\041\058\091\037\119\095\093\043')do if not aJ[aL]then
aJ[aL]=true aK+=1 end end end return aJ,aK end function aH.displayName(aI)return
tostring(aI or''):gsub('\095','\032'):gsub('\040\037\108\041\040\037\117\041','\037\049\032\037\050'):gsub('\037\115\043','\032'):match(
'\094\037\115\042\040\046\045\041\037\115\042\036')end function aH.tripState(aI,aJ,aK)if aI==0 then return aJ and
'\100\101\108\105\118\101\114\101\100'or'\108\111\115\116'end if aK>15 then return'\116\105\109\101\111\117\116'end return'\119\097\105\116\105\110\103'end
function aH.number(aI,aJ,aK,aL)local aM=tonumber(aI)if not aM or aM~=aM or math.
abs(aM)==math.huge then return nil end aM=math.clamp(aM,aJ,aK)return aL and math
.floor(aM)or aM end function aH.tokenAffordable(aI,aJ,aK)return type(aJ)==
'\110\117\109\098\101\114'and aJ>=0 and(tonumber(aI)or 0)>=aJ+aK end function aH.dungeonEnemy(aI,
aJ,aK,aL)return aI~=nil and aJ==aI and aK>0 and aL~=true end function aH.
shouldExit(aI,aJ,aK)return aI>0 and aJ>=aI and aK end function aH.world(aI,aJ)if
aJ~=10770228857 then return nil end return({[74183246285569]=1,[82739382053686]=
2})[aI]end function aH.multiplier(aI,aJ)local aK=aH.number(aI,1,1e18)if not aK
then return 1e15 end if aJ~=2 and aK==1e12 then return 1e15 end return aK end
return function(aI)local aJ=aH.world(game.PlaceId,game.GameId)assert(aJ,
'\085\110\115\117\112\112\111\114\116\101\100\032\083\117\112\101\114\112\111\119\101\114\032\119\111\114\108\100')local aK,aL,aM=aI.ui,aI.page,aI.T local aN=game:
GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local aO=game:GetService('\080\108\097\121\101\114\115')local aP=game:
GetService('\072\116\116\112\083\101\114\118\105\099\101')local aQ=game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101')local aR=aO
.LocalPlayer local aS=true local aT,aU,aV={},{},{}local aW local function aX()aS
=false for aY,aZ in ipairs(aT)do aZ:Disconnect()end for aY,aZ in pairs(aV)do for
a_,a0 in ipairs(aZ)do a0:Disconnect()end end table.clear(aV)for aY=#aU,1,-1 do
local aZ=aU[aY]if aZ.object[aZ.key]==aZ.replacement then aZ.object[aZ.key]=aZ.
original end end if aW then pcall(aW)end end aI.attach(aX)local aY=0 local
function aZ(a_,a0)aY=aY+1 local a1=aK.label(aL,'\084\101\120\116\076\097\098\101\108',a_,a0 or 42,aY)a1.
TextSize=12 a1.TextWrapped=true return a1 end local a_=aZ(aM(
'\067\097\114\114\101\103\097\110\100\111\032\105\110\116\101\114\102\097\099\101\115\032\100\111\032\106\111\103\111\046\046\046','\076\111\097\100\105\110\103\032\103\097\109\101\032\105\110\116\101\114\102\097\099\101\115\046\046\046'),62)a_.
LayoutOrder=800 local a0=aZ('',110)a0.LayoutOrder=801 local a1={}local function
a2(a3)a1[#a1+1]=os.date('\037\072\058\037\077\058\037\083')..'\032'..tostring(a3)if#a1>30 then table.
remove(a1,1)end a_.Text=tostring(a3)end local a3={rebirth=false,returnFull=false
,farm=false,progress=false,boss=false,open=false,equip=false,place=false,fuse=
false,sacrifice=false,tree=false,upgrades=false,abilities=false,boost=false,
guard=false,stun=false,multiplier=1e15,reserve=1,maxRank=3,protected='',branch=
'\080\111\119\101\114',farmMode='\065\117\116\111',bossId=2,npcId=1,rarities={Common=true,Uncommon=true,
Rare=true}}a3.dungeonFarm=false a3.dungeonEnter=false a3.dungeonRepeat=false a3.
dungeonAbilities=false a3.dungeonSpeed=false a3.potionBuy=false a3.dungeonBuy=
false a3.cosmeticBuy=false a3.cosmeticEquip=false a3.trinketEquip=false a3.
hoverHeight=8 a3.exitFloor=10 a3.walkSpeed=30 a3.repeatDelay=15 a3.cashReserve=0
a3.tokenReserve=0 a3.buyLimit=25 a3.potionStock=3 a3.potionTier=4 a3.
dungeonStock=1 a3.trinketStat='\068\097\109\097\103\101'a3.upgradeKinds={Cash=true,Health=true,
Carry=true,Crit=true,Cooldown=true,Streak=true}a3.potionKinds={}a3.dungeonItems=
{}a3.cosmeticKinds={Aura=true,Trail=true}if aJ==2 then a3.rarities={Cosmic=true,
Ancient=true,Cursed=true}end local a4={'\104\111\118\101\114\072\101\105\103\104\116','\101\120\105\116\070\108\111\111\114','\119\097\108\107\083\112\101\101\100',
'\114\101\112\101\097\116\068\101\108\097\121','\099\097\115\104\082\101\115\101\114\118\101','\116\111\107\101\110\082\101\115\101\114\118\101','\098\117\121\076\105\109\105\116','\112\111\116\105\111\110\083\116\111\099\107','\112\111\116\105\111\110\084\105\101\114'
,'\100\117\110\103\101\111\110\083\116\111\099\107','\116\114\105\110\107\101\116\083\116\097\116','\117\112\103\114\097\100\101\075\105\110\100\115','\112\111\116\105\111\110\075\105\110\100\115','\100\117\110\103\101\111\110\073\116\101\109\115',
'\099\111\115\109\101\116\105\099\075\105\110\100\115'}local a5={hoverHeight={4,24},exitFloor={0,1000},walkSpeed={16,
100},repeatDelay={5,300},cashReserve={0,1e100},tokenReserve={0,1e12},buyLimit={1
,1000},potionStock={1,100},potionTier={1,5},dungeonStock={1,100}}local a6=
'\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095'..aR.UserId..(aJ==2 and'\095\087\111\114\108\100\050'or'')..'\046\106\115\111\110'if type(
readfile)=='\102\117\110\099\116\105\111\110'then local a7,a8=pcall(function()return aP:JSONDecode(
readfile(a6))end)if a7 and type(a8)=='\116\097\098\108\101'then for a9,ba in ipairs(a4)do local
bb=a8[ba]if a5[ba]then a3[ba]=aH.number(bb,a5[ba][1],a5[ba][2],ba~='\099\097\115\104\082\101\115\101\114\118\101'
)or a3[ba]elseif type(a3[ba])=='\116\097\098\108\101'and type(bb)=='\116\097\098\108\101'then local bc={}for
bd,be in pairs(bb)do if type(bd)=='\115\116\114\105\110\103'and#bd<120 and type(be)=='\098\111\111\108\101\097\110'then
bc[bd]=be end end a3[ba]=bc elseif ba=='\116\114\105\110\107\101\116\083\116\097\116'and table.find({'\068\097\109\097\103\101',
'\072\101\097\108\116\104','\080\111\119\101\114','\067\097\115\104','\076\117\099\107','\067\111\111\108\100\111\119\110'},bb)then a3[ba]=bb end end if type(a8.
protected)=='\115\116\114\105\110\103'then a3.protected=a8.protected:sub(1,2000)end a3.multiplier=
aH.multiplier(a8.multiplier,a8.multiplierVersion)if type(a8.reserve)=='\110\117\109\098\101\114'
and a8.reserve==a8.reserve then a3.reserve=math.clamp(math.floor(a8.reserve),1,
1000)end if table.find({'\065\117\116\111','\066\111\115\115','\078\080\067','\077\105\120\101\100'},a8.farmMode)then a3.
farmMode=a8.farmMode end if type(a8.bossId)=='\110\117\109\098\101\114'then a3.bossId=a8.bossId
end if type(a8.npcId)=='\110\117\109\098\101\114'then a3.npcId=a8.npcId end if type(a8.rarities)==
'\116\097\098\108\101'then a3.rarities=a8.rarities end if table.find({'\067\097\115\104','\076\117\099\107','\080\111\119\101\114',
'\083\112\101\101\100','\066\111\115\115'},a8.branch)then a3.branch=a8.branch end end end local function a7
()if type(writefile)=='\102\117\110\099\116\105\111\110'then local a8={world=aJ,multiplierVersion=2,
protected=a3.protected,multiplier=a3.multiplier,reserve=a3.reserve,branch=a3.
branch,farmMode=a3.farmMode,bossId=a3.bossId,npcId=a3.npcId,rarities=a3.rarities
}for a9,ba in ipairs(a4)do a8[ba]=a3[ba]end pcall(writefile,a6,aP:JSONEncode(a8)
)end end local function a8(a9,ba)aT[#aT+1]=a9:Connect(ba)end local function a9(
ba)local bb=aN for bc in ba:gmatch('\091\094\047\093\043')do bb=bb:FindFirstChild(bc)assert(bb,
'\077\105\115\115\105\110\103\032\109\111\100\117\108\101\058\032'..ba)end local bc,bd,be=false,false,nil local bf=task.spawn(
function()bd,be=pcall(require,bb)bc=true end)local bg=os.clock()+12 while aS and
not bc and os.clock()<bg do task.wait(0.05)end if not bc then pcall(task.cancel,
bf)error(aM('\084\101\109\112\111\032\108\105\109\105\116\101\032\097\111\032\099\097\114\114\101\103\097\114\058\032','\076\111\097\100\105\110\103\032\116\105\109\101\100\032\111\117\116\058\032')..ba)end if not
bd then error(tostring(be))end return be end local ba={}local bb={Place=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\080\108\097\099\101\067\111\110\102\105\103',State='\067\108\105\101\110\116\047\067\111\114\101\047\080\108\097\121\101\114\083\116\097\116\101',Cards=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\067\097\114\100\067\111\110\102\105\103',Stats='\083\104\097\114\101\100\047\082\117\108\101\115\047\067\097\114\100\083\116\097\116\115',Base=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\066\097\115\101\067\111\110\102\105\103',Shrine='\083\104\097\114\101\100\047\082\117\108\101\115\047\083\104\114\105\110\101',Progress=
'\083\104\097\114\101\100\047\082\117\108\101\115\047\080\114\111\103\114\101\115\115\105\111\110',Big='\083\104\097\114\101\100\047\085\116\105\108\047\066\105\103',Packs=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\080\097\099\107\067\111\110\102\105\103',Opening='\067\108\105\101\110\116\047\085\073\047\080\097\099\107\115\047\080\097\099\107\079\112\101\110\105\110\103',Registry=
'\067\108\105\101\110\116\047\067\111\114\101\047\076\111\099\097\108\069\110\101\109\121\082\101\103\105\115\116\114\121',Shields='\083\104\097\114\101\100\047\067\111\109\098\097\116\047\083\104\105\101\108\100\115',Ability=
'\083\104\097\114\101\100\047\067\111\110\102\105\103\047\065\098\105\108\105\116\121\067\111\110\102\105\103',Settings='\067\108\105\101\110\116\047\067\111\110\116\114\111\108\108\101\114\115\047\083\101\116\116\105\110\103\115\067\111\110\116\114\111\108\108\101\114',
Power='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\080\111\119\101\114\067\111\110\102\105\103'}local bc,bd=0,0 for be in pairs(bb)do bd+=1
end local be,bf=pcall(function()for be,bf in pairs(bb)do if aI.progress then aI.
progress(0.18+0.46*bc/bd,'\067\097\114\114\101\103\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115\032\100\111\032\106\111\103\111\u{2026}\032\040'..bc..
'\047'..bd..'\041','\076\111\097\100\105\110\103\032\103\097\109\101\032\102\101\097\116\117\114\101\115\u{2026}\032\040'..bc..'\047'..bd..'\041')end ba[be]=a9(
bf)bc+=1 end end)if not be then error(bf)end assert(ba.Place.World==aJ,aM(
'\077\117\110\100\111\032\100\105\118\101\114\103\101\110\116\101\058\032\114\101\105\110\105\099\105\101\032\111\032\108\111\097\100\101\114\032\097\112\u{f3}\115\032\116\114\111\099\097\114\032\100\101\032\109\117\110\100\111\046',
'\087\111\114\108\100\032\109\105\115\109\097\116\099\104\058\032\114\101\115\116\097\114\116\032\116\104\101\032\108\111\097\100\101\114\032\097\102\116\101\114\032\115\119\105\116\099\104\105\110\103\032\119\111\114\108\100\115\046'))aZ(aM(
'\077\117\110\100\111\032\100\101\116\101\099\116\097\100\111\058\032','\068\101\116\101\099\116\101\100\032\119\111\114\108\100\058\032')..aJ..'\032\u{b7}\032\080\108\097\099\101\073\100\032'..game.PlaceId,36
)if aI.progress then aI.progress(0.7,
'\080\114\101\112\097\114\097\110\100\111\032\099\111\110\116\114\111\108\101\115\032\101\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\u{2026}',
'\080\114\101\112\097\114\105\110\103\032\099\111\110\116\114\111\108\115\032\097\110\100\032\097\117\116\111\109\097\116\105\111\110\u{2026}')end local bg={}for bh,bi in pairs({
Dungeon='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\068\117\110\103\101\111\110\067\111\110\102\105\103',Cosmetics='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\067\111\115\109\101\116\105\099\067\111\110\102\105\103',
Trinkets='\083\104\097\114\101\100\047\067\111\110\102\105\103\047\084\114\105\110\107\101\116\067\111\110\102\105\103'})do local bj,bk=false,nil if bh~=
'\068\117\110\103\101\111\110'or aJ==2 then bj,bk=pcall(a9,bi)end if bj then ba[bh]=bk else bg[bh]=
true if bk then a2(tostring(bk))end end end ba.Dungeon=ba.Dungeon or{Offers=
function()return{}end,CanBuy=function()return false end}ba.Cosmetics=ba.
Cosmetics or{Potions={Types={},Selling=false},Kinds={}}ba.Trinkets=ba.Trinkets
or{List={}}local bh=ba.State local bi=aN:FindFirstChild('\082\101\109\111\116\101\115')assert(bi,
'\082\101\109\111\116\101\115\032\109\105\115\115\105\110\103')local bj=ba.Settings.Get('\065\117\116\111\065\116\116\097\099\107')local bk=false aW=
function()if bk then ba.Settings.Set('\065\117\116\111\065\116\116\097\099\107',bj)end end local function bl(
bm)if ba.Settings.Get('\065\117\116\111\065\116\116\097\099\107')~=bm then ba.Settings.Set('\065\117\116\111\065\116\116\097\099\107',bm)end
bk=true end local function bm(bn,bo,bp)assert(type(bn[bo])=='\102\117\110\099\116\105\111\110',
'\077\105\115\115\105\110\103\032\102\117\110\099\116\105\111\110\058\032'..bo)local bq=bn[bo]local br=bp(bq)bn[bo]=br aU[#aU+1]={
object=bn,key=bo,original=bq,replacement=br}end local bn,bo=pcall(function()bm(
ba.Registry,'\068\097\109\097\103\101',function(bn)return function(bo,bp,...)if aS and a3.boost
and typeof(bo)=='\073\110\115\116\097\110\099\101'and bo:GetAttribute('\076\111\099\097\108')==true and type(bp)==
'\110\117\109\098\101\114'and bp>0 and bp<math.huge then bp=math.min(bp*a3.multiplier,1e100)end
return bn(bo,bp,...)end end)bm(ba.Shields,'\065\098\115\111\114\098',function(bn)return function(
bo,...)if aS and a3.guard and bo==aR.Character then return true,false end return
bn(bo,...)end end)bm(ba.Shields,'\071\117\097\114\100\101\100',function(bn)return function(bo,...)if
aS and a3.stun and bo==aR.Character then return true end return bn(bo,...)end
end)end)if not bn then for bp=#aU,1,-1 do local bq=aU[bp]if bq.object[bq.key]==
bq.replacement then bq.object[bq.key]=bq.original end end table.clear(aU)a2(aM(
'\067\111\109\098\097\116\101\032\101\120\112\101\114\105\109\101\110\116\097\108\032\105\110\100\105\115\112\111\110\105\118\101\108\058\032','\069\120\112\101\114\105\109\101\110\116\097\108\032\099\111\109\098\097\116\032\117\110\097\118\097\105\108\097\098\108\101\058\032')..
tostring(bo))end local bp={}local function bq(br,bs,bt)aY=aY+1 local bu,bv=aK.
checkbox(aL,aM(bs,bt),aY)local function bw()bv(a3[br])end bp[#bp+1]=bw bw()a8(bu
.Activated,function()if(br=='\098\111\111\115\116'or br=='\103\117\097\114\100'or br=='\115\116\117\110')and not bn then
a2(aM('\073\110\116\101\114\102\097\099\101\115\032\100\101\032\099\111\109\098\097\116\101\032\105\110\100\105\115\112\111\110\105\118\101\105\115\058\032','\067\111\109\098\097\116\032\105\110\116\101\114\102\097\099\101\115\032\117\110\097\118\097\105\108\097\098\108\101\058\032')
..tostring(bo))return end local bx={potionBuy='\067\111\115\109\101\116\105\099\115',cosmeticBuy=
'\067\111\115\109\101\116\105\099\115',cosmeticEquip='\067\111\115\109\101\116\105\099\115',dungeonBuy='\068\117\110\103\101\111\110',trinketEquip=
'\084\114\105\110\107\101\116\115'}if bx[br]and bg[bx[br] ]then a2(aM(
'\067\111\110\102\105\103\117\114\097\u{e7}\u{e3}\111\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\032\110\101\115\116\097\032\118\101\114\115\u{e3}\111\032\100\111\032\106\111\103\111\046',
'\067\111\110\102\105\103\117\114\097\116\105\111\110\032\117\110\097\118\097\105\108\097\098\108\101\032\105\110\032\116\104\105\115\032\103\097\109\101\032\118\101\114\115\105\111\110\046'))return end a3[br]=not a3[br]
if br=='\112\114\111\103\114\101\115\115'then for by,bz in ipairs({'\102\097\114\109','\098\111\115\115','\111\112\101\110','\101\113\117\105\112','\112\108\097\099\101',
'\102\117\115\101','\116\114\101\101','\117\112\103\114\097\100\101\115','\097\098\105\108\105\116\105\101\115','\114\101\116\117\114\110\070\117\108\108'})do a3[bz]=a3.progress end for
by,bz in ipairs(bp)do bz()end end if br=='\097\098\105\108\105\116\105\101\115'or br=='\112\114\111\103\114\101\115\115'then pcall(
bl,a3.abilities)end bw()end)end aI.quick(function()a3.progress=not a3.progress
for br,bs in ipairs({'\102\097\114\109','\098\111\115\115','\111\112\101\110','\101\113\117\105\112','\112\108\097\099\101','\102\117\115\101','\116\114\101\101',
'\117\112\103\114\097\100\101\115','\097\098\105\108\105\116\105\101\115','\114\101\116\117\114\110\070\117\108\108'})do a3[bs]=a3.progress end pcall(bl,a3.
abilities)for br,bs in ipairs(bp)do bs()end a2(a3.progress and aM(
'\080\114\111\103\114\101\115\115\097\111\032\108\105\103\097\100\097','\080\114\111\103\114\101\115\115\105\111\110\032\101\110\097\098\108\101\100')or aM('\080\114\111\103\114\101\115\115\097\111\032\100\101\115\108\105\103\097\100\097',
'\080\114\111\103\114\101\115\115\105\111\110\032\100\105\115\097\098\108\101\100'))end)bq('\112\114\111\103\114\101\115\115','\080\114\111\103\114\101\115\115\u{e3}\111\032\097\117\116\111\109\u{e1}\116\105\099\097',
'\065\117\116\111\032\112\114\111\103\114\101\115\115\105\111\110')bq('\102\097\114\109','\070\097\114\109\032\100\101\032\105\110\105\109\105\103\111\115','\069\110\101\109\121\032\102\097\114\109')bq('\114\101\116\117\114\110\070\117\108\108',
'\077\111\099\104\105\108\097\032\099\104\101\105\097\058\032\112\111\114\116\097\108\032\101\032\114\101\116\111\109\097\114\032\102\097\114\109','\070\117\108\108\032\098\097\103\058\032\112\111\114\116\097\108\032\097\110\100\032\114\101\115\117\109\101\032\102\097\114\109\105\110\103')bq(
'\098\111\115\115','\080\114\105\111\114\105\122\097\114\032\098\111\115\115\101\115','\080\114\105\111\114\105\116\105\122\101\032\098\111\115\115\101\115')bq('\097\098\105\108\105\116\105\101\115',
'\072\097\098\105\108\105\100\097\100\101\115\032\097\117\116\111\109\u{e1}\116\105\099\097\115','\065\117\116\111\109\097\116\105\099\032\097\098\105\108\105\116\105\101\115')bq('\114\101\098\105\114\116\104',
'\065\117\116\111\032\082\101\110\097\115\099\105\109\101\110\116\111','\065\117\116\111\032\082\101\098\105\114\116\104')local br=aZ(aM(
'\082\101\110\097\115\099\105\109\101\110\116\111\032\097\117\116\111\109\u{e1}\116\105\099\111\032\100\101\115\108\105\103\097\100\111\046\032\082\101\105\110\105\099\105\097\032\111\032\112\111\100\101\114\032\099\111\110\102\111\114\109\101\032\097\115\032\114\101\103\114\097\115\032\100\111\032\106\111\103\111\046'
,"\065\117\116\111\032\082\101\098\105\114\116\104\032\105\115\032\111\102\102\046\032\082\101\115\101\116\115\032\112\111\119\101\114\032\097\099\099\111\114\100\105\110\103\032\116\111\032\116\104\101\032\103\097\109\101\032\114\117\108\101\115\046"),54)aL=aI.
section('\067\097\114\116\097\115')bq('\111\112\101\110','\065\098\114\105\114\032\112\097\099\111\116\101\115','\079\112\101\110\032\112\097\099\107\115')bq('\101\113\117\105\112',
'\069\113\117\105\112\097\114\032\109\101\108\104\111\114\032\099\097\114\116\097','\069\113\117\105\112\032\098\101\115\116\032\099\097\114\100')bq('\112\108\097\099\101','\077\101\108\104\111\114\101\115\032\099\097\114\116\097\115\032\110\097\032\098\097\115\101',
'\066\101\115\116\032\099\097\114\100\115\032\111\110\032\098\097\115\101')bq('\102\117\115\101','\070\117\110\100\105\114\032\099\097\114\116\097\115','\070\117\115\101\032\099\097\114\100\115')bq('\116\114\101\101',
'\067\111\109\112\114\097\114\032\110\u{f3}\115\032\100\097\032\u{e1}\114\118\111\114\101','\066\117\121\032\115\107\105\108\108\032\116\114\101\101\032\110\111\100\101\115')bq('\115\097\099\114\105\102\105\099\101',
'\083\097\099\114\105\102\105\099\097\114\032\099\097\114\116\097\115\032\101\120\099\101\100\101\110\116\101\115','\083\097\099\114\105\102\105\099\101\032\115\112\097\114\101\115\032\097\099\099\111\114\100\105\110\103\032\116\111\032\083\101\116\116\105\110\103\115')aZ(aM(
'\083\097\099\114\105\102\u{ed}\099\105\111\032\112\114\101\115\101\114\118\097\032\099\097\114\116\097\115\032\101\113\117\105\112\097\100\097\115\044\032\112\111\115\105\099\105\111\110\097\100\097\115\044\032\112\114\111\116\101\103\105\100\097\115\032\101\032\097\032\114\101\115\101\114\118\097\046\032\068\101\115\108\105\103\097\100\111\032\112\111\114\032\112\097\100\114\u{e3}\111\046'
,
"\083\097\099\114\105\102\105\099\101\032\112\114\101\115\101\114\118\101\115\032\101\113\117\105\112\112\101\100\044\032\112\108\097\099\101\100\044\032\112\114\111\116\101\099\116\101\100\032\099\097\114\100\115\032\097\110\100\032\116\104\101\032\114\101\115\101\114\118\101\046\032\079\102\102\032\098\121\032\100\101\102\097\117\108\116\046"
),54)aL=aI.section('\067\111\109\098\097\116\101')bq('\098\111\111\115\116','\068\097\110\111\032\078\080\067\032\108\111\099\097\108\032\097\109\112\108\105\097\100\111\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041'
,'\066\111\111\115\116\032\108\111\099\097\108\032\078\080\067\032\100\097\109\097\103\101\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041')bq('\103\117\097\114\100',
'\066\108\111\113\117\101\097\114\032\100\097\110\111\032\108\111\099\097\108\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041','\066\108\111\099\107\032\108\111\099\097\108\032\100\097\109\097\103\101\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041')bq(
'\115\116\117\110','\066\108\111\113\117\101\097\114\032\115\116\117\110\032\108\111\099\097\108\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041','\066\108\111\099\107\032\108\111\099\097\108\032\115\116\117\110\032\040\101\120\112\101\114\105\109\101\110\116\097\108\041')
aZ(aM(
'\080\114\111\116\101\u{e7}\u{e3}\111\032\097\116\117\097\032\110\111\032\099\108\105\101\110\116\101\059\032\100\097\110\111\032\100\111\032\115\101\114\118\105\100\111\114\032\110\u{e3}\111\032\u{e9}\032\098\108\111\113\117\101\097\100\111\046\032\077\117\108\116\105\112\108\105\099\097\100\111\114\032\101\120\105\103\101\032\078\080\067\032\076\111\099\097\108\046'
,
"\080\114\111\116\101\099\116\105\111\110\032\105\115\032\099\108\105\101\110\116\045\115\105\100\101\059\032\115\101\114\118\101\114\032\100\097\109\097\103\101\032\105\115\032\110\111\116\032\098\108\111\099\107\101\100\046\032\077\117\108\116\105\112\108\105\101\114\032\114\101\113\117\105\114\101\115\032\097\032\076\111\099\097\108\032\078\080\067\046"
),42)aZ(aM('\070\097\114\109\032\117\115\097\032\116\101\108\101\112\111\114\116\101\032\097\116\u{e9}\032\111\032\097\108\118\111\032\115\101\108\101\099\105\111\110\097\100\111\046',
'\070\097\114\109\032\116\101\108\101\112\111\114\116\115\032\116\111\032\116\104\101\032\115\101\108\101\099\116\101\100\032\116\097\114\103\101\116\046'),36)aL=aI.section('\065\106\117\115\116\101\115')local
function bs(bt,bu,bv)aZ(bu,28)aY=aY+1 local bw=aK.label(aL,'\084\101\120\116\066\111\120',tostring(a3
[bt]),38,aY)bw.TextEditable=true bw.ClearTextOnFocus=false a8(bw.FocusLost,
function()local bx=bv(bw.Text)if bx~=nil then a3[bt]=bx a7()end bw.Text=
tostring(a3[bt])end)end bs('\109\117\108\116\105\112\108\105\101\114',aM(
'\077\117\108\116\105\112\108\105\099\097\100\111\114\032\108\111\099\097\108\058\032\112\097\100\114\u{e3}\111\032\049\032\113\117\097\100\114\105\108\104\u{e3}\111\032\040\049\101\049\053\041\044\032\109\u{e1}\120\105\109\111\032\049\101\049\056',
"\076\111\099\097\108\032\109\117\108\116\105\112\108\105\101\114\058\032\100\101\102\097\117\108\116\032\049\032\113\117\097\100\114\105\108\108\105\111\110\032\040\049\101\049\053\041\044\032\109\097\120\105\109\117\109\032\049\101\049\056"),function(bt)
local bu=tonumber(bt)if bu and bu==bu and bu<math.huge then return math.clamp(bu
,1,1e18)end end)bs('\114\101\115\101\114\118\101',aM('\067\111\112\105\097\115\032\114\101\115\101\114\118\097\100\097\115\032\112\111\114\032\099\097\114\116\097',
'\082\101\115\101\114\118\101\100\032\099\111\112\105\101\115\032\112\101\114\032\099\097\114\100'),function(bt)local bu=tonumber(bt)if bu and bu==bu
and bu<math.huge then return math.clamp(math.floor(bu),1,1000)end end)bs(
'\112\114\111\116\101\099\116\101\100',aM('\073\068\115\032\100\101\032\099\097\114\116\097\115\032\112\114\111\116\101\103\105\100\097\115\044\032\115\101\112\097\114\097\100\111\115\032\112\111\114\032\118\105\114\103\117\108\097',
'\080\114\111\116\101\099\116\101\100\032\099\097\114\100\032\073\068\115\044\032\099\111\109\109\097\032\115\101\112\097\114\097\116\101\100'),function(bt)return bt:sub(1,2000)end)aZ(
aM('\082\097\114\105\100\097\100\101\115\032\112\101\114\109\105\116\105\100\097\115\032\110\111\032\115\097\099\114\105\102\u{ed}\099\105\111',
'\065\108\108\111\119\101\100\032\115\097\099\114\105\102\105\099\101\032\114\097\114\105\116\105\101\115\032\040\105\110\100\105\118\105\100\117\097\108\032\115\101\108\101\099\116\105\111\110\041'),42)local bt={Common='\067\111\109\117\109'
,Uncommon='\073\110\099\111\109\117\109',Rare='\082\097\114\097',Epic='\u{c9}\112\105\099\097',Legendary='\076\101\110\100\u{e1}\114\105\097',
Mythic='\077\u{ed}\116\105\099\097',God='\068\105\118\105\110\097',Secret='\083\101\099\114\101\116\097',Cosmic='\067\u{f3}\115\109\105\099\097',Ancient
='\065\110\099\101\115\116\114\097\108',Cursed='\065\109\097\108\100\105\u{e7}\111\097\100\097',Omega='\u{d4}\109\101\103\097',Ethereal='\069\116\u{e9}\114\101\097'
,Divine='\068\105\118\105\110\097',Void='\086\097\122\105\111',Transcendent='\084\114\097\110\115\099\101\110\100\101\110\116\101',Eternal='\069\116\101\114\110\097',
Oblivion='\079\098\108\105\118\105\111\110'}for bu,bv in ipairs(ba.Cards.RarityOrder)do aY=aY+1 local bw
,bx=aK.checkbox(aL,aM(bt[bv]or bv,bv),aY)local function by()bx(a3.rarities[bv]==
true)end by()a8(bw.Activated,function()a3.rarities[bv]=not a3.rarities[bv]a7()
by()end)end bs('\098\114\097\110\099\104',aM('\082\097\109\111\058\032\067\097\115\104\044\032\076\117\099\107\044\032\080\111\119\101\114\044\032\083\112\101\101\100\032\111\117\032\066\111\115\115',
'\066\114\097\110\099\104\058\032\067\097\115\104\044\032\076\117\099\107\044\032\080\111\119\101\114\044\032\083\112\101\101\100\032\111\114\032\066\111\115\115'),function(bu)return table.find({
'\067\097\115\104','\076\117\099\107','\080\111\119\101\114','\083\112\101\101\100','\066\111\115\115'},bu)and bu or nil end)local function bu()
local bv={}for bw in a3.protected:gmatch('\091\094\044\093\043')do bv[bw:match('\094\037\115\042\040\046\045\041\037\115\042\036')]
=true end return bv end local bv={}local bw=aN:FindFirstChild('\069\110\101\109\121\080\097\100\115')if bw
then for bx,by in ipairs(bw:GetChildren())do local bz=by:GetAttributes()bv[#bv+1
]={id=tonumber(by.Name),level=bz.Level or 1,gate=bz.Gate,enemy=bz.Enemy,name=bz.
Name or bz.Enemy,respawn=bz.RespawnTime or 90,cf=bz.PadCFrame,minZ=bz.ZoneMinZ,
maxZ=bz.ZoneMaxZ}end end table.sort(bv,function(bx,by)return bx.level<by.level
end)local bx={}for by,bz in ipairs(bv)do bx[bz.id]=bz end local by=aL aL=aI.
section('\070\097\114\109')local bz=aZ('',54)local function bA(bB,bC,bD)aY=aY+1 local bE=aK.
button(aL,'',aY)aY=aY+1 local bF=Instance.new('\083\099\114\111\108\108\105\110\103\070\114\097\109\101')bF.Size=UDim2.
new(1,-8,0,160)bF.LayoutOrder=aY bF.Visible=false bF.BackgroundTransparency=1 bF
.ScrollBarThickness=5 bF.CanvasSize=UDim2.new()bF.AutomaticCanvasSize=Enum.
AutomaticSize.Y bF.Parent=aL local bG=Instance.new('\085\073\076\105\115\116\076\097\121\111\117\116')bG.Padding=
UDim.new(0,4)bG.SortOrder=Enum.SortOrder.LayoutOrder bG.Parent=bF local function
bH()local bI=aM('\083\101\108\101\099\105\111\110\101','\083\101\108\101\099\116')for bJ,bK in ipairs(bD)do if bK.id==a3[bC]
then bI=bK.text end end bE.Text=bB..'\058\032'..bI..'\032\u{25bc}'end for bI,bJ in
ipairs(bD)do local bK=aK.button(bF,bJ.text,bI)a8(bK.Activated,function()a3[bC]=
bJ.id bF.Visible=false a7()bH()end)end a8(bE.Activated,function()bF.Visible=not
bF.Visible end)bH()end bA(aM('\077\111\100\111\032\100\101\032\102\097\114\109','\070\097\114\109\032\109\111\100\101'),'\102\097\114\109\077\111\100\101',{{id='\065\117\116\111',
text=aM('\080\114\111\103\114\101\115\115\u{e3}\111\032\097\117\116\111\109\u{e1}\116\105\099\097','\065\117\116\111\109\097\116\105\099\032\112\114\111\103\114\101\115\115\105\111\110')},{id='\066\111\115\115',
text=aM('\066\111\115\115\032\101\115\099\111\108\104\105\100\111','\083\101\108\101\099\116\101\100\032\098\111\115\115')},{id='\078\080\067',text=aM(
'\u{c1}\114\101\097\032\100\101\032\078\080\067\115\032\101\115\099\111\108\104\105\100\097','\083\101\108\101\099\116\101\100\032\078\080\067\032\097\114\101\097')},{id='\077\105\120\101\100',text=aM(
'\078\080\067\115\032\043\032\066\111\115\115\032\040\112\114\105\111\114\105\100\097\100\101\032\097\111\032\098\111\115\115\041','\078\080\067\115\032\043\032\066\111\115\115\032\040\098\111\115\115\032\112\114\105\111\114\105\116\121\041')}})local bB,bC,
bD={},{},{}for bE,bF in ipairs(bv)do local bG={id=bF.id,text=aH.displayName(bF.
name)..'\032\u{b7}\032\076\118\032'..bF.level..'\032\u{b7}\032'..bF.respawn..'\115'}if bF.gate then bB[#
bB+1]=bG else local bH for bI,bJ in ipairs(bD)do if aH.sameArea(bF,bJ)then bH=bJ
break end end if bH then if a3.npcId==bF.id then a3.npcId=bH.id end else bD[#bD+
1]=bF local bI=0 for bJ,bK in ipairs(bv)do if aH.sameArea(bF,bK)then bI+=1 end
end bG.text=aH.displayName(bF.name)..aM('\032\u{b7}\032\u{c1}\114\101\097\032\099\111\109\112\108\101\116\097\032\u{b7}\032',
'\032\u{b7}\032\070\117\108\108\032\097\114\101\097\032\u{b7}\032')..bI..aM('\032\112\111\110\116\111\115','\032\115\112\097\119\110\032\112\111\105\110\116\115')bC[#bC+1]=bG end
end end if not bx[a3.bossId]or not bx[a3.bossId].gate then a3.bossId=bB[1]and bB
[1].id or 0 end if not bx[a3.npcId]or bx[a3.npcId].gate then a3.npcId=bC[1]and
bC[1].id or 0 end bA('\066\111\115\115','\098\111\115\115\073\100',bB)bA(aM('\u{c1}\114\101\097\032\100\101\032\078\080\067\115','\078\080\067\032\097\114\101\097'),
'\110\112\099\073\100',bC)aZ(aM(
"\078\080\067\115\032\043\032\066\111\115\115\058\032\102\097\114\109\097\032\097\032\097\114\101\097\032\101\115\099\111\108\104\105\100\097\032\110\097\032\101\115\112\101\114\097\032\101\032\118\111\108\116\097\032\097\111\032\098\111\115\115\032\113\117\097\110\100\111\032\101\108\101\032\097\112\097\114\101\099\101\046\032\086\101\114\105\102\105\099\097\032\112\101\114\105\111\100\105\099\097\109\101\110\116\101\032\097\032\097\114\101\110\097\032\115\101\032\111\032\098\111\115\115\032\101\115\116\105\118\101\114\032\102\111\114\097\032\100\111\032\115\116\114\101\097\109\105\110\103\046"
,
"\078\080\067\115\032\043\032\066\111\115\115\058\032\102\097\114\109\115\032\116\104\101\032\115\101\108\101\099\116\101\100\032\097\114\101\097\032\119\104\105\108\101\032\119\097\105\116\105\110\103\044\032\116\104\101\110\032\115\119\105\116\099\104\101\115\032\116\111\032\116\104\101\032\098\111\115\115\046\032\080\101\114\105\111\100\105\099\097\108\108\121\032\099\104\101\099\107\115\032\116\104\101\032\097\114\101\110\097\032\119\104\101\110\032\116\104\101\032\098\111\115\115\032\105\115\032\111\117\116\115\105\100\101\032\115\116\114\101\097\109\105\110\103\032\114\097\110\103\101\046"
),70)aZ(aM(
'\069\115\099\111\108\104\101\114\032\111\032\097\108\118\111\032\110\097\111\032\108\105\103\097\032\111\032\102\097\114\109\046\032\065\116\105\118\101\032\070\097\114\109\032\111\117\032\080\114\111\103\114\101\115\115\u{e3}\111\032\097\117\116\111\109\u{e1}\116\105\099\097\032\097\099\105\109\097\046'
,
"\083\101\108\101\099\116\105\110\103\032\097\032\116\097\114\103\101\116\032\100\111\101\115\032\110\111\116\032\115\116\097\114\116\032\102\097\114\109\105\110\103\046\032\069\110\097\098\108\101\032\070\097\114\109\032\111\114\032\065\117\116\111\032\112\114\111\103\114\101\115\115\105\111\110\032\097\098\111\118\101\046"
),46)local bE if aJ==2 then aL=aI.section('\068\117\110\103\101\111\110')aZ(aM('\077\085\078\068\079\032','\087\079\082\076\068\032')..aJ
..aM('\032\u{b7}\032\068\117\110\103\101\111\110\032\112\111\114\032\112\097\114\116\105\100\097\032\101\032\097\110\100\097\114','\032\u{b7}\032\068\117\110\103\101\111\110\032\098\121\032\114\117\110\032\097\110\100\032\102\108\111\111\114'),
36)bq('\100\117\110\103\101\111\110\070\097\114\109','\065\117\116\111\032\068\117\110\103\101\111\110\058\032\099\111\109\098\097\116\101\114\032\101\032\097\118\097\110\u{e7}\097\114',
'\065\117\116\111\032\068\117\110\103\101\111\110\058\032\102\105\103\104\116\032\097\110\100\032\097\100\118\097\110\099\101')bq('\100\117\110\103\101\111\110\069\110\116\101\114',
'\069\110\116\114\097\114\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\032\110\111\032\112\111\114\116\097\108','\065\117\116\111\109\097\116\105\099\097\108\108\121\032\101\110\116\101\114\032\116\104\101\032\112\111\114\116\097\108')bq(
'\100\117\110\103\101\111\110\082\101\112\101\097\116','\082\101\112\101\116\105\114\032\097\112\u{f3}\115\032\115\097\105\114','\082\101\112\101\097\116\032\097\102\116\101\114\032\101\120\105\116')bq(
'\100\117\110\103\101\111\110\065\098\105\108\105\116\105\101\115','\072\097\098\105\108\105\100\097\100\101\115\032\097\117\116\111\109\u{e1}\116\105\099\097\115\032\110\097\032\068\117\110\103\101\111\110',
'\065\117\116\111\032\097\098\105\108\105\116\105\101\115\032\105\110\032\068\117\110\103\101\111\110')aZ(aM(
'\067\111\109\098\097\116\101\032\112\097\114\097\100\111\032\110\111\032\097\108\116\111\032\100\097\032\115\097\108\097\046\032\078\u{e3}\111\032\116\101\108\101\112\111\114\116\097\032\097\116\u{e9}\032\078\080\067\115\046\032\065\115\032\104\097\098\105\108\105\100\097\100\101\115\032\109\097\110\116\u{ea}\109\032\111\032\097\108\099\097\110\099\101\032\110\097\116\105\118\111\032\100\111\032\106\111\103\111\046'
,
"\083\116\097\116\105\111\110\097\114\121\032\099\111\109\098\097\116\032\097\098\111\118\101\032\116\104\101\032\114\111\111\109\046\032\078\101\118\101\114\032\116\101\108\101\112\111\114\116\115\032\116\111\032\078\080\067\115\046\032\065\098\105\108\105\116\105\101\115\032\114\101\116\097\105\110\032\116\104\101\105\114\032\110\097\116\105\118\101\032\103\097\109\101\032\114\097\110\103\101\046"
),64)bs('\104\111\118\101\114\072\101\105\103\104\116',aM('\065\108\116\117\114\097\032\097\099\105\109\097\032\100\097\032\101\110\116\114\097\100\097\032\040\052\u{2013}\050\052\032\115\116\117\100\115\041',
'\072\101\105\103\104\116\032\097\098\111\118\101\032\101\110\116\114\121\032\040\052\u{2013}\050\052\032\115\116\117\100\115\041'),function(bF)return aH.number(bF,4,24)
end)bq('\100\117\110\103\101\111\110\083\112\101\101\100','\087\097\108\107\032\083\112\101\101\100\032\110\097\032\068\117\110\103\101\111\110','\068\117\110\103\101\111\110\032\087\097\108\107\032\083\112\101\101\100')bA(aM(
'\083\097\105\114\032\110\111\032\099\104\101\099\107\112\111\105\110\116','\069\120\105\116\032\097\116\032\099\104\101\099\107\112\111\105\110\116'),'\101\120\105\116\070\108\111\111\114',{{id=5,text='\053'},{id=10,
text='\049\048'},{id=15,text='\049\053'},{id=20,text='\050\048'},{id=25,text='\050\053'},{id=50,text=
'\053\048'},{id=0,text=aM('\067\111\110\116\105\110\117\097\114\032\115\101\109\032\115\097\u{ed}\100\097\032\097\117\116\111\109\u{e1}\116\105\099\097',
'\067\111\110\116\105\110\117\101\032\119\105\116\104\111\117\116\032\097\117\116\111\109\097\116\105\099\032\101\120\105\116')}})bs('\119\097\108\107\083\112\101\101\100',aM(
'\086\101\108\111\099\105\100\097\100\101\032\110\097\032\068\117\110\103\101\111\110\032\040\049\054\u{2013}\049\048\048\041','\068\117\110\103\101\111\110\032\115\112\101\101\100\032\040\049\054\u{2013}\049\048\048\041'),
function(bF)return aH.number(bF,16,100)end)bs('\114\101\112\101\097\116\068\101\108\097\121',aM(
'\073\110\116\101\114\118\097\108\111\032\101\110\116\114\101\032\112\097\114\116\105\100\097\115\032\040\053\u{2013}\051\048\048\032\115\041',
'\068\101\108\097\121\032\098\101\116\119\101\101\110\032\114\117\110\115\032\040\053\u{2013}\051\048\048\032\115\041'),function(bF)return aH.number(bF,5,300)end
)bE=aZ(aM(
'\065\103\117\097\114\100\097\110\100\111\032\112\097\114\116\105\100\097\046\032\084\111\100\097\115\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\099\111\109\101\u{e7}\097\109\032\100\101\115\108\105\103\097\100\097\115\046',
'\087\097\105\116\105\110\103\032\102\111\114\032\097\032\114\117\110\046\032\065\108\108\032\097\117\116\111\109\097\116\105\111\110\032\115\116\097\114\116\115\032\111\102\102\046'),110)aZ(aM(
'\079\032\102\097\114\109\032\100\111\032\109\117\110\100\111\032\112\097\117\115\097\032\100\101\110\116\114\111\032\100\097\032\068\117\110\103\101\111\110\046\032\082\101\110\097\115\099\105\109\101\110\116\111\044\032\112\097\099\111\116\101\115\044\032\099\111\109\112\114\097\115\032\101\032\114\101\111\114\103\097\110\105\122\097\u{e7}\u{e3}\111\032\100\101\032\099\097\114\116\097\115\032\097\103\117\097\114\100\097\109\032\097\032\115\097\u{ed}\100\097\046'
,
"\087\111\114\108\100\032\102\097\114\109\105\110\103\032\112\097\117\115\101\115\032\105\110\032\068\117\110\103\101\111\110\046\032\082\101\098\105\114\116\104\044\032\112\097\099\107\115\044\032\112\117\114\099\104\097\115\101\115\032\097\110\100\032\099\097\114\100\032\099\104\097\110\103\101\115\032\119\097\105\116\032\117\110\116\105\108\032\101\120\105\116\046"
),64)end aL=aI.section('\077\101\108\104\111\114\105\097\115')bq('\117\112\103\114\097\100\101\115','\065\117\116\111\032\085\112\103\114\097\100\101\032\099\111\109\032\100\105\110\104\101\105\114\111',
'\065\117\116\111\032\099\097\115\104\032\117\112\103\114\097\100\101\115')aZ(aM('\077\101\108\104\111\114\105\097\115\032\112\101\114\109\105\116\105\100\097\115','\065\108\108\111\119\101\100\032\117\112\103\114\097\100\101\115'),28)local
function bF(bG,bH,bI)aY+=1 local bJ,bK=aK.checkbox(aL,bI,aY)bK(bG[bH]==true)a8(
bJ.Activated,function()bG[bH]=not bG[bH]bK(bG[bH]==true)a7()end)end for bG,bH in
ipairs(ba.Progress.Upgrades or{})do local bI={Cash={'\068\105\110\104\101\105\114\111','\067\097\115\104'},Health={
'\086\105\100\097','\072\101\097\108\116\104'},Carry={'\077\111\099\104\105\108\097','\067\097\114\114\121'},Crit={'\067\114\u{ed}\116\105\099\111','\067\114\105\116\105\099\097\108'},
Cooldown={'\082\101\099\097\114\103\097','\067\111\111\108\100\111\119\110'},Streak={'\083\101\113\117\u{ea}\110\099\105\097','\083\116\114\101\097\107'}}local bJ=bI[
bH.Id]bF(a3.upgradeKinds,bH.Id,bJ and aM(bJ[1],bJ[2])or aH.displayName(bH.Id))
end bs('\099\097\115\104\082\101\115\101\114\118\101',aM('\068\105\110\104\101\105\114\111\032\109\u{ed}\110\105\109\111\032\114\101\115\101\114\118\097\100\111\032\040\097\099\101\105\116\097\032\049\101\049\050\041',
'\077\105\110\105\109\117\109\032\099\097\115\104\032\114\101\115\101\114\118\101\032\040\097\099\099\101\112\116\115\032\049\101\049\050\041'),function(bG)return aH.number(bG,0,1e100)
end)bs('\098\117\121\076\105\109\105\116',aM('\076\105\109\105\116\101\032\100\101\032\099\111\109\112\114\097\115\032\097\117\116\111\109\u{e1}\116\105\099\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\065\117\116\111\032\112\117\114\099\104\097\115\101\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110'),function(bG)return aH.number(bG,1,1000,true)
end)bq('\112\111\116\105\111\110\066\117\121','\065\117\116\111\032\099\111\109\112\114\097\114\032\112\111\u{e7}\u{f5}\101\115\032\099\111\109\032\100\105\110\104\101\105\114\111',
'\065\117\116\111\032\098\117\121\032\112\111\116\105\111\110\115\032\119\105\116\104\032\099\097\115\104')bs('\112\111\116\105\111\110\083\116\111\099\107',aM(
'\069\115\116\111\113\117\101\032\100\101\115\101\106\097\100\111\032\112\111\114\032\112\111\u{e7}\u{e3}\111\032\101\032\110\u{ed}\118\101\108',
'\084\097\114\103\101\116\032\115\116\111\099\107\032\112\101\114\032\112\111\116\105\111\110\032\097\110\100\032\116\105\101\114'),function(bG)return aH.number(bG,1,100,true)
end)bs('\112\111\116\105\111\110\084\105\101\114',aM('\078\u{ed}\118\101\108\032\109\u{e1}\120\105\109\111\032\100\097\032\112\111\u{e7}\u{e3}\111\032\040\049\u{2013}\053\041',
'\077\097\120\105\109\117\109\032\112\111\116\105\111\110\032\116\105\101\114\032\040\049\u{2013}\053\041'),function(bG)return aH.number(bG,1,5,true)end
)for bG,bH in ipairs(ba.Cosmetics.Potions.Types or{})do bF(a3.potionKinds,bH.Id,
aH.displayName(bH.Id))end local bG={}if aJ==2 then bq('\100\117\110\103\101\111\110\066\117\121',
'\065\117\116\111\032\099\111\109\112\114\097\114\032\099\111\109\032\068\117\110\103\101\111\110\032\084\111\107\101\110\115','\065\117\116\111\032\098\117\121\032\119\105\116\104\032\068\117\110\103\101\111\110\032\084\111\107\101\110\115')bs(
'\116\111\107\101\110\082\101\115\101\114\118\101',aM('\084\111\107\101\110\115\032\109\u{ed}\110\105\109\111\115\032\114\101\115\101\114\118\097\100\111\115','\077\105\110\105\109\117\109\032\116\111\107\101\110\032\114\101\115\101\114\118\101'),
function(bH)return aH.number(bH,0,1e12,true)end)bs('\100\117\110\103\101\111\110\083\116\111\099\107',aM(
'\069\115\116\111\113\117\101\032\100\101\115\101\106\097\100\111\032\112\111\114\032\105\116\101\109\032\100\097\032\068\117\110\103\101\111\110','\084\097\114\103\101\116\032\115\116\111\099\107\032\112\101\114\032\068\117\110\103\101\111\110\032\105\116\101\109'),function
(bH)return aH.number(bH,1,100,true)end)aZ(aM(
'\069\115\099\111\108\104\097\032\111\115\032\105\116\101\110\115\032\100\097\032\108\111\106\097\032\100\097\032\068\117\110\103\101\111\110','\067\104\111\111\115\101\032\068\117\110\103\101\111\110\032\115\104\111\112\032\105\116\101\109\115'),34)bG=ba.
Dungeon.Offers()for bH,bI in ipairs(bG)do local bJ=bI.Trinket or(bI.Potion and
bI.Potion.Type)local bK=bJ and(bJ.Name or bJ.Id)or bI.Id local bL=bI.Potion and(
'\032\u{b7}\032'..bI.Potion.Tier.Tier)or''bF(a3.dungeonItems,bI.Id,aH.displayName(bK)
..bL..'\032\u{b7}\032'..bI.Price..aM('\032\116\111\107\101\110\115\032\u{b7}\032\097\110\100\097\114\032','\032\116\111\107\101\110\115\032\u{b7}\032\102\108\111\111\114\032')
..bI.Floor)end end bq('\099\111\115\109\101\116\105\099\066\117\121','\065\117\116\111\032\099\111\109\112\114\097\114\032\097\117\114\097\032\101\032\116\114\105\108\104\097\032\109\101\108\104\111\114\101\115',
'\065\117\116\111\032\098\117\121\032\098\101\116\116\101\114\032\097\117\114\097\032\097\110\100\032\116\114\097\105\108')bq('\099\111\115\109\101\116\105\099\069\113\117\105\112',
'\065\117\116\111\032\101\113\117\105\112\097\114\032\109\101\108\104\111\114\032\097\117\114\097\032\101\032\116\114\105\108\104\097','\065\117\116\111\032\101\113\117\105\112\032\098\101\115\116\032\097\117\114\097\032\097\110\100\032\116\114\097\105\108')bF(a3.
cosmeticKinds,'\065\117\114\097',aM('\065\117\114\097','\065\117\114\097'))bF(a3.cosmeticKinds,'\084\114\097\105\108',aM('\084\114\105\108\104\097',
'\084\114\097\105\108'))if aJ==2 then bq('\116\114\105\110\107\101\116\069\113\117\105\112',
'\065\117\116\111\032\101\113\117\105\112\097\114\032\109\101\100\097\108\104\u{f5}\101\115\032\101\109\032\101\115\112\097\u{e7}\111\115\032\118\097\122\105\111\115',
'\065\117\116\111\032\101\113\117\105\112\032\116\114\105\110\107\101\116\115\032\105\110\116\111\032\101\109\112\116\121\032\115\108\111\116\115')bA(aM('\065\116\114\105\098\117\116\111\032\100\111\032\109\101\100\097\108\104\u{e3}\111',
'\084\114\105\110\107\101\116\032\115\116\097\116'),'\116\114\105\110\107\101\116\083\116\097\116',{{id='\068\097\109\097\103\101',text=aM('\068\097\110\111','\068\097\109\097\103\101')},{id=
'\072\101\097\108\116\104',text=aM('\086\105\100\097','\072\101\097\108\116\104')},{id='\080\111\119\101\114',text=aM('\080\111\100\101\114','\080\111\119\101\114')},{id=
'\067\097\115\104',text=aM('\068\105\110\104\101\105\114\111','\067\097\115\104')},{id='\076\117\099\107',text=aM('\083\111\114\116\101','\076\117\099\107')},{id=
'\067\111\111\108\100\111\119\110',text=aM('\082\101\099\097\114\103\097','\067\111\111\108\100\111\119\110')}})aZ(aM(
'\077\101\100\097\108\104\u{f5}\101\115\032\106\u{e1}\032\099\111\108\111\099\097\100\111\115\032\115\u{e3}\111\032\112\114\101\115\101\114\118\097\100\111\115\046\032\067\111\109\112\114\097\115\032\097\117\116\111\109\u{e1}\116\105\099\097\115\032\117\115\097\109\032\097\112\101\110\097\115\032\100\105\110\104\101\105\114\111\032\100\111\032\106\111\103\111\032\101\032\116\111\107\101\110\115\059\032\115\101\108\101\099\105\111\110\101\032\111\115\032\105\116\101\110\115\032\100\101\115\101\106\097\100\111\115\046'
,
"\069\120\105\115\116\105\110\103\032\116\114\105\110\107\101\116\115\032\097\114\101\032\112\114\101\115\101\114\118\101\100\046\032\065\117\116\111\032\112\117\114\099\104\097\115\101\115\032\117\115\101\032\111\110\108\121\032\103\097\109\101\032\099\097\115\104\032\097\110\100\032\116\111\107\101\110\115\059\032\115\101\108\101\099\116\032\116\104\101\032\105\116\101\109\115\032\121\111\117\032\119\097\110\116\046"
),64)end local bH=aZ('',54)aL=by local bI=workspace:FindFirstChild('\069\110\101\109\105\101\115')
local bJ=setmetatable({},{__mode='\107'})local bK={}local bL local bM=setmetatable(
{},{__mode='\107'})local function bN(bO)if bJ[bO]then return end local bP=bO:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')if not bP then return end bJ[bO]=true local bQ=
{}aV[bO]=bQ bQ[#bQ+1]=bP.Died:Connect(function()local bR=bx[bO:GetAttribute(
'\080\097\100\073\100')]if bR and bR.gate then bK[bR.id]=os.clock()+bR.respawn end if bL then
bL()end end)bQ[#bQ+1]=bO.AncestryChanged:Connect(function()if bO.Parent~=bI then
for bR,bS in ipairs(bQ)do bS:Disconnect()end aV[bO]=nil bJ[bO]=nil end end)local
bR=bO:GetAttribute('\080\097\100\073\100')if bO:GetAttribute('\066\111\115\115')==true and bR then bK[bR]=
nil end end local bO=false local bP={}local function bQ(bR,...)if not aS or bO
or os.clock()<(bP[bR]or 0)then return nil end local bS=bi:FindFirstChild(bR)if
not bS or not bS:IsA('\082\101\109\111\116\101\070\117\110\099\116\105\111\110')then a2(aM('\082\101\109\111\116\101\070\117\110\099\116\105\111\110\032\097\117\115\101\110\116\101\058\032',
'\077\105\115\115\105\110\103\032\082\101\109\111\116\101\070\117\110\099\116\105\111\110\058\032')..bR)return nil end bO=true local bT=table.pack(...)
local bU,bV=false,nil task.spawn(function()bV=table.pack(pcall(bS.InvokeServer,
bS,table.unpack(bT,1,bT.n)))bU=true bO=false end)local bW=os.clock()while aS and
not bU and os.clock()-bW<10 do task.wait(0.1)end if not aS then return nil end
if not bU then a2(bR..aM('\058\032\097\103\117\097\114\100\097\110\100\111\032\115\101\114\118\105\100\111\114\059\032\115\101\109\032\114\101\112\101\116\105\099\097\111\032\099\111\110\099\111\114\114\101\110\116\101',
'\058\032\119\097\105\116\105\110\103\032\102\111\114\032\115\101\114\118\101\114\059\032\110\111\032\099\111\110\099\117\114\114\101\110\116\032\114\101\116\114\121'))bP[bR]=os.clock()+15 return nil end
if not bV[1]or bV[2]==false then a2(bR..'\058\032'..tostring(bV[3]or bV[2]))bP[bR]=os.
clock()+8 return nil end a2(bR..aM('\058\032\114\101\115\112\111\115\116\097\032\114\101\099\101\098\105\100\097','\058\032\114\101\115\112\111\110\115\101\032\114\101\099\101\105\118\101\100'))
return table.unpack(bV,2,bV.n)end local bR=0 local function bS(bT,bU)if type(bU)
~='\110\117\109\098\101\114'and type(bU)~='\115\116\114\105\110\103'then return false end if type(bU)=='\110\117\109\098\101\114'and(
bU~=bU or bU==math.huge)then return false end return not ba.Big.lt(bU,0)and not
ba.Big.lt(bT.Cash or 0,ba.Big.add(bU,a3.cashReserve))end local function bT(bU,
...)if bR>=a3.buyLimit then return end if bQ(bU,...)==true then bR+=1 end bH.
Text=aM('\067\111\109\112\114\097\115\032\110\101\115\116\097\032\115\101\115\115\u{e3}\111\058\032','\080\117\114\099\104\097\115\101\115\032\116\104\105\115\032\115\101\115\115\105\111\110\058\032')..bR..'\032\047\032'..a3
.buyLimit end local bU=false local bV={}bV[1]=function(bW)if not a3.open or ba.
Opening.Playing then return end for bX,bY in pairs(bW.Packs or{})do if type(bY)
=='\110\117\109\098\101\114'and bY>0 then local bZ=math.min(bY,ba.Packs.MaxOpenAtOnce or 1)local
b_={}for b0,b1 in pairs(bW.Cards or{})do b_[b0]=b1.Level end local b0=bQ(
'\079\112\101\110\080\097\099\107',bX,bZ)if aS and type(b0)=='\116\097\098\108\101'then ba.Opening.Play(bX,function()
return b0 end,b_,nil,bZ)end return end end end bV[2]=function(bW)if not a3.fuse
then return end local bX=bu()for bY,bZ in pairs(bW.Cards or{})do if not bX[bY]
and not bZ.Favorite and not bZ.Locked and ba.Stats.Fuse(bZ)then bQ('\070\117\115\101',bY)
return end end end bV[3]=function(bW)if not a3.equip then return end local bX=ba
.Stats.Best(bW.Cards,function(bX)return ba.Base.SlotOf(bW,bX)~=nil end)if not aH
.sameList(bX,bW.Equipped or{})then bQ('\069\113\117\105\112\066\101\115\116')end end bV[4]=function(bW)if
not a3.place or not bW.Base then return end local bX,bY=ba.Base.BestHolders(bW)
if bY then for bZ,b_ in pairs(bX)do if bW.Base.Holders[bZ]~=b_ then bQ(
'\066\097\115\101\080\108\097\099\101',tonumber(bZ),b_)return end end end end bV[5]=function(bW)if not a3.
tree then return end if not ba.Shrine.Open(bW)then a2(aM(
'\065\114\118\111\114\101\032\098\108\111\113\117\101\097\100\097\058\032\100\101\114\114\111\116\101\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046',
'\084\114\101\101\032\108\111\099\107\101\100\058\032\100\101\102\101\097\116\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046'))return end local bX={}for bY,
bZ in pairs(ba.Shrine.Tree or{})do if bZ.Branch==a3.branch and not ba.Shrine.
CantBuy(bW,bZ.Id)then bX[#bX+1]=bZ end end table.sort(bX,function(bY,bZ)return
bY.Cost==bZ.Cost and bY.Id<bZ.Id or bY.Cost<bZ.Cost end)if bX[1]then bQ(
'\084\114\101\101\066\117\121',bX[1].Id)else local bY=aM('\078\101\110\104\117\109\032\110\111\032\101\108\101\103\105\118\101\108\032\110\111\032\114\097\109\111\032',
'\078\111\032\101\108\105\103\105\098\108\101\032\110\111\100\101\032\105\110\032\098\114\097\110\099\104\032')..a3.branch for bZ,b_ in pairs(ba.Shrine.Tree or{}
)do if b_.Branch==a3.branch and not ba.Shrine.Owns(bW,b_.Id)then bY=tostring(ba.
Shrine.CantBuy(bW,b_.Id))break end end a2(aM('\065\114\118\111\114\101\058\032','\084\114\101\101\058\032')..bY)end end bV
[6]=function(bW)if not a3.sacrifice then return end if not ba.Shrine.Open(bW)
then a2(aM('\083\097\099\114\105\102\105\099\105\111\032\098\108\111\113\117\101\097\100\111\058\032\100\101\114\114\111\116\101\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046',
'\083\097\099\114\105\102\105\099\101\032\108\111\099\107\101\100\058\032\100\101\102\101\097\116\032\068\111\109\105\110\117\115\032\073\110\102\101\114\110\117\115\032\040\086\111\108\099\097\110\111\041\046'))return end local bX=bu()
for bY in pairs(bW.Cards or{})do local bZ=ba.Cards.ById[bY]local b_=bZ and ba.
Cards.RarityRank[bZ.Rarity]or 999 local b0=aH.sacrificeCount(bW,bY,bX,a3.reserve
,b_,ba.Shrine.Spare(bW,bY),a3.rarities[bZ and bZ.Rarity or'']==true and 999 or 0
)if b0>0 then bQ('\083\097\099\114\105\102\105\099\101',bY,b0)return end end a2(aM(
"\083\097\099\114\105\102\105\099\105\111\058\032\110\101\110\104\117\109\097\032\115\111\098\114\097\032\101\108\101\103\105\118\101\108\046\032\067\111\110\102\105\114\097\032\114\101\115\101\114\118\097\044\032\114\097\114\105\100\097\100\101\032\101\032\099\097\114\116\097\115\032\112\114\111\116\101\103\105\100\097\115\032\101\109\032\065\106\117\115\116\101\115\046"
,
"\083\097\099\114\105\102\105\099\101\058\032\110\111\032\101\108\105\103\105\098\108\101\032\115\112\097\114\101\115\046\032\067\104\101\099\107\032\114\101\115\101\114\118\101\044\032\114\097\114\105\116\121\032\097\110\100\032\112\114\111\116\101\099\116\101\100\032\099\097\114\100\115\032\105\110\032\083\101\116\116\105\110\103\115\046"
))end bV[7]=function(bW)if not a3.upgrades then return end local bX,bY for bZ,b_
in pairs(ba.Progress.Upgrades or{})do local b0=ba.Progress.UpgradeLevel(bW,b_.Id
)if a3.upgradeKinds[b_.Id]and b0<b_.MaxLevel then local b1=ba.Progress.
UpgradePrice(bW,b_.Id,b0)if bS(bW,b1)and(not bY or ba.Big.lt(b1,bY))then bX=b_.
Id bY=b1 end end end if bX then bT('\066\117\121\085\112\103\114\097\100\101',bX)end end local bW=0 local bX
bV[8]=function(bY)if not a3.rebirth then return end local bZ=bY.Rebirths or 0
local b_=ba.Progress.RebirthLevelRequirement(bZ)local b0=ba.Power.Level(bY.Power
or 0)br.Text=aM('\082\101\110\097\115\099\105\109\101\110\116\111\115\058\032','\082\101\098\105\114\116\104\115\058\032')..bZ..aM('\032\u{b7}\032\078\u{ed}\118\101\108\058\032',
'\032\u{b7}\032\076\101\118\101\108\058\032')..b0..'\032\047\032'..b_ if bX~=nil then if bZ>bX then bX=nil a2(aM(
'\082\101\110\097\115\099\105\109\101\110\116\111\032\099\111\110\102\105\114\109\097\100\111\032\112\101\108\111\032\115\101\114\118\105\100\111\114\046','\082\101\098\105\114\116\104\032\099\111\110\102\105\114\109\101\100\032\098\121\032\116\104\101\032\115\101\114\118\101\114\046'))
elseif os.clock()<bW then return else bX=nil end end if b0<b_ or os.clock()<bW
then return end bX=bZ bW=os.clock()+20 local b1=bQ('\082\101\098\105\114\116\104')if b1~=true then br
.Text=aM('\065\103\117\097\114\100\097\110\100\111\032\099\111\110\102\105\114\109\097\u{e7}\u{e3}\111\032\111\117\032\110\111\118\097\032\116\101\110\116\097\116\105\118\097\032\100\101\032\114\101\110\097\115\099\105\109\101\110\116\111\046',
'\087\097\105\116\105\110\103\032\102\111\114\032\099\111\110\102\105\114\109\097\116\105\111\110\032\111\114\032\097\032\114\101\098\105\114\116\104\032\114\101\116\114\121\046')end end bV[9]=function(bY)if not
a3.potionBuy or not ba.Cosmetics.Potions.Selling then return end local bZ=
workspace:GetServerTimeNow()local b_=ba.Cosmetics.PotionShelf(bY,bZ)for b0,b1 in
ipairs(ba.Cosmetics.PotionStock(aR.UserId,b_))do local b2=ba.Cosmetics.
PotionKey(b1.Type.Id,b1.Tier.Tier)local b3=tonumber((bY.Backpack or{})[b2])or 0
if a3.potionKinds[b1.Type.Id]and b1.Tier.Tier<=a3.potionTier and b3<a3.
potionStock and ba.Cosmetics.PotionLeft(bY,b1,b_)>0 and bS(bY,b1.Tier.Price)then
bT('\066\117\121\067\111\115\109\101\116\105\099','\080\111\116\105\111\110',b1.Type.Id,b1.Tier.Tier)return end end end bV[10]=
function(bY)if aJ~=2 or not a3.dungeonBuy then return end for bZ,b_ in ipairs(bG
)do if a3.dungeonItems[b_.Id]and(tonumber((bY.Backpack or{})[b_.Id])or 0)<a3.
dungeonStock and aH.tokenAffordable(bY.DungeonTokens,b_.Price,a3.tokenReserve)
and ba.Dungeon.CanBuy(bY,b_.Id)then bT('\068\117\110\103\101\111\110\066\117\121',b_.Id)return end end end bV[
11]=function(bY)if not(a3.cosmeticBuy or a3.cosmeticEquip)then return end for bZ
,b_ in ipairs({'\065\117\114\097','\084\114\097\105\108'})do if a3.cosmeticKinds[b_]then local b0=ba.
Cosmetics.Kinds[b_]local b1=bY[b0.Owned]or{}local b2=ba.Cosmetics.Equipped(bY,b_
)local b3=b2 local b4 local function b5(b6)return b6 and(b_=='\084\114\097\105\108'and b6.Speed
or b6.Multiplier)or 0 end for b6,b7 in ipairs(b0.Items)do if b1[b7.Id]and b5(b7)
>b5(b3)then b3=b7 end local b8=ba.Cosmetics.PriceFor(bY,b_,b7)if(b7.World or 1)
==aJ and not b1[b7.Id]and not b7.RobuxOnly and bS(bY,b8)and b5(b7)>b5(b2)and(not
b4 or b5(b7)>b5(b4))then b4=b7 end end if a3.cosmeticEquip and b3 and(not b2 or
b3.Id~=b2.Id)then bQ('\069\113\117\105\112\067\111\115\109\101\116\105\099',b_,b3.Id)return end if a3.cosmeticBuy and
b4 then bT('\066\117\121\067\111\115\109\101\116\105\099',b_,b4.Id)return end end end end bV[12]=function(bY)if
aJ~=2 or not a3.trinketEquip then return end local bZ for b_,b0 in ipairs(ba.
Trinkets.List)do if b0.Stat==a3.trinketStat and(tonumber((bY.Backpack or{})[ba.
Trinkets.Key(b0.Id)])or 0)>0 and(not bZ or b0.Amount>bZ.Amount)then bZ=b0 end
end if not bZ then return end for b_,b0 in ipairs(bY.Equipped or{})do local b1=(
bY.CardTrinkets or{})[b0]or{}for b2=1,ba.Trinkets.Slots(b0)do if not b1[
tostring(b2)]and not b1[b2]then bQ('\069\113\117\105\112\067\111\115\109\101\116\105\099','\084\114\105\110\107\101\116',b0,b2,bZ.Id,50,90)
return end end end end local bY=1 task.spawn(function()while aS do local bZ=bh.
Data if bZ and not bU and(aJ~=2 or aR:GetAttribute('\068\117\110\103\101\111\110\082\117\110')==nil)and not bO
and not ba.Opening.Playing then local b_,b0=pcall(bV[bY],bZ)if not b_ then a2(b0
)end bY=bY%#bV+1 end task.wait(0.8)end end)local bZ=1 local b_=0 local b0,b1=0,0
local b2,b3,b4=0,0,nil local function b5(b6,b7)b7=b7 or a3.npcId local b8=bx[b7]
local b9={}for ca,cb in ipairs(bv)do if aH.sameArea(cb,b8)then b9[#b9+1]=cb end
end if#b9==0 then return b8 end if b4~=b7 then b4=b7 b2=0 b3=0 end if b6>=b3
then b2=b2%#b9+1 b3=b6+8 end return b9[b2]end local b6=aZ('',60)b6.LayoutOrder=
799 local b7=aH.carried(aR:GetAttribute('\067\097\114\114\105\101\100\080\097\099\107\115'))local b8,b9,ca=0,0,0
local cb,cc,cd,ce,cf=false,0,nil,0,''local function cg()local ch,ci=aH.carried(
aR:GetAttribute('\067\097\114\114\105\101\100\080\097\099\107\115'))for cj in pairs(ch)do if not b7[cj]then b7[cj]=
true b8+=1 end end ca=ci end a8(aR:GetAttributeChangedSignal('\067\097\114\114\105\101\100\080\097\099\107\115'),cg)
cg()local function ch(ci,cj,ck)local cl=aR:GetAttribute('\067\097\114\114\121\067\097\112\097\099\105\116\121')if type(
cl)~='\110\117\109\098\101\114'or cl<1 then cl=ba.Progress.CarryCapacity(ck)end b6.Text=aM(
'\080\097\099\111\116\101\115\032\099\111\108\101\116\097\100\111\115\058\032','\080\097\099\107\115\032\099\111\108\108\101\099\116\101\100\058\032')..b8..aM('\032\u{b7}\032\077\111\099\104\105\108\097\058\032',
'\032\u{b7}\032\066\097\103\058\032')..ca..'\047'..cl..aM('\032\u{b7}\032\086\105\097\103\101\110\115\058\032','\032\u{b7}\032\084\114\105\112\115\058\032')..b9..
'\n'..cf if not a3.returnFull or not(a3.farm or a3.boss)then cb=false cf=''
return false end if not ci or not cj or cj.Health<=0 then cb=false return false
end local cm=aR:GetAttribute('\066\097\115\101\083\112\097\119\110')local cn=typeof(cm)=='\067\070\114\097\109\101'and(ci.
Position-cm.Position).Magnitude<45 if cb then local co=aH.tripState(ca,cn,os.
clock()-cc)if co=='\100\101\108\105\118\101\114\101\100'or co=='\108\111\115\116'then cb=false if cn then b9+=1 cf=aM(
'\069\110\116\114\101\103\097\032\099\111\110\099\108\117\u{ed}\100\097\046\032\082\101\116\111\109\097\110\100\111\032\111\032\102\097\114\109\046',
'\068\101\108\105\118\101\114\121\032\099\111\109\112\108\101\116\101\046\032\082\101\115\117\109\105\110\103\032\102\097\114\109\105\110\103\046')if cd then ci.CFrame=cd end b0=0 b3=0
else cf=aM('\077\111\099\104\105\108\097\032\118\097\122\105\097\032\102\111\114\097\032\100\097\032\098\097\115\101\059\032\118\105\097\103\101\109\032\110\u{e3}\111\032\099\111\110\116\097\098\105\108\105\122\097\100\097\046',
'\066\097\103\032\101\109\112\116\105\101\100\032\097\119\097\121\032\102\114\111\109\032\104\111\109\101\059\032\116\114\105\112\032\110\111\116\032\099\111\117\110\116\101\100\046')end return true end if co==
'\116\105\109\101\111\117\116'then cb=false ce=os.clock()+5 cf=aM(
'\069\110\116\114\101\103\097\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\100\097\046\032\084\101\110\116\097\110\100\111\032\111\032\112\111\114\116\097\108\032\110\111\118\097\109\101\110\116\101\046',
'\068\101\108\105\118\101\114\121\032\110\111\116\032\099\111\110\102\105\114\109\101\100\046\032\082\101\116\114\121\105\110\103\032\116\104\101\032\112\111\114\116\097\108\046')end return true end if ca<cl then
return false end if os.clock()<ce then return true end ce=os.clock()+3 local co=
workspace:FindFirstChild('\066\111\115\115\080\111\114\116\097\108\115')local cp,cq,cr=nil,nil,math.huge if co
then for cs,ct in ipairs(co:GetDescendants())do if ct:IsA('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and
ct.Name=='\080\111\114\116\097\108\080\114\111\109\112\116'and ct.Enabled then local cu=ct.Parent local cv=cu:IsA(
'\065\116\116\097\099\104\109\101\110\116')and cu.WorldCFrame or cu:IsA('\066\097\115\101\080\097\114\116')and cu.CFrame if cv then
local cw=(ci.Position-cv.Position).Magnitude if cw<cr then cp=ct cq=cv cr=cw end
end end end end if not cp then cf=aM(
'\077\111\099\104\105\108\097\032\099\104\101\105\097\046\032\065\103\117\097\114\100\097\110\100\111\032\117\109\032\112\111\114\116\097\108\032\100\105\115\112\111\110\u{ed}\118\101\108\046',
'\066\097\103\032\102\117\108\108\046\032\087\097\105\116\105\110\103\032\102\111\114\032\097\110\032\097\118\097\105\108\097\098\108\101\032\112\111\114\116\097\108\046')return false end cd=ci.CFrame cc=os
.clock()cb=true ci.CFrame=cq+Vector3.new(0,0,3)cf=aM(
'\082\101\116\111\114\110\097\110\100\111\032\112\101\108\111\032\112\111\114\116\097\108\059\032\097\103\117\097\114\100\097\110\100\111\032\099\111\110\102\105\114\109\097\u{e7}\u{e3}\111\032\100\097\032\101\110\116\114\101\103\097\046',
"\082\101\116\117\114\110\105\110\103\032\116\104\114\111\117\103\104\032\116\104\101\032\112\111\114\116\097\108\059\032\119\097\105\116\105\110\103\032\102\111\114\032\100\101\108\105\118\101\114\121\032\099\111\110\102\105\114\109\097\116\105\111\110\046")task.spawn(
function()task.wait(0.3)if not aS or not cb or not a3.returnFull or not cp.
Parent then return end if type(fireproximityprompt)=='\102\117\110\099\116\105\111\110'then pcall(
fireproximityprompt,cp)else cp:InputHoldBegin()task.wait(cp.HoldDuration+0.1)if
cp.Parent then cp:InputHoldEnd()end end end)return true end local ci=function()
return false end if aJ==2 then local cj={run=nil,checkpoint=0,portal=nil,banked=
0,runs=0,nextEntry=0,nextExit=0,lastMove=0}local ck,cl,cm local cn local
function co()if not cn then return end for cp,cq in ipairs({cn.position,cn.
orientation,cn.attachment})do cq:Destroy()end if cn.humanoid.Parent then cn.
humanoid.AutoRotate=cn.autoRotate end cn=nil end local function cp(cq,cr,cs,ct)
local cu=cq:FindFirstChild('\069\110\116\114\121')local cv=cq:FindFirstChild('\066\111\117\110\100\115')if not cu
or not cu:IsA('\066\097\115\101\080\097\114\116')or not cv or not cv:IsA('\066\097\115\101\080\097\114\116')then return end if
cn and(cn.room~=cq or cn.root~=cr)then co()end local cw=cu.Position.Y+a3.
hoverHeight cw=math.min(cw,cv.Position.Y+cv.Size.Y/2-6)local cx=Vector3.new(cv.
Position.X,cw,cv.Position.Z)if not cn then local cy=Instance.new('\065\116\116\097\099\104\109\101\110\116')cy
.Name='\065\110\111\110\072\117\098\068\117\110\103\101\111\110\072\111\118\101\114'cy.Parent=cr local cz=Instance.new('\065\108\105\103\110\080\111\115\105\116\105\111\110')cz
.Mode=Enum.PositionAlignmentMode.OneAttachment cz.Attachment0=cy cz.
ApplyAtCenterOfMass=true cz.MaxForce=1000000 cz.MaxVelocity=40 cz.Responsiveness
=25 cz.Position=cx cz.Parent=cr local cA=Instance.new('\065\108\105\103\110\079\114\105\101\110\116\097\116\105\111\110')cA.Mode
=Enum.OrientationAlignmentMode.OneAttachment cA.Attachment0=cy cA.MaxTorque=
1000000 cA.Responsiveness=20 cA.Parent=cr cn={room=cq,root=cr,humanoid=cs,
autoRotate=cs.AutoRotate,attachment=cy,position=cz,orientation=cA}cs.AutoRotate=
false cs:Move(Vector3.zero)cr.AssemblyLinearVelocity=Vector3.zero cr.
AssemblyAngularVelocity=Vector3.zero cr.CFrame=CFrame.new(cx)end cn.position.
Position=cx if ct then local cy=Vector3.new(ct.Position.X-cx.X,0,ct.Position.Z-
cx.Z)if cy.Magnitude>0.1 then cn.orientation.CFrame=CFrame.lookAt(Vector3.zero,
cy)end end end local function cq()if ck and ck.Parent and ck.WalkSpeed==cm then
ck.WalkSpeed=cl end ck=nil cl=nil cm=nil end local cr=aW aW=function()co()cq()
cr()end local cs=bi:FindFirstChild('\068\117\110\103\101\111\110')if cs and cs:IsA('\082\101\109\111\116\101\069\118\101\110\116')then
a8(cs.OnClientEvent,function(ct,cu,cv)if ct=='\083\116\097\114\116'then cj.run=cu cj.checkpoint
=0 cj.portal=nil cj.nextExit=0 elseif ct=='\080\111\114\116\097\108'and typeof(cu)=='\086\101\099\116\111\114\051'then
cj.portal=cu elseif ct=='\080\111\114\116\097\108\071\111\110\101'then cj.portal=nil elseif ct=='\067\104\101\099\107\112\111\105\110\116'
then cj.checkpoint=tonumber(cu)or 0 cj.banked=tonumber(cv)or 0 elseif ct=='\069\110\100'
and type(cu)=='\116\097\098\108\101'then co()cj.runs+=1 cj.run=nil cj.portal=nil cj.banked=
tonumber(cu.Banked)or 0 cj.nextEntry=os.clock()+a3.repeatDelay if not a3.
dungeonRepeat then a3.dungeonEnter=false for cw,cx in ipairs(bp)do cx()end end
a2(aM('\068\117\110\103\101\111\110\032\099\111\110\099\108\117\u{ed}\100\097\058\032\097\110\100\097\114\032','\068\117\110\103\101\111\110\032\102\105\110\105\115\104\101\100\058\032\102\108\111\111\114\032')..tostring(cu.
Floor)..'\032\u{b7}\032'..cj.banked..aM('\032\116\111\107\101\110\115\032\u{b7}\032\112\101\114\100\105\100\111\115\058\032',
'\032\116\111\107\101\110\115\032\u{b7}\032\108\111\115\116\058\032')..tostring(cu.Lost))end end)end local function ct(cu,cv,
cw)if not cw or not cv or os.clock()-b_<0.6 or aQ:GetFocusedTextBox()then return
end b_=os.clock()local cx=ba.Ability.Loadout(cu)if#cx>0 then bZ=(bZ-1)%#cx+1
local cy=ba.Ability.Keys[bZ]if cy then local cz=game:GetService(
'\086\105\114\116\117\097\108\073\110\112\117\116\077\097\110\097\103\101\114')cz:SendKeyEvent(true,cy,false,game)cz:SendKeyEvent(false,
cy,false,game)end bZ+=1 end end ci=function(cu,cv,cw)local cx=aR:GetAttribute(
'\068\117\110\103\101\111\110\082\117\110')bU=false local cy=tonumber(aR:GetAttribute('\068\117\110\103\101\111\110\070\108\111\111\114'))or 0
local cz=tonumber(aR:GetAttribute('\068\117\110\103\101\111\110\069\110\101\109\105\101\115'))or 0 bE.Text=aM('\065\110\100\097\114\058\032',
'\070\108\111\111\114\058\032')..cy..aM('\032\u{b7}\032\073\110\105\109\105\103\111\115\058\032','\032\u{b7}\032\069\110\101\109\105\101\115\058\032')..cz..aM(
'\n\084\111\107\101\110\115\032\112\101\110\100\101\110\116\101\115\058\032','\n\085\110\098\097\110\107\101\100\032\116\111\107\101\110\115\058\032')..tostring(aR:GetAttribute(
'\068\117\110\103\101\111\110\085\110\098\097\110\107\101\100')or 0)..aM('\032\u{b7}\032\083\097\108\100\111\058\032','\032\u{b7}\032\066\097\108\097\110\099\101\058\032')..tostring(cw.
DungeonTokens or 0)..aM('\n\067\104\101\099\107\112\111\105\110\116\058\032','\n\067\104\101\099\107\112\111\105\110\116\058\032')..cj.checkpoint..aM(
'\032\u{b7}\032\080\097\114\116\105\100\097\115\058\032','\032\u{b7}\032\082\117\110\115\058\032')..cj.runs if cx==nil then co()cq()if a3.
dungeonEnter and a3.dungeonFarm and os.clock()>=cj.nextEntry and cu and cv and
cv.Health>0 then bU=true if bO or ba.Opening.Playing then return true end local
cA=workspace:FindFirstChild('\068\117\110\103\101\111\110\080\111\114\116\097\108')if cA and cA:IsA('\077\111\100\101\108')then local
cB=cA:GetPivot()+Vector3.new(0,3,0)if(cu.Position-cB.Position).Magnitude>4 then
cu.CFrame=cB end local cC=cA:GetAttribute('\083\116\097\114\116\115\065\116')bE.Text=aM(
'\078\097\032\102\105\108\097\032\100\097\032\068\117\110\103\101\111\110','\073\110\032\068\117\110\103\101\111\110\032\113\117\101\117\101')..(type(cC)=='\110\117\109\098\101\114'and('\032\u{b7}\032'..
math.max(0,math.ceil(cC-workspace:GetServerTimeNow()))..'\115')or'')return true end
end return false end if a3.dungeonSpeed and cv then if ck~=cv then cq()ck=cv cl=
cv.WalkSpeed end cm=a3.walkSpeed cv.WalkSpeed=cm else cq()end if not a3.
dungeonFarm or not cu or not cv or cv.Health<=0 or aR:GetAttribute('\068\111\119\110\101\100')==
true then co()return true end if aH.shouldExit(a3.exitFloor,cj.checkpoint,cj.
portal~=nil)then co()cu.CFrame=CFrame.new(cj.portal+Vector3.new(0,3,0))if cs and
os.clock()>=cj.nextExit then cj.nextExit=os.clock()+3 cs:FireServer('\069\120\105\116')end
return true end local cA=workspace:FindFirstChild('\069\110\101\109\105\101\115')local cB,cC=nil,math
.huge for cD,cE in ipairs(cA and cA:GetChildren()or{})do local cF=cE:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cG=cE:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')
if aH.dungeonEnemy(cx,cE:GetAttribute('\068\117\110\103\101\111\110'),cF and cF.Health or 0,cE:
GetAttribute('\065\108\108\121'))and cG then local cH=(cu.Position-cG.Position).Magnitude-(
cE:GetAttribute('\066\111\115\115')==true and 1000000 or 0)if cH<cC then cC=cH cB=cG end end
end local cD=workspace:FindFirstChild('\068\117\110\103\101\111\110\077\097\112\115')local cE=cD and cD:
FindFirstChild('\082\117\110'..tostring(cx)..'\095\070\108\111\111\114'..tostring(cy))if cn and(cn.room~=cE
or cn.root~=cu)then co()end if cB then if cE then cp(cE,cu,cv,cB)end ct(cw,cB,a3
.dungeonAbilities)elseif aR:GetAttribute('\068\117\110\103\101\111\110\070\105\103\104\116')~=true and cz==0 then if
cE then local cF=cE:FindFirstChild('\069\120\105\116\068\111\111\114')local cG=cE:FindFirstChild('\069\110\116\114\121'
)if cF and cF:IsA('\066\097\115\101\080\097\114\116')and cG and cG:IsA('\066\097\115\101\080\097\114\116')then local cH=cF.
Position-cG.Position cH=Vector3.new(cH.X,0,cH.Z)if cH.Magnitude>0 and os.clock()
-cj.lastMove>=0.8 then local cI=tostring(cx)..'\058'..tostring(cy)if cj.moveRoom~=
cI then cj.moveRoom=cI cj.crossing=0 end local cJ=cF.CanCollide==false if not cJ
and cn then return true end co()local cK=cJ and cF.Position or cG.Position local
cL=cJ and((cj.crossing or 0)%2)*8 or 8 local cM=Vector3.new(cK.X,cG.Position.Y,
cK.Z)+cH.Unit*cL cj.lastMove=os.clock()if cJ then cj.crossing=(cj.crossing or 0)
+1 end if(cu.Position-cM).Magnitude>2 then cv:Move(Vector3.zero)cu.
AssemblyLinearVelocity=Vector3.zero cu.AssemblyAngularVelocity=Vector3.zero cu.
CFrame=CFrame.lookAt(cM,cM+cH.Unit)end end end end end return true end end local
function cj()local ck=bh.Data if not ck then a2(aM(
'\065\103\117\097\114\100\097\110\100\111\032\100\097\100\111\115\032\114\101\112\108\105\099\097\100\111\115\046\046\046','\087\097\105\116\105\110\103\032\102\111\114\032\114\101\112\108\105\099\097\116\101\100\032\100\097\116\097\046\046\046'))return end bI
=workspace:FindFirstChild('\069\110\101\109\105\101\115')local cl=bI and bI:GetChildren()or{}local cm
={}local cn=aH.nextBoss(bv,ck.Gates or{})local co=aR.Character local cp=co and
co:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')local cq=co and co:FindFirstChildOfClass(
'\072\117\109\097\110\111\105\100')local cr=aJ==2 and aR:GetAttribute('\068\117\110\103\101\111\110\082\117\110')~=nil if bk or a3.
abilities or(cr and a3.dungeonFarm and a3.dungeonAbilities)then pcall(bl,cr and
a3.dungeonFarm and a3.dungeonAbilities or(not cr and a3.abilities))end if ci(cp,
cq,ck)then return end if ch(cp,cq,ck)then return end local cs=ba.Power.Level(ck.
Power or 0)local ct if a3.farmMode=='\065\117\116\111'and a3.farm then for cu,cv in ipairs(
bv)do if not cv.gate and cv.level<=cs then ct=cv end end end local cu=(a3.
farmMode=='\078\080\067'or a3.farmMode=='\077\105\120\101\100')and b5(os.clock())or ct and b5(os.clock()
,ct.id)local cv,cw,cx,cy=nil,false,false,math.huge local cz={}for cA,cB in
ipairs(cl)do bN(cB)local cC=cB:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local cD=cB:
FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if cC and cC.Health>0 and cD and cB:
GetAttribute('\068\117\110\103\101\111\110')==nil then local cE=cB:GetAttribute('\080\097\100\073\100')if cE then cz
[cE]=true end if cp then local cF=cB:GetAttribute('\066\111\115\115')==true local cG=cB:
GetAttribute('\076\101\118\101\108')or 1 local cH=a3.boost or cG<=cs if a3.farmMode~='\065\117\116\111'then
cH=aH.manualEligible(a3.farmMode,cF,cE,a3.bossId,a3.npcId)or(not cF and(a3.
farmMode=='\078\080\067'or a3.farmMode=='\077\105\120\101\100')and aH.sameArea(bx[cE],bx[a3.npcId]))
elseif a3.progress and cF then cH=cH and cn and cE==cn.id end if cH and(a3.farm
or(a3.boss and(cF or a3.farmMode=='\077\105\120\101\100')))then local cI=(cp.Position-cD.
Position).Magnitude local cJ=os.clock()-(bM[cB]or-10)<1 if cJ then cI-=2000000
end if cu and not cF and cE~=cu.id then cI+=1000000 end if(a3.boss or a3.
farmMode=='\077\105\120\101\100')and cF then cI=cI-1000000000 end if cI<cy then cy=cI cv=cD cw=
cF cx=cJ end end end end end for cA,cB in ipairs(bv)do if cB.gate then local cC=
cz[cB.id]and aM('\086\073\086\079','\065\076\073\086\069')or(bK[cB.id]and(math.ceil(math.max(0,bK[cB.id]-os
.clock()))..aM('\115\032\101\115\116\105\109\097\100\111\115','\115\032\101\115\116\105\109\097\116\101\100'))or aM('\110\u{e3}\111\032\111\098\115\101\114\118\097\100\111',
'\110\111\116\032\111\098\115\101\114\118\101\100'))cm[#cm+1]=aH.displayName(cB.enemy)..'\058\032'..cC end end a0.Text=
table.concat(cm,'\032\124\032')local cA=(a3.farmMode=='\066\111\115\115'or a3.farmMode=='\077\105\120\101\100'and cz
[a3.bossId])and bx[a3.bossId]or(a3.farmMode=='\078\080\067'or a3.farmMode=='\077\105\120\101\100')and bx
[a3.npcId]or cn local cB=a3.farmMode=='\077\105\120\101\100'and'\078\080\067\115\032\043\032\066\111\115\115'or a3.farmMode bz.
Text=cB..'\032\u{b7}\032'..(cA and aH.displayName(cA.name)or aM('\083\101\109\032\097\108\118\111','\078\111\032\116\097\114\103\101\116'
))..'\032\u{b7}\032'..(cv and aM('\065\108\118\111\032\101\110\099\111\110\116\114\097\100\111','\084\097\114\103\101\116\032\102\111\117\110\100')or aM(
'\065\103\117\097\114\100\097\110\100\111\032\115\112\097\119\110\047\115\116\114\101\097\109\105\110\103\032\111\117\032\108\105\098\101\114\097\099\097\111\032\100\097\032\097\114\101\097',
'\087\097\105\116\105\110\103\032\102\111\114\032\115\112\097\119\110\047\115\116\114\101\097\109\105\110\103\032\111\114\032\097\114\101\097\032\117\110\108\111\099\107'))if not(cp and cq and cq.Health>0)
or ba.Opening.Playing then return end if a3.farm or a3.boss then if a3.farmMode
=='\077\105\120\101\100'and not cz[a3.bossId]then local cC=bx[a3.bossId]local cD=os.clock()if
cC and typeof(cC.cf)=='\067\070\114\097\109\101'and cD>=b0 and cD>=(bK[a3.bossId]or 0)then b0=cD+
20 b1=cD+2 cp.CFrame=cC.cf+Vector3.new(0,4,0)end if cD<b1 then bz.Text=aM(
'\086\101\114\105\102\105\099\097\110\100\111\032\115\112\097\119\110\032\100\111\032\098\111\115\115\046\046\046','\067\104\101\099\107\105\110\103\032\098\111\115\115\032\115\112\097\119\110\046\046\046')return end end if cu and
not cw and not cx and not cz[cu.id]and not(a3.farmMode=='\077\105\120\101\100'and cz[a3.bossId]
)and typeof(cu.cf)=='\067\070\114\097\109\101'then local cC=cu.cf+Vector3.new(0,4,0)if(cp.Position
-cC.Position).Magnitude>15 then cp.CFrame=cC end return end if cv then local cC=
cp.Position-cv.Position if cC.Magnitude>10 then local cD=cv.Position+(cC.
Magnitude>0 and cC.Unit or Vector3.new(0,0,1))*7 cp.CFrame=CFrame.lookAt(cD,cv.
Position)end else local cC=a3.farmMode=='\066\111\115\115'and bx[a3.bossId]or(a3.farmMode==
'\078\080\067'or a3.farmMode=='\077\105\120\101\100')and bx[a3.npcId]or a3.progress and cn if cu then cC
=cu end if cC and typeof(cC.cf)=='\067\070\114\097\109\101'and(a3.farmMode~='\065\117\116\111'or a3.boost or
cC.level<=cs)then local cD=cC.cf.Position+Vector3.new(0,4,0)if(cp.Position-cD).
Magnitude>15 then cp.CFrame=CFrame.new(cD)end end end end if a3.abilities and cv
and os.clock()-b_>0.6 and not aQ:GetFocusedTextBox()then b_=os.clock()local cC=
ba.Ability.Loadout(ck)if#cC>0 then bZ=(bZ-1)%#cC+1 local cD=ba.Ability.Keys[bZ]
if cD then local cE=game:GetService('\086\105\114\116\117\097\108\073\110\112\117\116\077\097\110\097\103\101\114')cE:SendKeyEvent(true,
cD,false,game)cE:SendKeyEvent(false,cD,false,game)end bZ=bZ+1 end end end local
ck,cl,cm=false,false,-1 bL=function()if not aS or ck then return end ck=true
task.delay(math.max(0,0.05-(os.clock()-cm)),function()ck=false if not aS then
return end if cl then bL()return end cl=true cm=os.clock()local cn,co=pcall(cj)
cl=false if not cn then a2(co)end end)end local cn,co local function cp(cq)if cn
==cq then return end if co then co:Disconnect()end cn=cq if not cq then return
end co=cq.DescendantAdded:Connect(function(cr)local cs=cr while cs and cs.Parent
~=cq do cs=cs.Parent end if cs and(cr==cs or cr.Name=='\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116'or cr:
IsA('\072\117\109\097\110\111\105\100'))and cs:IsA('\077\111\100\101\108')and cs:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')and
cs:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')then bM[cs]=os.clock()bL()end end)aT[#aT+1]=
co end cp(bI)a8(workspace.ChildAdded,function(cq)if cq.Name=='\069\110\101\109\105\101\115'then cp(cq
)bL()end end)task.spawn(function()while aS do bL()task.wait(0.15)end end)aY=aY+1
local cq=aK.button(aL,aM('\080\097\114\097\114\032\116\111\100\097\115\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115',
'\083\116\111\112\032\097\108\108\032\097\117\116\111\109\097\116\105\111\110'),aY)a8(cq.Activated,function()for cr,cs in pairs(a3)do if
type(cs)=='\098\111\111\108\101\097\110'then a3[cr]=false end end pcall(aW)bk=false local cr=aR.
Character local cs=cr and cr:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local ct=cr and cr
:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if cs and ct then cs:MoveTo(ct.Position)end
for cu,cv in ipairs(bp)do cv()end a2(aM('\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\114\097\100\097\115\046',
'\065\117\116\111\109\097\116\105\111\110\032\115\116\111\112\112\101\100\046'))end)aY=aY+1 local cr=aK.button(aL,aM(
'\069\120\112\111\114\116\097\114\032\100\105\097\103\110\u{f3}\115\116\105\099\111\032\100\101\032\116\101\115\116\101','\069\120\112\111\114\116\032\116\101\115\116\032\100\105\097\103\110\111\115\116\105\099\115'),aY)a8(cr.
Activated,function()if type(writefile)=='\102\117\110\099\116\105\111\110'then local cs=
'\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095\084\101\115\116\095'..os.time()..'\046\106\115\111\110'local ct,cu=pcall(writefile,cs,aP:
JSONEncode({placeId=game.PlaceId,version=game.PlaceVersion,log=a1,config=a3,
patches=bn,pending=bO}))a2(ct and cs or tostring(cu))end end)a2(aM(
'\080\114\111\110\116\111\032\112\097\114\097\032\116\101\115\116\101\046\032\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\100\101\115\108\105\103\097\100\097\115\046',
'\082\101\097\100\121\032\102\111\114\032\116\101\115\116\105\110\103\046\032\065\117\116\111\109\097\116\105\111\110\032\105\115\032\111\102\102\046'))return aX end end)()local aI,aJ,aK=
false,nil,false local aL=task.spawn(function()aI,aJ=pcall(aH,{ui=Q,page=P('\070\097\114\109'
),T=function(aL,aM)return d.language=='\112\116'and aL or aM end,progress=aG,attach=
function(aL)l=aL end,section=P,quick=function(aL)m=aL end})aK=true end)local aM=
os.clock()+45 while n and not aK and os.clock()<aM do task.wait(0.05)end if not
aK then pcall(task.cancel,aL)aI=false aJ=r(
'\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\052\053\032\115\101\103\117\110\100\111\115\032\101\120\099\101\100\105\100\111\046\032\u{da}\108\116\105\109\097\032\101\116\097\112\097\058\032',
'\052\053\045\115\101\099\111\110\100\032\116\105\109\101\111\117\116\046\032\076\097\115\116\032\115\116\097\103\101\058\032')..au.Text end if not n then return end if not
aI then if l then pcall(l)l=nil end at.Text=r(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\099\097\114\114\101\103\097\114\032\097\115\032\102\117\110\u{e7}\u{f5}\101\115',
'\067\111\117\108\100\032\110\111\116\032\108\111\097\100\032\116\104\101\032\102\101\097\116\117\114\101\115')au.Text=r(
'\070\101\099\104\101\032\111\032\112\097\105\110\101\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046\032\068\101\116\097\108\104\101\115\058\032',
'\067\108\111\115\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\116\114\121\032\097\103\097\105\110\046\032\068\101\116\097\105\108\115\058\032')..tostring(aJ)ay.Text=r(
'\067\097\114\114\101\103\097\109\101\110\116\111\032\105\110\116\101\114\114\111\109\112\105\100\111','\076\111\097\100\105\110\103\032\105\110\116\101\114\114\117\112\116\101\100')d.ready()return end local
function aN(aO,aP)local aQ,aR,aS=false,false,nil local aT=task.spawn(function()
aR,aS=pcall(aO)aQ=true end)local aU=os.clock()+aP while n and not aQ and os.
clock()<aU do task.wait(0.05)end if not aQ then pcall(task.cancel,aT)return
false,r('\084\101\109\112\111\032\108\105\109\105\116\101\032\101\120\099\101\100\105\100\111','\084\105\109\101\032\108\105\109\105\116\032\101\120\099\101\101\100\101\100')end return aR,aS end aG(
0.92,'\077\111\110\116\097\110\100\111\032\111\115\032\097\106\117\115\116\101\115\032\100\101\032\116\101\108\097\u{2026}','\066\117\105\108\100\105\110\103\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\u{2026}')
local aO local aP,aQ=aN(function()local aP=P('\065\106\117\115\116\101\115')ac(aP)local aQ=Q.button(
aP,r('\u{1f1e7}\u{1f1f7}\032\032\073\100\105\111\109\097\058\032\080\111\114\116\117\103\117\u{ea}\115\032\032\u{b7}\032\032\065\108\116\101\114\097\114',
'\u{1f1fa}\u{1f1f8}\032\032\076\097\110\103\117\097\103\101\058\032\069\110\103\108\105\115\104\032\032\u{b7}\032\032\067\104\097\110\103\101'),870)t(aQ.Activated,
function()if type(d.chooseLanguage)=='\102\117\110\099\116\105\111\110'then d.chooseLanguage()end end)Q.
label(aP,'\084\101\120\116\076\097\098\101\108',r(
'\084\114\111\099\097\114\032\111\032\105\100\105\111\109\097\032\114\101\097\098\114\101\032\111\032\112\097\105\110\101\108\032\099\111\109\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\117\115\097\100\097\115\046',
'\067\104\097\110\103\105\110\103\032\108\097\110\103\117\097\103\101\032\114\101\111\112\101\110\115\032\116\104\101\032\112\097\110\101\108\032\119\105\116\104\032\097\117\116\111\109\097\116\105\111\110\032\112\097\117\115\101\100\046'),44,871)Q.label(aP
,'\084\101\120\116\076\097\098\101\108',d.language=='\112\116'and
"\084\111\113\117\101\032\065\058\032\097\098\114\105\114\047\102\101\099\104\097\114\046\032\083\101\103\117\114\101\032\048\044\054\053\115\032\101\032\115\111\108\116\101\058\032\097\108\116\101\114\110\097\114\032\112\114\111\103\114\101\115\115\097\111\046\032\065\114\114\097\115\116\101\058\032\109\111\118\101\114\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\105\110\101\108\046"
or
"\084\097\112\032\065\058\032\116\111\103\103\108\101\032\112\097\110\101\108\046\032\072\111\108\100\032\048\046\054\053\115\032\097\110\100\032\114\101\108\101\097\115\101\058\032\116\111\103\103\108\101\032\112\114\111\103\114\101\115\115\105\111\110\046\032\068\114\097\103\058\032\109\111\118\101\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\110\101\108\046"
,68,900)local aR=Q.label(aP,'\084\101\120\116\066\111\120','\069\066\065\053\070\070',40,902)aR.ClearTextOnFocus=false
Q.label(aP,'\084\101\120\116\076\097\098\101\108',d.language=='\112\116'and
'\067\111\114\032\100\101\032\100\101\115\116\097\113\117\101\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\120\046\058\032\070\070\067\065\052\050\041'or
'\065\099\099\101\110\116\032\099\111\108\111\114\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\046\103\046\032\070\070\067\065\052\050\041',30,901)local aS=
'\065\110\111\110\072\117\098\095\083\117\112\101\114\112\111\119\101\114\095\084\104\101\109\101\046\106\115\111\110'local aT='\083\117\112\101\114\112\111\119\101\114'local aU={Superpower={
'\048\067\048\067\049\048','\050\055\049\056\051\053','\057\054\051\067\068\067','\070\070\070\053\070\070','\067\065\066\052\068\056','\069\066\065\053\070\070','\049\057\048\070\050\051'},Potato={'\050\051\049\070\049\057'
,'\052\049\051\054\050\055','\055\052\053\056\051\049','\070\067\070\054\069\050','\068\053\067\051\065\051','\069\066\065\053\070\070','\051\048\050\055\049\068'},Bloodmoon={'\049\055\048\067\049\051',
'\051\048\049\051\049\070','\054\066\050\054\051\068','\070\070\069\065\070\048','\068\050\065\048\066\048','\070\070\052\053\054\056','\050\051\048\070\049\065'},Midnight={'\049\048\049\051\049\069',
'\049\068\050\052\051\054','\051\053\052\054\054\053','\069\068\070\051\070\070','\065\052\066\051\067\067','\055\051\057\070\070\070','\049\053\049\066\050\065'},Emerald={'\048\066\049\057\049\054',
'\049\052\050\069\050\054','\050\066\053\057\052\055','\069\054\070\070\070\051','\057\069\067\054\066\051','\053\054\068\068\065\048','\049\048\050\052\049\069'},Arctic={'\049\049\049\066\050\054','\049\067\050\068\051\068'
,'\051\054\053\049\054\065','\069\066\070\056\070\070','\065\057\067\055\068\065','\055\057\068\057\070\070','\049\055\050\051\051\049'}}local function aV(aW)return
Color3.fromRGB(tonumber(aW:sub(1,2),16),tonumber(aW:sub(3,4),16),tonumber(aW:
sub(5,6),16))end local function aW()if type(writefile)=='\102\117\110\099\116\105\111\110'then task.
spawn(function()pcall(writefile,aS,g:JSONEncode({preset=aT,hex=aR.Text}))end)end
end local function aX(aY)if type(aY)~='\115\116\114\105\110\103'or not aY:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')
then return false end q=Color3.fromRGB(tonumber(aY:sub(1,2),16),tonumber(aY:sub(
3,4),16),tonumber(aY:sub(5,6),16))o.accent=q H.BackgroundColor3=q B.
BackgroundColor3=q O(L)for aZ,a_ in ipairs(R)do a_()end for aZ,a_ in pairs(J)do
a_.ScrollBarImageColor3=q end aR.Text=aY return true end local function aY(aZ)
local a_=aU[aZ]if not a_ then return end aT=aZ for a0,a1 in ipairs({'\100\097\114\107',
'\116\105\108\101','\101\100\103\101','\116\101\120\116','\109\117\116\101\100','\097\099\099\101\110\116','\115\105\100\101\098\097\114'})do o[a1]=aV(a_[a0])end q=o.
accent for a0,a1 in pairs(p)do if a0.Parent then for a2,a3 in pairs(a1)do a0[a2]
=o[a3]end end end local a0=y:FindFirstChildOfClass('\085\073\071\114\097\100\105\101\110\116')if a0 then a0.
Color=ColorSequence.new(o.tile,o.dark)end aX(a_[6])end Q.label(aP,'\084\101\120\116\076\097\098\101\108',r(
'\084\069\077\065\083\032\080\082\079\078\084\079\083','\084\072\069\077\069\032\080\082\069\083\069\084\083'),32,880)for aZ,a_ in ipairs({'\083\117\112\101\114\112\111\119\101\114',
'\080\111\116\097\116\111','\066\108\111\111\100\109\111\111\110','\077\105\100\110\105\103\104\116','\069\109\101\114\097\108\100','\065\114\099\116\105\099'})do local a0=Q.button(aP,a_,
880+aZ)t(a0.Activated,function()aY(a_)aW()end)end aO=function()if type(readfile)
=='\102\117\110\099\116\105\111\110'then local aZ=readfile(aS)if type(aZ)=='\115\116\114\105\110\103'and#aZ<=2048 then
local a_=g:JSONDecode(aZ)if n and aR.Parent and type(a_)=='\116\097\098\108\101'then if aU[a_.
preset]then aY(a_.preset)end aX(a_.hex)end end end end t(aR.FocusLost,function()
local aZ=aR.Text:gsub('\035',''):upper()if aX(aZ)then aW()end end)end,5)if not n
then return end aG(0.96,'\065\106\117\115\116\097\110\100\111\032\111\032\112\097\105\110\101\108\032\u{e0}\032\115\117\097\032\116\101\108\097\u{2026}',
'\070\105\116\116\105\110\103\032\116\104\101\032\112\097\110\101\108\032\116\111\032\121\111\117\114\032\115\099\114\101\101\110\u{2026}')local aR,aS=pcall(Y)if not aR then U=
table.clone(T)pcall(Y)end local aT if not aP or not aR then aT=r(
'\065\106\117\115\116\101\115\032\118\105\115\117\097\105\115\032\105\110\099\111\109\112\108\101\116\111\115\058\032','\083\111\109\101\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\032\102\097\105\108\101\100\058\032')..tostring(aQ
or aS)G.Text=aT warn('\091\065\110\111\110\072\117\098\032'..b..'\093\032'..aT)end aG(1,
'\080\097\105\110\101\108\032\112\114\111\110\116\111\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\101\115\116\u{e3}\111\032\112\097\117\115\097\100\097\115\046',
'\080\097\110\101\108\032\114\101\097\100\121\046\032\070\101\097\116\117\114\101\115\032\097\114\101\032\112\097\117\115\101\100\046')at.Text=r('\083\101\117\032\112\097\105\110\101\108\032\101\115\116\u{e1}\032\112\114\111\110\116\111',
'\089\111\117\114\032\112\097\110\101\108\032\105\115\032\114\101\097\100\121')ao=true if aq()then ar:Destroy()else task.spawn(function()
while n and ar.Parent and not aq()do task.wait(0.05)end if n and ar.Parent then
ar:Destroy()end end)end pcall(d.ready)if aO then task.defer(function()aN(aO,2)
end)end end a['\112\111\116\097\116\111\047\099\104\097\112\116\101\114\050\046\108\117\097']=function(...)local aa=...if type(aa)~=
'\116\097\098\108\101'or type(aa.access)~='\116\097\098\108\101'then return end local ab={['\073\110\105\099\105\111']='\072\111\109\101',[
'\067\111\108\101\116\097']='\067\111\108\108\101\099\116',['\067\111\114\116\101']='\067\117\116',['\086\101\110\100\097\115']='\083\097\108\101\115',['\082\101\115\102\114\105\097\114']='\067\111\111\108\105\110\103',[
'\067\111\109\112\114\097\115']='\083\104\111\112',['\077\105\115\115\111\101\115']='\081\117\101\115\116\115',['\065\106\117\115\116\101\115']='\083\101\116\116\105\110\103\115',['\086\105\115\097\111\032\103\101\114\097\108']=
'\079\118\101\114\118\105\101\119',['\067\111\108\101\116\097\032\101\032\097\108\118\111\115']='\067\111\108\108\101\099\116\105\111\110\032\097\110\100\032\116\097\114\103\101\116\115',['\077\101\115\097\032\100\101\032\099\111\114\116\101']=
'\067\117\116\116\105\110\103\032\116\097\098\108\101',['\067\111\110\116\114\111\108\101\032\100\101\032\099\097\108\111\114']='\072\101\097\116\032\099\111\110\116\114\111\108',['\069\113\117\105\112\097\109\101\110\116\111\115']=
'\069\113\117\105\112\109\101\110\116',['\080\114\101\102\101\114\101\110\099\105\097\115']='\080\114\101\102\101\114\101\110\099\101\115',['\077\105\115\115\111\101\115\032\101\032\112\097\115\115\101']='\081\117\101\115\116\115\032\097\110\100\032\112\097\115\115'
,['\073\078\073\067\073\079']='\072\079\077\069',['\067\079\076\069\084\065']='\067\079\076\076\069\067\084',['\067\079\082\084\069']='\067\085\084',['\086\069\078\068\069\082']='\083\069\076\076',[
'\065\071\085\065']='\067\079\079\076',['\076\079\074\065']='\083\072\079\080',['\077\073\083\083\079\069\083']='\081\085\069\083\084\083',['\065\074\085\083\084\069']='\083\069\084\084\073\078\071\083',[
'\073\068\073\079\077\065']='\076\065\078\071\085\065\071\069',['\067\111\110\116\097']='\065\099\099\111\117\110\116',['\080\065\085\083\065\082\032\084\085\068\079']='\080\065\085\083\069\032\065\076\076',['\079\067\085\076\084\065\082']
='\072\073\068\069',['\082\069\067\085\080\069\082\065\082']='\082\069\083\084\079\082\069',['\067\065\080\u{cd}\084\085\076\079\032\073\073\032\047\032\065\078\079\078\072\085\066']=
'\067\072\065\080\084\069\082\032\073\073\032\047\032\065\078\079\078\072\085\066',['\u{2261}\032\032\032\065\082\082\065\083\084\069\032\080\065\082\065\032\077\079\086\069\082']=
'\u{2261}\032\032\032\068\082\065\071\032\084\079\032\077\079\086\069',['\069\078\067\069\082\082\065\082\032\072\085\066']='\067\076\079\083\069\032\072\085\066',['\083\065\076\086\065\082']='\083\065\086\069',[
'\080\065\085\083\065\082']='\080\065\085\083\069',['\083\097\108\118\097\114']='\083\097\118\101',['\080\097\117\115\097\114']='\080\097\117\115\101',['\073\110\105\099\105\097\108\105\122\097\110\100\111\046\046\046']=
'\083\116\097\114\116\105\110\103\u{2026}',['\080\114\111\110\116\111\046']='\082\101\097\100\121\046',[
'\u{2261}\032\032\032\065\078\079\078\072\085\066\032\047\032\080\079\084\065\084\079\032\032\032\u{b7}\032\032\032\065\082\082\065\083\084\069']=
'\u{2261}\032\032\032\065\078\079\078\072\085\066\032\047\032\080\079\084\065\084\079\032\032\032\u{b7}\032\032\032\068\082\065\071',['\066\065\082\082\065\032\068\069\032\070\069\082\082\065\077\069\078\084\065\083\032\068\079\032\074\079\071\079']=
'\071\065\077\069\032\084\079\079\076\066\065\082',[
"\085\115\101\032\115\111\109\101\110\116\101\032\115\101\032\115\117\109\105\114\101\109\032\097\032\109\097\111\044\032\097\032\112\097\044\032\097\032\100\105\110\097\109\105\116\101\032\111\117\032\111\115\032\112\114\111\109\112\116\115\032\100\111\032\106\111\103\111\046" ]=
"\085\115\101\032\105\102\032\116\104\101\032\103\097\109\101\039\115\032\116\111\111\108\115\032\111\114\032\105\110\116\101\114\097\099\116\105\111\110\032\112\114\111\109\112\116\115\032\100\105\115\097\112\112\101\097\114\046",[
'\082\069\067\085\080\069\082\065\082\032\077\065\079\044\032\080\065\032\069\032\070\069\082\082\065\077\069\078\084\065\083']='\082\069\083\084\079\082\069\032\084\079\079\076\083',[
'\082\101\099\117\112\101\114\097\114\032\097\111\032\105\110\105\099\105\097\114\032\101\032\114\101\110\097\115\099\101\114']='\082\101\115\116\111\114\101\032\111\110\032\108\097\117\110\099\104\032\097\110\100\032\114\101\115\112\097\119\110',[
"\065\032\105\110\116\101\114\102\097\099\101\032\101\032\114\101\115\116\097\117\114\097\100\097\059\032\097\115\032\114\111\116\105\110\097\115\032\099\111\110\116\105\110\117\097\109\032\112\097\117\115\097\100\097\115\032\100\101\112\111\105\115\032\100\101\032\109\111\114\114\101\114\046" ]=
"\082\101\115\116\111\114\101\115\032\116\104\101\032\105\110\116\101\114\102\097\099\101\032\097\110\100\032\107\101\101\112\115\032\114\111\117\116\105\110\101\115\032\112\097\117\115\101\100\032\097\102\116\101\114\032\097\032\114\101\115\112\097\119\110\046",[
'\078\101\110\104\117\109\097\032\114\101\099\117\112\101\114\097\099\097\111\032\115\111\108\105\099\105\116\097\100\097\032\110\101\115\116\097\032\115\101\115\115\097\111\046']=
'\078\111\032\114\101\115\116\111\114\097\116\105\111\110\032\114\101\113\117\101\115\116\101\100\032\105\110\032\116\104\105\115\032\115\101\115\115\105\111\110\046',[
'\065\108\103\117\110\115\032\099\111\110\116\114\111\108\101\115\032\097\105\110\100\097\032\110\u{e3}\111\032\101\115\116\u{e3}\111\032\100\105\115\112\111\110\u{ed}\118\101\105\115\046']=
'\083\111\109\101\032\099\111\110\116\114\111\108\115\032\097\114\101\032\115\116\105\108\108\032\117\110\097\118\097\105\108\097\098\108\101\046',['\067\111\110\116\114\111\108\101\115\032\114\101\115\116\097\117\114\097\100\111\115\046']=
'\067\111\110\116\114\111\108\115\032\114\101\115\116\111\114\101\100\046',['\077\079\068\079\083\032\047\032\067\065\080\073\084\085\076\079\032\073\073']='\077\079\068\069\083\032\047\032\067\072\065\080\084\069\082\032\073\073',[
"\079\080\058\032\115\117\103\097\100\111\114\032\077\065\088\044\032\099\111\108\101\116\097\032\116\111\116\097\108\044\032\099\111\114\116\101\032\101\032\115\097\105\100\097\046\032\065\117\116\111\032\080\114\111\103\114\101\115\115\058\032\099\105\099\108\111\032\110\111\114\109\097\108\046" ]
=
"\079\080\032\117\115\101\115\032\097\032\109\097\120\101\100\032\118\097\099\117\117\109\032\116\111\032\099\108\101\097\114\032\116\104\101\032\112\105\108\101\044\032\099\117\116\032\097\110\100\032\101\120\105\116\046\032\065\117\116\111\032\080\114\111\103\114\101\115\115\032\114\117\110\115\032\116\104\101\032\115\116\097\110\100\097\114\100\032\099\121\099\108\101\046"
,['\080\065\085\083\065\082\032\080\082\079\071\082\069\083\083']='\080\065\085\083\069\032\065\085\084\079\032\080\082\079\071\082\069\083\083',['\065\084\073\086\065\082\032\079\080']='\083\084\065\082\084\032\079\080',['\080\065\085\083\065\082\032\079\080'
]='\080\065\085\083\069\032\079\080',['\077\079\068\079\032\032\u{2022}\032\032\080\065\085\083\065\068\079']='\077\079\068\069\032\032\u{2022}\032\032\080\065\085\083\069\068',[
'\077\079\068\079\032\032\u{2022}\032\032\067\079\078\067\076\085\073\068\079']='\077\079\068\069\032\032\u{2022}\032\032\067\079\077\080\076\069\084\069',[
'\077\079\068\079\032\032\u{2022}\032\032\079\080\032\065\084\073\086\079\032\032\047\032\032']='\077\079\068\069\032\032\u{2022}\032\032\079\080\032\065\067\084\073\086\069\032\032\047\032\032',[
'\077\079\068\079\032\032\u{2022}\032\032\065\085\084\079\032\080\082\079\071\082\069\083\083']='\077\079\068\069\032\032\u{2022}\032\032\065\085\084\079\032\080\082\079\071\082\069\083\083',[
'\077\079\068\079\032\032\u{2022}\032\032\080\065\085\083\065\068\079\032\047\032\082\079\084\073\078\065\083\032\077\065\078\085\065\073\083']=
'\077\079\068\069\032\032\u{2022}\032\032\080\065\085\083\069\068\032\047\032\077\065\078\085\065\076\032\082\079\085\084\073\078\069\083',['\080\069\082\070\073\076\032\068\065\032\080\065\082\084\073\068\065']='\077\065\084\067\072\032\080\082\079\070\073\076\069'
,['\084\105\112\111\032\100\101\032\103\114\117\112\111']='\071\114\111\117\112\032\116\121\112\101',['\067\111\109\032\111\032\104\117\098']='\072\117\098\032\116\101\097\109',['\071\114\117\112\111\032\109\105\115\116\111']=
'\077\105\120\101\100\032\103\114\111\117\112',['\067\111\110\116\097\115\032\099\111\109\032\111\032\104\117\098']='\065\099\099\111\117\110\116\115\032\117\115\105\110\103\032\116\104\101\032\104\117\098',['\050\032\099\111\110\116\097\115']=
'\050\032\097\099\099\111\117\110\116\115',['\051\032\099\111\110\116\097\115']='\051\032\097\099\099\111\117\110\116\115',['\052\032\099\111\110\116\097\115']='\052\032\097\099\099\111\117\110\116\115',['\083\101\117\032\112\097\112\101\108']=
'\089\111\117\114\032\114\111\108\101',['\076\105\100\101\114\032\079\080']='\079\080\032\108\101\097\100\101\114',['\067\111\108\101\116\097\114']='\067\111\108\108\101\099\116',['\067\111\114\116\097\114\032\101\032\118\101\110\100\101\114']=
'\067\117\116\032\097\110\100\032\115\101\108\108',['\083\117\097\032\109\101\115\097']='\089\111\117\114\032\116\097\098\108\101',['\077\101\115\097']='\084\097\098\108\101',['\077\101\115\097\032\049']='\084\097\098\108\101\032\049',[
'\077\101\115\097\032\050']='\084\097\098\108\101\032\050',['\077\101\115\097\032\051']='\084\097\098\108\101\032\051',['\077\101\115\097\032\052']='\084\097\098\108\101\032\052',['\073\078\073\067\073\065\082\032\080\069\082\070\073\076']
='\083\084\065\082\084\032\080\082\079\070\073\076\069',['\049\032\108\105\100\101\114\032\079\080\032\101\032\049\032\110\111\032\099\111\114\116\101\047\118\101\110\100\097\046']=
'\049\032\079\080\032\108\101\097\100\101\114\032\097\110\100\032\049\032\112\108\097\121\101\114\032\099\117\116\116\105\110\103\032\097\110\100\032\115\101\108\108\105\110\103\046',[
'\049\032\108\105\100\101\114\032\079\080\044\032\049\032\110\097\032\099\111\108\101\116\097\032\101\032\049\032\110\111\032\099\111\114\116\101\047\118\101\110\100\097\046']=
'\049\032\079\080\032\108\101\097\100\101\114\044\032\049\032\099\111\108\108\101\099\116\111\114\032\097\110\100\032\049\032\112\108\097\121\101\114\032\099\117\116\116\105\110\103\032\097\110\100\032\115\101\108\108\105\110\103\046',[
'\049\032\108\105\100\101\114\032\079\080\044\032\049\032\110\097\032\099\111\108\101\116\097\032\101\032\050\032\110\111\032\099\111\114\116\101\047\118\101\110\100\097\046']=
'\049\032\079\080\032\108\101\097\100\101\114\044\032\049\032\099\111\108\108\101\099\116\111\114\032\097\110\100\032\050\032\112\108\097\121\101\114\115\032\099\117\116\116\105\110\103\032\097\110\100\032\115\101\108\108\105\110\103\046',[
"\032\085\115\101\109\032\109\101\115\097\115\032\100\105\102\101\114\101\110\116\101\115\046\032\086\101\110\100\097\032\112\097\103\097\032\097\032\101\113\117\105\112\101\046\032\067\111\114\116\101\032\101\032\101\113\117\105\112\097\109\101\110\116\111\115\032\115\097\111\032\105\110\100\105\118\105\100\117\097\105\115\046"
]=
"\032\085\115\101\032\100\105\102\102\101\114\101\110\116\032\116\097\098\108\101\115\046\032\084\104\101\032\116\101\097\109\032\115\104\097\114\101\115\032\115\097\108\101\115\046\032\067\117\116\116\105\110\103\032\097\110\100\032\101\113\117\105\112\109\101\110\116\032\097\114\101\032\105\110\100\105\118\105\100\117\097\108\046"
,[
"\065\112\111\105\111\032\099\111\109\032\099\111\114\116\101\032\110\097\116\105\118\111\044\032\118\101\110\100\097\115\032\101\032\099\097\109\105\110\104\097\100\097\046\032\067\111\109\112\114\097\032\102\097\099\097\115\032\101\032\097\116\101\032\100\111\105\115\032\110\105\118\101\105\115\032\100\111\032\117\112\103\114\097\100\101\032\100\101\032\118\101\108\111\099\105\100\097\100\101\032\100\111\032\106\111\103\111\046"
]=
"\083\117\112\112\111\114\116\115\032\116\104\101\032\116\101\097\109\032\098\121\032\099\117\116\116\105\110\103\044\032\115\101\108\108\105\110\103\032\097\110\100\032\119\097\108\107\105\110\103\046\032\066\117\121\115\032\107\110\105\118\101\115\032\097\110\100\032\117\112\032\116\111\032\116\119\111\032\115\112\101\101\100\032\117\112\103\114\097\100\101\115\046"
,[
"\082\101\099\111\109\101\110\100\097\100\111\058\032\079\080\046\032\085\109\097\032\099\111\110\116\097\032\102\105\110\097\110\099\105\097\032\097\115\032\102\101\114\114\097\109\101\110\116\097\115\044\032\108\105\109\112\097\032\097\032\109\111\110\116\097\110\104\097\044\032\099\111\114\116\097\032\111\032\101\115\116\111\113\117\101\032\101\032\117\115\097\032\097\032\099\104\097\118\101\046"
]=
"\082\101\099\111\109\109\101\110\100\101\100\058\032\079\080\046\032\079\110\101\032\097\099\099\111\117\110\116\032\102\117\110\100\115\032\116\111\111\108\115\044\032\099\108\101\097\114\115\032\116\104\101\032\112\105\108\101\044\032\099\117\116\115\032\116\104\101\032\115\116\111\099\107\032\097\110\100\032\117\115\101\115\032\116\104\101\032\107\101\121\046"
,['\083\069\085\032\069\081\085\073\080\065\077\069\078\084\079']='\089\079\085\082\032\069\081\085\073\080\077\069\078\084',[
"\078\105\118\101\105\115\032\108\105\100\111\115\032\100\111\032\106\111\103\111\046\032\077\065\088\032\097\112\097\114\101\099\101\032\115\111\109\101\110\116\101\032\099\111\109\032\116\111\100\111\115\032\111\115\032\110\105\118\101\105\115\032\099\111\110\102\105\114\109\097\100\111\115\046" ]
=
"\069\113\117\105\112\109\101\110\116\032\108\101\118\101\108\115\032\099\111\109\101\032\102\114\111\109\032\116\104\101\032\103\097\109\101\046\032\077\065\088\032\097\112\112\101\097\114\115\032\111\110\099\101\032\097\108\108\032\108\101\118\101\108\115\032\097\114\101\032\099\111\110\102\105\114\109\101\100\046"
,['\065\103\117\097\114\100\097\110\100\111\032\100\097\100\111\115']='\087\097\105\116\105\110\103\032\102\111\114\032\100\097\116\097',['\082\069\078\068\065']='\070\085\078\068',['\069\081\085\073\080\065\082']='\069\081\085\073\080',[
'\076\073\077\080\065\082']='\067\076\069\065\082',['\083\065\073\082']='\069\088\073\084',['\048\048\058\048\048\032\032\047\032\032\083\079\082\084\069\032\048']='\048\048\058\048\048\032\032\047\032\032\076\085\067\075\032\048',[
'\086\069\082\032\077\069\076\072\079\082\073\065\083']='\086\073\069\087\032\085\080\071\082\065\068\069\083',['\069\083\084\065\068\079\032\068\065\032\080\065\082\084\073\068\065']='\077\065\084\067\072\032\083\084\065\084\085\083',[
'\068\105\110\104\101\105\114\111\058\032\u{2014}\n\066\111\108\115\097\058\032\u{2014}\n\067\097\108\111\114\058\032\u{2014}\n\069\115\116\097\100\111\058\032\097\103\117\097\114\100\097\110\100\111']=
'\067\097\115\104\058\032\u{2014}\n\066\097\103\058\032\u{2014}\n\072\101\097\116\058\032\u{2014}\n\083\116\097\116\117\115\058\032\119\097\105\116\105\110\103',[
'\070\105\108\116\114\111\032\101\032\115\101\108\101\099\097\111']='\070\105\108\116\101\114\115\032\097\110\100\032\115\101\108\101\099\116\105\111\110',['\067\111\108\101\116\097\114\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101']=
'\065\117\116\111\032\099\111\108\108\101\099\116',['\069\110\116\114\101\103\097\114\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101']='\065\117\116\111\032\100\101\108\105\118\101\114',['\066\097\116\097\116\097\115']=
'\080\111\116\097\116\111\101\115',['\081\117\097\108\113\117\101\114']='\065\110\121',['\068\105\097\109\097\110\116\101']='\068\105\097\109\111\110\100',['\068\111\117\114\097\100\097']='\071\111\108\100\101\110',[
'\069\115\099\111\108\104\097']='\083\101\108\101\099\116\105\111\110',['\077\097\105\115\032\112\101\114\116\111']='\078\101\097\114\101\115\116',['\065\108\101\097\116\111\114\105\097']='\082\097\110\100\111\109',[
'\067\111\108\101\116\097\114\032\097\098\111\098\111\114\097\115']='\067\111\108\108\101\099\116\032\112\117\109\112\107\105\110\115',['\073\110\099\108\117\105\114\032\103\101\109\097\115\032\100\097\032\112\105\108\104\097']=
'\067\111\108\108\101\099\116\032\103\101\109\115\032\102\114\111\109\032\116\104\101\032\112\105\108\101',['\080\114\105\111\114\105\122\097\114\032\103\101\109\097\115']='\080\114\105\111\114\105\116\105\122\101\032\103\101\109\115',[
'\080\114\105\111\114\105\122\097\114\032\097\098\111\098\111\114\097\115']='\080\114\105\111\114\105\116\105\122\101\032\112\117\109\112\107\105\110\115',['\080\114\105\111\114\105\122\097\114\032\109\097\105\111\114\032\118\097\108\111\114']=
'\080\114\105\111\114\105\116\105\122\101\032\104\105\103\104\101\114\032\118\097\108\117\101',[
"\078\097\032\115\101\108\101\099\097\111\032\112\111\114\032\112\114\111\120\105\109\105\100\097\100\101\044\032\112\114\111\099\117\114\097\032\118\097\114\105\097\110\116\101\115\032\118\097\108\105\111\115\097\115\032\113\117\097\110\100\111\032\115\117\097\032\105\100\101\110\116\105\100\097\100\101\032\101\115\116\105\118\101\114\032\100\105\115\112\111\110\105\118\101\108\046"
]=
"\087\105\116\104\032\078\101\097\114\101\115\116\032\115\101\108\101\099\116\101\100\044\032\108\111\111\107\115\032\102\111\114\032\118\097\108\117\097\098\108\101\032\118\097\114\105\097\110\116\115\032\119\104\101\110\032\116\104\101\032\103\097\109\101\032\105\100\101\110\116\105\102\105\101\115\032\116\104\101\109\046"
,['\069\110\116\114\101\103\097\114\032\112\111\114']='\068\101\108\105\118\101\114\032\098\121',['\081\117\097\110\116\105\100\097\100\101']='\065\109\111\117\110\116',['\080\111\114\099\101\110\116\097\103\101\109']=
'\080\101\114\099\101\110\116\097\103\101',['\068\101\115\116\105\110\111']='\068\101\115\116\105\110\097\116\105\111\110',['\067\097\105\120\097']='\067\114\097\116\101',['\065\117\116\111\109\097\116\105\099\097']=
'\065\117\116\111\109\097\116\105\099',['\069\110\116\114\101\103\097\114\032\099\111\109\032\097\032\098\111\108\115\097\032\101\109']='\068\101\108\105\118\101\114\032\097\116\032\098\097\103\032\099\097\112\097\099\105\116\121',[
'\081\117\097\110\116\105\100\097\100\101\032\112\111\114\032\101\110\116\114\101\103\097']='\065\109\111\117\110\116\032\112\101\114\032\100\101\108\105\118\101\114\121',['\084\101\110\104\111\032\098\111\108\115\097\032\105\110\102\105\110\105\116\097']=
'\073\032\104\097\118\101\032\097\110\032\117\110\108\105\109\105\116\101\100\032\098\097\103',[
"\085\115\097\032\111\032\108\111\116\101\032\099\111\110\102\105\103\117\114\097\100\111\032\110\111\032\112\108\097\110\101\106\097\109\101\110\116\111\046\032\069\115\116\097\032\111\112\099\097\111\032\110\097\111\032\099\111\110\099\101\100\101\032\097\032\109\111\099\104\105\108\097\032\110\111\032\106\111\103\111\046"
]='\085\115\101\115\032\121\111\117\114\032\099\111\110\102\105\103\117\114\101\100\032\100\101\108\105\118\101\114\121\032\097\109\111\117\110\116\032\102\111\114\032\112\108\097\110\110\105\110\103\046',['\065\108\099\097\110\099\101\032\100\101\032\098\117\115\099\097']=
'\083\101\097\114\099\104\032\114\097\110\103\101',['\077\101\115\097\032\101\032\102\101\114\114\097\109\101\110\116\097\115']='\084\097\098\108\101\032\097\110\100\032\116\111\111\108\115',[
'\065\108\105\110\104\097\114\032\097\032\099\097\109\101\114\097\032\097\111\032\101\110\116\114\097\114\032\110\097\032\109\101\115\097']='\065\108\105\103\110\032\099\097\109\101\114\097\032\119\104\101\110\032\101\110\116\101\114\105\110\103\032\116\104\101\032\116\097\098\108\101',[
'\077\111\100\111\032\100\101\032\099\111\114\116\101']='\067\117\116\116\105\110\103\032\109\111\100\101',['\082\097\112\105\100\111']='\070\097\115\116',['\078\097\116\105\118\111']='\078\097\116\105\118\101',[
'\077\101\116\097\032\100\101\032\116\101\110\116\097\116\105\118\097\115\032\112\111\114\032\115\101\103\117\110\100\111']='\084\097\114\103\101\116\032\097\116\116\101\109\112\116\115\032\112\101\114\032\115\101\099\111\110\100',[
'\077\117\108\116\105\112\108\105\099\097\100\111\114\032\099\111\109\032\102\101\114\114\097\109\101\110\116\097\115']='\084\111\111\108\032\109\117\108\116\105\112\108\105\101\114',['\067\111\109\112\114\097\114\032\110\111\032\065\117\116\111\032\067\117\116']=
'\066\117\121\032\100\117\114\105\110\103\032\065\117\116\111\032\067\117\116',[
'\067\111\109\112\114\097\032\102\101\114\114\097\109\101\110\116\097\115\032\100\101\032\099\111\114\116\101\032\117\115\097\110\100\111\032\111\032\111\114\099\097\109\101\110\116\111\032\099\111\110\102\105\103\117\114\097\100\111\046']=
'\066\117\121\115\032\099\117\116\116\105\110\103\032\116\111\111\108\115\032\119\105\116\104\105\110\032\121\111\117\114\032\098\117\100\103\101\116\046',['\071\105\114\097\114\032\099\111\114\116\097\100\111\114\032\109\097\110\117\097\108']=
'\067\114\097\110\107\032\116\104\101\032\109\097\110\117\097\108\032\099\117\116\116\101\114',[
"\065\099\105\111\110\097\032\097\032\109\097\113\117\105\110\097\032\113\117\097\110\100\111\032\101\115\116\105\118\101\114\032\099\097\114\114\101\103\097\100\097\032\101\032\108\105\098\101\114\097\100\097\032\112\101\108\111\032\106\111\103\111\046" ]=
'\082\117\110\115\032\116\104\101\032\109\097\099\104\105\110\101\032\119\104\101\110\032\105\116\032\105\115\032\108\111\097\100\101\100\032\097\110\100\032\114\101\097\100\121\046',['\086\101\110\100\097\032\101\032\114\101\116\111\114\110\111']=
'\083\101\108\108\032\097\110\100\032\114\101\116\117\114\110',[
"\086\101\110\100\101\032\111\032\101\115\116\111\113\117\101\032\099\111\114\116\097\100\111\032\101\032\114\101\116\111\109\097\032\097\032\114\111\116\105\110\097\046\032\065\032\112\114\111\120\105\109\097\032\102\101\114\114\097\109\101\110\116\097\032\116\101\109\032\112\114\105\111\114\105\100\097\100\101\032\097\112\111\115\032\097\032\118\101\110\100\097\046"
]="\083\101\108\108\115\032\099\117\116\032\115\116\111\099\107\032\097\110\100\032\114\101\115\117\109\101\115\046\032\080\114\105\111\114\105\116\105\122\101\115\032\116\104\101\032\110\101\120\116\032\116\111\111\108\032\097\102\116\101\114\032\097\032\115\097\108\101\046",[
'\086\101\110\100\101\114\032\097\032\112\097\114\116\105\114\032\100\101']='\083\101\108\108\032\119\104\101\110\032\115\116\111\099\107\032\114\101\097\099\104\101\115',['\032\098\097\116\097\116\097\115']='\032\112\111\116\097\116\111\101\115',[
'\067\111\109\112\114\097\114\032\102\101\114\114\097\109\101\110\116\097\032\097\112\111\115\032\118\101\110\100\101\114']='\066\117\121\032\097\032\116\111\111\108\032\097\102\116\101\114\032\115\101\108\108\105\110\103',[
'\086\111\108\116\097\114\032\112\097\114\097\032\097\032\109\101\115\097']='\082\101\116\117\114\110\032\116\111\032\116\104\101\032\116\097\098\108\101',['\086\101\110\100\101\114\032\111\032\114\101\115\116\097\110\116\101\032\110\111\032\102\105\109']=
'\083\101\108\108\032\114\101\109\097\105\110\105\110\103\032\115\116\111\099\107\032\097\116\032\116\104\101\032\101\110\100',['\086\097\108\118\117\108\097\032\100\101\032\097\103\117\097']='\087\097\116\101\114\032\118\097\108\118\101',[
"\067\111\110\102\105\114\109\097\032\111\032\114\101\115\102\114\105\097\109\101\110\116\111\032\112\101\108\097\032\097\103\117\097\032\102\108\117\105\110\100\111\032\111\117\032\112\101\108\097\032\113\117\101\100\097\032\100\111\032\099\097\108\111\114\046" ]=
'\067\111\110\102\105\114\109\115\032\099\111\111\108\105\110\103\032\119\104\101\110\032\119\097\116\101\114\032\102\108\111\119\115\032\111\114\032\104\101\097\116\032\100\114\111\112\115\046',['\084\101\109\112\111\032\115\101\103\117\114\097\110\100\111\032\097\032\118\097\108\118\117\108\097']
='\086\097\108\118\101\032\104\111\108\100\032\116\105\109\101',['\082\101\112\101\116\105\114\032\100\117\114\097\099\097\111\032\111\114\105\103\105\110\097\108\032\115\101\032\110\101\099\101\115\115\097\114\105\111']=
'\082\101\116\114\121\032\119\105\116\104\032\116\104\101\032\111\114\105\103\105\110\097\108\032\104\111\108\100\032\116\105\109\101\032\105\102\032\110\101\101\100\101\100',[
"\083\101\032\111\032\116\111\113\117\101\032\099\117\114\116\111\032\110\097\111\032\114\101\115\102\114\105\097\114\044\032\112\101\114\109\105\116\101\032\117\109\097\032\116\101\110\116\097\116\105\118\097\032\099\111\109\032\111\032\116\101\109\112\111\032\111\114\105\103\105\110\097\108\032\100\111\032\106\111\103\111\046"
]="\082\101\116\114\105\101\115\032\119\105\116\104\032\116\104\101\032\100\101\102\097\117\108\116\032\103\097\109\101\032\100\117\114\097\116\105\111\110\032\105\102\032\097\032\115\104\111\114\116\032\104\111\108\100\032\102\097\105\108\115\046",[
'\067\111\109\101\099\097\114\032\097\032\114\101\115\102\114\105\097\114\032\101\109']='\083\116\097\114\116\032\099\111\111\108\105\110\103\032\097\116',['\067\111\110\115\105\100\101\114\097\114\032\102\114\105\111\032\101\109']=
'\083\116\111\112\032\099\111\111\108\105\110\103\032\097\116',['\069\115\112\101\114\097\032\101\110\116\114\101\032\116\101\110\116\097\116\105\118\097\115']='\082\101\116\114\121\032\100\101\108\097\121',[
'\086\111\108\116\097\114\032\097\111\032\112\111\110\116\111\032\097\110\116\101\114\105\111\114']='\082\101\116\117\114\110\032\116\111\032\116\104\101\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110',[
'\077\069\076\072\079\082\073\065\083\032\069\077\032\084\069\077\080\079\032\082\069\065\076']='\076\073\086\069\032\085\080\071\082\065\068\069\083',[
"\078\105\118\101\105\115\032\099\111\110\102\105\114\109\097\100\111\115\032\112\101\108\111\032\106\111\103\111\046\032\067\111\110\115\117\108\116\097\114\032\101\115\116\097\032\108\105\115\116\097\032\109\097\110\116\101\109\032\097\032\114\111\116\105\110\097\032\101\109\032\101\120\101\099\117\099\097\111\046"
]=
"\084\104\101\032\103\097\109\101\032\099\111\110\102\105\114\109\115\032\116\104\101\115\101\032\108\101\118\101\108\115\046\032\082\111\117\116\105\110\101\115\032\099\111\110\116\105\110\117\101\032\119\104\105\108\101\032\121\111\117\032\118\105\101\119\032\116\104\105\115\032\108\105\115\116\046",
['\065\103\117\097\114\100\097\110\100\111\032\110\105\118\101\105\115\046\046\046']='\087\097\105\116\105\110\103\032\102\111\114\032\117\112\103\114\097\100\101\032\108\101\118\101\108\115\u{2026}',['\086\101\108\111\099\105\100\097\100\101']=
'\083\112\101\101\100',['\067\111\108\101\116\097\032\099\111\110\116\105\110\117\097']='\067\111\110\116\105\110\117\111\117\115\032\099\111\108\108\101\099\116\105\111\110',['\067\097\114\103\097']='\067\104\097\114\103\101',[
'\082\101\115\102\114\105\097\109\101\110\116\111']='\067\111\111\108\105\110\103',['\086\097\108\111\114\032\100\097\032\098\097\116\097\116\097']='\080\111\116\097\116\111\032\118\097\108\117\101',['\086\101\108\111\099\105\100\097\100\101\032\097\032\112\101']
='\087\097\108\107\032\115\112\101\101\100',['\083\111\114\116\101']='\076\117\099\107',['\067\097\112\097\099\105\100\097\100\101']='\067\097\112\097\099\105\116\121',['\071\097\114\114\097']='\071\114\105\112',['\086\111\111'
]='\070\108\105\103\104\116',['\077\069\076\072\079\082\065\082']='\085\080\071\082\065\068\069',['\079\114\099\097\109\101\110\116\111']='\066\117\100\103\101\116',[
"\067\111\109\112\114\097\115\032\097\117\116\111\109\097\116\105\099\097\115\032\117\115\097\109\032\115\111\109\101\110\116\101\032\100\105\110\104\101\105\114\111\032\099\111\109\117\109\032\100\111\032\106\111\103\111\046\032\082\101\115\101\114\118\097\032\101\032\108\105\109\105\116\101\032\112\111\114\032\099\111\109\112\114\097\032\115\097\111\032\097\112\108\105\099\097\100\111\115\032\097\110\116\101\115\032\100\101\032\099\097\100\097\032\097\099\097\111\046"
]=
"\065\117\116\111\109\097\116\105\099\032\112\117\114\099\104\097\115\101\115\032\117\115\101\032\114\101\103\117\108\097\114\032\103\097\109\101\032\099\097\115\104\032\097\110\100\032\114\101\115\112\101\099\116\032\121\111\117\114\032\114\101\115\101\114\118\101\032\097\110\100\032\115\112\101\110\100\105\110\103\032\099\097\112\046"
,['\070\101\114\114\097\109\101\110\116\097\115']='\084\111\111\108\115',['\077\101\108\104\111\114\105\097\115']='\085\112\103\114\097\100\101\115',['\066\111\108\115\097\115\032\101\032\099\097\112\097\099\105\100\097\100\101']=
'\066\097\103\115\032\097\110\100\032\099\097\112\097\099\105\116\121',['\084\101\110\104\111\032\109\111\099\104\105\108\097\032\105\110\102\105\110\105\116\097']='\073\032\104\097\118\101\032\097\110\032\117\110\108\105\109\105\116\101\100\032\098\097\103',[
"\073\109\112\101\100\101\032\099\111\109\112\114\097\115\032\100\101\032\109\111\099\104\105\108\097\115\032\101\032\117\115\097\032\111\032\108\105\109\105\116\101\032\100\101\032\101\110\116\114\101\103\097\032\112\111\114\032\113\117\097\110\116\105\100\097\100\101\046" ]=
'\083\107\105\112\115\032\098\097\103\032\112\117\114\099\104\097\115\101\115\032\097\110\100\032\117\115\101\115\032\116\104\101\032\100\101\108\105\118\101\114\121\032\097\109\111\117\110\116\046',[
'\067\111\109\112\114\097\114\032\099\111\114\116\097\100\111\114\101\115\032\109\097\110\117\097\108\032\101\032\097\117\116\111\109\097\116\105\099\111']='\066\117\121\032\109\097\110\117\097\108\032\097\110\100\032\097\117\116\111\109\097\116\105\099\032\099\117\116\116\101\114\115',[
"\068\101\112\111\105\115\032\100\101\032\109\097\120\105\109\105\122\097\114\032\097\115\032\100\117\097\115\032\109\101\108\104\111\114\105\097\115\032\100\101\032\100\105\110\097\109\105\116\101\046\032\079\032\109\097\110\117\097\108\032\110\097\111\032\114\101\099\101\098\101\032\109\101\108\104\111\114\105\097\115\046"
]=
"\066\117\121\115\032\097\102\116\101\114\032\098\111\116\104\032\100\121\110\097\109\105\116\101\032\117\112\103\114\097\100\101\115\032\097\114\101\032\109\097\120\101\100\046\032\085\112\103\114\097\100\101\115\032\097\112\112\108\121\032\116\111\032\116\104\101\032\097\117\116\111\109\097\116\105\099\032\099\117\116\116\101\114\046"
,['\076\111\116\101\032\112\097\114\097\032\111\032\097\117\116\111\109\097\116\105\099\111\032\110\111\032\109\097\120\105\109\111']=
'\066\097\116\099\104\032\115\105\122\101\032\102\111\114\032\116\104\101\032\109\097\120\101\100\032\097\117\116\111\109\097\116\105\099\032\099\117\116\116\101\114',['\067\111\114\114\105\103\105\114\032\100\101\115\102\111\113\117\101\032\097\111\032\102\101\099\104\097\114\032\109\101\110\117\115'
]='\070\105\120\032\098\108\117\114\032\097\102\116\101\114\032\099\108\111\115\105\110\103\032\109\101\110\117\115',['\071\117\097\114\100\097\114\032\112\097\114\097\032\097\032\112\114\111\120\105\109\097\032\097\114\109\097']=
'\083\097\118\101\032\102\111\114\032\116\104\101\032\110\101\120\116\032\116\111\111\108',['\079\102\101\114\101\099\101\114\032\099\111\109\112\114\097\032\100\111\032\100\114\111\110\101\032\097\032\099\097\100\097\032\112\097\114\116\105\100\097']=
'\079\102\102\101\114\032\097\032\100\114\111\110\101\032\112\117\114\099\104\097\115\101\032\101\097\099\104\032\109\097\116\099\104',[
"\083\111\108\105\099\105\116\097\032\099\111\110\102\105\114\109\097\099\097\111\032\100\101\032\056\048\032\103\101\109\097\115\059\032\097\032\111\102\101\114\116\097\032\114\101\097\108\032\116\097\109\098\101\109\032\112\114\101\099\105\115\097\032\099\111\110\102\105\114\109\097\114\032\101\115\115\101\032\118\097\108\111\114\046"
]="\065\115\107\115\032\121\111\117\032\116\111\032\099\111\110\102\105\114\109\032\119\104\101\110\032\116\104\101\032\103\097\109\101\032\111\102\102\101\114\115\032\116\104\101\032\100\114\111\110\101\032\102\111\114\032\056\048\032\103\101\109\115\046",[
'\077\101\108\104\111\114\097\114\032\100\114\111\110\101\032\099\111\109\112\114\097\100\111']='\085\112\103\114\097\100\101\032\097\110\032\111\119\110\101\100\032\100\114\111\110\101',['\076\105\109\112\097\114\032\097\110\116\101\115\032\100\101\032\099\111\114\116\097\114']=
'\067\108\101\097\114\032\116\104\101\032\112\105\108\101\032\098\101\102\111\114\101\032\099\117\116\116\105\110\103',[
"\083\111\109\101\110\116\101\032\099\111\109\032\100\105\110\097\109\105\116\101\044\032\112\097\044\032\097\117\116\111\109\097\116\105\099\111\032\101\032\115\117\103\097\100\111\114\032\110\111\032\109\097\120\105\109\111\046\032\065\110\116\101\115\032\100\105\115\115\111\044\032\099\111\110\116\105\110\117\097\032\117\115\097\110\100\111\032\097\032\102\097\099\097\032\112\097\114\097\032\103\101\114\097\114\032\114\101\110\100\097\046"
]=
"\082\101\113\117\105\114\101\115\032\109\097\120\101\100\032\100\121\110\097\109\105\116\101\044\032\115\104\111\118\101\108\044\032\097\117\116\111\109\097\116\105\099\032\099\117\116\116\101\114\032\097\110\100\032\118\097\099\117\117\109\046\032\067\117\116\115\032\119\105\116\104\032\097\032\107\110\105\102\101\032\102\111\114\032\105\110\099\111\109\101\032\117\110\116\105\108\032\116\104\101\110\046"
,['\077\101\108\104\111\114\097\114\032\109\097\113\117\105\110\097\115\032\099\111\109\112\114\097\100\097\115']='\085\112\103\114\097\100\101\032\111\119\110\101\100\032\109\097\099\104\105\110\101\115',[
'\077\101\108\104\111\114\105\097\115\032\103\101\114\097\105\115\032\100\111\032\099\097\112\105\116\117\108\111\032\050']='\071\101\110\101\114\097\108\032\067\104\097\112\116\101\114\032\073\073\032\117\112\103\114\097\100\101\115',[
'\082\101\115\101\114\118\097\032\100\101\032\100\105\110\104\101\105\114\111']='\067\097\115\104\032\114\101\115\101\114\118\101',['\076\105\109\105\116\101\032\112\111\114\032\099\111\109\112\114\097\032\040\048\032\061\032\108\105\118\114\101\041']=
'\083\112\101\110\100\105\110\103\032\099\097\112\032\112\101\114\032\112\117\114\099\104\097\115\101\032\040\048\032\061\032\117\110\108\105\109\105\116\101\100\041',[
"\069\115\099\111\108\104\097\032\117\109\097\032\109\105\115\115\097\111\032\099\111\109\032\112\114\111\103\114\101\115\115\111\032\100\111\032\106\111\103\111\046\032\079\032\065\117\116\111\032\080\114\111\103\114\101\115\115\032\112\114\105\111\114\105\122\097\032\097\032\116\097\114\101\102\097\032\101\032\118\111\108\116\097\032\097\111\032\099\105\099\108\111\032\110\111\114\109\097\108\032\097\112\111\115\032\097\032\099\111\110\102\105\114\109\097\099\097\111\046"
]=
"\083\101\108\101\099\116\032\097\032\113\117\101\115\116\032\119\105\116\104\032\103\097\109\101\032\112\114\111\103\114\101\115\115\046\032\065\117\116\111\032\080\114\111\103\114\101\115\115\032\112\114\105\111\114\105\116\105\122\101\115\032\105\116\032\097\110\100\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\117\115\117\097\108\032\099\121\099\108\101\032\097\102\116\101\114\032\099\111\109\112\108\101\116\105\111\110\046"
,[ "\065\098\114\097\032\097\032\116\101\108\097\032\100\101\032\109\105\115\115\111\101\115\032\111\117\032\100\111\032\112\097\115\115\101\032\100\111\032\106\111\103\111\032\112\097\114\097\032\099\097\114\114\101\103\097\114\032\097\032\108\105\115\116\097\046" ]=
"\079\112\101\110\032\116\104\101\032\103\097\109\101\039\115\032\113\117\101\115\116\115\032\111\114\032\112\097\115\115\032\115\099\114\101\101\110\032\116\111\032\108\111\097\100\032\116\104\101\032\108\105\115\116\046",['\084\101\108\097\032\101\032\116\111\113\117\101']=
'\068\105\115\112\108\097\121\032\097\110\100\032\116\111\117\099\104',[
"\065\114\114\097\115\116\101\032\111\032\116\111\112\111\032\112\097\114\097\032\109\111\118\101\114\032\111\032\112\097\105\110\101\108\046\032\079\032\098\111\116\097\111\032\065\032\116\097\109\098\101\109\032\112\111\100\101\032\115\101\114\032\097\114\114\097\115\116\097\100\111\046\032\085\115\101\032\111\032\099\097\110\116\111\032\105\110\102\101\114\105\111\114\032\112\097\114\097\032\114\101\100\105\109\101\110\115\105\111\110\097\114\046"
]=
"\068\114\097\103\032\116\104\101\032\116\111\112\032\116\111\032\109\111\118\101\032\116\104\101\032\112\097\110\101\108\032\111\114\032\100\114\097\103\032\116\104\101\032\065\032\098\117\116\116\111\110\046\032\085\115\101\032\116\104\101\032\098\111\116\116\111\109\032\099\111\114\110\101\114\032\116\111\032\114\101\115\105\122\101\046"
,['\069\115\099\097\108\097\032\100\097\032\105\110\116\101\114\102\097\099\101']='\073\110\116\101\114\102\097\099\101\032\115\099\097\108\101',['\076\097\114\103\117\114\097\032\100\111\032\112\097\105\110\101\108']='\080\097\110\101\108\032\119\105\100\116\104',[
'\065\108\116\117\114\097\032\100\111\032\112\097\105\110\101\108']='\080\097\110\101\108\032\104\101\105\103\104\116',['\084\097\109\097\110\104\111\032\100\111\032\102\108\117\116\117\097\110\116\101']=
'\070\108\111\097\116\105\110\103\032\098\117\116\116\111\110\032\115\105\122\101',['\067\069\078\084\082\065\076\073\090\065\082\032\069\032\082\069\083\084\065\085\082\065\082\032\084\065\077\065\078\072\079']=
'\067\069\078\084\069\082\032\065\078\068\032\082\069\083\069\084\032\083\073\090\069',['\067\097\109\101\114\097']='\067\097\109\101\114\097',['\070\111\114\099\097\114\032\116\101\114\099\101\105\114\097\032\112\101\115\115\111\097']=
'\070\111\114\099\101\032\116\104\105\114\100\032\112\101\114\115\111\110',['\068\105\115\116\097\110\099\105\097\032\109\097\120\105\109\097\032\100\097\032\099\097\109\101\114\097']='\077\097\120\105\109\117\109\032\099\097\109\101\114\097\032\100\105\115\116\097\110\099\101',[
'\065\112\111\110\116\097\114\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\032\112\097\114\097\032\097\032\118\097\108\118\117\108\097']='\065\105\109\032\097\116\032\116\104\101\032\118\097\108\118\101\032\097\117\116\111\109\097\116\105\099\097\108\108\121',[
"\065\108\105\110\104\097\032\097\032\099\097\109\101\114\097\032\100\117\114\097\110\116\101\032\097\032\105\110\116\101\114\097\099\097\111\032\101\032\114\101\115\116\097\117\114\097\032\097\032\118\105\115\097\111\032\097\111\032\116\101\114\109\105\110\097\114\046" ]=
"\065\108\105\103\110\115\032\116\104\101\032\099\097\109\101\114\097\032\100\117\114\105\110\103\032\105\110\116\101\114\097\099\116\105\111\110\032\097\110\100\032\114\101\115\116\111\114\101\115\032\116\104\101\032\118\105\101\119\032\097\102\116\101\114\119\097\114\100\046",[
'\069\120\101\099\117\099\097\111']='\082\111\117\116\105\110\101\115',[
"\065\116\117\097\032\112\111\114\032\101\118\101\110\116\111\032\100\101\032\105\110\097\116\105\118\105\100\097\100\101\032\101\110\113\117\097\110\116\111\032\097\108\103\117\109\097\032\114\111\116\105\110\097\032\101\115\116\105\118\101\114\032\097\116\105\118\097\059\032\112\097\117\115\097\032\106\117\110\116\111\032\100\097\115\032\114\111\116\105\110\097\115\046"
]='\082\101\115\112\111\110\100\115\032\116\111\032\105\100\108\101\032\101\118\101\110\116\115\032\119\104\105\108\101\032\097\032\114\111\117\116\105\110\101\032\105\115\032\114\117\110\110\105\110\103\046',[
'\083\097\105\100\097\032\097\117\116\111\109\097\116\105\099\097\032\109\097\110\117\097\108']='\065\117\116\111\032\101\120\105\116',[
"\085\115\097\032\097\032\099\104\097\118\101\032\114\101\097\108\032\112\097\114\097\032\112\114\111\099\117\114\097\114\032\097\032\115\097\105\100\097\046\032\079\032\079\080\032\101\032\111\032\065\117\116\111\032\080\114\111\103\114\101\115\115\032\106\097\032\099\111\111\114\100\101\110\097\109\032\115\117\097\032\112\114\111\112\114\105\097\032\115\097\105\100\097\046"
]=
"\085\115\101\115\032\116\104\101\032\107\101\121\032\116\111\032\102\105\110\100\032\116\104\101\032\101\120\105\116\046\032\079\080\032\097\110\100\032\065\117\116\111\032\080\114\111\103\114\101\115\115\032\104\097\110\100\108\101\032\116\104\101\032\101\120\105\116\032\097\117\116\111\109\097\116\105\099\097\108\108\121\046"
,['\080\117\108\097\114\032\099\101\110\097\032\102\105\110\097\108']='\083\107\105\112\032\101\110\100\105\110\103\032\115\099\101\110\101',[
"\085\115\097\032\111\032\098\111\116\097\111\032\080\117\108\097\114\032\113\117\097\110\100\111\032\100\105\115\112\111\110\105\118\101\108\046\032\065\112\111\115\032\097\032\102\117\103\097\032\099\111\110\102\105\114\109\097\100\097\044\032\116\097\109\098\101\109\032\116\101\110\116\097\032\097\032\102\117\110\099\097\111\032\067\097\110\099\101\108\032\100\097\032\099\101\110\097\046"
]=
"\085\115\101\115\032\116\104\101\032\083\107\105\112\032\098\117\116\116\111\110\032\105\102\032\097\118\097\105\108\097\098\108\101\032\097\110\100\032\097\116\116\101\109\112\116\115\032\116\111\032\101\110\100\032\116\104\101\032\115\099\101\110\101\032\097\102\116\101\114\032\101\115\099\097\112\101\032\105\115\032\099\111\110\102\105\114\109\101\100\046"
,['\076\105\098\101\114\097\114\032\099\097\109\101\114\097\032\097\112\111\115\032\118\105\116\111\114\105\097']='\082\101\115\116\111\114\101\032\099\097\109\101\114\097\032\097\102\116\101\114\032\119\105\110\110\105\110\103',[
"\083\101\032\097\032\099\101\110\097\032\110\097\111\032\111\102\101\114\101\099\101\114\032\117\109\032\098\111\116\097\111\044\032\116\101\110\116\097\032\100\101\118\111\108\118\101\114\032\097\032\118\105\115\097\111\032\097\111\032\112\101\114\115\111\110\097\103\101\109\032\100\101\112\111\105\115\032\100\097\032\099\111\110\102\105\114\109\097\099\097\111\032\100\097\032\102\117\103\097\046"
]=
"\082\101\116\117\114\110\115\032\116\104\101\032\118\105\101\119\032\116\111\032\121\111\117\114\032\099\104\097\114\097\099\116\101\114\032\097\102\116\101\114\032\101\115\099\097\112\101\032\119\104\101\110\032\116\104\101\032\115\099\101\110\101\032\104\097\115\032\110\111\032\115\107\105\112\032\098\117\116\116\111\110\046"
,['\082\105\116\109\111\032\100\101\032\108\105\109\112\101\122\097']='\080\105\108\101\032\099\108\101\097\114\105\110\103\032\112\097\099\101',[
"\067\111\109\032\101\113\117\105\112\097\109\101\110\116\111\115\032\110\111\032\109\097\120\105\109\111\044\032\112\114\101\102\101\114\101\032\097\108\118\111\115\032\112\114\111\120\105\109\111\115\032\101\032\101\118\105\116\097\032\100\101\115\118\105\111\115\032\112\111\114\032\114\097\114\105\100\097\100\101\115\046"
]=
"\087\105\116\104\032\109\097\120\101\100\032\101\113\117\105\112\109\101\110\116\044\032\102\097\118\111\114\115\032\110\101\097\114\098\121\032\116\097\114\103\101\116\115\032\097\110\100\032\097\118\111\105\100\115\032\100\101\116\111\117\114\115\032\102\111\114\032\114\097\114\101\032\111\110\101\115\046"
,['\082\101\100\117\122\105\114\032\105\110\116\101\114\118\097\108\111\032\108\111\099\097\108\032\100\097\032\101\110\116\114\101\103\097']='\082\101\100\117\099\101\032\100\101\108\105\118\101\114\121\032\105\110\116\101\114\118\097\108',[
"\065\099\101\108\101\114\097\032\101\110\116\114\101\103\097\115\032\101\032\114\101\115\116\097\117\114\097\032\111\032\105\110\116\101\114\118\097\108\111\032\110\111\114\109\097\108\032\115\101\032\097\032\101\110\116\114\101\103\097\032\102\097\108\104\097\114\046" ]=
"\083\112\101\101\100\115\032\117\112\032\100\101\108\105\118\101\114\105\101\115\032\119\104\101\110\032\115\117\112\112\111\114\116\101\100\032\097\110\100\032\114\101\115\116\111\114\101\115\032\110\111\114\109\097\108\032\116\105\109\105\110\103\032\105\102\032\100\101\108\105\118\101\114\121\032\102\097\105\108\115\046"
,['\073\110\116\101\114\118\097\108\111\032\108\111\099\097\108\032\112\111\114\032\099\111\108\111\099\097\099\097\111']='\073\110\116\101\114\118\097\108\032\112\101\114\032\112\108\097\099\101\109\101\110\116',['\068\101\115\108\111\099\097\109\101\110\116\111']=
'\077\111\118\101\109\101\110\116',['\084\101\108\101\112\111\114\116\101']='\084\101\108\101\112\111\114\116',['\067\097\109\105\110\104\097\114']='\087\097\108\107',['\082\105\116\109\111']='\080\097\099\101',[
'\067\111\108\101\116\097\115\032\112\111\114\032\114\111\100\097\100\097']='\080\105\099\107\115\032\112\101\114\032\099\121\099\108\101',['\067\111\108\101\116\097\114\032\097\111\032\114\101\100\111\114\032\115\101\109\032\109\105\114\097\114']=
'\067\111\108\108\101\099\116\032\110\101\097\114\098\121\032\119\105\116\104\111\117\116\032\097\105\109\105\110\103',[
"\085\115\097\032\073\068\115\032\100\111\115\032\097\108\118\111\115\032\112\114\111\120\105\109\111\115\059\032\116\101\108\101\112\111\114\116\097\032\113\117\097\110\100\111\032\110\101\099\101\115\115\097\114\105\111\046\032\079\032\115\101\114\118\105\100\111\114\032\097\105\110\100\097\032\118\097\108\105\100\097\032\111\032\097\108\099\097\110\099\101\046"
]="\067\111\108\108\101\099\116\115\032\110\101\097\114\098\121\032\116\097\114\103\101\116\115\032\119\105\116\104\105\110\032\116\104\101\032\103\097\109\101\039\115\032\114\101\097\099\104\046",['\082\097\105\111\032\108\111\099\097\108\032\100\097\032\099\111\108\101\116\097']=
'\067\111\108\108\101\099\116\105\111\110\032\114\097\100\105\117\115',['\070\101\114\114\097\109\101\110\116\097\032\100\101\032\099\111\108\101\116\097']='\067\111\108\108\101\099\116\105\111\110\032\116\111\111\108',[
'\077\101\108\104\111\114\032\097\100\113\117\105\114\105\100\097']='\066\101\115\116\032\111\119\110\101\100\032\116\111\111\108',['\077\097\111']='\072\097\110\100',['\080\097']='\083\104\111\118\101\108',[
'\069\115\112\101\099\105\097\105\115\032\115\101\109\032\109\111\100\101\108\111\032\118\105\115\105\118\101\108']='\083\112\101\099\105\097\108\032\116\097\114\103\101\116\115\032\111\117\116\115\105\100\101\032\118\105\101\119',[
"\085\115\097\032\111\115\032\073\068\115\032\101\032\097\115\032\112\111\115\105\099\111\101\115\032\097\116\117\097\105\115\032\100\111\032\106\111\103\111\046\032\084\101\110\116\097\116\105\118\097\115\032\114\101\099\117\115\097\100\097\115\032\114\101\099\101\098\101\109\032\117\109\097\032\112\097\117\115\097\059\032\114\101\099\111\109\112\101\110\115\097\115\032\100\101\112\101\110\100\101\109\032\100\111\032\115\101\114\118\105\100\111\114\046"
]="\085\115\101\115\032\099\117\114\114\101\110\116\032\103\097\109\101\032\112\111\115\105\116\105\111\110\115\032\097\110\100\032\119\097\105\116\115\032\098\101\102\111\114\101\032\114\101\116\114\121\105\110\103\032\097\032\114\101\106\101\099\116\101\100\032\116\097\114\103\101\116\046",[
'\082\101\099\117\112\101\114\097\114\032\101\116\097\112\097\115\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101']='\082\101\099\111\118\101\114\032\114\111\117\116\105\110\101\115\032\097\117\116\111\109\097\116\105\099\097\108\108\121',[
'\070\097\108\104\097\115\032\100\101\032\099\111\108\101\116\097\032\101\032\101\110\116\114\101\103\097\032\097\100\105\097\109\032\115\111\109\101\110\116\101\032\097\032\101\116\097\112\097\032\097\102\101\116\097\100\097\046']=
'\068\101\108\097\121\115\032\111\110\108\121\032\116\104\101\032\115\116\101\112\032\116\104\097\116\032\102\097\105\108\101\100\032\116\111\032\099\111\108\108\101\099\116\032\111\114\032\100\101\108\105\118\101\114\046',[
'\082\069\083\084\065\085\082\065\082\032\067\079\078\084\082\079\076\069\083\032\068\079\032\074\079\071\079']='\082\069\083\084\079\082\069\032\071\065\077\069\032\067\079\078\084\082\079\076\083',['\073\110\116\101\114\118\097\108\111\032\101\110\116\114\101\032\097\099\111\101\115']
='\065\099\116\105\111\110\032\105\110\116\101\114\118\097\108',['\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\097\099\097\111']='\065\099\116\105\111\110\032\116\105\109\101\111\117\116',[
'\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\116\114\097\106\101\116\111']='\084\114\097\118\101\108\032\116\105\109\101\111\117\116',['\068\105\110\097\109\105\116\101\032\097\117\116\111\109\097\116\105\099\097']=
'\065\117\116\111\032\100\121\110\097\109\105\116\101',[
"\065\116\117\097\032\113\117\097\110\100\111\032\097\032\102\101\114\114\097\109\101\110\116\097\032\102\111\105\032\097\100\113\117\105\114\105\100\097\032\101\032\111\032\112\114\111\116\111\099\111\108\111\032\100\101\032\108\097\110\099\097\109\101\110\116\111\032\102\111\105\032\105\100\101\110\116\105\102\105\099\097\100\111\046"
]='\082\117\110\115\032\119\104\101\110\032\116\104\101\032\116\111\111\108\032\105\115\032\111\119\110\101\100\032\097\110\100\032\114\101\097\100\121\032\116\111\032\116\104\114\111\119\046',['\073\110\116\101\114\118\097\108\111\032\097\099\101\108\101\114\097\100\111']=
'\070\097\115\116\101\114\032\105\110\116\101\114\118\097\108',[
"\082\101\100\117\122\032\097\032\101\115\112\101\114\097\032\108\111\099\097\108\059\032\116\101\110\116\097\116\105\118\097\115\032\115\101\109\032\099\111\110\102\105\114\109\097\099\097\111\032\114\101\099\101\098\101\109\032\117\109\032\105\110\116\101\114\118\097\108\111\032\109\097\105\111\114\046"
]="\083\104\111\114\116\101\110\115\032\116\104\101\032\108\111\099\097\108\032\119\097\105\116\032\097\110\100\032\098\097\099\107\115\032\111\102\102\032\119\104\101\110\032\097\032\116\104\114\111\119\032\105\115\032\117\110\099\111\110\102\105\114\109\101\100\046",[
'\073\110\116\101\114\118\097\108\111\032\100\097\032\100\105\110\097\109\105\116\101']='\068\121\110\097\109\105\116\101\032\105\110\116\101\114\118\097\108',['\080\097\117\115\097\114\032\099\111\109\032\109\111\118\105\109\101\110\116\111\032\109\097\110\117\097\108']=
'\080\097\117\115\101\032\111\110\032\109\097\110\117\097\108\032\109\111\118\101\109\101\110\116',['\078\111\116\105\102\105\099\097\099\111\101\115']='\078\111\116\105\102\105\099\097\116\105\111\110\115',['\065\116\097\108\104\111\115']=
'\083\104\111\114\116\099\117\116\115',['\069\110\116\114\101\103\097\114']='\068\101\108\105\118\101\114',['\065\098\111\098\111\114\097\115']='\080\117\109\112\107\105\110\115',['\066\111\108\115\097\115']='\066\097\103\115',[
'\067\111\114\116\097\100\111\114\032\109\097\110\117\097\108']='\077\097\110\117\097\108\032\099\117\116\116\101\114',['\086\101\110\100\101\114']='\083\101\108\108',['\068\105\110\097\109\105\116\101']='\068\121\110\097\109\105\116\101',[
'\080\097\105\110\101\108']='\080\097\110\101\108',['\079\080\032\065\108\116\111\032\090\101\114\097\114']='\079\080\032\070\097\115\116\032\070\105\110\105\115\104',['\071\105\114\111\032\037\100\032\099\111\110\102\105\114\109\097\100\111\058\032\037\115']=
'\082\111\108\108\032\037\100\032\099\111\110\102\105\114\109\101\100\058\032\037\115',[
'\067\111\110\101\120\u{e3}\111\032\112\101\114\100\105\100\097\032\040\037\115\041\046\032\084\101\110\116\097\110\100\111\032\118\111\108\116\097\114\032\097\111\032\108\111\098\098\121\u{2026}']=
'\067\111\110\110\101\099\116\105\111\110\032\108\111\115\116\032\040\037\115\041\046\032\082\101\106\111\105\110\105\110\103\032\116\104\101\032\108\111\098\098\121\u{2026}',[
'\069\115\115\097\032\116\101\099\108\097\032\106\097\032\101\115\116\097\032\101\109\032\117\115\111\032\112\111\114\032\037\115\046']='\084\104\097\116\032\107\101\121\032\105\115\032\097\108\114\101\097\100\121\032\097\115\115\105\103\110\101\100\032\116\111\032\037\115\046',[
'\082\111\116\105\110\097\115\032\112\097\117\115\097\100\097\115\032\097\112\111\115\032\116\114\101\115\032\102\097\108\104\097\115\032\101\109\032\037\115\046']=
'\082\111\117\116\105\110\101\115\032\112\097\117\115\101\100\032\097\102\116\101\114\032\116\104\114\101\101\032\102\097\105\108\117\114\101\115\032\119\104\105\108\101\032\037\115\046',[
'\067\105\099\108\111\032\099\111\109\112\108\101\116\111\032\099\111\109\032\112\114\105\111\114\105\100\097\100\101\032\112\097\114\097\032\108\105\109\112\097\114\032\097\032\109\111\110\116\097\110\104\097\046']=
'\067\111\109\112\108\101\116\101\032\114\117\110\032\116\104\097\116\032\112\114\105\111\114\105\116\105\122\101\115\032\099\108\101\097\114\105\110\103\032\116\104\101\032\112\105\108\101\046',[
"\083\117\103\097\100\111\114\032\077\065\088\032\105\110\105\099\105\097\032\099\111\108\101\116\097\032\099\111\110\116\105\110\117\097\032\097\116\101\032\097\099\097\098\097\114\032\097\032\109\111\110\116\097\110\104\097\046\032\069\110\116\114\101\103\097\032\097\111\032\101\110\099\104\101\114\032\115\101\032\097\032\098\111\108\115\097\032\102\111\114\032\102\105\110\105\116\097\046\032\079\032\079\080\032\099\111\111\114\100\101\110\097\032\115\101\117\115\032\115\101\114\118\105\099\111\115\032\115\101\109\032\108\105\103\097\114\032\111\115\032\105\110\116\101\114\114\117\112\116\111\114\101\115\032\100\097\115\032\114\111\116\105\110\097\115\032\109\097\110\117\097\105\115\046"
]=
"\065\032\109\097\120\101\100\032\118\097\099\117\117\109\032\099\111\108\108\101\099\116\115\032\099\111\110\116\105\110\117\111\117\115\108\121\032\117\110\116\105\108\032\116\104\101\032\112\105\108\101\032\105\115\032\099\108\101\097\114\046\032\070\105\110\105\116\101\032\098\097\103\115\032\097\114\101\032\100\101\108\105\118\101\114\101\100\032\119\104\101\110\032\102\117\108\108\046"
,['\086\101\110\100\101\114\032\108\111\116\101\115\032\109\097\105\111\114\101\115\032\110\111\032\079\080']='\083\101\108\108\032\108\097\114\103\101\114\032\079\080\032\098\097\116\099\104\101\115',[
"\085\115\097\032\108\111\116\101\115\032\100\101\032\053\048\044\032\057\048\032\111\117\032\049\053\048\032\099\111\110\102\111\114\109\101\032\111\032\115\097\108\100\111\032\113\117\101\032\102\097\108\116\097\032\112\097\114\097\032\097\032\112\114\111\120\105\109\097\032\099\111\109\112\114\097\044\032\114\101\115\112\101\105\116\097\110\100\111\032\111\032\108\105\109\105\116\101\032\100\101\032\118\101\110\100\097\046"
]=
"\085\115\101\115\032\098\097\116\099\104\101\115\032\111\102\032\053\048\044\032\057\048\032\111\114\032\049\053\048\032\098\097\115\101\100\032\111\110\032\116\104\101\032\099\097\115\104\032\110\101\101\100\101\100\032\102\111\114\032\116\104\101\032\110\101\120\116\032\112\117\114\099\104\097\115\101\046"
,['\082\101\116\101\110\116\097\114\032\109\101\115\097\032\101\032\118\101\110\100\097\032\109\097\105\115\032\099\101\100\111']='\082\101\116\114\121\032\116\097\098\108\101\115\032\097\110\100\032\115\097\108\101\115\032\115\111\111\110\101\114',[
"\081\117\097\110\100\111\032\111\032\112\114\111\109\112\116\032\101\032\105\110\115\116\097\110\116\097\110\101\111\044\032\116\101\110\116\097\032\111\117\116\114\097\032\102\111\114\109\097\032\100\101\032\105\110\116\101\114\097\099\097\111\032\109\097\105\115\032\099\101\100\111\046\032\079\032\114\101\115\117\108\116\097\100\111\032\097\105\110\100\097\032\100\101\112\101\110\100\101\032\100\097\032\099\111\110\102\105\114\109\097\099\097\111\032\100\111\032\106\111\103\111\046"
]="\082\101\116\114\105\101\115\032\097\110\032\105\110\115\116\097\110\116\032\105\110\116\101\114\097\099\116\105\111\110\032\115\111\111\110\101\114\032\105\102\032\116\104\101\032\103\097\109\101\032\104\097\115\032\121\101\116\032\116\111\032\099\111\110\102\105\114\109\032\105\116\046",[
'\068\101\115\101\106\097\032\109\101\115\109\111\032\099\111\109\112\114\097\114\032\111\032\100\114\111\110\101\063\n\080\114\101\099\111\058\032\056\048\032\103\101\109\097\115']=
'\066\117\121\032\116\104\101\032\100\114\111\110\101\063\n\080\114\105\099\101\058\032\056\048\032\103\101\109\115',['\067\079\077\080\082\065\082\058\032\056\048\032\071\069\077\065\083']='\066\085\089\058\032\056\048\032\071\069\077\083',[
'\065\071\079\082\065\032\078\065\079']='\078\079\084\032\078\079\087',['\078\065\079\032\065\068\081\085\073\082\073\068\079']='\078\079\084\032\079\087\078\069\068',['\077\065\088\032\032\047\032\032\080\082\079\078\084\079']=
'\077\065\088\032\032\047\032\032\082\069\065\068\089',['\067\079\078\067\076\085\073\068\065']='\068\079\078\069',['\080\082\073\079\082\073\090\065\078\068\079']='\080\082\073\079\082\073\084\073\090\069\068',['\083\069\076\069\067\073\079\078\065\082'
]='\083\069\076\069\067\084',['\086\097\108\105\100\097\100\101\032\110\097\111\032\105\110\102\111\114\109\097\100\097']='\069\120\112\105\114\121\032\117\110\107\110\111\119\110',['\069\120\112\105\114\097\100\097']='\069\120\112\105\114\101\100',[
'\067\069\078\084\082\065\076\032\068\079\032\076\079\066\066\089']='\076\079\066\066\089\032\067\069\078\084\069\082',['\080\114\111\110\116\111\032\112\097\114\097\032\099\111\110\102\105\103\117\114\097\114\032\097\032\102\105\108\097\046']=
'\082\101\097\100\121\032\116\111\032\099\111\110\102\105\103\117\114\101\032\116\104\101\032\113\117\101\117\101\046',['\067\111\110\102\105\103\117\114\097\114']='\083\101\116\117\112',[
'\067\111\110\102\105\103\117\114\097\114\032\099\097\112\u{ed}\116\117\108\111']='\083\101\116\032\117\112\032\097\032\099\104\097\112\116\101\114',[
'\069\115\099\111\108\104\097\032\117\109\032\099\097\112\u{ed}\116\117\108\111\032\112\097\114\097\032\118\101\114\032\097\115\032\111\112\u{e7}\u{f5}\101\115\032\100\097\032\102\105\108\097\046']=
'\067\104\111\111\115\101\032\097\032\099\104\097\112\116\101\114\032\116\111\032\118\105\101\119\032\105\116\115\032\113\117\101\117\101\032\115\101\116\116\105\110\103\115\046',['\067\097\112\u{ed}\116\117\108\111\115']='\067\104\097\112\116\101\114\115',[
'\067\097\112\u{ed}\116\117\108\111\032\073']='\067\104\097\112\116\101\114\032\073',['\067\097\112\u{ed}\116\117\108\111\032\073\073']='\067\104\097\112\116\101\114\032\073\073',[
'\067\097\112\u{ed}\116\117\108\111\032\073\073\073']='\067\104\097\112\116\101\114\032\073\073\073',['\069\077\032\066\082\069\086\069']='\067\079\077\073\078\071\032\083\079\079\078',[
'\070\105\108\097\032\100\111\032\067\097\112\u{ed}\116\117\108\111\032\073\073']='\067\104\097\112\116\101\114\032\073\073\032\113\117\101\117\101',[
'\065\115\032\101\115\099\111\108\104\097\115\032\115\u{e3}\111\032\114\101\097\112\108\105\099\097\100\097\115\032\110\097\032\112\114\u{f3}\120\105\109\097\032\114\111\100\097\100\097\046']=
'\083\101\116\116\105\110\103\115\032\099\097\114\114\121\032\111\118\101\114\032\116\111\032\116\104\101\032\110\101\120\116\032\114\111\117\110\100\046',['\069\078\084\082\065\082\032\043\032\079\080']='\074\079\073\078\032\043\032\079\080',[
'\067\073\067\076\079\032\067\079\077\080\076\069\084\079']='\070\085\076\076\032\076\079\079\080',['\074\079\071\065\068\079\082\069\083']='\080\076\065\089\069\082\083',['\065\077\073\071\079\083']='\070\082\073\069\078\068\083',[
'\073\078\084\082\079\068\085\u{c7}\u{c3}\079']='\073\078\084\082\079',['\067\069\078\065\032\070\073\078\065\076']='\069\078\068\073\078\071',['\082\069\080\069\084\073\082']='\082\069\080\069\065\084',[
'\065\085\084\079\032\077\069\076\072\079\082\073\065']='\065\085\084\079\032\085\080\071\082\065\068\069',['\080\065\082\065\082']='\083\084\079\080',['\082\101\099\117\114\115\111\115\032\100\111\032\108\111\098\098\121']=
'\076\111\098\098\121\032\114\101\115\111\117\114\099\101\115',['\076\101\110\100\111\032\111\032\115\097\108\100\111\032\100\111\032\106\111\103\111\u{2026}']=
'\082\101\097\100\105\110\103\032\121\111\117\114\032\103\097\109\101\032\098\097\108\097\110\099\101\u{2026}',['\067\097\105\120\097\115']='\067\114\097\116\101\115',['\067\097\105\120\097\032\100\111\032\101\118\101\110\116\111']=
'\069\118\101\110\116\032\099\114\097\116\101',[
'\079\032\099\117\115\116\111\032\u{e9}\032\100\101\032\056\048\032\097\098\u{f3}\098\111\114\097\115\032\112\111\114\032\099\097\105\120\097\046\032\069\115\099\111\108\104\097\032\111\032\116\097\109\097\110\104\111\032\100\111\032\108\111\116\101\046']=
'\069\097\099\104\032\099\114\097\116\101\032\099\111\115\116\115\032\056\048\032\112\117\109\112\107\105\110\115\046\032\067\104\111\111\115\101\032\121\111\117\114\032\098\097\116\099\104\032\115\105\122\101\046',[
'\083\097\108\100\111\032\100\101\032\097\098\u{f3}\098\111\114\097\115']='\080\117\109\112\107\105\110\032\098\097\108\097\110\099\101',['\065\103\117\097\114\100\097\110\100\111\032\111\032\106\111\103\111\u{2026}']=
'\087\097\105\116\105\110\103\032\102\111\114\032\116\104\101\032\103\097\109\101\u{2026}',['\065\085\084\079\032\067\065\073\088\065\083']='\065\085\084\079\032\067\082\065\084\069\083',['\065\066\082\073\082\032\076\079\084\069']=
'\079\080\069\078\032\066\065\084\067\072',['\065\108\118\111\032\100\101\032\099\108\097\115\115\101']='\067\108\097\115\115\032\116\097\114\103\101\116',[
'\083\101\108\101\099\105\111\110\101\032\117\109\032\099\097\114\116\u{e3}\111\046\032\065\032\114\111\108\097\103\101\109\032\112\097\114\097\032\113\117\097\110\100\111\032\111\032\106\111\103\111\032\099\111\110\102\105\114\109\097\032\097\032\099\108\097\115\115\101\046']=
"\083\101\108\101\099\116\032\097\032\099\097\114\100\046\032\082\111\108\108\115\032\115\116\111\112\032\119\104\101\110\032\116\104\101\032\103\097\109\101\032\099\111\110\102\105\114\109\115\032\116\104\097\116\032\099\108\097\115\115\046",[
'\065\098\114\097\032\067\108\097\115\115\101\115\032\110\111\032\106\111\103\111\032\112\097\114\097\032\099\097\114\114\101\103\097\114\032\111\032\099\097\116\u{e1}\108\111\103\111\046']=
'\079\112\101\110\032\067\108\097\115\115\101\115\032\105\110\032\116\104\101\032\103\097\109\101\032\116\111\032\108\111\097\100\032\116\104\101\032\099\097\116\097\108\111\103\046',['\067\108\097\115\115\101\032\097\116\117\097\108']='\067\117\114\114\101\110\116\032\099\108\097\115\115'
,['\u{25a1}\032\032\032\085\083\065\082\032\071\069\077\065\083\032\080\065\082\065\032\071\073\082\065\082']='\u{25a1}\032\032\032\085\083\069\032\071\069\077\083\032\084\079\032\082\079\076\076',[
'\u{2713}\032\032\032\085\083\065\082\032\071\069\077\065\083\032\080\065\082\065\032\071\073\082\065\082']='\u{2713}\032\032\032\085\083\069\032\071\069\077\083\032\084\079\032\082\079\076\076',[
'\071\073\082\065\082\032\065\084\u{c9}\032\079\032\065\076\086\079']='\082\079\076\076\032\085\078\084\073\076\032\084\065\082\071\069\084',['\083\069\076\069\067\073\079\078\065\082\032\077\065\073\083\032\082\065\082\065']=
'\083\069\076\069\067\084\032\082\065\082\069\083\084',['\074\079\071\065\068\079\082\069\083\032\032\u{b7}\032\032']='\080\076\065\089\069\082\083\032\032\u{b7}\032\032',[
'\083\u{d3}\032\065\077\073\071\079\083\032\032\u{b7}\032\032\083\073\077']='\070\082\073\069\078\068\083\032\079\078\076\089\032\032\u{b7}\032\032\089\069\083',[
'\083\u{d3}\032\065\077\073\071\079\083\032\032\u{b7}\032\032\078\u{c3}\079']='\070\082\073\069\078\068\083\032\079\078\076\089\032\032\u{b7}\032\032\078\079',[
'\073\078\084\082\079\032\032\u{b7}\032\032\080\085\076\065\082']='\073\078\084\082\079\032\032\u{b7}\032\032\083\075\073\080',['\073\078\084\082\079\032\032\u{b7}\032\032\086\069\082']=
'\073\078\084\082\079\032\032\u{b7}\032\032\087\065\084\067\072',['\070\073\078\065\076\032\032\u{b7}\032\032\080\085\076\065\082']='\069\078\068\073\078\071\032\032\u{b7}\032\032\083\075\073\080',[
'\070\073\078\065\076\032\032\u{b7}\032\032\086\069\082']='\069\078\068\073\078\071\032\032\u{b7}\032\032\087\065\084\067\072',['\082\069\080\069\084\073\082\032\032\u{b7}\032\032\083\073\077']=
'\082\069\080\069\065\084\032\032\u{b7}\032\032\089\069\083',['\082\069\080\069\084\073\082\032\032\u{b7}\032\032\078\u{c3}\079']='\082\069\080\069\065\084\032\032\u{b7}\032\032\078\079',[
'\077\069\076\072\079\082\073\065\083\032\032\u{b7}\032\032\079\078']='\085\080\071\082\065\068\069\083\032\032\u{b7}\032\032\079\078',['\077\069\076\072\079\082\073\065\083\032\032\u{b7}\032\032\079\070\070']=
'\085\080\071\082\065\068\069\083\032\032\u{b7}\032\032\079\070\070',['\065\085\084\079\032\067\065\073\088\065\083\032\032\u{b7}\032\032\079\078']='\065\085\084\079\032\067\082\065\084\069\083\032\032\u{b7}\032\032\079\078',[
'\065\085\084\079\032\067\065\073\088\065\083\032\032\u{b7}\032\032\079\070\070']='\065\085\084\079\032\067\082\065\084\069\083\032\032\u{b7}\032\032\079\070\070',['\065\071\085\065\082\068\065\078\068\079\032\079\032\074\079\071\079']=
'\087\065\073\084\073\078\071\032\070\079\082\032\084\072\069\032\071\065\077\069',['\080\065\082\065\082\032\071\073\082\079\083']='\083\084\079\080\032\082\079\076\076\073\078\071',[
'\065\098\u{f3}\098\111\114\097\115\032\032\037\115\032\032\032\u{b7}\032\032\032\071\101\109\097\115\032\032\037\115']='\080\117\109\112\107\105\110\115\032\032\037\115\032\032\032\u{b7}\032\032\032\071\101\109\115\032\032\037\115',[
'\037\115\032\110\111\032\115\097\108\100\111\032\032\032\u{b7}\032\032\032\037\100\032\099\097\105\120\097\040\115\041\032\061\032\037\100\032\097\098\u{f3}\098\111\114\097\115']=
'\037\115\032\097\118\097\105\108\097\098\108\101\032\032\032\u{b7}\032\032\032\037\100\032\099\114\097\116\101\040\115\041\032\061\032\037\100\032\112\117\109\112\107\105\110\115',[
'\037\115\032\032\032\u{b7}\032\032\032\071\105\114\111\115\032\103\114\u{e1}\116\105\115\058\032\037\115']='\037\115\032\032\032\u{b7}\032\032\032\070\114\101\101\032\114\111\108\108\115\058\032\037\115',[
'\037\048\050\100\058\037\048\050\100\032\032\047\032\032\083\079\082\084\069\032\037\100\037\115']='\037\048\050\100\058\037\048\050\100\032\032\047\032\032\076\085\067\075\032\037\100\037\115',['\032\032\047\032\032\067\079\078\067\076\085\073\068\079']=
'\032\032\047\032\032\067\079\077\080\076\069\084\069',['\105\110\100\105\115\112\111\110\105\118\101\108']='\117\110\097\118\097\105\108\097\098\108\101',['\115\111\109\101\110\116\101\032\097\118\105\115\111\032\100\111\032\106\111\103\111']=
'\103\097\109\101\032\097\108\101\114\116\032\111\110\108\121',['\099\111\108\101\116\097\114\032\101\032\099\111\114\116\097\114']='\099\111\108\108\101\099\116\032\097\110\100\032\099\117\116',['\108\105\109\112\101\122\097']='\099\108\101\097\114\105\110\103',
['\065\103\117\097\114\100\097\110\100\111\032\114\111\116\105\110\097\032\111\117\032\114\101\099\117\114\115\111\032\100\105\115\112\111\110\105\118\101\108']='\087\097\105\116\105\110\103\032\102\111\114\032\097\032\114\111\117\116\105\110\101\032\111\114\032\114\101\115\111\117\114\099\101',
['\069\081\085\073\080\069\032\032\047\032\032\076\073\068\069\082\032\079\080']='\084\069\065\077\032\032\047\032\032\079\080\032\076\069\065\068\069\082',['\069\081\085\073\080\069\032\032\047\032\032\067\079\076\069\084\065\032\069\032\069\078\084\082\069\071\065']=
'\084\069\065\077\032\032\047\032\032\067\079\076\076\069\067\084\032\065\078\068\032\068\069\076\073\086\069\082',['\069\081\085\073\080\069\032\032\047\032\032\067\079\082\084\069\032\069\032\086\069\078\068\065']=
'\084\069\065\077\032\032\047\032\032\067\085\084\032\065\078\068\032\083\069\076\076',['\071\082\085\080\079\032\077\073\083\084\079\032\032\047\032\032\065\080\079\073\079']='\077\073\088\069\068\032\071\082\079\085\080\032\032\047\032\032\083\085\080\080\079\082\084',[
'\067\065\080\073\084\085\076\079\032\073\073\032\067\079\078\067\076\085\073\068\079\032\032\047\032\032\082\079\084\073\078\065\083\032\080\065\085\083\065\068\065\083']=
'\067\072\065\080\084\069\082\032\073\073\032\067\079\077\080\076\069\084\069\032\032\047\032\032\082\079\085\084\073\078\069\083\032\080\065\085\083\069\068',[
'\076\073\067\069\078\067\065\032\069\088\080\073\082\065\068\065\032\032\047\032\032\082\079\084\073\078\065\083\032\080\065\085\083\065\068\065\083']='\065\067\067\069\083\083\032\069\088\080\073\082\069\068\032\032\047\032\032\082\079\085\084\073\078\069\083\032\080\065\085\083\069\068',[
'\086\073\084\079\082\073\065\032\067\079\078\070\073\082\077\065\068\065\032\047\032\065\071\085\065\082\068\065\078\068\079\032\082\069\083\085\076\084\065\068\079\032\080\065\082\065\032\086\079\076\084\065\082']=
'\086\073\067\084\079\082\089\032\067\079\078\070\073\082\077\069\068\032\047\032\087\065\073\084\073\078\071\032\070\079\082\032\082\069\083\085\076\084\083',[
'\086\073\084\079\082\073\065\032\067\079\078\070\073\082\077\065\068\065\032\047\032\086\079\076\084\065\078\068\079\032\065\079\032\076\079\066\066\089']=
'\086\073\067\084\079\082\089\032\067\079\078\070\073\082\077\069\068\032\047\032\082\069\084\085\082\078\073\078\071\032\084\079\032\076\079\066\066\089',[
"\037\115\032\032\124\032\032\066\111\108\115\097\058\032\037\115\010\069\110\116\114\101\103\097\058\032\037\115\032\032\124\032\032\067\111\114\116\097\100\097\115\058\032\037\115\047\037\100\010\077\101\116\097\058\032\037\115\010\067\097\108\111\114\058\032\037\115\032\032\124\032\032\071\101\109\097\115\058\032\037\100\010\037\046\049\102\032\099\111\114\116\097\100\097\115\047\115\032\124\032\037\115\032\124\032\118\101\110\100\097\115\058\032\037\100"
]=
"\037\115\032\032\124\032\032\066\097\103\058\032\037\115\010\068\101\108\105\118\101\114\121\058\032\037\115\032\032\124\032\032\067\117\116\058\032\037\115\047\037\100\010\071\111\097\108\058\032\037\115\010\072\101\097\116\058\032\037\115\032\032\124\032\032\071\101\109\115\058\032\037\100\010\037\046\049\102\032\099\117\116\047\115\032\124\032\037\115\032\124\032\115\097\108\101\115\058\032\037\100"
,['\082\101\115\102\114\105\097\110\100\111']='\067\111\111\108\105\110\103',['\067\111\108\101\116\097\110\100\111']='\067\111\108\108\101\099\116\105\110\103',['\069\110\116\114\101\103\097\110\100\111']='\068\101\108\105\118\101\114\105\110\103'
,['\067\111\114\116\097\110\100\111']='\067\117\116\116\105\110\103',['\073\110\100\111\032\112\097\114\097\032\097\032\109\101\115\097']='\072\101\097\100\105\110\103\032\116\111\032\116\104\101\032\116\097\098\108\101',['\067\111\109\112\114\097\110\100\111'
]='\066\117\121\105\110\103',['\071\105\114\097\110\100\111\032\099\111\114\116\097\100\111\114']='\067\114\097\110\107\105\110\103\032\099\117\116\116\101\114',['\073\110\100\101\120\097\110\100\111\032\101\032\115\101\108\101\099\105\111\110\097\110\100\111']=
'\070\105\110\100\105\110\103\032\116\097\114\103\101\116\115',['\065\098\097\115\116\101\099\101\110\100\111\032\097\032\109\101\115\097']='\082\101\115\116\111\099\107\105\110\103\032\116\104\101\032\116\097\098\108\101',['\086\101\110\100\101\110\100\111']=
'\083\101\108\108\105\110\103',['\082\101\116\111\114\110\097\110\100\111\032\097\032\109\101\115\097']='\082\101\116\117\114\110\105\110\103\032\116\111\032\116\104\101\032\116\097\098\108\101',['\076\097\110\099\097\110\100\111\032\100\105\110\097\109\105\116\101']=
'\084\104\114\111\119\105\110\103\032\100\121\110\097\109\105\116\101',['\073\110\100\111\032\112\097\114\097\032\097\032\115\097\105\100\097\032\099\111\109\032\097\032\099\104\097\118\101']=
'\072\101\097\100\105\110\103\032\116\111\032\116\104\101\032\101\120\105\116\032\119\105\116\104\032\116\104\101\032\107\101\121',['\067\111\109\112\114\097\110\100\111\032\100\114\111\110\101']='\066\117\121\105\110\103\032\100\114\111\110\101',[
'\082\111\116\105\110\097\032\112\097\117\115\097\100\097\046']='\082\111\117\116\105\110\101\032\112\097\117\115\101\100\046',['\082\111\116\105\110\097\115\032\112\097\117\115\097\100\097\115\046']='\082\111\117\116\105\110\101\115\032\112\097\117\115\101\100\046',[
'\074\u{e1}\032\104\u{e1}\032\117\109\097\032\114\111\116\105\110\097\032\100\101\032\108\111\098\098\121\032\101\109\032\097\110\100\097\109\101\110\116\111\046']=
'\065\032\108\111\098\098\121\032\114\111\117\116\105\110\101\032\105\115\032\097\108\114\101\097\100\121\032\114\117\110\110\105\110\103\046',['\079\032\106\111\103\111\032\105\110\116\101\114\114\111\109\112\101\117\032\097\032\114\111\116\105\110\097\032\100\111\032\108\111\098\098\121\046']=
'\084\104\101\032\103\097\109\101\032\105\110\116\101\114\114\117\112\116\101\100\032\116\104\101\032\108\111\098\098\121\032\114\111\117\116\105\110\101\046',['\067\105\099\108\111\032\100\111\032\108\111\098\098\121\032\112\097\114\097\100\111\046']=
'\076\111\098\098\121\032\108\111\111\112\032\115\116\111\112\112\101\100\046',[
'\082\101\116\111\109\097\100\097\032\099\097\110\099\101\108\097\100\097\046\032\079\032\106\111\103\111\032\106\u{e1}\032\115\111\108\105\099\105\116\111\117\032\111\032\116\101\108\101\112\111\114\116\101\046']=
'\082\101\115\117\109\101\032\099\097\110\099\101\108\101\100\046\032\084\104\101\032\103\097\109\101\032\104\097\115\032\097\108\114\101\097\100\121\032\114\101\113\117\101\115\116\101\100\032\116\101\108\101\112\111\114\116\046',[
'\065\115\032\099\104\097\110\099\101\115\032\097\105\110\100\097\032\110\u{e3}\111\032\102\111\114\097\109\032\099\097\114\114\101\103\097\100\097\115\032\112\101\108\111\032\106\111\103\111\046']=
'\084\104\101\032\103\097\109\101\032\104\097\115\032\110\111\116\032\108\111\097\100\101\100\032\116\104\101\032\111\100\100\115\032\121\101\116\046',['\069\115\099\111\108\104\097\032\117\109\097\032\099\108\097\115\115\101\032\110\097\032\098\097\114\114\097\046']=
'\067\104\111\111\115\101\032\097\032\099\108\097\115\115\032\102\114\111\109\032\116\104\101\032\108\105\115\116\046',[
"\079\032\082\111\098\108\111\120\032\114\101\099\117\115\111\117\032\111\032\116\101\108\101\112\111\114\116\101\046\032\083\097\105\097\032\100\097\032\102\105\108\097\032\097\116\117\097\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046" ]=
"\082\111\098\108\111\120\032\100\101\099\108\105\110\101\100\032\116\101\108\101\112\111\114\116\046\032\076\101\097\118\101\032\116\104\101\032\099\117\114\114\101\110\116\032\113\117\101\117\101\032\097\110\100\032\116\114\121\032\097\103\097\105\110\046",[
'\080\097\114\101\032\097\032\114\111\116\105\110\097\032\100\101\032\108\111\098\098\121\032\097\110\116\101\115\032\100\101\032\101\110\116\114\097\114\032\110\097\032\102\105\108\097\046']=
'\083\116\111\112\032\116\104\101\032\108\111\098\098\121\032\114\111\117\116\105\110\101\032\098\101\102\111\114\101\032\106\111\105\110\105\110\103\032\097\032\113\117\101\117\101\046',[
'\065\098\114\105\110\100\111\032\111\032\108\111\116\101\032\097\110\116\101\115\032\100\101\032\101\110\116\114\097\114\032\110\097\032\102\105\108\097\u{2026}']=
'\079\112\101\110\105\110\103\032\116\104\101\032\098\097\116\099\104\032\098\101\102\111\114\101\032\106\111\105\110\105\110\103\032\116\104\101\032\113\117\101\117\101\u{2026}',[
'\074\117\110\116\097\110\100\111\032\097\098\u{f3}\098\111\114\097\115\032\112\097\114\097\032\111\032\108\111\116\101\058\032\037\100\047\037\100\046']=
'\083\097\118\105\110\103\032\112\117\109\112\107\105\110\115\032\102\111\114\032\116\104\101\032\098\097\116\099\104\058\032\037\100\047\037\100\046',[
'\076\111\099\097\108\105\122\097\110\100\111\032\097\032\102\105\108\097\032\100\111\032\067\097\112\u{ed}\116\117\108\111\032\073\073\u{2026}']=
'\070\105\110\100\105\110\103\032\116\104\101\032\067\104\097\112\116\101\114\032\073\073\032\113\117\101\117\101\u{2026}',[
'\078\101\110\104\117\109\097\032\u{e1}\114\101\097\032\100\101\032\102\105\108\097\032\108\105\118\114\101\046\032\069\110\116\114\101\032\101\109\032\117\109\097\032\u{e1}\114\101\097\032\118\097\122\105\097\032\109\097\110\117\097\108\109\101\110\116\101\046']=
'\078\111\032\111\112\101\110\032\113\117\101\117\101\032\097\114\101\097\046\032\069\110\116\101\114\032\097\110\032\101\109\112\116\121\032\097\114\101\097\032\109\097\110\117\097\108\108\121\046',[
'\068\069\080\076\079\089\032\097\099\105\111\110\097\100\111\046\032\065\103\117\097\114\100\097\110\100\111\032\111\032\106\111\103\111\u{2026}']=
'\068\101\112\108\111\121\032\114\101\113\117\101\115\116\101\100\046\032\087\097\105\116\105\110\103\032\102\111\114\032\116\104\101\032\103\097\109\101\u{2026}',[
'\070\097\108\104\097\032\110\111\032\108\111\098\098\121\046\032\084\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046']='\084\104\101\032\108\111\098\098\121\032\114\111\117\116\105\110\101\032\102\097\105\108\101\100\046\032\084\114\121\032\097\103\097\105\110\046',[
'\079\032\082\111\098\108\111\120\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\097\032\114\101\099\111\110\101\120\u{e3}\111\046']=
'\082\111\098\108\111\120\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\116\104\101\032\114\101\099\111\110\110\101\099\116\046',[
'\079\032\101\115\116\097\100\111\032\100\111\115\032\103\105\114\111\115\032\097\105\110\100\097\032\110\u{e3}\111\032\101\115\116\u{e1}\032\100\105\115\112\111\110\u{ed}\118\101\108\046']=
'\082\111\108\108\032\115\116\097\116\101\032\105\115\032\110\111\116\032\097\118\097\105\108\097\098\108\101\032\121\101\116\046',['\082\111\108\097\103\101\109\032\112\097\117\115\097\100\097\046']='\082\111\108\108\105\110\103\032\112\097\117\115\101\100\046',[
'\079\032\103\105\114\111\032\099\111\109\032\112\114\101\u{e7}\111\032\101\109\032\103\101\109\097\115\032\110\u{e3}\111\032\102\111\105\032\105\100\101\110\116\105\102\105\099\097\100\111\046\032\065\098\114\097\032\067\108\097\115\115\101\115\032\110\111\032\106\111\103\111\046'
]="\084\104\101\032\103\101\109\032\114\111\108\108\032\111\102\102\101\114\032\105\115\032\117\110\097\118\097\105\108\097\098\108\101\046\032\079\112\101\110\032\067\108\097\115\115\101\115\032\105\110\032\116\104\101\032\103\097\109\101\046",[
'\079\032\103\105\114\111\032\103\114\097\116\117\105\116\111\032\110\u{e3}\111\032\102\111\105\032\105\100\101\110\116\105\102\105\099\097\100\111\046\032\065\098\114\097\032\067\108\097\115\115\101\115\032\110\111\032\106\111\103\111\046']=
'\084\104\101\032\102\114\101\101\032\114\111\108\108\032\105\115\032\117\110\097\118\097\105\108\097\098\108\101\046\032\079\112\101\110\032\067\108\097\115\115\101\115\032\105\110\032\116\104\101\032\103\097\109\101\046',[
'\065\103\117\097\114\100\097\110\100\111\032\111\032\115\097\108\100\111\032\100\101\032\103\101\109\097\115\032\100\111\032\106\111\103\111\046']=
'\087\097\105\116\105\110\103\032\102\111\114\032\116\104\101\032\103\097\109\101\032\116\111\032\114\101\112\111\114\116\032\121\111\117\114\032\103\101\109\032\098\097\108\097\110\099\101\046',['\083\101\109\032\103\105\114\111\115\032\103\114\097\116\117\105\116\111\115\046']=
'\078\111\032\102\114\101\101\032\114\111\108\108\115\032\108\101\102\116\046',['\071\101\109\097\115\032\105\110\115\117\102\105\099\105\101\110\116\101\115\032\112\097\114\097\032\111\032\112\114\u{f3}\120\105\109\111\032\103\105\114\111\046']=
'\089\111\117\032\100\111\032\110\111\116\032\104\097\118\101\032\101\110\111\117\103\104\032\103\101\109\115\032\102\111\114\032\116\104\101\032\110\101\120\116\032\114\111\108\108\046',[
'\079\032\103\105\114\111\032\102\111\105\032\100\101\098\105\116\097\100\111\044\032\109\097\115\032\111\032\112\114\u{f3}\120\105\109\111\032\097\105\110\100\097\032\110\u{e3}\111\032\102\111\105\032\108\105\098\101\114\097\100\111\046']=
"\084\104\101\032\108\097\115\116\032\114\111\108\108\032\119\097\115\032\099\104\097\114\103\101\100\046\032\087\097\105\116\105\110\103\032\102\111\114\032\116\104\101\032\110\101\120\116\032\114\111\108\108\032\116\111\032\098\101\099\111\109\101\032\097\118\097\105\108\097\098\108\101\046",[
'\079\032\106\111\103\111\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\111\032\100\u{e9}\098\105\116\111\046\032\082\111\108\097\103\101\109\032\112\097\114\097\100\097\046']=
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\116\104\101\032\099\104\097\114\103\101\046\032\082\111\108\108\105\110\103\032\115\116\111\112\112\101\100\046',[
"\065\098\114\097\032\097\115\032\109\101\108\104\111\114\105\097\115\032\100\111\032\108\111\098\098\121\032\117\109\097\032\118\101\122\032\112\097\114\097\032\099\097\114\114\101\103\097\114\032\112\114\101\099\111\115\032\101\032\103\101\109\097\115\046" ]=
"\079\112\101\110\032\108\111\098\098\121\032\117\112\103\114\097\100\101\115\032\111\110\099\101\032\116\111\032\108\111\097\100\032\112\114\105\099\101\115\032\097\110\100\032\121\111\117\114\032\103\101\109\032\098\097\108\097\110\099\101\046",[
'\083\101\109\032\109\101\108\104\111\114\105\097\032\097\099\101\115\115\105\118\101\108\032\099\111\109\032\097\115\032\103\101\109\097\115\032\097\116\117\097\105\115\046']=
'\078\111\032\117\112\103\114\097\100\101\115\032\097\114\101\032\097\102\102\111\114\100\097\098\108\101\032\119\105\116\104\032\121\111\117\114\032\099\117\114\114\101\110\116\032\103\101\109\115\046',[
'\079\032\106\111\103\111\032\110\097\111\032\099\111\110\102\105\114\109\111\117\032\097\032\109\101\108\104\111\114\105\097\032\100\101\032\108\111\098\098\121\046']=
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\116\104\101\032\108\111\098\098\121\032\117\112\103\114\097\100\101\046',['\065\098\101\114\116\117\114\097\032\099\097\110\099\101\108\097\100\097\046']=
'\079\112\101\110\105\110\103\032\099\097\110\099\101\108\101\100\046',['\070\097\108\104\097\032\097\111\032\101\110\118\105\097\114\032\097\032\097\098\101\114\116\117\114\097\032\100\101\032\101\118\101\110\116\111\046']=
'\067\111\117\108\100\032\110\111\116\032\114\101\113\117\101\115\116\032\116\104\101\032\101\118\101\110\116\032\099\114\097\116\101\032\111\112\101\110\105\110\103\046',[
'\065\032\111\102\101\114\116\097\032\100\101\032\056\048\032\097\098\u{f3}\098\111\114\097\115\032\110\u{e3}\111\032\112\u{f4}\100\101\032\115\101\114\032\099\111\110\102\105\114\109\097\100\097\046']=
'\084\104\101\032\111\102\102\101\114\032\102\111\114\032\056\048\032\112\117\109\112\107\105\110\115\032\099\111\117\108\100\032\110\111\116\032\098\101\032\099\111\110\102\105\114\109\101\100\046',['\076\111\116\101\032\105\110\118\u{e1}\108\105\100\111\046']=
'\073\110\118\097\108\105\100\032\098\097\116\099\104\046',['\079\032\106\111\103\111\032\097\105\110\100\097\032\110\u{e3}\111\032\105\110\102\111\114\109\111\117\032\111\032\115\097\108\100\111\032\100\101\032\097\098\u{f3}\098\111\114\097\115\046']=
'\084\104\101\032\103\097\109\101\032\104\097\115\032\121\101\116\032\116\111\032\114\101\112\111\114\116\032\121\111\117\114\032\112\117\109\112\107\105\110\032\098\097\108\097\110\099\101\046',[
'\083\097\108\100\111\032\105\110\115\117\102\105\099\105\101\110\116\101\032\112\097\114\097\032\111\032\108\111\116\101\046\032\037\100\032\100\101\032\037\100\032\097\098\u{f3}\098\111\114\097\115\046']=
'\078\111\116\032\101\110\111\117\103\104\032\112\117\109\112\107\105\110\115\032\102\111\114\032\116\104\101\032\098\097\116\099\104\046\032\037\100\032\111\102\032\037\100\032\112\117\109\112\107\105\110\115\046',['\076\111\116\101\032\112\097\117\115\097\100\111\046']=
'\066\097\116\099\104\032\112\097\117\115\101\100\046',['\065\032\099\097\105\120\097\032\097\110\116\101\114\105\111\114\032\097\105\110\100\097\032\101\115\116\u{e1}\032\097\098\101\114\116\097\046']=
'\084\104\101\032\112\114\101\118\105\111\117\115\032\099\114\097\116\101\032\105\115\032\115\116\105\108\108\032\111\112\101\110\046',['\083\097\108\100\111\032\109\117\100\111\117\032\100\117\114\097\110\116\101\032\111\032\108\111\116\101\046']=
'\089\111\117\114\032\098\097\108\097\110\099\101\032\099\104\097\110\103\101\100\032\100\117\114\105\110\103\032\116\104\101\032\098\097\116\099\104\046',['\065\098\114\105\110\100\111\032\099\097\105\120\097\032\037\100\047\037\100\u{2026}']=
'\079\112\101\110\105\110\103\032\099\114\097\116\101\032\037\100\047\037\100\u{2026}',[
'\079\032\106\111\103\111\032\110\u{e3}\111\032\109\111\115\116\114\111\117\032\097\032\097\098\101\114\116\117\114\097\032\100\097\032\099\097\105\120\097\046\032\076\111\116\101\032\105\110\116\101\114\114\111\109\112\105\100\111\046']=
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\115\104\111\119\032\116\104\101\032\099\114\097\116\101\032\111\112\101\110\105\110\103\046\032\066\097\116\099\104\032\115\116\111\112\112\101\100\046',[
'\079\032\106\111\103\111\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\111\032\100\u{e9}\098\105\116\111\032\101\032\111\032\114\101\115\117\108\116\097\100\111\046\032\076\111\116\101\032\105\110\116\101\114\114\111\109\112\105\100\111\046']=
"\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\116\104\101\032\099\104\097\114\103\101\032\097\110\100\032\114\101\115\117\108\116\046\032\066\097\116\099\104\032\115\116\111\112\112\101\100\046",[
'\067\097\105\120\097\032\114\101\103\105\115\116\114\097\100\097\044\032\109\097\115\032\097\032\116\101\108\097\032\100\097\032\097\098\101\114\116\117\114\097\032\097\105\110\100\097\032\101\115\116\u{e1}\032\097\116\105\118\097\046']=
"\084\104\101\032\099\114\097\116\101\032\119\097\115\032\099\111\110\102\105\114\109\101\100\044\032\098\117\116\032\105\116\115\032\111\112\101\110\105\110\103\032\115\099\114\101\101\110\032\105\115\032\115\116\105\108\108\032\118\105\115\105\098\108\101\046",[
'\037\100\032\099\097\105\120\097\040\115\041\032\099\111\110\102\105\114\109\097\100\097\040\115\041\046']='\037\100\032\099\114\097\116\101\040\115\041\032\099\111\110\102\105\114\109\101\100\046',[
'\083\097\105\097\032\100\097\032\102\105\108\097\032\097\116\117\097\108\032\112\097\114\097\032\115\101\108\101\099\105\111\110\097\114\032\111\032\067\097\112\105\116\117\108\111\032\073\073\046']=
'\076\101\097\118\101\032\116\104\101\032\099\117\114\114\101\110\116\032\113\117\101\117\101\032\116\111\032\115\101\108\101\099\116\032\067\104\097\112\116\101\114\032\073\073\046',[
'\079\032\106\111\103\111\032\110\097\111\032\097\098\114\105\117\032\111\032\115\101\108\101\116\111\114\032\100\111\032\099\097\112\105\116\117\108\111\046']=
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\111\112\101\110\032\116\104\101\032\099\104\097\112\116\101\114\032\115\101\108\101\099\116\111\114\046',[
'\079\032\106\111\103\111\032\110\097\111\032\097\098\114\105\117\032\097\032\099\111\110\102\105\103\117\114\097\099\097\111\032\100\097\032\102\105\108\097\046']=
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\111\112\101\110\032\113\117\101\117\101\032\115\101\116\116\105\110\103\115\046',['\079\032\098\111\116\097\111\032\068\069\080\076\079\089\032\110\097\111\032\101\115\116\097\032\100\105\115\112\111\110\105\118\101\108\046']=
'\084\104\101\032\068\101\112\108\111\121\032\098\117\116\116\111\110\032\105\115\032\117\110\097\118\097\105\108\097\098\108\101\046',[
'\068\069\080\076\079\089\032\097\099\105\111\110\097\100\111\046\032\079\032\106\111\103\111\032\110\097\111\032\099\111\110\102\105\114\109\111\117\032\111\032\116\101\108\101\112\111\114\116\101\046']=
'\068\101\112\108\111\121\032\114\101\113\117\101\115\116\101\100\046\032\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\116\101\108\101\112\111\114\116\046',[
'\084\114\097\110\115\102\101\114\101\110\099\105\097\032\099\111\110\102\105\114\109\097\100\097\046\032\067\097\114\114\101\103\097\110\100\111\032\079\080\032\110\111\032\100\101\115\116\105\110\111\046']=
'\084\114\097\110\115\102\101\114\032\099\111\110\102\105\114\109\101\100\046\032\079\080\032\119\105\108\108\032\115\116\097\114\116\032\111\110\032\097\114\114\105\118\097\108\046',[
'\084\114\097\110\115\102\101\114\101\110\099\105\097\032\099\111\110\102\105\114\109\097\100\097\046\032\065\098\114\097\032\111\032\104\117\098\032\097\111\032\099\104\101\103\097\114\046\032']=
'\084\114\097\110\115\102\101\114\032\099\111\110\102\105\114\109\101\100\046\032\079\112\101\110\032\116\104\101\032\104\117\098\032\111\110\032\097\114\114\105\118\097\108\046\032',['\067\097\110\099\101\108\097\100\111\046']='\067\097\110\099\101\108\101\100\046',[
'\065\032\108\105\099\101\110\099\097\032\101\120\112\105\114\111\117\046']='\089\111\117\114\032\097\099\099\101\115\115\032\101\120\112\105\114\101\100\046',[
'\076\105\099\101\110\099\097\032\101\120\112\105\114\097\100\097\046\032\086\097\108\105\100\101\032\117\109\097\032\107\101\121\032\097\116\105\118\097\032\112\097\114\097\032\099\111\110\116\105\110\117\097\114\046']=
'\065\099\099\101\115\115\032\101\120\112\105\114\101\100\046\032\069\110\116\101\114\032\097\032\118\097\108\105\100\032\107\101\121\032\116\111\032\099\111\110\116\105\110\117\101\046',[
'\076\105\099\101\110\099\097\032\101\120\112\105\114\097\100\097\059\032\114\111\116\105\110\097\115\032\112\097\117\115\097\100\097\115\046']='\065\099\099\101\115\115\032\101\120\112\105\114\101\100\046\032\082\111\117\116\105\110\101\115\032\112\097\117\115\101\100\046',[
'\067\097\112\105\116\117\108\111\032\050\032\099\111\110\099\108\117\105\100\111\059\032\114\111\116\105\110\097\115\032\112\097\117\115\097\100\097\115\046']=
'\067\104\097\112\116\101\114\032\073\073\032\099\111\109\112\108\101\116\101\046\032\082\111\117\116\105\110\101\115\032\112\097\117\115\101\100\046',[
'\082\111\116\105\110\097\032\112\097\117\115\097\100\097\046\032\082\101\097\116\105\118\101\032\112\097\114\097\032\116\101\110\116\097\114\032\110\111\118\097\109\101\110\116\101\046']=
'\082\111\117\116\105\110\101\032\112\097\117\115\101\100\046\032\084\117\114\110\032\105\116\032\098\097\099\107\032\111\110\032\116\111\032\114\101\116\114\121\046',['\065\116\097\108\104\111\032\099\097\110\099\101\108\097\100\111\046']=
'\083\104\111\114\116\099\117\116\032\099\097\110\099\101\108\101\100\046',['\065\116\097\108\104\111\032\097\116\117\097\108\105\122\097\100\111\046']='\083\104\111\114\116\099\117\116\032\117\112\100\097\116\101\100\046',[
"\080\114\101\115\115\105\111\110\101\032\117\109\097\032\116\101\099\108\097\032\112\097\114\097\032\111\032\097\116\097\108\104\111\059\032\069\115\099\032\099\097\110\099\101\108\097\032\101\032\066\097\099\107\115\112\097\099\101\032\114\101\109\111\118\101\046" ]=
'\080\114\101\115\115\032\097\032\107\101\121\032\116\111\032\098\105\110\100\046\032\069\115\099\032\099\097\110\099\101\108\115\032\097\110\100\032\066\097\099\107\115\112\097\099\101\032\099\108\101\097\114\115\046',[
"\085\115\101\032\111\115\032\099\111\110\116\114\111\108\101\115\032\112\111\114\032\116\111\113\117\101\059\032\097\116\097\108\104\111\115\032\115\097\111\032\111\112\099\105\111\110\097\105\115\032\112\097\114\097\032\116\101\099\108\097\100\111\046" ]=
'\085\115\101\032\116\111\117\099\104\032\099\111\110\116\114\111\108\115\046\032\075\101\121\098\111\097\114\100\032\115\104\111\114\116\099\117\116\115\032\097\114\101\032\111\112\116\105\111\110\097\108\046',[
'\069\100\105\099\097\111\032\100\101\032\097\116\097\108\104\111\032\099\097\110\099\101\108\097\100\097\046']='\083\104\111\114\116\099\117\116\032\101\100\105\116\105\110\103\032\099\097\110\099\101\108\101\100\046',[
'\080\097\117\115\097\100\111\032\112\101\108\111\032\112\097\105\110\101\108\046']='\080\097\117\115\101\100\032\102\114\111\109\032\116\104\101\032\112\097\110\101\108\046',['\080\097\117\115\097\100\111\032\112\101\108\111\032\097\116\097\108\104\111\046']=
'\080\097\117\115\101\100\032\098\121\032\115\104\111\114\116\099\117\116\046',['\080\097\117\115\097\100\111\032\112\111\114\032\101\110\116\114\097\100\097\032\109\097\110\117\097\108\032\100\101\032\109\111\118\105\109\101\110\116\111\046']=
'\080\097\117\115\101\100\032\098\121\032\109\097\110\117\097\108\032\109\111\118\101\109\101\110\116\046',['\080\101\114\115\111\110\097\103\101\109\032\114\101\099\097\114\114\101\103\097\100\111\059\032\114\111\116\105\110\097\115\032\112\097\117\115\097\100\097\115\046']=
'\067\104\097\114\097\099\116\101\114\032\114\101\115\112\097\119\110\101\100\046\032\082\111\117\116\105\110\101\115\032\112\097\117\115\101\100\046',[
"\079\032\114\101\115\102\114\105\097\109\101\110\116\111\032\102\097\122\032\112\097\114\116\101\032\100\111\032\065\117\116\111\032\080\114\111\103\114\101\115\115\046\032\080\097\117\115\101\032\111\032\099\105\099\108\111\032\112\097\114\097\032\100\101\115\108\105\103\097\045\108\111\046" ]=
"\067\111\111\108\105\110\103\032\105\115\032\112\097\114\116\032\111\102\032\065\117\116\111\032\080\114\111\103\114\101\115\115\046\032\080\097\117\115\101\032\116\104\101\032\099\121\099\108\101\032\116\111\032\116\117\114\110\032\105\116\032\111\102\102\046",[
'\085\109\097\032\109\101\108\104\111\114\105\097\032\106\097\032\101\115\116\097\032\110\097\032\102\105\108\097\046']='\065\110\032\117\112\103\114\097\100\101\032\105\115\032\097\108\114\101\097\100\121\032\113\117\101\117\101\100\046',[
'\080\114\105\111\114\105\100\097\100\101\032\100\101\032\109\105\115\115\097\111\032\114\101\109\111\118\105\100\097\046']='\081\117\101\115\116\032\112\114\105\111\114\105\116\121\032\099\108\101\097\114\101\100\046',[
'\079\032\106\111\103\111\032\106\097\032\099\111\110\102\105\114\109\111\117\032\101\115\115\097\032\109\105\115\115\097\111\046']='\084\104\101\032\103\097\109\101\032\104\097\115\032\097\108\114\101\097\100\121\032\099\111\110\102\105\114\109\101\100\032\116\104\105\115\032\113\117\101\115\116\046'
,['\079\098\106\101\116\105\118\111\032\115\101\109\032\114\111\116\097\032\097\117\116\111\109\097\116\105\099\097\032\099\111\110\102\105\114\109\097\100\097\046']=
'\084\104\105\115\032\111\098\106\101\099\116\105\118\101\032\114\101\113\117\105\114\101\115\032\109\097\110\117\097\108\032\112\108\097\121\046',[
'\077\105\115\115\097\111\032\099\111\110\099\108\117\105\100\097\046\032\086\111\108\116\097\110\100\111\032\097\111\032\065\117\116\111\032\080\114\111\103\114\101\115\115\032\110\111\114\109\097\108\046']=
'\081\117\101\115\116\032\099\111\109\112\108\101\116\101\046\032\082\101\115\117\109\105\110\103\032\110\111\114\109\097\108\032\065\117\116\111\032\080\114\111\103\114\101\115\115\046',['\077\101\108\104\111\114\105\097\032\099\111\110\102\105\114\109\097\100\097\046']=
'\085\112\103\114\097\100\101\032\099\111\110\102\105\114\109\101\100\046',['\077\101\108\104\111\114\105\097\032\110\097\111\032\099\111\110\102\105\114\109\097\100\097\046']='\085\112\103\114\097\100\101\032\117\110\099\111\110\102\105\114\109\101\100\046',[
'\079\032\082\111\098\108\111\120\032\114\101\099\117\115\111\117\032\097\032\118\111\108\116\097\032\097\111\032\108\111\098\098\121\046\032\082\101\116\111\114\110\101\032\109\097\110\117\097\108\109\101\110\116\101\046']=
'\082\111\098\108\111\120\032\100\101\099\108\105\110\101\100\032\116\104\101\032\114\101\116\117\114\110\032\116\111\032\116\104\101\032\108\111\098\098\121\046\032\082\101\116\117\114\110\032\109\097\110\117\097\108\108\121\046',[
'\079\032\114\101\108\097\116\111\114\105\111\032\102\105\110\097\108\032\110\097\111\032\099\104\101\103\111\117\046\032\086\111\108\116\101\032\097\111\032\108\111\098\098\121\032\109\097\110\117\097\108\109\101\110\116\101\046']=
"\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\115\104\111\119\032\116\104\101\032\114\101\115\117\108\116\115\046\032\082\101\116\117\114\110\032\116\111\032\116\104\101\032\108\111\098\098\121\032\109\097\110\117\097\108\108\121\046",[
'\065\032\118\111\108\116\097\032\097\117\116\111\109\097\116\105\099\097\032\102\097\108\104\111\117\046\032\082\101\116\111\114\110\101\032\097\111\032\108\111\098\098\121\032\112\101\108\111\032\106\111\103\111\046']=
"\084\104\101\032\097\117\116\111\109\097\116\105\099\032\114\101\116\117\114\110\032\102\097\105\108\101\100\046\032\085\115\101\032\116\104\101\032\103\097\109\101\039\115\032\099\111\110\116\114\111\108\115\032\116\111\032\114\101\116\117\114\110\046",[
'\079\032\082\111\098\108\111\120\032\110\097\111\032\099\111\110\102\105\114\109\111\117\032\097\032\118\111\108\116\097\032\097\111\032\108\111\098\098\121\046']=
'\082\111\098\108\111\120\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\116\104\101\032\114\101\116\117\114\110\032\116\111\032\116\104\101\032\108\111\098\098\121\046',[
'\079\032\082\111\098\108\111\120\032\110\097\111\032\099\111\110\102\105\114\109\111\117\032\097\032\114\101\099\111\110\101\120\097\111\046']='\082\111\098\108\111\120\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\116\104\101\032\114\101\099\111\110\110\101\099\116\046',[
"\079\032\104\117\098\032\110\097\111\032\101\110\099\111\110\116\114\111\117\032\111\032\108\111\098\098\121\032\110\101\109\032\097\032\097\114\101\097\032\100\101\032\112\097\114\116\105\100\097\046\032\065\103\117\097\114\100\101\032\111\032\109\097\112\097\032\101\032\101\120\101\099\117\116\101\032\110\111\118\097\109\101\110\116\101\046"
]=
"\084\104\101\032\104\117\098\032\099\111\117\108\100\032\110\111\116\032\102\105\110\100\032\116\104\101\032\108\111\098\098\121\032\111\114\032\109\097\116\099\104\046\032\087\097\105\116\032\102\111\114\032\116\104\101\032\109\097\112\032\097\110\100\032\108\097\117\110\099\104\032\105\116\032\097\103\097\105\110\046"
,['\070\097\108\104\097\032\100\101\032\101\120\101\099\117\099\097\111\059\032\099\111\110\116\114\111\108\101\115\032\114\101\115\116\097\117\114\097\100\111\115\046']=
'\084\104\101\032\114\111\117\116\105\110\101\032\102\097\105\108\101\100\046\032\067\111\110\116\114\111\108\115\032\114\101\115\116\111\114\101\100\046',['\065\108\118\111\032\115\101\108\101\099\105\111\110\097\100\111\058\032']=
'\084\097\114\103\101\116\032\115\101\108\101\099\116\101\100\058\032',['\067\108\097\115\115\101\032\101\110\099\111\110\116\114\097\100\097\058\032']='\067\108\097\115\115\032\102\111\117\110\100\058\032',[
'\083\101\109\032\103\105\114\111\115\032\103\114\097\116\117\105\116\111\115\046\032\u{da}\108\116\105\109\097\032\099\108\097\115\115\101\058\032']='\078\111\032\102\114\101\101\032\114\111\108\108\115\032\108\101\102\116\046\032\076\097\115\116\032\099\108\097\115\115\058\032',
['\077\101\108\104\111\114\105\097\032\100\101\032\108\111\098\098\121\032\099\111\110\102\105\114\109\097\100\097\058\032']='\076\111\098\098\121\032\117\112\103\114\097\100\101\032\099\111\110\102\105\114\109\101\100\058\032',['\080\114\105\111\114\105\100\097\100\101\058\032']=
'\080\114\105\111\114\105\116\121\058\032',['\083\111\108\105\099\105\116\097\100\097\032\109\101\108\104\111\114\105\097\032']='\085\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\032\102\111\114\032',[
'\079\032\082\111\098\108\111\120\032\114\101\099\117\115\111\117\032\097\032\114\101\099\111\110\101\120\097\111\046']='\082\111\098\108\111\120\032\100\101\099\108\105\110\101\100\032\116\104\101\032\114\101\099\111\110\110\101\099\116\046',[
'\076\105\109\105\116\101\032\100\101\032\114\101\099\111\110\101\120\111\101\115\032\097\116\105\110\103\105\100\111\046\032\065\098\114\097\032\111\032\106\111\103\111\032\110\111\118\097\109\101\110\116\101\046']=
'\082\101\099\111\110\110\101\099\116\032\108\105\109\105\116\032\114\101\097\099\104\101\100\046\032\082\101\111\112\101\110\032\116\104\101\032\103\097\109\101\046'}local function ac(ad)return aa.
language=='\101\110'and type(ad)=='\115\116\114\105\110\103'and ab[ad]or ad end local ad=(function()
local ad={}local function ae(af,...)for ag=1,select('\035',...)do if not af then
return nil end local ah=select(ag,...)af=af:FindFirstChild(ah)end return af end
function ad.stage(af)local ag=ae(af,'\077\097\112','\090\111\110\101\115','\077\097\116\099\104\109\097\107\105\110\103\090\111\110\101\115')local ah=
ae(af,'\077\097\112','\080\101\101\108\105\110\103\077\097\099\104\105\110\101\115')if ah or not ag and af:FindFirstChild('\080\111\116\097\116\111\080\105\108\101'
)then return'\099\104\097\112\116\101\114'end if ag then return'\108\111\098\098\121'end return nil end function ad.
deploy(af,ag)if not af.waitFor('\099\104\097\112\116\101\114',1)then if af.ready('\115\101\116\117\112')then return
false,'\083\097\105\097\032\100\097\032\102\105\108\097\032\097\116\117\097\108\032\112\097\114\097\032\115\101\108\101\099\105\111\110\097\114\032\111\032\067\097\112\105\116\117\108\111\032\073\073\046'end local ah,ai=af.
approach()if not ah then return false,ai end if not af.waitFor('\099\104\097\112\116\101\114',5)then
return false,'\079\032\106\111\103\111\032\110\097\111\032\097\098\114\105\117\032\111\032\115\101\108\101\116\111\114\032\100\111\032\099\097\112\105\116\117\108\111\046'end end local ah,ai=af.
click('\099\104\097\112\116\101\114')if not ah then return false,ai end if not af.waitFor('\115\101\116\117\112',5)
then return false,'\079\032\106\111\103\111\032\110\097\111\032\097\098\114\105\117\032\097\032\099\111\110\102\105\103\117\114\097\099\097\111\032\100\097\032\102\105\108\097\046'end ah,ai=af.click(
'\115\105\122\101')if not ah then return false,ai end for aj,ak in ipairs({{'\102\114\105\101\110\100\115',ag.
friends},{'\115\107\105\112',ag.skip}})do local al,am=ak[1],ak[2]local an=af.flag(al)if an==
nil then return false,'\079\032\101\115\116\097\100\111\032\100\097\032\111\112\099\097\111\032'..al..'\032\110\097\111\032\102\111\105\032\101\110\099\111\110\116\114\097\100\111\046'end if an
~=am then ah,ai=af.click(al)if not ah then return false,ai end if not af.
waitFor(al,2,am)then return false,'\079\032\106\111\103\111\032\110\097\111\032\099\111\110\102\105\114\109\111\117\032\097\032\111\112\099\097\111\032'..al..'\046'end
end end if not af.ready('\100\101\112\108\111\121')then return false,
'\079\032\098\111\116\097\111\032\068\069\080\076\079\089\032\110\097\111\032\101\115\116\097\032\100\105\115\112\111\110\105\118\101\108\046'end local aj,ak=af.arm(ag)ah,ai=af.click(
'\100\101\112\108\111\121')if not ah then return false,ai end if not af.waitFor('\116\114\097\110\115\102\101\114',25)then
return false,'\068\069\080\076\079\089\032\097\099\105\111\110\097\100\111\046\032\079\032\106\111\103\111\032\110\097\111\032\099\111\110\102\105\114\109\111\117\032\111\032\116\101\108\101\112\111\114\116\101\046'end return true
,aj and'\084\114\097\110\115\102\101\114\101\110\099\105\097\032\099\111\110\102\105\114\109\097\100\097\046\032\067\097\114\114\101\103\097\110\100\111\032\079\080\032\110\111\032\100\101\115\116\105\110\111\046'or(
'\084\114\097\110\115\102\101\114\101\110\099\105\097\032\099\111\110\102\105\114\109\097\100\097\046\032\065\098\114\097\032\111\032\104\117\098\032\097\111\032\099\104\101\103\097\114\046\032'..tostring(ak or''))end local
function af(ag,ah)local ai=ag.Workspace local aj=ae(ai,'\077\097\112','\090\111\110\101\115',
'\077\097\116\099\104\109\097\107\105\110\103\090\111\110\101\115')local ak=ae(ah.Character,'\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if not aj or not
ak then return nil end local al,am=nil,math.huge for an,ao in ipairs(aj:
GetChildren())do local ap=ao:FindFirstChild('\067\117\098\101')if not ap or not ap:IsA(
'\066\097\115\101\080\097\114\116')then continue end local aq=ae(ao,'\077\111\100\101\108','\080\097\114\116')local ar=ao:
GetAttribute('\081\117\101\117\101\083\116\097\116\101')or aq and aq:GetAttribute('\081\117\101\117\101\083\116\097\116\101')or ap:
GetAttribute('\081\117\101\117\101\083\116\097\116\101')local as=ar==nil or ar=='\069\109\112\116\121'if as then for at,au in
ipairs(ag.Players:GetPlayers())do local av=au~=ah and ae(au.Character,
'\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if av then local aw=ap.CFrame:PointToObjectSpace(av.Position)
local ax=ap.Size/2 if math.abs(aw.X)<=ax.X and math.abs(aw.Y)<=ax.Y+4 and math.
abs(aw.Z)<=ax.Z then as=false break end end end end local at=(ap.Position-ak.
Position).Magnitude if as and at<am then al,am=ap,at end end return al end
function ad.cratePlan(ag,ah)if not ag.autoCrates then return'\100\105\115\097\098\108\101\100',0 end
local ai=ag.crateCount*80 if type(ah)~='\110\117\109\098\101\114'then return'\117\110\107\110\111\119\110',ai end
return ah>=ai and'\114\101\097\100\121'or'\115\097\118\105\110\103',ai end function ad.open(ag,ah,ai,aj,ak,al,am,
an,ao,ap)local aq=ag.Players.LocalPlayer local ar=aq:WaitForChild('\080\108\097\121\101\114\071\117\105')
local as=am(an or ap.settings.settings)local at,au=false,false local av,aw=0,0
local ax=nil local ay=ar:FindFirstChild('\069\118\111\108\118\121\067\104\097\112\116\101\114\050\076\111\098\098\121')if ay then ay:
Destroy()end local az=Instance.new('\083\099\114\101\101\110\071\117\105')az.Name='\069\118\111\108\118\121\067\104\097\112\116\101\114\050\076\111\098\098\121'az.
ResetOnSpawn=false az.DisplayOrder=10001 az.Parent=ar ah.add(function()az:
Destroy()end)local aA={decorateLauncher=aa.decorateLauncher}local aB=ap.view(ag,
ah,az,aA)local function aC()aB.options(as,au,ax=='\117\112\103\114\097\100\101',ax=='\114\111\108\108')end local
function aD()ap.settings.save(am(as))end local function aE()aw+=1 ax=nil aC()end
local function aF(aG,aH)if au or ai.expired()then return end if ax then if ax==
aG then aE()aB.status('\082\111\116\105\110\097\032\112\097\117\115\097\100\097\046')else aB.status(
'\074\u{e1}\032\104\u{e1}\032\117\109\097\032\114\111\116\105\110\097\032\100\101\032\108\111\098\098\121\032\101\109\032\097\110\100\097\109\101\110\116\111\046')end return end aw+=1 ax=aG
aC()local aI=aw task.spawn(function()local function aJ()return ah.alive()and aI
==aw and not ai.expired()and not au end local aK,aL,aM=pcall(aH,aJ)if not aJ()
then return end aE()aB.status(aK and tostring(aM or aL)or
'\079\032\106\111\103\111\032\105\110\116\101\114\114\111\109\112\101\117\032\097\032\114\111\116\105\110\097\032\100\111\032\108\111\098\098\121\046')end)end local function aG()aE()av+=1 au=
false ak.stop()al.clear()aC()aB.status(at and
'\082\101\116\111\109\097\100\097\032\099\097\110\099\101\108\097\100\097\046\032\079\032\106\111\103\111\032\106\u{e1}\032\115\111\108\105\099\105\116\111\117\032\111\032\116\101\108\101\112\111\114\116\101\046'or
'\067\105\099\108\111\032\100\111\032\108\111\098\098\121\032\112\097\114\097\100\111\046')end aA.stop=aG aA.language=ap.language aA.size=function
()if not au then as.size=as.size%4+1 aD()aC()end end for aH,aI in ipairs({
'\102\114\105\101\110\100\115','\115\107\105\112','\115\107\105\112\079\117\116\114\111','\114\101\112\101\097\116\082\117\110','\097\117\116\111\067\114\097\116\101\115'})do aA[aI]=function()if
not au then as[aI]=not as[aI]aD()aC()end end end aA.crateCount=function(aH,aI)if
au or ax=='\099\114\097\116\101'then return end as.crateCount=aH if aI then aD()end aC()aB.
resources(ap.features.pumpkins(),aH,ap.features.gems())end aA.launcher=function(
aH,aI)as.launcherX,as.launcherY=aH,aI aD()end aA.openBatch=function()local aH=as
.crateCount aF('\099\114\097\116\101',function(aI)return ap.features.openBatch(aI,aH,aB.status)
end)end aA.autoImprove=function()aF('\117\112\103\114\097\100\101',function(aH)while aH()do local aI,
aJ=ap.features.upgrade(aH)aB.status(aJ)task.wait(aI and 1 or 4)end end)end local
function aH(aI)if au or ax=='\114\111\108\108'then return end for aJ,aK in ipairs(ap.
features.catalog())do if tostring(aK.id)==aI then as.classTarget=aI aD()aB.
status(ac('\065\108\118\111\032\115\101\108\101\099\105\111\110\097\100\111\058\032')..aK.name..'\046')return aK end end end aA.target=aH
aA.rarest=function()local aI=ap.rarest(ap.features.catalog())if aI then aH(
tostring(aI.id))else aB.status(
'\065\115\032\099\104\097\110\099\101\115\032\097\105\110\100\097\032\110\u{e3}\111\032\102\111\114\097\109\032\099\097\114\114\101\103\097\100\097\115\032\112\101\108\111\032\106\111\103\111\046')end end aA.roll=function
(aI)aF('\114\111\108\108',function(aJ)local aK=nil for aL,aM in ipairs(ap.features.catalog()
)do if tostring(aM.id)==as.classTarget then aK=aM break end end if not aK then
return false,'\069\115\099\111\108\104\097\032\117\109\097\032\099\108\097\115\115\101\032\110\097\032\098\097\114\114\097\046'end return ap.features.roll(aJ,aK,aI,
aB.status)end)end local aI=aq.OnTeleport:Connect(function(aI,aJ)if aJ==game.
PlaceId and(aI.Name=='\082\101\113\117\101\115\116\101\100\070\114\111\109\083\101\114\118\101\114'or aI.Name=='\083\116\097\114\116\101\100'or aI.Name==
'\073\110\080\114\111\103\114\101\115\115')then at=true end end)ah.add(function()aI:Disconnect()end)local aJ=
ag.TeleportService.TeleportInitFailed:Connect(function(aJ,aK,aL,aM)if aJ~=aq or
aM~=game.PlaceId or not au then return end at=false aG()aB.status(
"\079\032\082\111\098\108\111\120\032\114\101\099\117\115\111\117\032\111\032\116\101\108\101\112\111\114\116\101\046\032\083\097\105\097\032\100\097\032\102\105\108\097\032\097\116\117\097\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046")end)ah.
add(function()aJ:Disconnect()end)local function aL()if au or at or ai.expired()
then return end if ax then aB.status(
'\080\097\114\101\032\097\032\114\111\116\105\110\097\032\100\101\032\108\111\098\098\121\032\097\110\116\101\115\032\100\101\032\101\110\116\114\097\114\032\110\097\032\102\105\108\097\046')return end au=true av+=1 aC()
local aM=av local aN=am(as)local function aO()return ah.alive()and av==aM and
not ai.expired()end local function aP(aQ)local aR=ar:FindFirstChild('\081\117\101\117\101')if
aQ=='\099\104\097\112\116\101\114'then return ae(aR,'\067\104\097\112\116\101\114\083\101\108\101\099\116','\067\111\110\116\101\110\116','\067\104\097\112\116\101\114\115','\067\072\065\080\084\069\082\032\050')
end local aS=ae(aR,'\083\101\116\117\112','\067\111\110\116\101\110\116')if aQ=='\115\105\122\101'then return ae(aS,'\083\105\122\101\115',
tostring(aN.size))end if aQ=='\102\114\105\101\110\100\115'then return ae(aS,'\079\112\116\105\111\110\115','\070\114\105\101\110\100\115\079\110\108\121')
end if aQ=='\115\107\105\112'then return ae(aS,'\079\112\116\105\111\110\115','\083\107\105\112\073\110\116\114\111')end if aQ=='\100\101\112\108\111\121'or
aQ=='\115\101\116\117\112'then return ae(aS,'\067\114\101\097\116\101\072\111\108\100\101\114','\067\114\101\097\116\101')end end local function aQ(
aR)local aS=aP(aR)local aT=aS and aS:FindFirstChild('\067\104\101\099\107',true)if aT and aT:
IsA('\071\117\105\079\098\106\101\099\116')then return aT.Visible end end local function aR(aS)if aS==
'\116\114\097\110\115\102\101\114'then return at end local aT=aP(aS)return aT and aT:IsA('\071\117\105\066\117\116\116\111\110')and
aT.Active and aj.visible(aT)end local function aS(aT,aU,aV)local aW=os.clock()+
aU while aO()and os.clock()<aW do if aV~=nil then if aQ(aT)==aV then return true
end elseif aR(aT)then return true end task.wait(0.1)end return false end task.
spawn(function()local aT,aU,aV=pcall(function()if aN.autoCrates then local aT=ap
.features.pumpkins()local aU=os.clock()+3 while aT==nil and aO()and os.clock()<
aU do task.wait(0.25)aT=ap.features.pumpkins()end local aV,aW=ad.cratePlan(aN,aT
)if aV=='\114\101\097\100\121'then aB.status('\065\098\114\105\110\100\111\032\111\032\108\111\116\101\032\097\110\116\101\115\032\100\101\032\101\110\116\114\097\114\032\110\097\032\102\105\108\097\u{2026}')
local aX,aY=ap.features.openBatch(aO,aN.crateCount,aB.status)if not aX then
return false,aY end elseif aV=='\115\097\118\105\110\103'then aB.status(string.format(ac(
'\074\117\110\116\097\110\100\111\032\097\098\u{f3}\098\111\114\097\115\032\112\097\114\097\032\111\032\108\111\116\101\058\032\037\100\047\037\100\046'),aT,aW))end end if not aO()then
return false,'\067\097\110\099\101\108\097\100\111\046'end aB.status(
'\076\111\099\097\108\105\122\097\110\100\111\032\097\032\102\105\108\097\032\100\111\032\067\097\112\u{ed}\116\117\108\111\032\073\073\u{2026}')return ad.deploy({ready=aR,flag
=aQ,waitFor=aS,approach=function()local aT=af(ag,aq)if not aT then return false,
'\078\101\110\104\117\109\097\032\u{e1}\114\101\097\032\100\101\032\102\105\108\097\032\108\105\118\114\101\046\032\069\110\116\114\101\032\101\109\032\117\109\097\032\u{e1}\114\101\097\032\118\097\122\105\097\032\109\097\110\117\097\108\109\101\110\116\101\046'end
local aU=aT.Position-Vector3.new(0,aT.Size.Y/2,0)local aV,aW=ak.goTo(aU,function
()return aO()and not aR('\099\104\097\112\116\101\114')end)if aR('\099\104\097\112\116\101\114')then return true end
return aV,aW end,click=function(aT)if not aO()then return false,'\067\097\110\099\101\108\097\100\111\046'end
if aT=='\100\101\112\108\111\121'then aB.status('\068\069\080\076\079\089\032\097\099\105\111\110\097\100\111\046\032\065\103\117\097\114\100\097\110\100\111\032\111\032\106\111\103\111\u{2026}')end
local aU,aV=aj.activate(aP(aT))return aU,aV end,arm=function(aT)if not aO()then
return false,'\067\097\110\099\101\108\097\100\111\046'end local aU,aV=al.arm('\099\104\097\112\116\101\114',aT)return aU,aV end},
aN)end)if not aO()then return end if not aT or not aU then al.clear()au=false
aC()end aB.status(aT and tostring(aV)or'\070\097\108\104\097\032\110\111\032\108\111\098\098\121\046\032\084\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046')end)
end aA.launch=aL aA.cycle=function()if au or at then return end as.repeatRun=
true as.reconnectCount=0 aD()aC()aL()end ap.watch(function()return au and as.
repeatRun and not at end,function(aM)av+=1 ak.stop()aB.status(string.format(ac(
'\067\111\110\101\120\u{e3}\111\032\112\101\114\100\105\100\097\032\040\037\115\041\046\032\084\101\110\116\097\110\100\111\032\118\111\108\116\097\114\032\097\111\032\108\111\098\098\121\u{2026}'),aM))local aN,aO=
ap.reconnect(as)if not aN then au=false aC()aB.status(aO)return end local aP=av
task.delay(25,function()if ah.alive()and av==aP and au and not at then aG()aB.
status('\079\032\082\111\098\108\111\120\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\097\032\114\101\099\111\110\101\120\u{e3}\111\046')end end)end)ap.idle(
function()return au or ax~=nil end)aC()task.spawn(function()while ah.alive()do
aB.resources(ap.features.pumpkins(),as.crateCount,ap.features.gems())if aB.
showingClasses()then local aM,aN=ap.features.classState()aB.classes(ap.features.
catalog(),as.classTarget,aM,aN)end task.wait(1.2)end end)if ao then task.defer(
aL)end end return ad end)()local ae=(function()local ae={}ae.CRATE_COST=80 local
function af(ag,...)for ah=1,select('\035',...)do if not ag then return nil end
local ai=select(ah,...)ag=ag:FindFirstChild(ai)end return ag end function ae.
uniqueButton(ag,...)local ah=ag and{ag}or{}for ai=1,select('\035',...)do local aj=
select(ai,...)local ak={}for al,am in ipairs(ah)do for an,ao in ipairs(am:
GetChildren())do if ao.Name==aj then table.insert(ak,ao)end end end ah=ak if#ah
==0 then return nil end end if#ah==1 and ah[1]:IsA('\071\117\105\066\117\116\116\111\110')and ah[1].Active
then return ah[1]end end local function ag(ah)return type(ah)=='\115\116\114\105\110\103'and ah:
lower():gsub('\091\094\037\119\093','')or''end local ah={['\050\120\108\117\099\107']=true,['\108\117\099\107\050\120']=true,[
'\120\050\108\117\099\107']=true,doubleluck=true,['\050\120\099\108\097\115\115\108\117\099\107']=true,fastclassspin=true,
fastclassspins=true,stopat=true,classstopat=true,stopatclass=true}function ae.
isClass(ai)return not ah[ag(ai)]end function ae.matchesTarget(ai,aj)local ak=ag(
aj)return ak~=''and(ak==ag(ai.name)or ak==ag(ai.id))end function ae.rarest(ai)
local aj=nil for ak,al in ipairs(ai)do if type(al.chance)=='\110\117\109\098\101\114'and al.chance
>0 and(not aj or al.chance<aj.chance)then aj=al end end return aj end function
ae.confirmCrate(ai,aj,ak)return type(ai)=='\110\117\109\098\101\114'and aj==ai-ae.CRATE_COST and
ak==true end function ae.offerAmount(ai)local aj=ai:gsub('\060\046\045\062','')local ak=aj:
match('\094\037\115\042\040\091\037\100\093\091\037\100\044\046\093\042\041\037\115\042\036')or aj:match('\037\102\091\037\100\093\040\091\037\100\093\091\037\100\044\046\093\042\041\037\102\091\094\037\100\093')if not ak
then return nil end local al=aj:gsub(ak:gsub('\040\091\094\037\119\093\041','\037\037\037\049'),'',1)if al:find(
'\037\100')or al:find('\037\037')then return nil end if ak:find('\091\044\046\093')and not ak:match(
'\094\037\100\037\100\063\037\100\063\091\044\046\093\037\100\037\100\037\100\036')then return nil end local am=tonumber((ak:gsub('\091\044\046\093','')
))return am and am>0 and am or nil end function ae.crateAmount(ai)local aj=ai:
gsub('\060\046\045\062',''):upper()local ak=aj:match('\094\037\115\042\040\037\100\043\041\037\115\043\070\082\069\069\037\115\043\048\037\115\042\091\088\u{d7}\093\037\115\042\036')
return tonumber(ak)or ae.offerAmount(aj)end function ae.singleSpinPrice(ai)local
aj=ai:gsub('\060\046\045\062',''):upper()if aj:match('\037\102\091\037\100\093\091\050\045\057\093\037\115\043\067\076\065\083\083\037\115\043\083\080\073\078\083\063')or aj:
match('\037\102\091\037\100\093\037\100\037\100\043\037\115\043\067\076\065\083\083\037\115\043\083\080\073\078\083\063')then return nil end return ae.offerAmount((
aj:gsub('\037\102\091\037\100\093\049\037\115\043\067\076\065\083\083\037\115\043\083\080\073\078\083\063','',1)))end function ae.isGemOffer(ai,aj,ak,al
)return type(aj)=='\110\117\109\098\101\114'and aj>0 and(al==true or ak==true and aj==40 and ai:
match('\094\037\115\042\052\048\037\115\042\036')~=nil)end function ae.nativeRollPrice(ai)local aj=ai:gsub(
'\060\046\045\062','')if not aj:match('\094\037\115\042\091\037\100\093\091\037\100\044\046\093\042\037\115\042\036')then return nil end return ae.
offerAmount(aj)end function ae.confirmRoll(ai,aj,ak,al,am)return type(ai)==
'\110\117\109\098\101\114'and type(aj)=='\110\117\109\098\101\114'and am==true and(al and type(ak)=='\110\117\109\098\101\114'and ak>0
and aj==ai-ak or not al and aj==ai-1)end function ae.create(ai,aj,ak,al)local am
=ai.Players.LocalPlayer local an=am:WaitForChild('\080\108\097\121\101\114\071\117\105')local ao=ai.
ReplicatedStorage local ap=nil local aq=nil local ar=0 local as=0 local at={}
local au=nil local av=nil local function aw(ax)if type(ax)=='\110\117\109\098\101\114'and ax>0
then return'\114\098\120\097\115\115\101\116\105\100\058\047\047'..string.format('\037\046\048\102',ax)end if type(ax)~='\115\116\114\105\110\103'or
ax==''then return nil end if ax:match('\094\037\100\043\036')then return'\114\098\120\097\115\115\101\116\105\100\058\047\047'..ax end
if ax:match('\094\114\098\120\097\115\115\101\116')or ax:match('\094\104\116\116\112\115\063\058\047\047')then return ax end end local
function ax(ay)return ay:IsA('\073\109\097\103\101\076\097\098\101\108')or ay:IsA('\073\109\097\103\101\066\117\116\116\111\110')or ay:IsA(
'\068\101\099\097\108')end local function ay(az)if not az or not az:IsA('\077\111\100\117\108\101\083\099\114\105\112\116')then
return nil end local aA,aB=pcall(require,az)return aA and type(aB)=='\116\097\098\108\101'and
aB or nil end task.spawn(function()ap=ay(af(ao,'\083\104\097\114\101\100','\080\108\097\121\101\114\083\116\097\116\101\083\104\097\114\101\100'))
local az=ay(af(ao,'\077\111\100\117\108\101\115','\082\101\115\111\117\114\099\101\115','\080\097\099\107\101\116\115'))aq=az local aA=az and az.
ClassRolled and az.ClassRolled.OnClientEvent if aA and type(aA.Connect)==
'\102\117\110\099\116\105\111\110'then local aB,aC=pcall(aA.Connect,aA,function()ar+=1 end)if aB and aC
then al.add(function()aC:Disconnect()end)end end local aB=az and az.CrateOpened
and az.CrateOpened.OnClientEvent if aB and type(aB.Connect)=='\102\117\110\099\116\105\111\110'then
local aC,aD=pcall(aB.Connect,aB,function()as+=1 end)if aC and aD then al.add(
function()aD:Disconnect()end)end end local aC=ay(af(ao,'\083\104\097\114\101\100','\067\108\097\115\115\083\104\097\114\101\100'))
or ay(af(ao,'\083\104\097\114\101\100','\067\108\097\115\115\101\115\083\104\097\114\101\100'))or ay(af(ao,'\077\111\100\117\108\101\115','\082\101\115\111\117\114\099\101\115',
'\067\108\097\115\115\101\115'))or ay(af(ao,'\077\111\100\117\108\101\115','\082\101\115\111\117\114\099\101\115','\067\108\097\115\115\067\111\110\102\105\103'))local aD=aC and(aC.
Classes or aC.Definitions or aC.List or aC)for aE,aF in pairs(aD or{})do if
type(aF)=='\116\097\098\108\101'then local aG=aF.Name or aF.DisplayName or(type(aE)=='\115\116\114\105\110\103'
and aE)local aH=aF.Chance or aF.Weight or aF.Probability if type(aG)=='\115\116\114\105\110\103'
and(type(aH)=='\110\117\109\098\101\114'or aF.Id~=nil)then local aI=aw(aF.Icon or aF.IconId or aF.
Image or aF.ImageId or aF.Thumbnail or aF.Texture)table.insert(at,{name=aG,id=aF
.Id or aG,chance=aH,icon=aI})end end end end)local function az()if not ap or
type(ap.TryGetPlayerState)~='\102\117\110\099\116\105\111\110'then return nil end local aA,aB=pcall(ap.
TryGetPlayerState,am)if aA and type(aB)=='\116\097\098\108\101'then return aB end aA,aB=pcall(
ap.TryGetPlayerState,am.UserId)if aA and type(aB)=='\116\097\098\108\101'then return aB end end
local function aA(aB)return type(aB)=='\110\117\109\098\101\114'and aB>=0 and aB or nil end local
function aB()local aC=az()local aD=aC and aC.SaveData local aE=af(an,'\068\105\097\109\111\110\100\115',
'\067\111\117\110\116\101\114','\086\097\108\117\101')or af(an,'\071\101\109\115','\067\111\117\110\116\101\114','\086\097\108\117\101')local aF=aE and aE:IsA(
'\084\101\120\116\076\097\098\101\108')and aE.Text:match('\094\037\115\042\040\091\037\100\044\037\046\093\043\041\037\115\042\036')return aA(aC and(aC.Diamonds
or aC.Gems))or aA(aD and(aD.Diamonds or aD.Gems))or aF and tonumber((aF:gsub(
'\091\044\046\093','')))or nil end local function aC()local aD=az()local aE=aD and aD.
SaveData local aF=af(an,'\080\117\109\112\107\105\110\115','\067\111\117\110\116\101\114','\086\097\108\117\101')or af(an,'\080\117\109\112\107\105\110\115','\086\097\108\117\101'
)local aG=aF and aF:IsA('\084\101\120\116\076\097\098\101\108')and aF.Text:match('\094\037\115\042\040\091\037\100\044\037\046\093\043\041\037\115\042\036')
return aA(aE and aE.Pumpkins)or aA(aD and aD.Pumpkins)or aG and tonumber((aG:
gsub('\091\044\046\093','')))or nil end local function aD()local aE=az()local aF=aE and aE.
SaveData if type(aF)~='\116\097\098\108\101'then return nil,nil end local aG=aF.ActiveClassSlot
==2 and aF.ClassSlot2 or aF.Class return type(aG)=='\115\116\114\105\110\103'and aG or nil,aA(aF.
FreeRolls)end local function aE(aF)local aG=tostring(aF):upper()return aG:find(
'\082\079\066\085\088',1,true)or aG:find('\082\036',1,true)or aG:find('\080\082\069\077\073\085\077',1,true)or aG:find(
'\080\082\079\068\085\067\084',1,true)or aG:find('\071\065\077\069\080\065\083\083',1,true)end local function aF(aG)local aH,
aI={},{}local function aJ(aL)if aL~=''and not aI[aL]then aI[aL]=true table.
insert(aH,aL)end end if aG:IsA('\084\101\120\116\066\117\116\116\111\110')then aJ(aG.Text)end for aL,aM in
ipairs(aG:GetDescendants())do if aM:IsA('\084\101\120\116\076\097\098\101\108')and aj.visible(aM)then aJ(aM
.Text)end end return table.concat(aH,'\032'):gsub('\060\046\045\062','')end local function aG(
aH,aI,aJ)local aL={}for aM,aN in ipairs(aH and aH:GetDescendants()or{})do if aN:
IsA('\071\117\105\066\117\116\116\111\110')and aN.Active and(not aJ or aj.visible(aN))then local aO=aj.
texts(aN)if not aE(aO..'\032'..aN.Name)and aI(aN,aO)then table.insert(aL,aN)end end
end return aL end local function aH(aI,aJ,aL)local aM=os.clock()+aJ repeat if
not aI()then return false end if aL()then return true end task.wait(0.13)until
os.clock()>=aM return false end local function aI(aJ)if aJ:IsA('\073\109\097\103\101\076\097\098\101\108')or
aJ:IsA('\073\109\097\103\101\066\117\116\116\111\110')then return aw(aJ.Image),aJ.ImageRectOffset,aJ.
ImageRectSize end if aJ:IsA('\068\101\099\097\108')then return aw(aJ.Texture)end end local
function aJ()local aL,aM={},{}local function aN(aO)local aP=ag(aO.name)if aP==''
or aM[aP]or not ae.isClass(aO.name)or not ae.isClass(aO.id)then return end aM[aP
]=aO table.insert(aL,aO)end for aO,aP in ipairs(at)do aN(table.clone(aP))end
local aO=an:FindFirstChild('\067\108\097\115\115\101\115')for aP,aQ in ipairs(aO and aO:
GetDescendants()or{})do if not(aQ:IsA('\084\101\120\116\076\097\098\101\108')or aQ:IsA('\084\101\120\116\066\117\116\116\111\110'))then
continue end local aR=aQ.Text:gsub('\060\046\045\062','')if not ae.isClass(aR)then continue
end local aS=aQ while aS and aS~=aO and ae.isClass(aS.Name)do aS=aS.Parent end
if aS~=aO then continue end local aT=aM[ag(aR)]local aU=aQ.Parent local aV=ag(aQ
.Name)local aW=aV=='\099\108\097\115\115\110\097\109\101'or aV=='\116\105\116\108\101'or aV=='\110\097\109\101'for aX=1,2 do if not aU
or aU==aO then break end local aY,aZ,a_,a0=nil,nil,nil,nil local a1=0 for a2,a3
in ipairs(aU:GetDescendants())do if a3:IsA('\084\101\120\116\076\097\098\101\108')and not aY then local a4=
a3.Text:match('\040\091\037\100\046\044\093\043\041\037\115\042\037\037')aY=a4 and tonumber((a4:gsub('\044','\046')))elseif ax(
a3)then local a4=ag(a3.Name)if a4=='\099\108\097\115\115\105\099\111\110'or a4=='\112\111\114\116\114\097\105\116'or a4=='\105\099\111\110'or
a4=='\105\109\097\103\101'or a4=='\099\108\097\115\115\105\109\097\103\101'then local a5,a6,a7=aI(a3)if a5 then aZ,a_,a0=a5,
a6,a7 a1+=1 end end end end if not aT and aY and aW then aT={name=aR,id=aR,
chance=aY}aN(aT)end if aT and aZ and a1==1 then aT.icon,aT.iconOffset,aT.
iconSize=aZ,a_,a0 break end aU=aU.Parent end end local aP=af(ao,'\065\115\115\101\116\115',
'\067\108\097\115\115\101\115')or af(ao,'\065\115\115\101\116\115','\067\108\097\115\115\073\099\111\110\115')if aP then for aQ,aR in ipairs(aP:
GetChildren())do local aS=aM[ag(aR.Name)]if aS and not aS.icon then local aT=ax(
aR)and aR or aR:FindFirstChildWhichIsA('\073\109\097\103\101\076\097\098\101\108',true)or aR:
FindFirstChildWhichIsA('\068\101\099\097\108',true)if aT then aS.icon,aS.iconOffset,aS.iconSize
=aI(aT)end end end end table.sort(aL,function(aQ,aR)if aQ.chance==aR.chance then
return aQ.name<aR.name end return(aQ.chance or 0)>(aR.chance or 0)end)return aL
end local function aL(aM,aN,aO)local aP=ag(aM.Name..'\032'..aj.texts(aM))for aQ,aR
in ipairs(aN)do if aP:find(aR,1,true)then return true end end local aQ=af(an,aO,
'\067\111\117\110\116\101\114','\073\099\111\110')or af(an,aO,'\073\099\111\110')local aR=aQ and aI(aQ)if not aR then return
false end for aS,aT in ipairs(aM:GetDescendants())do if aI(aT)==aR then return
true end end return false end local function aM(aN,aO,aP)aP=aP or ae.offerAmount
local aQ=nil for aR,aS in ipairs(aN:GetDescendants())do local aT=ag(aS.Name)if
aS:IsA('\084\101\120\116\076\097\098\101\108')and aj.visible(aS)and(aT=='\112\114\105\099\101'or aT=='\099\111\115\116'or aT=='\097\109\111\117\110\116'
)then local aU=aP(aS.Text)if aQ and aU and aU~=aQ then return nil end aQ=aU or
aQ end end return aQ or aP(aO)end local function aN(aO,aP)local aQ=ae.
uniqueButton(aO,'\067\111\110\116\101\110\116','\066\117\116\116\111\110\115','\082\111\108\108')if aQ then local aR=aj.visible(aQ)and
aF(aQ)or aj.texts(aQ)if aR==''then aR=aj.texts(aQ)end if not aE(aR)then local aS
=ae.nativeRollPrice(aR)local aT=ag(aR)if aP and aS or not aP and(aT:find('\102\114\101\101',
1,true)or aT:find('\103\114\097\116\105',1,true))then return{button=aQ,price=aS,headless=not aj
.visible(aQ)}end end end local aR,aS={},{}local aT=af(aO,'\067\104\111\105\099\101','\083\105\110\103\108\101')local
aU=af(aO,'\067\111\110\116\101\110\116','\066\117\116\116\111\110\115')for aV,aW in ipairs(aO and aO:GetDescendants()or{})
do if not aW:IsA('\071\117\105\066\117\116\116\111\110')or not aW.Active or aP and not aj.visible(aW)then
continue end local aX=aP and aF(aW)or aj.texts(aW)if aE(aX..'\032'..aW.Name)then
continue end local aY=ag(aW.Name..'\032'..aX)local aZ=aU and aW:IsDescendantOf(aU)
local a_=aY:find('\114\111\108\108',1,true)or aY:find('\115\112\105\110',1,true)or aY:find('\103\105\114\097\114',1,
true)or aY:find('\114\111\108\097\114',1,true)local a0=aW.Name=='\066\117\110\100\108\101'or aY:find('\114\111\108\108\120',1,
true)or aY:find('\115\112\105\110\098\117\110\100\108\101',1,true)local a1=aL(aW,{'\103\101\109','\100\105\097\109\111\110\100','\103\101\109\097',
'\100\105\097\109\097\110\116\101'},'\068\105\097\109\111\110\100\115')or aL(aW,{},'\071\101\109\115')local a2=aY:find('\102\114\101\101',1,true)or aY:
find('\103\114\097\116\105',1,true)local a3=aM(aW,aX,aW==aT and ae.singleSpinPrice or nil)if
not a0 and(a_ or aZ or aW==aT)and(aP and not a2 and ae.isGemOffer(aX,a3,aZ,a1)or
not aP and not a1 and(a2 or aZ and a_ and not a3))then local a4=aZ and aS or aR
table.insert(a4,{button=aW,price=a3,free=a2})end end if#aS>0 then aR=aS end if
not aP and#aR>1 then local aV={}for aW,aX in ipairs(aR)do if aX.free then table.
insert(aV,aX)end end aR=aV end if#aR==1 then return aR[1]end end local function
aO(aP,aQ,aR,aS)av=nil if type(aQ)~='\116\097\098\108\101'or ag(aQ.name)==''then return false,
'\069\115\099\111\108\104\097\032\117\109\097\032\099\108\097\115\115\101\032\110\097\032\098\097\114\114\097\046'end local aT=0 while aP()do local aU,aV=aD()if not
aU or not aR and aV==nil then return false,
'\079\032\101\115\116\097\100\111\032\100\111\115\032\103\105\114\111\115\032\097\105\110\100\097\032\110\u{e3}\111\032\101\115\116\u{e1}\032\100\105\115\112\111\110\u{ed}\118\101\108\046'end if ae.
matchesTarget(aQ,aU)then return true,ac('\067\108\097\115\115\101\032\101\110\099\111\110\116\114\097\100\097\058\032')..aU..'\046'end if
not aR and aV<=0 then return true,ac('\083\101\109\032\103\105\114\111\115\032\103\114\097\116\117\105\116\111\115\046\032\u{da}\108\116\105\109\097\032\099\108\097\115\115\101\058\032'
)..aU..'\046'end local aW if not aH(aP,18,function()aW=aN(an:FindFirstChild(
'\067\108\097\115\115\101\115'),aR)return aW~=nil end)then if not aP()then return true,
'\082\111\108\097\103\101\109\032\112\097\117\115\097\100\097\046'end return false,aR and
'\079\032\103\105\114\111\032\099\111\109\032\112\114\101\u{e7}\111\032\101\109\032\103\101\109\097\115\032\110\u{e3}\111\032\102\111\105\032\105\100\101\110\116\105\102\105\099\097\100\111\046\032\065\098\114\097\032\067\108\097\115\115\101\115\032\110\111\032\106\111\103\111\046'
or'\079\032\103\105\114\111\032\103\114\097\116\117\105\116\111\032\110\u{e3}\111\032\102\111\105\032\105\100\101\110\116\105\102\105\099\097\100\111\046\032\065\098\114\097\032\067\108\097\115\115\101\115\032\110\111\032\106\111\103\111\046'end aU,aV=
aD()if aU and ae.matchesTarget(aQ,aU)then return true,ac('\067\108\097\115\115\101\032\101\110\099\111\110\116\114\097\100\097\058\032')
..aU..'\046'end local aX=aV if aR then aX=aB()end if aX==nil then return false,
'\065\103\117\097\114\100\097\110\100\111\032\111\032\115\097\108\100\111\032\100\101\032\103\101\109\097\115\032\100\111\032\106\111\103\111\046'end if not aR and aX<=0 then return true,
'\083\101\109\032\103\105\114\111\115\032\103\114\097\116\117\105\116\111\115\046'end if aR and aX<aW.price then return true,
'\071\101\109\097\115\032\105\110\115\117\102\105\099\105\101\110\116\101\115\032\112\097\114\097\032\111\032\112\114\u{f3}\120\105\109\111\032\103\105\114\111\046'end local aY=ar av=aW.button:
GetFullName()local aZ,a_=aj.activate(aW.button,aW.headless or not aR)if not aZ
then return false,a_ end local a0=nil local a1=nil if not aH(aP,12,function()
local a2,a3=aD()local a4=a3 if aR then a4=aB()end if not ae.confirmRoll(aX,a4,aW
.price,aR,true)then return false end local a5=os.clock()a1=a1 or a5 if a2 and(ar
>aY or a2~=aU or a5-a1>=3 and aN(an:FindFirstChild('\067\108\097\115\115\101\115'),aR))then a0=a2
return true end return false end)then if not aP()then return true,
'\082\111\108\097\103\101\109\032\112\097\117\115\097\100\097\046'end return false,a1 and
'\079\032\103\105\114\111\032\102\111\105\032\100\101\098\105\116\097\100\111\044\032\109\097\115\032\111\032\112\114\u{f3}\120\105\109\111\032\097\105\110\100\097\032\110\u{e3}\111\032\102\111\105\032\108\105\098\101\114\097\100\111\046'or
'\079\032\106\111\103\111\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\111\032\100\u{e9}\098\105\116\111\046\032\082\111\108\097\103\101\109\032\112\097\114\097\100\097\046'end aT+=1 aS(string.
format(ac('\071\105\114\111\032\037\100\032\099\111\110\102\105\114\109\097\100\111\058\032\037\115'),aT,tostring(a0)))if ae.matchesTarget(aQ,a0)
then return true,ac('\067\108\097\115\115\101\032\101\110\099\111\110\116\114\097\100\097\058\032')..a0..'\046'end task.wait(0.7)end return
true,'\082\111\108\097\103\101\109\032\112\097\117\115\097\100\097\046'end local function aP(aQ)local aR=af(an,'\076\111\098\098\121\085\112\103\114\097\100\101\115',
'\080\097\110\101\108','\067\111\110\116\101\110\116','\085\112\103\114\097\100\101\115')local aS=aB()if not aR or aS==nil then return false
,"\065\098\114\097\032\097\115\032\109\101\108\104\111\114\105\097\115\032\100\111\032\108\111\098\098\121\032\117\109\097\032\118\101\122\032\112\097\114\097\032\099\097\114\114\101\103\097\114\032\112\114\101\099\111\115\032\101\032\103\101\109\097\115\046"end local
aT=nil for aU,aV in ipairs(aR:GetChildren())do local aW=aV:FindFirstChild(
'\085\112\103\114\097\100\101')if aW and aW:IsA('\071\117\105\066\117\116\116\111\110')and aW.Active then local aX=aj.texts(aW)
local aY=nil if not aE(aX)and aX:match('\094\037\115\042\091\037\100\044\037\046\037\115\093\043\036')then for aZ in aX:
gmatch('\091\037\100\044\037\046\093\043')do local a_=tonumber((aZ:gsub('\091\044\046\093','')))if not a_ or aY and
a_~=aY then aY=nil break end aY=a_ end end if aY and aY>0 and aY<=aS and(not aT
or aY<aT.price)then aT={button=aW,price=aY,name=aV.Name,text=aX}end end end if
not aT then return false,'\083\101\109\032\109\101\108\104\111\114\105\097\032\097\099\101\115\115\105\118\101\108\032\099\111\109\032\097\115\032\103\101\109\097\115\032\097\116\117\097\105\115\046'end local
aU,aV=aj.activate(aT.button,true)if not aU then return false,aV end if not aH(aQ
,3,function()local aW=aB()return aW and aW<aS or aT.button.Parent and aj.texts(
aT.button)~=aT.text end)then return false,
'\079\032\106\111\103\111\032\110\097\111\032\099\111\110\102\105\114\109\111\117\032\097\032\109\101\108\104\111\114\105\097\032\100\101\032\108\111\098\098\121\046'end return true,ac(
'\077\101\108\104\111\114\105\097\032\100\101\032\108\111\098\098\121\032\099\111\110\102\105\114\109\097\100\097\058\032')..aT.name..'\046',aT.name end local function aQ(aR
)local aS=ag(aR)return aS:find('\112\117\109\112\107\105\110',1,true)or aS:find('\104\097\108\108\111\119\101\101\110',1,true)or
aS:find('\097\098\111\098\111\114\097',1,true)or aS:find('\101\118\101\110\116\099\114\097\116\101',1,true)or aS:find(
'\099\097\105\120\097\100\111\101\118\101\110\116\111',1,true)end local function aR()local aS=an:FindFirstChild(
'\067\114\097\116\101\115')return aG(aS,function(aT,aU)local aV=ag(aT.Name)local aW=ag(aU)local aX
=aT.Parent local aY=aV:find('\111\112\101\110',1,true)or aV:find('\098\117\121',1,true)or aV:find(
'\112\117\114\099\104\097\115\101',1,true)or aW:find('\111\112\101\110',1,true)or aW:find('\097\098\114\105\114',1,true)or aW:find(
'\099\111\109\112\114\097\114',1,true)local aZ=aM(aT,aU)local a_=aL(aT,{'\112\117\109\112\107\105\110','\097\098\111\098\111\114\097'},
'\080\117\109\112\107\105\110\115')if aX and aX~=aS then for a0,a1 in ipairs(aX:GetChildren())do if a1:
IsA('\084\101\120\116\076\097\098\101\108')and aj.visible(a1)then local a2=ag(a1.Name)if not aZ and(a2:
find('\112\114\105\099\101',1,true)or a2:find('\099\111\115\116',1,true))then aZ=ae.offerAmount(a1.Text)end
a_=a_ or aQ(a1.Text)end end a_=a_ or aQ(aX.Name)end local a0=aV:match(
'\094\111\112\101\110\037\100\043\036')or aW:match('\111\112\101\110\120\037\100')or aW:match('\097\098\114\105\114\120\037\100')or aW:match('\120\037\100\043\111\112\101\110')
return not a0 and aZ==ae.CRATE_COST and(aY or a_)and(a_ or aQ(aT.Name))end,true)
end local function aS()return af(ai.Workspace,'\077\097\112','\090\111\110\101\115','\072\097\108\108\111\119\101\101\110\090\111\110\101')end
local function aT()local aU=ae.uniqueButton(an:FindFirstChild('\067\114\097\116\101\115'),'\077\101\110\117',
'\080\097\110\101\108','\067\111\110\116\101\110\116','\070\114\097\109\101','\070\114\097\109\101','\080\117\109\112\107\105\110\115','\066\117\121')if not aU then return nil end
local aV=aj.texts(aU)if aE(aV)then return nil end local aW=ae.crateAmount(aV)if
not aW and aj.visible(aU)then aW=aM(aU,aF(aU))end return aW==ae.CRATE_COST and
aU or nil end local function aU(aV)local aW,aX={},{}for aY,aZ in ipairs(aV and
aV:GetDescendants()or{})do if aZ:IsA('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and aZ.Enabled and not
aE(aZ.ActionText..'\032'..aZ.ObjectText)then local a_=aZ.Name..'\032'..aZ.ActionText..
'\032'..aZ.ObjectText local a0=ag(a_)if aQ(a_)or a0:find('\099\114\097\116\101',1,true)or a0:find(
'\099\097\105\120\097',1,true)then table.insert(aW,aZ)elseif a0:find('\111\112\101\110',1,true)or a0:find(
'\097\098\114\105\114',1,true)or a0:find('\105\110\116\101\114\097\099\116',1,true)then table.insert(aX,aZ)end end end
if#aW==1 then return aW[1]end if#aW==0 and#aX==1 then return aX[1]end end local
function aV(aW)local aX=nil for aY,aZ in ipairs(aW and aW:GetDescendants()or{})
do if aZ:IsA('\067\108\105\099\107\068\101\116\101\099\116\111\114')and aZ.MaxActivationDistance>0 then if aX then
return nil end aX=aZ end end return aX end local function aW(aX)local aY=aq and
aq.CrateOpenPumpkins if type(aY)~='\116\097\098\108\101'or type(aY.Fire)~='\102\117\110\099\116\105\111\110'or type(aY.
Writes)~='\116\097\098\108\101'or#aY.Writes~=0 or type(aY.Reads)~='\116\097\098\108\101'or#aY.Reads~=0 then
return nil end if not aX()then return false,'\065\098\101\114\116\117\114\097\032\099\097\110\099\101\108\097\100\097\046'end au=
'\067\114\097\116\101\079\112\101\110\080\117\109\112\107\105\110\115'local aZ=pcall(aY.Fire,aY)return aZ,aZ and nil or
'\070\097\108\104\097\032\097\111\032\101\110\118\105\097\114\032\097\032\097\098\101\114\116\117\114\097\032\100\101\032\101\118\101\110\116\111\046'end local function aX(aY)au=nil local aZ=
aT()if aZ then if not aY()then return false,'\065\098\101\114\116\117\114\097\032\099\097\110\099\101\108\097\100\097\046'end au=aZ:
GetFullName()return aj.activate(aZ,not aj.visible(aZ))end local a_=aR()if#a_==0
then local a0=aS()local a1=aU(a0)local a2=not a1 and aV(a0)or nil local a3,a4=
aC(),as if a1 then au=a1:GetFullName()local a5,a6=ak.trigger(a1,aY)if not a5
then return false,a6 end else local a5=a0 and a0:FindFirstChild(
'\115\116\121\108\101\109\097\116\099\104\115\116\111\110\101',true)if a5 and a5:IsA('\066\097\115\101\080\097\114\116')then local a6=a5.Position-
Vector3.new(0,a5.Size.Y/2,0)au=a5:GetFullName()ak.goTo(a6,aY)end if a2 and type(
fireclickdetector)=='\102\117\110\099\116\105\111\110'and aY()then local a6=a2.Parent local a7=ak.actor(
)local a8=a6 and(a6:IsA('\066\097\115\101\080\097\114\116')and a6.Position or a6:IsA('\077\111\100\101\108')and a6:
GetPivot().Position)if a7 and a8 and(a7.Position-a8).Magnitude<=a2.
MaxActivationDistance then local a9=pcall(fireclickdetector,a2)if a9 then au=a2:
GetFullName()end end end end if a1 or au then aH(aY,2.5,function()a_=aR()return#
a_>0 or as>a4 or aC()~=a3 end)if as>a4 or aC()~=a3 then return true end end if#
a_==0 and not a1 and not a2 then local a5,a6=aW(aY)if a5~=nil then return a5,a6
end end end if#a_~=1 then return false,
'\065\032\111\102\101\114\116\097\032\100\101\032\056\048\032\097\098\u{f3}\098\111\114\097\115\032\110\u{e3}\111\032\112\u{f4}\100\101\032\115\101\114\032\099\111\110\102\105\114\109\097\100\097\046'end if not aY()
then return false,'\065\098\101\114\116\117\114\097\032\099\097\110\099\101\108\097\100\097\046'end au=a_[1]:GetFullName()return aj.
activate(a_[1])end local function aY(aZ)local a_=af(an,'\067\114\097\116\101\115','\082\111\108\108')if not a_
or not aj.visible(a_)then return true end local a0=0 local a1=0 return aH(aZ,12,
function()if not aj.visible(a_)then return true end local a2=os.clock()if a1<8
and a2-a0>=0.6 then for a3,a4 in ipairs({'\083\107\105\112','\067\111\110\116\105\110\117\101','\067\108\111\115\101'})do local a5=
a_:FindFirstChild(a4,true)if a5 and a5:IsA('\071\117\105\066\117\116\116\111\110')and a5.Active and aj.
visible(a5)then a0=a2 a1+=1 aj.activate(a5)break end end end return false end)
end local function aZ(a_,a0,a1)if type(a0)~='\110\117\109\098\101\114'or a0%1~=0 or a0<1 or a0>10
then return false,'\076\111\116\101\032\105\110\118\u{e1}\108\105\100\111\046',0 end local a2=aC()if a2==nil then
return false,'\079\032\106\111\103\111\032\097\105\110\100\097\032\110\u{e3}\111\032\105\110\102\111\114\109\111\117\032\111\032\115\097\108\100\111\032\100\101\032\097\098\u{f3}\098\111\114\097\115\046',0 end if
a2<a0*ae.CRATE_COST then return false,string.format(ac(
'\083\097\108\100\111\032\105\110\115\117\102\105\099\105\101\110\116\101\032\112\097\114\097\032\111\032\108\111\116\101\046\032\037\100\032\100\101\032\037\100\032\097\098\u{f3}\098\111\114\097\115\046'),a2,a0*ae.CRATE_COST),
0 end local a3=0 for a4=1,a0 do if not a_()then return false,'\076\111\116\101\032\112\097\117\115\097\100\111\046',a3
end if not aY(a_)then return false,'\065\032\099\097\105\120\097\032\097\110\116\101\114\105\111\114\032\097\105\110\100\097\032\101\115\116\u{e1}\032\097\098\101\114\116\097\046',a3
end local a5=aC()if a5==nil or a5<ae.CRATE_COST then return false,
'\083\097\108\100\111\032\109\117\100\111\117\032\100\117\114\097\110\116\101\032\111\032\108\111\116\101\046',a3 end local a6=as if a1 then a1(string.format(ac(
'\065\098\114\105\110\100\111\032\099\097\105\120\097\032\037\100\047\037\100\u{2026}'),a4,a0))end local a7,a8=aX(a_)if not a7 then
return false,a8,a3 end local a9=false local b=false local ba=nil if not aH(a_,10
,function()local bb=af(an,'\067\114\097\116\101\115','\082\111\108\108')a9=bb~=nil and aj.visible(bb)if a9
then return true end if as>a6 then local bc=os.clock()ba=ba or bc return bc-ba>=
2 end return false end)then return false,
'\079\032\106\111\103\111\032\110\u{e3}\111\032\109\111\115\116\114\111\117\032\097\032\097\098\101\114\116\117\114\097\032\100\097\032\099\097\105\120\097\046\032\076\111\116\101\032\105\110\116\101\114\114\111\109\112\105\100\111\046',a3 end if a9
then b=aY(a_)end if not aH(a_,8,function()return ae.confirmCrate(a5,aC(),as>a6
or b)end)then return false,
'\079\032\106\111\103\111\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\111\032\100\u{e9}\098\105\116\111\032\101\032\111\032\114\101\115\117\108\116\097\100\111\046\032\076\111\116\101\032\105\110\116\101\114\114\111\109\112\105\100\111\046',a3
end a3+=1 if a9 and not b then return false,
'\067\097\105\120\097\032\114\101\103\105\115\116\114\097\100\097\044\032\109\097\115\032\097\032\116\101\108\097\032\100\097\032\097\098\101\114\116\117\114\097\032\097\105\110\100\097\032\101\115\116\u{e1}\032\097\116\105\118\097\046',a3 end if a4<
a0 then task.wait(0.45)end end return true,string.format(ac(
'\037\100\032\099\097\105\120\097\040\115\041\032\099\111\110\102\105\114\109\097\100\097\040\115\041\046'),a3),a3 end local function a_()local a0={buttons={}
}a0.class,a0.freeRolls=aD()a0.gems=aB()a0.pumpkins=aC()local a1=aq and aq.
CrateOpenPumpkins a0.eventCrateFields=type(a1)=='\116\097\098\108\101'and type(a1.Writes)==
'\116\097\098\108\101'and#a1.Writes or nil a0.crateRoute=au a0.classRoute=av a0.eventOffers=aT(
)and 1 or#aR()a0.eventPrompts={}local a2=aS()for a3,a4 in ipairs(a2 and a2:
GetDescendants()or{})do if a4:IsA('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and#a0.eventPrompts<18 then
table.insert(a0.eventPrompts,{path=a4:GetFullName(),action=a4.ActionText,object=
a4.ObjectText,enabled=a4.Enabled})elseif a4:IsA('\067\108\105\099\107\068\101\116\101\099\116\111\114')and#a0.
eventPrompts<18 then table.insert(a0.eventPrompts,{path=a4:GetFullName(),
distance=a4.MaxActivationDistance})end end for a3,a4 in ipairs({'\067\108\097\115\115\101\115',
'\067\114\097\116\101\115','\076\111\098\098\121\085\112\103\114\097\100\101\115'})do local a5=an:FindFirstChild(a4)local a6=0 for a7,a8
in ipairs(a5 and a5:GetDescendants()or{})do if a8:IsA('\071\117\105\066\117\116\116\111\110')then table.
insert(a0.buttons,{screen=a4,path=a8:GetFullName(),name=a8.Name,label=aj.texts(
a8):sub(1,140),shown=aF(a8):sub(1,140),active=a8.Active,visible=aj.visible(a8)})
a6+=1 if a6>=28 then break end end end end return a0 end return{upgrade=aP,
openBatch=aZ,roll=aO,catalog=aJ,classState=aD,pumpkins=aC,gems=aB,diagnostic=a_}
end return ae end)()local af=(function()local af={}function af.create(ag,ah,ai,
aj)local ak=ag.UserInputService local al=ag.TweenService local am=Color3.
fromRGB(35,31,25)local an=Color3.fromRGB(65,54,39)local ao=Color3.fromRGB(25,21,
16)local ap=Color3.fromRGB(252,246,226)local aq=Color3.fromRGB(213,195,163)local
ar=Color3.fromRGB(128,205,55)local as=Color3.fromRGB(46,141,236)local at=Color3.
fromRGB(255,202,66)local au=Color3.fromRGB(187,47,39)local av,aw,ax={},{},{}
local function ay(az,aA,aB)local aC=Instance.new(az)for aD,aE in pairs(aA)do aC[
aD]=aD=='\084\101\120\116'and ac(aE)or aE end if aA.Text~=nil then aC.AutoLocalize=false end
aC.Parent=aB return aC end local function az(aA,aB)ay('\085\073\067\111\114\110\101\114',{CornerRadius=
UDim.new(0,aB or 5)},aA)end local function aA(aB,aC)return ay('\085\073\083\116\114\111\107\101',{Color=
aC or ao,Thickness=2,ApplyStrokeMode=Enum.ApplyStrokeMode.Border},aB)end local
function aB(aC,aD,aE,aF)return ay('\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(aD,aE),
Rotation=aF or 0},aC)end local function aC(aD,aE,aF,aG,aH)return ay('\084\101\120\116\076\097\098\101\108',
{Text=aE,TextSize=aF,TextColor3=aG or ap,BackgroundTransparency=1,Font=aH and
Enum.Font.GothamBlack or Enum.Font.Gotham,TextXAlignment=Enum.TextXAlignment.
Left,TextWrapped=true},aD)end local function aD(aE,...)if aj[aE]then aj[aE](...)
end end local function aE(aF,aG,aH,aI)local aJ=ay('\084\101\120\116\066\117\116\116\111\110',{Text=aH,TextSize
=15,TextColor3=ap,TextStrokeColor3=ao,TextStrokeTransparency=0.2,
BackgroundColor3=aI and ar or an,BorderSizePixel=0,Font=Enum.Font.GothamBlack,
TextWrapped=true},aF)az(aJ)aA(aJ)aB(aJ,Color3.new(1,1,1),Color3.fromRGB(183,169,
145),90)if aG then aw[aG]=aJ aJ.Activated:Connect(function()aD(aG)end)end return
aJ end local aF=ay('\070\114\097\109\101',{Size=UDim2.fromScale(1,1),BackgroundTransparency=1},
ai)local aG=ay('\070\114\097\109\101',{AnchorPoint=Vector2.new(0.5,0),Size=UDim2.fromOffset(760
,570),Position=UDim2.new(0.5,0,0,8),BackgroundColor3=am,BorderSizePixel=0,
ClipsDescendants=true},aF)az(aG,8)aA(aG,Color3.fromRGB(116,88,49))local aH=ay(
'\085\073\083\099\097\108\101',{Scale=0.65},aG)local aI=ay('\070\114\097\109\101',{Size=UDim2.new(1,0,0,74),
BackgroundColor3=Color3.fromRGB(111,77,44),BorderSizePixel=0,ClipsDescendants=
true,Active=true},aG)aB(aI,Color3.new(1,1,1),Color3.fromRGB(137,107,78),90)ay(
'\070\114\097\109\101',{Position=UDim2.new(0,0,1,-3),Size=UDim2.new(1,0,0,3),BackgroundColor3=
ao,BorderSizePixel=0},aI)ay('\073\109\097\103\101\076\097\098\101\108',{Position=UDim2.fromOffset(13,11),Size=
UDim2.fromOffset(49,49),BackgroundTransparency=1,Image=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\049\048\051\050\050\053\057\049\052\054\051\057\055\050\050',ScaleType=Enum.ScaleType.Fit},aI)local aJ=aC(aI,
'\065\078\079\078\072\085\066',28,ap,true)aJ.TextStrokeColor3,aJ.TextStrokeTransparency=ao,0 aJ.
Position,aJ.Size=UDim2.fromOffset(73,6),UDim2.new(1,-146,0,34)local aL=aC(aI,
'\067\069\078\084\082\065\076\032\068\079\032\076\079\066\066\089',13,at,true)aL.Position,aL.Size=UDim2.fromOffset(74,40),UDim2.
new(1,-147,0,22)local aM=aE(aI,nil,'\088')aM.Position,aM.Size=UDim2.new(1,-54,0,15)
,UDim2.fromOffset(40,41)aM.BackgroundColor3,aM.TextSize=au,22 local aN=aE(aF,nil
,'\065')aN.Position,aN.Size=UDim2.new(0,10,1,-64),UDim2.fromOffset(47,47)aN.
TextSize=26 aN.ZIndex=6 aN.BackgroundColor3=an if aj.decorateLauncher then aj.
decorateLauncher(aN)end local aO=ay('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Position=UDim2.fromOffset(
9,83),Size=UDim2.new(0,129,1,-139),BackgroundTransparency=1,BorderSizePixel=0,
CanvasSize=UDim2.fromOffset(0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,
ScrollBarThickness=2},aG)ay('\085\073\076\105\115\116\076\097\121\111\117\116',{Padding=UDim.new(0,6),SortOrder=Enum
.SortOrder.LayoutOrder},aO)local aP=ay('\070\114\097\109\101',{Position=UDim2.fromOffset(146,83
),Size=UDim2.new(1,-155,1,-139),BackgroundTransparency=1,ClipsDescendants=true},
aG)local aQ=aC(aG,'\080\114\111\110\116\111\032\112\097\114\097\032\099\111\110\102\105\103\117\114\097\114\032\097\032\102\105\108\097\046',14,aq,false)aQ.Position,aQ.
Size=UDim2.new(0,13,1,-47),UDim2.new(1,-26,0,40)local aR='\099\111\110\102\105\103'local function
aS(aT)aR=aT for aU,aV in pairs(ax)do aV.Visible=aU==aT end for aU,aV in pairs(av
)do aV.BackgroundColor3=aU==aT and at or an aV.TextColor3=aU==aT and ao or ap aV
.TextStrokeTransparency=aU==aT and 1 or 0.2 end local aU=ax[aT]if aU then aU.
Position=UDim2.fromOffset(7,0)al:Create(aU,TweenInfo.new(0.18,Enum.EasingStyle.
Quad,Enum.EasingDirection.Out),{Position=UDim2.fromOffset(0,0)}):Play()end end
local function aT(aU,aV,aW)local aX=aE(aO,nil,aV)aX.Size=UDim2.new(1,-3,0,45)aX.
LayoutOrder=aW aX.TextSize=14 aX.Activated:Connect(function()aS(aU)end)av[aU]=aX
local aY=ay('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Size=UDim2.fromScale(1,1),Visible=false,
BackgroundTransparency=1,BorderSizePixel=0,CanvasSize=UDim2.fromOffset(0,0),
AutomaticCanvasSize=Enum.AutomaticSize.Y,ScrollingDirection=Enum.
ScrollingDirection.Y,ScrollBarThickness=3,ScrollBarImageColor3=at},aP)ay(
'\085\073\080\097\100\100\105\110\103',{PaddingTop=UDim.new(0,1),PaddingBottom=UDim.new(0,6),PaddingRight=
UDim.new(0,5)},aY)ay('\085\073\076\105\115\116\076\097\121\111\117\116',{Padding=UDim.new(0,8),SortOrder=Enum.
SortOrder.LayoutOrder},aY)ax[aU]=aY return aY end local function aU(aV,aW,aX,aY)
local aZ=ay('\070\114\097\109\101',{Size=UDim2.new(1,0,0,aY or 82),BackgroundColor3=an,
BorderSizePixel=0},aV)az(aZ)aA(aZ)local a_=aC(aZ,aW,19,ap,true)a_.Position,a_.
Size=UDim2.fromOffset(11,7),UDim2.new(1,-22,0,25)local a0=aC(aZ,aX,14,aq,false)
a0.Position,a0.Size=UDim2.fromOffset(11,33),UDim2.new(1,-22,1,-38)return aZ,a0
end local function aV(aW)return ay('\070\114\097\109\101',{Size=UDim2.new(1,0,0,46),
BackgroundTransparency=1},aW)end local function aW(aX,aY,aZ,a_,a0,a1)local a2=
aE(aX,aY,aZ,a1)a2.Position,a2.Size=UDim2.new(a_,0,0,0),UDim2.new(a0,-5,1,0)
return a2 end local aX=aT('\099\111\110\102\105\103','\067\111\110\102\105\103\117\114\097\114',1)aU(aX,
'\067\111\110\102\105\103\117\114\097\114\032\099\097\112\u{ed}\116\117\108\111',
'\069\115\099\111\108\104\097\032\117\109\032\099\097\112\u{ed}\116\117\108\111\032\112\097\114\097\032\118\101\114\032\097\115\032\111\112\u{e7}\u{f5}\101\115\032\100\097\032\102\105\108\097\046',73)local aY={
'\067\097\112\u{ed}\116\117\108\111\032\073','\067\097\112\u{ed}\116\117\108\111\032\073\073','\067\097\112\u{ed}\116\117\108\111\032\073\073\073'}local aZ,a_=false,nil
local function a0(a1,a2)local a3=aE(a1,nil,'')a3.Size=UDim2.new(1,0,0,43)local
a4=aC(a3,a2,15,ap,true)a4.Position,a4.Size=UDim2.fromOffset(12,0),UDim2.new(1,-
130,1,0)return a3 end local a1=a0(aX,'\067\097\112\u{ed}\116\117\108\111\115')local a2=aC(a1,'\u{2304}',
17,aq,true)a2.Position,a2.Size=UDim2.new(1,-23,0,0),UDim2.fromOffset(18,43)local
a3=ay('\070\114\097\109\101',{BackgroundTransparency=1,Size=UDim2.new(1,0,0,0),AutomaticSize=
Enum.AutomaticSize.Y,Visible=false},aX)ay('\085\073\076\105\115\116\076\097\121\111\117\116',{Padding=UDim.new(0,5),
SortOrder=Enum.SortOrder.LayoutOrder},a3)local a4=ay('\070\114\097\109\101',{
BackgroundTransparency=1,Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.
AutomaticSize.Y,Visible=false},aX)ay('\085\073\076\105\115\116\076\097\121\111\117\116',{Padding=UDim.new(0,8),
SortOrder=Enum.SortOrder.LayoutOrder},a4)local function a5()a2.Text=aZ and
'\u{2303}'or'\u{2304}'a3.Visible=aZ a4.Visible=a_==2 end a1.Activated:Connect(
function()aZ=not aZ a5()end)for a6,a7 in ipairs(aY)do local a8=a0(a3,a7)a8.
LayoutOrder=a6 local a9=a6==2 local b=a9 and ar or aq local ba=ay('\070\114\097\109\101',{Size=
UDim2.fromOffset(7,7),Position=UDim2.new(1,-108,0.5,-3),BackgroundColor3=b,
BorderSizePixel=0},a8)az(ba,5)local bb=aC(a8,a9 and'\079\078\076\073\078\069'or'\069\077\032\066\082\069\086\069',11,b,
true)bb.Position,bb.Size=UDim2.new(1,-94,0,0),UDim2.fromOffset(73,43)a8.
Activated:Connect(function()a_=a6 aZ=false a5()end)end aU(a4,
'\070\105\108\097\032\100\111\032\067\097\112\u{ed}\116\117\108\111\032\073\073',
'\065\115\032\101\115\099\111\108\104\097\115\032\115\u{e3}\111\032\114\101\097\112\108\105\099\097\100\097\115\032\110\097\032\112\114\u{f3}\120\105\109\097\032\114\111\100\097\100\097\046',69)local a6=aV(a4)aW(
a6,'\108\097\117\110\099\104','\069\078\084\082\065\082\032\043\032\079\080',0,0.42,true)aW(a6,'\099\121\099\108\101','\067\073\067\076\079\032\067\079\077\080\076\069\084\079',0.43,0.57)
local a7=aV(a4)aW(a7,'\115\105\122\101','\074\079\071\065\068\079\082\069\083',0,0.47)aW(a7,'\102\114\105\101\110\100\115','\065\077\073\071\079\083',0.48,
0.52)local a8=aV(a4)aW(a8,'\115\107\105\112','\073\078\084\082\079\068\085\u{c7}\u{c3}\079',0,0.47)aW(a8,'\115\107\105\112\079\117\116\114\111'
,'\067\069\078\065\032\070\073\078\065\076',0.48,0.52)local a9=aV(a4)aW(a9,'\114\101\112\101\097\116\082\117\110','\082\069\080\069\084\073\082',0,0.47)aW(a9,
'\097\117\116\111\073\109\112\114\111\118\101','\065\085\084\079\032\077\069\076\072\079\082\073\065',0.48,0.52)local b=aV(aX)aW(b,'\115\116\111\112','\080\065\082\065\082',0,0.34
).BackgroundColor3=au aW(b,'\108\097\110\103\117\097\103\101','\073\068\073\079\077\065',0.35,0.65)local ba,bb=aU(aX,
'\082\101\099\117\114\115\111\115\032\100\111\032\108\111\098\098\121','\076\101\110\100\111\032\111\032\115\097\108\100\111\032\100\111\032\106\111\103\111\u{2026}',69)local bc=aT('\101\118\101\110\116',
'\067\097\105\120\097\115',2)aU(bc,'\067\097\105\120\097\032\100\111\032\101\118\101\110\116\111',
'\079\032\099\117\115\116\111\032\u{e9}\032\100\101\032\056\048\032\097\098\u{f3}\098\111\114\097\115\032\112\111\114\032\099\097\105\120\097\046\032\069\115\099\111\108\104\097\032\111\032\116\097\109\097\110\104\111\032\100\111\032\108\111\116\101\046',78)
local bd,be=aU(bc,'\083\097\108\100\111\032\100\101\032\097\098\u{f3}\098\111\114\097\115','\065\103\117\097\114\100\097\110\100\111\032\111\032\106\111\103\111\u{2026}',69)local
bf=aV(bc)local bg=ay('\070\114\097\109\101',{Position=UDim2.new(0,11,0.5,-5),Size=UDim2.new(1,-
116,0,10),BackgroundColor3=ao,BorderSizePixel=0},bf)az(bg)local bh=ay('\070\114\097\109\101',{
Size=UDim2.fromScale(0,1),BackgroundColor3=at,BorderSizePixel=0},bg)az(bh)local
bi=ay('\070\114\097\109\101',{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0,0.5),
Size=UDim2.fromOffset(26,26),BackgroundColor3=at,BorderSizePixel=0},bg)az(bi,13)
local bj=ay('\070\114\097\109\101',{Position=UDim2.fromOffset(0,0),Size=UDim2.new(1,-95,1,0),
BackgroundTransparency=1,Active=true,ZIndex=5},bf)local bk=aC(bf,'\049\048',19,at,true
)bk.Position,bk.Size=UDim2.new(1,-91,0,0),UDim2.fromOffset(86,46)bk.
TextXAlignment=Enum.TextXAlignment.Center local bl=aV(bc)aW(bl,'\097\117\116\111\067\114\097\116\101\115',
'\065\085\084\079\032\067\065\073\088\065\083',0,0.54)local bm=aW(bl,'\111\112\101\110\066\097\116\099\104','\065\066\082\073\082\032\076\079\084\069',0.55,0.45,true)bm.
BackgroundColor3,bm.TextColor3,bm.TextStrokeTransparency=at,ao,1 local bn=aT(
'\099\108\097\115\115\101\115','\067\108\097\115\115\101\115',3)aU(bn,'\065\108\118\111\032\100\101\032\099\108\097\115\115\101',
'\083\101\108\101\099\105\111\110\101\032\117\109\032\099\097\114\116\u{e3}\111\046\032\065\032\114\111\108\097\103\101\109\032\112\097\114\097\032\113\117\097\110\100\111\032\111\032\106\111\103\111\032\099\111\110\102\105\114\109\097\032\097\032\099\108\097\115\115\101\046',79)
local bo=ay('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Size=UDim2.new(1,0,0,112),CanvasSize=UDim2.
fromOffset(0,0),AutomaticCanvasSize=Enum.AutomaticSize.X,ScrollingDirection=Enum
.ScrollingDirection.X,ScrollBarThickness=4,ScrollBarImageColor3=at,
BorderSizePixel=0,BackgroundTransparency=1},bn)ay('\085\073\076\105\115\116\076\097\121\111\117\116',{FillDirection=
Enum.FillDirection.Horizontal,Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.
LayoutOrder},bo)local bp=aC(bo,
'\065\098\114\097\032\067\108\097\115\115\101\115\032\110\111\032\106\111\103\111\032\112\097\114\097\032\099\097\114\114\101\103\097\114\032\111\032\099\097\116\u{e1}\108\111\103\111\046',14,aq,false)bp.Size=UDim2.
fromOffset(260,90)local bq,br=aU(bn,'\067\108\097\115\115\101\032\097\116\117\097\108','\065\103\117\097\114\100\097\110\100\111\032\111\032\106\111\103\111\u{2026}',
70)local bs,bt=false,false local bu=aE(bn,nil,'\u{25a1}\032\032\032\085\083\065\082\032\071\069\077\065\083\032\080\065\082\065\032\071\073\082\065\082'
)bu.Size=UDim2.new(1,-5,0,42)bu.Activated:Connect(function()if bt then return
end bs=not bs bu.Text=ac(bs and'\u{2713}\032\032\032\085\083\065\082\032\071\069\077\065\083\032\080\065\082\065\032\071\073\082\065\082'or
'\u{25a1}\032\032\032\085\083\065\082\032\071\069\077\065\083\032\080\065\082\065\032\071\073\082\065\082')bu.TextColor3=bs and ar or ap end)local bv=
aV(bn)local bw=aW(bv,nil,'\071\073\082\065\082\032\065\084\u{c9}\032\079\032\065\076\086\079',0,0.6,true)bw.BackgroundColor3=
as bw.Activated:Connect(function()aD('\114\111\108\108',bs)end)aW(bv,'\114\097\114\101\115\116',
'\083\069\076\069\067\073\079\078\065\082\032\077\065\073\083\032\082\065\082\065',0.61,0.39)local bx={}local by=''local bz=true local bA=
Vector2.zero local bB=Vector2.new(0,1)local bC=nil local function bD()local bE=
aF.AbsoluteSize return Vector2.new(math.max(1,bE.X-63),math.max(1,bE.Y-63))end
local function bE()local bF=bD()aN.Position=UDim2.fromOffset(8+bB.X*bF.X,8+bB.Y*
bF.Y)end local function bF()local bG=aF.AbsoluteSize if bG.X<80 or bG.Y<80 then
return end local bH=math.min(0.65,(bG.Y-14)/280)aH.Scale=bH local bI=math.min(
760,(bG.X-16)/bH)local bJ=math.min(570,(bG.Y-14)/bH)aG.Size=UDim2.fromOffset(bI,
bJ)local bK=math.max(0,(bG.X-bI*bH)/2-5)bA=Vector2.new(math.clamp(bA.X,-bK,bK),
math.clamp(bA.Y,0,math.max(0,bG.Y-bJ*bH-14)))aG.Position=UDim2.new(0.5,bA.X,0,7+
bA.Y)bE()end local function bG()bz=not bz if bC then bC:Cancel()bC=nil end aG.
Visible=bz aN.BackgroundColor3=bz and an or Color3.fromRGB(154,101,34)if bz then
bF()local bH=aG.Position aG.Position=UDim2.new(0.5,bA.X,0,1+bA.Y)bC=al:Create(aG
,TweenInfo.new(0.18),{Position=bH})bC:Play()end end aM.Activated:Connect(bG)
local bH,bI,bJ,bK=nil,nil,nil,nil local bL,bM,bN=nil,nil,nil local bO=false
local function bP(bQ)return bQ.UserInputType==Enum.UserInputType.Touch or bQ.
UserInputType==Enum.UserInputType.MouseButton1 end local function bQ(bR,bS)
return bR and(bR.UserInputType==Enum.UserInputType.Touch and bS==bR or bR.
UserInputType==Enum.UserInputType.MouseButton1 and bS.UserInputType==Enum.
UserInputType.MouseMovement)end local function bR(bS,bT)local bU=math.clamp((bS-
bg.AbsolutePosition.X)/math.max(1,bg.AbsoluteSize.X),0,1)aD('\099\114\097\116\101\067\111\117\110\116',1+math.
floor(bU*9+0.5),bT)end aI.InputBegan:Connect(function(bS)if bP(bS)then bH=bS bI=
Vector2.new(bS.Position.X,bS.Position.Y)bJ=bA end end)bj.InputBegan:Connect(
function(bS)if bP(bS)then bK=bS bR(bS.Position.X,false)end end)aN.InputBegan:
Connect(function(bS)if not bP(bS)or bL then return end bL=bS bM=Vector2.new(bS.
Position.X,bS.Position.Y)bN=bB bO=false end)local bS=ak.InputChanged:Connect(
function(bS)if bQ(bL,bS)then local bT=Vector2.new(bS.Position.X,bS.Position.Y)-
bM if bT.Magnitude>=7 then bO=true end if bO then local bU=bD()bB=Vector2.new(
math.clamp(bN.X+bT.X/bU.X,0,1),math.clamp(bN.Y+bT.Y/bU.Y,0,1))bE()end elseif bQ(
bK,bS)then bR(bS.Position.X,false)elseif bQ(bH,bS)then bA=bJ+Vector2.new(bS.
Position.X,bS.Position.Y)-bI bF()end end)local bT=ak.InputEnded:Connect(function
(bT)if bT==bL then bL=nil if bO then aD('\108\097\117\110\099\104\101\114',bB.X,bB.Y)elseif bT.
UserInputState==Enum.UserInputState.End then bG()end end if bT==bH then bH=nil
end if bT==bK then bK=nil bR(bT.Position.X,true)end end)local bU=aF:
GetPropertyChangedSignal('\065\098\115\111\108\117\116\101\083\105\122\101'):Connect(bF)ah.add(function()bS:
Disconnect()bT:Disconnect()bU:Disconnect()end)task.defer(bF)aS('\099\111\110\102\105\103')return{
status=function(bV)aQ.Text=ac(tostring(bV))end,showingClasses=function()return
bz and aR=='\099\108\097\115\115\101\115'end,options=function(bV,bW,bX,bY)bt=bY if not bL then bB=
Vector2.new(bV.launcherX,bV.launcherY)bE()end aw.size.Text=ac(
'\074\079\071\065\068\079\082\069\083\032\032\u{b7}\032\032')..bV.size aw.friends.Text=ac(bV.friends and
'\083\u{d3}\032\065\077\073\071\079\083\032\032\u{b7}\032\032\083\073\077'or'\083\u{d3}\032\065\077\073\071\079\083\032\032\u{b7}\032\032\078\u{c3}\079')aw.skip.Text=
ac(bV.skip and'\073\078\084\082\079\032\032\u{b7}\032\032\080\085\076\065\082'or'\073\078\084\082\079\032\032\u{b7}\032\032\086\069\082')aw.skipOutro.Text=ac(
bV.skipOutro and'\070\073\078\065\076\032\032\u{b7}\032\032\080\085\076\065\082'or'\070\073\078\065\076\032\032\u{b7}\032\032\086\069\082')aw.repeatRun.Text=
ac(bV.repeatRun and'\082\069\080\069\084\073\082\032\032\u{b7}\032\032\083\073\077'or'\082\069\080\069\084\073\082\032\032\u{b7}\032\032\078\u{c3}\079')aw.
autoImprove.Text=ac(bX and'\077\069\076\072\079\082\073\065\083\032\032\u{b7}\032\032\079\078'or'\077\069\076\072\079\082\073\065\083\032\032\u{b7}\032\032\079\070\070')aw.
autoCrates.Text=ac(bV.autoCrates and'\065\085\084\079\032\067\065\073\088\065\083\032\032\u{b7}\032\032\079\078'or
'\065\085\084\079\032\067\065\073\088\065\083\032\032\u{b7}\032\032\079\070\070')aw.cycle.Text=ac(bW and'\065\071\085\065\082\068\065\078\068\079\032\079\032\074\079\071\079'or
'\067\073\067\076\079\032\067\079\077\080\076\069\084\079')bw.Text=ac(bY and'\080\065\082\065\082\032\071\073\082\079\083'or'\071\073\082\065\082\032\065\084\u{c9}\032\079\032\065\076\086\079')bw.
BackgroundColor3=bY and au or as bk.Text=tostring(bV.crateCount)local bZ=(bV.
crateCount-1)/9 bh.Size=UDim2.fromScale(bZ,1)bi.Position=UDim2.fromScale(bZ,0.5)
end,resources=function(bV,bW,bX)bb.Text=string.format(ac(
'\065\098\u{f3}\098\111\114\097\115\032\032\037\115\032\032\032\u{b7}\032\032\032\071\101\109\097\115\032\032\037\115'),tostring(bV or'\u{2014}'),tostring(bX
or'\u{2014}'))be.Text=string.format(ac(
'\037\115\032\110\111\032\115\097\108\100\111\032\032\032\u{b7}\032\032\032\037\100\032\099\097\105\120\097\040\115\041\032\061\032\037\100\032\097\098\u{f3}\098\111\114\097\115'),tostring(bV or
'\u{2014}'),bW,bW*80)end,classes=function(bV,bW,bX,bY)br.Text=string.format(ac(
'\037\115\032\032\032\u{b7}\032\032\032\071\105\114\111\115\032\103\114\u{e1}\116\105\115\058\032\037\115'),bX or'\u{2014}',tostring(bY or'\u{2014}')
)if aR~='\099\108\097\115\115\101\115'or not bz then return end local bZ={}for b_=1,math.min(#bV,30)
do local b0=bV[b_]bZ[b_]=tostring(b0.id)..'\058'..tostring(b0.name)..'\058'..tostring(
b0.icon)..'\058'..tostring(b0.iconOffset)..'\058'..tostring(b0.iconSize)end local b_=
table.concat(bZ,'\124')if b_~=by then by=b_ for b0,b1 in pairs(bx)do b1.button:
Destroy()end table.clear(bx)bp.Visible=#bV==0 for b0=1,math.min(#bV,30)do local
b1=bV[b0]local b2=tostring(b1.id)local b3=aE(bo,nil,'')b3.Size,b3.LayoutOrder=
UDim2.fromOffset(105,101),b0 local b4=b3:FindFirstChildOfClass('\085\073\083\116\114\111\107\101')if
type(b1.icon)=='\115\116\114\105\110\103'and b1.icon~=''then ay('\073\109\097\103\101\076\097\098\101\108',{Position=UDim2.
fromOffset(29,6),Size=UDim2.fromOffset(47,47),BackgroundTransparency=1,Image=b1.
icon,ScaleType=Enum.ScaleType.Fit,ImageRectOffset=b1.iconOffset or Vector2.zero,
ImageRectSize=b1.iconSize or Vector2.zero},b3)else local b5=aC(b3,string.sub(b1.
name,1,1),31,as,true)b5.Position,b5.Size=UDim2.fromOffset(6,3),UDim2.new(1,-12,0
,49)b5.TextXAlignment=Enum.TextXAlignment.Center end local b5=aC(b3,b1.name,12,
ap,true)b5.Position,b5.Size=UDim2.fromOffset(4,53),UDim2.new(1,-8,0,40)b5.
TextXAlignment=Enum.TextXAlignment.Center b3.Activated:Connect(function()aD(
'\116\097\114\103\101\116',b2)end)bx[b2]={button=b3,line=b4}end end for b0,b1 in pairs(bx)do b1.
line.Color=b0==bW and at or ao b1.button.BackgroundColor3=b0==bW and Color3.
fromRGB(105,74,34)or an end end}end return af end)()local function ag(ah,ai)
local aj='\065\110\111\110\072\117\098\095\076\111\098\098\121\095'..tostring(ai)..'\046\106\115\111\110'local function ak(al)if type(ah.
read)~='\102\117\110\099\116\105\111\110'then return end local am,an=pcall(function()local am=ah.read(al
)if type(am)=='\115\116\114\105\110\103'and#am<=180000 then return ah.decode(am)end end)if am and
type(an)=='\116\097\098\108\101'and an.schema==1 and type(an.settings)=='\116\097\098\108\101'then return an.
settings end end return{settings=ak(aj)or ak('\069\118\111\108\118\121\095\072\105\115\116\111\114\121\095'..tostring(ai)..
'\046\106\115\111\110'),save=function(al)if type(ah.write)=='\102\117\110\099\116\105\111\110'then pcall(function()ah.
write(aj,ah.encode({schema=1,settings=al}))end)end end}end local ah=(function()
local ah={}function ah.progress(ai)if type(ai)~='\115\116\114\105\110\103'then return nil end
local aj=ai:gsub('\060\046\045\062',''):gsub('\091\044\046\093','')local ak,al=aj:match(
'\040\037\100\043\041\037\115\042\047\037\115\042\040\037\100\043\041')ak,al=tonumber(ak),tonumber(al)if ak and al and al>0 and al<
100000000 then return ak,al end end function ah.action(ai)local aj=tostring(ai):
lower()local function ak(...)for al,am in ipairs({...})do if aj:find(am,1,true)
then return true end end return false end if ak('\115\101\099\114\101\116','\115\101\099\114\101\116\097','\063\063\063',
'\032\119\105\116\104\032','\032\117\115\105\110\103\032','\032\117\115\097\110\100\111\032','\032\099\111\109\032\097\032','\032\099\111\109\032\111\032','\099\104\097\112\116\101\114\032\049','\099\104\097\112\116\101\114\032\051',
'\099\097\112\105\116\117\108\111\032\049','\099\097\112\105\116\117\108\111\032\051','\103\111\108\100\101\110\032\112\111\116\097\116\111\101\115','\114\097\105\110\098\111\119\032\112\111\116\097\116\111\101\115',
'\100\105\097\109\111\110\100\032\112\111\116\097\116\111\101\115')then return nil end if ak('\101\115\099\097\112\101','\101\115\099\097\112','\102\117\106\097','\102\117\103\105\114')
then return'\101\115\099\097\112\101'end if ak('\099\111\111\108','\114\101\115\102\114\105','\101\115\102\114\105')then return'\099\111\111\108'end if ak(
'\100\121\110\097\109\105\116\101','\100\105\110\097\109\105\116\101')then return'\100\121\110\097\109\105\116\101'end if ak('\115\101\108\108','\118\101\110\100')then return
'\115\101\108\108'end if ak('\112\101\101\108','\115\108\105\099\101','\099\117\116','\099\111\114\116','\100\101\115\099\097\115')then return'\099\117\116'end if ak(
'\099\111\108\108\101\099\116','\112\105\099\107','\099\111\108\101\116','\112\101\103','\103\097\116\104\101\114')then if ak('\103\101\109','\100\105\097\109\111\110\100','\100\105\097\109\097\110\116\101')
then return'\103\101\109'end if ak('\112\111\116\097\116\111','\098\097\116\097\116\097')then return'\099\111\108\108\101\099\116'end end end
local ai={'\084\105\116\108\101','\084\097\115\107\078\097\109\101','\079\098\106\101\099\116\105\118\101','\068\101\115\099\114\105\112\116\105\111\110','\067\104\097\108\108\101\110\103\101\078\097\109\101',
'\081\117\101\115\116\078\097\109\101','\084\097\115\107','\078\097\109\101'}local aj={quest=true,quests=true,questtracker=true,
questtasks=true,mission=true,missions=true,battlepass=true,battlepasschallenges=
true,challenges=true,dailyquests=true,weeklyquests=true}function ah.scan(ak)
local al={}local am={}for an,ao in ipairs(ak:GetChildren())do local ap=ao.Name:
lower():gsub('\091\094\037\119\093','')if not aj[ap]then continue end for aq,ar in ipairs(ao:
GetDescendants())do if#al>=28 then break end if not ar:IsA('\084\101\120\116\076\097\098\101\108')then
continue end local as,at=ah.progress(ar.Text)if as==nil then continue end local
au=ar.Parent local av=nil local aw=nil for ax=1,3 do if not au or au==ao then
break end for ay,az in ipairs(ai)do local aA=au:FindFirstChild(az)if aA and aA~=
ar and aA:IsA('\084\101\120\116\076\097\098\101\108')and#aA.Text>=3 then av=aA.Text:gsub('\060\046\045\062','')aw=au
break end end if av then break end au=au.Parent end if av and#av<=140 then local
ax=ah.action(av)local ay=string.lower(aw:GetFullName())local az=ay:find(
'\099\104\097\108\108\101\110\103\101',1,true)or ay:find('\113\117\101\115\116',1,true)or ay:find('\116\097\115\107',1,true)if ap~=
'\098\097\116\116\108\101\112\097\115\115'or az or ax then local aA=ao.Name..'\124'..av if not am[aA]then am[aA]=
true table.insert(al,{id=aA,title=av,source=ap:find('\098\097\116\116\108\101\112\097\115\115',1,true)and
'\080\097\115\115\101'or'\077\105\115\115\097\111',current=as,goal=at,action=ax,done=as>=at})end end end end end
table.sort(al,function(an,ao)return an.id<ao.id end)return al end return ah end
)()local ai=(function()local ai={}function ai.options(aj)if type(aj)~='\116\097\098\108\101'
then aj={}end local ak=tonumber(aj.size)if not ak or ak~=ak or ak<1 or ak>4 or
ak%1~=0 then ak=1 end local al=tonumber(aj.reconnectCount)or 0 if al~=1 and al~=
2 then al=0 end local am=tonumber(aj.crateCount)if not am or am~=am or am<1 or
am>10 or am%1~=0 then am=10 end local function an(ao,ap)if type(ao)~='\110\117\109\098\101\114'or
ao~=ao then return ap end return math.clamp(ao,0,1)end return{size=ak,friends=aj
.friends==true,skip=aj.skip~=false,skipOutro=aj.skipOutro~=false,repeatRun=aj.
repeatRun==true,reconnectCount=al,autoCrates=aj.autoCrates==true,crateCount=am,
launcherX=an(aj.launcherX,0),launcherY=an(aj.launcherY,1),classTarget=type(aj.
classTarget)=='\115\116\114\105\110\103'and#aj.classTarget<=72 and aj.classTarget or nil}end
function ai.create(aj,ak,al,am)local an='\069\118\111\108\118\121\095\067\104\097\112\116\101\114\050\095\084\114\097\110\115\102\101\114\095\118\049\046\106\115\111\110'local
ao=false local ap=type(aj.read)=='\102\117\110\099\116\105\111\110'and type(aj.write)=='\102\117\110\099\116\105\111\110'local
aq=ap and type(aj.queue)=='\102\117\110\099\116\105\111\110'local function ar()if type(aj.read)~=
'\102\117\110\099\116\105\111\110'then return nil end local as,at=pcall(function()local as=aj.read(an)if
type(as)~='\115\116\114\105\110\103'or#as>3000 then return nil end return aj.decode(as)end)return
as and type(at)=='\116\097\098\108\101'and at or nil end local function as(at)if type(aj.write)
~='\102\117\110\099\116\105\111\110'then return false end local au,av=pcall(function()return aj.write(an
,aj.encode(at))end)return au and av~=false end local function at()local au=ar()
if au and au.account==ak.account and au.game==ak.game then return as({schema=1})
end return false end local function au()local av=ar()if not av or av.schema~=1
or av.account~=ak.account or av.game~=ak.game or type(av.from)~='\115\116\114\105\110\103'or av.
from==''or av.from==ak.job or(av.to~='\099\104\097\112\116\101\114'and av.to~='\108\111\098\098\121')or type(av.
untilTime)~='\110\117\109\098\101\114'or av.untilTime<aj.clock()or av.untilTime>aj.clock()+180
then return nil end return av end local function av(aw)local ax=au()if not ax or
ax.to~=aw then return nil end if not at()then return nil end local ay=am and am(
ax.license)or nil if ax.license~=nil and not ay then return nil end return ai.
options(ax.options),ay end local function aw(ax,ay,az)if not ap or ak.job==''
then return false,'\079\032\101\120\101\099\117\116\111\114\032\110\097\111\032\100\105\115\112\111\110\105\098\105\108\105\122\111\117\032\114\101\116\111\109\097\100\097\032\101\110\116\114\101\032\115\101\114\118\105\100\111\114\101\115\046'end
if ax~='\108\111\098\098\121'and ax~='\099\104\097\112\116\101\114'then return false,'\068\101\115\116\105\110\111\032\105\110\118\097\108\105\100\111\046'end local aA
={schema=1,account=ak.account,game=ak.game,from=ak.job,to=ax,untilTime=aj.clock(
)+150,options=ai.options(ay),license=am and am(az)or nil}if not as(aA)then
return false,'\078\097\111\032\102\111\105\032\112\111\115\115\105\118\101\108\032\115\097\108\118\097\114\032\097\032\114\101\116\111\109\097\100\097\046'end local aB=ar()if not aB or
aB.from~=aA.from or aB.to~=ax or aB.untilTime~=aA.untilTime then at()return
false,'\078\097\111\032\102\111\105\032\112\111\115\115\105\118\101\108\032\099\111\110\102\105\114\109\097\114\032\097\032\114\101\116\111\109\097\100\097\046'end if not aq then return false,
'\082\101\116\111\109\097\100\097\032\115\097\108\118\097\032\112\097\114\097\032\097\098\114\105\114\032\111\032\108\111\097\100\101\114\032\109\097\110\117\097\108\109\101\110\116\101\046'end if not ao then local aC,aD=
pcall(aj.queue,al)if not aC or aD==false then return false,
'\079\032\101\120\101\099\117\116\111\114\032\114\101\099\117\115\111\117\032\097\032\097\098\101\114\116\117\114\097\032\097\117\116\111\109\097\116\105\099\097\059\032\114\101\116\111\109\097\100\097\032\115\097\108\118\097\046'end ao=true end
return true end return{available=aq,take=av,arm=aw,clear=at,destination=function
()local ax=au()return ax and ax.to end}end return ai end)()local aj=(function()
local aj={}function aj.code(ak)if type(ak)~='\115\116\114\105\110\103'then return nil end local al
=tonumber(ak:match('\037\040\091\094\040\041\037\099\093\045\058\037\115\042\040\037\100\043\041\037\115\042\037\041')or ak:lower():match(
'\101\114\114\111\114\037\115\043\099\111\100\101\037\115\042\058\037\115\042\040\037\100\043\041'))if al==266 or al==277 or al==279 then return al end
end function aj.watch(ak,al,am,an)local ao=ak.CoreGui if not ao then return end
task.spawn(function()local ap=false while al.alive()do if am()and not ap then
local aq,ar=pcall(function()local aq=ao:FindFirstChild('\082\111\098\108\111\120\080\114\111\109\112\116\071\117\105')local
ar=aq and aq:FindFirstChild('\112\114\111\109\112\116\079\118\101\114\108\097\121')local as=ar and ar:FindFirstChild(
'\069\114\114\111\114\080\114\111\109\112\116')if not as or not as:IsA('\071\117\105\079\098\106\101\099\116')or not as.Visible then return
nil end for at,au in ipairs(as:GetDescendants())do if au:IsA('\084\101\120\116\076\097\098\101\108')and au.
Visible then local av=aj.code(au.Text)if av then return av end end end end)if aq
and ar then ap=true an(ar)end end task.wait(1.5)end end)end return aj end)()
local ak=(function()local ak={}local al={}local function am(an,ao)return type(an
)=='\115\116\114\105\110\103'and string.sub(string.gsub(an,'\091\037\099\093',''),1,ao)or nil end function ak.
normalize(an,ao,ap)an=an or{}local aq=type(an.validate)=='\102\117\110\099\116\105\111\110'local ar=aq
and(type(ap)=='\116\097\098\108\101'and ap or{})or an local as=ar.expiresAt local at=type(as)==
'\110\117\109\098\101\114'and as==as and as>0 and as<253402300800 and as%1==0 local au if aq then
au=am(ar.keyLabel,24)or type(ao)=='\115\116\114\105\110\103'and(
'\u{2022}\u{2022}\u{2022}\u{2022}\032'..string.sub(ao,-4))or'\u{2014}'else au=am(ao
or an.key,48)or'\u{2014}'end if#au>20 then au=string.sub(au,1,4)..'\u{2026}'..
string.sub(au,-4)end return{plan=am(ar.plan,24)or'\077\101\109\098\101\114',keyLabel=au,expiresAt=
at and as or nil,lifetime=as==nil and ar.lifetime==true,invalid=as~=nil and not
at,source=aq and'\076\105\099\101\110\099\097\032\118\097\108\105\100\097\100\097'or'\065\099\101\115\115\111\032\108\111\099\097\108'}end function ak.expired(an,ao
)return an~=nil and(an.invalid==true or type(an.expiresAt)=='\110\117\109\098\101\114'and ao>=an.
expiresAt)end function ak.describe(an,ao)an=an or{}local ap=ak.expired(an,ao)
local aq='\086\097\108\105\100\097\100\101\032\110\097\111\032\105\110\102\111\114\109\097\100\097'if an.invalid then aq='\086\097\108\105\100\097\100\101\032\105\110\118\097\108\105\100\097'elseif
ap then aq='\069\120\112\105\114\097\100\097'elseif type(an.expiresAt)=='\110\117\109\098\101\114'then local ar=math.max(0
,an.expiresAt-ao)local as=math.floor(ar/86400)local at=math.floor(ar%86400/3600)
local au=math.floor(ar%3600/60)aq=as>0 and string.format('\037\100\100\032\037\048\050\100\104\032\037\048\050\100\109',as,at
,au)or at>0 and string.format('\037\100\104\032\037\048\050\100\109',at,au)or string.format('\037\100\109\032\037\048\050\100\115',au,
math.floor(ar%60))elseif an.lifetime then aq='\076\105\102\101\032\116\105\109\101'end return{plan=an.plan
or'\077\101\109\098\101\114',keyLabel=an.keyLabel or'\u{2014}',validity=aq,expired=ap==true,
expiresAt=an.expiresAt,lifetime=an.lifetime==true,source=an.source or
'\065\099\101\115\115\111\032\108\111\099\097\108'}end function ak.requestAvatar(an,ao,ap)if al[ao]then ap(al[ao])
return end task.spawn(function()local aq,ar,as=pcall(an.GetUserThumbnailAsync,an
,ao,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size150x150)if aq and as~=
false and type(ar)=='\115\116\114\105\110\103'and#ar>0 then al[ao]=ar ap(ar)end end)end return ak
end)()local al=(function()local al={}function al.create(am,an,ao,ap,aq)aq=aq or
os.clock local ar,as=false,0 local at={events=0,handled=0,failures=0,available=
am~=nil}local au=nil if am then au=am:Connect(function()at.events+=1 if ar or
not an()or aq()<as then return end as=aq()+60 local av,aw=pcall(ao)if av then at
.handled+=1 at.lastError=nil else at.failures+=1 at.lastError=tostring(aw)if ap
then ap('\065\110\116\105\045\065\070\075\032\105\110\100\105\115\112\111\110\105\118\101\108\058\032'..tostring(aw),'\101\114\114\111\114')end end end)end return{
stats=at,close=function()ar=true if au then au:Disconnect()au=nil end end}end
return al end)()local am=(function()local am={}function am.discover(an,ao,ap)ap=
ap or{}local aq=ap.typeOf or typeof local ar=ap.getters or{}if not ap.getters
then if type(getupvalues)=='\102\117\110\099\116\105\111\110'then table.insert(ar,getupvalues)end if
debug and type(debug.getupvalues)=='\102\117\110\099\116\105\111\110'then table.insert(ar,debug.
getupvalues)end end local as={api=#ar>0,visited=0,samples=0}if#ar==0 then as.
reason='\117\112\118\097\108\117\101\032\103\101\116\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101'return nil,nil,as end local at,au={},{}for av
,aw in ipairs({'\083\101\116\085\115\101\072\101\108\100','\071\101\116\080\097\114\116\115','\071\101\116\082\101\109\111\118\101\100\070\114\097\099\116\105\111\110','\083\116\097\114\116','\073\110\105\116'})do
if type(an[aw])=='\102\117\110\099\116\105\111\110'then table.insert(at,{fn=an[aw],depth=0})end end
local av,aw=nil,nil local ax=1 while ax<=#at and as.visited<32 do local ay=at[ax
]ax+=1 if not au[ay.fn]then au[ay.fn]=true as.visited+=1 local az=nil for aA,aB
in ipairs(ar)do local aC,aD=pcall(aB,ay.fn)if aC and type(aD)=='\116\097\098\108\101'then az=aD
break end end local aA=0 for aB,aC in pairs(az or{})do aA+=1 if aA>64 then break
end if type(aC)=='\102\117\110\099\116\105\111\110'and ay.depth<3 and#at<64 then table.insert(at,{fn=aC,
depth=ay.depth+1})elseif type(aC)=='\116\097\098\108\101'then if rawget(aC,'\080\111\116\097\116\111\083\108\111\116\115')~=nil
and type(rawget(aC,'\083\101\101\100'))=='\110\117\109\098\101\114'then aw=aC end if not av then local aD,aE,
aF=0,0,{}for aG,aH in pairs(aC)do aD+=1 if aD>16 then break end if aq(aG)==
'\073\110\115\116\097\110\099\101'and type(aH)=='\110\117\109\098\101\114'and aH%1==0 and aH>=1 and aH<=30009 then local
aI,aJ=pcall(function()return aG:IsA('\066\097\115\101\080\097\114\116')and aG:IsDescendantOf(ao)end)if
aI and aJ and not aF[aH]then aE+=1 aF[aH]=true end end end if aE>=3 and aE>=math
.min(16,aD)*0.8 then av=aC as.samples=aE end end end end end end as.found=av~=
nil as.state=aw~=nil as.reason=av and'\110\097\116\105\118\101\032\112\097\114\116\045\116\111\045\073\068\032\116\097\098\108\101'or
'\110\111\032\109\097\116\099\104\105\110\103\032\110\097\116\105\118\101\032\116\097\098\108\101'return av,aw,as end function am.id(an,ao,ap,aq)aq=aq
or typeof if type(an)~='\116\097\098\108\101'or aq(ao)~='\073\110\115\116\097\110\099\101'then return nil end local ar=
rawget(an,ao)if type(ar)~='\110\117\109\098\101\114'or ar%1~=0 or ar<1 or ar>30009 then return nil
end local as,at=pcall(function()return ao.Parent~=nil and ao:IsA('\066\097\115\101\080\097\114\116')and
ao:IsDescendantOf(ap)end)return as and at and ar or nil end return am end)()
local an=(function()local an={}function an.new()local ao={waves=0,requests=0,
inventory_gain=0,timeouts=0,cancelled=0,limit=2,pending=0,successes=0}local ap=
nil local aq=0 local ar={}local as=nil return{stats=ao,cancel=function()if ap
then ao.cancelled+=1 end ap=nil ao.pending=0 end,observe=function(at,au)if as
then ao.elapsed=math.max(0,at-as)ao.gain_per_second=ao.inventory_gain/math.max(1
,ao.elapsed)end if not ap then return 0,false end local av=type(au)=='\110\117\109\098\101\114'and
au-ap.before or 0 if av>0 then ao.inventory_gain+=av ao.successes+=1 if ao.
successes%3==0 then ao.limit=math.min(16,ao.limit+1)end ap=nil ao.pending=0 aq=
at+0.08 return av,false end if at>=ap.deadline then ao.timeouts+=1 ao.limit=math
.max(1,math.floor(ao.limit/2))ap=nil ao.pending=0 aq=at+math.min(0.6,0.08*ao.
timeouts)return 0,true end return 0,false end,budget=function(at,au,av)if ap or
at<aq or type(au)~='\110\117\109\098\101\114'or type(av)~='\110\117\109\098\101\114'or au~=au or av~=av or au<0 or
au==math.huge then return 0 end return math.max(0,math.min(ao.limit,math.floor(
av-au)))end,available=function(at,au)return type(at)=='\110\117\109\098\101\114'and au>=(ar[at]or
0)end,begin=function(at,au,av)if ap or at<aq or type(au)~='\110\117\109\098\101\114'or au<0 or au
~=au or au==math.huge or#av==0 or#av>ao.limit then return false end local aw={}
for ax,ay in ipairs(av)do if type(ay)~='\110\117\109\098\101\114'or ay%1~=0 or ay<0 or ay>=
4294967296 or aw[ay]or at<(ar[ay]or 0)then return false end aw[ay]=true end for
ax in pairs(aw)do ar[ax]=at+1 end if not as then as=at end if ao.waves%64==0
then for ax,ay in pairs(ar)do if ay<=at then ar[ax]=nil end end end ap={before=
au,deadline=at+0.35}ao.waves+=1 ao.requests+=#av ao.pending=#av return true end}
end return an end)()local ao=(function()local ao={}function ao.create(ap,aq,ar,
as)local at=ap.Players.LocalPlayer local au=aq['\083\104\097\114\101\100\046\080\108\097\121\101\114\083\116\097\116\101\083\104\097\114\101\100']or{}
local av=aq['\077\111\100\117\108\101\115\046\082\101\115\111\117\114\099\101\115\046\080\097\099\107\101\116\115']or{}local aw,ax=nil,0 local ay,az=false,
false local aA=nil local aB,aC=0,nil local aD={}local aE={}local function aF()
for aG,aH in ipairs({at:FindFirstChild('\066\097\099\107\112\097\099\107')or false,at.Character or false
})do if aH then for aI,aJ in ipairs(aH:GetChildren())do local aL=string.lower(aJ
.Name)if aJ:IsA('\084\111\111\108')and(aL=='\107\101\121'or aL:find('\099\104\097\118\101',1,true)or aL:find('\099\114\097\110\101'
,1,true)and aL:find('\107\101\121',1,true))then return aJ end end end end end local
function aG()if type(au.TryGetPlayerState)=='\102\117\110\099\116\105\111\110'then local aH,aI=pcall(au.
TryGetPlayerState,at)if aH and type(aI)=='\116\097\098\108\101'and aI.HasKey==true then return
true end end return aF()~=nil end local function aH()if os.clock()<ax then
return aw end ax=os.clock()+2 aw=nil aE={}local aI=ap.Workspace:FindFirstChild(
'\077\097\112')local aJ=ar.actor()local aL=-math.huge for aM,aN in ipairs(aI and aI:
GetDescendants()or{})do if aN:IsA('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and aN.Enabled then local aO
=string.upper(aN:GetFullName())local aP=string.upper(aN.ActionText..'\032'..aN.
ObjectText)local aQ=aO:find('\084\082\085\067\075',1,true)or aO:find('\067\082\065\078\069',1,true)or aO:find(
'\071\085\073\078\068\065\083\084\069',1,true)or aO:find('\067\065\077\073\078\072',1,true)or aO:find('\087\082\069\067\075',1,true)local aR
=aP:find('\075\069\089',1,true)or aP:find('\067\072\065\086\069',1,true)local aS=aP:find('\085\078\076\079\067\075',1,true
)or aP:find('\085\083\069',1,true)or aP:find('\069\078\084\069\082',1,true)or aP:find('\068\082\073\086\069',1,true)or
aP:find('\069\083\067\065\080\069',1,true)local aT=aP:find('\066\085\089',1,true)or aP:find('\076\079\067\075\069\068',1,true
)or aP:find('\083\079\076\068',1,true)local aU=aO:find('\083\084\079\082\069\073\084\069\077\083',1,true)or aO:find(
'\080\069\069\076\073\078\071\077\065\067\072\073\078\069\083',1,true)if not aU and not aT and(aR or aQ and aS)then local aV=
ar.promptPosition(aN)local aW=aJ and aV and(aJ.Position-aV).Magnitude or 0 local
aX=(aQ and 10000 or 0)+(aR and 1000 or 0)-aW table.insert(aE,{path=aN:
GetFullName(),action=aN.ActionText,object=aN.ObjectText})if aX>aL then aL=aX aw=
aN end end end end return aw end local aI=av.Escaped and av.Escaped.
OnClientEvent if aI and type(aI.Connect)=='\102\117\110\099\116\105\111\110'then local aJ,aL=pcall(aI.
Connect,aI,function(aJ)if not az and(aJ==nil or aJ==at or aJ==at.UserId)then az=
true aA=os.clock()aC=nil end end)if aJ then table.insert(aD,aL)end end return{
ready=function()return not az and(ay or aG())end,step=function(aJ)local aL=aH()
if not aL then aC='\078\101\110\104\117\109\032\112\114\111\109\112\116\032\100\101\032\099\104\097\118\101\047\115\097\105\100\097\032\118\101\114\105\102\105\099\097\118\101\108\032\101\115\116\097\032\104\097\098\105\108\105\116\097\100\111\046'
return false,aC end local aM=aF()local aN=at.Character local aO=aN and aN:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')if aM and aO then pcall(aO.EquipTool,aO,aM)end
ar.aim(aL,true)local aP,aQ,aR=pcall(ar.trigger,aL,aJ)ar.clearAim()aB+=1 ax=0 if
az then return true end if not aP then aC=tostring(aQ)return false,aC end if not
aQ then aC=aR return false,aR end ay=true aC=nil as(
'\073\110\116\101\114\097\099\097\111\032\100\101\032\115\097\105\100\097\032\097\099\105\111\110\097\100\097\058\032'..aL:GetFullName())ar.waitFor(0.4,aJ)return true
end,finishTime=function()return aA end,diagnostic=function()return{has_key=aG(),
started=ay,finished=az,attempts=aB,last_error=aC,candidates=aE}end,close=
function()for aJ,aL in ipairs(aD)do aL:Disconnect()end end}end function ao.
endingSkipper(ap,aq,ar,as,at)ar=ar or os.clock local au,av,aw=nil,0,nil local ax
,ay,az=nil,0,nil local aA={attempts=0,sent=false,button_gone=false,
camera_attempts=0,events={},screens={}}local aB={}local aC={escape=true,outro=
true,outrocutscene=true,endcutscene=true,endingcutscene=true,victory=true,
escapecutscene=true,cutscene=true,runreport=true,runresults=true,escapereport=
true}local aD={skip=true,skipscene=true,skipcutscene=true,skipoutro=true,
skipending=true,skipoutrocutscene=true,skipanimation=true,pular=true,pularcena=
true}local function aE(aF)return string.lower((tostring(aF):gsub('\091\094\037\119\093','')))
end local function aF(aG,aH)local aI=aG local aJ=false while aI do local aL=aE(
aI.Name)if aL:find('\105\110\116\114\111',1,true)or aL:find('\116\117\116\111\114\105\097\108',1,true)then return false
end aJ=aJ or aC[aL]==true if aI==aH then return aJ end aI=aI.Parent end return
false end local function aG(aH)if not au or#aA.events>=20 or ar()-au>60 then
return end table.insert(aA.events,{name=aH,seconds=math.floor((ar()-au)*100)/100
})end local function aH(aI,aJ)if not aI or not aJ then return end local aL=ar()
au=au or aL if aL-au<=60 and at then local aM=at()if aM and aM~=az then az=aM
aG('\099\097\109\101\114\097\058'..aM)end end if aw then aA.button_gone=aw.Parent==nil or not aq.
visible(aw)return end if aL-au>math.max(20,ax and ax-au+20 or 0)then aA.reason=
aA.reason or'\110\111\032\118\105\115\105\098\108\101\032\110\097\116\105\118\101\032\115\107\105\112\032\099\111\110\116\114\111\108'return end if aL<av or aA.attempts>=
2 then return end av=aL+0.5 local aM={}for aN,aO in ipairs(ap:GetChildren())do
if aO:IsA('\083\099\114\101\101\110\071\117\105')and aO.Enabled then if not aB[aO.Name]and#aA.screens<24
then aB[aO.Name]=true table.insert(aA.screens,aO.Name)end for aP,aQ in ipairs(aO
:GetDescendants())do if aQ:IsA('\071\117\105\066\117\116\116\111\110')and aQ.Active and aF(aQ,aO)and aq.
visible(aQ)and aQ.AbsoluteSize.X>0 and aQ.AbsoluteSize.Y>0 and(aD[aE(aQ.Name)]or
aD[aE(aq.texts(aQ))])then table.insert(aM,aQ)end end end end aA.candidates=#aM
if#aM~=1 then aA.reason=#aM>1 and'\097\109\098\105\103\117\111\117\115\032\110\097\116\105\118\101\032\115\107\105\112\032\099\111\110\116\114\111\108\115'or nil return
end aA.attempts+=1 aA.path=aM[1]:GetFullName()local aN,aO=aq.activate(aM[1])aA.
sent=aN==true aA.reason=aO if aN then aw=aM[1]else av=aL+2 end end local
function aI(aJ,aL)if not aJ then return end local aM=ar()if not ax then ax=aM
aG('\101\115\099\097\112\101\095\099\111\110\102\105\114\109\101\100')end if not aL or not as or aA.sent or aA.camera_attempts>=
2 then return end if aM-ax<1 or aM-ax>12 or aM<ay then return end if at and at()
~='\083\099\114\105\112\116\097\098\108\101'then return end if aA.camera_released and not at then return end
ay=aM+1.5 aA.camera_attempts+=1 local aN,aO=pcall(as)aA.camera_released=aA.
camera_released or aN and aO==true aA.camera_result=aN and aO==true and
'\108\111\099\097\108\032\099\097\109\101\114\097\032\114\101\116\117\114\110\101\100\032\097\102\116\101\114\032\099\111\110\102\105\114\109\101\100\032\101\115\099\097\112\101'or aN and
'\110\111\032\115\099\114\105\112\116\097\098\108\101\032\099\097\109\101\114\097\032\119\105\116\104\032\097\099\116\105\118\101\032\099\104\097\114\097\099\116\101\114'or'\099\097\109\101\114\097\032\114\101\115\101\116\032\102\097\105\108\101\100'if aN and aO
then aG('\099\097\109\101\114\097\095\114\101\108\101\097\115\101\100')end end return{poll=aH,afterVictory=aI,event=aG,stats=
aA}end return ao end)()local ap=(function()local ap={}local aq={Cash=true,Bag=
true,Hotbar=true,ToolHotbar=true,ToolBar=true,Toolbar=true,Tools=true,
ToolSelection=true,Interactions=true,Interaction=true,ProximityPrompts=true}
function ap.restore(ar,as)as=as or{}local at={restored=0,errors=0,names={},
cloned={},missing={},screens={}}local function au(av)local aw=pcall(av)if not aw
then at.errors+=1 end end local function av(aw,ax,...)local ay=as[aw]if type(ay)
=='\116\097\098\108\101'and type(ay[ax])=='\102\117\110\099\116\105\111\110'then local az=table.pack(...)au(function()
ay[ax](table.unpack(az,1,az.n))end)end end av('\067\111\110\116\114\111\108\108\101\114\115\046\067\117\116\116\105\110\103\067\111\110\116\114\111\108\108\101\114',
'\083\101\116\072\101\108\100',false)av('\067\111\110\116\114\111\108\108\101\114\115\046\067\117\116\116\105\110\103\067\111\110\116\114\111\108\108\101\114','\083\101\116\065\117\116\111',false)av(
'\067\111\110\116\114\111\108\108\101\114\115\046\080\111\116\097\116\111\080\105\108\101\067\111\110\116\114\111\108\108\101\114','\083\101\116\085\115\101\072\101\108\100',false)local aw=as[
'\067\111\110\116\114\111\108\108\101\114\115\046\080\101\101\108\105\110\103\067\111\110\116\114\111\108\108\101\114']if aw and aw.IsPeeling==true then local ax=as[
'\077\111\100\117\108\101\115\046\082\101\115\111\117\114\099\101\115\046\080\097\099\107\101\116\115']or{}if ax.PeelingCancel and type(ax.PeelingCancel.
Fire)=='\102\117\110\099\116\105\111\110'then au(function()ax.PeelingCancel:Fire()end)end av(
'\067\111\110\116\114\111\108\108\101\114\115\046\080\101\101\108\105\110\103\067\111\110\116\114\111\108\108\101\114','\083\116\111\112\080\101\101\108\105\110\103')end av(
'\067\111\110\116\114\111\108\108\101\114\115\046\083\116\111\114\101\086\105\101\119\067\111\110\116\114\111\108\108\101\114','\067\108\111\115\101')av('\067\111\110\116\114\111\108\108\101\114\115\046\084\111\111\108\085\112\103\114\097\100\101\067\111\110\116\114\111\108\108\101\114'
,'\083\101\116\079\112\101\110',false)local ax=ar.Players.LocalPlayer local ay=ax:FindFirstChild(
'\080\108\097\121\101\114\071\117\105')if ay then local az=ar.StarterGui if az and type(az.GetChildren)==
'\102\117\110\099\116\105\111\110'and type(ay.FindFirstChild)=='\102\117\110\099\116\105\111\110'then for aA,aB in ipairs(az:
GetChildren())do if aB:IsA('\083\099\114\101\101\110\071\117\105')and aq[aB.Name]and not ay:FindFirstChild(
aB.Name,true)then au(function()local aC=aB:Clone()aC.Enabled=true aC.Parent=ay
table.insert(at.cloned,aC.Name)end)end end end for aA,aB in ipairs(ay:
GetDescendants())do if aq[aB.Name]then au(function()if aB:IsA('\083\099\114\101\101\110\071\117\105')then
aB.Enabled=true elseif aB:IsA('\071\117\105\079\098\106\101\099\116')then local aC=aB.Parent local aD=nil
while aC and aC~=ay do if aC:IsA('\083\099\114\101\101\110\071\117\105')then aD=aC break end aC=aC.Parent
end if aD and(aD.Name=='\084\111\111\108\085\112\103\114\097\100\101\115'or aD.Name=='\083\116\111\114\101\086\105\101\119'or aD.Name:find(
'\067\117\116\115\099\101\110\101',1,true))then return end aB.Visible=true if aD then aD.Enabled=true
end else return end at.restored+=1 table.insert(at.names,aB.Name)end)end end end
if ay and type(ay.FindFirstChild)=='\102\117\110\099\116\105\111\110'then for az,aA in ipairs({'\072\111\116\098\097\114',
'\066\097\103'})do if not ay:FindFirstChild(aA,true)then table.insert(at.missing,aA)end
end for az,aA in ipairs(ay:GetChildren())do if aA:IsA('\083\099\114\101\101\110\071\117\105')then table.
insert(at.screens,{name=aA.Name,enabled=aA.Enabled})end end end if ar.
ProximityPromptService then au(function()ar.ProximityPromptService.Enabled=true
end)end local az=ax:FindFirstChild('\080\108\097\121\101\114\083\099\114\105\112\116\115')local aA=az and az:
FindFirstChild('\080\108\097\121\101\114\077\111\100\117\108\101')if aA then au(function()local aB=require(aA):
GetControls()aB:Enable()end)end local aB=ax.Character local aC=aB and aB:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')if aC then au(function()aC.AutoRotate=true end)
end return at end return ap end)()local aq=(function()local aq={}aq.defaults={
opAutoFinish=false,opKeyShortcut=true,antiAfk=true,coolHoldSeconds=5,
coolHoldFallback=true,skipEndingScene=true,releaseEndingCamera=true,
opBatchFunding=true,opFastPrompts=true,partyProfile='\083\111\108\111',partyRole='\076\101\097\100\101\114',
partySize=4,partySlot=1,teamFunding=false,teamLead=false,supportCut=false,
nativeWalkUpgrade=false,fastDelivery=true,placementDelay=0.01,throughputMode=
true,autoRepairGui=true,aimTable=true,autoEscape=false,productionBatch=500,
autoProgress=false,autoCut=false,autoFarm=false,autoDeliver=false,autoCool=false
,autoSell=false,autoDynamite=false,autoCrank=false,autoBuyTools=false,
autoBuyUpgrades=false,autoBuyStorage=false,collectPumpkins=false,pumpkinPriority
=true,priorityValue=true,cutBuyTools=true,rarity='\065\110\121',selection='\078\101\097\114\101\115\116',
tableChoice='\078\101\097\114\101\115\116',deliveryMode='\065\109\111\117\110\116',deliveryTarget='\067\114\097\116\101',movement=
'\084\101\108\101\112\111\114\116',speedMode='\084\117\114\098\111',cutMode='\070\097\115\116',teleportSettle=0.1,pickBatch=8,
cutBurst=3,cutTargetRate=20,cutToolMultiplier=4,auraCollect=true,auraRadius=16,
collectTool='\065\117\116\111',logicalSpecials=true,autoRecover=true,sellThreshold=500,
sellRemainder=true,buyAfterSell=true,returnAfterSell=true,infiniteBag=false,
collectGems=true,gemPriority=true,upgradeDrone=true,upgradeMachines=true,
upgradeGeneral=true,saveForNextTool=true,dynamiteInterval=1,dynamiteAggressive=
false,maintainCutBuffer=true,cutBuffer=400,fixMenuBlur=true,buyMachines=true,
clearPileFirst=true,autoBuyDrone=false,worthEarlyLimit=3,forceThirdPerson=false,
cameraDistance=20,aimCooling=true,keyPriority=true,uiWidth=760,uiHeight=580,
uiScale=65,uiX=0.5,uiY=0.5,buttonX=0.03,buttonY=0.22,buttonSize=56,deliveryFill=
90,deliveryBatch=1000,heatStart=60,heatStop=25,coolingRetry=12,reserveCash=0,
maxPurchase=0,actionDelay=0.04,actionTimeout=10,travelTimeout=30,maxDistance=250
,returnAfterCooling=true,showStatus=true,notifications=true,pauseOnMovement=true
,keyProgress='\070\054',keyCut='\070\055',keyFarm='\070\056',keyCool='\070\057',keyBuy='\070\049\048',keyMenu=
'\073\110\115\101\114\116',keyPause='\069\110\100',keyDeliver='\078\111\110\101',keyPumpkin='\078\111\110\101',keyStorage='\078\111\110\101',
keyUpgrades='\078\111\110\101',keyCrank='\078\111\110\101',keySell='\078\111\110\101',keyDynamite='\078\111\110\101'}local ar={
partySlot={1,4},partySize={2,4},coolHoldSeconds={1,5},deliveryFill={10,100},
deliveryBatch={1,1000000},heatStart={15,100},heatStop={0,90},coolingRetry={5,120
},reserveCash={0,100000000},maxPurchase={0,100000000},actionDelay={0.02,5},
actionTimeout={2,60},travelTimeout={5,120},maxDistance={10,1000},teleportSettle=
{0.05,1},uiWidth={300,1100},uiHeight={340,900},uiScale={65,150},uiX={0,1},uiY={0
,1},buttonX={0,1},buttonY={0,1},buttonSize={44,88},pickBatch={1,16},cutBurst={1,
6},placementDelay={0.005,0.08},productionBatch={50,10000},auraRadius={5,18},
cutBuffer={1,10000},worthEarlyLimit={1,10},cameraDistance={8,100},cutTargetRate=
{1,40},cutToolMultiplier={1,4},sellThreshold={1,1000000},dynamiteInterval={0.1,
15}}local as={partyProfile={Solo=true,Team=true,Mixed=true},partyRole={Leader=
true,Collect=true,Cut=true},rarity={Any=true,Rainbow=true,Diamond=true,Golden=
true},selection={Nearest=true,Random=true},deliveryMode={Amount=true,Percent=
true},deliveryTarget={Crate=true,Table=true,Manual=true,Auto=true},movement={
Walk=true,Teleport=true},speedMode={Turbo=true,Standard=true},cutMode={Fast=true
,Native=true},collectTool={Auto=true,Hand=true,Shovel=true,PotatoSucker=true},
tableChoice={Nearest=true,PeelingTable1=true,PeelingTable2=true,PeelingTable3=
true,PeelingTable4=true}}local at={'\111\112\065\117\116\111\070\105\110\105\115\104','\097\117\116\111\080\114\111\103\114\101\115\115','\097\117\116\111\067\117\116',
'\097\117\116\111\070\097\114\109','\097\117\116\111\068\101\108\105\118\101\114','\097\117\116\111\067\111\111\108','\097\117\116\111\067\114\097\110\107','\097\117\116\111\083\101\108\108','\097\117\116\111\068\121\110\097\109\105\116\101',
'\097\117\116\111\066\117\121\084\111\111\108\115','\097\117\116\111\066\117\121\085\112\103\114\097\100\101\115','\097\117\116\111\066\117\121\083\116\111\114\097\103\101','\099\111\108\108\101\099\116\080\117\109\112\107\105\110\115','\097\117\116\111\069\115\099\097\112\101'
}function aq.clone(au)if type(au)~='\116\097\098\108\101'then return au end local av={}for aw,
ax in pairs(au)do av[aw]=aq.clone(ax)end return av end function aq.validate(au,
av)local aw=aq.clone(aq.defaults)if type(au)=='\116\097\098\108\101'then for ax,ay in pairs(aq.
defaults)do local az=au[ax]if type(az)==type(ay)then if type(az)=='\110\117\109\098\101\114'then
if az==az and az~=math.huge and az~=-math.huge then local aA=ar[ax]aw[ax]=aA and
math.clamp(az,aA[1],aA[2])or az end elseif as[ax]then if as[ax][az]then aw[ax]=
az end elseif type(az)=='\115\116\114\105\110\103'and string.sub(ax,1,3)=='\107\101\121'then if#az>0 and#az
<24 and string.match(az,'\094\091\037\119\093\043\036')then aw[ax]=az end else aw[ax]=az end end end
end aw.heatStop=math.min(aw.heatStop,aw.heatStart-5)aw.deliveryBatch=math.floor(
aw.deliveryBatch)aw.pickBatch=math.floor(aw.pickBatch)aw.cutBurst=math.floor(aw.
cutBurst)aw.sellThreshold=math.floor(aw.sellThreshold)aw.partySlot=math.floor(aw
.partySlot)aw.partySize=math.floor(aw.partySize)if aw.opAutoFinish then aw.
autoProgress=false end if av then for ax,ay in ipairs(at)do aw[ay]=false end end
return aw end function aq.pause(au)for av,aw in ipairs(at)do au[aw]=false end
end function aq.applyPartyProfile(au)aq.pause(au)local av=au.partyProfile==
'\077\105\120\101\100'local aw=au.partyProfile=='\084\101\097\109'local ax=aw and au.partyRole=='\067\111\108\108\101\099\116'
local ay=aw and au.partyRole=='\067\117\116'au.teamFunding=ax au.teamLead=aw and au.
partyRole=='\076\101\097\100\101\114'au.supportCut=av or ay au.nativeWalkUpgrade=av au.tableChoice
=aw and'\080\101\101\108\105\110\103\084\097\098\108\101'..au.partySlot or'\078\101\097\114\101\115\116'au.movement=av and'\087\097\108\107'or
'\084\101\108\101\112\111\114\116'au.cutMode=av and'\078\097\116\105\118\101'or'\070\097\115\116'au.speedMode=av and'\083\116\097\110\100\097\114\100'or
'\084\117\114\098\111'au.fastDelivery=not av au.aimTable=not av au.auraCollect=not av au.
logicalSpecials=not av au.forceThirdPerson=false au.deliveryTarget='\067\114\097\116\101'au.
cutBuyTools=true if not av and not ax and not ay then au.opAutoFinish=true
elseif ax then au.deliveryMode='\065\109\111\117\110\116'au.deliveryBatch=100 au.collectTool=
'\065\117\116\111'au.rarity='\065\110\121'au.autoFarm=true au.autoDeliver=true au.autoDynamite=true
au.autoBuyTools=true au.autoBuyStorage=true au.autoBuyUpgrades=true else au.
autoCut=true au.autoSell=true au.autoBuyTools=true au.autoBuyUpgrades=true au.
autoEscape=ay end end function aq.progress(au)return au.autoProgress or au.
opAutoFinish end function aq.batchCollect(au)return au.opAutoFinish or au.
teamFunding and au.autoFarm end function aq.anyActive(au)for av,aw in ipairs(at)
do if au[aw]then return true end end return false end function aq.displayed(au,
av)if type(au[av])~='\098\111\111\108\101\097\110'then return au[av]end if av=='\111\112\065\117\116\111\070\105\110\105\115\104'or av==
'\097\117\116\111\080\114\111\103\114\101\115\115'then return au[av]==true end if au.opAutoFinish then return au[av]
end return aq.effective(au,av)end function aq.effective(au,av)if av=='\097\117\116\111\067\114\097\110\107'
and aq.progress(au)and au.deliveryTarget=='\077\097\110\117\097\108'then return true end if av==
'\097\117\116\111\070\097\114\109'and au.collectPumpkins then return true end if av=='\097\117\116\111\067\111\111\108'or av==
'\097\117\116\111\070\097\114\109'or av=='\097\117\116\111\068\101\108\105\118\101\114'or av=='\097\117\116\111\066\117\121\084\111\111\108\115'or av=='\097\117\116\111\066\117\121\085\112\103\114\097\100\101\115'or av
=='\097\117\116\111\066\117\121\083\116\111\114\097\103\101'or av=='\097\117\116\111\083\101\108\108'or av=='\097\117\116\111\068\121\110\097\109\105\116\101'or av=='\097\117\116\111\069\115\099\097\112\101'then
if aq.progress(au)then return true end end if av=='\097\117\116\111\067\117\116'then return aq.
progress(au)or au.autoCut end if av=='\097\117\116\111\066\117\121\084\111\111\108\115'and au.autoCut and au.
cutBuyTools then return true end return au[av]==true end function aq.
acceptVariant(au,av,aw,ax)if au.opAutoFinish then return not aw or au.
collectPumpkins end if aw then return au.collectPumpkins end if ax and au.
collectGems then return true end if not au.autoProgress and not au.autoFarm and
not au.autoDynamite then return false end if au.rarity=='\065\110\121'then return true
end return av~=nil and string.lower(tostring(av))==string.lower(au.rarity)end
function aq.affordable(au,av,aw,ax)if ax~='\067\097\115\104'then return false,'\099\117\114\114\101\110\099\121'end
if type(av)~='\110\117\109\098\101\114'or type(aw)~='\110\117\109\098\101\114'or av~=av or aw~=aw or av==math.huge
or aw==math.huge or aw<=0 then return false,'\117\110\099\111\110\102\105\114\109\101\100'end if au.maxPurchase>0
and aw>au.maxPurchase then return false,'\112\117\114\099\104\097\115\101\095\108\105\109\105\116'end if av-aw<au.
reserveCash then return false,'\114\101\115\101\114\118\101'end return true end function aq.
parseAmount(au)if type(au)~='\115\116\114\105\110\103'then return nil end local av=string.gsub(au,
'\037\115','')if string.find(string.upper(av),'\082\036',1,true)or string.find(string.upper(
av),'\082\079\066\085\088',1,true)then return nil end local aw=string.match(av,
'\037\045\063\091\037\100\093\091\037\100\037\046\044\093\042')if not aw then return nil end local ax,ay for az=1,#aw do
local aA=string.sub(aw,az,az)if aA=='\044'then ax=az elseif aA=='\046'then ay=az end
end if ax and ay then if ax>ay then aw=string.gsub(string.gsub(aw,'\037\046',''),'\044',
'\046')else aw=string.gsub(aw,'\044','')end elseif ax then local az=#aw-ax aw=string.
gsub(aw,'\044',az==3 and''or'\046')elseif ay and#aw-ay==3 then aw=string.gsub(aw,'\037\046',
'')end local az=tonumber(aw)if not az or az<0 then return nil end local aA=
string.upper(string.match(av,'\091\037\100\093\091\037\100\037\046\044\093\042\040\091\075\107\077\109\066\098\084\116\093\041')or'')local aB=({K=1000,M
=1000000,B=1000000000,T=1000000000000})[aA]or 1 az=az*aB return az end function
aq.purchaseReady(au,av,aw,ax,ay)if not aq.affordable(au,av,aw,'\067\097\115\104')then return
false end return not ay or av>=ay.cash or ax~=ay.level end function aq.
parseCapacity(au)if type(au)~='\115\116\114\105\110\103'then return nil,nil end local av,aw=string
.match(au,'\094\040\046\045\041\047\040\046\045\041\036')if not av or not aw then return nil,nil end local ax=aq.
parseAmount(av)local ay=string.find(aw,'\u{221e}',1,true)and math.huge or aq.
parseAmount(aw)if not ax or not ay or ay<=0 or ax%1~=0 then return nil,nil end
return ax,ay end function aq.bagCount(au,av)local aw=type(au)=='\116\097\098\108\101'and au.
Potatoes or nil if type(aw)=='\110\117\109\098\101\114'and aw>=0 and aw%1==0 and aw<math.huge then
return aw,true end local ax=aq.parseCapacity(av)return ax,false end function aq.
coolingLatch(au,av,aw,ax)if type(av)=='\110\117\109\098\101\114'and av==av then if au then return
av>aw.heatStop end return av>=aw.heatStart end return ax==true end function aq.
deliveryGoal(au,av)if type(av)~='\110\117\109\098\101\114'or av<=0 or av~=av then return nil end
if av==math.huge then return au.deliveryBatch end if au.deliveryMode=='\080\101\114\099\101\110\116'
then return math.max(1,math.ceil(av*au.deliveryFill/100))end return math.min(av,
au.deliveryBatch)end function aq.productionGoal(au,av,aw)if au.opAutoFinish and
au.teamLead and type(aw)=='\110\117\109\098\101\114'and aw<100 then return math.min(av or 100,100)
end if au.opAutoFinish then return av end return math.min(av or au.
productionBatch,au.productionBatch)end function aq.tickInterval(au)return au.
speedMode=='\084\117\114\098\111'and math.min(au.actionDelay,0.02)or au.actionDelay end
function aq.pickLimit(au,av,aw,ax)if ax or au.speedMode~='\084\117\114\098\111'then return 1
end local ay=aq.deliveryGoal(au,aw)return math.max(1,math.min(au.pickBatch,math.
max(1,aw-av),math.max(1,(ay or aw)-av)))end function aq.choose(au,av,aw)local
function ax(ay)return aw>=((av.retryAt or{})[ay]or 0)end local ay=au.
opAutoFinish and av.bulkOnly==true local az=av.questAction local aA=av.
mountainEmpty and(az=='\099\111\108\108\101\099\116'or az=='\103\101\109'or az=='\100\121\110\097\109\105\116\101'or not av.tableReady
and not av.cutting and(av.stock or 0)==0 and(av.carried or 0)==0)if aq.
effective(au,'\097\117\116\111\069\115\099\097\112\101')and av.hasKey and(not az or az=='\101\115\099\097\112\101'or aA)and ax(
'\101\115\099\097\112\101')then return'\101\115\099\097\112\101'end if aq.effective(au,'\097\117\116\111\067\111\111\108')and av.needCooling
and aw>=(av.coolingRetryAt or 0)and ax('\099\111\111\108')then return'\099\111\111\108'end if az=='\099\111\111\108'
and type(av.heat)=='\110\117\109\098\101\114'and av.heat>au.heatStop and not av.flowing and aw>=(
av.coolingRetryAt or 0)and ax('\099\111\111\108')then return'\099\111\111\108'end if az=='\115\101\108\108'and(av.
stock or 0)>0 and aw>=(av.sellRetryAt or 0)and ax('\115\101\108\108')then return'\115\101\108\108'end if
az=='\099\117\116'or az=='\115\101\108\108'then if av.cutting and ax('\099\117\116')then return'\099\117\116'end if av.
tableReady and ax('\101\110\116\101\114\067\117\116')then return'\101\110\116\101\114\067\117\116'end if(av.carried or 0)>0 and
av.canStageCut and ax('\115\116\097\103\101\067\117\116')then return'\115\116\097\103\101\067\117\116'end end if az=='\100\121\110\097\109\105\116\101'
and av.dynamiteReady and not av.cutting and ax('\100\121\110\097\109\105\116\101')then return'\100\121\110\097\109\105\116\101'
end if(az=='\099\111\108\108\101\099\116'or az=='\103\101\109')and not av.mountainEmpty and av.hasCandidate
and type(av.carried)=='\110\117\109\098\101\114'and type(av.capacity)=='\110\117\109\098\101\114'and av.carried<av.
capacity and ax('\099\111\108\108\101\099\116')then return'\099\111\108\108\101\099\116'end if au.opAutoFinish and au.
opKeyShortcut and av.keyProbeReady and ax('\107\101\121\080\114\111\098\101')then return'\107\101\121\080\114\111\098\101'end if
av.postClearUnload and aq.effective(au,'\097\117\116\111\068\101\108\105\118\101\114')and ax('\100\101\108\105\118\101\114')then
return'\100\101\108\105\118\101\114'end if au.teamFunding and av.mountainEmpty and av.carried and av.
carried>0 and aq.effective(au,'\097\117\116\111\068\101\108\105\118\101\114')and ax('\100\101\108\105\118\101\114')then return
'\100\101\108\105\118\101\114'end if not ay and av.droneReady and ax('\100\114\111\110\101')then return'\100\114\111\110\101'end if
av.deliveryPending and(aq.effective(au,'\097\117\116\111\068\101\108\105\118\101\114')or aq.effective(au,
'\097\117\116\111\067\117\116'))and ax('\100\101\108\105\118\101\114')then return'\100\101\108\105\118\101\114'end if not ay and aq.effective(
au,'\097\117\116\111\083\101\108\108')and av.sellReady and aw>=(av.sellRetryAt or 0)and ax('\115\101\108\108')then
return'\115\101\108\108'end if av.needBuffer and av.carried and av.carried>0 and av.carried
>=(av.bufferDeliveryGoal or 1)and ax('\100\101\108\105\118\101\114')and aq.effective(au,'\097\117\116\111\068\101\108\105\118\101\114'
)then return'\100\101\108\105\118\101\114'end if not ay and av.returnToTable and av.
postSaleWeaponBought and ax('\114\101\116\117\114\110\084\097\098\108\101')then return'\114\101\116\117\114\110\084\097\098\108\101'end if not ay
and av.canBuy and aw>=(av.buyRetryAt or 0)and ax('\098\117\121')then if aq.effective(au,
'\097\117\116\111\066\117\121\084\111\111\108\115')or aq.effective(au,'\097\117\116\111\066\117\121\085\112\103\114\097\100\101\115')or aq.effective(au,
'\097\117\116\111\066\117\121\083\116\111\114\097\103\101')or av.afterSale and au.buyAfterSell then return'\098\117\121'end end if
not ay and av.returnToTable and ax('\114\101\116\117\114\110\084\097\098\108\101')then return'\114\101\116\117\114\110\084\097\098\108\101'end if
not av.mountainEmpty and aq.effective(au,'\097\117\116\111\068\121\110\097\109\105\116\101')and av.dynamiteReady and
not av.cutting and ax('\100\121\110\097\109\105\116\101')then return'\100\121\110\097\109\105\116\101'end if not ay and aq.
effective(au,'\097\117\116\111\067\114\097\110\107')and av.crankReady and ax('\099\114\097\110\107')then return'\099\114\097\110\107'end
local aB=au.autoCut and not aq.effective(au,'\097\117\116\111\070\097\114\109')if aq.effective(au,
'\097\117\116\111\067\117\116')and av.cutting and(aB or not av.focusClear and not av.needBuffer)and
ax('\099\117\116')then return'\099\117\116'end if aq.effective(au,'\097\117\116\111\067\117\116')and not aq.effective(
au,'\097\117\116\111\070\097\114\109')and av.carried and av.carried>0 and av.canStageCut and not av.
tableReady and ax('\115\116\097\103\101\067\117\116')then return'\115\116\097\103\101\067\117\116'end if aq.effective(au,
'\097\117\116\111\068\101\108\105\118\101\114')and av.carried and av.carried>0 then local aC=av.deliveryGoal or
aq.deliveryGoal(au,av.capacity)local aD=aC and av.carried>=aC local aE=av.
noCandidate and not(au.opAutoFinish and av.focusClear)if(aD or aE or not aq.
effective(au,'\097\117\116\111\070\097\114\109'))and ax('\100\101\108\105\118\101\114')then return'\100\101\108\105\118\101\114'end end if aq.
effective(au,'\097\117\116\111\067\117\116')and av.tableReady and(aB or not av.focusClear and not av.
needBuffer)and ax('\101\110\116\101\114\067\117\116')then return'\101\110\116\101\114\067\117\116'end if not av.mountainEmpty
and aq.effective(au,'\097\117\116\111\070\097\114\109')and av.hasCandidate and type(av.capacity)==
'\110\117\109\098\101\114'and type(av.carried)=='\110\117\109\098\101\114'and av.capacity>0 and(av.carried<av.
capacity or av.candidatePumpkin)and ax('\099\111\108\108\101\099\116')then return'\099\111\108\108\101\099\116'end return
'\105\100\108\101'end function aq.newCancellation()local au=0 return{current=function()
return au end,valid=function(av)return av==au end,cancel=function()au=au+1
return au end}end return aq end)()local ar=(function()local ar={}function ar.
access(as,at)local au,av=math.min(480,math.max(1,as-24)),math.min(520,math.max(1
,at-24))return{width=au,height=av,x=(as-au)/2,y=(at-av)/2,compact=av<430}end
function ar.resolve(as,at,au)local av=8 local aw,ax=math.max(1,as-2*av),math.
max(1,at-2*av)local ay=math.min(au.uiScale/100,aw/300,ax/340)ay=math.max(0.1,ay)
local az=math.min(au.uiWidth,aw/ay)local aA=math.min(au.uiHeight,ax/ay)local aB,
aC=az*ay,aA*ay return{width=az,height=aA,scale=ay,x=av+math.clamp(au.uiX,0,1)*
math.max(0,aw-aB),y=av+math.clamp(au.uiY,0,1)*math.max(0,ax-aC),visualWidth=aB,
visualHeight=aC,compact=az<580}end function ar.normalized(as,at,au,av,aw,ax)
return math.clamp((as-8)/math.max(1,au-aw-16),0,1),math.clamp((at-8)/math.max(1,
av-ax-16),0,1)end function ar.launcher(as,at,au)local av=math.min(au.buttonSize,
as-16,at-16)return{size=av,x=8+au.buttonX*math.max(0,as-av-16),y=8+au.buttonY*
math.max(0,at-av-16)}end return ar end)()local as=(function()local as={}function
as.create(at,au,av)local aw={}local ax=0 local ay=false local az={}local aA={
installed=0,observed=0,perName={}}for aB,aC in ipairs(au)do local aD=at[aC]if
type(aD)=='\102\117\110\099\116\105\111\110'then local aE aE=function(...)if ay or az[aC]then return aD(
...)end local aF=table.pack(...)local aG=table.pack(aD(...))if not ay and ax==0
then aA.observed+=1 aA.perName[aC]=(aA.perName[aC]or 0)+1 local aH,aI=pcall(av,
aC,aF,aG)if aH and aI==true or aA.perName[aC]>=24 then az[aC]=true pcall(
function()if at[aC]==aE then at[aC]=aD end end)end end return table.unpack(aG,1,
aG.n)end if pcall(function()at[aC]=aE end)then table.insert(aw,{name=aC,original
=aD,wrapper=aE})aA.installed+=1 end end end return{read=function(aB,...)ax+=1
local aC=table.pack(pcall(aB,...))ax-=1 return table.unpack(aC,1,aC.n)end,close=
function()ay=true for aB,aC in ipairs(aw)do pcall(function()if at[aC.name]==aC.
wrapper then at[aC.name]=aC.original end end)end table.clear(aw)end,stats=aA,
unwrap=function(aB)for aC,aD in ipairs(aw)do if aD.wrapper==aB then return aD.
original end end return aB end}end return as end)()local at=(function()local at=
{}function at.new(au)local av={}local aw=math.max(0.1,(au or 0.08)*2)local ax=(
au or 0.08)^2 local ay=0 local function az(aA,aB)local aC,aD,aE=math.floor(aA.X/
aw),math.floor(aA.Y/aw),math.floor(aA.Z/aw)av[aC]=av[aC]or{}av[aC][aD]=av[aC][aD
]or{}av[aC][aD][aE]=av[aC][aD][aE]or{}table.insert(av[aC][aD][aE],{p=aA,value=aB
})ay+=1 end local function aA(aB)local aC,aD,aE=math.floor(aB.X/aw),math.floor(
aB.Y/aw),math.floor(aB.Z/aw)local aF,aG,aH=nil,ax+1e-12,false for aI=-1,1 do
local aJ=av[aC+aI]if aJ then for aL=-1,1 do local aM=aJ[aD+aL]if aM then for aN=
-1,1 do for aO,aP in ipairs(aM[aE+aN]or{})do local aQ,aR,aS=aB.X-aP.p.X,aB.Y-aP.
p.Y,aB.Z-aP.p.Z local aT=aQ*aQ+aR*aR+aS*aS if aT<=ax then if aT<aG-1e-10 then aF
,aG,aH=aP.value,aT,false elseif math.abs(aT-aG)<1e-10 and aF~=aP.value then aH=
true end end end end end end end end return not aH and aF or nil end return{add=
az,find=aA,count=function()return ay end}end return at end)()local au=(function(
)local au={}function au.new(av)local aw={}local function ax(ay)while ay*2<=#aw
do local az=ay*2 if az+1<=#aw and aw[az+1].score>aw[az].score then az+=1 end if
aw[ay].score>=aw[az].score then break end aw[ay],aw[az]=aw[az],aw[ay]ay=az end
end return{add=function(ay)if#aw<av then table.insert(aw,ay)local az=#aw while
az>1 do local aA=math.floor(az/2)if aw[aA].score>=aw[az].score then break end aw
[aA],aw[az]=aw[az],aw[aA]az=aA end elseif ay.score<aw[1].score then aw[1]=ay ax(
1)end end,values=function()table.sort(aw,function(ay,az)return ay.score<az.score
end)return aw end}end return au end)()local av=(function()local av={}av.allowed=
{Hand={'\080\105\099\107\065\109\111\117\110\116','\080\105\099\107\083\112\101\101\100','\072\111\108\100\080\105\099\107'},Shovel={'\080\105\099\107\065\109\111\117\110\116','\080\105\099\107\083\112\101\101\100',
'\072\111\108\100\080\105\099\107'},Dynamite={'\080\105\099\107\065\109\111\117\110\116','\080\105\099\107\083\112\101\101\100'},PotatoSucker={'\080\105\099\107\065\109\111\117\110\116',
'\067\111\111\108\105\110\103','\067\104\097\114\103\101'},Body={'\080\111\116\097\116\111\087\111\114\116\104','\076\117\099\107','\087\097\108\107\083\112\101\101\100'},General={
'\080\111\116\097\116\111\087\111\114\116\104','\076\117\099\107','\087\097\108\107\083\112\101\101\100'},Drone={'\067\097\112\097\099\105\116\121','\071\114\097\115\112','\070\108\121\083\112\101\101\100'},
AutoPeeler={'\080\101\101\108\065\109\111\117\110\116','\080\101\101\108\083\112\101\101\100'},HandPeeler={}}function av.owns(aw,ax)if
type(aw)~='\116\097\098\108\101'then return false end if ax=='\072\097\110\100'or ax=='\066\111\100\121'or ax==
'\071\101\110\101\114\097\108'then return true end if ax=='\068\114\111\110\101'then return aw.HasDrone==true end if
ax=='\065\117\116\111\080\101\101\108\101\114'then return aw.HasAutoPeeler==true end if ax=='\072\097\110\100\080\101\101\108\101\114'then
return aw.HasHandPeeler==true end for ay,az in pairs(aw.Tools or{})do if az==ax
or ay==ax and az~=false and az~=nil then return true end end return false end
function av.canUpgrade(aw,ax,ay,az)local aA=av.allowed[ax]if not aA or not av.
owns(aw,ax)then return false end if az.teamFunding and(ax=='\066\111\100\121'or ax==
'\071\101\110\101\114\097\108'or ax=='\065\117\116\111\080\101\101\108\101\114'or ax=='\068\114\111\110\101')then return false end if az.
supportCut and not az.opAutoFinish and not az.autoProgress and ax~='\066\111\100\121'and ax
~='\071\101\110\101\114\097\108'then return false end if ax=='\068\114\111\110\101'and not az.upgradeDrone then
return false end if(ax=='\065\117\116\111\080\101\101\108\101\114'or ax=='\072\097\110\100\080\101\101\108\101\114')and not az.
upgradeMachines then return false end if(ax=='\066\111\100\121'or ax=='\071\101\110\101\114\097\108')and not az.
upgradeGeneral then return false end if ay=='\087\097\108\107\083\112\101\101\100'and not az.
nativeWalkUpgrade then return false end if ax=='\072\097\110\100'and av.owns(aw,'\083\104\111\118\101\108')
then return false end for aB,aC in ipairs(aA)do if aC==ay then return true end
end return false end function av.level(aw,ax,ay,az)local aA=ax and ax.Upgrades
and ax.Upgrades[ay]local aB=type(aA)=='\116\097\098\108\101'and aA[az]or nil if type(aB)==
'\110\117\109\098\101\114'and aB>=0 then return aB end local aC=nil if type(aw.GetLevel)==
'\102\117\110\099\116\105\111\110'then local aD,aE=pcall(aw.GetLevel,ax,ay,az)if aD and type(aE)==
'\110\117\109\098\101\114'and aE>=0 and aE%1==0 then aC=aE end if ax and type(ax.Upgrades)==
'\116\097\098\108\101'then aD,aE=pcall(aw.GetLevel,ax.Upgrades,ay,az)if aD and type(aE)==
'\110\117\109\098\101\114'and aE>=0 and aE%1==0 then aC=math.max(aC or 0,aE)end end end return aC
end function av.rank(aw,ax)local ay={Shovel=1,Dynamite=2,PotatoSucker=3,Hand=4,
AutoPeeler=5,HandPeeler=6,Drone=7,Body=8,General=8}local az=ay[aw]or 100 return
az*10+(ax=='\080\105\099\107\065\109\111\117\110\116'and 0 or ax=='\080\105\099\107\083\112\101\101\100'and 1 or 2)end function av.limit(
aw,ax,ay,az,aA,aB)if ax=='\087\097\108\107\083\112\101\101\100'then return aB and 2 or 0 end if(aw=='\066\111\100\121'
or aw=='\071\101\110\101\114\097\108')and ax=='\080\111\116\097\116\111\087\111\114\116\104'then return math.huge end return math.huge
end function av.definition(aw,ax,ay)local az=nil if type(aw.GetUpgrade)==
'\102\117\110\099\116\105\111\110'then local aA,aB=pcall(aw.GetUpgrade,ax,ay)if aA then az=aB end end if
type(az)=='\116\097\098\108\101'and(az.Id==ay or az.Values~=nil or az.MaxLevel~=nil)then return
az end local aA=nil if type(aw.GetUpgradeable)=='\102\117\110\099\116\105\111\110'then local aB,aC=
pcall(aw.GetUpgradeable,ax)if aB and type(aC)=='\116\097\098\108\101'then aA=aC end end if not
aA then for aB,aC in ipairs({aw.Tools or{},aw.Machines or{}})do for aD,aE in
pairs(aC)do if type(aE)=='\116\097\098\108\101'and aE.Id==ax then aA=aE break end end end aA=aA
or aw[ax]end if type(aA)=='\116\097\098\108\101'then for aB,aC in pairs(aA.Upgrades or{})do if
type(aC)=='\116\097\098\108\101'and(aC.Id==ay or aB==ay)then return aC end end if type(aw.
GetUpgrade)=='\102\117\110\099\116\105\111\110'then local aB,aC=pcall(aw.GetUpgrade,aA,ay)if aB and
type(aC)=='\116\097\098\108\101'then return aC end end end return az end function av.maximum(aw
,ax)if type(aw.GetMaxLevel)=='\102\117\110\099\116\105\111\110'then for ay,az in ipairs({ax,type(ax)==
'\116\097\098\108\101'and ax.Values or false})do local aA,aB=pcall(aw.GetMaxLevel,az)if aA and
type(aB)=='\110\117\109\098\101\114'and aB>0 and aB%1==0 then return aB end end end if type(ax)==
'\116\097\098\108\101'and type(ax.MaxLevel)=='\110\117\109\098\101\114'then return ax.MaxLevel end return nil end
function av.upgradeGuard()local aw={}return{allowed=function(ax,ay)local az=aw[
ax]return not az or az.level~=ay or az.count<2 end,result=function(ax,ay,az)if
az then aw[ax]=nil return end local aA=aw[ax]aw[ax]={level=ay,count=aA and aA.
level==ay and aA.count+1 or 1}end,reset=function()table.clear(aw)end,records=aw}
end function av.maxed(aw,ax,ay)if not av.owns(ax,ay)then return false end for az
,aA in ipairs(av.allowed[ay]or{})do local aB=av.definition(aw,ay,aA)if aB==nil
then return false end local aC=av.maximum(aw,aB)local aD=aC~=nil local aE=av.
level(aw,ax,ay,aA)if not aD or type(aC)~='\110\117\109\098\101\114'or aC<=0 or aE==nil or aE<aC
then return false end end return true end function av.luckAllowed(aw,ax)return
av.maxed(aw,ax,'\080\111\116\097\116\111\083\117\099\107\101\114')end function av.placementTiming(aw)local ax=aw and
aw.PLACEMENT_STAGGER local ay=nil local az={available=type(ax)=='\110\117\109\098\101\114'and ax>=
0.005,original=ax}local function aA(aB,aC)if not az.available then return end
local aD=aB and math.clamp(aC,0.005,ax)or ax if ay~=aD then local aE,aF=pcall(
function()aw.PLACEMENT_STAGGER=aD end)if not aE then az.available=false az.
enabled=false az.error=tostring(aF)return end ay=aD end az.applied=aD az.enabled
=aB end return{apply=aA,stats=az,close=function()if az.available and aw.
PLACEMENT_STAGGER==ay then pcall(function()aw.PLACEMENT_STAGGER=ax end)end end}
end function av.productionReady(aw,ax)return av.maxed(aw,ax,'\068\121\110\097\109\105\116\101')and av.
maxed(aw,ax,'\083\104\111\118\101\108')and av.maxed(aw,ax,'\065\117\116\111\080\101\101\108\101\114')and av.maxed(aw,ax,
'\080\111\116\097\116\111\083\117\099\107\101\114')end function av.clearReady(aw,ax,ay)if aw.opAutoFinish then
return av.owns(ay,'\068\121\110\097\109\105\116\101')or av.owns(ay,'\080\111\116\097\116\111\083\117\099\107\101\114')end return av.
productionReady(ax,ay)end function av.opBulkReady(aw,ax)return av.maxed(aw,ax,
'\080\111\116\097\116\111\083\117\099\107\101\114')end function av.fundingPlan(aw,ax,ay,az,aA,aB,aC,aD)local aE={
needed=false,cut=false,sell=false}if not ax.opAutoFinish or aD or type(az)~=
'\116\097\098\108\101'or type(ay)~='\110\117\109\098\101\114'or type(az.price)~='\110\117\109\098\101\114'then return aE end if az.
price<=0 or az.price~=az.price or az.price==math.huge or ax.maxPurchase>0 and az
.price>ax.maxPurchase then return aE end aE.needed=ay<az.price+ax.reserveCash if
not aE.needed then return aE end aE.cut=type(aA)=='\110\117\109\098\101\114'and aA>0 local aF=az.
price+ax.reserveCash-ay local aG=50 if ax.opBatchFunding then aG=aF>=3 and 150
or aF>=1 and 90 or 50 end aE.sellTarget=math.min(aG,ax.sellThreshold)aE.sell=
type(aB)=='\110\117\109\098\101\114'and aB>0 and(aB>=aE.sellTarget or not aE.cut)aE.deliveryGoal=
math.min(type(aC)=='\110\117\109\098\101\114'and aC>0 and aC or aG,aE.sellTarget)return aE end
function av.pickTiming(aw,ax,ay,az,aA)local aB,aC,aD=0,nil,'\117\110\097\118\097\105\108\097\098\108\101'if type(
ay.GetPickCooldown)=='\102\117\110\099\116\105\111\110'then local aE,aF,aG=pcall(ay.GetPickCooldown,aA)
if aE and type(aF)=='\110\117\109\098\101\114'and aF>=0 and aF<=60 then aB=aF aD=
'\071\101\116\080\105\099\107\067\111\111\108\100\111\119\110\040\116\111\111\108\032\073\068\041'end if aE and type(aG)=='\110\117\109\098\101\114'and aG>=0.02 and aG<=
60 then aC=aG end end local aE=az and az.Upgrades if type(ax.GetEquippedUpgrades
)=='\102\117\110\099\116\105\111\110'then local aF,aG=pcall(ax.GetEquippedUpgrades)if aF and type(aG)==
'\116\097\098\108\101'then aE=aG end end local aF=az and az.SaveData and az.SaveData.Class if
type(ax.GetClassId)=='\102\117\110\099\116\105\111\110'then local aG,aH=pcall(ax.GetClassId)if aG then
aF=aH end end if type(aw.GetPickInterval)=='\102\117\110\099\116\105\111\110'and aE then local aG,aH=
pcall(aw.GetPickInterval,aE,aA,aF,false)if aG and type(aH)=='\110\117\109\098\101\114'and aH>=0.02
and aH<=60 then aC=aH aD='\071\101\116\080\105\099\107\073\110\116\101\114\118\097\108\040\110\097\116\105\118\101\032\117\112\103\114\097\100\101\115\044\032\116\111\111\108\032\073\068\044\032\099\108\097\115\115\041'end
end return aB,aC,aD end function av.keyProbeGuard()local aw={}local function ax(
ay,az)if type(ay)~='\116\097\098\108\101'or type(ay.slot)~='\110\117\109\098\101\114'or ay.slot%1~=0 or ay.slot<1
or ay.slot>=4294967296 then return nil end return tostring(ay.slot)..'\058'..
tostring(ay.revision or 0)..'\058'..tostring(az==true)end local function ay(az,aA,
aB)local aC=ax(az,aA)if not aC then return false end local aD=aw[aC]return not
aD or aD.attempts<2 and aB>=aD.retryAt end return{records=aw,allowed=ay,begin=
function(az,aA,aB)if not ay(az,aA,aB)then return false end local aC=ax(az,aA)
local aD=aw[aC]or{attempts=0}aD.attempts+=1 aD.retryAt=aB+10 aw[aC]=aD return
true end}end function av.purchasePriority(aw,ax,ay)if ax and ax.teamFunding then
if aw.id=='\083\104\111\118\101\108'then return 1 end if aw.group=='\115\116\111\114\097\103\101'and type(aw.capacity)
=='\110\117\109\098\101\114'and aw.capacity<=50 then return 2 end if aw.id=='\068\121\110\097\109\105\116\101'then return
3 end if aw.tool=='\068\121\110\097\109\105\116\101'then return 4+(aw.level or 0)/100 end if aw.id==
'\080\048\084\052\084\048\045\051\048\048\048'then return 5 end if aw.tool=='\080\111\116\097\116\111\083\117\099\107\101\114'then return 6 end if aw
.group=='\115\116\111\114\097\103\101'then return 7 end end if ax and ax.opAutoFinish then if ay and
aw.group=='\099\117\116'then return 0.1+(aw.tier or 0)/100 end if aw.upgrade==
'\080\111\116\097\116\111\087\111\114\116\104'and(aw.level or 0)<3 then return 1 end if aw.group=='\099\117\116'and aw.
tier==2 then return 2 end if aw.group=='\115\116\111\114\097\103\101'and type(aw.capacity)=='\110\117\109\098\101\114'
and aw.capacity<=50 then return 3 end if aw.id=='\083\104\111\118\101\108'then return 4 end if aw.
id=='\068\121\110\097\109\105\116\101'then return 5 end if aw.tool=='\068\121\110\097\109\105\116\101'then return 6+(aw.level or
0)/100+(aw.upgrade=='\080\105\099\107\065\109\111\117\110\116'and 0 or 0.001)end if aw.id=='\080\048\084\052\084\048\045\051\048\048\048'or aw.
id=='\080\111\116\097\116\111\083\117\099\107\101\114'then return 7 end if aw.tool=='\080\111\116\097\116\111\083\117\099\107\101\114'then return 8 end
if aw.tool=='\068\114\111\110\101'then return 9 end if aw.id=='\083\104\111\118\101\108'or aw.tool=='\083\104\111\118\101\108'then
return 10 end if aw.group=='\109\097\099\104\105\110\101'or aw.tool=='\065\117\116\111\080\101\101\108\101\114'then return 11 end
if aw.group=='\099\117\116'then return 12+(aw.tier or 0)/100 end if aw.upgrade==
'\080\111\116\097\116\111\087\111\114\116\104'then return 13 end if aw.group=='\115\116\111\114\097\103\101'then return 14 end if aw.
upgrade=='\076\117\099\107'then return 15 end return 90 end if aw.upgrade=='\080\111\116\097\116\111\087\111\114\116\104'then
return ax and ax.nativeWalkUpgrade and(aw.level or 0)>=3 and 12 or 1 end if aw.
upgrade=='\087\097\108\107\083\112\101\101\100'then return 10.025 end if aw.group=='\099\117\116'then return 10+(aw.
tier or 0)/100 end if aw.id=='\068\121\110\097\109\105\116\101'or aw.tool=='\068\121\110\097\109\105\116\101'then return 20 end
if aw.tool=='\068\114\111\110\101'then return 30 end if aw.id=='\083\104\111\118\101\108'or aw.tool=='\083\104\111\118\101\108'then
return 40 end if aw.group=='\115\116\111\114\097\103\101'then return 90 end return 50 end function av
.selectPurchase(aw,ax,ay,az,aA)table.sort(az,function(aB,aC)local aD,aE=av.
purchasePriority(aB,ax,aA),av.purchasePriority(aC,ax,aA)if aD~=aE then return aD
<aE end return(aB.name or'')<(aC.name or'')end)for aB,aC in ipairs(az)do if
type(aC.price)=='\110\117\109\098\101\114'and aC.price>0 then local aD=aw.affordable(ax,ay,aC.
price,'\067\097\115\104')return aC,aD end end return nil,false end function av.profilePrice(
aw,ax,ay,az)if type(aw)~='\116\097\098\108\101'or type(aw.Upgrades)~='\116\097\098\108\101'or type(az)~=
'\110\117\109\098\101\114'then return nil end local aA=aw.Upgrades[ax=='\066\111\100\121'and'\071\101\110\101\114\097\108'or ax]
local aB=type(aA)=='\116\097\098\108\101'and aA[ay]or nil local aC=type(aB)=='\116\097\098\108\101'and aB[az+1
]or nil if type(aC)=='\110\117\109\098\101\114'and aC>0 then return aC end return nil end function
av.sellReady(aw,ax,ay)if type(ax)~='\110\117\109\098\101\114'or ax<=0 then return false end if ax
>=aw.sellThreshold then return true end return aw.sellRemainder and not ay.
cutting and ay.crate==0 and ay.carried==0 and ay.exhausted==true end return av
end)()local aw=(function()local aw={}function aw.create(ax,ay)local az={}for aA,
aB in pairs(type(ay)=='\116\097\098\108\101'and ay.Writes or{})do if type(aB)=='\102\117\110\099\116\105\111\110'then
az[aB]=aA end end local function aA(aB)local aC=ax[aB]if type(aC)~='\116\097\098\108\101'or
type(aC.Writes)~='\116\097\098\108\101'then return nil end local aD={}for aE,aF in ipairs(aC.
Writes)do aD[aE]=az[aF]or'\085\110\107\110\111\119\110'end return aD end local function aB(aC,aD)
local aE=aA(aC)if not aE or#aE~=#aD then return false end for aF,aG in ipairs(aD
)do if aG=='\083\116\114\105\110\103'then if aE[aF]~='\083\116\114\105\110\103'and aE[aF]~='\083\116\114\105\110\103\076\111\110\103'then return
false end elseif aG=='\086\101\099\116\111\114\051'then if not string.match(aE[aF],'\094\086\101\099\116\111\114\051')then
return false end elseif aG=='\066\111\111\108\101\097\110'then if aE[aF]~='\066\111\111\108\101\097\110'and aE[aF]~=
'\066\111\111\108\101\097\110\056'then return false end elseif aE[aF]~=aG then return false end end
return true end return{schema=aA,matches=aB,fire=function(aC,...)local aD=ax[aC]
if not aD or type(aD.Fire)~='\102\117\110\099\116\105\111\110'then return false,'\080\097\099\111\116\101\032\105\110\100\105\115\112\111\110\105\118\101\108\058\032'
..aC end return pcall(aD.Fire,aD,...)end}end return aw end)()local ax=(function(
)local ax={}function ax.create(ay,az)local aA,aB=0,-1 local aC,aD,aE=false,false
,false local aF,aG,aH=az.clock(),nil,nil local aI,aJ=0,0 local aL,aM=0,0 local
aN=false local aO=0 local aP=nil local aQ={attempted=0,accepted=0,epochs=0,
native=false,pending=0,throttled=false,targetRate=20,ackRate=0,timeouts=0}local
aR,aS=az.clock(),0 local aT local function aU()return not az.allowed or az.
allowed()end local function aV(aW)if aE~=aW then az.native(aW)aE=aW aQ.native=aW
end end local function aW(aX)local aY=type(aX)=='\116\097\098\108\101'and tonumber(aX.
AutoCutRate)or 1.5 return math.clamp(ay.cutTargetRate or 20,1,40)*math.clamp((aY
or 1.5)/1.5,1,ay.cutToolMultiplier or 4)end local function aX()if not az.
schedule or aN or not aC or not aU()then return end aN=true local aY=aO az.
schedule(math.max(0,aJ-az.clock()),function()if aY~=aO then return end aN=false
if aC and aU()then aT(true,aG,aH,aP)end end)end local function aY(aZ)if aZ and
aL>0 then aL=0 aQ.pending=0 aQ.accepted+=1 aM+=1 aS+=1 if aM>=4 then aQ.
throttled=false aM=0 end end local a_=az.clock()if a_-aR>=1 then aQ.ackRate=aS/(
a_-aR)aR=a_ aS=0 end aA+=1 aQ.epochs=aA aF=a_ end local function aZ(a_)aD=true
if a_=='\115\116\097\114\116'then aL=0 aQ.pending=0 aC=true aB=-1 aY(false)elseif a_=='\110\101\120\116'
then aC=true aY(true)elseif a_=='\115\116\111\112'then aC=false aL=0 aQ.pending=0 aO+=1 aN=
false aV(false)end if a_~='\115\116\111\112'then aX()end end aT=function(a_,a0,a1,a2)local
a3=az.clock()if not a_ or not aU()then aC=false aL=0 aQ.pending=0 aO+=1 aN=false
aV(false)aG=nil return true end aP=a2 or aP aQ.targetRate=aW(aP)if not aC then
aC=true aB=-1 aY(false)aG=a0 end if not aD and a0~=nil and aG~=nil and a0~=aG
then aY(true)end if a1~=nil and aH~=nil and a1~=aH then aF=a3 end aG,aH=a0,a1 if
aL>0 and a3-aI>math.max(0.35,4/aQ.targetRate)then aL=0 aQ.pending=0 aQ.throttled
=true aQ.timeouts+=1 aM=0 aB=-1 aJ=math.max(aJ,a3+0.1)end if ay.cutMode=='\070\097\115\116'
and aL==0 and aB~=aA and type(az.finish)=='\102\117\110\099\116\105\111\110'then if a3>=aJ then aB=aA aI
=a3 aJ=a3+1/aQ.targetRate aL=1 aQ.pending=1 local a4,a5=az.finish()if not a4
then aL=0 aQ.pending=0 aV(true)return false,a5 end aQ.attempted+=1 else aX()end
end aV(ay.cutMode=='\078\097\116\105\118\101'or aL>0 and a3-aI>=0.12)if a3-aF>math.max(4,math.min(
ay.actionTimeout or 10,8))then aF=a3 return false,
'\067\111\114\116\101\032\115\101\109\032\097\118\097\110\099\097\114\059\032\114\101\097\098\114\105\110\100\111\032\097\032\109\101\115\097\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046'end return true end return
{event=aZ,tick=aT,pause=function()aO+=1 aN=false aC=false aL=0 aQ.pending=0 aB=-
1 aV(false)end,stats=aQ,epoch=function()return aA end,serverActive=function()
return aC end}end return ax end)()local ay=(function()local ay={}function ay.
create(az,aA,aB)local aC='\065\110\111\110\121\109\111\117\115\095\080\111\116\097\116\111\095\067\111\110\102\105\103\095\118\049\046\106\115\111\110'local aD=type(aB.read)
=='\102\117\110\099\116\105\111\110'and type(aB.write)=='\102\117\110\099\116\105\111\110'local function aE(aF)if type(aF)~=
'\115\116\114\105\110\103'or#aF>65536 then return nil,'\099\111\110\102\105\103\117\114\097\099\097\111\032\105\110\118\097\108\105\100\097'end local aG,aH=
pcall(aA.decode,aF)if not aG or type(aH)~='\116\097\098\108\101'or(aH.schema~=1 and aH.schema~=
2)or type(aH.config)~='\116\097\098\108\101'then return nil,'\102\111\114\109\097\116\111\032\100\101\032\099\111\110\102\105\103\117\114\097\099\097\111\032\105\110\118\097\108\105\100\111'
end if aH.schema==1 and aH.config.uiScale==100 and aH.config.uiWidth==760 then
aH.config.uiScale=65 end return az.validate(aH.config,true)end local function aF
(aG)if not aD then return nil,'\097\114\113\117\105\118\111\115\032\105\110\100\105\115\112\111\110\105\118\101\105\115'end local aH,aI=pcall(aB.
read,aG)if not aH then return nil,'\097\114\113\117\105\118\111\032\097\117\115\101\110\116\101'end return aE(aI)end local
function aG()local aH,aI=aF(aC)if aH then return aH,
'\067\111\110\102\105\103\117\114\097\099\097\111\032\099\097\114\114\101\103\097\100\097\059\032\114\111\116\105\110\097\115\032\112\097\117\115\097\100\097\115\046'end local aJ=aF(aC..'\046\098\097\099\107\117\112')if aJ
then return aJ,'\067\111\110\102\105\103\117\114\097\099\097\111\032\114\101\099\117\112\101\114\097\100\097\032\100\111\032\098\097\099\107\117\112\059\032\114\111\116\105\110\097\115\032\112\097\117\115\097\100\097\115\046'end return
az.validate({},true),aD and'\078\111\118\097\032\115\101\115\115\097\111\059\032\114\111\116\105\110\097\115\032\112\097\117\115\097\100\097\115\046'or
'\083\101\109\032\097\114\113\117\105\118\111\115\058\032\097\106\117\115\116\101\115\032\097\112\101\110\097\115\032\110\101\115\116\097\032\115\101\115\115\097\111\046'end local function aH(aI)if not aD
then return false,
"\069\115\116\101\032\101\120\101\099\117\116\111\114\032\110\097\111\032\100\105\115\112\111\110\105\098\105\108\105\122\111\117\032\108\101\105\116\117\114\097\032\101\032\101\115\099\114\105\116\097\032\100\101\032\097\114\113\117\105\118\111\115\046"end local aJ=
az.validate(aI,true)local aL,aM=pcall(aA.encode,{schema=2,config=aJ})if not aL
then return false,'\070\097\108\104\097\032\097\111\032\099\111\100\105\102\105\099\097\114\032\097\106\117\115\116\101\115\046'end local aN,aO=pcall(aB.read,aC)
if aN and aE(aO)then local aP=pcall(aB.write,aC..'\046\098\097\099\107\117\112',aO)if not aP then
return false,'\078\097\111\032\102\111\105\032\112\111\115\115\105\118\101\108\032\112\114\101\115\101\114\118\097\114\032\111\032\098\097\099\107\117\112\046'end end local aP,aQ=pcall(aB.
write,aC,aM)if not aP then return false,'\070\097\108\104\097\032\097\111\032\103\114\097\118\097\114\058\032'..tostring(aQ)end
local aR=aF(aC)if not aR then if aN and aE(aO)then pcall(aB.write,aC,aO)end
return false,'\070\097\108\104\097\032\110\097\032\118\101\114\105\102\105\099\097\099\097\111\032\100\111\032\097\114\113\117\105\118\111\059\032\116\101\110\116\101\032\115\097\108\118\097\114\032\110\111\118\097\109\101\110\116\101\046'end
return true,"\065\106\117\115\116\101\115\032\115\097\108\118\111\115\059\032\097\116\105\118\097\099\111\101\115\032\110\097\111\032\115\097\111\032\114\101\115\116\097\117\114\097\100\097\115\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046"
end return{load=aG,save=aH,filename=aC,available=aD}end function ay.lifecycle()
local az=true local aA={}return{alive=function()return az end,add=function(aB)if
az then table.insert(aA,aB)else pcall(aB)end end,close=function()if not az then
return end az=false for aB=#aA,1,-1 do pcall(aA[aB])end table.clear(aA)end}end
return ay end)()local az=(function()local az={}function az.create(aA,aB,aC,aD,aE
)local aF,aG,aH=aA.Players,aA.TweenService,aA.UserInputService local aI=aF.
LocalPlayer local aJ=aC.membership and aC.membership()or{plan='\077\101\109\098\101\114',keyLabel=
'\u{2014}',validity='\086\097\108\105\100\097\100\101\032\110\097\111\032\105\110\102\111\114\109\097\100\097',source='\065\099\101\115\115\111\032\108\111\099\097\108'}local aL,aM,
aN,aO={},{},{},{}local aP,aQ,aR=false,'\073\110\105\099\105\111',true local aS={background=Color3.
fromRGB(35,31,25),sidebar=Color3.fromRGB(48,39,29),card=Color3.fromRGB(65,54,39)
,line=Color3.fromRGB(116,88,49),text=Color3.fromRGB(252,246,226),muted=Color3.
fromRGB(213,195,163),accent=Color3.fromRGB(255,202,66),mint=Color3.fromRGB(128,
205,55)}local function aT(aU,aV,aW)local aX=Instance.new(aU)for aY,aZ in pairs(
aV or{})do aX[aY]=aY=='\084\101\120\116'and ac(aZ)or aZ end if aV and aV.Text~=nil then aX.
AutoLocalize=false end aX.Parent=aW return aX end local function aU(aV,aW)aT(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,aW or 10)},aV)end local function aV(aW,aX)
aT('\085\073\083\116\114\111\107\101',{Color=aX or aS.line,Thickness=1},aW)end local function aW(aX,aY,
aZ,a_,a0)return aT('\084\101\120\116\076\097\098\101\108',{BackgroundTransparency=1,Text=aY,TextSize=aZ or
13,TextColor3=a_ or aS.text,Font=a0 and Enum.Font.GothamBold or Enum.Font.Gotham
,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.
Center},aX)end local function aX(aY,aZ)local a_=aT('\084\101\120\116\066\117\116\116\111\110',{
BackgroundColor3=aS.card,Text=aZ,TextSize=12,TextColor3=aS.text,Font=Enum.Font.
GothamBold,BorderSizePixel=0,AutoButtonColor=true},aY)aU(a_,8)return a_ end
local aY=aI.PlayerGui if type(gethui)=='\102\117\110\099\116\105\111\110'then local aZ,a_=pcall(gethui)
if aZ and typeof(a_)=='\073\110\115\116\097\110\099\101'then aY=a_ end end local aZ=aY:FindFirstChild(
'\065\110\111\110\121\109\111\117\115\080\111\116\097\116\111\072\117\098')if aZ then aZ:Destroy()end local a_=aT('\083\099\114\101\101\110\071\117\105',{Name=
'\065\110\111\110\121\109\111\117\115\080\111\116\097\116\111\072\117\098',ResetOnSpawn=false,DisplayOrder=10000,ZIndexBehavior=Enum.
ZIndexBehavior.Sibling},aY)table.insert(aL,a_:GetPropertyChangedSignal('\069\110\097\098\108\101\100'
):Connect(function()if not aP and not a_.Enabled then a_.Enabled=true end end))
local a0=aT('\070\114\097\109\101',{Name='\083\097\102\101\067\097\110\118\097\115',Size=UDim2.fromScale(1,1),
BackgroundTransparency=1},a_)local a1=aT('\070\114\097\109\101',{Name='\080\097\110\101\108',Position=UDim2.
fromOffset(8,8),Size=UDim2.fromOffset(760,580),Visible=false,BackgroundColor3=aS
.background,BorderSizePixel=0,ClipsDescendants=true},a0)local a2=aT('\085\073\083\099\097\108\101',{
Scale=1},a1)aT('\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(Color3.fromRGB(73,53,35),aS
.background),Rotation=90},a1)aU(a1,9)aV(a1)local a3=aT('\070\114\097\109\101',{Size=UDim2.new(0
,174,1,0),BackgroundColor3=aS.sidebar,BorderSizePixel=0},a1)local a4=aW(a3,
'\065\078\079\078\072\085\066',20,aS.text,true)a4.Position,a4.Size=UDim2.fromOffset(17,21),UDim2.new(
1,-32,0,28)local a5=aW(a3,'\080\079\084\065\084\079\032\047\032\067\079\078\084\082\079\076',10,aS.accent,true)a5.Position,a5.
Size=UDim2.fromOffset(18,51),UDim2.new(1,-32,0,16)a5.Text=ac(
'\067\065\080\u{cd}\084\085\076\079\032\073\073\032\047\032\065\078\079\078\072\085\066')local a6=aT('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{
BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=2,
AutomaticCanvasSize=Enum.AutomaticSize.Y,CanvasSize=UDim2.fromOffset(0,0),
Position=UDim2.fromOffset(12,90),Size=UDim2.new(1,-24,1,-165)},a3)local a7=aT(
'\085\073\076\105\115\116\076\097\121\111\117\116',{Padding=UDim.new(0,7),SortOrder=Enum.SortOrder.LayoutOrder},a6)
local a8=aT('\070\114\097\109\101',{BackgroundTransparency=1,Position=UDim2.fromOffset(196,22),
Size=UDim2.new(1,-218,1,-44)},a1)local a9=aW(a8,'\073\110\105\099\105\111',23,aS.text,true)a9.Size
=UDim2.new(1,-110,0,34)local b=aX(a8,'\079\067\085\076\084\065\082')b.Position,b.Size=UDim2.new(1,-
100,0,0),UDim2.fromOffset(100,31)local bb=aW(a8,'\073\110\105\099\105\097\108\105\122\097\110\100\111\046\046\046',11,aS.muted,
false)bb.Position,bb.Size=UDim2.fromOffset(0,40),UDim2.new(1,0,0,35)bb.
TextWrapped=true bb.BackgroundTransparency=0.12 bb.BackgroundColor3=aS.card aU(
bb,8)local bc=aT('\070\114\097\109\101',{BackgroundTransparency=1,Position=UDim2.fromOffset(0,
87),Size=UDim2.new(1,0,1,-146)},a8)local be=aT('\070\114\097\109\101',{BackgroundTransparency=1
,Position=UDim2.new(0,0,1,-91),Size=UDim2.new(1,0,0,38)},a8)local bf=aT('\070\114\097\109\101',
{Size=UDim2.new(1,0,0,46),Position=UDim2.new(0,0,1,-50),BackgroundColor3=aS.card
,BorderSizePixel=0},a8)aU(bf,11)aV(bf)local bg=aT('\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.
fromOffset(34,34),Position=UDim2.fromOffset(8,6),BackgroundColor3=aS.background,
BorderSizePixel=0,Image=''},bf)aU(bg,17)aV(bg,aS.mint)local bh=aW(bg,string.
upper(string.sub(aI.Name,1,1)),16,aS.mint,true)bh.Size=UDim2.fromScale(1,1)bh.
TextXAlignment=Enum.TextXAlignment.Center local bi=aW(bf,aI.DisplayName or aI.
Name,12,aS.text,true)bi.Position,bi.Size=UDim2.fromOffset(51,3),UDim2.new(1,-61,
0,19)bi.TextTruncate=Enum.TextTruncate.AtEnd local bj=aW(bf,'',10,aS.mint,false)
bj.Position,bj.Size=UDim2.fromOffset(51,23),UDim2.new(1,-61,0,18)bj.TextTruncate
=Enum.TextTruncate.AtEnd local function bk(bl)bj.Text=bl.plan..'\032\032\u{b7}\032\032'..bl.
keyLabel..'\032\032\u{b7}\032\032'..ac(bl.validity)bj.TextColor3=bl.expired and Color3.
fromRGB(255,160,150)or bl.plan=='\080\114\101\109\105\117\109'and Color3.fromRGB(248,208,130)or aS.
mint end bk(aJ)if aE then aE.requestAvatar(aF,aI.UserId,function(bl)if not aP
then bg.Image=bl bh.Visible=false end end)end local bl=aX(be,'\083\065\076\086\065\082')bl.Size=
UDim2.fromOffset(100,35)local bm=aX(be,'\080\065\085\083\065\082\032\084\085\068\079')bm.Size,bm.Position=UDim2.
fromOffset(143,35),UDim2.fromOffset(111,0)local bn=aX(be,'\082\069\067\085\080\069\082\065\082')bn.TextSize
=11 table.insert(aL,bn.Activated:Connect(function()if aC.restore then aC.
restore()end end))local bo=aX(a0,'\065')bo.Position,bo.Size=UDim2.fromOffset(13,72)
,UDim2.fromOffset(56,56)bo.BackgroundColor3=aS.accent bo.TextColor3=aS.
background bo.TextSize=27 bo.Visible=true bo.ZIndex=20 if aC.decorateLauncher
then aC.decorateLauncher(bo)end local bp=aT('\070\114\097\109\101',{Name='\077\111\118\101\072\097\110\100\108\101',Size=
UDim2.new(1,-18,0,33),BackgroundTransparency=1,Active=true},a1)local bq=aW(bp,
'\u{2261}\032\032\032\065\078\079\078\072\085\066\032\047\032\080\079\084\065\084\079\032\032\032\u{b7}\032\032\032\065\082\082\065\083\084\069',10,aS.muted,true)bq.Position,bq
.Size=UDim2.fromOffset(15,3),UDim2.new(1,-30,1,-6)local br=aX(a1,'\u{2198}')br.
Position,br.Size=UDim2.new(1,-25,1,-25),UDim2.fromOffset(23,23)br.
BackgroundTransparency=1 br.TextColor3=aS.accent br.TextSize=20 br.ZIndex=10
local bs=0 local bt=nil local function bu(bv)if aC.layout then aC.layout(bv)else
for bw,bx in pairs(bv)do aB[bw]=bx end end if bt then bt()end end local function
bv(bw,bx,by)local bz,bA,bB,bC,bD,bE=nil,nil,nil,nil,nil,nil table.insert(aL,bw.
InputBegan:Connect(function(bF)if bF.UserInputType~=Enum.UserInputType.Touch and
bF.UserInputType~=Enum.UserInputType.MouseButton1 then return end bz=bF bA=
Vector2.new(bF.Position.X,bF.Position.Y)bB=bx.AbsolutePosition-a0.
AbsolutePosition bE=a2.Scale bC,bD=a1.Size.X.Offset,a1.Size.Y.Offset end))table.
insert(aL,aH.InputChanged:Connect(function(bF)if not bz then return end local bG
=bz.UserInputType==Enum.UserInputType.Touch if bG and bF~=bz or not bG and bF.
UserInputType~=Enum.UserInputType.MouseMovement then return end local bH=Vector2
.new(bF.Position.X,bF.Position.Y)-bA if bH.Magnitude<5 then return end if by==
'\114\101\115\105\122\101'then bu({uiWidth=math.clamp(bC+bH.X/bE,300,1100),uiHeight=math.clamp(bD+
bH.Y/bE,340,900)})else local bI=bB+bH local bJ,bK=aD.normalized(bI.X,bI.Y,a0.
AbsoluteSize.X,a0.AbsoluteSize.Y,bx.AbsoluteSize.X,bx.AbsoluteSize.Y)if by==
'\108\097\117\110\099\104\101\114'then bs=os.clock()+0.25 bu({buttonX=bJ,buttonY=bK})else bu({uiX=bJ,uiY
=bK})end end end))table.insert(aL,aH.InputEnded:Connect(function(bF)if bz and(bF
==bz or bz.UserInputType==Enum.UserInputType.MouseButton1 and bF.UserInputType==
Enum.UserInputType.MouseButton1)then bz=nil end end))end bv(bp,a1,'\112\097\110\101\108')bv(br,
a1,'\114\101\115\105\122\101')bv(bo,bo,'\108\097\117\110\099\104\101\114')local function bw(bx)aR=bx a1.Visible=bx bo.
Visible=true end table.insert(aL,b.Activated:Connect(function()bw(false)end))
table.insert(aL,bo.Activated:Connect(function()if os.clock()>bs then bw(not aR)
end end))table.insert(aL,bl.Activated:Connect(function()if aC.save then aC.save(
)end end))table.insert(aL,bm.Activated:Connect(function()aC.pause()end))local
function bx(by)aQ=by a9.Text=ac(({Inicio='\086\105\115\097\111\032\103\101\114\097\108',Coleta='\067\111\108\101\116\097\032\101\032\097\108\118\111\115',
Corte='\077\101\115\097\032\100\101\032\099\111\114\116\101',Vendas='\086\101\110\100\097\115',Resfriar='\067\111\110\116\114\111\108\101\032\100\101\032\099\097\108\111\114',Compras=
'\069\113\117\105\112\097\109\101\110\116\111\115',Ajustes='\080\114\101\102\101\114\101\110\099\105\097\115',Missoes='\077\105\115\115\111\101\115\032\101\032\112\097\115\115\101'})[by]or by)for
bz,bA in pairs(aN)do bA.Visible=bz==by end for bz,bA in pairs(aO)do local bB=bA:
FindFirstChild('\083\101\108\101\099\116\101\100\077\097\114\107')if bB then bB.Visible=bz==by end bA.
BackgroundColor3=bz==by and aS.accent or aS.sidebar bA.TextColor3=bz==by and aS.
background or aS.text end end local function by(bz,bA)local bB=aT(
'\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Name=bz,Size=UDim2.fromScale(1,1),BackgroundTransparency=1,
BorderSizePixel=0,ScrollBarThickness=4,ScrollBarImageColor3=aS.accent,
AutomaticCanvasSize=Enum.AutomaticSize.Y,CanvasSize=UDim2.fromOffset(0,0),
Visible=false},bc)local bC=aT('\085\073\076\105\115\116\076\097\121\111\117\116',{Padding=UDim.new(0,13),SortOrder=
Enum.SortOrder.LayoutOrder},bB)aT('\085\073\080\097\100\100\105\110\103',{PaddingRight=UDim.new(0,9),
PaddingBottom=UDim.new(0,12)},bB)aN[bz]=bB local bD=aX(a6,string.format(
'\037\048\050\100\032\032\032\037\115',bA,ac(bz)))bD.Size=UDim2.new(1,0,0,39)bD.LayoutOrder=bA bD.
TextXAlignment=Enum.TextXAlignment.Left aT('\085\073\080\097\100\100\105\110\103',{PaddingLeft=UDim.new(0,
10)},bD)local bE=aT('\070\114\097\109\101',{Name='\083\101\108\101\099\116\101\100\077\097\114\107',BackgroundColor3=aS.accent,
BorderSizePixel=0,Position=UDim2.new(0,0,0.2,0),Size=UDim2.new(0,3,0.6,0),
Visible=false},bD)aU(bE,2)aO[bz]=bD table.insert(aL,bD.Activated:Connect(
function()bx(bz)end))return bB,bC end local function bz(bA,bB,bC)local bD=aT(
'\070\114\097\109\101',{BackgroundColor3=aS.card,BorderSizePixel=0,Size=UDim2.new(1,0,0,0),
AutomaticSize=Enum.AutomaticSize.Y},bA)aU(bD,12)aV(bD)aT('\085\073\080\097\100\100\105\110\103',{PaddingTop
=UDim.new(0,16),PaddingBottom=UDim.new(0,15),PaddingLeft=UDim.new(0,15),
PaddingRight=UDim.new(0,15)},bD)aT('\085\073\076\105\115\116\076\097\121\111\117\116',{Padding=UDim.new(0,10),
SortOrder=Enum.SortOrder.LayoutOrder},bD)local bE=aW(bD,bB,15,aS.text,true)bE.
Size=UDim2.new(1,0,0,23)bE.LayoutOrder=0 if bC then local bF=aW(bD,bC,11,aS.
muted,false)bF.Size=UDim2.new(1,0,0,0)bF.AutomaticSize=Enum.AutomaticSize.Y bF.
TextWrapped=true bF.TextYAlignment=Enum.TextYAlignment.Top bF.LayoutOrder=1 end
return bD end local bA=10 local function bB(bC,bD,bE,bF)bA=bA+1 local bG=aT(
'\070\114\097\109\101',{BackgroundTransparency=1,Size=UDim2.new(1,0,0,bF or 80),LayoutOrder=bA}
,bC)local bH=aW(bG,bD,12,aS.text,false)bH.Size=UDim2.new(1,-115,0,36)bH.
TextWrapped=true if bE then local bI=aW(bG,bE,10,aS.muted,false)bI.Position,bI.
Size=UDim2.fromOffset(0,41),UDim2.new(1,-5,0,32)bI.TextWrapped=true bI.
TextYAlignment=Enum.TextYAlignment.Top end return bG end local function bC(bD,bE
)aM[bD]=aM[bD]or{}table.insert(aM[bD],bE)bE(aB[bD])end local function bD(bE,bF,
bG,bH)local bI=bB(bE,bG,bH,bH and 82 or 44)local bJ=aX(bI,'')bJ.Size,bJ.Position
=UDim2.fromOffset(54,34),UDim2.new(1,-54,0,1)local bK=aT('\070\114\097\109\101',{
BackgroundColor3=Color3.fromRGB(244,238,255),BorderSizePixel=0,Size=UDim2.
fromOffset(24,24),Position=UDim2.fromOffset(5,5)},bJ)aU(bK,20)bC(bF,function(bL)
bJ.BackgroundColor3=bL and aS.accent or Color3.fromRGB(63,59,78)bK.Position=
UDim2.fromOffset(bL and 25 or 5,5)end)table.insert(aL,bJ.Activated:Connect(
function()local bL=aC.value and aC.value(bF)or aB[bF]aC.change(bF,not bL)end))
end local function bE(bF,bG,bH,bI)local bJ=bB(bF,bH,nil,46)local bK=aX(bJ,'')bK.
Size,bK.Position=UDim2.fromOffset(112,36),UDim2.new(1,-112,0,0)bC(bG,function(bL
)for bM,bN in ipairs(bI)do if bN[1]==bL then bK.Text=ac(bN[2])..'\032\062'return end
end end)table.insert(aL,bK.Activated:Connect(function()local bL=1 for bM,bN in
ipairs(bI)do if bN[1]==aB[bG]then bL=bM break end end aC.change(bG,bI[bL%#bI+1][
1])end))return bJ end local function bF(bG,bH,bI,bJ,bK,bL,bM)bM=ac(bM)local bN=
bB(bG,bI,nil,80)local bO=aT('\084\101\120\116\066\111\120',{Size=UDim2.fromOffset(100,34),Position=
UDim2.new(1,-100,0,0),BackgroundColor3=aS.background,TextColor3=aS.accent,
BorderSizePixel=0,TextSize=12,Font=Enum.Font.Gotham,ClearTextOnFocus=false},bN)
aU(bO,6)local bP=aT('\084\101\120\116\066\117\116\116\111\110',{Text='',AutoButtonColor=false,Position=UDim2.
fromOffset(0,46),Size=UDim2.new(1,0,0,28),BackgroundColor3=Color3.fromRGB(57,53,
74),BackgroundTransparency=1,BorderSizePixel=0},bN)local bQ=aT('\070\114\097\109\101',{Position
=UDim2.fromOffset(0,11),Size=UDim2.new(1,0,0,6),BackgroundColor3=Color3.fromRGB(
57,53,74),BorderSizePixel=0},bP)aU(bP,4)local bR=aT('\070\114\097\109\101',{Size=UDim2.
fromScale(0,1),BackgroundColor3=aS.accent,BorderSizePixel=0},bQ)aU(bR,4)local bS
=false local bT,bU=nil,nil local bV=bK>=10000 if bV then bP.Visible=false bN.
Size=UDim2.new(1,0,0,55)end bC(bH,function(bW)bO.Text=string.format(bL<1 and
'\037\046\050\102\037\115'or'\037\046\048\102\037\115',bW,bM or'')bR.Size=UDim2.fromScale(math.clamp((bW-bJ)/(bK-bJ)
,0,1),1)end)local function bW(bX)local bY=math.clamp((bX-bP.AbsolutePosition.X)/
math.max(1,bP.AbsoluteSize.X),0,1)aC.change(bH,math.clamp(math.floor((bJ+bY*(bK-
bJ))/bL+0.5)*bL,bJ,bK))end table.insert(aL,bO.FocusLost:Connect(function()local
bX=aC.parseNumber and aC.parseNumber(bO.Text)or tonumber(string.match(bO.Text,
'\037\045\063\091\037\100\037\046\093\043'))if bX then aC.change(bH,math.clamp(bX,bJ,bK))else aC.change(bH,aB[
bH])end end))table.insert(aL,bP.InputBegan:Connect(function(bX)if bX.
UserInputType==Enum.UserInputType.MouseButton1 then bS=true bW(bX.Position.X)
elseif bX.UserInputType==Enum.UserInputType.Touch then bT=bX bU=bX.Position bS=
false end end))table.insert(aL,aH.InputChanged:Connect(function(bX)if bT and bX
==bT then local bY=bX.Position-bU if not bS and math.abs(bY.Y)>10 and math.abs(
bY.Y)>math.abs(bY.X)then bT=nil return end if math.abs(bY.X)>8 and math.abs(bY.X
)>math.abs(bY.Y)*1.4 then bS=true end end if bS and(bX.UserInputType==Enum.
UserInputType.MouseMovement or bX==bT)then bW(bX.Position.X)end end))table.
insert(aL,aH.InputEnded:Connect(function(bX)if bX.UserInputType==Enum.
UserInputType.MouseButton1 or bX==bT then bS=false bT=nil end end))end local bG=
by('\073\110\105\099\105\111',1)local bH=bz(bG,'\066\065\082\082\065\032\068\069\032\070\069\082\082\065\077\069\078\084\065\083\032\068\079\032\074\079\071\079',
"\085\115\101\032\115\111\109\101\110\116\101\032\115\101\032\115\117\109\105\114\101\109\032\097\032\109\097\111\044\032\097\032\112\097\044\032\097\032\100\105\110\097\109\105\116\101\032\111\117\032\111\115\032\112\114\111\109\112\116\115\032\100\111\032\106\111\103\111\046")bH.
LayoutOrder=20 local bI=aX(bH,'\082\069\067\085\080\069\082\065\082\032\077\065\079\044\032\080\065\032\069\032\070\069\082\082\065\077\069\078\084\065\083')bI.Size=UDim2.
new(1,0,0,48)bI.BackgroundColor3=Color3.fromRGB(18,113,100)bI.LayoutOrder=3
table.insert(aL,bI.Activated:Connect(function()if aC.restore then aC.restore()
end end))bD(bH,'\097\117\116\111\082\101\112\097\105\114\071\117\105','\082\101\099\117\112\101\114\097\114\032\097\111\032\105\110\105\099\105\097\114\032\101\032\114\101\110\097\115\099\101\114',
"\065\032\105\110\116\101\114\102\097\099\101\032\101\032\114\101\115\116\097\117\114\097\100\097\059\032\097\115\032\114\111\116\105\110\097\115\032\099\111\110\116\105\110\117\097\109\032\112\097\117\115\097\100\097\115\032\100\101\112\111\105\115\032\100\101\032\109\111\114\114\101\114\046")
local bJ=aW(bH,'\078\101\110\104\117\109\097\032\114\101\099\117\112\101\114\097\099\097\111\032\115\111\108\105\099\105\116\097\100\097\032\110\101\115\116\097\032\115\101\115\115\097\111\046',11,aS.muted,false)
bJ.Size=UDim2.new(1,0,0,60)bJ.TextWrapped=true bJ.LayoutOrder=999 local bK=bz(bG
,'\077\079\068\079\083\032\047\032\067\065\080\073\084\085\076\079\032\073\073',
"\079\080\058\032\115\117\103\097\100\111\114\032\077\065\088\044\032\099\111\108\101\116\097\032\116\111\116\097\108\044\032\099\111\114\116\101\032\101\032\115\097\105\100\097\046\032\065\117\116\111\032\080\114\111\103\114\101\115\115\058\032\099\105\099\108\111\032\110\111\114\109\097\108\046")
bK.LayoutOrder=-40 aT('\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(Color3.fromRGB(118,
82,45),aS.card),Rotation=25},bK)local bL=aT('\070\114\097\109\101',{Size=UDim2.new(1,0,0,48),
BackgroundTransparency=1,LayoutOrder=2},bK)local bM=aX(bL,'\065\085\084\079\032\080\082\079\071\082\069\083\083')bM.
Size=UDim2.new(0.5,-5,1,0)bM.BackgroundColor3=aS.accent bM.TextColor3=aS.
background bM.TextSize=13 bC('\097\117\116\111\080\114\111\103\114\101\115\115',function(bN)bM.Text=ac(bN and
'\080\065\085\083\065\082\032\080\082\079\071\082\069\083\083'or'\065\085\084\079\032\080\082\079\071\082\069\083\083')end)table.insert(aL,bM.Activated:Connect(
function()aC.change('\097\117\116\111\080\114\111\103\114\101\115\115',not aC.value('\097\117\116\111\080\114\111\103\114\101\115\115'))end))local bN=
aX(bL,'\065\084\073\086\065\082\032\079\080')bN.Position=UDim2.new(0.5,5,0,0)bN.Size=UDim2.new(0.5,-5,1,0)
bN.BackgroundColor3=aS.mint bN.TextColor3=aS.background bN.TextSize=13 bC(
'\111\112\065\117\116\111\070\105\110\105\115\104',function(bO)bN.Text=ac(bO and'\080\065\085\083\065\082\032\079\080'or'\065\084\073\086\065\082\032\079\080')end)table.
insert(aL,bN.Activated:Connect(function()aC.change('\111\112\065\117\116\111\070\105\110\105\115\104',not aC.value(
'\111\112\065\117\116\111\070\105\110\105\115\104'))end))local bO=aW(bK,'\077\079\068\079\032\032\u{2022}\032\032\080\065\085\083\065\068\079',11,aS.mint,true)bO
.Size=UDim2.new(1,0,0,0)bO.AutomaticSize=Enum.AutomaticSize.Y bO.LayoutOrder=3
bO.TextWrapped=true local bP=bz(bG,'\080\069\082\070\073\076\032\068\065\032\080\065\082\084\073\068\065')bP.LayoutOrder=-35 bE(bP,
'\112\097\114\116\121\080\114\111\102\105\108\101','\084\105\112\111\032\100\101\032\103\114\117\112\111',{{'\083\111\108\111','\083\111\108\111'},{'\084\101\097\109','\067\111\109\032\111\032\104\117\098'},{'\077\105\120\101\100',
'\071\114\117\112\111\032\109\105\115\116\111'}})local bQ=bE(bP,'\112\097\114\116\121\083\105\122\101','\067\111\110\116\097\115\032\099\111\109\032\111\032\104\117\098',{{2,'\050\032\099\111\110\116\097\115'},{3
,'\051\032\099\111\110\116\097\115'},{4,'\052\032\099\111\110\116\097\115'}})local bR=bE(bP,'\112\097\114\116\121\082\111\108\101','\083\101\117\032\112\097\112\101\108',{{'\076\101\097\100\101\114',
'\076\105\100\101\114\032\079\080'},{'\067\111\108\108\101\099\116','\067\111\108\101\116\097\114'},{'\067\117\116','\067\111\114\116\097\114\032\101\032\118\101\110\100\101\114'}})local bS=bE(bP,
'\112\097\114\116\121\083\108\111\116','\083\117\097\032\109\101\115\097',{{1,'\077\101\115\097\032\049'},{2,'\077\101\115\097\032\050'},{3,'\077\101\115\097\032\051'},{4,'\077\101\115\097\032\052'}})
local bT=aW(bP,'',12,aS.muted,false)bT.Size=UDim2.new(1,0,0,0)bT.AutomaticSize=
Enum.AutomaticSize.Y bT.TextWrapped=true bT.LayoutOrder=90 local bU=aX(bP,
'\073\078\073\067\073\065\082\032\080\069\082\070\073\076')bU.Size=UDim2.new(1,0,0,42)bU.LayoutOrder=91 bU.
BackgroundColor3=aS.mint bU.TextColor3=aS.background table.insert(aL,bU.
Activated:Connect(aC.startProfile))local function bV()local bW=aB.partyProfile==
'\084\101\097\109'bQ.Visible=bW bR.Visible=bW bS.Visible=bW and aB.partyRole~='\067\111\108\108\101\099\116'if bW
then local bX=({[2]='\049\032\108\105\100\101\114\032\079\080\032\101\032\049\032\110\111\032\099\111\114\116\101\047\118\101\110\100\097\046',[3]=
'\049\032\108\105\100\101\114\032\079\080\044\032\049\032\110\097\032\099\111\108\101\116\097\032\101\032\049\032\110\111\032\099\111\114\116\101\047\118\101\110\100\097\046',[4]=
'\049\032\108\105\100\101\114\032\079\080\044\032\049\032\110\097\032\099\111\108\101\116\097\032\101\032\050\032\110\111\032\099\111\114\116\101\047\118\101\110\100\097\046'})[aB.partySize]bT.Text=ac(bX)..ac(
"\032\085\115\101\109\032\109\101\115\097\115\032\100\105\102\101\114\101\110\116\101\115\046\032\086\101\110\100\097\032\112\097\103\097\032\097\032\101\113\117\105\112\101\046\032\067\111\114\116\101\032\101\032\101\113\117\105\112\097\109\101\110\116\111\115\032\115\097\111\032\105\110\100\105\118\105\100\117\097\105\115\046"
)elseif aB.partyProfile=='\077\105\120\101\100'then bT.Text=ac(
"\065\112\111\105\111\032\099\111\109\032\099\111\114\116\101\032\110\097\116\105\118\111\044\032\118\101\110\100\097\115\032\101\032\099\097\109\105\110\104\097\100\097\046\032\067\111\109\112\114\097\032\102\097\099\097\115\032\101\032\097\116\101\032\100\111\105\115\032\110\105\118\101\105\115\032\100\111\032\117\112\103\114\097\100\101\032\100\101\032\118\101\108\111\099\105\100\097\100\101\032\100\111\032\106\111\103\111\046"
)else bT.Text=ac(
"\082\101\099\111\109\101\110\100\097\100\111\058\032\079\080\046\032\085\109\097\032\099\111\110\116\097\032\102\105\110\097\110\099\105\097\032\097\115\032\102\101\114\114\097\109\101\110\116\097\115\044\032\108\105\109\112\097\032\097\032\109\111\110\116\097\110\104\097\044\032\099\111\114\116\097\032\111\032\101\115\116\111\113\117\101\032\101\032\117\115\097\032\097\032\099\104\097\118\101\046"
)end end bC('\112\097\114\116\121\080\114\111\102\105\108\101',bV)bC('\112\097\114\116\121\082\111\108\101',bV)bC('\112\097\114\116\121\083\105\122\101',bV)local bW=bz(bG
,'\083\069\085\032\069\081\085\073\080\065\077\069\078\084\079',
"\078\105\118\101\105\115\032\108\105\100\111\115\032\100\111\032\106\111\103\111\046\032\077\065\088\032\097\112\097\114\101\099\101\032\115\111\109\101\110\116\101\032\099\111\109\032\116\111\100\111\115\032\111\115\032\110\105\118\101\105\115\032\099\111\110\102\105\114\109\097\100\111\115\046")
bW.LayoutOrder=1 local bX=aT('\070\114\097\109\101',{Size=UDim2.new(1,0,0,192),
BackgroundTransparency=1,LayoutOrder=3},bW)aT('\085\073\071\114\105\100\076\097\121\111\117\116',{CellSize=UDim2.
new(0.5,-5,0,90),CellPadding=UDim2.fromOffset(10,10),SortOrder=Enum.SortOrder.
LayoutOrder},bX)local bY={}for bZ,b_ in ipairs({'\068\121\110\097\109\105\116\101','\083\104\111\118\101\108','\065\117\116\111\080\101\101\108\101\114'
,'\080\111\116\097\116\111\083\117\099\107\101\114'})do local b0=aT('\070\114\097\109\101',{BackgroundColor3=aS.sidebar,
BorderSizePixel=0,LayoutOrder=bZ},bX)aU(b0,12)aV(b0)local b1=({Dynamite=Color3.
fromRGB(66,40,34),Shovel=Color3.fromRGB(27,48,72),AutoPeeler=Color3.fromRGB(43,
37,70),PotatoSucker=Color3.fromRGB(20,57,54)})[b_]aT('\085\073\071\114\097\100\105\101\110\116',{Color=
ColorSequence.new(b1,aS.background),Rotation=25},b0)local b2=aT('\073\109\097\103\101\076\097\098\101\108',{
BackgroundTransparency=1,Position=UDim2.fromOffset(10,13),Size=UDim2.fromOffset(
36,36),Visible=false},b0)local b3=aW(b0,({Dynamite='\068',Shovel='\080',AutoPeeler='\065'
,PotatoSucker='\083'})[b_],22,aS.accent,true)b3.Position,b3.Size=UDim2.fromOffset(
12,12),UDim2.fromOffset(32,38)b3.TextXAlignment=Enum.TextXAlignment.Center local
b4=aW(b0,b_,10,aS.text,true)b4.Position,b4.Size=UDim2.fromOffset(53,13),UDim2.
new(1,-60,0,18)local b5=aW(b0,'\065\103\117\097\114\100\097\110\100\111\032\100\097\100\111\115',10,aS.muted,false)b5.Position,
b5.Size=UDim2.fromOffset(53,35),UDim2.new(1,-60,0,18)local b6=aT('\070\114\097\109\101',{
BackgroundColor3=aS.line,BorderSizePixel=0,Position=UDim2.new(0,12,1,-17),Size=
UDim2.new(1,-24,0,5)},b0)aU(b6,3)local b7=aT('\070\114\097\109\101',{BackgroundColor3=aS.accent
,BorderSizePixel=0,Size=UDim2.fromScale(0,1)},b6)aU(b7,3)bY[b_]={title=b4,level=
b5,icon=b2,letter=b3,fill=b7}end local bZ=aT('\070\114\097\109\101',{Size=UDim2.new(1,0,0,33),
BackgroundTransparency=1,LayoutOrder=4},bW)aT('\085\073\076\105\115\116\076\097\121\111\117\116',{FillDirection=Enum
.FillDirection.Horizontal,Padding=UDim.new(0,5)},bZ)local b_={}for b0,b1 in
ipairs({'\082\069\078\068\065','\069\081\085\073\080\065\082','\076\073\077\080\065\082','\083\065\073\082'})do local b2=aT('\084\101\120\116\076\097\098\101\108',{Size=
UDim2.new(0.25,-4,1,0),BackgroundColor3=aS.background,Text=b1,TextSize=9,Font=
Enum.Font.GothamBold,TextColor3=aS.muted,BorderSizePixel=0},bZ)aU(b2,7)table.
insert(b_,b2)end local b0=aW(bW,'\048\048\058\048\048\032\032\047\032\032\083\079\082\084\069\032\048',11,aS.muted,true)b0.Size=
UDim2.new(1,0,0,24)b0.LayoutOrder=5 local b1=aX(bW,'\086\069\082\032\077\069\076\072\079\082\073\065\083')b1.Size=UDim2
.new(1,0,0,38)b1.LayoutOrder=6 b1.BackgroundColor3=aS.line table.insert(aL,b1.
Activated:Connect(function()bx('\067\111\109\112\114\097\115')aN.Compras.CanvasPosition=Vector2.zero
end))local b2=bz(bG,'\069\083\084\065\068\079\032\068\065\032\080\065\082\084\073\068\065')b2.LayoutOrder=5 local b3=aW(b2,
'\068\105\110\104\101\105\114\111\058\032\u{2014}\n\066\111\108\115\097\058\032\u{2014}\n\067\097\108\111\114\058\032\u{2014}\n\069\115\116\097\100\111\058\032\097\103\117\097\114\100\097\110\100\111',12,aS
.muted,false)b3.Size=UDim2.new(1,0,0,145)b3.LayoutOrder=3 b3.TextYAlignment=Enum
.TextYAlignment.Top b3.TextWrapped=true local b4=by('\067\111\108\101\116\097',2)local b5=bz(b4,
'\070\105\108\116\114\111\032\101\032\115\101\108\101\099\097\111')bD(b5,'\097\117\116\111\070\097\114\109','\067\111\108\101\116\097\114\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101')bD(b5,
'\097\117\116\111\068\101\108\105\118\101\114','\069\110\116\114\101\103\097\114\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101')bE(b5,'\114\097\114\105\116\121','\066\097\116\097\116\097\115',{{'\065\110\121',
'\081\117\097\108\113\117\101\114'},{'\082\097\105\110\098\111\119','\082\097\105\110\098\111\119'},{'\068\105\097\109\111\110\100','\068\105\097\109\097\110\116\101'},{'\071\111\108\100\101\110','\068\111\117\114\097\100\097'}})
bE(b5,'\115\101\108\101\099\116\105\111\110','\069\115\099\111\108\104\097',{{'\078\101\097\114\101\115\116','\077\097\105\115\032\112\101\114\116\111'},{'\082\097\110\100\111\109','\065\108\101\097\116\111\114\105\097'}})
bD(b5,'\099\111\108\108\101\099\116\080\117\109\112\107\105\110\115','\067\111\108\101\116\097\114\032\097\098\111\098\111\114\097\115')bD(b5,'\099\111\108\108\101\099\116\071\101\109\115',
'\073\110\099\108\117\105\114\032\103\101\109\097\115\032\100\097\032\112\105\108\104\097')bD(b5,'\103\101\109\080\114\105\111\114\105\116\121','\080\114\105\111\114\105\122\097\114\032\103\101\109\097\115')bD(b5,
'\112\117\109\112\107\105\110\080\114\105\111\114\105\116\121','\080\114\105\111\114\105\122\097\114\032\097\098\111\098\111\114\097\115')bD(b5,'\112\114\105\111\114\105\116\121\086\097\108\117\101',
'\080\114\105\111\114\105\122\097\114\032\109\097\105\111\114\032\118\097\108\111\114',
"\078\097\032\115\101\108\101\099\097\111\032\112\111\114\032\112\114\111\120\105\109\105\100\097\100\101\044\032\112\114\111\099\117\114\097\032\118\097\114\105\097\110\116\101\115\032\118\097\108\105\111\115\097\115\032\113\117\097\110\100\111\032\115\117\097\032\105\100\101\110\116\105\100\097\100\101\032\101\115\116\105\118\101\114\032\100\105\115\112\111\110\105\118\101\108\046"
)bE(b5,'\100\101\108\105\118\101\114\121\077\111\100\101','\069\110\116\114\101\103\097\114\032\112\111\114',{{'\065\109\111\117\110\116','\081\117\097\110\116\105\100\097\100\101'},{'\080\101\114\099\101\110\116',
'\080\111\114\099\101\110\116\097\103\101\109'}})bE(b5,'\100\101\108\105\118\101\114\121\084\097\114\103\101\116','\068\101\115\116\105\110\111',{{'\067\114\097\116\101','\067\097\105\120\097'},{'\084\097\098\108\101',
'\077\101\115\097'},{'\077\097\110\117\097\108','\077\097\110\117\097\108'},{'\065\117\116\111','\065\117\116\111\109\097\116\105\099\097'}})bF(b5,'\100\101\108\105\118\101\114\121\070\105\108\108',
'\069\110\116\114\101\103\097\114\032\099\111\109\032\097\032\098\111\108\115\097\032\101\109',10,100,5,'\037')bF(b5,'\100\101\108\105\118\101\114\121\066\097\116\099\104',
'\081\117\097\110\116\105\100\097\100\101\032\112\111\114\032\101\110\116\114\101\103\097',1,1000000,1,'')bA+=1 local b6=aT('\070\114\097\109\101',{
BackgroundTransparency=1,Size=UDim2.new(1,0,0,44),LayoutOrder=bA},b5)aT(
'\085\073\076\105\115\116\076\097\121\111\117\116',{FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,6
)},b6)for b7,b8 in ipairs({100,500,1000,5000})do local b9=aX(b6,tostring(b8))b9.
Size=UDim2.new(0.25,-5,0,38)table.insert(aL,b9.Activated:Connect(function()aC.
change('\100\101\108\105\118\101\114\121\066\097\116\099\104',b8)end))end bD(b5,'\105\110\102\105\110\105\116\101\066\097\103','\084\101\110\104\111\032\098\111\108\115\097\032\105\110\102\105\110\105\116\097',
"\085\115\097\032\111\032\108\111\116\101\032\099\111\110\102\105\103\117\114\097\100\111\032\110\111\032\112\108\097\110\101\106\097\109\101\110\116\111\046\032\069\115\116\097\032\111\112\099\097\111\032\110\097\111\032\099\111\110\099\101\100\101\032\097\032\109\111\099\104\105\108\097\032\110\111\032\106\111\103\111\046"
)bF(b5,'\109\097\120\068\105\115\116\097\110\099\101','\065\108\099\097\110\099\101\032\100\101\032\098\117\115\099\097',10,1000,10,'\032\115\116\117\100\115')local b7=by('\067\111\114\116\101',
3)local b8=bz(b7,'\077\101\115\097\032\101\032\102\101\114\114\097\109\101\110\116\097\115')bD(b8,'\097\117\116\111\067\117\116','\065\117\116\111\032\067\117\116')bD(b8,
'\097\105\109\084\097\098\108\101','\065\108\105\110\104\097\114\032\097\032\099\097\109\101\114\097\032\097\111\032\101\110\116\114\097\114\032\110\097\032\109\101\115\097')bE(b8,'\099\117\116\077\111\100\101','\077\111\100\111\032\100\101\032\099\111\114\116\101',
{{'\070\097\115\116','\082\097\112\105\100\111'},{'\078\097\116\105\118\101','\078\097\116\105\118\111'}})bF(b8,'\099\117\116\084\097\114\103\101\116\082\097\116\101',
'\077\101\116\097\032\100\101\032\116\101\110\116\097\116\105\118\097\115\032\112\111\114\032\115\101\103\117\110\100\111',1,40,1,'\047\115')bF(b8,'\099\117\116\084\111\111\108\077\117\108\116\105\112\108\105\101\114',
'\077\117\108\116\105\112\108\105\099\097\100\111\114\032\099\111\109\032\102\101\114\114\097\109\101\110\116\097\115',1,4,0.5,'\120')bE(b8,'\116\097\098\108\101\067\104\111\105\099\101','\077\101\115\097',{{
'\078\101\097\114\101\115\116','\077\097\105\115\032\112\101\114\116\111'},{'\080\101\101\108\105\110\103\084\097\098\108\101\049','\077\101\115\097\032\049'},{'\080\101\101\108\105\110\103\084\097\098\108\101\050','\077\101\115\097\032\050'},{
'\080\101\101\108\105\110\103\084\097\098\108\101\051','\077\101\115\097\032\051'},{'\080\101\101\108\105\110\103\084\097\098\108\101\052','\077\101\115\097\032\052'}})bD(b8,'\099\117\116\066\117\121\084\111\111\108\115',
'\067\111\109\112\114\097\114\032\110\111\032\065\117\116\111\032\067\117\116',
'\067\111\109\112\114\097\032\102\101\114\114\097\109\101\110\116\097\115\032\100\101\032\099\111\114\116\101\032\117\115\097\110\100\111\032\111\032\111\114\099\097\109\101\110\116\111\032\099\111\110\102\105\103\117\114\097\100\111\046')bD(b8,'\097\117\116\111\067\114\097\110\107',
'\071\105\114\097\114\032\099\111\114\116\097\100\111\114\032\109\097\110\117\097\108',
"\065\099\105\111\110\097\032\097\032\109\097\113\117\105\110\097\032\113\117\097\110\100\111\032\101\115\116\105\118\101\114\032\099\097\114\114\101\103\097\100\097\032\101\032\108\105\098\101\114\097\100\097\032\112\101\108\111\032\106\111\103\111\046")local b9=by(
'\086\101\110\100\097\115',4)local c=bz(b9,'\086\101\110\100\097\032\101\032\114\101\116\111\114\110\111',
"\086\101\110\100\101\032\111\032\101\115\116\111\113\117\101\032\099\111\114\116\097\100\111\032\101\032\114\101\116\111\109\097\032\097\032\114\111\116\105\110\097\046\032\065\032\112\114\111\120\105\109\097\032\102\101\114\114\097\109\101\110\116\097\032\116\101\109\032\112\114\105\111\114\105\100\097\100\101\032\097\112\111\115\032\097\032\118\101\110\100\097\046"
)bD(c,'\097\117\116\111\083\101\108\108','\065\117\116\111\032\083\101\108\108')bF(c,'\115\101\108\108\084\104\114\101\115\104\111\108\100','\086\101\110\100\101\114\032\097\032\112\097\114\116\105\114\032\100\101',1,1000000
,1,'\032\098\097\116\097\116\097\115')bD(c,'\098\117\121\065\102\116\101\114\083\101\108\108','\067\111\109\112\114\097\114\032\102\101\114\114\097\109\101\110\116\097\032\097\112\111\115\032\118\101\110\100\101\114')bD(c,
'\114\101\116\117\114\110\065\102\116\101\114\083\101\108\108','\086\111\108\116\097\114\032\112\097\114\097\032\097\032\109\101\115\097')bD(c,'\115\101\108\108\082\101\109\097\105\110\100\101\114',
'\086\101\110\100\101\114\032\111\032\114\101\115\116\097\110\116\101\032\110\111\032\102\105\109')local ca=by('\082\101\115\102\114\105\097\114',5)local cb=bz(ca,
'\086\097\108\118\117\108\097\032\100\101\032\097\103\117\097',
"\067\111\110\102\105\114\109\097\032\111\032\114\101\115\102\114\105\097\109\101\110\116\111\032\112\101\108\097\032\097\103\117\097\032\102\108\117\105\110\100\111\032\111\117\032\112\101\108\097\032\113\117\101\100\097\032\100\111\032\099\097\108\111\114\046")bD(cb,
'\097\117\116\111\067\111\111\108','\065\117\116\111\032\067\111\111\108\105\110\103')bF(cb,'\099\111\111\108\072\111\108\100\083\101\099\111\110\100\115','\084\101\109\112\111\032\115\101\103\117\114\097\110\100\111\032\097\032\118\097\108\118\117\108\097',1,
5,1,'\032\115')bD(cb,'\099\111\111\108\072\111\108\100\070\097\108\108\098\097\099\107','\082\101\112\101\116\105\114\032\100\117\114\097\099\097\111\032\111\114\105\103\105\110\097\108\032\115\101\032\110\101\099\101\115\115\097\114\105\111',
"\083\101\032\111\032\116\111\113\117\101\032\099\117\114\116\111\032\110\097\111\032\114\101\115\102\114\105\097\114\044\032\112\101\114\109\105\116\101\032\117\109\097\032\116\101\110\116\097\116\105\118\097\032\099\111\109\032\111\032\116\101\109\112\111\032\111\114\105\103\105\110\097\108\032\100\111\032\106\111\103\111\046"
)bF(cb,'\104\101\097\116\083\116\097\114\116','\067\111\109\101\099\097\114\032\097\032\114\101\115\102\114\105\097\114\032\101\109',15,100,5,'\037')bF(cb,'\104\101\097\116\083\116\111\112',
'\067\111\110\115\105\100\101\114\097\114\032\102\114\105\111\032\101\109',0,90,5,'\037')bF(cb,'\099\111\111\108\105\110\103\082\101\116\114\121','\069\115\112\101\114\097\032\101\110\116\114\101\032\116\101\110\116\097\116\105\118\097\115',5
,120,1,'\032\115')bD(cb,'\114\101\116\117\114\110\065\102\116\101\114\067\111\111\108\105\110\103','\086\111\108\116\097\114\032\097\111\032\112\111\110\116\111\032\097\110\116\101\114\105\111\114')local cc=by(
'\067\111\109\112\114\097\115',6)local cd=bz(cc,'\077\069\076\072\079\082\073\065\083\032\069\077\032\084\069\077\080\079\032\082\069\065\076',
"\078\105\118\101\105\115\032\099\111\110\102\105\114\109\097\100\111\115\032\112\101\108\111\032\106\111\103\111\046\032\067\111\110\115\117\108\116\097\114\032\101\115\116\097\032\108\105\115\116\097\032\109\097\110\116\101\109\032\097\032\114\111\116\105\110\097\032\101\109\032\101\120\101\099\117\099\097\111\046"
)cd.LayoutOrder=-10 local ce=aT('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Size=UDim2.new(1,0,0,260),
LayoutOrder=2,CanvasSize=UDim2.fromOffset(0,0),AutomaticCanvasSize=Enum.
AutomaticSize.Y,ScrollingDirection=Enum.ScrollingDirection.Y,ScrollBarThickness=
4,ScrollBarImageColor3=aS.mint,BackgroundColor3=aS.background,BorderSizePixel=0}
,cd)aU(ce,10)aT('\085\073\080\097\100\100\105\110\103',{PaddingTop=UDim.new(0,6),PaddingBottom=UDim.new(0,6
),PaddingLeft=UDim.new(0,6),PaddingRight=UDim.new(0,9)},ce)aT('\085\073\076\105\115\116\076\097\121\111\117\116',{
Padding=UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder},ce)local cf=aW(ce,
'\065\103\117\097\114\100\097\110\100\111\032\110\105\118\101\105\115\046\046\046',12,aS.muted,false)cf.Size=UDim2.new(1,0,0,24)local cg={}
local ch={PickAmount='\081\117\097\110\116\105\100\097\100\101',PickSpeed='\086\101\108\111\099\105\100\097\100\101',HoldPick=
'\067\111\108\101\116\097\032\099\111\110\116\105\110\117\097',Charge='\067\097\114\103\097',Cooling='\082\101\115\102\114\105\097\109\101\110\116\111',PeelAmount='\081\117\097\110\116\105\100\097\100\101',
PeelSpeed='\086\101\108\111\099\105\100\097\100\101',PotatoWorth='\086\097\108\111\114\032\100\097\032\098\097\116\097\116\097',WalkSpeed='\086\101\108\111\099\105\100\097\100\101\032\097\032\112\101'
,Luck='\083\111\114\116\101',Capacity='\067\097\112\097\099\105\100\097\100\101',Grasp='\071\097\114\114\097',FlySpeed='\086\111\111'}local function
ci(cj)local ck=cj.toolId..'\047'..cj.id if cg[ck]then return cg[ck]end local cl=aT(
'\070\114\097\109\101',{Size=UDim2.new(1,0,0,58),BackgroundColor3=aS.card,BorderSizePixel=0},ce
)aU(cl,9)local cm=aT('\073\109\097\103\101\076\097\098\101\108',{Position=UDim2.fromOffset(7,9),Size=UDim2.
fromOffset(37,37),BackgroundColor3=aS.background,BorderSizePixel=0,ScaleType=
Enum.ScaleType.Fit},cl)aU(cm,7)local cn=aW(cl,ch[cj.id]or cj.id,12,aS.text,true)
cn.Position,cn.Size=UDim2.fromOffset(51,8),UDim2.new(1,-142,0,18)cn.TextTruncate
=Enum.TextTruncate.AtEnd local co=aW(cl,'',10,aS.muted,false)co.Position,co.Size
=UDim2.fromOffset(51,30),UDim2.new(1,-142,0,16)co.TextTruncate=Enum.TextTruncate
.AtEnd local cp=aX(cl,'\077\069\076\072\079\082\065\082')cp.Position,cp.Size=UDim2.new(1,-86,0,11),UDim2
.fromOffset(79,36)cp.TextSize=10 table.insert(aL,cp.Activated:Connect(function()
if cp.Active then aC.manualUpgrade(cj.toolId,cj.id)end end))local cq={frame=cl,
icon=cm,detail=co,buy=cp}cg[ck]=cq return cq end local cj=bz(cc,'\079\114\099\097\109\101\110\116\111',
"\067\111\109\112\114\097\115\032\097\117\116\111\109\097\116\105\099\097\115\032\117\115\097\109\032\115\111\109\101\110\116\101\032\100\105\110\104\101\105\114\111\032\099\111\109\117\109\032\100\111\032\106\111\103\111\046\032\082\101\115\101\114\118\097\032\101\032\108\105\109\105\116\101\032\112\111\114\032\099\111\109\112\114\097\032\115\097\111\032\097\112\108\105\099\097\100\111\115\032\097\110\116\101\115\032\100\101\032\099\097\100\097\032\097\099\097\111\046"
)bD(cj,'\097\117\116\111\066\117\121\084\111\111\108\115','\070\101\114\114\097\109\101\110\116\097\115')bD(cj,'\097\117\116\111\066\117\121\085\112\103\114\097\100\101\115','\077\101\108\104\111\114\105\097\115')bD(cj,
'\097\117\116\111\066\117\121\083\116\111\114\097\103\101','\066\111\108\115\097\115\032\101\032\099\097\112\097\099\105\100\097\100\101')bD(cj,'\105\110\102\105\110\105\116\101\066\097\103',
'\084\101\110\104\111\032\109\111\099\104\105\108\097\032\105\110\102\105\110\105\116\097',
"\073\109\112\101\100\101\032\099\111\109\112\114\097\115\032\100\101\032\109\111\099\104\105\108\097\115\032\101\032\117\115\097\032\111\032\108\105\109\105\116\101\032\100\101\032\101\110\116\114\101\103\097\032\112\111\114\032\113\117\097\110\116\105\100\097\100\101\046")bD(cj,
'\098\117\121\077\097\099\104\105\110\101\115','\067\111\109\112\114\097\114\032\099\111\114\116\097\100\111\114\101\115\032\109\097\110\117\097\108\032\101\032\097\117\116\111\109\097\116\105\099\111',
"\068\101\112\111\105\115\032\100\101\032\109\097\120\105\109\105\122\097\114\032\097\115\032\100\117\097\115\032\109\101\108\104\111\114\105\097\115\032\100\101\032\100\105\110\097\109\105\116\101\046\032\079\032\109\097\110\117\097\108\032\110\097\111\032\114\101\099\101\098\101\032\109\101\108\104\111\114\105\097\115\046"
)bF(cj,'\112\114\111\100\117\099\116\105\111\110\066\097\116\099\104','\076\111\116\101\032\112\097\114\097\032\111\032\097\117\116\111\109\097\116\105\099\111\032\110\111\032\109\097\120\105\109\111',50,10000,50,
'\032\098\097\116\097\116\097\115')bD(cj,'\102\105\120\077\101\110\117\066\108\117\114','\067\111\114\114\105\103\105\114\032\100\101\115\102\111\113\117\101\032\097\111\032\102\101\099\104\097\114\032\109\101\110\117\115')bD(cj,
'\115\097\118\101\070\111\114\078\101\120\116\084\111\111\108','\071\117\097\114\100\097\114\032\112\097\114\097\032\097\032\112\114\111\120\105\109\097\032\097\114\109\097')bD(cj,'\097\117\116\111\066\117\121\068\114\111\110\101',
'\079\102\101\114\101\099\101\114\032\099\111\109\112\114\097\032\100\111\032\100\114\111\110\101\032\097\032\099\097\100\097\032\112\097\114\116\105\100\097',
"\083\111\108\105\099\105\116\097\032\099\111\110\102\105\114\109\097\099\097\111\032\100\101\032\056\048\032\103\101\109\097\115\059\032\097\032\111\102\101\114\116\097\032\114\101\097\108\032\116\097\109\098\101\109\032\112\114\101\099\105\115\097\032\099\111\110\102\105\114\109\097\114\032\101\115\115\101\032\118\097\108\111\114\046"
)bD(cj,'\117\112\103\114\097\100\101\068\114\111\110\101','\077\101\108\104\111\114\097\114\032\100\114\111\110\101\032\099\111\109\112\114\097\100\111')bD(cj,'\099\108\101\097\114\080\105\108\101\070\105\114\115\116',
'\076\105\109\112\097\114\032\097\110\116\101\115\032\100\101\032\099\111\114\116\097\114',
"\083\111\109\101\110\116\101\032\099\111\109\032\100\105\110\097\109\105\116\101\044\032\112\097\044\032\097\117\116\111\109\097\116\105\099\111\032\101\032\115\117\103\097\100\111\114\032\110\111\032\109\097\120\105\109\111\046\032\065\110\116\101\115\032\100\105\115\115\111\044\032\099\111\110\116\105\110\117\097\032\117\115\097\110\100\111\032\097\032\102\097\099\097\032\112\097\114\097\032\103\101\114\097\114\032\114\101\110\100\097\046"
)bD(cj,'\117\112\103\114\097\100\101\077\097\099\104\105\110\101\115','\077\101\108\104\111\114\097\114\032\109\097\113\117\105\110\097\115\032\099\111\109\112\114\097\100\097\115')bD(cj,'\117\112\103\114\097\100\101\071\101\110\101\114\097\108',
'\077\101\108\104\111\114\105\097\115\032\103\101\114\097\105\115\032\100\111\032\099\097\112\105\116\117\108\111\032\050')bF(cj,'\114\101\115\101\114\118\101\067\097\115\104','\082\101\115\101\114\118\097\032\100\101\032\100\105\110\104\101\105\114\111',0,
100000,0.01,'\032\036')bF(cj,'\109\097\120\080\117\114\099\104\097\115\101','\076\105\109\105\116\101\032\112\111\114\032\099\111\109\112\114\097\032\040\048\032\061\032\108\105\118\114\101\041',0,100000,
0.01,'\032\036')local ck=by('\077\105\115\115\111\101\115',7)local cl=bz(ck,'\065\085\084\079\032\081\085\069\083\084',
"\069\115\099\111\108\104\097\032\117\109\097\032\109\105\115\115\097\111\032\099\111\109\032\112\114\111\103\114\101\115\115\111\032\100\111\032\106\111\103\111\046\032\079\032\065\117\116\111\032\080\114\111\103\114\101\115\115\032\112\114\105\111\114\105\122\097\032\097\032\116\097\114\101\102\097\032\101\032\118\111\108\116\097\032\097\111\032\099\105\099\108\111\032\110\111\114\109\097\108\032\097\112\111\115\032\097\032\099\111\110\102\105\114\109\097\099\097\111\046"
)local cm=aW(cl,
"\065\098\114\097\032\097\032\116\101\108\097\032\100\101\032\109\105\115\115\111\101\115\032\111\117\032\100\111\032\112\097\115\115\101\032\100\111\032\106\111\103\111\032\112\097\114\097\032\099\097\114\114\101\103\097\114\032\097\032\108\105\115\116\097\046",12,aS.
muted,false)cm.Size=UDim2.new(1,0,0,35)cm.TextWrapped=true cm.LayoutOrder=2
local cn={}local function co(cp)if cn[cp.id]then return cn[cp.id]end local cq=
aX(cl,'')cq.Size=UDim2.new(1,0,0,48)cq.TextWrapped=true cq.TextXAlignment=Enum.
TextXAlignment.Left aT('\085\073\080\097\100\100\105\110\103',{PaddingLeft=UDim.new(0,9),PaddingRight=UDim.
new(0,9)},cq)table.insert(aL,cq.Activated:Connect(function()aC.selectQuest(cp.id
)end))cn[cp.id]=cq return cq end local cp=by('\065\106\117\115\116\101\115',8)local cq=bz(cp,'\067\111\110\116\097')
local cr=aX(cq,'\073\068\073\079\077\065')cr.Size=UDim2.new(1,0,0,40)cr.LayoutOrder=3 table.
insert(aL,cr.Activated:Connect(aC.language))local cs=aX(cq,'\069\078\067\069\082\082\065\082\032\072\085\066')cs.
Size=UDim2.new(1,0,0,40)cs.LayoutOrder=4 table.insert(aL,cs.Activated:Connect(
function()a_:Destroy()end))local ct=bz(cp,'\084\101\108\097\032\101\032\116\111\113\117\101',
"\065\114\114\097\115\116\101\032\111\032\116\111\112\111\032\112\097\114\097\032\109\111\118\101\114\032\111\032\112\097\105\110\101\108\046\032\079\032\098\111\116\097\111\032\065\032\116\097\109\098\101\109\032\112\111\100\101\032\115\101\114\032\097\114\114\097\115\116\097\100\111\046\032\085\115\101\032\111\032\099\097\110\116\111\032\105\110\102\101\114\105\111\114\032\112\097\114\097\032\114\101\100\105\109\101\110\115\105\111\110\097\114\046"
)bF(ct,'\117\105\083\099\097\108\101','\069\115\099\097\108\097\032\100\097\032\105\110\116\101\114\102\097\099\101',65,150,5,'\037')bF(ct,'\117\105\087\105\100\116\104',
'\076\097\114\103\117\114\097\032\100\111\032\112\097\105\110\101\108',300,1100,10,'\032\112\120')bF(ct,'\117\105\072\101\105\103\104\116','\065\108\116\117\114\097\032\100\111\032\112\097\105\110\101\108',340,
900,10,'\032\112\120')bF(ct,'\098\117\116\116\111\110\083\105\122\101','\084\097\109\097\110\104\111\032\100\111\032\102\108\117\116\117\097\110\116\101',44,88,2,'\032\112\120')local cu=
aX(ct,'\067\069\078\084\082\065\076\073\090\065\082\032\069\032\082\069\083\084\065\085\082\065\082\032\084\065\077\065\078\072\079')cu.Size=UDim2.new(1,0,0,44)cu.
LayoutOrder=1000 table.insert(aL,cu.Activated:Connect(function()bu({uiX=0.5,uiY=
0.5,uiWidth=760,uiHeight=580,uiScale=65,buttonX=0.03,buttonY=0.22,buttonSize=56}
)end))local cv=bz(cp,'\067\097\109\101\114\097')bD(cv,'\102\111\114\099\101\084\104\105\114\100\080\101\114\115\111\110','\070\111\114\099\097\114\032\116\101\114\099\101\105\114\097\032\112\101\115\115\111\097')
bF(cv,'\099\097\109\101\114\097\068\105\115\116\097\110\099\101','\068\105\115\116\097\110\099\105\097\032\109\097\120\105\109\097\032\100\097\032\099\097\109\101\114\097',8,100,1,'\032\115\116\117\100\115')bD(cv,
'\097\105\109\067\111\111\108\105\110\103','\065\112\111\110\116\097\114\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\032\112\097\114\097\032\097\032\118\097\108\118\117\108\097',
"\065\108\105\110\104\097\032\097\032\099\097\109\101\114\097\032\100\117\114\097\110\116\101\032\097\032\105\110\116\101\114\097\099\097\111\032\101\032\114\101\115\116\097\117\114\097\032\097\032\118\105\115\097\111\032\097\111\032\116\101\114\109\105\110\097\114\046")local cw
=bz(cp,'\069\120\101\099\117\099\097\111')bD(cw,'\097\110\116\105\065\102\107','\065\110\116\105\045\065\070\075',
"\065\116\117\097\032\112\111\114\032\101\118\101\110\116\111\032\100\101\032\105\110\097\116\105\118\105\100\097\100\101\032\101\110\113\117\097\110\116\111\032\097\108\103\117\109\097\032\114\111\116\105\110\097\032\101\115\116\105\118\101\114\032\097\116\105\118\097\059\032\112\097\117\115\097\032\106\117\110\116\111\032\100\097\115\032\114\111\116\105\110\097\115\046"
)bD(cw,'\097\117\116\111\069\115\099\097\112\101','\083\097\105\100\097\032\097\117\116\111\109\097\116\105\099\097\032\109\097\110\117\097\108',
"\085\115\097\032\097\032\099\104\097\118\101\032\114\101\097\108\032\112\097\114\097\032\112\114\111\099\117\114\097\114\032\097\032\115\097\105\100\097\046\032\079\032\079\080\032\101\032\111\032\065\117\116\111\032\080\114\111\103\114\101\115\115\032\106\097\032\099\111\111\114\100\101\110\097\109\032\115\117\097\032\112\114\111\112\114\105\097\032\115\097\105\100\097\046"
)bD(cw,'\115\107\105\112\069\110\100\105\110\103\083\099\101\110\101','\080\117\108\097\114\032\099\101\110\097\032\102\105\110\097\108',
"\085\115\097\032\111\032\098\111\116\097\111\032\080\117\108\097\114\032\113\117\097\110\100\111\032\100\105\115\112\111\110\105\118\101\108\046\032\065\112\111\115\032\097\032\102\117\103\097\032\099\111\110\102\105\114\109\097\100\097\044\032\116\097\109\098\101\109\032\116\101\110\116\097\032\097\032\102\117\110\099\097\111\032\067\097\110\099\101\108\032\100\097\032\099\101\110\097\046"
)bD(cw,'\114\101\108\101\097\115\101\069\110\100\105\110\103\067\097\109\101\114\097','\076\105\098\101\114\097\114\032\099\097\109\101\114\097\032\097\112\111\115\032\118\105\116\111\114\105\097',
"\083\101\032\097\032\099\101\110\097\032\110\097\111\032\111\102\101\114\101\099\101\114\032\117\109\032\098\111\116\097\111\044\032\116\101\110\116\097\032\100\101\118\111\108\118\101\114\032\097\032\118\105\115\097\111\032\097\111\032\112\101\114\115\111\110\097\103\101\109\032\100\101\112\111\105\115\032\100\097\032\099\111\110\102\105\114\109\097\099\097\111\032\100\097\032\102\117\103\097\046"
)bD(cw,'\116\104\114\111\117\103\104\112\117\116\077\111\100\101','\082\105\116\109\111\032\100\101\032\108\105\109\112\101\122\097',
"\067\111\109\032\101\113\117\105\112\097\109\101\110\116\111\115\032\110\111\032\109\097\120\105\109\111\044\032\112\114\101\102\101\114\101\032\097\108\118\111\115\032\112\114\111\120\105\109\111\115\032\101\032\101\118\105\116\097\032\100\101\115\118\105\111\115\032\112\111\114\032\114\097\114\105\100\097\100\101\115\046"
)bD(cw,'\102\097\115\116\068\101\108\105\118\101\114\121','\082\101\100\117\122\105\114\032\105\110\116\101\114\118\097\108\111\032\108\111\099\097\108\032\100\097\032\101\110\116\114\101\103\097',
"\065\099\101\108\101\114\097\032\101\110\116\114\101\103\097\115\032\101\032\114\101\115\116\097\117\114\097\032\111\032\105\110\116\101\114\118\097\108\111\032\110\111\114\109\097\108\032\115\101\032\097\032\101\110\116\114\101\103\097\032\102\097\108\104\097\114\046")bF(cw,
'\112\108\097\099\101\109\101\110\116\068\101\108\097\121','\073\110\116\101\114\118\097\108\111\032\108\111\099\097\108\032\112\111\114\032\099\111\108\111\099\097\099\097\111',0.005,0.08,0.005,'\032\115')bE(cw,
'\109\111\118\101\109\101\110\116','\068\101\115\108\111\099\097\109\101\110\116\111',{{'\084\101\108\101\112\111\114\116','\084\101\108\101\112\111\114\116\101'},{'\087\097\108\107','\067\097\109\105\110\104\097\114'}})bE(cw,
'\115\112\101\101\100\077\111\100\101','\082\105\116\109\111',{{'\084\117\114\098\111','\084\117\114\098\111'},{'\083\116\097\110\100\097\114\100','\078\111\114\109\097\108'}})bF(cw,'\112\105\099\107\066\097\116\099\104',
'\067\111\108\101\116\097\115\032\112\111\114\032\114\111\100\097\100\097',1,16,1,'')bD(cw,'\097\117\114\097\067\111\108\108\101\099\116','\067\111\108\101\116\097\114\032\097\111\032\114\101\100\111\114\032\115\101\109\032\109\105\114\097\114',
"\085\115\097\032\073\068\115\032\100\111\115\032\097\108\118\111\115\032\112\114\111\120\105\109\111\115\059\032\116\101\108\101\112\111\114\116\097\032\113\117\097\110\100\111\032\110\101\099\101\115\115\097\114\105\111\046\032\079\032\115\101\114\118\105\100\111\114\032\097\105\110\100\097\032\118\097\108\105\100\097\032\111\032\097\108\099\097\110\099\101\046"
)bF(cw,'\097\117\114\097\082\097\100\105\117\115','\082\097\105\111\032\108\111\099\097\108\032\100\097\032\099\111\108\101\116\097',5,18,1,'\032\115\116\117\100\115')bE(cw,'\099\111\108\108\101\099\116\084\111\111\108',
'\070\101\114\114\097\109\101\110\116\097\032\100\101\032\099\111\108\101\116\097',{{'\065\117\116\111','\077\101\108\104\111\114\032\097\100\113\117\105\114\105\100\097'},{'\072\097\110\100','\077\097\111'},{'\083\104\111\118\101\108',
'\080\097'},{'\080\111\116\097\116\111\083\117\099\107\101\114','\080\048\084\052\084\048\045\051\048\048\048'}})bD(cw,'\108\111\103\105\099\097\108\083\112\101\099\105\097\108\115',
'\069\115\112\101\099\105\097\105\115\032\115\101\109\032\109\111\100\101\108\111\032\118\105\115\105\118\101\108',
"\085\115\097\032\111\115\032\073\068\115\032\101\032\097\115\032\112\111\115\105\099\111\101\115\032\097\116\117\097\105\115\032\100\111\032\106\111\103\111\046\032\084\101\110\116\097\116\105\118\097\115\032\114\101\099\117\115\097\100\097\115\032\114\101\099\101\098\101\109\032\117\109\097\032\112\097\117\115\097\059\032\114\101\099\111\109\112\101\110\115\097\115\032\100\101\112\101\110\100\101\109\032\100\111\032\115\101\114\118\105\100\111\114\046"
)bD(cw,'\097\117\116\111\082\101\099\111\118\101\114','\082\101\099\117\112\101\114\097\114\032\101\116\097\112\097\115\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101',
'\070\097\108\104\097\115\032\100\101\032\099\111\108\101\116\097\032\101\032\101\110\116\114\101\103\097\032\097\100\105\097\109\032\115\111\109\101\110\116\101\032\097\032\101\116\097\112\097\032\097\102\101\116\097\100\097\046')local cx=aX(cw,
'\082\069\083\084\065\085\082\065\082\032\067\079\078\084\082\079\076\069\083\032\068\079\032\074\079\071\079')cx.Size=UDim2.new(1,0,0,40)cx.LayoutOrder=1000
table.insert(aL,cx.Activated:Connect(function()if aC.restore then aC.restore()
end end))bF(cw,'\097\099\116\105\111\110\068\101\108\097\121','\073\110\116\101\114\118\097\108\111\032\101\110\116\114\101\032\097\099\111\101\115',0.02,5,0.01,'\032\115')bF(cw,
'\097\099\116\105\111\110\084\105\109\101\111\117\116','\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\097\099\097\111',2,60,1,'\032\115')bF(cw,'\116\114\097\118\101\108\084\105\109\101\111\117\116',
'\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\116\114\097\106\101\116\111',5,120,1,'\032\115')bD(cw,'\097\117\116\111\068\121\110\097\109\105\116\101',
'\068\105\110\097\109\105\116\101\032\097\117\116\111\109\097\116\105\099\097',
"\065\116\117\097\032\113\117\097\110\100\111\032\097\032\102\101\114\114\097\109\101\110\116\097\032\102\111\105\032\097\100\113\117\105\114\105\100\097\032\101\032\111\032\112\114\111\116\111\099\111\108\111\032\100\101\032\108\097\110\099\097\109\101\110\116\111\032\102\111\105\032\105\100\101\110\116\105\102\105\099\097\100\111\046"
)bD(cw,'\100\121\110\097\109\105\116\101\065\103\103\114\101\115\115\105\118\101','\073\110\116\101\114\118\097\108\111\032\097\099\101\108\101\114\097\100\111',
"\082\101\100\117\122\032\097\032\101\115\112\101\114\097\032\108\111\099\097\108\059\032\116\101\110\116\097\116\105\118\097\115\032\115\101\109\032\099\111\110\102\105\114\109\097\099\097\111\032\114\101\099\101\098\101\109\032\117\109\032\105\110\116\101\114\118\097\108\111\032\109\097\105\111\114\046"
)bF(cw,'\100\121\110\097\109\105\116\101\073\110\116\101\114\118\097\108','\073\110\116\101\114\118\097\108\111\032\100\097\032\100\105\110\097\109\105\116\101',0.1,15,0.1,'\032\115')bD(cw,
'\112\097\117\115\101\079\110\077\111\118\101\109\101\110\116','\080\097\117\115\097\114\032\099\111\109\032\109\111\118\105\109\101\110\116\111\032\109\097\110\117\097\108')bD(cw,'\110\111\116\105\102\105\099\097\116\105\111\110\115',
'\078\111\116\105\102\105\099\097\099\111\101\115')local cy=bz(cp,'\065\116\097\108\104\111\115')for cz,cA in ipairs({{'\107\101\121\080\114\111\103\114\101\115\115',
'\065\117\116\111\032\080\114\111\103\114\101\115\115'},{'\107\101\121\067\117\116','\065\117\116\111\032\067\117\116'},{'\107\101\121\070\097\114\109','\067\111\108\101\116\097'},{'\107\101\121\067\111\111\108',
'\082\101\115\102\114\105\097\109\101\110\116\111'},{'\107\101\121\066\117\121','\070\101\114\114\097\109\101\110\116\097\115'},{'\107\101\121\068\101\108\105\118\101\114','\069\110\116\114\101\103\097\114'},{'\107\101\121\080\117\109\112\107\105\110'
,'\065\098\111\098\111\114\097\115'},{'\107\101\121\083\116\111\114\097\103\101','\066\111\108\115\097\115'},{'\107\101\121\085\112\103\114\097\100\101\115','\077\101\108\104\111\114\105\097\115'},{'\107\101\121\067\114\097\110\107',
'\067\111\114\116\097\100\111\114\032\109\097\110\117\097\108'},{'\107\101\121\083\101\108\108','\086\101\110\100\101\114'},{'\107\101\121\068\121\110\097\109\105\116\101','\068\105\110\097\109\105\116\101'},{'\107\101\121\077\101\110\117',
'\080\097\105\110\101\108'},{'\107\101\121\080\097\117\115\101','\080\097\117\115\097\114'}})do local cB,cC=cA[1],cA[2]local cD=bB(cy,cC,nil
,36)local cE=aX(cD,aB[cB])cE.Position,cE.Size=UDim2.new(1,-96,0,0),UDim2.
fromOffset(96,27)bC(cB,function(cF)cE.Text=cF end)table.insert(aL,cE.Activated:
Connect(function()aC.bind(cB)end))end local cz=bz(cp,'\079\080\032\065\108\116\111\032\090\101\114\097\114',
'\067\105\099\108\111\032\099\111\109\112\108\101\116\111\032\099\111\109\032\112\114\105\111\114\105\100\097\100\101\032\112\097\114\097\032\108\105\109\112\097\114\032\097\032\109\111\110\116\097\110\104\097\046')bD(cz,'\111\112\065\117\116\111\070\105\110\105\115\104',
'\079\080\032\065\108\116\111\032\090\101\114\097\114',
"\083\117\103\097\100\111\114\032\077\065\088\032\105\110\105\099\105\097\032\099\111\108\101\116\097\032\099\111\110\116\105\110\117\097\032\097\116\101\032\097\099\097\098\097\114\032\097\032\109\111\110\116\097\110\104\097\046\032\069\110\116\114\101\103\097\032\097\111\032\101\110\099\104\101\114\032\115\101\032\097\032\098\111\108\115\097\032\102\111\114\032\102\105\110\105\116\097\046\032\079\032\079\080\032\099\111\111\114\100\101\110\097\032\115\101\117\115\032\115\101\114\118\105\099\111\115\032\115\101\109\032\108\105\103\097\114\032\111\115\032\105\110\116\101\114\114\117\112\116\111\114\101\115\032\100\097\115\032\114\111\116\105\110\097\115\032\109\097\110\117\097\105\115\046"
)bD(cz,'\111\112\066\097\116\099\104\070\117\110\100\105\110\103','\086\101\110\100\101\114\032\108\111\116\101\115\032\109\097\105\111\114\101\115\032\110\111\032\079\080',
"\085\115\097\032\108\111\116\101\115\032\100\101\032\053\048\044\032\057\048\032\111\117\032\049\053\048\032\099\111\110\102\111\114\109\101\032\111\032\115\097\108\100\111\032\113\117\101\032\102\097\108\116\097\032\112\097\114\097\032\097\032\112\114\111\120\105\109\097\032\099\111\109\112\114\097\044\032\114\101\115\112\101\105\116\097\110\100\111\032\111\032\108\105\109\105\116\101\032\100\101\032\118\101\110\100\097\046"
)bD(cz,'\111\112\070\097\115\116\080\114\111\109\112\116\115','\082\101\116\101\110\116\097\114\032\109\101\115\097\032\101\032\118\101\110\100\097\032\109\097\105\115\032\099\101\100\111',
"\081\117\097\110\100\111\032\111\032\112\114\111\109\112\116\032\101\032\105\110\115\116\097\110\116\097\110\101\111\044\032\116\101\110\116\097\032\111\117\116\114\097\032\102\111\114\109\097\032\100\101\032\105\110\116\101\114\097\099\097\111\032\109\097\105\115\032\099\101\100\111\046\032\079\032\114\101\115\117\108\116\097\100\111\032\097\105\110\100\097\032\100\101\112\101\110\100\101\032\100\097\032\099\111\110\102\105\114\109\097\099\097\111\032\100\111\032\106\111\103\111\046"
)bt=function()if aP then return end if a0.AbsoluteSize.X<100 or a0.AbsoluteSize.
Y<100 then return end local cA=aD.resolve(a0.AbsoluteSize.X,a0.AbsoluteSize.Y,aB
)a1.Size=UDim2.fromOffset(cA.width,cA.height)a2.Scale=cA.scale a1.Position=UDim2
.fromOffset(cA.x,cA.y)a1.Visible=aR local cB=aD.launcher(a0.AbsoluteSize.X,a0.
AbsoluteSize.Y,aB)bo.Size=UDim2.fromOffset(cB.size,cB.size)bo.Position=UDim2.
fromOffset(cB.x,cB.y)local cC=cA.compact local cD=cC and 66 or 174 a3.Size=UDim2
.new(0,cD,1,0)a3.Visible=not cC a8.Position=UDim2.fromOffset(cC and 16 or cD+16,
43)a8.Size=UDim2.new(1,cC and-32 or-cD-32,1,-59)bc.Size=UDim2.new(1,0,1,cC and-
224 or-185)a6.Parent=cC and a1 or a3 a6.Position=cC and UDim2.new(0,12,1,-150)or
UDim2.fromOffset(12,90)a6.Size=cC and UDim2.new(1,-24,0,40)or UDim2.new(1,-24,1,
-108)a6.AutomaticCanvasSize=cC and Enum.AutomaticSize.X or Enum.AutomaticSize.Y
a6.ScrollingDirection=cC and Enum.ScrollingDirection.X or Enum.
ScrollingDirection.Y a7.FillDirection=cC and Enum.FillDirection.Horizontal or
Enum.FillDirection.Vertical bq.Text=ac(cC and
'\u{2261}\032\032\032\065\078\079\078\072\085\066\032\047\032\080\079\084\065\084\079\032\032\032\u{b7}\032\032\032\065\082\082\065\083\084\069'or
'\u{2261}\032\032\032\065\082\082\065\083\084\069\032\080\065\082\065\032\077\079\086\069\082')bq.TextXAlignment=cC and Enum.TextXAlignment.
Left or Enum.TextXAlignment.Right a4.Text=cC and'\065'or'\065\078\079\078\072\085\066'a4.TextSize=cC and
27 or 20 a5.Visible=not cC for cE,cF in pairs(aO)do local cG=({Inicio=1,Coleta=2
,Corte=3,Vendas=4,Resfriar=5,Compras=6,Missoes=7,Ajustes=8})[cE]cF.Text=cC and
ac(({Inicio='\073\078\073\067\073\079',Coleta='\067\079\076\069\084\065',Corte='\067\079\082\084\069',Vendas='\086\069\078\068\069\082',Resfriar=
'\065\071\085\065',Compras='\076\079\074\065',Missoes='\077\073\083\083\079\069\083',Ajustes='\065\074\085\083\084\069'})[cE])or string.format(
'\037\048\050\100\032\032\032\037\115',cG,ac(cE))cF.TextSize=cC and 11 or 12 cF.Size=cC and UDim2.
fromOffset(76,38)or UDim2.new(1,0,0,43)cF.TextXAlignment=cC and Enum.
TextXAlignment.Center or Enum.TextXAlignment.Left local cH=cF:
FindFirstChildOfClass('\085\073\080\097\100\100\105\110\103')if cH then cH.PaddingLeft=UDim.new(0,cC and 0
or 10)end end bl.Size=UDim2.new(0.24,-4,0,35)bm.TextSize=10 bm.Position,bm.Size=
UDim2.new(0.24,2,0,0),UDim2.new(0.4,-5,0,35)bn.Position,bn.Size=UDim2.new(0.64,4
,0,0),UDim2.new(0.36,-4,0,35)end table.insert(aL,a0:GetPropertyChangedSignal(
'\065\098\115\111\108\117\116\101\083\105\122\101'):Connect(bt))task.defer(bt)bx('\073\110\105\099\105\111')local function cA()if aP
then return end aP=true for cB,cC in ipairs(aL)do cC:Disconnect()end if aC.close
then aC.close()end end a_.Destroying:Connect(cA)return{confirmDrone=function(cB)
local cC=aT('\070\114\097\109\101',{Name='\068\114\111\110\101\067\111\110\102\105\114\109\097\116\105\111\110',Size=UDim2.fromScale(1,1),
BackgroundColor3=aS.background,BackgroundTransparency=0.1,ZIndex=100},a0)local
cD=aT('\070\114\097\109\101',{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5
),Size=UDim2.new(0.85,0,0,180),BackgroundColor3=aS.card,ZIndex=101},cC)aU(cD,12)
local cE=aW(cD,'\068\101\115\101\106\097\032\109\101\115\109\111\032\099\111\109\112\114\097\114\032\111\032\100\114\111\110\101\063\n\080\114\101\099\111\058\032\056\048\032\103\101\109\097\115',17,aS.text,true)
cE.Position,cE.Size=UDim2.fromOffset(15,15),UDim2.new(1,-30,0,80)cE.TextWrapped=
true cE.ZIndex=102 local cF,cG=aX(cD,'\067\079\077\080\082\065\082\058\032\056\048\032\071\069\077\065\083'),aX(cD,'\065\071\079\082\065\032\078\065\079')cF.
Position,cF.Size=UDim2.new(0.04,0,1,-65),UDim2.new(0.45,0,0,48)cG.Position,cG.
Size=UDim2.new(0.51,0,1,-65),UDim2.new(0.45,0,0,48)cF.ZIndex=102 cG.ZIndex=102
local cH=false local function cI(cJ)if cH then return end cH=true cC:Destroy()
cB(cJ)end cF.Activated:Connect(function()cI(true)end)cG.Activated:Connect(
function()cI(false)end)end,refresh=function(cB)if aP then return end for cC,cD
in pairs(aM)do if not cB or cC==cB then local cE=aC.value and aC.value(cC)if cE
==nil then cE=aB[cC]end for cF,cG in ipairs(cD)do cG(cE)end end end if bt then
bt()end end,recoveryInfo=function(cB)if aP or not cB then return end bJ.Text=ac(
#(cB.missing or{})>0 and
'\065\108\103\117\110\115\032\099\111\110\116\114\111\108\101\115\032\097\105\110\100\097\032\110\u{e3}\111\032\101\115\116\u{e3}\111\032\100\105\115\112\111\110\u{ed}\118\101\105\115\046'or
'\067\111\110\116\114\111\108\101\115\032\114\101\115\116\097\117\114\097\100\111\115\046')bJ.TextColor3=#(cB.missing or{})>0 and Color3.fromRGB(
255,192,110)or aS.mint end,dashboard=function(cB,cC)if aP or not cB then return
end if aQ=='\067\111\109\112\114\097\115'and cB.details then local cD={}for cE,cF in ipairs(cB.
details)do local cG=ci(cF)cD[cG]=true cG.frame.Visible=true cG.frame.LayoutOrder
=cE cG.icon.Image=type(cF.icon)=='\115\116\114\105\110\103'and cF.icon or
'\114\098\120\097\115\115\101\116\105\100\058\047\047\049\048\051\050\050\053\057\049\052\054\051\057\055\050\050'cG.detail.Text=string.format('\037\115\032\032\u{b7}\032\032\037\115\047\037\115',
cF.tool,tostring(cF.level or'\u{2014}'),tostring(cF.maximum or'\u{2014}'))local
cH=type(cF.level)=='\110\117\109\098\101\114'and type(cF.maximum)=='\110\117\109\098\101\114'local cI=cH and cF.
level>=cF.maximum cG.buy.Active=cH and not cI cG.buy.Text=cI and'\077\065\088'or type(cF.
price)=='\110\117\109\098\101\114'and string.format('\036\037\046\050\102',cF.price)or ac('\077\069\076\072\079\082\065\082')cG.buy.
BackgroundColor3=cG.buy.Active and aS.line or aS.background end for cE,cF in
pairs(cg)do if not cD[cF]then cF.frame.Visible=false end end cf.Visible=#cB.
details==0 end for cD,cE in ipairs(cB.tools)do local cF=bY[cE.id]if cF then
local cG=cE.total>0 and math.clamp(cE.current/cE.total,0,1)or 0 cF.title.Text=
ac(cE.title)cF.level.Text=not cE.owned and ac('\078\065\079\032\065\068\081\085\073\082\073\068\079')or cG==1 and ac(
'\077\065\088\032\032\047\032\032\080\082\079\078\084\079')or tostring(cE.current)..'\032\047\032'..tostring(cE.total)cF.level.
TextColor3=cG==1 and aS.mint or aS.muted cF.fill.Size=UDim2.fromScale(cE.owned
and cG or 0,1)cF.fill.BackgroundColor3=cG==1 and aS.mint or aS.accent local cH=
type(cE.icon)=='\115\116\114\105\110\103'and cE.icon:find('\114\098\120\097\115\115\101\116',1,true)~=nil cF.icon.Visible=
cH cF.letter.Visible=not cH if cH then cF.icon.Image=cE.icon end end end local
cD=cB.finished and 4 or cB.hasKey and 4 or cB.production and 3 or(cB.cash or 0)>
0 and 2 or 1 bO.Text=cB.finished and ac('\077\079\068\079\032\032\u{2022}\032\032\067\079\078\067\076\085\073\068\079')or ac(cB.
role)or cB.op and ac('\077\079\068\079\032\032\u{2022}\032\032\079\080\032\065\084\073\086\079\032\032\047\032\032')..tostring(ac(cB.phase or
'\108\105\109\112\101\122\097'))or cB.progress and ac('\077\079\068\079\032\032\u{2022}\032\032\065\085\084\079\032\080\082\079\071\082\069\083\083')or ac(
'\077\079\068\079\032\032\u{2022}\032\032\080\065\085\083\065\068\079\032\047\032\082\079\084\073\078\065\083\032\077\065\078\085\065\073\083')for cE,cF in ipairs(b_)do cF.
BackgroundColor3=cE==cD and aS.accent or aS.background cF.TextColor3=cE==cD and
aS.background or aS.muted end b0.Text=string.format(ac(
'\037\048\050\100\058\037\048\050\100\032\032\047\032\032\083\079\082\084\069\032\037\100\037\115'),math.floor(cC/60),math.floor(cC%60),cB.gemLuck,cB.
finished and ac('\032\032\047\032\032\067\079\078\067\076\085\073\068\079')or'')end,membership=function(cB)if aP or not cB
then return end bk(cB)end,quests=function(cB,cC)if aP then return end local cD={
}for cE,cF in ipairs(cB)do local cG=co(cF)cD[cG]=true cG.LayoutOrder=10+cE cG.
Visible=true local cH=cF.id==cC local cI=cF.done and'\067\079\078\067\076\085\073\068\065'or cH and
'\080\082\073\079\082\073\090\065\078\068\079'or cF.action and'\083\069\076\069\067\073\079\078\065\082'or'\077\065\078\085\065\076'cG.Text=string.format(
'\037\115\032\032\u{b7}\032\032\037\115\032\032\032\091\037\100\047\037\100\093\n\037\115',cF.source,cF.title,cF.current,cF.goal,ac(cI))cG.
BackgroundColor3=cH and aS.line or aS.background cG.TextColor3=cH and aS.mint or
aS.text end for cE,cF in pairs(cn)do if not cD[cF]then cF.Visible=false end end
cm.Visible=#cB==0 end,status=function(cB)if not aP then bb.Text=ac(cB)end end,
summary=function(cB)if not aP then b3.Text=cB end end,show=function()bw(true)end
,toggle=function()bw(not aR)end,close=function()if a_.Parent then a_:Destroy()
end end,gui=a_}end return az end)()local aA=(function()local aA={}function aA.
create(aB,aC,aD,aE)local aF=aE and aE.clock or os.clock local aG=aB.Players.
LocalPlayer local aH=aE and aE.nativePrompt or type(fireproximityprompt)==
'\102\117\110\099\116\105\111\110'and fireproximityprompt or nil local aI,aJ,aL=nil,0,true local aM=nil
local aN=nil local aO=nil local aP=nil local aQ={attempts=0,held=0,native=0,
lastMethod='\110\111\110\101',lastPath='\110\111\110\101'}local function aR()local aS=aG.Character local
aT=aS and aS:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')local aU=aS and aS:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')if not aT or not aU or aU.Health<=0 then return
nil,nil end return aT,aU end local function aS()if aJ>0 then aJ=aJ+1 return end
if not aI then local aT=aG:FindFirstChild('\080\108\097\121\101\114\083\099\114\105\112\116\115')and aG.PlayerScripts:
FindFirstChild('\080\108\097\121\101\114\077\111\100\117\108\101')if aT then local aU,aV=pcall(require,aT)if aU and
type(aV)=='\116\097\098\108\101'and type(aV.GetControls)=='\102\117\110\099\116\105\111\110'then local aW,aX=pcall(aV.
GetControls,aV)if aW then aI=aX end end end end aL=not aI or aI.controlsEnabled
~=false if aI and type(aI.Disable)=='\102\117\110\099\116\105\111\110'then pcall(aI.Disable,aI)end aJ=1
end local function aT(aU)aJ=aU and 0 or math.max(0,aJ-1)if aJ==0 and aI and aL
and type(aI.Enable)=='\102\117\110\099\116\105\111\110'then pcall(aI.Enable,aI)end end local function aU
()if aO then aO()end if aN then pcall(aN.InputHoldEnd,aN)aN=nil end local aV,aW=
aR()if aW and aV then aW:MoveTo(aV.Position)end aM=nil aT(true)end local
function aV(aW,aX)local aY=aF()+aW while aF()<aY do if not aX()then return false
end aB.RunService.Heartbeat:Wait()end return true end local function aW(aX,aY,aZ
)for a_,a0 in ipairs(aX)do local a1,a2=aR()if not a1 or not aY()or aF()>aZ then
return false,'\116\114\097\106\101\116\111\032\105\110\116\101\114\114\111\109\112\105\100\111'end aM=a2 if a0.Action==Enum.
PathWaypointAction.Jump then a2.Jump=true end a2:MoveTo(a0.Position)local a3,a4=
math.huge,aF()while Vector2.new(a1.Position.X-a0.Position.X,a1.Position.Z-a0.
Position.Z).Magnitude>2.5 or math.abs(a1.Position.Y-a0.Position.Y)>7 do if not
aY()or a2.Health<=0 or not a1.Parent or aF()>aZ then return false,
'\116\114\097\106\101\116\111\032\105\110\116\101\114\114\111\109\112\105\100\111'end local a5=Vector2.new(a1.Position.X-a0.Position.X,a1.
Position.Z-a0.Position.Z).Magnitude if a5<a3-0.15 then a3,a4=a5,aF()end if aF()-
a4>3 then return false,'\099\097\109\105\110\104\111\032\098\108\111\113\117\101\097\100\111'end aB.RunService.Heartbeat:Wait()end
end return true end local function aX(aY,aZ,a_)local a0,a1=aR()if not a0 then
return false,'\112\101\114\115\111\110\097\103\101\109\032\105\110\100\105\115\112\111\110\105\118\101\108'end if not aZ()then return false,
'\099\097\110\099\101\108\097\100\111'end if aC.movement=='\084\101\108\101\112\111\114\116'then local a2=aG.Character local a3=a_
and 0 or math.max(2,a1.HipHeight+a0.Size.Y/2)local a4=CFrame.new(aY+Vector3.new(
0,a3,0))*a0.CFrame.Rotation local a5,a6=pcall(function()local a5=a2:GetPivot():
ToObjectSpace(a0.CFrame)a2:PivotTo(a4*a5:Inverse())a0.AssemblyLinearVelocity=
Vector3.zero a0.AssemblyAngularVelocity=Vector3.zero end)if not a5 then return
false,tostring(a6)end if not aV(aC.teleportSettle,aZ)then return false,
'\099\097\110\099\101\108\097\100\111'end local a7=aR()if not a7 or(a7.Position-a4.Position).Magnitude>8
then return false,'\079\032\115\101\114\118\105\100\111\114\032\114\101\112\111\115\105\099\105\111\110\111\117\032\111\032\112\101\114\115\111\110\097\103\101\109\032\097\112\111\115\032\111\032\116\101\108\101\112\111\114\116\101\046'end
return true end aS()local a2,a3 local a4,a5=pcall(function()local a4=aB.
PathfindingService:CreatePath({AgentRadius=1.6,AgentHeight=5,AgentCanJump=true,
AgentCanClimb=true,WaypointSpacing=3})a4:ComputeAsync(a0.Position,aY)if not aZ()
then a2,a3=false,'\099\097\110\099\101\108\097\100\111'return end if a4.Status~=Enum.PathStatus.Success
then a2,a3=false,'\115\101\109\032\099\097\109\105\110\104\111\032\110\097\118\101\103\097\118\101\108'return end a2,a3=aW(a4:GetWaypoints(),aZ
,aF()+aC.travelTimeout)end)if not a4 then a2,a3=false,tostring(a5)end aT()if not
a2 then local a6,a7=aR()if a6 and a7 then a7:MoveTo(a6.Position)end end aM=nil
return a2,a3 end local function aY(aZ)local a_=aZ and aZ.Parent if not a_ then
return nil end if a_:IsA('\065\116\116\097\099\104\109\101\110\116')then return a_.WorldPosition end if a_:
IsA('\066\097\115\101\080\097\114\116')then return a_.Position end if a_:IsA('\077\111\100\101\108')then return a_:
GetPivot().Position end return nil end local function aZ(a_,a0)local a1=aY(a_)
local a2=aR()if not a1 or not a2 then return false,'\112\114\111\109\112\116\032\105\110\100\105\115\112\111\110\105\118\101\108'end
local a3=math.max(1,a_.MaxActivationDistance-1)if(a2.Position-a1).Magnitude<=a3
then return true end local a4=Vector3.new(a2.Position.X-a1.X,0,a2.Position.Z-a1.
Z)local a5=a4.Magnitude>0.01 and a4.Unit or Vector3.new(0,0,1)local a6=Vector3.
new(-a5.Z,0,a5.X)local a7={a5,a6,-a6,-a5}if aC.movement=='\084\101\108\101\112\111\114\116'then local a8
=a1+a5*math.min(3,a3*0.45)+Vector3.new(0,1.4,0)return aX(a8,a0,true)end local a8
=RaycastParams.new()a8.FilterType=Enum.RaycastFilterType.Exclude a8.
FilterDescendantsInstances={aG.Character,a_:FindFirstAncestorOfClass('\077\111\100\101\108')or
a_.Parent}for a9,b in ipairs(a7)do if not a0()then return false,'\099\097\110\099\101\108\097\100\111'end
local bb=a1+b*math.min(4,a3*0.6)local bc=workspace:Raycast(bb+Vector3.new(0,8,0)
,Vector3.new(0,-80,0),a8)if bc then local be=aX(bc.Position,a0)local bf=aR()if
be and bf and(bf.Position-a1).Magnitude<=a3 then return true end end end return
false,'\110\097\111\032\102\111\105\032\112\111\115\115\105\118\101\108\032\099\104\101\103\097\114\032\097\111\032\112\114\111\109\112\116'end local function a_(a0,a1,a2)a2=a2 or
{}if not a0 or not a0.Parent then return false,'\112\114\111\109\112\116\032\114\101\109\111\118\105\100\111'end local a3,a4=
aZ(a0,a1)if not a3 then return false,a4 end if not a1()then return false,
'\099\097\110\099\101\108\097\100\111'end local a5=aY(a0)local a6=aR()if not a6 or not a5 or(a6.Position-a5
).Magnitude>a0.MaxActivationDistance then return false,'\102\111\114\097\032\100\111\032\097\108\099\097\110\099\101'end aQ.
attempts+=1 aQ.lastPath=a0:GetFullName()local a7=a2.method~='\110\097\116\105\118\101'and(a0.
HoldDuration>0 or a2.method=='\104\111\108\100')if aH and not a7 then local a8,a9=pcall(aH,
a0)if a8 then aQ.native+=1 aQ.lastMethod='\110\097\116\105\118\101'return true end aD(
'\065\099\105\111\110\097\109\101\110\116\111\032\110\097\116\105\118\111\032\100\111\032\112\114\111\109\112\116\032\102\097\108\104\111\117\058\032'..tostring(a9),'\101\114\114\111\114')end local a8,a9=
pcall(a0.InputHoldBegin,a0)if not a8 then if aH then local b,bb=pcall(aH,a0)if b
then aQ.native+=1 aQ.lastMethod='\110\097\116\105\118\101\032\102\097\108\108\098\097\099\107'return true end return false,
tostring(bb)end return false,tostring(a9)end aN=a0 aQ.held+=1 aQ.lastMethod=
'\099\111\110\116\105\110\117\111\117\115\032\104\111\108\100'local b,bb=pcall(aV,a0.HoldDuration>0 and a0.HoldDuration+0.2
or 0.08,a1)pcall(a0.InputHoldEnd,a0)if aN==a0 then aN=nil end if not b then
return false,tostring(bb)end if not bb then return false,
'\105\110\116\101\114\097\099\097\111\032\105\110\116\101\114\114\111\109\112\105\100\097'end return true end local function a0(a1,a2,a3)if not a1
or not a1.Parent then return false,'\112\114\111\109\112\116\032\114\101\109\111\118\105\100\111'end local a4,a5,a6=a1.
Enabled,a1.RequiresLineOfSight,a1.HoldDuration local a7=nil local a8,a9,b=pcall(
function()a1.Enabled=true a1.RequiresLineOfSight=false if a3 and type(a3.
holdSeconds)=='\110\117\109\098\101\114'and a3.holdSeconds==a3.holdSeconds then a7=math.clamp(a3.
holdSeconds,1,5)a1.HoldDuration=a7 end return a_(a1,a2,a3)end)if a1.Parent then
pcall(function()a1.RequiresLineOfSight=a5 end)if a7 then pcall(function()if a1.
HoldDuration==a7 then a1.HoldDuration=a6 end end)end if not a4 then pcall(
function()a1.Enabled=false end)end end if not a8 then return false,tostring(a9)
end return a9,b end local function a1()if aC.forceThirdPerson then if not aP
then aP={mode=aG.CameraMode,min=aG.CameraMinZoomDistance,max=aG.
CameraMaxZoomDistance}end aG.CameraMode=Enum.CameraMode.Classic aG.
CameraMaxZoomDistance=math.max(8,aC.cameraDistance)aG.CameraMinZoomDistance=6
elseif aP then aG.CameraMinZoomDistance=0.5 aG.CameraMaxZoomDistance=aP.max aG.
CameraMinZoomDistance=aP.min aG.CameraMode=aP.mode aP=nil end end local function
a2()if aO then aO()end end local function a3(a4,a5)a2()if not a5 then return end
local a6=aB.Workspace.CurrentCamera if not a6 then return end local a7={mode=aG.
CameraMode,min=aG.CameraMinZoomDistance,max=aG.CameraMaxZoomDistance,frame=a6.
CFrame,focus=a6.Focus}local a8='\065\110\111\110\121\109\111\117\115\080\111\116\097\116\111\087\097\116\101\114\065\105\109'local a9=false aO=
function()if a9 then return end a9=true aB.RunService:UnbindFromRenderStep(a8)
pcall(function()aG.CameraMinZoomDistance=0.5 aG.CameraMaxZoomDistance=a7.max aG.
CameraMinZoomDistance=a7.min aG.CameraMode=a7.mode if a6.Parent then a6.CFrame=
a7.frame a6.Focus=a7.focus end end)aO=nil a1()end aB.RunService:
BindToRenderStep(a8,Enum.RenderPriority.Camera.Value+1,function()local b=aY(a4)
local bb=aR()if not b or not bb then return end aG.CameraMode=Enum.CameraMode.
Classic aG.CameraMaxZoomDistance=math.max(12,aC.cameraDistance)aG.
CameraMinZoomDistance=6 local bc=bb.Position-b bc=Vector3.new(bc.X,0,bc.Z)if bc.
Magnitude<0.1 then bc=Vector3.new(0,0,1)end local be=b+bc.Unit*math.min(12,aC.
cameraDistance)+Vector3.new(0,4,0)a6.CFrame=CFrame.lookAt(be,b)a6.Focus=CFrame.
new(b)end)end return{actor=aR,goTo=aX,approach=aZ,trigger=a0,promptPosition=aY,
stop=aU,waitFor=aV,stats=aQ,aim=a3,clearAim=a2,updateCamera=a1,close=function()
aU()aC.forceThirdPerson=false a1()end}end return aA end)()local aB=(function()
local aB={}function aB.create(aC,aD,aE,aF,aG,aH,aI)local aJ=aH and aH.typeOf or
typeof local aL=aC['\083\104\097\114\101\100\046\080\111\116\097\116\111\080\105\108\101\083\104\097\114\101\100']or{}local aM=aC[
'\077\111\100\117\108\101\115\046\082\101\115\111\117\114\099\101\115\046\080\097\099\107\101\116\115']or{}local aN=aD.Workspace local aO={
'\071\101\116\083\108\111\116\080\111\115\105\116\105\111\110','\071\101\116\082\111\116\097\116\105\111\110','\071\101\116\075\105\110\100','\071\101\116\080\111\116\097\116\111\083\108\111\116','\071\101\116\080\111\116\097\116\111\073\110\083\108\111\116',
'\073\115\080\117\109\112\107\105\110','\073\115\068\105\097\109\111\110\100'}local aP,aQ,aR={},{},{}local aS=setmetatable({},{__mode=
'\107'})local aT=nil local aU={}local aV=setmetatable({},{__mode='\107'})local aW=nil
local aX=-math.huge local aY=false local aZ=0 local a_=false local a0={}local a1
=nil local a2=0 local a3={}local a4=nil local a5,a6,a7=nil,nil,nil local a8=0
local a9=nil local b={slot='\112\101\110\100\105\110\103\032\115\112\097\116\105\097\108\032\105\110\100\101\120',kind=
'\112\101\110\100\105\110\103\032\099\097\112\116\117\114\101\100\032\097\114\103\117\109\101\110\116\115',generation=0,mapped=0,parts=0,syncRequests=0,
contracts={},scores={},upvalues=false}for bb,bc in ipairs(aO)do aP[bc]=aL[bc]aQ[
bc]={}end local function bb(bc)return type(bc)=='\110\117\109\098\101\114'and bc%1==0 and bc>=1
and bc<=(aL.SLOT_COUNT or 30009)end local function bc(be,bf,bg)local bh=aJ(be)if
bh=='\086\101\099\116\111\114\051'then return be end if bh=='\067\070\114\097\109\101'then return be.Position end if
type(be)=='\116\097\098\108\101'and aJ(be.Position)=='\086\101\099\116\111\114\051'then return be.Position end if
type(be)=='\110\117\109\098\101\114'and type(bf)=='\110\117\109\098\101\114'and type(bg)=='\110\117\109\098\101\114'then return
Vector3.new(be,bf,bg)end return nil end local function be(bf)if type(bf)==
'\116\097\098\108\101'then bf=bf.Name or bf.Id end if type(bf)=='\110\117\109\098\101\114'then return({'\078\111\114\109\097\108',
'\071\111\108\100\101\110','\068\105\097\109\111\110\100','\082\097\105\110\098\111\119','\075\101\121','\067\104\097\114\114\101\100'})[bf]end if type(bf)=='\115\116\114\105\110\103'then
for bg,bh in ipairs({'\078\111\114\109\097\108','\071\111\108\100\101\110','\068\105\097\109\111\110\100','\082\097\105\110\098\111\119','\075\101\121','\067\104\097\114\114\101\100'})do
if string.lower(bf)==string.lower(bh)then return bh end end end return nil end
local function bf(bg)local bh=aJ(bg)if type(bg)=='\110\117\109\098\101\114'or type(bg)=='\115\116\114\105\110\103'
then return bg end local bi=bc(bg)if bi then return{type=bh,x=bi.X,y=bi.Y,z=bi.Z
}end return{type=bh}end local function bg(bh)local bi=aQ[bh]if#bi<3 then return
nil end local bj,bk=nil,0 for bl=1,bi[1].args.n do local bm={}local bn=true for
bo,bp in ipairs(bi)do local bq=bp.args[bl]if not bb(bq)then bn=false break end
bm[bq]=true end local bo=0 for bp in pairs(bm)do bo+=1 end if bn and bo>bk then
bj,bk=bl,bo end end if not bj or bk<2 then return nil end local bl=table.clone(
bi[#bi].args)local bm=aP[bh]aR[bh]=function(bn)local bo=table.clone(bl)bo[bj]=bn
return pcall(bm,table.unpack(bo,1,bo.n))end local bn={index_argument=bj,samples=
#bi,arguments={}}for bo=1,bl.n do bn.arguments[bo]=bf(bl[bo])end bn.result=bf(bi
[#bi].result[1])b.contracts[bh]=bn if bh=='\071\101\116\075\105\110\100'then b.kind=
'\099\097\112\116\117\114\101\100\032\099\104\097\110\103\105\110\103\032\115\108\111\116\032\097\114\103\117\109\101\110\116'end return bj end a4=aF.create(aL,aO,function(
bh,bi,bj)if a_ then return true end for bk=1,bi.n do local bl=bi[bk]if type(bl)
=='\116\097\098\108\101'and(rawget(bl,'\080\111\116\097\116\111\083\108\111\116\115')~=nil or type(rawget(bl,'\083\101\101\100'))=='\110\117\109\098\101\114'
or rawget(bl,'\075\101\121\080\111\116\097\116\111\073\100')~=nil)then a0[bl]=true end end if bh=='\071\101\116\080\111\116\097\116\111\083\108\111\116'
and bb(bj[1])then local bk=aN:FindFirstChild('\080\111\116\097\116\111\080\105\108\101')for bl=1,bi.n do local
bm=bi[bl]if aJ(bm)=='\073\110\115\116\097\110\099\101'and bm:IsA('\066\097\115\101\080\097\114\116')and bk and bm:
IsDescendantOf(bk)then aS[bm]=bj[1]end end end local bk=aQ[bh]if#bk<16 then
table.insert(bk,{args=table.clone(bi),result=table.clone(bj)})end return bg(bh)
~=nil or#bk>=16 end)b.observer=a4.stats local bh=aC['\083\104\097\114\101\100\046\070\105\114\101\083\104\097\114\101\100']or{}
local bi=bh.GetHeat local bj=nil local bk=nil if type(bi)=='\102\117\110\099\116\105\111\110'then bk=
function(bl)bj=bl return bi(bl)end pcall(function()bh.GetHeat=bk end)end local
bl=0 local bm={}local function bn()if bj~=nil and type(bi)=='\102\117\110\099\116\105\111\110'then local
bo,bp=pcall(bi,bj)if bo and type(bp)=='\110\117\109\098\101\114'and bp>=0 and bp<=1 then local bq=
false if type(bh.IsFlowing)=='\102\117\110\099\116\105\111\110'then local br,bs=pcall(bh.IsFlowing,bj)bq
=br and bs==true end return bp*100,bq,'\099\097\112\116\117\114\101\100\032\110\097\116\105\118\101\032\070\105\114\101\083\104\097\114\101\100\032\105\110\112\117\116'end end
if os.clock()>=bl then bl=os.clock()+5 bm={}local bo=aN:FindFirstChild('\077\097\112')for
bp,bq in ipairs({'\070\105\114\101','\087\097\116\101\114'})do local br=bo and bo:FindFirstChild(bq)if br
then table.insert(bm,br)for bs,bt in ipairs(br:GetDescendants())do table.insert(
bm,bt)end end end end local bo=false for bp,bq in ipairs(bm)do if bq.Parent then
bo=bo or bq:GetAttribute('\070\108\111\119\105\110\103')==true local br=bq:GetAttribute('\072\101\097\116')if
type(br)=='\110\117\109\098\101\114'and br>=0 and br<=1 then return br*100,bo,
'\114\101\112\108\105\099\097\116\101\100\032\072\101\097\116\032\097\116\116\114\105\098\117\116\101'end end end return nil,bo,'\097\108\097\114\109\032\111\110\108\121'end local
function bo()if b.syncRequests>=2 or os.clock()-aX<10 then return false end
local bp=aM.PotatoPileRequest if not bp or type(bp.Fire)~='\102\117\110\099\116\105\111\110'then return
false end aX=os.clock()b.syncRequests+=1 return pcall(bp.Fire,bp)end local
function bp()if aH and aH.transforms then return aH.transforms end local bq={{
name='\119\111\114\108\100',apply=function(bq)return bq end}}local br=aN:FindFirstChild('\077\097\112')
local bs=br and br:FindFirstChild('\080\111\116\097\116\111\080\105\108\101')if bs and bs:IsA('\066\097\115\101\080\097\114\116')then
local bt=bs.CFrame table.insert(bq,{name='\109\097\114\107\101\114\045\108\111\099\097\108',apply=function(bu)return
bt:PointToWorldSpace(bu)end})if type(aL.GetPileCFrame)=='\102\117\110\099\116\105\111\110'then local bu,
bv=pcall(aL.GetPileCFrame,bs)if bu and aJ(bv)=='\067\070\114\097\109\101'and bv~=bt then table.
insert(bq,{name='\112\105\108\101\045\108\111\099\097\108',apply=function(bw)return bv:PointToWorldSpace(bw)
end})end end end return bq end local function bq()local br=aN:FindFirstChild(
'\080\111\116\097\116\111\080\105\108\101')if aI and br then if a7~=br then a5=nil a6=nil a7=br a8=0 a9=nil
end if not a5 and os.clock()>=a8 then a8=os.clock()+5 local bs a5,a6,bs=aI.
discover(aC['\067\111\110\116\114\111\108\108\101\114\115\046\080\111\116\097\116\111\080\105\108\101\067\111\110\116\114\111\108\108\101\114']or{},br,aH and aH.nativeOptions)b
.upvalues=bs.api b.native_discovery=bs b.native_map=a5~=nil if a6 then a0[a6]=
true end if a5 then aE('\077\097\112\097\032\110\097\116\105\118\111\032\100\101\032\098\097\116\097\116\097\115\032\105\100\101\110\116\105\102\105\099\097\100\111\046')end end if a5 then
b.slot='\110\097\116\105\118\101\032\112\097\114\116\045\116\111\045\073\068\032\109\097\112'return true end end return false end local
function br(bs)local bt=aN:FindFirstChild('\080\111\116\097\116\111\080\105\108\101')if bq()then return true
end if aW==bt and aT then return true end if aY or os.clock()<aZ then return
false,'\080\114\101\112\097\114\097\110\100\111\032\111\115\032\105\110\100\105\099\101\115\032\100\097\032\112\105\108\104\097\046'end if not aR.GetSlotPosition then bo()aZ
=os.clock()+1 return false,
'\065\103\117\097\114\100\097\110\100\111\032\111\115\032\097\114\103\117\109\101\110\116\111\115\032\100\101\032\112\111\115\105\099\097\111\032\117\115\097\100\111\115\032\112\101\108\111\032\106\111\103\111\046'end if not bt then return
false,'\080\105\108\104\097\032\105\110\100\105\115\112\111\110\105\118\101\108\046'end aY=true local bu,bv=pcall(function()local bu={}
local bv=aG.new(0.09)for bw,bx in ipairs(bt:GetChildren())do if bx:IsA(
'\066\097\115\101\080\097\114\116')then table.insert(bu,bx)bv.add(bx.Position,bx)end end b.parts=#bu
local bw=bp()local bx,by,bz={},{},{}for bA=1,#bw do bx[bA]={}by[bA]=0 end local
bA=os.clock()+0.003 for bB=1,(aL.SLOT_COUNT or 30009)do if not bs()or a_ then
error('\099\097\110\099\101\108\097\100\111')end local bC,bD,bE,bF=aR.GetSlotPosition(bB)local bG=bC and
bc(bD,bE,bF)if bG then bz[bB]=bG for bH,bI in ipairs(bw)do local bJ=bI.apply(bG)
local bK=bv.find(bJ)if bK and bx[bH][bK]==nil then bx[bH][bK]=bB by[bH]+=1 end
end end if os.clock()>bA then aD.RunService.Heartbeat:Wait()bA=os.clock()+0.003
end end local bB,bC=1,0 for bD,bE in ipairs(by)do b.scores[bw[bD].name]=bE if bE
>bC then bB,bC=bD,bE end end if#bu==0 or bC<math.max(1,math.ceil(#bu*0.7))then b
.slot='\103\101\111\109\101\116\114\121\032\109\105\115\109\097\116\099\104'b.position_samples={}for bD,bE in pairs(bz)do table.
insert(b.position_samples,{slot=bD,x=bE.X,y=bE.Y,z=bE.Z})if#b.position_samples==
4 then break end end error('\080\111\115\105\099\111\101\115\032\110\097\111\032\099\111\105\110\099\105\100\101\109\032\099\111\109\032\097\032\112\105\108\104\097\058\032'..bC..'\047'..#bu)
end local bD=bw[bB]aT=aG.new(0.09)aU={}for bE,bF in pairs(bz)do local bG=bD.
apply(bF)aT.add(bG,bE)aU[bE]=bG end for bE,bF in pairs(bx[bB])do aS[bE]=bF aV[bE
]=bE.Position end aW=bt b.mapped=bC b.slot='\115\112\097\116\105\097\108\032\047\032'..bD.name b.generation+=1
aE('\073\110\100\105\099\101\115\032\099\111\110\102\105\114\109\097\100\111\115\032\112\111\114\032\103\101\111\109\101\116\114\105\097\058\032'..bC..'\047'..#bu..'\046')end)aY=false aZ=os.
clock()+(bu and 0 or 5)return bu,bu and nil or tostring(bv)end local function bs
(bt)if not bt or not bt.Parent then return nil end local bu=aV[bt]local bv=bt.
Position if aS[bt]and bu and bu.X==bv.X and bu.Y==bv.Y and bu.Z==bv.Z then
return aS[bt]end if aT then local bw=aT.find(bv)if bw then aS[bt]=bw aV[bt]=bv
return bw end end return nil end local function bt(bu)if not aR.GetPotatoInSlot
then return nil end local bv,bw=aR.GetPotatoInSlot(bu)if not bv or not bb(bw)
then return nil end return bw end local bu='\103\101\111\109\101\116\114\121'local bv={geometry=0,
permuted=0}local bw=setmetatable({},{__mode='\107'})local function bx(by,bz)if not
bz or not by.CFrame or not aR.GetRotation then return nil end local bA,bB=aR.
GetRotation(bz)if not bA or aJ(bB)~='\067\070\114\097\109\101'then return nil end local bC={by.
CFrame:GetComponents()}local bD={bB:GetComponents()}local bE=0 for bF=4,12 do bE
+=math.abs(bC[bF]-bD[bF])end return bE end local function by(bz)if a5 then
return aI.id(a5,bz,a7,aJ)end local bA=bs(bz)if not bA then return nil end local
bB=bw[bz]if bB and bB.frame==bz.CFrame then return bB.id end local bC=bt(bA)if
bz.CFrame and bC and bC~=bA then local bD,bE=bx(bz,bA),bx(bz,bC)if bD and bE
then local bF=nil if bD<0.02 and bE>0.1 then bF=bA elseif bE<0.02 and bD>0.1
then bF=bC end if bF then bw[bz]={frame=bz.CFrame,id=bF}b.rotation_matches=(b.
rotation_matches or 0)+1 return bF end end end if bu=='\112\101\114\109\117\116\101\100'then return bC
end return bA end local function bz(bA,bB)if a5 then return nil end local bC=bs(
bA)local bD=bC and(bB==bC and bt(bC)or bC)return bD~=bB and bD or nil end local
function bA(bB,bC,bD)local bE=bD or bs(bB)if not bE then return end local bF=bC
==bE and'\103\101\111\109\101\116\114\121'or'\112\101\114\109\117\116\101\100'bv[bF]+=1 if bv[bF]>=3 and bv[bF]>bv[bu]then bu=bF
end b.identity={mode=bu,confirmed_geometry=bv.geometry,confirmed_permuted=bv.
permuted}end local function bB(bC)return bb(bC)end local function bC(bD,bE)bE=bE
or by(bD)if not bE then return nil,bD and bD.Name=='\080\117\109\112\107\105\110'or false,false end
local bF,bG,bH=nil,bD and bD.Name=='\080\117\109\112\107\105\110'or false,false if aR.GetKind then
local bI,bJ=aR.GetKind(bE)if bI then bF=be(bJ)end elseif a6 and type(aP.GetKind)
=='\102\117\110\099\116\105\111\110'then local bI,bJ=pcall(aP.GetKind,a6,bE)if bI then bF=be(bJ)end end
if aR.IsPumpkin then local bI,bJ=aR.IsPumpkin(bE)bG=bG or bI and bJ==true end if
aR.IsDiamond then local bI,bJ=aR.IsDiamond(bE)bH=bI and bJ==true end if a6 and
not aR.IsPumpkin and type(aP.IsPumpkin)=='\102\117\110\099\116\105\111\110'then local bI,bJ=pcall(aP.
IsPumpkin,a6,bE)bG=bG or bI and bJ==true end if a6 and not aR.IsDiamond and
type(aP.IsDiamond)=='\102\117\110\099\116\105\111\110'then local bI,bJ=pcall(aP.IsDiamond,a6,bE)bH=bI
and bJ==true end return bF,bG,bH end local function bD(bE,bF)if not a6 or type(
aP.GetPotatoSlot)~='\102\117\110\099\116\105\111\110'or type(aL.IsExposed)~='\102\117\110\099\116\105\111\110'then return nil
end local bG,bH=pcall(aP.GetPotatoSlot,a6,bF)if not bG or not bb(bH)then return
nil end local bI,bJ=pcall(aL.IsExposed,a6,bH)if bI and type(bJ)=='\098\111\111\108\101\097\110'then
return bJ end return nil end local function bE(bF)local bG={}if not aT or not aR
.GetPotatoSlot or not aR.GetPotatoInSlot then return bG end local bH=os.clock()+
0.002 for bI=1,(aL.SLOT_COUNT or 30009)do if a_ or not bF()then return{}end
local bJ=bt(bI)if bJ then local bK,bL,bM=bC(nil,bJ)if(bL or bM)and aU[bI]then
table.insert(bG,{slot=bJ,position=aU[bI],kind=bK,pumpkin=bL,gem=bM,logical=true}
)end end if os.clock()>bH then aD.RunService.Heartbeat:Wait()bH=os.clock()+0.002
end end return bG end local bF=aM.PotatoKeyMoved and aM.PotatoKeyMoved.
OnClientEvent if bF and type(bF.Connect)=='\102\117\110\099\116\105\111\110'then local bG,bH=pcall(bF.
Connect,bF,function(bG)if bG==0 or bb(bG)then if a1~=bG then a2+=1 end a1=bG end
end)if bG and bH then table.insert(a3,bH)end end local bG=aM.KeyRevealed and aM.
KeyRevealed.OnClientEvent if bG and type(bG.Connect)=='\102\117\110\099\116\105\111\110'then local bH,bI
=pcall(bG.Connect,bG,function()a2+=1 end)if bH and bI then table.insert(a3,bI)
end end local function bH()local bI=a1 local bJ=bI~=nil and'\080\111\116\097\116\111\075\101\121\077\111\118\101\100'or
nil local bK=a6 and rawget(a6,'\075\101\121\080\111\116\097\116\111\073\100')if(bI==nil or bI==0)and bb(bK)then
bI=bK bJ='\110\097\116\105\118\101\032\099\111\110\116\114\111\108\108\101\114\032\075\101\121\080\111\116\097\116\111\073\100'end if bI==nil then for bL in pairs(a0)
do local bM=rawget(bL,'\075\101\121\080\111\116\097\116\111\073\100')if bb(bM)then bI=bM bJ=
'\099\097\112\116\117\114\101\100\032\110\097\116\105\118\101\032\075\101\121\080\111\116\097\116\111\073\100'break end end end b.key={known=bb(bI),source=bJ,id=
bb(bI)and bI or nil}if not bb(bI)then b.key.reason=
'\099\108\105\101\110\116\032\104\097\115\032\110\111\116\032\100\105\115\099\108\111\115\101\100\032\097\032\118\097\108\105\100\032\107\101\121\032\073\068'return nil end if a5 then for bL,bM in
pairs(a5)do if bM==bI and aI.id(a5,bL,a7,aJ)==bI then return{slot=bI,part=bL,
position=bL.Position,logical=true,key=true,source=bJ,revision=a2}end end if a6
and type(aP.GetPotatoSlot)=='\102\117\110\099\116\105\111\110'and type(aP.GetSlotPosition)=='\102\117\110\099\116\105\111\110'
then if not a9 then for bL,bM in ipairs(bp())do local bN,bO=0,0 for bP,bQ in
pairs(a5)do if aI.id(a5,bP,a7,aJ)then bO+=1 local bR,bS=pcall(aP.GetPotatoSlot,
a6,bQ)local bT,bU=pcall(aP.GetSlotPosition,a6,bR and bS or 0)local bV=bT and bc(
bU)if bV then local bW=bM.apply(bV)local bX=bP.Position if math.abs(bW.X-bX.X)+
math.abs(bW.Y-bX.Y)+math.abs(bW.Z-bX.Z)<0.15 then bN+=1 end end if bO>=8 or bN>=
3 then break end end end if bN>=3 then a9=bM b.native_key_transform=bM.name
break end end end if a9 then local bL,bM=pcall(aP.GetPotatoSlot,a6,bI)if bL and
bb(bM)then local bN,bO=pcall(aP.GetSlotPosition,a6,bM)local bP=bN and bc(bO)if
bP then return{slot=bI,position=a9.apply(bP),logical=true,key=true,source=bJ,
revision=a2}end end end end end if not aR.GetPotatoSlot then b.key.reason=
'\110\097\116\105\118\101\032\115\108\111\116\032\109\097\112\112\105\110\103\032\117\110\097\118\097\105\108\097\098\108\101'return nil end local bL,bM=aR.GetPotatoSlot(bI)
local bN=bL and bb(bM)and aU[bM]or nil if not bN then b.key.reason=
'\107\101\121\032\112\111\115\105\116\105\111\110\032\117\110\097\118\097\105\108\097\098\108\101'return nil end return{slot=bI,position=bN,logical=true
,key=true,source=bJ,revision=a2}end local function bI()a_=true a4.close()for bJ,
bK in ipairs(a3)do pcall(function()bK:Disconnect()end)end if bk then pcall(
function()if bh.GetHeat==bk then bh.GetHeat=bi end end)end end return{slot=by,
alternate=bz,confirm=bA,physicalSlot=bs,live=bB,specialTargets=bE,keyTarget=bH,
exposed=bD,kind=bC,heat=bn,prepare=br,discover=bq,requestSync=bo,stats=b,close=
bI,ready=function()return aR.GetKind~=nil and aR.GetSlotPosition~=nil and aR.
GetPotatoInSlot~=nil end,refresh=function()aZ=0 end}end return aB end)()local aC
=(function()local aC={}function aC.create(aD,aE)local aF=aD.Players.LocalPlayer:
WaitForChild('\080\108\097\121\101\114\071\117\105')local aG=type(firesignal)=='\102\117\110\099\116\105\111\110'and firesignal or
nil local aH=type(getconnections)=='\102\117\110\099\116\105\111\110'and getconnections or nil local
function aI(aJ)local aL=aJ while aL and aL~=aF do if aL:IsA('\071\117\105\079\098\106\101\099\116')and not
aL.Visible then return false end if aL:IsA('\083\099\114\101\101\110\071\117\105')and not aL.Enabled then
return false end aL=aL.Parent end return aL==aF end local function aJ(aL)local
aM={}if aL:IsA('\084\101\120\116\076\097\098\101\108')or aL:IsA('\084\101\120\116\066\117\116\116\111\110')or aL:IsA('\084\101\120\116\066\111\120')then table
.insert(aM,aL.Text)end for aN,aO in ipairs(aL:GetDescendants())do if aO:IsA(
'\084\101\120\116\076\097\098\101\108')or aO:IsA('\084\101\120\116\066\117\116\116\111\110')then table.insert(aM,aO.Text)end end return
table.concat(aM,'\032'):gsub('\060\046\045\062','')end local function aL(aM)if type(aM)~=
'\115\116\114\105\110\103'then return nil end local aN=string.upper(aM)if aN:find('\082\036',1,true)or
aN:find('\082\079\066\085\088',1,true)then return nil end local aO=aM:match(
'\037\036\037\115\042\091\037\100\093\091\037\100\037\046\044\093\042\091\075\107\077\109\066\098\084\116\093\063')return aO and aE.parseAmount(aO)or nil end local
function aM(aN,aO)if not aN or not aN:IsA('\071\117\105\066\117\116\116\111\110')or not aO and(not aI(aN)or
not aN.Active)then return false,'\098\111\116\097\111\032\105\110\100\105\115\112\111\110\105\118\101\108'end if not aG then return
false,'\102\105\114\101\115\105\103\110\097\108\032\110\097\111\032\100\105\115\112\111\110\105\098\105\108\105\122\097\100\111\032\112\101\108\111\032\101\120\101\099\117\116\111\114'end local aP=aN.Activated if
aH then local aQ,aR=pcall(aH,aP)if aQ and#aR==0 then local aS,aT=pcall(aH,aN.
MouseButton1Click)if aS and#aT>0 then aP=aN.MouseButton1Click end end end local
aQ,aR=pcall(aG,aP)return aQ,aQ and nil or tostring(aR)end local function aN(aO)
local aP=aF:FindFirstChild('\083\116\111\114\101\086\105\101\119')if not aP then return nil,
'\106\097\110\101\108\097\032\083\116\111\114\101\086\105\101\119\032\097\117\115\101\110\116\101'end local aQ={}for aR,aS in ipairs(aP:GetDescendants()
)do if aS:IsA('\071\117\105\066\117\116\116\111\110')and aI(aS)and aS.Active then local aT=aJ(aS)local aU=
string.upper(aT..'\032'..aS.Name)local aV=aU:find('\083\079\076\068',1,true)or aU:find('\079\087\078\069\068',
1,true)or aU:find('\076\079\067\075\069\068',1,true)or aU:find('\082\079\066\085\088',1,true)or aU:find('\082\036',1,
true)or aU:find('\080\069\082\077\065\078\069\078\084',1,true)if not aV and(aU:find('\066\085\089',1,true)or aU:
find('\080\085\082\067\072\065\083\069',1,true)or aU:find('\067\079\077\080\082\065\082',1,true))then local aW=aT local aX=
aL(aW)if not aX and aS.Parent then aW=aJ(aS.Parent)aX=aL(aW)end if not aX and aS
.Parent then for aY,aZ in ipairs(aS.Parent:GetChildren())do if aZ:IsA(
'\084\101\120\116\076\097\098\101\108')then local a_=aL(aZ.Text)if a_ and math.abs(a_-aO)<0.005 then aX=a_
break end end end end if aX and math.abs(aX-aO)<0.005 then table.insert(aQ,aS)
end end end end if#aQ~=1 then return nil,
'\099\111\109\112\114\097\032\115\101\109\032\098\111\116\097\111\032\117\110\105\099\111\032\099\111\109\032\111\032\112\114\101\099\111\032\101\109\032\100\105\110\104\101\105\114\111\032\101\115\112\101\114\097\100\111'end return aQ[1]end
local function aO()local aP={}for aQ,aR in ipairs({'\083\116\111\114\101\086\105\101\119','\084\111\111\108\085\112\103\114\097\100\101\115'})
do local aS=aF:FindFirstChild(aR)if aS then for aT,aU in ipairs(aS:
GetDescendants())do if aU:IsA('\071\117\105\066\117\116\116\111\110')and aI(aU)and#aP<40 then table.insert(
aP,{path=aU:GetFullName(),text=aJ(aU),active=aU.Active})end end end end return
aP end return{available=aG~=nil,visible=aI,texts=aJ,cash=aL,activate=aM,
buyButton=aN,diagnostic=aO}end return aC end)()local aD=(function()local aD={}
function aD.create(aE,aF,aG,aH,aI,aJ,aL,aM,aN,aO,aP,aQ,aR)local aS=aE.Players.
LocalPlayer local aT=nil local aU=aS:WaitForChild('\080\108\097\121\101\114\071\117\105')local aV=aE.
Workspace local aW=aF['\077\111\100\117\108\101\115\046\082\101\115\111\117\114\099\101\115\046\080\097\099\107\101\116\115']or{}local aX=aP.create(aW,aF[
'\077\111\100\105\102\105\101\100\080\097\099\107\097\103\101\115\046\080\097\099\107\101\116\046\095\084\121\112\101\115'])local aY,aZ=false,false local a_,a0=nil,nil
local a1,a2,a3=0,0,0 local a4={}local a5={}local a6=aO.upgradeGuard()local a7=
false local a8=0 local a9=0 local b,bb=0,0 local bc={}local be=false local bf={}
local bg=nil local bh=false local bi=nil local bj=0.1 local bk=setmetatable({},{
__mode='\107'})local bl=nil local bm=0 local bn=aF['\067\111\110\116\114\111\108\108\101\114\115\046\080\101\101\108\105\110\103\067\111\110\116\114\111\108\108\101\114']
or{}local bo=aF['\067\111\110\116\114\111\108\108\101\114\115\046\067\117\116\116\105\110\103\067\111\110\116\114\111\108\108\101\114']or{}local bp=aF[
'\067\111\110\116\114\111\108\108\101\114\115\046\080\111\116\097\116\111\080\105\108\101\067\111\110\116\114\111\108\108\101\114']or{}local bq=aF[
'\067\111\110\116\114\111\108\108\101\114\115\046\084\111\111\108\069\113\117\105\112\067\111\110\116\114\111\108\108\101\114']or{}local br=aF[
'\067\111\110\116\114\111\108\108\101\114\115\046\083\116\111\114\101\086\105\101\119\067\111\110\116\114\111\108\108\101\114']or{}local bs=aF[
'\067\111\110\116\114\111\108\108\101\114\115\046\084\111\111\108\085\112\103\114\097\100\101\067\111\110\116\114\111\108\108\101\114']or{}local bt=aF['\083\104\097\114\101\100\046\080\108\097\121\101\114\083\116\097\116\101\083\104\097\114\101\100']
or{}local bu=aF['\083\104\097\114\101\100\046\067\117\116\084\111\111\108\083\104\097\114\101\100']or{}local bv=aF[
'\083\104\097\114\101\100\046\067\097\114\114\121\085\112\103\114\097\100\101\083\104\097\114\101\100']or{}local bw={}local bx=false local by=nil local bz=
setmetatable({},{__mode='\107'})local bA=setmetatable({},{__mode='\107'})local bB=0
local bC,bD=nil,0 local bE,bF,bG={},1,0 local bH=false local bI=false local bJ,
bK,bL=0,0,0 local bM=0 local bN=0.04 local bO,bP,bQ=nil,0,nil local bR=false
local bS,bT=0,0 local bU={collected=0,pumpkins=0,gems=0,sold=0,sales=0,throws=0,
delivered=0,cuts=0,cooled=0,purchases=0}local bV={}local bW=nil local bX={}local
bY={}local bZ=nil local b_=nil local b0,b1,b2=false,false,nil local b3,b4=0,
false local b5=false local b6=false local b7=false local b8=nil local b9={
entered=0,seconds=0,completed=false}local c=nil local ca=0 local cb={attempts=0,
confirmed=false}local cc=aO.keyProbeGuard()local cd={remaining=0,source=
'\117\110\097\118\097\105\108\097\098\108\101'}local ce=0 local cf=0 local cg=aO.placementTiming(aF[
'\083\104\097\114\101\100\046\080\111\116\097\116\111\084\097\098\108\101\083\104\097\114\101\100'])local ch=false local ci={}local cj=aR.new()local ck,
cl=0,nil local cm=nil local cn={opens=0,closed_seconds=0}local co,cp=false,false
local cq=nil local cr,cs={},0 local ct=0 local cu={}local cv,cw,cx,cy=os.clock()
,nil,0,0 local function cz(cA)return cA.part and cA.part.Position or cA.position
end local function cA(cB)return cB and(cB.part and cB.part.Parent~=nil and cB.
part.Transparency<0.99 or cB.logical and aJ.live(cB.slot))end local function cB(
cC,cD)for cE,cF in ipairs(cD)do cC=cC and cC:FindFirstChild(cF)end return cC end
local function cC(cD,cE,...)if type(cD[cE])~='\102\117\110\099\116\105\111\110'then return false,nil end
return pcall(cD[cE],...)end local function cD()local cE,cF=cC(bt,
'\084\114\121\071\101\116\080\108\097\121\101\114\083\116\097\116\101',aS)if cE and type(cF)=='\116\097\098\108\101'and(cF.Cash~=nil or cF.
CarryLevel~=nil)then return cF end cE,cF=cC(bt,'\084\114\121\071\101\116\080\108\097\121\101\114\083\116\097\116\101',aS.UserId)if
cE and type(cF)=='\116\097\098\108\101'and(cF.Cash~=nil or cF.CarryLevel~=nil)then return cF
end return nil end local function cE()local cF=cD()if cF and type(cF.Cash)==
'\110\117\109\098\101\114'and cF.Cash==cF.Cash then return cF.Cash end local cG=cB(aU,{'\067\097\115\104',
'\067\111\117\110\116\101\114','\086\097\108\117\101'})return cG and aG.parseAmount(cG.Text)or nil end local
function cF()local cG=cB(aU,{'\066\097\103','\067\111\117\110\116\101\114','\086\097\108\117\101'})local cH,cI=aG.
parseCapacity(cG and cG.Text)local cJ=cD()cH,bR=aG.bagCount(cJ,cG and cG.Text)if
cJ then if type(cJ.Potatoes)=='\110\117\109\098\101\114'and cJ.Potatoes>=0 and cJ.Potatoes%1==0
then cH=cJ.Potatoes bR=true end local cK,cL=cC(bv,'\072\097\115\073\110\102\105\110\105\116\101\083\116\111\114\097\103\101',cJ)if cK
and cL==true then cI=math.huge end if not cI and type(cJ.CarryLevel)=='\110\117\109\098\101\114'
then local cM=bv.Levels and bv.Levels[cJ.CarryLevel]if type(cM)=='\116\097\098\108\101'and
type(cM.Capacity)=='\110\117\109\098\101\114'then cI=cM.Capacity end end end if aH.infiniteBag and
not aH.opAutoFinish then cI=math.huge end return cH,cI end local function cG()
local cH=aU:FindFirstChild('\081\117\101\115\116\067\097\114\100')local cI=cH and cB(cH,{'\080\105\108\101\072\111\108\100\101\114',
'\072\101\097\116','\076\097\098\101\108'})if not cI then return nil end local cJ=string.upper(cI.Text)
return cJ:find('\067\072\065\082\082\073\078\071',1,true)~=nil or cJ:find('\067\079\079\076\032\073\084',1,true)~=nil or cJ:
find('\066\085\082\078\073\078\071',1,true)~=nil end local function cH()if type(bn.IsPeeling)==
'\098\111\111\108\101\097\110'then return bn.IsPeeling end local cI,cJ=cC(bo,'\071\101\116\080\111\116\097\116\111')if cI and cJ
~=nil and cJ~=false then return true end local cK=aU:FindFirstChild('\080\101\101\108\105\110\103')
local cL=cK and cK:FindFirstChild('\067\097\110\099\101\108',true)return cL~=nil and aL.visible(cL
)and cL.AbsoluteSize.X>0 end bW=aN.create(aH,{clock=os.clock,allowed=function()
return not cp and co and aG.effective(aH,'\097\117\116\111\067\117\116')end,schedule=function(cI,cJ)
task.delay(cI,cJ)end,finish=function()if not cH()then return false,
'\065\032\109\101\115\097\032\110\097\111\032\101\115\116\097\032\097\116\105\118\097\046'end if not aW.PeelingFinished or type(aW.PeelingFinished
.Fire)~='\102\117\110\099\116\105\111\110'then return false,'\067\111\110\099\108\117\115\097\111\032\100\101\032\099\111\114\116\101\032\105\110\100\105\115\112\111\110\105\118\101\108\046'end return
pcall(aW.PeelingFinished.Fire,aW.PeelingFinished)end,native=function(cI)local cJ
=cC(bo,'\083\101\116\065\117\116\111',cI)local cK=cC(bo,'\083\101\116\072\101\108\100',cI)if cI and not cJ and not cK then
error('\067\111\110\116\114\111\108\097\100\111\114\032\100\101\032\109\111\118\105\109\101\110\116\111\032\100\101\032\099\111\114\116\101\032\105\110\100\105\115\112\111\110\105\118\101\108\046')end end})local function
cI()cj.cancel()cC(bq,'\083\101\116\085\115\105\110\103',false)co=false cq=nil if bW then bW.pause()end
cC(bo,'\083\101\116\072\101\108\100',false)cC(bo,'\083\101\116\065\117\116\111',false)a7=false cC(bp,'\083\101\116\085\115\101\072\101\108\100',false)if
aX.matches('\084\111\111\108\085\115\105\110\103',{'\066\111\111\108\101\097\110'})then aX.fire('\084\111\111\108\085\115\105\110\103',false)end end local
function cJ()cI()if cH()then if type(aW.PeelingCancel)=='\116\097\098\108\101'and type(aW.
PeelingCancel.Fire)=='\102\117\110\099\116\105\111\110'then pcall(aW.PeelingCancel.Fire,aW.PeelingCancel
)end cC(bn,'\083\116\111\112\080\101\101\108\105\110\103')end if b_ and bn.IsPeeling~=true then for cK,cL in
pairs(b_)do if cK.Parent then pcall(function()if cK:IsA('\083\099\114\101\101\110\071\117\105')then cK.
Enabled=cL else cK.Visible=cL end end)end end b_=nil end end local function cK(
cL,cM,d)local e=os.clock()+cM repeat if not d()then return false,'\099\097\110\099\101\108\097\100\111'end
if cL()then return true end aE.RunService.Heartbeat:Wait()until os.clock()>=e
return false,'\111\032\106\111\103\111\032\110\097\111\032\099\111\110\102\105\114\109\111\117\032\097\032\097\099\097\111\032\110\111\032\116\101\109\112\111\032\099\111\110\102\105\103\117\114\097\100\111'end local
function cL(cM)if cM==cq then return end local d=false if type(bq.Equip)==
'\102\117\110\099\116\105\111\110'then local e=cC(bq,'\069\113\117\105\112',cM)local f,g=cC(bq,'\071\101\116\069\113\117\105\112\112\101\100\084\111\111\108')d=e
and(not f or g==cM)end local e=aU:FindFirstChild('\072\111\116\098\097\114')local f={PotatoSucker=
'\080\048\084\052\084\048\045\051\048\048\048',Shovel='\083\104\111\118\101\108',Dynamite='\068\121\110\097\109\105\116\101',Hand='\072\097\110\100'}local g=nil for h,
i in ipairs((aF['\083\104\097\114\101\100\046\084\111\111\108\085\112\103\114\097\100\101\083\104\097\114\101\100']or{}).Tools or{})do if i.Id==cM then
g=i.Icon end end if e and not d then for h,i in ipairs(e:GetDescendants())do
local j=i.Name==cM or i:GetAttribute('\084\111\111\108\073\100')==cM if i:IsA('\071\117\105\066\117\116\116\111\110')and not
j then for k,l in ipairs(i:GetDescendants())do if l:IsA('\084\101\120\116\076\097\098\101\108')and l.Text==
f[cM]or g and(l:IsA('\073\109\097\103\101\076\097\098\101\108')or l:IsA('\073\109\097\103\101\066\117\116\116\111\110'))and l.Image==g then j=
true break end end end if i:IsA('\071\117\105\066\117\116\116\111\110')and j then d=aL.activate(i,true)if d
then break end end end end if not d and aX.matches('\084\111\111\108\069\113\117\105\112',{'\083\116\114\105\110\103'})then d
=aX.fire('\084\111\111\108\069\113\117\105\112',cM)end if d then cq=cM end end local function cM()cJ()cL(
'\072\097\110\100')end local function d()if os.clock()<bb then return be end bb=os.clock()+
0.3 local e=cD()be=e and(e.SuckerOverheated==true or e.PotatoSuckerOverheated==
true)or aS:GetAttribute('\083\117\099\107\101\114\079\118\101\114\104\101\097\116\101\100')==true if os.clock()>=b then bc={}b=
os.clock()+5 for f,g in ipairs(aU:GetChildren())do if g.Name~=
'\065\110\111\110\121\109\111\117\115\080\111\116\097\116\111\072\117\098'then for h,i in ipairs(g:GetDescendants())do if i:IsA(
'\084\101\120\116\076\097\098\101\108')or i:IsA('\084\101\120\116\066\117\116\116\111\110')then table.insert(bc,i)end end end end end if
not be then for f,g in ipairs(bc)do if g.Parent and aL.visible(g)then local h=
string.upper(g.Text)if h:find('\079\086\069\082\072\069\065\084',1,true)or h:find('\083\085\080\069\082\065\081\085\069\067',1,true)
then be=true break end end end end return be end local function e()local f=cD()
local g=aH.opAutoFinish and'\065\117\116\111'or aH.collectTool if g=='\065\117\116\111'and f and aO.
owns(f,'\080\111\116\097\116\111\083\117\099\107\101\114')then g='\080\111\116\097\116\111\083\117\099\107\101\114'end if g=='\065\117\116\111'and aH.clearPileFirst
and b5 and f and aO.owns(f,'\083\104\111\118\101\108')then g='\083\104\111\118\101\108'end if g=='\065\117\116\111'then g=f and
aO.owns(f,'\080\111\116\097\116\111\083\117\099\107\101\114')and'\080\111\116\097\116\111\083\117\099\107\101\114'or f and aO.owns(f,'\083\104\111\118\101\108')and
'\083\104\111\118\101\108'or'\072\097\110\100'end if g=='\080\111\116\097\116\111\083\117\099\107\101\114'and(d()or os.clock()<a8)then g=f and aO.
owns(f,'\083\104\111\118\101\108')and'\083\104\111\118\101\108'or'\072\097\110\100'end if g~='\072\097\110\100'and not(f and aO.owns(f,g))
then g='\072\097\110\100'end cL(g)a7=not aH.opAutoFinish and not aH.auraCollect and g==
'\080\111\116\097\116\111\083\117\099\107\101\114'and aH.rarity=='\065\110\121'and aG.effective(aH,'\097\117\116\111\070\097\114\109')cC(bp,
'\083\101\116\085\115\101\072\101\108\100',a7)end local function f()local g={}local h=cB(aV,{'\077\097\112',
'\080\101\101\108\105\110\103\077\097\099\104\105\110\101\115'})for i=1,4 do local j=h and h:FindFirstChild('\080\101\101\108\105\110\103\084\097\098\108\101'..i
)if j and(aH.tableChoice=='\078\101\097\114\101\115\116'or aH.tableChoice==j.Name)then local k=cB(j,{
'\084\097\098\101\108\084\111\112','\080\101\101\108\080\114\111\109\112\116','\080\101\101\108'})if k and k:IsA('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')then table.
insert(g,k)end end end local i=aI.actor()if i then table.sort(g,function(j,k)
local l,m=aI.promptPosition(j),aI.promptPosition(k)return(l and(l-i.Position).
Magnitude or math.huge)<(m and(m-i.Position).Magnitude or math.huge)end)end
return g end local function g()local h=cB(aV,{'\077\097\112','\080\101\101\108\105\110\103\077\097\099\104\105\110\101\115',
'\080\111\116\097\116\111\067\114\097\116\101','\080\111\116\097\116\111\065\114\101\097'})return h and tonumber(h:GetAttribute('\080\111\116\097\116\111\067\111\117\110\116'))
or 0 end local function h(i)local j=f()for k,l in ipairs(j)do if l.Enabled and
os.clock()>=(bk[l]or 0)then return l end end if i and g()>0 then for k,l in
ipairs(j)do if os.clock()>=(bk[l]or 0)then return l end end end return nil end
local function i(j,k)local l=cB(aV,{'\077\097\112','\083\116\111\114\101\073\116\101\109\115',j,k})return l and cB(l,{
'\080\114\105\099\101','\080\114\111\109\112\116\065\116\116\097\099\104\109\101\110\116','\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116'})end local function j(k,l,m,n)if os
.clock()<(a4[l]or 0)then return nil end local o=i(k,l)if not o or not o.Enabled
or string.upper(o.ActionText)~='\066\085\089'then return nil end local p=aL.cash(o.
ObjectText)if not p then return nil end return{id=l,category=k,group=m,rank=n,
prompt=o,price=p,name=l}end local function k(l,m)if type(l)~='\116\097\098\108\101'then return
false end if l[m]==true then return true end for n,o in pairs(l)do if o==m or n
==m and o~=false and o~=nil then return true end end return false end local
function l(m)local n=1 local o=aS:GetAttribute('\067\117\116\084\111\111\108\073\100')local p,q=cC(bu,
'\071\101\116\066\101\115\116\084\111\111\108',m)if p then o=type(q)=='\116\097\098\108\101'and q.Id or q end for r,s in ipairs(
bu.Tools or{})do local t,u=cC(bu,'\079\119\110\115\084\111\111\108',m,s.Id)if s.Id==o or k(m.CutTools,s.
Id)or t and u==true then n=math.max(n,r)end end return n end local function m(n,
o,p,q,r)local s=aF['\083\104\097\114\101\100\046\084\111\111\108\085\112\103\114\097\100\101\083\104\097\114\101\100']or{}if type(s.GetUpgradeCost)==
'\102\117\110\099\116\105\111\110'then local t,u=pcall(s.GetUpgradeCost,n,o,p)if t and type(u)=='\110\117\109\098\101\114'
and u>0 then return u end end local t=aF['\077\111\100\117\108\101\115\046\082\101\115\111\117\114\099\101\115\046\080\114\105\099\101\115']or{}local u,
v=cC(t,'\071\101\116',aS)if u then local w=aO.profilePrice(v,o,p,q)if w then return w end
end if r and r.Parent then return aL.cash(aL.texts(r))end return nil end local
function n(o,p,q)local r={}bf={}local s=aF['\083\104\097\114\101\100\046\084\111\111\108\085\112\103\114\097\100\101\083\104\097\114\101\100']or{}for t,
u in ipairs({'\083\104\111\118\101\108','\068\121\110\097\109\105\116\101','\080\111\116\097\116\111\083\117\099\107\101\114','\072\097\110\100','\065\117\116\111\080\101\101\108\101\114','\072\097\110\100\080\101\101\108\101\114'
,'\068\114\111\110\101','\066\111\100\121'})do for v,w in ipairs(aO.allowed[u]or{})do if aO.canUpgrade(o,u,
w,aH)and(w~='\076\117\099\107'or aO.luckAllowed(s,o))then local x=aO.level(s,o,u,w)local y=
aO.definition(s,u,w)local z=y~=nil local A=z and aO.maximum(s,y)or nil local B,C
=cC(bs,'\071\101\116\085\112\103\114\097\100\101\066\117\116\116\111\110',u,w)if not B or typeof(C)~='\073\110\115\116\097\110\099\101'or not C:IsA(
'\071\117\105\066\117\116\116\111\110')then C=nil end local D=m(o,u,w,x,C)bf[u..'\047'..w]={level=x,maximum=A,
price=D,reason=x==nil and'\108\101\118\101\108\032\117\110\097\118\097\105\108\097\098\108\101'or A==nil and'\109\097\120\105\109\117\109\032\117\110\097\118\097\105\108\097\098\108\101'or
x>=A and'\109\097\120\105\109\117\109\032\114\101\097\099\104\101\100'or D==nil and'\112\114\105\099\101\032\117\110\097\118\097\105\108\097\098\108\101'or not a6.allowed(u..
'\047'..w,x)and'\114\101\102\117\115\101\100\032\119\105\116\104\111\117\116\032\112\114\111\103\114\101\115\115'or'\101\108\105\103\105\098\108\101'}local E=C and C:
FindFirstChild('\077\097\120\101\100')if x~=nil and A~=nil and a6.allowed(u..'\047'..w,x)and x<aO.
limit(u,w,l(o),#(bu.Tools or{}),aH.worthEarlyLimit,aH.nativeWalkUpgrade)and not(
A and x>=A)and(C or aX.matches('\084\111\111\108\085\112\103\114\097\100\101\080\117\114\099\104\097\115\101',{'\083\116\114\105\110\103','\083\116\114\105\110\103'}))then
local F=u..'\047'..w if os.clock()>=(a4[F]or 0)and type(D)=='\110\117\109\098\101\114'and(q or aG.
purchaseReady(aH,p,D,x,a5[F]))then table.insert(r,{group='\117\112\103\114\097\100\101',name=F,tool=u
,upgrade=w,button=C,price=D,level=x,rank=w=='\080\111\116\097\116\111\087\111\114\116\104'and(x<aH.
worthEarlyLimit and-300 or-80)or u=='\068\121\110\097\109\105\116\101'and-200+aO.rank(u,w)or u=='\083\104\111\118\101\108'
and-150 or u=='\068\114\111\110\101'and-175 or w=='\076\117\099\107'and-50 or aO.rank(u,w)})end end end end
end table.sort(r,function(t,u)return t.rank<u.rank end)return r end local
function o(p,q,r)if not aH.buyMachines then return nil end local s=aF[
'\083\104\097\114\101\100\046\084\111\111\108\085\112\103\114\097\100\101\083\104\097\114\101\100']or{}if not aO.maxed(s,p,'\068\121\110\097\109\105\116\101')then return nil
end for t,u in ipairs({{'\080\101\101\108\105\110\103\077\097\099\104\105\110\101','\072\097\110\100\080\101\101\108\101\114','\072\097\115\072\097\110\100\080\101\101\108\101\114'},{
'\065\117\116\111\080\101\101\108\105\110\103\077\097\099\104\105\110\101','\065\117\116\111\080\101\101\108\101\114','\072\097\115\065\117\116\111\080\101\101\108\101\114'}})do if p[u[3] ]~=true then
local v=cB(aV,{'\077\097\112','\080\101\101\108\105\110\103\077\097\099\104\105\110\101\115',u[1]})local w=v and v:FindFirstChild(
'\080\114\105\099\101')local x=w and cB(w,{'\080\114\111\109\112\116\065\116\116\097\099\104\109\101\110\116','\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116'})local y=x and(
aL.cash(x.ObjectText)or aL.cash(aL.texts(w)))if x and string.upper(x.ActionText)
=='\066\085\089'and y and(r or aG.affordable(aH,q,y,'\067\097\115\104'))then return{id=u[2],name=u[2]
,group='\109\097\099\104\105\110\101',unlock=u[3],prompt=x,price=y,rank=-75}end end end return nil
end local function p()if not aH.fixMenuBlur or cH()then return end local q,r=cC(
bs,'\073\115\079\112\101\110')local s,t=cC(br,'\073\115\079\112\101\110')if not q or not s then return end for u,v
in ipairs({aE.Lighting,aV.CurrentCamera})do if v then for w,x in ipairs(v:
GetChildren())do if x:IsA('\066\108\117\114\069\102\102\101\099\116')and x.Size>0 then x.Size=0 end end end
end end local function q()local r=cE()local s=cD()if not r or not s then return
nil end local t=aF['\083\104\097\114\101\100\046\084\111\111\108\085\112\103\114\097\100\101\083\104\097\114\101\100']or{}bg=nil bh=false if aH.
opAutoFinish and aO.opBulkReady(t,s)and bX.mountainEmpty~=true then bl=nil
return nil end if not aH.opAutoFinish and not aH.teamFunding and aH.
clearPileFirst and aO.maxed(t,s,'\068\121\110\097\109\105\116\101')then local u=o(s,r,true)if not u and
s.HasAutoPeeler and aG.effective(aH,'\097\117\116\111\066\117\121\085\112\103\114\097\100\101\115')then for v,w in ipairs(n(s
,r,true))do if w.tool=='\065\117\116\111\080\101\101\108\101\114'then u=w break end end end if not u and not
aO.owns(s,'\080\111\116\097\116\111\083\117\099\107\101\114')then u=j('\084\111\111\108\115','\080\048\084\052\084\048\045\051\048\048\048','\099\111\108\108\101\099\116',1)end if not u
and not aO.owns(s,'\083\104\111\118\101\108')then u=j('\084\111\111\108\115','\083\104\111\118\101\108','\099\111\108\108\101\099\116',40)end if not u
and aO.owns(s,'\080\111\116\097\116\111\083\117\099\107\101\114')and aG.effective(aH,'\097\117\116\111\066\117\121\085\112\103\114\097\100\101\115')then for v,w
in ipairs(n(s,r,true))do if w.tool=='\080\111\116\097\116\111\083\117\099\107\101\114'and(not u or w.upgrade==
'\080\105\099\107\065\109\111\117\110\116')then u=w end end end if not u and aG.effective(aH,'\097\117\116\111\066\117\121\085\112\103\114\097\100\101\115'
)then for v,w in ipairs(n(s,r,true))do if w.tool=='\083\104\111\118\101\108'or w.tool=='\068\121\110\097\109\105\116\101'
or w.tool=='\065\117\116\111\080\101\101\108\101\114'or w.tool=='\080\111\116\097\116\111\083\117\099\107\101\114'or w.tool=='\068\114\111\110\101'or w.tool==
'\066\111\100\121'and w.upgrade=='\076\117\099\107'then u=w break end end end bg=u bl=u if u then local
v=a5[u.name]local w=aG.affordable(aH,r,u.price,'\067\097\115\104')and(not v or v.level~=u.
level or r>=v.cash)bh=not w if w then return u end end return nil end local u={}
if aG.effective(aH,'\097\117\116\111\066\117\121\085\112\103\114\097\100\101\115')then local v=n(s,r,true)local w=bf[
'\066\111\100\121\047\080\111\116\097\116\111\087\111\114\116\104']if w and(w.level==nil or w.maximum==nil or w.level<w.maximum
and w.price==nil)then bl={name='\066\111\100\121\047\080\111\116\097\116\111\087\111\114\116\104\058\032'..w.reason}return nil end for
x,y in ipairs(v)do local z=a5[y.name]if not z or z.level~=y.level or r>=z.cash
then table.insert(u,y)end end end if aG.effective(aH,'\097\117\116\111\066\117\121\084\111\111\108\115')or aY and aH
.buyAfterSell then local v=l(s)if not aH.teamFunding then for w,x in ipairs(bu.
Tools or{})do if w>v then local y=j('\075\110\105\118\101\115',x.Id,'\099\117\116',10)if y then y.tier=w
table.insert(u,y)end end end end if aG.effective(aH,'\097\117\116\111\070\097\114\109')then for w,x in
ipairs({'\068\121\110\097\109\105\116\101','\083\104\111\118\101\108','\080\048\084\052\084\048\045\051\048\048\048'})do local y=x=='\080\048\084\052\084\048\045\051\048\048\048'and
'\080\111\116\097\116\111\083\117\099\107\101\114'or x if not aO.owns(s,y)then local z=j('\084\111\111\108\115',x,'\099\111\108\108\101\099\116',20)if z
then table.insert(u,z)end end end end end local v,w=cF()if aH.opAutoFinish then
local x=o(s,r,true)if x then table.insert(u,x)end end if aG.effective(aH,
'\097\117\116\111\066\117\121\083\116\111\114\097\103\101')and not aH.infiniteBag and w~=math.huge and type(s.CarryLevel)
=='\110\117\109\098\101\114'then local x=bv.Levels and bv.Levels[s.CarryLevel+1]if type(x)==
'\116\097\098\108\101'and x.ItemName then local y=j('\083\116\111\114\097\103\101',x.ItemName,'\115\116\111\114\097\103\101',90)if y then
y.capacity=x.Capacity table.insert(u,y)end end end local x=aH.opAutoFinish and
bX.mountainEmpty==true and aO.opBulkReady(t,s)local y,z=aO.selectPurchase(aG,aH,
r,u,x)bl=y if z then return y end return nil end local function r()local s=cB(aV
,{'\077\097\112','\080\101\101\108\105\110\103\077\097\099\104\105\110\101\115','\083\101\108\108\067\114\097\116\101','\080\111\116\097\116\111\065\114\101\097'})local t=s and s:
GetAttribute('\080\111\116\097\116\111\067\111\117\110\116')return type(t)=='\110\117\109\098\101\114'and t>=0 and t or nil end
local function s()if os.clock()<bm then return bX end bm=os.clock()+0.12 cg.
apply(aH.fastDelivery and not ch,aH.placementDelay)if bi and os.clock()>=bi.
deadline then bi=nil bj=math.min(12,math.max(0.5,bj*1.75))a2=os.clock()+bj end
local t,u=cF()local v,w=cj.observe(os.clock(),t)bU.collected+=v if w and cq==
'\080\111\116\097\116\111\083\117\099\107\101\114'then a8=os.clock()+2 end local x,y,z=aJ.heat()bI=aG.coolingLatch(
bI,x,aH,cG())local A=cE()if os.clock()>=bP then bO=q()bP=os.clock()+0.7 bQ=A end
local B=os.clock()>=bK and bO or nil local C=cB(aV,{'\077\097\112','\080\101\101\108\105\110\103\077\097\099\104\105\110\101\115',
'\080\101\101\108\105\110\103\077\097\099\104\105\110\101','\067\114\097\110\107\080\114\111\109\112\116\080\097\114\116','\067\114\097\110\107'})bX={cash=A,carried=t,capacity=u,heat
=x,flowing=y,heatSource=z,needCooling=bI and not y,cutting=cH(),tableReady=h(
true)~=nil,retryAt=bY,deliveryPending=bZ~=nil,hasCandidate=cA(bC)or bF<=#bE and
os.clock()<bG,noCandidate=bH,candidatePumpkin=bC~=nil and bC.pumpkin==true,
purchase=B,canBuy=B~=nil,buyRetryAt=bK,coolingRetryAt=bJ}bX.crankReady=C~=nil
and C.Enabled bX.stock=r()if bX.stock and cw and bX.stock>cw then cx+=bX.stock-
cw end cw=bX.stock if os.clock()-cv>=1 then cy=cx/(os.clock()-cv)cx=0 cv=os.
clock()end bX.cutRate=cy local D,E=cC(bp,'\071\101\116\082\101\109\111\118\101\100\070\114\097\099\116\105\111\110')bX.mountainEmpty=D
and type(E)=='\110\117\109\098\101\114'and E>=1 bX.sellReady=aO.sellReady(aH,bX.stock,{cutting=bX.
cutting,crate=g(),carried=t,exhausted=bH or bX.mountainEmpty})if not aH.
opAutoFinish and bl and bl.price and A and A<bl.price+aH.reserveCash and bX.
stock and bX.stock>=math.min(50,aH.sellThreshold)then bX.sellReady=true end bX.
sellRetryAt=a1 bX.afterSale=aY bX.returnToTable=aY and a_~=nil bX.
postSaleWeaponBought=aZ bX.goal=bl local F=cD()if os.clock()>=b3 then local G=aF
['\083\104\097\114\101\100\046\084\111\111\108\085\112\103\114\097\100\101\083\104\097\114\101\100']or{}b5=aO.maxed(G,F,'\068\121\110\097\109\105\116\101')b4=aO.maxed(G,F,
'\083\104\111\118\101\108')and b5 b6=aO.productionReady(G,F)b7=aO.opBulkReady(G,F)b3=os.clock()+1
end local G=aO.clearReady(aH,aF['\083\104\097\114\101\100\046\084\111\111\108\085\112\103\114\097\100\101\083\104\097\114\101\100']or{},F)bX.focusClear=
aG.effective(aH,'\097\117\116\111\070\097\114\109')and(aH.clearPileFirst or aH.opAutoFinish)and G and D
and type(E)=='\110\117\109\098\101\114'and E<1 local H=aO.fundingPlan(aG,aH,A,bl,g(),bX.stock,u,aH
.opAutoFinish and b7 or b6)bX.opFunding=H if H.needed and H.cut then bX.
focusClear=false end if H.sell then bX.sellReady=true end bX.bulkOnly=aH.
opAutoFinish and b7 and bX.focusClear bX.postClearUnload=aH.opAutoFinish and b7
and bX.mountainEmpty and t and t>0 if bX.bulkOnly then if not b8 then b8=os.
clock()b9.entered+=1 b9.completed=false aM(
"\083\117\103\097\100\111\114\032\077\065\088\058\032\105\110\105\099\105\097\110\100\111\032\099\111\108\101\116\097\032\099\111\110\116\105\110\117\097\032\097\116\101\032\101\115\118\097\122\105\097\114\032\097\032\109\111\110\116\097\110\104\097\046")end b9.
seconds=os.clock()-b8 elseif b8 then b9.seconds=os.clock()-b8 b9.completed=bX.
mountainEmpty b8=nil if b9.completed then aM(
'\077\111\110\116\097\110\104\097\032\118\097\122\105\097\058\032\114\101\116\111\109\097\110\100\111\032\101\110\116\114\101\103\097\032\101\032\099\111\114\116\101\032\112\097\114\097\032\097\032\099\104\097\118\101\046')end end if aH.
opAutoFinish and D and type(E)=='\110\117\109\098\101\114'and E==E and E>=0 and E<=1 then if not c
then c={time=os.clock(),fraction=E}end bX.pileProgress={source=
'\110\097\116\105\118\101\032\071\101\116\082\101\109\111\118\101\100\070\114\097\099\116\105\111\110',removed_fraction=E,delta_fraction=math.max(0,E-c.
fraction),elapsed=os.clock()-c.time}end bX.phase=b5 and(bg and'\101\113\117\105\112\109\101\110\116\058\032'..bg.
name or'\099\108\101\097\114\032\112\105\108\101')or'\102\117\110\100\032\100\121\110\097\109\105\116\101'if aH.opAutoFinish then bX.phase=H.needed
and'\079\080\058\032\114\101\110\100\097\032\112\097\114\097\032'..tostring(bl and bl.name)or b7 and bX.focusClear and
'\079\080\058\032\099\111\108\101\116\097\032\099\111\110\116\105\110\117\097\032\047\032\115\117\103\097\100\111\114\032\077\065\088'or bX.focusClear and'\079\080\058\032\108\105\109\112\101\122\097\032\101\032\109\101\108\104\111\114\105\097\115'
or bX.mountainEmpty and'\079\080\058\032\099\111\114\116\097\114\032\101\115\116\111\113\117\101\032\101\032\098\117\115\099\097\114\032\099\104\097\118\101'or
'\079\080\058\032\112\114\101\112\097\114\097\114\032\101\113\117\105\112\097\109\101\110\116\111\115'end bX.productionReady=b6 bX.deliveryGoal=bX.
focusClear and aG.productionGoal(aH,u,g())or nil if H.needed and not H.cut then
bX.deliveryGoal=H.deliveryGoal end bX.opBurst=cj.stats local I=aH.opAutoFinish
and aH.opKeyShortcut and aJ.keyTarget and aJ.keyTarget()or nil bX.keyProbeReady=
I~=nil and F and F.HasKey~=true and t and u and t<u and os.clock()>=ca and cc.
allowed(I,bX.mountainEmpty,os.clock())if bX.focusClear and os.clock()<ce and u==
math.huge then bX.deliveryGoal=math.huge end local J=F and#(bu.Tools or{})>1 and
l(F)>=#bu.Tools local K=math.max(0,aH.cutBuffer-g())bX.needBuffer=false bX.
bufferDeliveryGoal=bX.needBuffer and math.min(K,aG.deliveryGoal(aH,u)or K)or nil
if os.clock()>=cf then cf=os.clock()+1 p()end bX.drone=F and F.HasDrone==true
local L=F and F.RunStartTime or 0 if b2~=L then b2=L b0=false b1=false a6.reset(
)end bX.droneReady=aH.autoBuyDrone and b0 and not bX.drone and aG.effective(aH,
'\097\117\116\111\070\097\114\109')bX.askDrone=not bX.bulkOnly and aH.autoBuyDrone and not b1 and not bX
.drone and aG.effective(aH,'\097\117\116\111\070\097\114\109')bX.dynamiteReady=F and aO.owns(F,
'\068\121\110\097\109\105\116\101')and os.clock()>=a2 and not bi and aX.matches('\068\121\110\097\109\105\116\101\084\104\114\111\119',{
'\078\117\109\098\101\114\085\051\050'})and cA(bC)if bX.dynamiteReady then cd.remaining,cd.interval,cd.
source=aO.pickTiming(aF['\083\104\097\114\101\100\046\084\111\111\108\085\112\103\114\097\100\101\083\104\097\114\101\100']or{},bq,bp,F,'\068\121\110\097\109\105\116\101')bX.
dynamiteReady=cd.remaining<=0 end bX.canStageCut=cB(aV,{'\077\097\112','\080\101\101\108\105\110\103\077\097\099\104\105\110\101\115',
'\080\111\116\097\116\111\067\114\097\116\101','\080\111\116\097\116\111\065\114\101\097','\080\108\097\099\101\080\114\111\109\112\116'})~=nil return bX end local function t(u
,v)local w=aV:FindFirstChild('\080\111\116\097\116\111\080\105\108\101')if not w then return nil end local x=
RaycastParams.new()x.FilterType=Enum.RaycastFilterType.Include x.
FilterDescendantsInstances={w}local y=0 while bF<=#bE and os.clock()<bG do if
not u()then return nil end local z=bE[bF]bF+=1 local A=z.part and bz[z.part]or
cu[z.slot]or 0 if cA(z)and os.clock()>=A and(not v or z.pumpkin)then if z.part
then z.slot=aJ.slot(z.part)end local B=aJ.exposed and aJ.exposed(z.part,z.slot)
local C=B==nil and z.part and aV:Raycast(z.part.Position+Vector3.new(0,25,0),
Vector3.new(0,-25.5,0),x)if z.slot and(z.logical or B==true or C and C.Instance
==z.part)then bC=z bH=false bm=0 return z end end y+=1 if y%24==0 then aE.
RunService.Heartbeat:Wait()end end return nil end local function u(v)bm=0 local
w=aG.batchCollect(aH)local x=w or b6 and aH.throughputMode and aH.rarity=='\065\110\121'
local y,z=aJ.prepare(v)if not y then return nil,z end local A,B=cF()local C=A~=
nil and B~=nil and A>=B and not aG.effective(aH,'\097\117\116\111\068\121\110\097\109\105\116\101')if bB~=aJ.stats.
generation then bB=aJ.stats.generation bA=setmetatable({},{__mode='\107'})bC=nil bE
={}bF=1 bG=0 end if cA(bC)and os.clock()>=(bC.part and bz[bC.part]or cu[bC.slot]
or 0)and(not C or bC.pumpkin)then return bC end if os.clock()<bG then local D=t(
v,C)if D then return D end end if os.clock()<bD then return nil end bC=nil bD=os
.clock()+0.4 local D=aI.actor()if not D then return nil end local E=aV:
FindFirstChild('\080\111\116\097\116\111\080\105\108\101')if not E then return nil end local F=E:GetChildren()
local G=aQ.new(256)local H=false local I=0 if bB~=aJ.stats.generation then bB=aJ
.stats.generation bA=setmetatable({},{__mode='\107'})end for J,K in ipairs(F)do if
not v()then return nil end if K:IsA('\066\097\115\101\080\097\114\116')and K.Transparency<0.99 and os.
clock()>=(bz[K]or 0)then local L=(K.Position-D.Position).Magnitude if L<=aH.
maxDistance then local M=K.Name=='\080\117\109\112\107\105\110'local N,O,P local Q=not w if Q then
local R=bA[K]if R and aJ.slot(K)==R.slot then N,M,O,P=R.kind,R.pumpkin,R.slot,R.
gem else if I<8 or aJ.stats.kind~='\117\110\114\101\115\111\108\118\101\100'then I+=1 O=aJ.slot(K)if O then N,
M,P=aJ.kind(K,O)end end if N then bA[K]={kind=N,pumpkin=M,slot=O,gem=P}end end
if not N and not M then H=true end end if(aT=='\103\101\109'and P or aG.acceptVariant(aH,
N,M,P))and(not C or M)then local R=({Normal=1,Golden=3,Diamond=6,Rainbow=10,Key=
1,Charred=0.5})[N]or 1 local S=not aH.opAutoFinish and aH.selection=='\082\097\110\100\111\109'and
math.random()*1000 or L if aH.keyPriority and N=='\075\101\121'then S-=10000000000 end if
aH.pumpkinPriority and M then S-=1000000000 end if P and(aT=='\103\101\109'or not x and
aH.gemPriority and aH.collectGems)then S-=1000000 end if not x and aH.
priorityValue and aH.rarity=='\065\110\121'then S-=R*10000 end G.add({part=K,kind=N,
pumpkin=M,gem=P,slot=O,distance=L,worth=R,score=S})end end end if J%700==0 then
aE.RunService.Heartbeat:Wait()end end if not x and(aT=='\103\101\109'or aH.
logicalSpecials and(aH.collectPumpkins or aH.collectGems))then if os.clock()>=cs
then cr=aJ.specialTargets(v)cs=os.clock()+20 end local J={}for K,L in ipairs(G.
values())do if L.slot then J[L.slot]=true end end for K,L in ipairs(cr)do if not
v()then return nil end if os.clock()>=ct and not J[L.slot]and os.clock()>=(cu[L.
slot]or 0)and aJ.live(L.slot)and(aT=='\103\101\109'and L.gem or aG.acceptVariant(aH,L.
kind,L.pumpkin,L.gem))and(not C or L.pumpkin)then local M=(L.position-D.Position
).Magnitude if M<=aH.maxDistance then L.score=M-(L.pumpkin and aH.
pumpkinPriority and 1000000000 or L.gem and(aH.gemPriority or aT=='\103\101\109')and
1000000 or 0)G.add(L)end end end end local J=G.values()bE,bF,bG=J,1,os.clock()+5
bC=t(v,C)bH=bC==nil if not bC and H and aH.rarity~='\065\110\121'then return nil,
"\082\097\114\105\100\097\100\101\032\105\110\100\105\115\112\111\110\105\118\101\108\058\032\111\032\099\108\105\101\110\116\101\032\110\097\111\032\101\120\112\111\115\032\117\109\032\118\105\110\099\117\108\111\032\118\101\114\105\102\105\099\097\118\101\108\032\101\110\116\114\101\032\112\101\099\097\044\032\105\110\100\105\099\101\032\101\032\101\115\116\097\100\111\046"
end return bC end local function v(w,x)local y=aI.actor()if not y or not cA(w)
then return false,'\097\108\118\111\032\105\110\100\105\115\112\111\110\105\118\101\108'end local z=cz(w)if(y.Position-z).Magnitude
<=math.min(18,aH.auraRadius)then return true end if aH.movement=='\084\101\108\101\112\111\114\116'then
return aI.goTo(z+Vector3.new(0,3.5,0),x,true)end local A=y.Position-z local B=
Vector3.new(A.X,0,A.Z)local C=z+(B.Magnitude>0.1 and B.Unit or Vector3.new(0,0,1
))*5 local D=RaycastParams.new()D.FilterType=Enum.RaycastFilterType.Exclude D.
FilterDescendantsInstances={aS.Character,aV:FindFirstChild('\080\111\116\097\116\111\080\105\108\101')}local E
=aV:Raycast(C+Vector3.new(0,12,0),Vector3.new(0,-120,0),D)if not E then return
false,'\115\101\109\032\112\105\115\111\032\112\114\111\120\105\109\111\032\100\097\032\098\097\116\097\116\097'end local F,G=aI.goTo(E.Position,x)y=aI.actor(
)if not F then return false,G end return y~=nil and cA(w)and(y.Position-z).
Magnitude<=18,'\097\108\118\111\032\102\111\114\097\032\100\111\032\097\108\099\097\110\099\101'end local w local function x(y)local z=aJ.
keyTarget and aJ.keyTarget()if not z then return true end ca=os.clock()+10 bm=0
if not aX.matches('\080\111\116\097\116\111\080\105\099\107',{'\078\117\109\098\101\114\085\051\050'})or not aX.matches('\084\111\111\108\083\119\105\110\103',{})
then return true end cM()local A,B=v(z,y)if not A then cb.last_result=tostring(B
)return false,B end local C=aJ.keyTarget()if not y()or not C or C.slot~=z.slot
then return true end if not cc.begin(C,bX.mountainEmpty,os.clock())then return
true end ca=0 cb.attempts+=1 cb.id=z.slot cb.source=z.source local D=aX.fire(
'\084\111\111\108\083\119\105\110\103')local E,F=false,'\070\101\114\114\097\109\101\110\116\097\032\100\101\032\099\111\108\101\116\097\032\105\110\100\105\115\112\111\110\105\118\101\108\046'if D then E,F=aX
.fire('\080\111\116\097\116\111\080\105\099\107',z.slot)end if not E then cb.last_result='\108\111\099\097\108\032\115\101\110\100\032\102\097\105\108\101\100'
return false,F end local G=cK(function()local G=cD()return G and G.HasKey==true
end,0.8,y)cb.confirmed=G==true cb.last_result=G and
'\072\097\115\075\101\121\032\099\111\110\102\105\114\109\101\100\032\098\121\032\112\108\097\121\101\114\032\115\116\097\116\101'or
'\110\111\032\072\097\115\075\101\121\032\099\111\110\102\105\114\109\097\116\105\111\110\059\032\110\111\114\109\097\108\032\112\114\111\103\114\101\115\115\105\111\110\032\099\111\110\116\105\110\117\101\115'bm=0 bC=nil if G then aM(
'\065\116\097\108\104\111\032\100\097\032\099\104\097\118\101\032\099\111\110\102\105\114\109\097\100\111\032\112\101\108\111\032\101\115\116\097\100\111\032\100\111\032\106\111\103\111\046')else aM(
"\084\101\115\116\101\032\100\097\032\099\104\097\118\101\058\032\111\032\115\101\114\118\105\100\111\114\032\110\097\111\032\099\111\110\102\105\114\109\111\117\032\097\032\099\111\108\101\116\097\032\097\110\116\101\099\105\112\097\100\097\046")end return
true end local function y(z)local A=aG.batchCollect(aH)if A and(cj.stats.pending
>0 or os.clock()<bL)then return true end if cH()then cJ()end local B,C=u(z)if
not B then if C then aM(C,'\101\114\114\111\114')end return true end e()local D=nil if A then
local E E,D=aO.pickTiming(aF['\083\104\097\114\101\100\046\084\111\111\108\085\112\103\114\097\100\101\083\104\097\114\101\100']or{},bq,bp,cD(),cq or
'\072\097\110\100')if E>0 then bL=os.clock()+math.min(E,0.25)return true end end local E,F=
cF()local G,H=bS,bT if not E or not F or E>=F and not B.pumpkin then return
false,'\098\111\108\115\097\032\099\104\101\105\097\032\111\117\032\099\097\112\097\099\105\100\097\100\101\032\100\101\115\099\111\110\104\101\099\105\100\097'end local I=aJ.stats.identity
local J=aJ.stats.native_map or I and math.max(I.confirmed_geometry or 0,I.
confirmed_permuted or 0)>=3 if A and J and bR and not B.logical and not B.
pumpkin then local K=aH.teamFunding and aG.effective(aH,'\097\117\116\111\068\101\108\105\118\101\114')and aG.
deliveryGoal(aH,F)local L=K or F local M=cj.budget(os.clock(),E,L)if M==0 then
return true end local N,O=v(B,z)if not N then bC=nil return false,O end if z()
and aG.effective(aH,'\097\117\116\111\068\121\110\097\109\105\116\101')and not bi and os.clock()>=a2 then w(z)end
local P=aI.actor()local Q=aV:FindFirstChild('\080\111\116\097\116\111\080\105\108\101')if not P or not Q then
return true end local R=RaycastParams.new()R.FilterType=Enum.RaycastFilterType.
Include R.FilterDescendantsInstances={Q}local S={}local function T(U)if not cA(U
)or U.pumpkin or not U.part or(U.part.Position-P.Position).Magnitude>math.min(18
,aH.auraRadius)then return end local V=aJ.slot(U.part)local W=aJ.exposed and aJ.
exposed(U.part,V)local X=W==nil and aV:Raycast(U.part.Position+Vector3.new(0,25,
0),Vector3.new(0,-25.5,0),R)if W~=true and(not X or X.Instance~=U.part)then
return end if not cj.available(V,os.clock())or table.find(S,V)then return end
table.insert(S,V)end T(B)local U=0 while#S<M and bF<=#bE and U<64 do local V=bE[
bF]if cA(V)and(cz(V)-P.Position).Magnitude>math.min(18,aH.auraRadius)then break
end bF+=1 U+=1 T(V)end bC=nil bm=0 if not z()or#S==0 then return true end if not
aX.matches('\080\111\116\097\116\111\080\105\099\107',{'\078\117\109\098\101\114\085\051\050'})or not aX.matches('\084\111\111\108\083\119\105\110\103',{})then
return false,'\080\114\111\116\111\099\111\108\111\032\100\101\032\099\111\108\101\116\097\032\079\080\032\105\110\100\105\115\112\111\110\105\118\101\108\046'end if not cj.begin(os.clock(
),E,S)then return true end bL=os.clock()+math.max(0.08,D or 0.08)if aX.matches(
'\084\111\111\108\085\115\105\110\103',{'\066\111\111\108\101\097\110'})then aX.fire('\084\111\111\108\085\115\105\110\103',true)end for V,W in ipairs(S)do
if not z()then cj.cancel()return false,'\099\097\110\099\101\108\097\100\111'end local X=aX.fire(
'\084\111\111\108\083\119\105\110\103')local Y=X and aX.fire('\080\111\116\097\116\111\080\105\099\107',W)if not Y then cj.cancel()return
false,'\080\101\100\105\100\111\032\079\080\032\114\101\099\117\115\097\100\111\032\112\101\108\111\032\112\114\111\116\111\099\111\108\111\032\108\111\099\097\108\046'end end return true end local
function K()local L=cF()return L~=nil and L>E or B.pumpkin and bS>G or B.gem and
bT>H end if os.clock()<bL then return true end local L,M=v(B,z)if not L then if
B.part then bz[B.part]=os.clock()+5 else cu[B.slot]=os.clock()+30 end bC=nil bD=
0 return false,M end if not z()then return false,'\099\097\110\099\101\108\097\100\111'end B.slot=B.part
and aJ.slot(B.part)or B.slot B.geometry=B.part and aJ.physicalSlot(B.part)or nil
if B.slot then B.kind,B.pumpkin,B.gem=aJ.kind(B.part,B.slot)if not(aT=='\103\101\109'and
B.gem or aG.acceptVariant(aH,B.kind,B.pumpkin,B.gem))then bC=nil return true end
end if B.logical then ct=os.clock()+5 end local N=false if B.slot and type(aW.
PotatoPick)=='\116\097\098\108\101'and type(aW.PotatoPick.Fire)=='\102\117\110\099\116\105\111\110'and type(aW.
ToolSwing)=='\116\097\098\108\101'and type(aW.ToolSwing.Fire)=='\102\117\110\099\116\105\111\110'then local O={B}local
P=aI.actor()local Q=aG.pickLimit(aH,E,F,B.pumpkin)if bX.deliveryGoal and bX.
deliveryGoal<math.huge then Q=math.min(Q,math.max(1,bX.deliveryGoal-E))end if bX
.needBuffer then Q=math.min(Q,math.max(1,(bX.bufferDeliveryGoal or 1)-E))end
local R=aJ.stats.identity if not R or math.max(R.confirmed_geometry or 0,R.
confirmed_permuted or 0)<3 then Q=1 end while#O<Q and bF<=#bE and P do local S=
bE[bF]if not cA(S)then bF+=1 elseif S.pumpkin or S.logical or(cz(S)-P.Position).
Magnitude>math.min(18,aH.auraRadius)then break else S.slot=S.part and aJ.slot(S.
part)or S.slot if not S.slot then break end bF+=1 table.insert(O,S)end end local
S,T=pcall(function()if aX.matches('\084\111\111\108\085\115\105\110\103',{'\066\111\111\108\101\097\110'})then aX.fire(
'\084\111\111\108\085\115\105\110\103',true)end for S,T in ipairs(O)do if not z()then break end aW.
ToolSwing:Fire()aW.PotatoPick:Fire(T.slot)end end)if not S then aM(
'\067\111\108\101\116\097\032\100\105\114\101\116\097\032\105\110\100\105\115\112\111\110\105\118\101\108\059\032\117\115\097\110\100\111\032\101\110\116\114\097\100\097\032\110\097\116\105\118\097\058\032'..tostring(T),'\101\114\114\111\114')end N
=S end if not N then return false,
"\073\110\100\105\099\101\032\100\097\032\098\097\116\097\116\097\032\110\097\111\032\099\111\110\102\105\114\109\097\100\111\059\032\102\105\108\116\114\111\032\101\115\112\101\099\105\102\105\099\111\032\109\097\110\116\105\100\111\032\101\109\032\101\115\112\101\114\097\046"end
local O,P=cK(K,aH.speedMode=='\084\117\114\098\111'and math.min(0.65,aH.actionTimeout)or aH.
actionTimeout,z)if not O and z()and B.part and aJ.alternate then local Q=aJ.
alternate(B.part,B.slot)if Q then local R,S,T=aJ.kind(B.part,Q)if aG.
acceptVariant(aH,R,S,T)then local U=aX.fire('\080\111\116\097\116\111\080\105\099\107',Q)if U then O,P=cK(K,
0.4,z)if O then B.slot=Q end end end end end local Q=cF()if O then a9=0 if B.
part and not a7 then aJ.confirm(B.part,B.slot,B.geometry)end bU.collected+=math.
max(0,(Q or E)-E)bN=math.max(0.04,bN*0.9)else if cq=='\080\111\116\097\116\111\083\117\099\107\101\114'then a9+=1 if
a9>=2 then a8=os.clock()+2 a9=0 end end if B.part then bz[B.part]=os.clock()+3
else cu[B.slot]=os.clock()+30 end bN=math.min(0.6,math.max(0.08,bN*1.3))end bm=0
local R=aH.speedMode=='\084\117\114\098\111'and bN or aG.tickInterval(aH)local S=cD()if S and
aH.speedMode~='\084\117\114\098\111'then local T,U=cC(bp,'\071\101\116\080\105\099\107\067\111\111\108\100\111\119\110',cq or'\072\097\110\100')if T and
type(U)=='\110\117\109\098\101\114'and U>0 and U<3 then R=math.max(R,U)end end bL=os.clock()+R bC=
nil return O,P end local function z(A)local B=cF()if not B or B<=0 then bZ=nil
bm=0 return true end if not bZ then cM()local C=cB(aV,{'\077\097\112','\080\101\101\108\105\110\103\077\097\099\104\105\110\101\115'})
local D local E=aG.progress(aH)and(bX.focusClear and b6 and'\065\117\116\111'or'\067\114\097\116\101')or aH
.deliveryTarget if E=='\084\097\098\108\101'then D=h(true)elseif E=='\077\097\110\117\097\108'then D=C and cB(C,{
'\080\101\101\108\105\110\103\077\097\099\104\105\110\101','\067\117\098\101\046\048\051\051','\076\111\097\100'})elseif E=='\065\117\116\111'then D=C and cB(C,{
'\065\117\116\111\080\101\101\108\105\110\103\077\097\099\104\105\110\101','\067\117\098\101\046\048\052\050','\076\111\097\100'})else local F=cD()local G=C and cB(C,{
'\065\117\116\111\080\101\101\108\105\110\103\077\097\099\104\105\110\101','\067\117\098\101\046\048\052\050','\076\111\097\100'})if aH.buyMachines and(bX.mountainEmpty
or bX.focusClear)and b6 and F and F.HasAutoPeeler and G and G.Enabled then D=G
else D=C and cB(C,{'\080\111\116\097\116\111\067\114\097\116\101','\080\111\116\097\116\111\065\114\101\097','\080\108\097\099\101\080\114\111\109\112\116'})end end if not D
then return false,'\068\101\115\116\105\110\111\032\115\101\108\101\099\105\111\110\097\100\111\032\105\110\100\105\115\112\111\110\105\118\101\108\046'end if E=='\065\117\116\111'and not D.
Enabled then ce=os.clock()+3 bm=0 if select(2,cF())==math.huge then return true,
'\065\117\116\111\109\097\116\105\099\111\032\111\099\117\112\097\100\111\059\032\099\111\110\116\105\110\117\097\110\100\111\032\099\111\108\101\116\097\046'end D=C and cB(C,{'\080\111\116\097\116\111\067\114\097\116\101',
'\080\111\116\097\116\111\065\114\101\097','\080\108\097\099\101\080\114\111\109\112\116'})end local F,G=aI.trigger(D,A)if not F then return
false,G end bZ={prompt=D,last=B,remaining=B,progressAt=os.clock(),began=os.
clock(),total=0}end local C=bZ local D=os.clock()+math.max(4,math.min(8,aH.
actionTimeout))repeat if not A()then return false,'\099\097\110\099\101\108\097\100\111'end local E=cF()if
E and E<C.last then local F=C.last-E bU.delivered+=F C.total+=F C.progressAt=os.
clock()bm=0 end if E then C.last=E C.remaining=E end if E==0 then aM(
'\069\110\116\114\101\103\097\032\099\111\110\099\108\117\105\100\097\058\032'..tostring(C.total)..'\032\098\097\116\097\116\097\115\046')bZ=nil bm=0 bC=nil return
true end if os.clock()-C.progressAt>2 then local F=C.prompt if F and F.Parent
and F.Enabled then local G,H=aI.trigger(F,A)if not G then return false,H end C.
progressAt=os.clock()elseif C.total>0 and os.clock()-C.progressAt>1 then bZ=nil
ce=os.clock()+3 bm=0 return true,'\067\097\114\103\097\032\112\097\114\099\105\097\108\032\099\111\110\102\105\114\109\097\100\097\059\032\114\101\116\111\109\097\110\100\111\032\099\111\108\101\116\097\046'
elseif os.clock()-C.progressAt>math.max(8,aH.actionTimeout)then bZ=nil bm=0
return false,'\069\110\116\114\101\103\097\032\112\097\114\111\117\032\115\101\109\032\112\114\111\103\114\101\115\115\111\059\032\100\101\115\116\105\110\111\032\115\101\114\097\032\114\101\097\118\097\108\105\097\100\111\046'end end aE.
RunService.Heartbeat:Wait()until os.clock()>=D return true,
'\069\110\116\114\101\103\097\032\101\109\032\097\110\100\097\109\101\110\116\111\046'end local function A(B)if not cH()then return true end
local C,D=cC(bo,'\071\101\116\080\111\116\097\116\111')local E=cD()local F=E and bu.Tools and bu.Tools[l(E)
]or nil co=true local G,H=bW.tick(true,D,cE(),F)if not G then cJ()table.clear(bk
)bY.enterCut=os.clock()+1 bm=0 end if not B()then return false,'\099\097\110\099\101\108\097\100\111'end
return G,H end local function B(C)cM()local D=h(true)if not D then return false,
'\078\101\110\104\117\109\097\032\109\101\115\097\032\108\105\098\101\114\097\100\097\032\099\111\109\032\098\097\116\097\116\097\115\046'end b_={}for E,F in ipairs(aU:GetChildren())
do if F:IsA('\083\099\114\101\101\110\071\117\105')and F.Name~='\065\110\111\110\121\109\111\117\115\080\111\116\097\116\111\072\117\098'then b_[F]=F.Enabled for
G,H in ipairs(F:GetChildren())do if H:IsA('\071\117\105\079\098\106\101\099\116')then b_[H]=H.Visible end
end end end aI.aim(D,aH.aimTable)local E,F=aI.trigger(D,C)if not E then aI.
clearAim()bk[D]=os.clock()+3 bm=0 return false,F end local G=aH.opAutoFinish and
aH.opFastPrompts and D.HoldDuration==0 local H,I=cK(cH,math.min(G and 1.25 or 3,
aH.actionTimeout),C)if not H and C()and D.Enabled then local J=aI.trigger(D,C,{
method='\104\111\108\100'})if J then H,I=cK(cH,math.min(2,aH.actionTimeout),C)end elseif not
H and G and C()then H,I=cK(cH,0.75,C)end aI.clearAim()if H then a0=D co=true
else bk[D]=os.clock()+3 bm=0 end return H,I end local function C(D)bJ=os.clock()
+2 local E=aI.actor()local F=E and E.Position cM()local G=cB(aV,{'\077\097\112','\087\097\116\101\114',
'\087\097\116\101\114\084\101\114\109\105\110\097\108','\051','\066\117\116\116\111\110','\087\097\116\101\114\080\114\111\109\112\116'})if not G then return false,
'\087\097\116\101\114\080\114\111\109\112\116\032\110\097\111\032\101\110\099\111\110\116\114\097\100\111\046'end local H=aJ.heat()local I=G.HoldDuration aI.aim(
G,aH.aimCooling)local J,K=false,nil local L={{method='\104\111\108\100',holdSeconds=aH.
coolHoldSeconds},{method='\110\097\116\105\118\101'}}if aH.coolHoldFallback and aH.coolHoldSeconds
<I then table.insert(L,{method='\104\111\108\100',holdSeconds=I})end for M,N in ipairs(L)do
local O,P=aI.trigger(G,D,N)if not O then K=P else J,K=cK(function()local Q,R=aJ.
heat()return R or Q and(Q<=aH.heatStop or H and Q<H-1)end,M==1 and 1 or 2,D)end
if J or not D()then break end end aI.clearAim()bm=0 if J then bU.cooled+=1 aM(
'\086\097\108\118\117\108\097\032\099\111\110\102\105\114\109\097\100\097\058\032\097\103\117\097\032\102\108\117\105\110\100\111\032\111\117\032\099\097\108\111\114\032\100\105\109\105\110\117\105\110\100\111\046')bJ=os.clock()+aH.
coolingRetry if aH.returnAfterCooling and F and D()then aI.goTo(F,D,true)end end
return J,K end local function D(E)cJ()local F=cB(aV,{'\077\097\112','\080\101\101\108\105\110\103\077\097\099\104\105\110\101\115',
'\080\101\101\108\105\110\103\077\097\099\104\105\110\101','\067\114\097\110\107\080\114\111\109\112\116\080\097\114\116','\067\114\097\110\107'})if not F or not F.Enabled then
return false,'\067\111\114\116\097\100\111\114\032\109\097\110\117\097\108\032\105\110\100\105\115\112\111\110\105\118\101\108\046'end local G=F.ObjectText local H,I=
aI.trigger(F,E)if not H then return false,I end return cK(function()return not F
.Parent or not F.Enabled or F.ObjectText~=G end,aH.actionTimeout,E)end local
function E(F,G)local H=G or q()if not H then return true end local I=cD()local J
=cE()local K=I and l(I)local L=I and I.CarryLevel local M=aF[
'\083\104\097\114\101\100\046\084\111\111\108\085\112\103\114\097\100\101\083\104\097\114\101\100']or{}local N=H.group=='\117\112\103\114\097\100\101'and aO.level(M,I,H.tool
,H.upgrade)or nil local O=aI.actor()O=O and O.Position local P=cH()local
function Q()local R=cD()if not R then return false end if H.group=='\109\097\099\104\105\110\101'then
return R[H.unlock]==true end if H.group=='\117\112\103\114\097\100\101'then local S=aO.level(M,R,H.
tool,H.upgrade)return S~=nil and N~=nil and S>N end if H.group=='\099\117\116'and K and
l(R)>K then return true end if H.group=='\115\116\111\114\097\103\101'and L and R.CarryLevel>L then
return true end if H.group=='\099\111\108\108\101\099\116'and aO.owns(R,H.id=='\080\048\084\052\084\048\045\051\048\048\048'and
'\080\111\116\097\116\111\083\117\099\107\101\114'or H.id)then return true end local S=cE()return S and J and S<J-
0.001 end local function R(S,T,U)if H.group=='\117\112\103\114\097\100\101'then if by then by()by=nil
end else cC(br,'\067\108\111\115\101')end if S and not U then bU.purchases+=1 if#bV<100 then
table.insert(bV,{name=H.name,group=H.group})end if aY and H.group=='\099\117\116'then aZ=
true end aM('\067\111\109\112\114\097\032\099\111\110\102\105\114\109\097\100\097\058\032'..H.name..'\046')end if H.group=='\117\112\103\114\097\100\101'and not
U then a6.result(H.name,N,S)end if H.group=='\117\112\103\114\097\100\101'and not S then a5[H.name]={
cash=math.max((J or 0)*1.5,(J or 0)+math.max(0.1,(H.price or 0)*0.5)),level=N}
elseif S and not U then a5[H.name]=nil end p()a4[H.name]=S and not U and 0 or os
.clock()+20 bK=os.clock()+(S and 0.15 or 1)bO=nil bP=0 bm=0 if P and O and F()
and H.group~='\117\112\103\114\097\100\101'and not aY then aI.goTo(O,F,true)end return S,T end if H.
group=='\117\112\103\114\097\100\101'then local S=aO.definition(M,H.tool,H.upgrade)local T=S~=nil
local U=T and aO.maximum(M,S)if U==nil or N==nil or N>=U or not a6.allowed(H.
name,N)then return R(true,'\077\101\108\104\111\114\105\097\032\099\111\110\099\108\117\105\100\097\032\111\117\032\098\108\111\113\117\101\097\100\097\032\112\097\114\097\032\114\101\097\118\097\108\105\097\099\097\111\046',
true)end if N==nil then return R(true,'\078\105\118\101\108\032\100\101\032\109\101\108\104\111\114\105\097\032\105\110\100\105\115\112\111\110\105\118\101\108\046',true)end
local V,W=cC(bs,'\071\101\116\085\112\103\114\097\100\101\066\117\116\116\111\110',H.tool,H.upgrade)if V and typeof(W)==
'\073\110\115\116\097\110\099\101'and W:IsA('\071\117\105\066\117\116\116\111\110')then H.button=W end H.price=m(cD(),H.tool,H.
upgrade,N,H.button)or H.price if not F()then return R(false,'\099\097\110\099\101\108\097\100\111')end if
not H.price or not aG.affordable(aH,cE(),H.price,'\067\097\115\104')then return R(true,
'\065\103\117\097\114\100\097\110\100\111\032\115\097\108\100\111\032\112\097\114\097\032'..H.name,true)end local X,Y if aX.matches(
'\084\111\111\108\085\112\103\114\097\100\101\080\117\114\099\104\097\115\101',{'\083\116\114\105\110\103','\083\116\114\105\110\103'})then X,Y=aX.fire('\084\111\111\108\085\112\103\114\097\100\101\080\117\114\099\104\097\115\101'
,H.tool,H.upgrade)elseif H.button then X,Y=aL.activate(H.button,true)else return
R(true,'\066\111\116\097\111\032\100\101\032\109\101\108\104\111\114\105\097\032\097\105\110\100\097\032\105\110\100\105\115\112\111\110\105\118\101\108\046',true)end if not X then return R(
false,Y)end local Z,_=cK(Q,math.min(3,aH.actionTimeout),F)return R(Z,_)end if
not aG.affordable(aH,J,H.price,'\067\097\115\104')then return R(true,'\065\103\117\097\114\100\097\110\100\111\032\115\097\108\100\111\046',
true)end cM()local S,T=aI.trigger(H.prompt,F)if not S then return R(false,T)end
local U,V local W,X=cK(function()if Q()then return true end U,V=aL.buyButton(H.
price)return U~=nil end,2,F)if Q()then return R(true)end if aX.matches(
'\083\116\111\114\101\080\117\114\099\104\097\115\101',{'\073\110\115\116\097\110\099\101','\083\116\114\105\110\103'})then local Y=H.prompt:
FindFirstAncestorOfClass('\077\111\100\101\108')if Y then local Z=aX.fire('\083\116\111\114\101\080\117\114\099\104\097\115\101',Y,
'\066\117\121')if Z then local _=cK(Q,1.5,F)if _ then return R(true)end end end end if
not W then return R(false,V or X)end if not aG.affordable(aH,cE(),H.price,'\067\097\115\104'
)then return R(true,'\083\097\108\100\111\032\097\108\116\101\114\097\100\111\046',true)end local Y,Z=aL.activate(U)if not Y
then return R(false,Z)end local _,cN=cK(Q,math.min(3,aH.actionTimeout),F)return
R(_,cN)end local function cN(F,G,H)if not table.find(aO.allowed[F]or{},G)then
return false,'\077\101\108\104\111\114\105\097\032\100\101\115\099\111\110\104\101\099\105\100\097\046'end local I=cD()if not aO.owns(I,F)then
return false,'\070\101\114\114\097\109\101\110\116\097\032\097\105\110\100\097\032\110\097\111\032\097\100\113\117\105\114\105\100\097\046'end local J=aF[
'\083\104\097\114\101\100\046\084\111\111\108\085\112\103\114\097\100\101\083\104\097\114\101\100']or{}local K=aO.level(J,I,F,G)local L=aO.maximum(J,aO.
definition(J,F,G))if K==nil or L==nil then return false,
'\079\032\106\111\103\111\032\097\105\110\100\097\032\110\097\111\032\105\110\102\111\114\109\111\117\032\111\032\110\105\118\101\108\032\100\097\032\109\101\108\104\111\114\105\097\046'end if K>=L then return false,
'\077\101\108\104\111\114\105\097\032\106\097\032\101\115\116\097\032\110\111\032\109\097\120\105\109\111\046'end local M,N=cC(bs,'\071\101\116\085\112\103\114\097\100\101\066\117\116\116\111\110',F,G)if not M
or typeof(N)~='\073\110\115\116\097\110\099\101'or not N:IsA('\071\117\105\066\117\116\116\111\110')then N=nil end local O=m(I,F,G,
K,N)if not O then return false,'\079\032\106\111\103\111\032\097\105\110\100\097\032\110\097\111\032\105\110\102\111\114\109\111\117\032\111\032\112\114\101\099\111\046'end if not aG
.affordable(aH,cE(),O,'\067\097\115\104')then return false,
'\083\097\108\100\111\032\111\117\032\108\105\109\105\116\101\032\100\101\032\099\111\109\112\114\097\032\105\110\115\117\102\105\099\105\101\110\116\101\046'end return E(H,{group='\117\112\103\114\097\100\101',name=F
..'\047'..G,tool=F,upgrade=G,button=N,price=O,level=K})end local function F(G)local
H=r()if not H or H<=0 then return true end local I=aI.actor()a_=aH.
returnAfterSell and I and I.Position or nil cM()local J=cB(aV,{'\077\097\112',
'\080\101\101\108\105\110\103\077\097\099\104\105\110\101\115','\083\101\108\108\067\114\097\116\101','\080\111\116\097\116\111\065\114\101\097','\083\101\108\108\080\114\111\109\112\116'})a1=os.clock()+3 local K
,L=aI.trigger(J,G)if not K then return false,L end local function M()local N=r()
return N~=nil and N<H end local N=aH.opAutoFinish and aH.opFastPrompts and J.
HoldDuration==0 local O,P=cK(M,math.min(N and 1.25 or 4,aH.actionTimeout),G)if
not O and N and G()then if J.Parent and J.Enabled and not M()then aI.trigger(J,G
,{method='\104\111\108\100'})end O,P=cK(M,math.min(1.75,aH.actionTimeout),G)end if O then bU
.sales+=1 bU.sold+=math.max(0,H-(r()or H))aY=true aZ=false bO=nil bP=0 bm=0 aM(
'\086\101\110\100\097\032\099\111\110\102\105\114\109\097\100\097\058\032'..tostring(H-(r()or H))..'\032\098\097\116\097\116\097\115\046')end return O,P end
local function G(H)local I=a_ aY=false a_=nil aZ=false bm=0 if not I or bX.
focusClear or bX.needBuffer then return true end local J,K=aI.goTo(I,H,true)if
not J then return false,K end if aG.effective(aH,'\097\117\116\111\067\117\116')and h(true)then
return B(H)end return true end w=function(H)local I=cD()if not aO.owns(I,
'\068\121\110\097\109\105\116\101')or not cA(bC)then return true end if not aX.matches('\068\121\110\097\109\105\116\101\084\104\114\111\119',{
'\078\117\109\098\101\114\085\051\050'})then return true end local J,K,L=aO.pickTiming(aF[
'\083\104\097\114\101\100\046\084\111\111\108\085\112\103\114\097\100\101\083\104\097\114\101\100']or{},bq,bp,I,'\068\121\110\097\109\105\116\101')cd={remaining=J,interval=K,
source=L}if J>0 then a2=os.clock()+J return true end local M=aI.actor()if not M
then return false,'\112\101\114\115\111\110\097\103\101\109\032\105\110\100\105\115\112\111\110\105\118\101\108'end local N=cz(bC)if(M.Position-N).
Magnitude>18 then local O,P=v(bC,H)if not O then return false,P end end local O=
aX.matches('\084\111\111\108\069\113\117\105\112',{'\083\116\114\105\110\103'})if O then cL('\068\121\110\097\109\105\116\101')end cC(bp,'\083\101\116\085\115\101\072\101\108\100'
,false)local P=a3 local Q,R=aX.fire('\068\121\110\097\109\105\116\101\084\104\114\111\119',bC.slot)local S=aH.
opAutoFinish and 0.1 or math.max(aH.dynamiteInterval,aH.dynamiteAggressive and
0.1 or 1)a2=os.clock()+math.max(S,K or 0)if Q then bi={serial=P,deadline=os.
clock()+0.8}end if O then local T=aO.owns(I,'\080\111\116\097\116\111\083\117\099\107\101\114')and'\080\111\116\097\116\111\083\117\099\107\101\114'or
aO.owns(I,'\083\104\111\118\101\108')and'\083\104\111\118\101\108'or'\072\097\110\100'cL(T)end e()if O and aO.owns(I,
'\080\111\116\097\116\111\083\117\099\107\101\114')and aX.matches('\084\111\111\108\085\115\105\110\103',{'\066\111\111\108\101\097\110'})then aX.fire('\084\111\111\108\085\115\105\110\103',
true)end return Q,R end if bo.PotatoCut and type(bo.PotatoCut.Connect)==
'\102\117\110\099\116\105\111\110'then local H,I=pcall(bo.PotatoCut.Connect,bo.PotatoCut,function()bU.
cuts+=1 end)if H then table.insert(bw,I)end end for H,I in ipairs({{
'\080\101\101\108\105\110\103\083\116\097\114\116\101\100','\115\116\097\114\116'},{'\080\101\101\108\105\110\103\078\101\120\116\080\111\116\097\116\111','\110\101\120\116'},{'\080\101\101\108\105\110\103\083\116\111\112\112\101\100','\115\116\111\112'}
})do local J=aW[I[1] ]local K=J and J.OnClientEvent if type(K)=='\116\097\098\108\101'and type(
K.Connect)=='\102\117\110\099\116\105\111\110'then local L=I[2]local M,N=pcall(K.Connect,K,function()bW.
event(L)end)if M then table.insert(bw,N)end end end local H=aW.
PotatoPumpkinCollected and aW.PotatoPumpkinCollected.OnClientEvent if type(H)==
'\116\097\098\108\101'and type(H.Connect)=='\102\117\110\099\116\105\111\110'then local I,J=pcall(H.Connect,H,function(
I)if typeof(I)=='\073\110\115\116\097\110\099\101'and I:IsA('\080\108\097\121\101\114')and I~=aS then return end bS+=1 bU.
pumpkins+=1 end)if I then table.insert(bw,J)end end local function I(J,K)local L
=aW[J]local M=L and L.OnClientEvent if type(M)=='\116\097\098\108\101'and type(M.Connect)==
'\102\117\110\099\116\105\111\110'then local N,O=pcall(M.Connect,M,function(N)if typeof(N)=='\073\110\115\116\097\110\099\101'
and N:IsA('\080\108\097\121\101\114')and N~=aS then return end K()end)if N then table.insert(bw,O)
end end end I('\080\111\116\097\116\111\068\105\097\109\111\110\100\067\111\108\108\101\099\116\101\100',function()bT+=1 bU.gems+=1 end)I(
'\068\121\110\097\109\105\116\101\084\104\114\111\119\110',function()a3+=1 if bi then bU.throws+=1 bi=nil bj=math.max(0.1,
bj*0.8)end end)local function J(K)local L=cB(aV,{'\077\097\112','\080\101\101\108\105\110\103\077\097\099\104\105\110\101\115',
'\080\111\116\097\116\111\067\114\097\116\101','\080\111\116\097\116\111\065\114\101\097','\080\108\097\099\101\080\114\111\109\112\116'})local M=cF()if not M or M<=0 then
return true end local N,O=aI.trigger(L,K)if not N then return false,O end return
cK(function()local P=cF()return P and P<M end,aH.actionTimeout,K)end local
function K()cj.cancel()bm=0 bC=nil bD=0 bE={}bF=1 bG=0 bH=false bO=nil bP=0 bA=
setmetatable({},{__mode='\107'})cr={}cs=0 cq=nil end local function L(M,N)bY[M]=os.
clock()+(M=='\099\111\108\108\101\099\116'and math.min(0.6,0.1*(N or 1))or math.min(12,0.5*2^math.
min(N or 1,4)))bm=0 if M=='\099\111\108\108\101\099\116'or M=='\100\121\110\097\109\105\116\101'then bC=nil bD=0 end if M==
'\101\110\116\101\114\067\117\116'or M=='\099\117\116'or M=='\114\101\116\117\114\110\084\097\098\108\101'then cJ()end if M=='\100\101\108\105\118\101\114'or M==
'\115\116\097\103\101\067\117\116'then if not bZ or bZ.total==0 then ch=true cg.apply(false,aH.
placementDelay)end local O=cF()if not O or O<=0 then bZ=nil end end if M=='\098\117\121'
then bO=nil bP=0 end end local function M(N)if not b0 or not aH.autoBuyDrone
then return true end local O=cD()if O and O.HasDrone then return true end cM()
local P=cB(aV,{'\077\097\112','\083\116\111\114\101\073\116\101\109\115','\082\111\098\117\120','\068\114\111\110\101','\080\114\105\099\101','\080\114\111\109\112\116\065\116\116\097\099\104\109\101\110\116',
'\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116'})if not P then return false,'\076\111\106\097\032\100\111\032\100\114\111\110\101\032\105\110\100\105\115\112\111\110\105\118\101\108\046'end
local Q,R=aI.trigger(P,N)if not Q then return false,R end local S=nil cK(
function()local T=aU:FindFirstChild('\083\116\111\114\101\086\105\101\119')if not T then return false end
for U,V in ipairs(T:GetDescendants())do if V:IsA('\071\117\105\066\117\116\116\111\110')and aL.visible(V)
and V.Active then local W=string.upper(aL.texts(V.Parent or V))local X=W:find(
'\071\069\077',1,true)or W:find('\068\073\065\077\079\078\068',1,true)or W:find('\u{1f48e}',1,true)local Y=
string.upper(aL.texts(V)..'\032'..V.Name)local Z=Y:find('\066\085\089',1,true)or Y:find(
'\080\085\082\067\072\065\083\069',1,true)or Y:find('\067\079\077\080\082\065\082',1,true)if Z and X and not W:find('\082\079\066\085\088',1
,true)and not W:find('\082\036',1,true)and aG.parseAmount(W)==80 then S=V return true
end end end return false end,2,N)local T=false if S and N()then local U=aL.
activate(S)if U then T=cK(function()local V=cD()return V and V.HasDrone==true
end,3,N)end end cC(br,'\067\108\111\115\101')bY.drone=os.clock()+30 if T then b0=false bU.
purchases+=1 aM('\068\114\111\110\101\032\097\100\113\117\105\114\105\100\111\059\032\109\101\108\104\111\114\105\097\115\032\100\101\032\100\114\111\110\101\032\108\105\098\101\114\097\100\097\115\046')return true end
return false,
"\067\111\109\112\114\097\032\100\111\032\100\114\111\110\101\032\110\097\111\032\099\111\110\102\105\114\109\097\100\097\058\032\101\120\105\103\101\032\111\102\101\114\116\097\032\118\105\115\105\118\101\108\032\100\101\032\056\048\032\103\101\109\097\115\032\101\032\115\097\108\100\111\032\115\117\102\105\099\105\101\110\116\101\046"
end local function N()cM()aI.stop()cC(br,'\067\108\111\115\101')cC(bs,'\083\101\116\079\112\101\110',false)for O,P
in ipairs({'\067\097\115\104','\066\097\103','\072\111\116\098\097\114','\084\111\111\108\072\111\116\098\097\114'})do local Q=aU:FindFirstChild(P)if
Q and Q:IsA('\083\099\114\101\101\110\071\117\105')then Q.Enabled=true end end p()table.clear(bY)table.
clear(bk)K()end local function O(P,Q,R)local S={}for T,U in ipairs(aO.allowed[R]
)do S[U]={level=aO.level(P,Q,R,U),maximum=aO.maximum(P,aO.definition(P,R,U))}end
return S end return{recordAction=function(P,Q,R)local S=ci[P]or{calls=0,seconds=
0,failures=0,max=0}S.calls+=1 S.seconds+=Q S.max=math.max(S.max,Q)if not R then
S.failures+=1 end ci[P]=S end,dashboard=function()if os.clock()<ck then return
cl end ck=os.clock()+1 local P,Q=cC(bs,'\073\115\079\112\101\110')if P and Q and not cm then cm=os
.clock()cn.opens+=1 elseif P and not Q and cm then cn.closed_seconds+=os.clock()
-cm cm=nil end local R=cD()local S=aF['\083\104\097\114\101\100\046\084\111\111\108\085\112\103\114\097\100\101\083\104\097\114\101\100']or{}local T,U={
},{}local V={{'\068\121\110\097\109\105\116\101','\068\073\078\065\077\073\084\069'},{'\083\104\111\118\101\108','\080\065'},{'\065\117\116\111\080\101\101\108\101\114','\065\085\084\079\077\065\084\073\067\079'}
,{'\080\111\116\097\116\111\083\117\099\107\101\114','\080\048\084\052\084\048\045\051\048\048\048'},{'\066\111\100\121','\071\069\082\065\076'},{'\072\097\110\100','\077\065\079'},{'\068\114\111\110\101','\068\082\079\078\069'
}}for W,X in ipairs(V)do local Y=X[1]local Z=aO.owns(R,Y)local _,cO=0,0 local cP
=nil for cQ,cR in ipairs(S.Tools or{})do if cR.Id==Y then cP=cR.Icon end end if
Z then local cQ=O(S,R,Y)for cR,cS in ipairs(aO.allowed[Y])do local cT=cQ[cS]_+=
cT.level or 0 cO+=cT.maximum or 0 local cU=bf[Y..'\047'..cS]table.insert(U,{tool=X[
2],toolId=Y,id=cS,level=cT.level,maximum=cT.maximum,icon=cP,price=cU and cU.
price})end end table.insert(T,{id=Y,title=X[2],owned=Z,current=_,total=cO,icon=
cP})end cl={tools=T,details=U,production=aH.opAutoFinish and b7 or b6,phase=bX.
phase,cash=cE(),gemLuck=aO.level(S,R,'\066\111\100\121','\076\117\099\107')or 0,op=aH.opAutoFinish,
progress=aH.autoProgress}return cl end,droneAsked=function()b1=true end,
droneConfirm=function(cO)b0=cO==true bm=0 end,snapshot=s,findCandidate=u,release
=cI,cancelCut=cJ,reset=K,recover=L,restoreGame=N,counts=bU,purchases=bV,
manualUpgrade=cN,questMode=function(cO)if cO==aT then return end aT=cO bC=nil bE
={}bF=1 bD=0 bm=0 end,actions={keyProbe=x,drone=M,collect=y,deliver=z,cut=A,
enterCut=B,cool=C,buy=E,crank=D,stageCut=J,sell=F,returnTable=G,dynamite=w},stop
=function()cJ()aI.stop()if by then by()by=nil end if bx then cC(bs,'\083\101\116\079\112\101\110',
false)bx=false end end,defer=function(cO,cP)if cO=='\098\117\121'then bK=os.clock()+cP
end if cO=='\099\111\111\108'then bJ=os.clock()+cP end if cO=='\101\115\099\097\112\101'then bY.escape=os.
clock()+cP end end,close=function()cp=true cg.close()cJ()aI.close()aJ.close()if
by then by()by=nil end for cO,cP in ipairs(bw)do cP:Disconnect()end end,
diagnostic=function()local cO=s()local cP={}local cQ=cD()local cR=aF[
'\083\104\097\114\101\100\046\084\111\111\108\085\112\103\114\097\100\101\083\104\097\114\101\100']or{}for cS in pairs(aO.allowed)do if aO.owns(cQ,cS)
then for cT,cU in pairs(O(cR,cQ,cS))do cP[cS..'\047'..cT]=cU end end end return{
place_id=game.PlaceId,place_version=game.PlaceVersion,bindings=aJ.stats,
pile_progress=cO.pileProgress,op_funding=cO.opFunding,op_bulk=b9,dynamite_timing
=cd,key_shortcut={results=cb,guard=cc.records},upgrade_audit=bf,upgrade_levels=
cP,native_upgrade_menu={opens=cn.opens,seconds_open=cn.closed_seconds+(cm and os
.clock()-cm or 0)},state={cash=cO.cash,stock=cO.stock,goal=cO.goal and cO.goal.
name,carried=cO.carried,capacity=cO.capacity==math.huge and'\105\110\102\105\110\105\116\101'or cO.
capacity,heat=cO.heat,heat_source=cO.heatSource,cutting=cO.cutting,
production_ready=b6,sucker_overheated=be,sucker_retry_at=a8,inventory_source=bR
and'\114\101\112\108\105\099\097\116\101\100\032\080\111\116\097\116\111\101\115'or'\085\073',phase=cO.phase,upgrade_guard=a6.records,
water_flowing=cO.flowing,cut_units_per_second=cO.cutRate,delivery_pending=bZ~=
nil,equipped_request=cq},counts=bU,op_burst=cj.stats,cut_engine=bW.stats,
placement_timing=cg.stats,action_timings=ci,prompts=aI.stats,retry_at=bY,schemas
={using=aX.schema('\084\111\111\108\085\115\105\110\103'),upgrade=aX.schema('\084\111\111\108\085\112\103\114\097\100\101\080\117\114\099\104\097\115\101'),throw=aX
.schema('\068\121\110\097\109\105\116\101\084\104\114\111\119'),equip=aX.schema('\084\111\111\108\069\113\117\105\112')},buttons=aL.diagnostic()}
end}end return aD end)()local aE='\048\046\051\055\046\054'local function aF()local aG=aE local aH
=116701845804918 local aI=10767408330 local aJ=
'\104\116\116\112\115\058\047\047\114\097\119\046\103\105\116\104\117\098\117\115\101\114\099\111\110\116\101\110\116\046\099\111\109\047\065\110\111\110\121\109\111\115\083\099\114\105\112\116\115\047'local aL=
'\047\109\097\105\110\047\108\111\097\100\101\114\046\108\117\097\063\104\097\110\100\111\102\102\061'..tostring(os.time())local aM=string.format(
"\032\032\032\032\108\111\099\097\108\032\114\117\110\010\032\032\032\032\102\111\114\032\095\044\117\114\108\032\105\110\032\105\112\097\105\114\115\040\123\037\113\044\037\113\125\041\032\100\111\010\032\032\032\032\032\032\032\032\108\111\099\097\108\032\111\107\044\115\111\117\114\099\101\061\112\099\097\108\108\040\103\097\109\101\046\072\116\116\112\071\101\116\044\103\097\109\101\044\117\114\108\041\010\032\032\032\032\032\032\032\032\105\102\032\111\107\032\097\110\100\032\116\121\112\101\040\115\111\117\114\099\101\041\061\061\034\115\116\114\105\110\103\034\032\097\110\100\032\115\116\114\105\110\103\046\102\105\110\100\040\115\111\117\114\099\101\044\037\113\044\049\044\116\114\117\101\041\032\116\104\101\110\010\032\032\032\032\032\032\032\032\032\032\032\032\114\117\110\061\108\111\097\100\115\116\114\105\110\103\040\115\111\117\114\099\101\041\010\032\032\032\032\032\032\032\032\032\032\032\032\105\102\032\114\117\110\032\116\104\101\110\032\098\114\101\097\107\032\101\110\100\010\032\032\032\032\032\032\032\032\101\110\100\010\032\032\032\032\101\110\100\010"
,aJ..'\065\110\111\110\072\117\098'..aL,aJ..'\083\099\114\105\112\116\045\049\045\069\118\111\108\118\121\045\072\117\098'..aL,'\045\045\032\076\117\097\117')local aN={}for aO,aP
in ipairs({'\080\108\097\121\101\114\115','\087\111\114\107\115\112\097\099\101','\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101','\072\116\116\112\083\101\114\118\105\099\101','\082\117\110\083\101\114\118\105\099\101',
'\076\105\103\104\116\105\110\103','\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116\083\101\114\118\105\099\101','\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101','\084\119\101\101\110\083\101\114\118\105\099\101',
'\080\097\116\104\102\105\110\100\105\110\103\083\101\114\118\105\099\101','\083\116\097\114\116\101\114\071\117\105','\084\101\108\101\112\111\114\116\083\101\114\118\105\099\101'})do aN[aP]=game:GetService(
aP)end local aO,aP=pcall(game.GetService,game,'\086\105\114\116\117\097\108\085\115\101\114')if aO then aN.
VirtualUser=aP end local aQ,aR=pcall(game.GetService,game,'\067\111\114\101\071\117\105')if aQ then
aN.CoreGui=aR end local aS=aN.Players.LocalPlayer assert(aS,
'\069\120\101\099\117\116\101\032\111\032\104\117\098\032\110\111\032\099\108\105\101\110\116\101\032\082\111\098\108\111\120\032\100\101\110\116\114\111\032\100\097\032\101\120\112\101\114\105\101\110\099\105\097\046')if game.PlaceId~=aH or
game.GameId~=aI then pcall(aN.StarterGui.SetCore,aN.StarterGui,
'\083\101\110\100\078\111\116\105\102\105\099\097\116\105\111\110',{Title='\065\110\111\110\072\117\098',Text=
'\069\115\116\101\032\097\114\113\117\105\118\111\032\101\032\112\097\114\097\032\068\101\115\099\097\115\113\117\101\032\097\032\066\097\116\097\116\097\044\032\080\108\097\099\101\073\100\032'..aH,Duration=8})return end
local aT=type(getgenv)=='\102\117\110\099\116\105\111\110'and getgenv()or _G local aU=aT.
AnonymousPotatoSession if type(aU)=='\116\097\098\108\101'and type(aU.close)=='\102\117\110\099\116\105\111\110'then
pcall(aU.close)end local aV=ay.lifecycle()local aW=aq.newCancellation()local aX=
{close=aV.close,version=aG}aT.AnonymousPotatoSession=aX aa.attach(aV.close)aV.
add(function()if aT.AnonymousPotatoSession==aX then aT.AnonymousPotatoSession=
nil end end)local aY={encode=function(aY)return aN.HttpService:JSONEncode(aY)end
,decode=function(aY)return aN.HttpService:JSONDecode(aY)end}local aZ={read=type(
readfile)=='\102\117\110\099\116\105\111\110'and readfile or nil,write=type(writefile)=='\102\117\110\099\116\105\111\110'and
writefile or nil}local a_=type(queue_on_teleport)=='\102\117\110\099\116\105\111\110'and
queue_on_teleport or type(queueonteleport)=='\102\117\110\099\116\105\111\110'and queueonteleport or
type(syn)=='\116\097\098\108\101'and type(syn.queue_on_teleport)=='\102\117\110\099\116\105\111\110'and syn.
queue_on_teleport or nil local a0=string.format(
"\032\032\032\032\108\111\099\097\108\032\100\101\097\100\108\105\110\101\061\111\115\046\099\108\111\099\107\040\041\043\057\048\010\032\032\032\032\119\104\105\108\101\032\040\110\111\116\032\103\097\109\101\058\073\115\076\111\097\100\101\100\040\041\032\111\114\032\103\097\109\101\046\071\097\109\101\073\100\061\061\048\032\111\114\032\103\097\109\101\046\074\111\098\073\100\061\061\034\034\010\032\032\032\032\032\032\032\032\111\114\032\110\111\116\032\103\097\109\101\058\071\101\116\083\101\114\118\105\099\101\040\034\080\108\097\121\101\114\115\034\041\046\076\111\099\097\108\080\108\097\121\101\114\041\032\097\110\100\032\111\115\046\099\108\111\099\107\040\041\060\100\101\097\100\108\105\110\101\032\100\111\032\116\097\115\107\046\119\097\105\116\040\048\046\050\041\032\101\110\100\010\032\032\032\032\108\111\099\097\108\032\112\108\097\121\101\114\061\103\097\109\101\058\071\101\116\083\101\114\118\105\099\101\040\034\080\108\097\121\101\114\115\034\041\046\076\111\099\097\108\080\108\097\121\101\114\010\032\032\032\032\105\102\032\103\097\109\101\046\080\108\097\099\101\073\100\126\061\037\100\032\111\114\032\103\097\109\101\046\071\097\109\101\073\100\126\061\037\100\032\111\114\032\110\111\116\032\112\108\097\121\101\114\032\111\114\032\116\121\112\101\040\114\101\097\100\102\105\108\101\041\126\061\034\102\117\110\099\116\105\111\110\034\032\116\104\101\110\032\114\101\116\117\114\110\032\101\110\100\010\032\032\032\032\108\111\099\097\108\032\111\107\044\100\097\116\097\061\112\099\097\108\108\040\102\117\110\099\116\105\111\110\040\041\010\032\032\032\032\032\032\032\032\114\101\116\117\114\110\032\103\097\109\101\058\071\101\116\083\101\114\118\105\099\101\040\034\072\116\116\112\083\101\114\118\105\099\101\034\041\058\074\083\079\078\068\101\099\111\100\101\040\114\101\097\100\102\105\108\101\040\034\069\118\111\108\118\121\095\067\104\097\112\116\101\114\050\095\084\114\097\110\115\102\101\114\095\118\049\046\106\115\111\110\034\041\041\010\032\032\032\032\101\110\100\041\010\032\032\032\032\105\102\032\110\111\116\032\111\107\032\111\114\032\116\121\112\101\040\100\097\116\097\041\126\061\034\116\097\098\108\101\034\032\111\114\032\100\097\116\097\046\097\099\099\111\117\110\116\126\061\112\108\097\121\101\114\046\085\115\101\114\073\100\032\111\114\032\100\097\116\097\046\103\097\109\101\126\061\103\097\109\101\046\071\097\109\101\073\100\010\032\032\032\032\032\032\032\032\111\114\032\100\097\116\097\046\102\114\111\109\061\061\103\097\109\101\046\074\111\098\073\100\032\111\114\032\116\121\112\101\040\100\097\116\097\046\117\110\116\105\108\084\105\109\101\041\126\061\034\110\117\109\098\101\114\034\032\111\114\032\111\115\046\116\105\109\101\040\041\062\100\097\116\097\046\117\110\116\105\108\084\105\109\101\032\116\104\101\110\032\114\101\116\117\114\110\032\101\110\100\010\032\032\032\032\037\115\010\032\032\032\032\105\102\032\114\117\110\032\116\104\101\110\032\114\117\110\040\041\032\101\108\115\101\032\119\097\114\110\040\034\091\065\110\111\110\072\117\098\093\032\067\111\117\108\100\032\110\111\116\032\114\101\108\111\097\100\032\116\104\101\032\104\117\098\032\097\102\116\101\114\032\116\101\108\101\112\111\114\116\046\032\079\112\101\110\032\116\104\101\032\109\097\105\110\032\108\111\097\100\101\114\032\116\111\032\114\101\115\117\109\101\046\034\041\032\101\110\100\010"
,aH,aI,aM)local a1=ai.create({read=aZ.read,write=aZ.write,queue=a_,encode=aY.
encode,decode=aY.decode,clock=os.time},{account=aS.UserId,game=game.GameId,job=
game.JobId},a0)local a2=ay.create(aq,aY,aZ)local a3=a2.load()local a4,a5,a6=nil,
nil,nil local a7=nil local a8=nil local a9=nil local b,bb=false,false local bc=
nil local be={}local bf=nil local bg=os.clock()local bh={}local function bi()end
local function bj(bk)if a3.notifications then pcall(aN.StarterGui.SetCore,aN.
StarterGui,'\083\101\110\100\078\111\116\105\102\105\099\097\116\105\111\110',{Title='\065\110\111\110\072\117\098',Text=ac(tostring(bk)),Duration=5}
)end end local bk=os.clock()+24 aa.progress(0.5,
'\073\100\101\110\116\105\102\105\099\097\110\100\111\032\108\111\098\098\121\032\111\117\032\112\097\114\116\105\100\097\u{2026}','\073\100\101\110\116\105\102\121\105\110\103\032\108\111\098\098\121\032\111\114\032\109\097\116\099\104\u{2026}')
local bl=a1.destination()local bm=ad.stage(aN.Workspace)while(not bm or bl and
bm~=bl)and aV.alive()and os.clock()<bk do task.wait(0.2)bm=ad.stage(aN.Workspace
)end if not bm or not aV.alive()then bj(
"\079\032\104\117\098\032\110\097\111\032\101\110\099\111\110\116\114\111\117\032\111\032\108\111\098\098\121\032\110\101\109\032\097\032\097\114\101\097\032\100\101\032\112\097\114\116\105\100\097\046\032\065\103\117\097\114\100\101\032\111\032\109\097\112\097\032\101\032\101\120\101\099\117\116\101\032\110\111\118\097\109\101\110\116\101\046"
)aV.close()return end local function bn(bo)aq.pause(a3)aW.cancel()if a5 then a5.
stop()end if a4 then a4.refresh()a4.status(bo or'\082\111\116\105\110\097\115\032\112\097\117\115\097\100\097\115\046')end if bo
then bi(bo)end end aV.add(function()aW.cancel()if a5 then a5.close()end end)
local function bo()aW.cancel()if a5 then a5.restoreGame()end bf=ap.restore(aN,be
)table.clear(bh)if a4 then a4.show()a4.refresh()a4.recoveryInfo(bf)end bi(
'\082\101\099\117\112\101\114\097\099\097\111\032\100\101\032\105\110\116\101\114\102\097\099\101\058\032'..bf.restored..'\032\099\111\109\112\111\110\101\110\116\101\115\059\032'..#bf.cloned..
'\032\116\101\108\097\115\032\114\101\099\114\105\097\100\097\115\059\032'..bf.errors..'\032\102\097\108\104\097\115\046')if#bf.missing>0 then local bp=
'\079\032\106\111\103\111\032\097\105\110\100\097\032\110\097\111\032\100\105\115\112\111\110\105\098\105\108\105\122\111\117\058\032'..table.concat(bf.missing,'\044\032')..
'\046\032\078\101\110\104\117\109\032\109\111\100\101\108\111\032\114\101\099\117\112\101\114\097\118\101\108\032\102\111\105\032\101\110\099\111\110\116\114\097\100\111\046'bi(bp,'\101\114\114\111\114')end end if bm==
'\099\104\097\112\116\101\114'and a3.autoRepairGui then bo()end local bp=a1.take(bm)local bq={plan=aa
.access.plan or'\077\101\109\098\101\114',keyLabel=aa.access.keyLabel or
'\u{2022}\u{2022}\u{2022}\u{2022}',expiresAt=aa.access.expiresAt,lifetime=aa.
access.lifetime,source=aa.access.source}local br={membership=function()return ak
.describe(bq,os.time())end,expired=function()return ak.expired(bq,os.time())end}
local bs=aa.startNow==true local function bt(bu)if br.expired()then return false
,'\065\032\108\105\099\101\110\099\097\032\101\120\112\105\114\111\117\046'end local bv=ai.options(bu)if bv.reconnectCount>=2 then
return false,'\076\105\109\105\116\101\032\100\101\032\114\101\099\111\110\101\120\111\101\115\032\097\116\105\110\103\105\100\111\046\032\065\098\114\097\032\111\032\106\111\103\111\032\110\111\118\097\109\101\110\116\101\046'end bv.
reconnectCount+=1 local bw,bx=a1.arm('\108\111\098\098\121',bv)if not bw then a1.clear()return
false,bx end local by=pcall(aN.TeleportService.Teleport,aN.TeleportService,aH,aS
)if not by then a1.clear()return false,'\079\032\082\111\098\108\111\120\032\114\101\099\117\115\111\117\032\097\032\114\101\099\111\110\101\120\097\111\046'end return
true end local function bu(bv)local bw=al.create(aN.VirtualUser and aS.Idled,
function()return aV.alive()and a3.antiAfk and bv()end,function()aN.VirtualUser:
CaptureController()aN.VirtualUser:ClickButton2(Vector2.new(0,0))end,bi)aV.add(bw
.close)return bw end if bm=='\108\111\098\098\121'then aa.progress(0.8,
'\065\098\114\105\110\100\111\032\097\032\099\101\110\116\114\097\108\032\100\111\032\108\111\098\098\121\u{2026}','\079\112\101\110\105\110\103\032\116\104\101\032\108\111\098\098\121\032\112\097\110\101\108\u{2026}')local bv=
aq.validate({movement='\087\097\108\107',travelTimeout=20},true)local bw=aA.create(aN,bv,bi)
aV.add(bw.close)local bx=aC.create(aN,aq)ad.open(aN,aV,br,bx,bw,a1,ai.options,bp
,bs or bp~=nil,{idle=bu,reconnect=bt,watch=function(by,bz)aj.watch(aN,aV,by,bz)
end,features=ae.create(aN,bx,bw,aV),settings=ag({read=aZ.read,write=aZ.write,
encode=aY.encode,decode=aY.decode},aS.UserId),view=af.create,rarest=ae.rarest,
language=aa.chooseLanguage})aa.ready()return end bs=bs or bp~=nil local bv=bs
local bw=nil local bx=nil local by,bz=nil,nil local bA,bB={},0 local function bC
()by=nil bz=nil if a5 then a5.questMode(nil)end end local bD=bp and bp.repeatRun
==true or false if bp then a3.skipEndingScene=bp.skipOutro a3.
releaseEndingCamera=bp.skipOutro if bp.autoCrates then a3.collectPumpkins=true
end end local bE,bF=false,nil local bG=false local bH=nil local function bI()bD=
false bv=false bx=nil bC()a1.clear()end local bJ={'\083\104\097\114\101\100\046\080\108\097\121\101\114\083\116\097\116\101\083\104\097\114\101\100',
'\083\104\097\114\101\100\046\080\111\116\097\116\111\080\105\108\101\083\104\097\114\101\100','\083\104\097\114\101\100\046\080\111\116\097\116\111\075\105\110\100\083\104\097\114\101\100','\083\104\097\114\101\100\046\080\111\116\097\116\111\072\111\108\100\083\104\097\114\101\100',
'\083\104\097\114\101\100\046\080\111\116\097\116\111\084\097\098\108\101\083\104\097\114\101\100','\083\104\097\114\101\100\046\067\097\114\114\121\085\112\103\114\097\100\101\083\104\097\114\101\100','\083\104\097\114\101\100\046\067\117\116\084\111\111\108\083\104\097\114\101\100',
'\083\104\097\114\101\100\046\084\111\111\108\085\112\103\114\097\100\101\083\104\097\114\101\100','\083\104\097\114\101\100\046\070\105\114\101\083\104\097\114\101\100','\077\111\100\117\108\101\115\046\082\101\115\111\117\114\099\101\115\046\080\114\105\099\101\115',
'\077\111\100\117\108\101\115\046\082\101\115\111\117\114\099\101\115\046\080\097\099\107\101\116\115','\067\111\110\116\114\111\108\108\101\114\115\046\083\121\110\099\067\111\110\116\114\111\108\108\101\114',
'\067\111\110\116\114\111\108\108\101\114\115\046\080\111\116\097\116\111\080\105\108\101\067\111\110\116\114\111\108\108\101\114','\067\111\110\116\114\111\108\108\101\114\115\046\080\111\116\097\116\111\084\097\098\108\101\067\111\110\116\114\111\108\108\101\114',
'\067\111\110\116\114\111\108\108\101\114\115\046\080\101\101\108\105\110\103\067\111\110\116\114\111\108\108\101\114','\067\111\110\116\114\111\108\108\101\114\115\046\067\117\116\116\105\110\103\067\111\110\116\114\111\108\108\101\114',
'\067\111\110\116\114\111\108\108\101\114\115\046\070\105\114\101\067\111\110\116\114\111\108\108\101\114','\067\111\110\116\114\111\108\108\101\114\115\046\083\116\111\114\101\086\105\101\119\067\111\110\116\114\111\108\108\101\114',
'\067\111\110\116\114\111\108\108\101\114\115\046\084\111\111\108\085\112\103\114\097\100\101\067\111\110\116\114\111\108\108\101\114','\067\111\110\116\114\111\108\108\101\114\115\046\084\111\111\108\069\113\117\105\112\067\111\110\116\114\111\108\108\101\114',
'\067\111\110\116\114\111\108\108\101\114\115\046\067\104\097\112\116\101\114\050\079\117\116\114\111\067\111\110\116\114\111\108\108\101\114','\077\111\100\105\102\105\101\100\080\097\099\107\097\103\101\115\046\080\097\099\107\101\116\046\095\084\121\112\101\115'}for bK,bL
in ipairs(bJ)do if not aV.alive()then return end if bK==1 or bK%4==0 then aa.
progress(0.5+0.35*(bK-1)/#bJ,'\067\097\114\114\101\103\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115\032\100\111\032\106\111\103\111\u{2026}',
'\076\111\097\100\105\110\103\032\103\097\109\101\032\102\101\097\116\117\114\101\115\u{2026}')end local bM=aN.ReplicatedStorage for bN in
string.gmatch(bL,'\091\094\037\046\093\043')do bM=bM and bM:FindFirstChild(bN)end if bM and bM:
IsA('\077\111\100\117\108\101\083\099\114\105\112\116')then local bN,bO,bP=false,false,nil task.spawn(function()bO,
bP=pcall(require,bM)bN=true end)local bQ=os.clock()+6 while not bN and aV.alive(
)and os.clock()<bQ do task.wait(0.05)end if bN and bO and type(bP)=='\116\097\098\108\101'then
be[bL]=bP end end end if not aV.alive()then return end local bK=aA.create(aN,a3,
bi)local bL=aB.create(be,aN,bi,as,at,nil,am)aV.add(bL.close)local bM,bN=pcall(bL
.discover)if not bM then bi('\076\101\105\116\117\114\097\032\100\111\032\109\097\112\097\032\110\097\116\105\118\111\032\105\110\100\105\115\112\111\110\105\118\101\108\058\032'..tostring(bN
),'\101\114\114\111\114')end bL.requestSync()local bO=os.clock()+1.2 while aV.alive()and not bL
.ready()and os.clock()<bO do task.wait(0.05)end if not aV.alive()then bL.close()
return end local bP=aC.create(aN,aq)a5=aD.create(aN,be,aq,a3,bK,bL,bP,bi,ax,av,
aw,au,an)a7=ao.create(aN,be,bK,bi)a8=ao.endingSkipper(aS.PlayerGui,bP,os.clock,
function()local bQ=aN.Workspace.CurrentCamera local bR=aS.Character local bS=bR
and bR:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')if not bQ or bQ.CameraType~=Enum.
CameraType.Scriptable or not bS or bS.Health<=0 then return false end bQ.
CameraSubject=bS bQ.CameraType=Enum.CameraType.Custom return true end,function()
local bQ=aN.Workspace.CurrentCamera return bQ and bQ.CameraType.Name end)local
bQ=be['\077\111\100\117\108\101\115\046\082\101\115\111\117\114\099\101\115\046\080\097\099\107\101\116\115']or{}for bR,bS in ipairs({
'\067\105\110\101\109\097\116\105\099\066\097\114\115\069\110\097\098\108\101\100','\067\105\110\101\109\097\116\105\099\066\097\114\115\068\105\115\097\098\108\101\100','\082\117\110\082\101\112\111\114\116\083\104\111\119\110','\069\115\099\097\112\101\070\097\105\108\101\100'})
do local bT=bQ[bS]local bU=bT and bT.OnClientEvent if bU and type(bU.Connect)==
'\102\117\110\099\116\105\111\110'then local bV=bS local bW,bX=pcall(bU.Connect,bU,function()if bV==
'\082\117\110\082\101\112\111\114\116\083\104\111\119\110'then bF=os.clock()end a8.event(bV)end)if bW and bX then aV.add(
function()bX:Disconnect()end)end end end local bR=be[
'\067\111\110\116\114\111\108\108\101\114\115\046\067\104\097\112\116\101\114\050\079\117\116\114\111\067\111\110\116\114\111\108\108\101\114']or{}local function bS(bT)local bU=a8.stats
if not bT or bU.outro_attempted or bU.sent or os.clock()-bT>12 or type(bR.
IsPlaying)~='\102\117\110\099\116\105\111\110'or type(bR.Cancel)~='\102\117\110\099\116\105\111\110'then return end local bV,bW=
pcall(bR.IsPlaying)if not bV or bW~=true then return end bU.outro_attempted=true
local bX=pcall(bR.Cancel,nil)local bY,bZ=pcall(bR.IsPlaying)bU.outro_stopped=bX
and bY and bZ==false a8.event(bU.outro_stopped and'\111\117\116\114\111\095\099\097\110\099\101\108\095\099\111\110\102\105\114\109\101\100'or
'\111\117\116\114\111\095\099\097\110\099\101\108\095\117\110\099\111\110\102\105\114\109\101\100')end local function bT()local bU=aS.PlayerGui local bV
=nil local bW={returntolobby=true,backtolobby=true,lobby=true,voltaraolobby=true
}for bX,bY in ipairs(bU:GetChildren())do local bZ=bY.Name:lower()if bY:IsA(
'\083\099\114\101\101\110\071\117\105')and bY.Enabled and(bZ=='\101\115\099\097\112\101'or bZ=='\118\105\099\116\111\114\121'or bZ=='\114\117\110\114\101\112\111\114\116'or
bZ=='\114\117\110\114\101\115\117\108\116\115'or bZ=='\111\117\116\114\111')then for b_,b0 in ipairs(bY:GetDescendants())do
if b0:IsA('\071\117\105\066\117\116\116\111\110')and b0.Active and bP.visible(b0)then local b1=bP.texts(b0)
:lower():gsub('\091\094\037\119\093','')local b2=b0.Name:lower():gsub('\091\094\037\119\093','')if bW[b1]or bW
[b2]then if bV then return false end bV=b0 end end end end end return bV and bP.
activate(bV)or false end local bU=aN.TeleportService.TeleportInitFailed:Connect(
function(bU,bV,bW,bX)if bU==aS and bX==aH and bE then bI()bH=
'\079\032\082\111\098\108\111\120\032\114\101\099\117\115\111\117\032\097\032\118\111\108\116\097\032\097\111\032\108\111\098\098\121\046\032\082\101\116\111\114\110\101\032\109\097\110\117\097\108\109\101\110\116\101\046'bi(bH,'\101\114\114\111\114')end end)
aV.add(function()bU:Disconnect()end)local bW=aS.OnTeleport:Connect(function(bW,
bX)if bE and bX==aH and(bW.Name=='\082\101\113\117\101\115\116\101\100\070\114\111\109\083\101\114\118\101\114'or bW.Name=='\083\116\097\114\116\101\100'or bW
.Name=='\073\110\080\114\111\103\114\101\115\115')then bG=true end end)aV.add(function()bW:Disconnect()end)
local function bX()if not bD or bE then return end local bY=a7.finishTime()local
bZ=os.clock()-bY local b_,b0=false,true if bZ>=24 and type(bR.IsPlaying)==
'\102\117\110\099\116\105\111\110'then b_,b0=pcall(bR.IsPlaying)end if(not bF or bF<bY-8)and not(b_ and
b0==false)then bH='\086\073\084\079\082\073\065\032\067\079\078\070\073\082\077\065\068\065\032\047\032\065\071\085\065\082\068\065\078\068\079\032\082\069\083\085\076\084\065\068\079\032\080\065\082\065\032\086\079\076\084\065\082'if bc
and os.clock()-bg-bc>60 then bI()bH=
'\079\032\114\101\108\097\116\111\114\105\111\032\102\105\110\097\108\032\110\097\111\032\099\104\101\103\111\117\046\032\086\111\108\116\101\032\097\111\032\108\111\098\098\121\032\109\097\110\117\097\108\109\101\110\116\101\046'end return end bE=
true bH='\086\073\084\079\082\073\065\032\067\079\078\070\073\082\077\065\068\065\032\047\032\086\079\076\084\065\078\068\079\032\065\079\032\076\079\066\066\089'local b1=ai.options(bp)b1.
reconnectCount=0 local b2,b3=a1.arm('\108\111\098\098\121',b1)if not b2 then bI()bH=b3 bi(b3,
'\101\114\114\111\114')return end local b4=bT()task.delay(b4 and 5 or 2,function()if not aV.
alive()or not bD or bG or br.expired()then return end local b5=pcall(aN.
TeleportService.Teleport,aN.TeleportService,aH,aS)if not b5 then bI()bH=
'\065\032\118\111\108\116\097\032\097\117\116\111\109\097\116\105\099\097\032\102\097\108\104\111\117\046\032\082\101\116\111\114\110\101\032\097\111\032\108\111\098\098\121\032\112\101\108\111\032\106\111\103\111\046'bi(bH,'\101\114\114\111\114')end end)
task.delay(25,function()if aV.alive()and bD and not bG then bI()bH=
'\079\032\082\111\098\108\111\120\032\110\097\111\032\099\111\110\102\105\114\109\111\117\032\097\032\118\111\108\116\097\032\097\111\032\108\111\098\098\121\046'bi(bH,'\101\114\114\111\114')end end)end aj.watch(aN,
aV,function()return bD and not bE and not b and not br.expired()end,function(bY)
bE=true bn('\067\111\110\101\120\097\111\032\112\101\114\100\105\100\097\032\040'..bY..'\041\059\032\116\101\110\116\097\110\100\111\032\118\111\108\116\097\114\032\097\111\032\108\111\098\098\121\046')local bZ,b_=
bt(bp)if not bZ then bI()bH=b_ bi(b_,'\101\114\114\111\114')return end task.delay(25,function()
if aV.alive()and bD and not bG then bI()bH='\079\032\082\111\098\108\111\120\032\110\097\111\032\099\111\110\102\105\114\109\111\117\032\097\032\114\101\099\111\110\101\120\097\111\046'
bi(bH,'\101\114\114\111\114')end end)end)aV.add(a7.close)a5.actions.escape=function(bY)a5.
cancelCut()local bZ,b_=a7.step(bY)a5.defer('\101\115\099\097\112\101',bZ and 2 or 5)return bZ,b_
end local bY=nil local bZ={keyProgress='\097\117\116\111\080\114\111\103\114\101\115\115',keyCut='\097\117\116\111\067\117\116',keyFarm=
'\097\117\116\111\070\097\114\109',keyCool='\097\117\116\111\067\111\111\108',keyBuy='\097\117\116\111\066\117\121\084\111\111\108\115',keyDeliver='\097\117\116\111\068\101\108\105\118\101\114',
keyPumpkin='\099\111\108\108\101\099\116\080\117\109\112\107\105\110\115',keyStorage='\097\117\116\111\066\117\121\083\116\111\114\097\103\101',keyUpgrades=
'\097\117\116\111\066\117\121\085\112\103\114\097\100\101\115',keyCrank='\097\117\116\111\067\114\097\110\107',keySell='\097\117\116\111\083\101\108\108',keyDynamite=
'\097\117\116\111\068\121\110\097\109\105\116\101'}local b_={'\097\117\116\111\070\097\114\109','\097\117\116\111\068\101\108\105\118\101\114','\097\117\116\111\067\117\116','\097\117\116\111\067\111\111\108',
'\097\117\116\111\066\117\121\084\111\111\108\115','\097\117\116\111\066\117\121\085\112\103\114\097\100\101\115','\097\117\116\111\066\117\121\083\116\111\114\097\103\101','\097\117\116\111\067\114\097\110\107','\097\117\116\111\083\101\108\108',
'\097\117\116\111\068\121\110\097\109\105\116\101','\097\117\116\111\069\115\099\097\112\101'}local b0={}for b1,b2 in ipairs(b_)do b0[b2]=true end
local function b1(b2)return aq.displayed(a3,b2)end local function b2()aW.cancel(
)a5.stop()a5.reset()table.clear(bh)if a4 then a4.refresh()end end local function
b3()if b or br.expired()then a4.status(b and'\080\097\114\116\105\100\097\032\099\111\110\099\108\117\105\100\097\046'or
'\076\105\099\101\110\099\097\032\101\120\112\105\114\097\100\097\046')return end bC()aq.applyPartyProfile(a3)b2()bi(
'\080\101\114\102\105\108\032\105\110\105\099\105\097\100\111\058\032'..a3.partyProfile..(a3.partyProfile=='\084\101\097\109'and'\032\047\032'..a3.
partyRole or''))end local function b4(b5,b6)if a3[b5]==nil then return end if b5
=='\112\097\114\116\121\080\114\111\102\105\108\101'or b5=='\112\097\114\116\121\082\111\108\101'or b5=='\112\097\114\116\121\083\105\122\101'or b5=='\112\097\114\116\121\083\108\111\116'then a3[b5
]=aq.validate({[b5]=b6},false)[b5]if a4 then a4.refresh()end return end if b5==
'\097\117\116\111\066\117\121\068\114\111\110\101'and b6==true then a5.droneConfirm(false)end if b6==true and(b5==
'\111\112\065\117\116\111\070\105\110\105\115\104'or b5=='\097\117\116\111\080\114\111\103\114\101\115\115'or b0[b5]or b5=='\099\111\108\108\101\099\116\080\117\109\112\107\105\110\115')and br.
expired()then if a4 then a4.status(
'\076\105\099\101\110\099\097\032\101\120\112\105\114\097\100\097\046\032\086\097\108\105\100\101\032\117\109\097\032\107\101\121\032\097\116\105\118\097\032\112\097\114\097\032\099\111\110\116\105\110\117\097\114\046')end return end if a3[b5
]==b6 and not(a3.autoProgress and b0[b5])then return end if b5=='\097\117\116\111\067\111\111\108'and a3
.autoProgress and b6==false then if a4 then a4.status(
"\079\032\114\101\115\102\114\105\097\109\101\110\116\111\032\102\097\122\032\112\097\114\116\101\032\100\111\032\065\117\116\111\032\080\114\111\103\114\101\115\115\046\032\080\097\117\115\101\032\111\032\099\105\099\108\111\032\112\097\114\097\032\100\101\115\108\105\103\097\045\108\111\046")a4
.refresh()end return end if a3.autoProgress and b0[b5]and type(b6)=='\098\111\111\108\101\097\110'
then for b7,b8 in ipairs(b_)do a3[b8]=aq.effective(a3,b8)end a3.autoProgress=
false a3.opAutoFinish=false end if b5=='\097\117\116\111\066\117\121\084\111\111\108\115'and b6==false then a3.
cutBuyTools=false end local b7=aq.clone(a3)b7[b5]=b6 if b6==true and b5==
'\097\117\116\111\080\114\111\103\114\101\115\115'then b7.opAutoFinish=false end if b6==true and b5=='\111\112\065\117\116\111\070\105\110\105\115\104'
then b7.autoProgress=false end if b6==true and(b5=='\111\112\065\117\116\111\070\105\110\105\115\104'or b5==
'\097\117\116\111\080\114\111\103\114\101\115\115')then b7.teamFunding=false b7.teamLead=false b7.supportCut=false
b7.nativeWalkUpgrade=false end local b8=aq.validate(b7,false)for b9,c in pairs(
b8)do a3[b9]=c end if b5=='\111\112\065\117\116\111\070\105\110\105\115\104'and b6 or b5=='\097\117\116\111\080\114\111\103\114\101\115\115'and not b6
then bC()end local b9=string.sub(b5,1,2)=='\117\105'or string.sub(b5,1,6)=='\098\117\116\116\111\110'if
not b9 then b2()elseif a4 then a4.refresh()end end aa.progress(0.9,
'\077\111\110\116\097\110\100\111\032\111\115\032\099\111\110\116\114\111\108\101\115\u{2026}','\066\117\105\108\100\105\110\103\032\116\104\101\032\099\111\110\116\114\111\108\115\u{2026}')a4=az.create(aN,
a3,{decorateLauncher=aa.decorateLauncher,value=b1,change=b4,parseNumber=aq.
parseAmount,membership=br.membership,startProfile=b3,manualUpgrade=function(b5,
b6)if br.expired()or b then return end if bx then bj(
'\085\109\097\032\109\101\108\104\111\114\105\097\032\106\097\032\101\115\116\097\032\110\097\032\102\105\108\097\046')return end bx={b5,b6}bj(ac(
'\083\111\108\105\099\105\116\097\100\097\032\109\101\108\104\111\114\105\097\032')..b5..'\032\047\032'..b6..'\046')end,selectQuest=function(b5)if br.
expired()or b then return end if by==b5 then bC()bj(
'\080\114\105\111\114\105\100\097\100\101\032\100\101\032\109\105\115\115\097\111\032\114\101\109\111\118\105\100\097\046')return end for b6,b7 in ipairs(bA)do if b7.id==
b5 then if b7.done then bj('\079\032\106\111\103\111\032\106\097\032\099\111\110\102\105\114\109\111\117\032\101\115\115\097\032\109\105\115\115\097\111\046')return end if not
b7.action then bj('\079\098\106\101\116\105\118\111\032\115\101\109\032\114\111\116\097\032\097\117\116\111\109\097\116\105\099\097\032\099\111\110\102\105\114\109\097\100\097\046')return end b4(
'\097\117\116\111\080\114\111\103\114\101\115\115',true)by=b5 bz=b7.action a5.questMode(b7.action)bj(ac(
'\080\114\105\111\114\105\100\097\100\101\058\032')..b7.title)return end end end,save=function()local b5,b6=a2.save(
a3)bi(b6,b5 and'\105\110\102\111'or'\101\114\114\111\114')bj(b6)end,pause=function()bI()bn(
'\080\097\117\115\097\100\111\032\112\101\108\111\032\112\097\105\110\101\108\046')end,bind=function(b5)if not aN.UserInputService.
KeyboardEnabled then a4.status(
"\085\115\101\032\111\115\032\099\111\110\116\114\111\108\101\115\032\112\111\114\032\116\111\113\117\101\059\032\097\116\097\108\104\111\115\032\115\097\111\032\111\112\099\105\111\110\097\105\115\032\112\097\114\097\032\116\101\099\108\097\100\111\046")return end
if bY==b5 then bY=nil a4.status('\069\100\105\099\097\111\032\100\101\032\097\116\097\108\104\111\032\099\097\110\099\101\108\097\100\097\046')return end bY=b5
a4.status("\080\114\101\115\115\105\111\110\101\032\117\109\097\032\116\101\099\108\097\032\112\097\114\097\032\111\032\097\116\097\108\104\111\059\032\069\115\099\032\099\097\110\099\101\108\097\032\101\032\066\097\099\107\115\112\097\099\101\032\114\101\109\111\118\101\046"
)end,language=aa.chooseLanguage,close=function()bI()aa.unload()end,restore=bo,
layout=function(b5)local b6=aq.clone(a3)for b7,b8 in pairs(b5)do b6[b7]=b8 end
local b7=aq.validate(b6,false)for b8,b9 in pairs(b7)do a3[b8]=b9 end if a4 then
a4.refresh()end end},ar,ak)aV.add(function()if a4 then a4.close()end end)a9=bu(
function()return aq.anyActive(a3)end)a4.refresh()if bf then a4.recoveryInfo(bf)
end aa.ready()if bs then a4.status('\065\103\117\097\114\100\097\110\100\111\032\111\032\112\101\114\115\111\110\097\103\101\109\032\112\097\114\097\032\105\110\105\099\105\097\114\032\111\032\079\080\046')
else a4.status('\080\114\111\110\116\111\046\032\067\111\110\102\105\103\117\114\101\032\117\109\032\109\111\100\111\032\101\032\097\116\105\118\101\032\097\032\114\111\116\105\110\097\032\100\101\115\101\106\097\100\097\046')end local
b5=aN.UserInputService.InputBegan:Connect(function(b5,b6)if not aV.alive()then
return end if bY then if b5.UserInputType~=Enum.UserInputType.Keyboard then
return end local b7=bY bY=nil if b5.KeyCode==Enum.KeyCode.Escape then a4.status(
'\065\116\097\108\104\111\032\099\097\110\099\101\108\097\100\111\046')return end local b8=b5.KeyCode==Enum.KeyCode.Backspace and
'\078\111\110\101'or b5.KeyCode.Name for b9,c in pairs(a3)do if b9~=b7 and string.sub(b9,1,3
)=='\107\101\121'and b8~='\078\111\110\101'and c==b8 then a4.status(string.format(ac(
'\069\115\115\097\032\116\101\099\108\097\032\106\097\032\101\115\116\097\032\101\109\032\117\115\111\032\112\111\114\032\037\115\046'),b9))return end end b4(b7,b8)a4.status(
'\065\116\097\108\104\111\032\097\116\117\097\108\105\122\097\100\111\046')return end if aN.UserInputService:GetFocusedTextBox()then
return end local b7=b5.KeyCode.Name if b7==a3.keyPause and b7~='\078\111\110\101'then bI()
bn('\080\097\117\115\097\100\111\032\112\101\108\111\032\097\116\097\108\104\111\046')return end if b6 then return end if b7==a3.keyMenu and
b7~='\078\111\110\101'then a4.toggle()return end for b8,b9 in pairs(bZ)do if a3[b8]~='\078\111\110\101'
and b7==a3[b8]then b4(b9,not b1(b9))return end end if a6 and a3.pauseOnMovement
and({W=true,A=true,S=true,D=true,Space=true,Up=true,Down=true,Left=true,Right=
true})[b7]then bI()bn('\080\097\117\115\097\100\111\032\112\111\114\032\101\110\116\114\097\100\097\032\109\097\110\117\097\108\032\100\101\032\109\111\118\105\109\101\110\116\111\046')end end)aV.add(
function()b5:Disconnect()end)local b6=aS.CharacterAdded:Connect(function(b6)if
bv or b6==bw then return end bn('\080\101\114\115\111\110\097\103\101\109\032\114\101\099\097\114\114\101\103\097\100\111\059\032\114\111\116\105\110\097\115\032\112\097\117\115\097\100\097\115\046')a5.
reset()if bD and not b then bv=true end if a3.autoRepairGui then local b7=aS.
Character task.delay(1,function()if aV.alive()and aS.Character==b7 then bo()end
end)end end)aV.add(function()b6:Disconnect()end)local b7={keyProbe=
'\084\101\115\116\097\110\100\111\032\099\104\097\118\101\032\097\110\116\101\099\105\112\097\100\097',escape='\073\110\100\111\032\112\097\114\097\032\097\032\115\097\105\100\097\032\099\111\109\032\097\032\099\104\097\118\101',drone=
'\067\111\109\112\114\097\110\100\111\032\100\114\111\110\101',cool='\082\101\115\102\114\105\097\110\100\111',collect='\067\111\108\101\116\097\110\100\111',deliver='\069\110\116\114\101\103\097\110\100\111',cut
='\067\111\114\116\097\110\100\111',enterCut='\073\110\100\111\032\112\097\114\097\032\097\032\109\101\115\097',buy='\067\111\109\112\114\097\110\100\111',crank='\071\105\114\097\110\100\111\032\099\111\114\116\097\100\111\114'
,search='\073\110\100\101\120\097\110\100\111\032\101\032\115\101\108\101\099\105\111\110\097\110\100\111',stageCut='\065\098\097\115\116\101\099\101\110\100\111\032\097\032\109\101\115\097',sell='\086\101\110\100\101\110\100\111'
,returnTable='\082\101\116\111\114\110\097\110\100\111\032\097\032\109\101\115\097',dynamite='\076\097\110\099\097\110\100\111\032\100\105\110\097\109\105\116\101'}local b8=0 local
b9=aN.RunService.Heartbeat:Connect(function()if not aV.alive()or os.clock()<b8
then return end b8=os.clock()+0.5 if bv and not b and not br.expired()and bK.
actor()then bv=false bw=aS.Character b4('\111\112\065\117\116\111\070\105\110\105\115\104',true)bi(bp and
'\079\080\032\114\101\116\111\109\097\100\111\032\097\112\111\115\032\099\111\110\102\105\114\109\097\114\032\111\032\112\101\114\115\111\110\097\103\101\109\032\100\097\032\112\097\114\116\105\100\097\046'or
'\079\080\032\105\110\105\099\105\097\100\111\032\112\101\108\097\032\116\101\108\097\032\100\097\032\107\101\121\046')end bK.updateCamera()local b9=br.membership()if
os.clock()>=bB then bB=os.clock()+1.5 local c,ca=pcall(ah.scan,aS.PlayerGui)if c
then bA=ca end if by then local cb=nil for cc,cd in ipairs(bA)do if cd.id==by
then cb=cd break end end if cb and cb.done then bi(
'\077\105\115\115\097\111\032\099\111\110\102\105\114\109\097\100\097\032\112\101\108\111\032\106\111\103\111\058\032'..cb.title)bj(
'\077\105\115\115\097\111\032\099\111\110\099\108\117\105\100\097\046\032\086\111\108\116\097\110\100\111\032\097\111\032\065\117\116\111\032\080\114\111\103\114\101\115\115\032\110\111\114\109\097\108\046')bC()end end a4.quests(bA,
by)end if a4.membership then a4.membership(b9)end if b9.expired and not bb then
bb=true bn('\076\105\099\101\110\099\097\032\101\120\112\105\114\097\100\097\059\032\114\111\116\105\110\097\115\032\112\097\117\115\097\100\097\115\046')end local c,ca=pcall(a5.
snapshot)if not c then bi('\070\097\108\104\097\032\100\101\032\108\101\105\116\117\114\097\058\032'..tostring(ca),'\101\114\114\111\114')return end
if ca.askDrone then a5.droneAsked()a4.confirmDrone(function(cb)a5.droneConfirm(
cb)end)end local cb=ca.deliveryGoal or aq.deliveryGoal(a3,ca.capacity)local cc=
ca.cash and string.format('\036\037\046\050\102',ca.cash)or'\105\110\100\105\115\112\111\110\105\118\101\108'local cd=ca.capacity==
math.huge and'\u{221e}'or ca.capacity and tostring(ca.capacity)or'\063'local ce=ca.
carried and tostring(ca.carried)..'\047'..cd or'\105\110\100\105\115\112\111\110\105\118\101\108'local cf=ca.heat and
string.format('\037\046\048\102\037\037',ca.heat)or'\115\111\109\101\110\116\101\032\097\118\105\115\111\032\100\111\032\106\111\103\111'local cg=a6 and b7[a6]or
'\065\103\117\097\114\100\097\110\100\111\032\114\111\116\105\110\097\032\111\117\032\114\101\099\117\114\115\111\032\100\105\115\112\111\110\105\118\101\108'local ch=ca.stock and tostring(ca.stock
)or'\063'local ci=ca.goal and ca.goal.name or'\099\111\108\101\116\097\114\032\101\032\099\111\114\116\097\114'a4.summary(string.
format(ac(
"\037\115\032\032\124\032\032\066\111\108\115\097\058\032\037\115\010\069\110\116\114\101\103\097\058\032\037\115\032\032\124\032\032\067\111\114\116\097\100\097\115\058\032\037\115\047\037\100\010\077\101\116\097\058\032\037\115\010\067\097\108\111\114\058\032\037\115\032\032\124\032\032\071\101\109\097\115\058\032\037\100\010\037\046\049\102\032\099\111\114\116\097\100\097\115\047\115\032\124\032\037\115\032\124\032\118\101\110\100\097\115\058\032\037\100"
),ac(cc),ac(ce),cb and tostring(cb)or'\063',ch,a3.sellThreshold,ac(ci),ac(cf),a5.
counts.gems,ca.cutRate or 0,ac(cg),a5.counts.sales))if a4.dashboard then local
cj=a5.dashboard()local ck=a7.diagnostic()a8.poll(ck.started or ck.finished,a3.
skipEndingScene and not b9.expired)if a3.skipEndingScene and not b9.expired then
bS(a7.finishTime())end a8.afterVictory(ck.finished,a3.skipEndingScene and a3.
releaseEndingCamera and not b9.expired)if ck.finished and not b then b=true bc=(
a7.finishTime()or os.clock())-bg bn('\067\097\112\105\116\117\108\111\032\050\032\099\111\110\099\108\117\105\100\111\059\032\114\111\116\105\110\097\115\032\112\097\117\115\097\100\097\115\046')
end if ck.finished and not b9.expired then bX()end cj.hasKey=ck.has_key cj.
finished=ck.finished cj.role=nil if aq.anyActive(a3)then if a3.teamLead then cj.
role='\069\081\085\073\080\069\032\032\047\032\032\076\073\068\069\082\032\079\080'elseif a3.teamFunding then cj.role=
'\069\081\085\073\080\069\032\032\047\032\032\067\079\076\069\084\065\032\069\032\069\078\084\082\069\071\065'elseif a3.supportCut then cj.role=a3.
nativeWalkUpgrade and'\071\082\085\080\079\032\077\073\083\084\079\032\032\047\032\032\065\080\079\073\079'or'\069\081\085\073\080\069\032\032\047\032\032\067\079\082\084\069\032\069\032\086\069\078\068\065'end end
a4.dashboard(cj,bc or os.clock()-bg)end if b or bH then cg=bH or
'\067\065\080\073\084\085\076\079\032\073\073\032\067\079\078\067\076\085\073\068\079\032\032\047\032\032\082\079\084\073\078\065\083\032\080\065\085\083\065\068\065\083'elseif b9.expired then cg=
'\076\073\067\069\078\067\065\032\069\088\080\073\082\065\068\065\032\032\047\032\032\082\079\084\073\078\065\083\032\080\065\085\083\065\068\065\083'end if not bY then a4.status(cg)end if a6
and a6~='\099\111\111\108'and ca.needCooling and aq.effective(a3,'\097\117\116\111\067\111\111\108')and os.clock()>=
ca.coolingRetryAt then aW.cancel()a5.stop()end end)aV.add(function()b9:
Disconnect()end)task.spawn(function()while aV.alive()do local c=aW.current()
local function ca()return aV.alive()and aW.valid(c)and not br.expired()end local
cb,cc=pcall(function()if b or a7.finishTime()or br.expired()then return end
local cb=a5.snapshot()cb.hasKey=a7.ready()cb.questAction=a3.autoProgress and bz
or nil local cc=bK.actor()~=nil if not cc then return end if bx and not cb.
needCooling then local cd=bx bx=nil a6='\098\117\121'local ce,cf=a5.manualUpgrade(cd[1],
cd[2],ca)a6=nil if ca()then bj(cf or(ce and'\077\101\108\104\111\114\105\097\032\099\111\110\102\105\114\109\097\100\097\046'or
'\077\101\108\104\111\114\105\097\032\110\097\111\032\099\111\110\102\105\114\109\097\100\097\046'))end return end local cd=aq.choose(a3,cb,os.clock())
if cd=='\105\100\108\101'and not cb.mountainEmpty and(aq.effective(a3,'\097\117\116\111\070\097\114\109')or aq.
effective(a3,'\097\117\116\111\068\121\110\097\109\105\116\101'))and not(aq.batchCollect(a3)and cb.opBurst and cb.
opBurst.pending>0)and(aq.effective(a3,'\097\117\116\111\068\121\110\097\109\105\116\101')or a3.collectPumpkins or cb
.carried and cb.capacity and cb.carried<cb.capacity)then a6='\115\101\097\114\099\104'local ce,cf=
a5.findCandidate(ca)a6=nil if cf then bi(cf,'\101\114\114\111\114')end if not ca()then return
end cb=a5.snapshot()cb.hasKey=a7.ready()cb.questAction=a3.autoProgress and bz or
nil cb.hasCandidate=ce~=nil cd=aq.choose(a3,cb,os.clock())end if cd=='\105\100\108\101'or
not ca()then return end a6=cd local ce=os.clock()local cf,cg=a5.actions[cd](ca)
a5.recordAction(cd,os.clock()-ce,cf)a6=nil if not ca()then return end if cf then
bh[cd]=0 else bh[cd]=(bh[cd]or 0)+1 bi((b7[cd]or cd)..'\058\032'..tostring(cg),'\101\114\114\111\114'
)if cd=='\098\117\121'then a5.defer(cd,3)end if cd=='\099\111\111\108'then a5.defer(cd,a3.
coolingRetry)end if a3.autoRecover then a5.recover(cd,bh[cd])if bh[cd]==3 then
bi('\082\101\099\117\112\101\114\097\099\097\111\032\097\117\116\111\109\097\116\105\099\097\032\100\101\032'..(b7[cd]or cd)..'\059\032\111\117\116\114\097\115\032\101\116\097\112\097\115\032\099\111\110\116\105\110\117\097\109\046')end
elseif bh[cd]>=3 and cd~='\098\117\121'and cd~='\101\110\116\101\114\067\117\116'and cd~='\115\101\108\108'and cd~='\100\121\110\097\109\105\116\101'
then bn(string.format(ac('\082\111\116\105\110\097\115\032\112\097\117\115\097\100\097\115\032\097\112\111\115\032\116\114\101\115\032\102\097\108\104\097\115\032\101\109\032\037\115\046'),ac(b7[cd]or
cd)))bj('\082\111\116\105\110\097\032\112\097\117\115\097\100\097\046\032\082\101\097\116\105\118\101\032\112\097\114\097\032\116\101\110\116\097\114\032\110\111\118\097\109\101\110\116\101\046')end if bh[cd]>=3 and(cd
=='\098\117\121'or cd=='\101\110\116\101\114\067\117\116'or cd=='\115\101\108\108'or cd=='\100\121\110\097\109\105\116\101')then bh[cd]=0 bi(
'\065\032\101\116\097\112\097\032\102\111\105\032\097\100\105\097\100\097\059\032\097\115\032\111\117\116\114\097\115\032\114\111\116\105\110\097\115\032\099\111\110\116\105\110\117\097\109\046')end end end)if not cb then
local cd=a6 or'\099\111\108\108\101\099\116'a6=nil a5.stop()bi('\070\097\108\104\097\032\100\101\032\101\120\101\099\117\099\097\111\058\032'..tostring(cc),
'\101\114\114\111\114')if a3.autoRecover then bh[cd]=(bh[cd]or 0)+1 a5.recover(cd,bh[cd])else
bn('\070\097\108\104\097\032\100\101\032\101\120\101\099\117\099\097\111\059\032\099\111\110\116\114\111\108\101\115\032\114\101\115\116\097\117\114\097\100\111\115\046')end end task.wait(aq.
tickInterval(a3))end end)end aF()end a['\117\110\105\118\101\114\115\097\108\047\109\097\105\110\046\108\117\097']=function(...)local
aa='\048\046\051\055\046\056'local ab=...if type(ab)~='\116\097\098\108\101'then return end local ac=game:
GetService('\080\108\097\121\101\114\115')local ad=game:GetService('\082\117\110\083\101\114\118\105\099\101')local ae=game:
GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101')local af=game:GetService('\087\111\114\107\115\112\097\099\101')local ag=ae.
TouchEnabled local function ah()return ag and(ae.PreferredInput==nil or ae.
PreferredInput==Enum.PreferredInput.Touch)end local ai=ah()local aj=game.GameId
~=8795154789 and game.PlaceId~=136801880565837 and game.GameId~=6035872082 and
game.PlaceId~=17625359962 local ak=ac.LocalPlayer local al=ab.ui local am=al.
color local function an(ao,ap)return ab.language=='\112\116'and ao or ap end local ao=
{theme='\099\097\114\098\111\110',width=560,height=610,scale=ai and 70 or 100,launcher=48,opacity=
100,panelX=0.5,panelY=0.5,buttonX=0,buttonY=1,espMode='\111\117\116\108\105\110\101',espColor='\116\104\101\109\101'
,espHex='\070\070\055\065\056\068',espRange=850,espThrough=true,espNick='\100\105\115\112\108\097\121',espDistance=true
,espTeam=true,espLabels='\115\099\114\101\101\110',espCustomRigs=true,aimActivation='\097\117\116\111',
aimResponse='\115\109\111\111\116\104',aimTouchSide='\108\101\102\116',aimAdaptiveFov=true,aimPriority=
'\099\101\110\116\101\114',aimPart='\104\101\097\100',aimCircle='\101\110\097\098\108\101\100',aimCircleColor='\116\104\101\109\101',aimRadius=175
,aimOffsetX=0,aimOffsetY=0,aimWidth=1,aimRange=850,aimSpeed=24,cameraFov=80,
aimTeam=true,aimObstacles='\118\105\115\105\098\108\101',aimSticky=true,aimCustomCamera=true,aimLabel
=true}local ap={width={300,900},height={340,880},scale={65,140},launcher={40,90}
,opacity={60,100},panelX={0,1},panelY={0,1},buttonX={0,1},buttonY={0,1},espRange
={100,1500},aimRadius={30,500},aimOffsetX={-130,130},aimOffsetY={-130,130},
aimWidth={1,4},aimRange={75,1500},aimSpeed={3,70},cameraFov={35,120}}local aq={{
'\111\117\116\108\105\110\101','\067\111\110\116\111\114\110\111','\079\117\116\108\105\110\101'},{'\098\111\120','\067\097\105\120\097\032\050\068','\050\068\032\098\111\120'},{'\110\097\109\101\115',
'\078\111\109\101\032\101\032\100\105\115\116\u{e2}\110\099\105\097','\078\097\109\101\032\097\110\100\032\100\105\115\116\097\110\099\101'},{'\102\117\108\108','\067\111\109\112\108\101\116\111','\070\117\108\108'}}local ar
={{'\116\104\101\109\101','\084\101\109\097','\084\104\101\109\101'},{'\116\101\097\109','\069\113\117\105\112\101','\084\101\097\109'},{'\114\101\100','\086\101\114\109\101\108\104\111','\082\101\100',
'\070\070\054\055\055\056'},{'\099\121\097\110','\067\105\097\110\111','\067\121\097\110','\053\055\069\053\070\070'},{'\108\105\109\101','\076\105\109\097','\076\105\109\101','\066\051\070\055\054\048'},{
'\103\111\108\100','\068\111\117\114\097\100\111','\071\111\108\100','\070\070\068\049\054\054'},{'\118\105\111\108\101\116','\086\105\111\108\101\116\097','\086\105\111\108\101\116','\067\069\057\066\070\070'},{
'\119\104\105\116\101','\066\114\097\110\099\111','\087\104\105\116\101','\070\057\070\056\070\070'},{'\099\117\115\116\111\109','\072\101\120\097\100\101\099\105\109\097\108','\067\117\115\116\111\109\032\104\101\120'}}local
as={{'\100\105\115\112\108\097\121','\078\111\109\101\032\100\101\032\101\120\105\098\105\u{e7}\u{e3}\111','\068\105\115\112\108\097\121\032\110\097\109\101'},{'\117\115\101\114\110\097\109\101',
'\064\085\115\117\u{e1}\114\105\111','\064\085\115\101\114\110\097\109\101'},{'\098\111\116\104','\078\111\109\101\032\043\032\064\117\115\117\u{e1}\114\105\111','\078\097\109\101\032\043\032\064\117\115\101\114\110\097\109\101'},
{'\111\102\102','\079\099\117\108\116\097\114\032\110\111\109\101','\072\105\100\101\032\110\097\109\101'}}local at={{'\097\117\116\111','\065\117\116\111\109\u{e1}\116\105\099\111',
'\065\117\116\111\109\097\116\105\099'},{'\104\111\108\100','\083\101\103\117\114\097\114','\072\111\108\100'},{'\116\111\103\103\108\101','\084\111\113\117\101\032\097\108\116\101\114\110\097','\084\097\112\032\116\111\032\116\111\103\103\108\101'
},{'\097\108\119\097\121\115','\067\111\110\116\u{ed}\110\117\097','\067\111\110\116\105\110\117\111\117\115'}}local au={{'\108\101\102\116','\069\115\113\117\101\114\100\097','\076\101\102\116'},{
'\114\105\103\104\116','\068\105\114\101\105\116\097','\082\105\103\104\116'}}local av={{'\115\109\111\111\116\104','\083\117\097\118\101','\083\109\111\111\116\104'},{'\115\110\097\112',
'\068\105\114\101\116\097','\068\105\114\101\099\116'}}if aj then table.insert(av,{'\115\105\108\101\110\116','\083\105\108\101\110\099\105\111\115\097','\083\105\108\101\110\116'})
end local aw={{'\118\105\115\105\098\108\101','\076\105\110\104\097\032\108\105\118\114\101','\067\108\101\097\114\032\108\105\110\101'},{'\101\102\102\101\099\116\115',
'\073\103\110\111\114\097\114\032\101\102\101\105\116\111\115','\073\103\110\111\114\101\032\101\102\102\101\099\116\115'},{'\116\104\114\111\117\103\104','\065\116\114\u{e1}\115\032\100\101\032\111\098\115\116\u{e1}\099\117\108\111\115',
'\066\101\104\105\110\100\032\111\098\115\116\097\099\108\101\115'}}local ax={{'\115\099\114\101\101\110','\078\097\032\116\101\108\097\032\040\050\068\041','\083\099\114\101\101\110\032\040\050\068\041'},{'\119\111\114\108\100',
'\078\111\032\112\101\114\115\111\110\097\103\101\109\032\040\051\068\041','\079\110\032\099\104\097\114\097\099\116\101\114\032\040\051\068\041'}}local ay={{'\099\101\110\116\101\114','\080\101\114\116\111\032\100\097\032\109\105\114\097',
'\078\101\097\114\032\099\114\111\115\115\104\097\105\114'},{'\100\105\115\116\097\110\099\101','\080\101\114\116\111\032\100\111\032\106\111\103\097\100\111\114','\078\101\097\114\032\112\108\097\121\101\114'}}local az={{
'\104\101\097\100','\067\097\098\101\u{e7}\097','\072\101\097\100'},{'\098\111\100\121','\084\114\111\110\099\111','\084\111\114\115\111'},{'\114\111\111\116','\067\101\110\116\114\111','\082\111\111\116'}}
local aA={{'\101\110\097\098\108\101\100','\065\111\032\108\105\103\097\114\032\097\032\109\105\114\097','\087\104\105\108\101\032\101\110\097\098\108\101\100'},{'\097\099\116\105\118\101',
'\083\u{f3}\032\097\111\032\109\105\114\097\114','\087\104\105\108\101\032\097\105\109\105\110\103'},{'\111\102\102','\079\099\117\108\116\111','\072\105\100\100\101\110'}}local aB={ar[1],ar[
3],ar[4],ar[8]}local function aC(aD,aE)for aF,aG in ipairs(aD)do if aG[1]==aE
then return aG end end end local function aD(aE)local aF=type(aE)=='\115\116\114\105\110\103'and
aE:match('\094\037\115\042\035\063\040\037\120\037\120\037\120\037\120\037\120\037\120\041\037\115\042\036')return aF and aF:upper()or nil end local aE=
table.clone(ao)local aF=type(ab.settings)=='\116\097\098\108\101'and ab.settings or{}for aG,aH
in pairs(ap)do local aI=aF[aG]if aG=='\115\099\097\108\101'then if ai then aI=aF.mobileScale
else aI=aF.desktopScale or aI end end if type(aI)=='\110\117\109\098\101\114'and aI==aI then aE[aG
]=math.clamp(aI,aH[1],aH[2])end end if aC(al.themes,aF.theme)then aE.theme=aF.
theme end if aC(aq,aF.espMode)then aE.espMode=aF.espMode end if aC(ar,aF.
espColor)then aE.espColor=aF.espColor end aE.espHex=aD(aF.espHex)or ao.espHex
for aG,aH in pairs({espNick=as,espLabels=ax,aimActivation=at,aimResponse=av,
aimTouchSide=au,aimObstacles=aw,aimPriority=ay,aimPart=az,aimCircle=aA,
aimCircleColor=aB})do if aC(aH,aF[aG])then aE[aG]=aF[aG]end end if not aC(aw,aF.
aimObstacles)and aF.aimVisible==false then aE.aimObstacles='\116\104\114\111\117\103\104'end for aG,
aH in ipairs({'\101\115\112\084\104\114\111\117\103\104','\101\115\112\068\105\115\116\097\110\099\101','\101\115\112\072\101\097\108\116\104','\101\115\112\084\101\097\109','\101\115\112\067\117\115\116\111\109\082\105\103\115',
'\097\105\109\084\101\097\109','\097\105\109\065\100\097\112\116\105\118\101\070\111\118','\097\105\109\083\116\105\099\107\121','\097\105\109\067\117\115\116\111\109\067\097\109\101\114\097','\097\105\109\076\097\098\101\108'})do if type(
aF[aH])=='\098\111\111\108\101\097\110'then aE[aH]=aF[aH]end end local function aG()local aH=table.
clone(aE)aH.mobileScale=ai and aE.scale or aF.mobileScale aH.desktopScale=ai and
(aF.desktopScale or aF.scale or 100)or aE.scale ab.saveSettings(aH)end local
function aH()if aE.aimActivation~='\097\117\116\111'then return aE.aimActivation end return
ah()and'\116\111\103\103\108\101'or'\104\111\108\100'end local function aI()if aE.espHealth~=nil then return
aE.espHealth end return aE.espMode=='\102\117\108\108'end al.setTheme(aE.theme)local aJ=ak:
WaitForChild('\080\108\097\121\101\114\071\117\105')local aL=al.make('\083\099\114\101\101\110\071\117\105',{Name='\065\110\111\110\072\117\098\085\110\105\118\101\114\115\097\108',
ResetOnSpawn=false,DisplayOrder=10030},aJ)local aM=al.make('\070\114\097\109\101',{Size=UDim2.
fromScale(1,1),BackgroundTransparency=1},aL)local aN=al.make('\070\114\097\109\101',{Name=
'\085\110\105\118\101\114\115\097\108\080\097\110\101\108',AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,
0.5),BackgroundColor3='\064\100\097\114\107',BorderSizePixel=0,ClipsDescendants=true},aM)local
aO=al.make('\085\073\083\099\097\108\101',{Scale=1},aN)al.make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,16
)},aN)al.make('\085\073\083\116\114\111\107\101',{Color='\064\101\100\103\101',Thickness=1},aN)local aP=al.make('\070\114\097\109\101'
,{Name='\072\101\097\100\101\114',Size=UDim2.new(1,0,0,62),BackgroundColor3='\064\100\097\114\107',
BorderSizePixel=0,Active=true,ClipsDescendants=true},aN)al.make('\070\114\097\109\101',{Size=
UDim2.new(1,0,0,1),Position=UDim2.new(0,0,1,-1),BackgroundColor3='\064\101\100\103\101',
BorderSizePixel=0},aP)local aQ=al.label(aP,'\084\101\120\116\076\097\098\101\108','\065',30,0)aQ.Position,aQ.
Size=UDim2.fromOffset(16,16),UDim2.fromOffset(30,30)aQ.BackgroundTransparency=0
aQ.Font,aQ.TextSize=Enum.Font.GothamBlack,17 al.paint(aQ,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051',
'\097\099\099\101\110\116')al.paint(aQ,'\084\101\120\116\067\111\108\111\114\051','\100\097\114\107')al.make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.
new(0,9)},aQ)if ab.decorateArtwork then local aR=al.make('\073\109\097\103\101\076\097\098\101\108',{Size=
UDim2.fromScale(1,1),BackgroundTransparency=1,ScaleType=Enum.ScaleType.Crop,
ZIndex=aQ.ZIndex+1},aQ)al.make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,9)},aR)ab.
decorateArtwork(aR)end local aR=al.label(aP,'\084\101\120\116\076\097\098\101\108','\065\110\111\110\072\117\098',25,1)aR.
Position,aR.Size=UDim2.fromOffset(56,11),UDim2.new(1,-110,0,25)aR.Font,aR.
TextSize,aR.TextXAlignment=Enum.Font.GothamBold,19,Enum.TextXAlignment.Left
local aS=al.label(aP,'\084\101\120\116\076\097\098\101\108',an('\067\069\078\084\082\065\076\032\085\078\073\086\069\082\083\065\076','\085\078\073\086\069\082\083\065\076\032\087\079\082\075\083\080\065\067\069'),
16,2)aS.Position,aS.Size=UDim2.fromOffset(57,35),UDim2.new(1,-112,0,16)aS.Font,
aS.TextSize,aS.TextXAlignment=Enum.Font.Code,10,Enum.TextXAlignment.Left al.
paint(aS,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local aT=al.make('\070\114\097\109\101',{Name='\078\097\118\105\103\097\116\105\111\110',
BackgroundColor3='\064\116\105\108\101',BorderSizePixel=0},aN)al.make('\085\073\067\111\114\110\101\114',{CornerRadius=
UDim.new(0,10)},aT)local aU=al.label(aT,'\084\101\120\116\076\097\098\101\108',an('\u{c1}\082\069\065\032\068\069\032\084\082\065\066\065\076\072\079',
'\087\079\082\075\083\080\065\067\069'),18,0)aU.Position,aU.Size=UDim2.fromOffset(14,10),UDim2.new(1,-24,0,
18)aU.Font,aU.TextSize,aU.TextXAlignment=Enum.Font.Code,9,Enum.TextXAlignment.
Left al.paint(aU,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local aV=32 local aW=al.make('\070\114\097\109\101',{Name
='\083\101\115\115\105\111\110\083\116\097\116\117\115',Position=UDim2.new(0,0,1,-aV),Size=UDim2.new(1,0,0,aV),
BorderSizePixel=0,BackgroundColor3='\064\100\097\114\107'},aN)al.make('\070\114\097\109\101',{Size=UDim2.new(1
,0,0,1),BackgroundColor3='\064\101\100\103\101',BorderSizePixel=0},aW)local aX=al.make('\070\114\097\109\101',
{Position=UDim2.fromOffset(15,13),Size=UDim2.fromOffset(6,6),BorderSizePixel=0,
BackgroundColor3='\064\097\099\099\101\110\116'},aW)al.make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},
aX)local aY=al.label(aW,'\084\101\120\116\076\097\098\101\108','',32,0)aY.Position,aY.Size=UDim2.
fromOffset(28,0),UDim2.new(1,-104,1,0)aY.Font,aY.TextSize,aY.TextXAlignment=Enum
.Font.Code,11,Enum.TextXAlignment.Left local aZ=al.label(aW,'\084\101\120\116\076\097\098\101\108','\118'..aa,
32,0)aZ.Position,aZ.Size=UDim2.new(1,-77,0,0),UDim2.fromOffset(61,32)aZ.Font,aZ.
TextSize,aZ.TextXAlignment=Enum.Font.Code,11,Enum.TextXAlignment.Right al.paint(
aZ,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local a_={}local a0={}local a1={}local a2=0 local a3={}
local a4=true local a5={}local function a6()local a7=ah()and an('\084\079\081\085\069','\084\079\085\067\072')
or an('\084\069\067\076\065\068\079','\075\069\089\066\079\065\082\068')local a8=a5.aim and an('\077\073\082\065\032\079\078','\065\073\077\032\079\078')or an(
'\077\073\082\065\032\079\070\070','\065\073\077\032\079\070\070')aY.Text=a7..'\032\032\047\032\032'..a8..'\032\032\047\032\032\069\083\080\032'..(a5.esp and'\079\078'or
'\079\070\070')al.paint(aY,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')al.paint(aX,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051',(a5.aim or
a5.esp)and'\097\099\116\105\118\101'or'\097\099\099\101\110\116')end local a7={speed=24,fly=55}local a8={}local a9={
}local b={}local bb,bc,be,bf,bg local bh,bi,bj,bk,bl local bm local bn=false
local bo={up=false,down=false,aim=false}local function bp(bq,br)local bs=bq:
Connect(br)table.insert(a3,bs)return bs end local function bq(br)local bs=br and
br:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local bt=br and br:FindFirstChild(
'\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if bs and bs.Health>0 and bt and bt:IsA('\066\097\115\101\080\097\114\116')then
return bs,bt end end local function br(bs,bt)local bu=bs:FindFirstChild(bt)or bs
:FindFirstChild(bt,true)if bu and bu:IsA('\066\097\115\101\080\097\114\116')then return bu end end local
function bs(bt)if not bt or not bt.Parent or not bt:IsA('\077\111\100\101\108')then return end
local bu=bt:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local bv=br(bt,'\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')
or(bu and bu.RootPart)or bt.PrimaryPart or br(bt,'\085\112\112\101\114\084\111\114\115\111')or br(bt,'\084\111\114\115\111')
or br(bt,'\072\101\097\100')if bv then return bt,bv,bu end end local bt={'\067\104\097\114\097\099\116\101\114\115',
'\080\108\097\121\101\114\067\104\097\114\097\099\116\101\114\115','\065\108\105\118\101','\080\108\097\121\101\114\115'}local bu={'\067\104\097\114\097\099\116\101\114\077\111\100\101\108','\067\104\097\114\097\099\116\101\114'}
local function bv(bw,bx)local by,bz,bA=bs(bw.Character)if by or not bx then
return by,bz,bA end for bB,bC in ipairs(bu)do local bD=bw:FindFirstChild(bC)if
bD and bD:IsA('\079\098\106\101\099\116\086\097\108\117\101')then by,bz,bA=bs(bD.Value)if by then return by,bz,bA
end end end for bB,bC in ipairs(bt)do local bD=af:FindFirstChild(bC)if bD then
by,bz,bA=bs(bD:FindFirstChild(bw.Name)or bD:FindFirstChild(tostring(bw.UserId)))
if by then return by,bz,bA end end end end local function bw(bx,by)return bx~=ak
and(not by or ak.Neutral or bx.Neutral or not ak.Team or bx.Team~=ak.Team)end
local function bx(by)if by and by.object.Parent and by.object[by.property]==by.
applied then by.object[by.property]=by.original end end local function by(bz,bA,
bB,bC)if not bz or bz.object~=bA then bx(bz)bz={object=bA,property=bB,original=
bA[bB]}elseif bz.applied~=nil and bA[bB]~=bz.applied then bz.original=bA[bB]end
bA[bB]=bC bz.applied=bC return bz end local function bz()if bc then bc:
Disconnect()bc=nil end bb=nil for bA,bB in pairs(b)do if bB and bA.Parent and
not bA.CanCollide then bA.CanCollide=true end end table.clear(b)end local
function bA(bB)bz()bb=bB local function bC(bD)if bD:IsA('\066\097\115\101\080\097\114\116')and b[bD]==
nil then b[bD]=false end end for bD,bE in ipairs(bB:GetDescendants())do bC(bE)
end bc=bB.DescendantAdded:Connect(bC)end local function bB()if not be then
return end be.velocity:Destroy()be.attachment:Destroy()be=nil end local function
bC()if bh then bh:Destroy()bh=nil end if bi then bi:Destroy()bi=nil end table.
clear(a9)end local function bD()bz()bB()bx(bf)bf=nil end local function bE()
table.clear(a5)bo.up,bo.down,bo.aim=false,false,false bk,bl,bn=nil,nil,false if
bm then table.clear(bm)bm=nil end bD()bC()bx(bg)bg=nil for bF,bG in ipairs(a8)do
bG()end end local bF='\065\110\111\110\072\117\098\085\110\105\118\101\114\115\097\108\095'..tostring(ak.UserId)local function bG()
if not a4 then return end a4=false ad:UnbindFromRenderStep(bF)for bH,bI in
ipairs(a3)do bI:Disconnect()end table.clear(a3)bE()if bj then bj:Destroy()end aL
:Destroy()end ab.attach(bG)if not a4 then return end local function bH(bI)for bJ
,bK in pairs(a_)do local bL=bJ==bI bK.Visible=bL a0[bJ].BackgroundTransparency=
bL and 0 or 1 al.paint(a0[bJ],'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051','\100\097\114\107')local bM=a1[bJ]al.paint(
bM.caption,'\084\101\120\116\067\111\108\111\114\051',bL and'\097\099\099\101\110\116'or'\109\117\116\101\100')bM.marker.Visible=bL end end
local function bI(bJ,bK,bL,bM)a2+=1 local bN=a2 local bO=al.label(aT,
'\084\101\120\116\066\117\116\116\111\110','',40,0)bO.Name=bJ..'\084\097\098'bO.AutoButtonColor=false al.make(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,7)},bO)local bP=al.label(bO,'\084\101\120\116\076\097\098\101\108',bK,
40,0)bP.Font,bP.TextSize=Enum.Font.GothamBold,12 local bQ=al.make('\070\114\097\109\101',{
BackgroundColor3='\064\097\099\099\101\110\116',BorderSizePixel=0},bO)al.make('\085\073\067\111\114\110\101\114',{
CornerRadius=UDim.new(1,0)},bQ)local bR=al.label(bO,'\084\101\120\116\076\097\098\101\108',string.format(
'\037\048\050\100',bN),18,0)bR.Position,bR.Size=UDim2.fromOffset(10,11),UDim2.fromOffset(21,
18)bR.Font,bR.TextSize=Enum.Font.Code,10 al.paint(bR,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local
bS=al.make('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Name=bJ,BackgroundTransparency=1,BorderSizePixel=0,
CanvasSize=UDim2.fromOffset(0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,
ScrollBarThickness=3,ScrollBarImageColor3='\064\097\099\099\101\110\116',ScrollingDirection=Enum.
ScrollingDirection.Y,ElasticBehavior=Enum.ElasticBehavior.Never,Visible=false},
aN)al.make('\085\073\080\097\100\100\105\110\103',{PaddingRight=UDim.new(0,6),PaddingBottom=UDim.new(0,8)},
bS)al.make('\085\073\076\105\115\116\076\097\121\111\117\116',{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.
new(0,8)},bS)local bT=al.make('\070\114\097\109\101',{Size=UDim2.new(1,0,0,60),LayoutOrder=0,
BackgroundTransparency=1},bS)local bU=al.label(bT,'\084\101\120\116\076\097\098\101\108',bK,28,0)bU.Font,bU
.TextSize,bU.TextXAlignment=Enum.Font.GothamBold,23,Enum.TextXAlignment.Left
local bW=al.label(bT,'\084\101\120\116\076\097\098\101\108',bL,28,0)bW.Position=UDim2.fromOffset(0,29)bW.
TextSize,bW.TextXAlignment,bW.TextYAlignment=12,Enum.TextXAlignment.Left,Enum.
TextYAlignment.Top al.paint(bW,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')a_[bJ],a0[bJ]=bS,bO a1[bJ]={
index=bN,marker=bQ,number=bR,caption=bP,title=bK,compactTitle=bM or bK}bp(bO.
Activated,function()bH(bJ)end)return bS end local bJ=bI('\099\111\110\116\114\111\108\115',an(
'\067\111\110\116\114\111\108\101\115','\067\111\110\116\114\111\108\115'),an('\074\111\103\111\032\097\116\117\097\108\032\101\032\097\116\097\108\104\111\115\032\100\101\032\109\111\118\105\109\101\110\116\111\046',
'\067\117\114\114\101\110\116\032\103\097\109\101\032\097\110\100\032\109\111\118\101\109\101\110\116\032\115\104\111\114\116\099\117\116\115\046'),an('\073\110\u{ed}\099\105\111','\072\111\109\101'))local bK=bI(
'\103\097\109\101\115',an('\074\111\103\111\115','\071\097\109\101\115'),an(
'\077\u{f3}\100\117\108\111\115\032\100\101\100\105\099\097\100\111\115\032\100\105\115\112\111\110\u{ed}\118\101\105\115\032\110\111\032\065\110\111\110\072\117\098\046',
'\068\101\100\105\099\097\116\101\100\032\109\111\100\117\108\101\115\032\097\118\097\105\108\097\098\108\101\032\105\110\032\065\110\111\110\072\117\098\046'))local bL=bI('\097\105\109',an('\077\105\114\097','\065\105\109'),
an('\065\106\117\115\116\101\032\097\032\114\101\115\112\111\115\116\097\044\032\111\115\032\097\108\118\111\115\032\101\032\111\032\099\097\109\112\111\032\100\101\032\118\105\115\u{e3}\111\046',
'\065\100\106\117\115\116\032\114\101\115\112\111\110\115\101\044\032\116\097\114\103\101\116\115\044\032\097\110\100\032\102\105\101\108\100\032\111\102\032\118\105\101\119\046'))local bM=bI('\118\105\115\105\111\110','\069\083\080',an(
'\067\111\110\102\105\103\117\114\101\032\097\032\097\112\114\101\115\101\110\116\097\u{e7}\u{e3}\111\032\100\111\115\032\106\111\103\097\100\111\114\101\115\032\110\097\032\116\101\108\097\046',
'\067\104\111\111\115\101\032\104\111\119\032\112\108\097\121\101\114\115\032\097\114\101\032\100\105\115\112\108\097\121\101\100\032\111\110\032\115\099\114\101\101\110\046'))local bN=bI('\115\101\116\116\105\110\103\115',an(
'\065\106\117\115\116\101\115','\083\101\116\116\105\110\103\115'),an(
'\080\101\114\115\111\110\097\108\105\122\101\032\097\032\097\112\097\114\u{ea}\110\099\105\097\032\101\032\097\032\112\111\115\105\u{e7}\u{e3}\111\032\100\111\032\112\097\105\110\101\108\046',
'\067\117\115\116\111\109\105\122\101\032\116\104\101\032\097\112\112\101\097\114\097\110\099\101\032\097\110\100\032\112\097\110\101\108\032\112\111\115\105\116\105\111\110\046'))bH('\099\111\110\116\114\111\108\115')al.gameCatalog(bK,
ab.language,1)al.gameCard(bJ,ab.identity,an(
'\083\069\083\083\u{c3}\079\032\065\084\073\086\065\032\u{b7}\032\077\u{d3}\068\085\076\079\032\085\078\073\086\069\082\083\065\076',
'\065\067\084\073\086\069\032\083\069\083\083\073\079\078\032\u{b7}\032\085\078\073\086\069\082\083\065\076\032\077\079\068\085\076\069'),2,true)local bO=ab.access local bP if
type(bO)=='\116\097\098\108\101'then local bQ=bO.plan=='\080\114\101\109\105\117\109'local bR=al.make('\070\114\097\109\101',{Name=
'\077\101\109\098\101\114\115\104\105\112',AnchorPoint=Vector2.new(1,0),Position=UDim2.new(1,-58,0,6),
BackgroundColor3='\064\116\105\108\101',BorderSizePixel=0},aP)al.make('\085\073\067\111\114\110\101\114',{CornerRadius=
UDim.new(0,9)},bR)local bS=al.make('\085\073\083\116\114\111\107\101',{Color='\064\101\100\103\101',Thickness=1},bR)
local bT=al.make('\073\109\097\103\101\076\097\098\101\108',{Position=UDim2.fromOffset(7,9),Size=UDim2.
fromOffset(32,32),Image=string.format(
'\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\065\118\097\116\097\114\072\101\097\100\083\104\111\116\038\105\100\061\037\100\038\119\061\049\048\048\038\104\061\049\048\048',ak.UserId),BackgroundColor3=
'\064\100\097\114\107',BorderSizePixel=0},bR)al.make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},bT
)local bU=al.label(bR,'\084\101\120\116\076\097\098\101\108',ak.DisplayName or ak.Name,15,0)bU.Position,bU.
Size=UDim2.fromOffset(46,3),UDim2.new(1,-115,0,15)bU.Font,bU.TextSize,bU.
TextXAlignment=Enum.Font.GothamBold,12,Enum.TextXAlignment.Left bU.TextWrapped,
bU.TextTruncate=false,Enum.TextTruncate.AtEnd local bW=al.label(bR,'\084\101\120\116\076\097\098\101\108',
'\064'..ak.Name,14,0)bW.Position,bW.Size=UDim2.fromOffset(46,18),UDim2.new(1,-53,0,
14)bW.TextSize,bW.TextXAlignment=10,Enum.TextXAlignment.Left bW.TextWrapped,bW.
TextTruncate=false,Enum.TextTruncate.AtEnd al.paint(bW,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')
local bX=al.label(bR,'\084\101\120\116\076\097\098\101\108',bQ and'\080\082\069\077\073\085\077'or'\077\069\077\066\069\082',15,0)bX.Position,bX.
Size=UDim2.new(1,-63,0,4),UDim2.fromOffset(57,15)bX.Font,bX.TextSize,bX.
BackgroundTransparency=Enum.Font.GothamBold,10,0 al.make('\085\073\067\111\114\110\101\114',{
CornerRadius=UDim.new(0,6)},bX)al.paint(bX,'\084\101\120\116\067\111\108\111\114\051','\100\097\114\107')if bQ then local
bY=Color3.fromRGB(248,208,130)bX.BackgroundColor3,bS.Color=bY,bY else al.paint(
bX,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051','\097\099\099\101\110\116')end local bY=al.label(bR,'\084\101\120\116\076\097\098\101\108','',15,0)bY.
Position=UDim2.fromOffset(46,32)bY.Font,bY.TextSize,bY.TextXAlignment=Enum.Font.
GothamMedium,11,Enum.TextXAlignment.Left bY.TextWrapped,bY.TextTruncate=false,
Enum.TextTruncate.AtEnd al.paint(bY,'\084\101\120\116\067\111\108\111\114\051','\097\099\116\105\118\101')local bZ=bO.expiresAt
and os.date(an('\033\037\100\047\037\109\047\037\089\032\037\072\058\037\077\032\085\084\067','\033\037\089\045\037\109\045\037\100\032\037\072\058\037\077\032\085\084\067'),bO.expiresAt)local
b_=al.label(bR,'\084\101\120\116\076\097\098\101\108',bO.keyLabel,13,0)b_.Position,b_.Size=UDim2.new(1,-63,
0,19),UDim2.fromOffset(57,13)b_.Font,b_.TextSize,b_.TextXAlignment=Enum.Font.
Code,9,Enum.TextXAlignment.Right al.paint(b_,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local b0=al.
label(bR,'\084\101\120\116\076\097\098\101\108',bZ or'',15,0)b0.Position,b0.Size=UDim2.new(1,-113,0,32),
UDim2.fromOffset(107,15)b0.Font,b0.TextSize,b0.TextXAlignment=Enum.Font.Code,9,
Enum.TextXAlignment.Right al.paint(b0,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')bP=function(b1)local
b2=b1>=360 local b3=math.min(254,math.max(0,b1-(b2 and 206 or 110)))local b4=
math.max(0,b1-b3-122)local b5=b2 and b4>=122 bR.Size=UDim2.fromOffset(b3,50)aR.
Visible,aS.Visible=b2,b5 aR.Position=UDim2.fromOffset(56,b5 and 11 or 18)aR.Size
,aS.Size=UDim2.fromOffset(b4,25),UDim2.fromOffset(b4,16)b_.Visible=b3>=206 bW.
Size=UDim2.new(1,b_.Visible and-113 or-53,0,14)b0.Visible=bZ~=nil and b3>=248 bY
.Size=UDim2.new(1,b0.Visible and-163 or-53,0,15)end local function b1()if not a4
or not bR.Parent then return end if bO.lifetime then bY.Text=an(
'\065\099\101\115\115\111\032\118\105\116\097\108\u{ed}\099\105\111','\076\105\102\101\116\105\109\101\032\097\099\099\101\115\115')elseif bO.deadline or bO.expiresAt
then local b2=math.max(0,bO.deadline and(bO.deadline-os.clock())or(bO.expiresAt-
os.time()))if b2<=0 then bY.Text=an('\065\099\101\115\115\111\032\101\120\112\105\114\097\100\111','\065\099\099\101\115\115\032\101\120\112\105\114\101\100')elseif b2
<60 then bY.Text=string.format(an('\082\101\115\116\097\109\032\037\100\115','\037\100\115\032\108\101\102\116'),math.ceil(b2))task.
delay(1,b1)else local b3=math.ceil(b2/60)bY.Text=string.format(an(
'\082\101\115\116\097\109\032\037\100\104\032\037\048\050\100\109','\037\100\104\032\037\048\050\100\109\032\108\101\102\116'),math.floor(b3/60),b3%60)task.delay((b2%60)+
0.05,b1)end else bY.Text=an('\086\097\108\105\100\097\100\101\032\110\u{e3}\111\032\105\110\102\111\114\109\097\100\097','\069\120\112\105\114\121\032\117\110\097\118\097\105\108\097\098\108\101')
end end b1()end al.resources(bJ,1,ab.language,function()bH('\103\097\109\101\115')end)a6()local
function bQ(bR,bS,bT)local bU=al.make('\070\114\097\109\101',{Size=UDim2.new(1,0,0,26),
LayoutOrder=bT,BackgroundTransparency=1},bR)al.make('\070\114\097\109\101',{Size=UDim2.new(1,0,
0,1),BackgroundColor3='\064\101\100\103\101',BorderSizePixel=0},bU)local bW=al.label(bU,
'\084\101\120\116\076\097\098\101\108',bS,20,0)bW.Position=UDim2.fromOffset(0,6)al.paint(bW,'\084\101\120\116\067\111\108\111\114\051',
'\109\117\116\101\100')bW.Font=Enum.Font.Code bW.TextSize=11 bW.TextXAlignment=Enum.
TextXAlignment.Left end local function bR(bS,bT)return al.make('\070\114\097\109\101',{Size=
UDim2.new(1,0,0,44),LayoutOrder=bT,BackgroundTransparency=1},bS)end local
function bS(bT,bU,bW)local bX=al.button(bT,'',bW)bX.Name=bU bX.AutoButtonColor=
false local bY=al.label(bX,'\084\101\120\116\076\097\098\101\108',bU,42,0)bY.Position,bY.Size=UDim2.
fromOffset(11,0),UDim2.new(1,-56,1,0)bY.TextSize,bY.TextXAlignment=12,Enum.
TextXAlignment.Left local bZ=al.make('\070\114\097\109\101',{AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,-10,0.5,0),Size=UDim2.fromOffset(31,16),BorderSizePixel=0},
bX)local b_=al.make('\070\114\097\109\101',{Size=UDim2.fromOffset(12,12),BorderSizePixel=0},bZ)
al.make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},bZ)al.make('\085\073\067\111\114\110\101\114',{
CornerRadius=UDim.new(1,0)},b_)return bX,function(b0)al.paint(bZ,
'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051',b0 and'\097\099\116\105\118\101'or'\101\100\103\101')al.paint(b_,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051',b0 and
'\100\097\114\107'or'\109\117\116\101\100')b_.Position=UDim2.fromOffset(b0 and 17 or 2,2)end end local
function bT(bU,bW,bX,bY,bZ)local b_,b0=bS(bU,bX,0)b_.Position=UDim2.fromScale(bY
and 0.51 or 0,0)b_.Size=UDim2.fromScale(0.49,1)local function b1()b0(a5[bW])if
bW=='\097\105\109'or bW=='\101\115\112'then a6()end end table.insert(a8,b1)b1()bp(b_.Activated,
function()a5[bW]=not a5[bW]if bZ then bZ(a5[bW])end b1()end)end local function
bU(bW,bX,bY,bZ,b_,b0,b1,b2,b3)local b4=bR(bW,b2)local b5=al.label(b4,'\084\101\120\116\076\097\098\101\108'
,bZ,42,0)b5.Size=UDim2.new(1,-132,1,0)b5.TextXAlignment=Enum.TextXAlignment.Left
b5.TextSize=13 local b6=al.button(b4,'\u{2212}',0)b6.Position,b6.Size=UDim2.new(
1,-126,0,0),UDim2.fromOffset(36,42)local b7=al.label(b4,'\084\101\120\116\066\111\120',tostring(bX[bY
]),42,0)b7.Position,b7.Size=UDim2.new(1,-86,0,0),UDim2.fromOffset(46,42)b7.
BackgroundTransparency=0 al.paint(b7,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051','\116\105\108\101')b7.
ClearTextOnFocus=false al.make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,5)},b7)local
b8=al.button(b4,'\043',0)b8.Position,b8.Size=UDim2.new(1,-36,0,0),UDim2.fromOffset(
36,42)local function b9()b7.Text=tostring(bX[bY])end table.insert(a8,b9)local
function c(ca)if ca and ca==ca then local cb=math.clamp(math.floor(ca+0.5),b_,b0
)if cb~=bX[bY]then bX[bY]=cb if b3 then b3()end end end b9()end bp(b6.Activated,
function()c(bX[bY]-b1)end)bp(b8.Activated,function()c(bX[bY]+b1)end)bp(b7.
FocusLost,function()c(tonumber(b7.Text))end)end local bW=al.button(aM,'\065',0,true
)bW.ZIndex=20 bW.TextSize=23 ab.decorateLauncher(bW)local function bX()aN.
Visible=not aN.Visible end local bY=0 bp(bW.Activated,function()if os.clock()>bY
then bX()end end)local bZ=al.button(aP,'\u{2212}',0)bZ.Position,bZ.Size=UDim2.
new(1,-50,0,14),UDim2.fromOffset(34,34)bp(bZ.Activated,bX)local b_=8 local
function b0(b1,b2,b3,b4)local b5=math.max(0,b1.X-b2.X-2*b_)local b6=math.max(0,
b1.Y-b2.Y-2*b_)return b_+b5*b3,b_+b6*b4 end local function b1(b2,b3)local b4=ai
and aM.AbsoluteSize.X<aM.AbsoluteSize.Y local b5=not b4 and b2>=530 and b3>=158+
a2*46 aU.Visible=b5 aT.Position=UDim2.fromOffset(12,74)aT.Size=b5 and UDim2.new(
0,132,1,-118)or UDim2.new(1,-24,0,44)for b6,b7 in pairs(a1)do local b8,b9=a0[b6]
,a_[b6]b7.number.Visible=b5 if b5 then b8.Position,b8.Size=UDim2.fromOffset(6,34
+(b7.index-1)*46),UDim2.new(1,-12,0,40)b7.caption.Text,b7.caption.TextSize=b7.
title,12 b7.caption.Position,b7.caption.Size=UDim2.fromOffset(37,0),UDim2.new(1,
-45,1,0)b7.caption.TextXAlignment=Enum.TextXAlignment.Left b7.marker.Position,b7
.marker.Size=UDim2.fromOffset(0,10),UDim2.fromOffset(3,20)b9.Position,b9.Size=
UDim2.fromOffset(160,74),UDim2.new(1,-172,1,-118)else b8.Position=UDim2.new((b7.
index-1)/a2,3,0,3)b8.Size=UDim2.new(1/a2,-6,1,-6)b7.caption.Text,b7.caption.
TextSize=b7.compactTitle,11 b7.caption.Position,b7.caption.Size=UDim2.
fromOffset(0,0),UDim2.fromScale(1,1)b7.caption.TextXAlignment=Enum.
TextXAlignment.Center b7.marker.Position,b7.marker.Size=UDim2.new(0.25,0,1,-3),
UDim2.new(0.5,0,0,2)b9.Position,b9.Size=UDim2.fromOffset(12,130),UDim2.new(1,-24
,1,-170)end end end local function b2()local b3=aM.AbsoluteSize if b3.X<50 or b3
.Y<50 then return end local b4=aE.scale/100 local b5=math.min(aE.width,(b3.X-2*
b_)/b4)local b6=math.min(aE.height,(b3.Y-2*b_)/b4)aN.Size,aO.Scale=UDim2.
fromOffset(b5,b6),b4 aN.BackgroundTransparency=1-aE.opacity/100 if bP then bP(b5
)end b1(b5,b6)local b7=Vector2.new(b5*b4,b6*b4)local b8,b9=b0(b3,b7,aE.panelX,aE
.panelY)aN.Position=UDim2.fromOffset(b8+b7.X*0.5,b9+b7.Y*0.5)local c=math.min(aE
.launcher,b3.X-2*b_,b3.Y-2*b_)bW.Size=UDim2.fromOffset(c,c)local ca,cb=b0(b3,
Vector2.new(c,c),aE.buttonX,aE.buttonY)bW.Position=UDim2.fromOffset(ca,cb)end
local b3,b4,b5,b6,b7 local function b8(b9,c)if not b3 and(b9.UserInputType==Enum
.UserInputType.Touch or b9.UserInputType==Enum.UserInputType.MouseButton1)then
b3=b9 b4=b9.Position b6=c b5=c.AbsolutePosition-aM.AbsolutePosition b7=false end
end bp(aP.InputBegan,function(b9)b8(b9,aN)end)bp(bW.InputBegan,function(b9)b8(b9
,bW)end)bp(ae.InputChanged,function(b9)if not b3 or(b3.UserInputType==Enum.
UserInputType.Touch and b9~=b3)or(b3.UserInputType==Enum.UserInputType.
MouseButton1 and b9.UserInputType~=Enum.UserInputType.MouseMovement)then return
end local c=b9.Position-b4 if not b7 and c.Magnitude<6 then return end b7=true
local ca,cb=aM.AbsoluteSize,b6.AbsoluteSize local cc,cd=math.max(0,ca.X-cb.X-2*
b_),math.max(0,ca.Y-cb.Y-2*b_)local ce=math.clamp(b5.X+c.X,b_,b_+cc)local cf=
math.clamp(b5.Y+c.Y,b_,b_+cd)if b6==aN then b6.Position=UDim2.fromOffset(ce+cb.X
*0.5,cf+cb.Y*0.5)if cc>0 then aE.panelX=(ce-b_)/cc end if cd>0 then aE.panelY=(
cf-b_)/cd end else b6.Position=UDim2.fromOffset(ce,cf)if cc>0 then aE.buttonX=(
ce-b_)/cc end if cd>0 then aE.buttonY=(cf-b_)/cd end bY=os.clock()+0.25 end end)
local function b9()if not b3 then return end b3=nil if b7 then if b6==bW then bY
=os.clock()+0.25 end aG()end end bp(ae.InputEnded,function(c)if c==b3 then b9()
end end)bp(ae.WindowFocusReleased,function()b9()bo.up,bo.down,bo.aim=false,false
,false bk,bl,bn=nil,nil,false if bm then bm.target=nil end end)bp(aM:
GetPropertyChangedSignal('\065\098\115\111\108\117\116\101\083\105\122\101'),function()if not b3 then b2()end end)
b2()bp(ae.InputBegan,function(c,ca)if not ca and c.KeyCode==Enum.KeyCode.
RightShift then bX()end end)local function c(ca,cb,cc,cd,ce)local cf=al.button(
aM,cb,0,true)cf.Position,cf.Size=UDim2.new(1,-cd-12,1,cc),UDim2.fromOffset(cd,46
)cf.Visible,cf.ZIndex=false,30 local cg,ch local function ci()cg=nil bo[ca]=
false if ch then ch:Disconnect()ch=nil end if ca=='\097\105\109'and bm then bm.target=nil
end end bp(cf.InputBegan,function(cj)if(not ce or ce())and(not cg or not bo[ca])
and(cj.UserInputType==Enum.UserInputType.Touch or cj.UserInputType==Enum.
UserInputType.MouseButton1)then if cg then ci()end cg,bo[ca]=cj,true if cj.
UserInputType==Enum.UserInputType.Touch then ch=cj:GetPropertyChangedSignal(
'\085\115\101\114\073\110\112\117\116\083\116\097\116\101'):Connect(function()if cj.UserInputState==Enum.UserInputState.
Cancel or cj.UserInputState==Enum.UserInputState.End then ci()end end)end end
end)bp(ae.InputEnded,function(cj)if cj==cg then ci()end end)bp(ae.
WindowFocusReleased,ci)cf.Destroying:Connect(ci)return cf,ci end local ca=c('\117\112'
,an('\u{2191}\032\032\083\085\066\073\082','\u{2191}\032\032\085\080'),-165,103)local cb=c('\100\111\119\110',an(
'\u{2193}\032\032\068\069\083\067\069\082','\u{2193}\032\032\068\079\087\078'),-112,103)local cc,cd=c('\097\105\109',an('\077\073\082\065\082',
'\065\073\077'),-64,112,function()return aH()=='\104\111\108\100'end)local function ce()if not ag
then return end local cf=aE.aimTouchSide=='\108\101\102\116'cc.AnchorPoint=Vector2.new(cf
and 0 or 1,0.5)cc.Position=UDim2.new(cf and 0 or 1,cf and 10 or-10,0.43,0)cc.
Size=UDim2.fromOffset(112,50)end ce()bj=al.make('\083\099\114\101\101\110\071\117\105',{Name=
'\065\110\111\110\072\117\098\065\105\109\079\118\101\114\108\097\121',ResetOnSpawn=false,IgnoreGuiInset=true,ScreenInsets=Enum.
ScreenInsets.DeviceSafeInsets,DisplayOrder=10026},aJ)local cf=al.make('\070\114\097\109\101',{
AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,Visible=false,Active=
false},bj)al.make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},cf)local cg=al.make(
'\085\073\083\116\114\111\107\101',{Color='\064\097\099\099\101\110\116',Thickness=1,Transparency=0.18},cf)local ch=al.label(
bj,'\084\101\120\116\076\097\098\101\108','',24,0)ch.AnchorPoint,ch.Size=Vector2.new(0.5,0),UDim2.
fromOffset(240,24)ch.Font,ch.TextSize=Enum.Font.GothamBold,12 ch.
TextStrokeTransparency,ch.Visible=0.25,false local function ci()bk,bl=nil,nil if
bm then bm.target=nil end end local function cj()cd()bn=false ci()end local
function ck()local cl=aH()=='\116\111\103\103\108\101'and(bn and an('\080\065\082\065\082\032\077\073\082\065','\083\084\079\080\032\065\073\077')or an(
'\076\073\071\065\082\032\077\073\082\065','\083\084\065\082\084\032\065\073\077'))or an('\083\069\071\085\082\065\082\032\077\073\082\065','\072\079\076\068\032\065\073\077')if cc.Text~=cl then cc
.Text=cl end end local function cl()if not a5.aim or aH()~='\116\111\103\103\108\101'then return
end bn=not bn ci()ck()end bp(cc.Activated,cl)bp(ae.InputBegan,function(cm,cn)if
not cn and not ae:GetFocusedTextBox()and(cm.UserInputType==Enum.UserInputType.
MouseButton2 or cm.KeyCode==Enum.KeyCode.LeftAlt)then cl()end end)local function
cm()ca.Visible,cb.Visible=a5.fly==true,a5.fly==true cc.Visible=a5.aim==true and
aH()~='\097\108\119\097\121\115'and(not ah()or not aN.Visible)if not a5.fly then bo.up,bo.down=
false,false end if not a5.aim then cj()cf.Visible=false ch.Visible=false end ck(
)end table.insert(a8,cm)if ag then bp(aN:GetPropertyChangedSignal('\086\105\115\105\098\108\101'),
function()if aN.Visible then cd()ci()end cm()end)end local cn=bR(bJ,4)bT(cn,
'\102\108\121',an('\086\111\111','\070\108\121'),false,function(co)if not co then bB()end cm()end)bT(cn,
'\110\111\099\108\105\112','\078\111\099\108\105\112',true,function(co)if not co then bz()end end)local co=bR(bJ,5)
bT(co,'\115\112\101\101\100',an('\086\101\108\111\099\105\100\097\100\101','\087\097\108\107\032\115\112\101\101\100'),false,function(cp)if not cp then bx(
bf)bf=nil end end)bT(co,'\106\117\109\112',an('\083\097\108\116\111\032\105\110\102\105\110\105\116\111','\073\110\102\105\110\105\116\101\032\106\117\109\112'),true)bU(bJ,
a7,'\115\112\101\101\100',an('\086\101\108\111\099\105\100\097\100\101\032\097\111\032\097\110\100\097\114','\087\097\108\107\032\115\112\101\101\100'),4,120,4,6)bU(bJ,a7,'\102\108\121',an(
'\086\101\108\111\099\105\100\097\100\101\032\100\101\032\118\111\111','\070\108\105\103\104\116\032\115\112\101\101\100'),10,180,10,7)bQ(bL,an(
'\077\073\082\065\032\069\032\067\065\077\080\079\032\068\069\032\086\073\083\u{c3}\079','\065\073\077\032\065\078\068\032\070\073\069\076\068\032\079\070\032\086\073\069\087'),1)local cp=bR(bL,2)bT(cp,
'\097\105\109',an('\077\105\114\097\032\097\115\115\105\115\116\105\100\097','\065\105\109\032\097\115\115\105\115\116'),false,function(cq)if cq and ah()then bn=
aH()=='\116\111\103\103\108\101'aN.Visible=false end cm()end)bT(cp,'\102\111\118',an('\070\079\086\032\100\097\032\099\u{e2}\109\101\114\097',
'\067\097\109\101\114\097\032\070\079\086'),true,function(cq)if not cq then bx(bg)bg=nil end end)bU(bL,aE,
'\099\097\109\101\114\097\070\111\118',an('\067\097\109\112\111\032\100\101\032\118\105\115\u{e3}\111\032\100\097\032\099\u{e2}\109\101\114\097\032\040\u{b0}\041',
'\067\097\109\101\114\097\032\102\105\101\108\100\032\111\102\032\118\105\101\119\032\040\u{b0}\041'),35,120,5,3,aG)local cq=al.label(bJ,'\084\101\120\116\076\097\098\101\108',
an('\080\097\114\097\032\118\111\097\114\044\032\117\115\101\032\111\032\100\105\114\101\099\105\111\110\097\108\032\101\032\111\115\032\098\111\116\u{f5}\101\115\032\108\097\116\101\114\097\105\115\046',
'\085\115\101\032\109\111\118\101\109\101\110\116\032\099\111\110\116\114\111\108\115\032\097\110\100\032\116\104\101\032\115\105\100\101\032\098\117\116\116\111\110\115\032\116\111\032\102\108\121\046'),40,8)cq.TextSize=12 al.
paint(cq,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')bp(al.button(bJ,an('\082\069\083\084\065\085\082\065\082\032\067\079\078\084\082\079\076\069\083',
'\082\069\083\069\084\032\067\079\078\084\082\079\076\083'),9,true).Activated,bE)local function cr(cs,ct,cu,cv,cw,cx,cy,cz
)local cA=al.make('\070\114\097\109\101',{Size=UDim2.new(1,0,0,math.ceil(#ct/cv)*39),
LayoutOrder=cw,BackgroundTransparency=1},cs)al.make('\085\073\071\114\105\100\076\097\121\111\117\116',{CellSize=
UDim2.new(1/cv,-4,0,34),CellPadding=UDim2.fromOffset(4,5),SortOrder=Enum.
SortOrder.LayoutOrder},cA)local cB={}local function cC()for cD,cE in pairs(cB)do
local cF=aE[cu]==cD al.paint(cE,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051',cF and'\097\099\099\101\110\116'or'\116\105\108\101')al.
paint(cE,'\084\101\120\116\067\111\108\111\114\051',cF and'\100\097\114\107'or'\116\101\120\116')end end for cD,cE in ipairs(ct)do
local cF=cE[1]local cG=al.button(cA,cx(cE),cD)cG.TextSize=11 cB[cF]=cG local cH=
cz and cz(cE)if cH then local cI=al.make('\070\114\097\109\101',{Position=UDim2.fromOffset(5,5)
,Size=UDim2.fromOffset(7,7),BorderSizePixel=0,BackgroundColor3=cH},cG)al.make(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},cI)end bp(cG.Activated,function()if aE[
cu]==cF then return end aE[cu]=cF if cy then cy(cF)end cC()aG()end)end cC()
return cC end local function cs(ct,cu,cv,cw,cx,cy)local cz,cA=bS(ct,cv,cw)local
function cB()if cy then return cy()end return aE[cu]end local function cC()cA(
cB())end cC()bp(cz.Activated,function()aE[cu]=not cB()if cx then cx()end cC()aG(
)end)return cC end local function ct(cu)return an(cu[2],cu[3])end bQ(bL,an(
'\065\084\073\086\065\u{c7}\u{c3}\079','\065\067\084\073\086\065\084\073\079\078'),4)local cu=al.label(bL,'\084\101\120\116\076\097\098\101\108','',36,6)cu
.TextSize=11 al.paint(cu,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local function cv()local cw=aH()cu
.Text=cw=='\097\108\119\097\121\115'and an('\065\032\109\105\114\097\032\097\099\111\109\112\097\110\104\097\032\097\108\118\111\115\032\101\110\113\117\097\110\116\111\032\101\115\116\105\118\101\114\032\108\105\103\097\100\097\046',
'\065\105\109\032\116\114\097\099\107\115\032\116\097\114\103\101\116\115\032\119\104\105\108\101\032\101\110\097\098\108\101\100\046')or cw=='\116\111\103\103\108\101'and(ah()and an(
'\065\032\109\105\114\097\032\099\111\109\101\u{e7}\097\032\097\111\032\108\105\103\097\114\046\032\085\115\101\032\111\032\098\111\116\u{e3}\111\032\108\097\116\101\114\097\108\032\112\097\114\097\032\112\097\117\115\097\114\032\111\117\032\114\101\116\111\109\097\114\046',
"\065\105\109\032\115\116\097\114\116\115\032\119\104\101\110\032\101\110\097\098\108\101\100\046\032\085\115\101\032\116\104\101\032\115\105\100\101\032\098\117\116\116\111\110\032\116\111\032\112\097\117\115\101\032\111\114\032\114\101\115\117\109\101\046")or an(
'\085\115\101\032\111\032\098\111\116\u{e3}\111\032\100\105\114\101\105\116\111\044\032\065\108\116\032\101\115\113\117\101\114\100\111\032\111\117\032\111\032\098\111\116\u{e3}\111\032\108\097\116\101\114\097\108\046',
'\085\115\101\032\114\105\103\104\116\032\109\111\117\115\101\044\032\076\101\102\116\032\065\108\116\044\032\111\114\032\116\104\101\032\115\105\100\101\032\098\117\116\116\111\110\046'))or an(
'\083\101\103\117\114\101\032\111\032\098\111\116\u{e3}\111\032\108\097\116\101\114\097\108\044\032\111\032\098\111\116\u{e3}\111\032\100\105\114\101\105\116\111\032\100\111\032\109\111\117\115\101\032\111\117\032\065\108\116\032\101\115\113\117\101\114\100\111\046',
'\072\111\108\100\032\116\104\101\032\115\105\100\101\032\098\117\116\116\111\110\044\032\114\105\103\104\116\032\109\111\117\115\101\032\111\114\032\076\101\102\116\032\065\108\116\046')end cr(bL,at,'\097\105\109\065\099\116\105\118\097\116\105\111\110',2,
5,ct,function()cj()cm()cv()end)bp(ae:GetPropertyChangedSignal('\080\114\101\102\101\114\114\101\100\073\110\112\117\116'),
function()cj()cm()cv()a6()end)cv()bQ(bL,an('\082\069\083\080\079\083\084\065\032\068\065\032\077\073\082\065','\065\073\077\032\082\069\083\080\079\078\083\069'),7)
local cw if not aj then cw=an(
'\083\105\108\101\110\116\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\032\110\101\115\116\101\032\106\111\103\111\046\032\085\115\101\032\083\117\097\118\101\032\111\117\032\068\105\114\101\116\097\046',
'\083\105\108\101\110\116\032\105\115\032\117\110\097\118\097\105\108\097\098\108\101\032\104\101\114\101\046\032\085\115\101\032\083\109\111\111\116\104\032\111\114\032\068\105\114\101\099\116\046')elseif ag then cw=an(
'\083\105\108\101\110\116\032\102\117\110\099\105\111\110\097\032\099\111\109\032\097\114\109\097\115\032\113\117\101\032\117\115\097\109\032\109\111\117\115\101\032\099\108\u{e1}\115\115\105\099\111\032\111\117\032\114\097\105\111\032\099\101\110\116\114\097\108\032\100\097\032\099\u{e2}\109\101\114\097\046'
,"\083\105\108\101\110\116\032\119\111\114\107\115\032\119\105\116\104\032\119\101\097\112\111\110\115\032\116\104\097\116\032\117\115\101\032\099\108\097\115\115\105\099\032\109\111\117\115\101\032\111\114\032\097\032\099\101\110\116\101\114\101\100\032\099\097\109\101\114\097\032\114\097\121\046")
else cw=an('\083\105\108\101\110\116\032\102\117\110\099\105\111\110\097\032\099\111\109\032\097\114\109\097\115\032\113\117\101\032\117\115\097\109\032\109\111\117\115\101\032\099\108\u{e1}\115\115\105\099\111\046',
'\083\105\108\101\110\116\032\119\111\114\107\115\032\119\105\116\104\032\119\101\097\112\111\110\115\032\116\104\097\116\032\117\115\101\032\099\108\097\115\115\105\099\032\109\111\117\115\101\046')end local cx cr(bL,av,
'\097\105\109\082\101\115\112\111\110\115\101',#av,8,ct,function()ci()cx.Text=cw end)bU(bL,aE,'\097\105\109\083\112\101\101\100',an(
'\086\101\108\111\099\105\100\097\100\101\032\100\097\032\109\105\114\097\032\115\117\097\118\101','\083\109\111\111\116\104\032\097\105\109\032\115\112\101\101\100'),3,70,2,9,aG)bQ(bL,an(
'\080\082\073\079\082\073\068\065\068\069\032\068\069\032\065\076\086\079','\084\065\082\071\069\084\032\080\082\073\079\082\073\084\089'),10)cr(bL,ay,'\097\105\109\080\114\105\111\114\105\116\121',2,11,ct,ci)bQ(
bL,an('\080\079\078\084\079\032\068\079\032\065\076\086\079','\084\065\082\071\069\084\032\080\065\082\084'),12)cr(bL,az,'\097\105\109\080\097\114\116',3,13,ct,ci)bU(bL,aE,
'\097\105\109\082\097\110\103\101',an('\065\108\099\097\110\099\101\032\100\097\032\109\105\114\097','\065\105\109\032\114\097\110\103\101'),75,1500,50,14,aG)cs(bL,'\097\105\109\084\101\097\109',
an('\073\103\110\111\114\097\114\032\097\108\105\097\100\111\115\032\110\097\032\109\105\114\097','\073\103\110\111\114\101\032\116\101\097\109\109\097\116\101\115\032\105\110\032\097\105\109'),15,ci)cr(bL,aw,
'\097\105\109\079\098\115\116\097\099\108\101\115',3,16,ct,ci)cs(bL,'\097\105\109\083\116\105\099\107\121',an('\077\097\110\116\101\114\032\111\032\097\108\118\111\032\097\116\117\097\108',
'\075\101\101\112\032\099\117\114\114\101\110\116\032\116\097\114\103\101\116'),17)cs(bL,'\097\105\109\067\117\115\116\111\109\067\097\109\101\114\097',an(
'\065\099\101\105\116\097\114\032\099\u{e2}\109\101\114\097\032\112\101\114\115\111\110\097\108\105\122\097\100\097','\065\108\108\111\119\032\099\117\115\116\111\109\032\099\097\109\101\114\097'),18,ci)bQ(bL,an(
'\067\u{cd}\082\067\085\076\079\032\068\069\032\077\073\082\065','\065\073\077\032\067\073\082\067\076\069'),19)cr(bL,aA,'\097\105\109\067\105\114\099\108\101',3,20,ct)bU(bL,aE,
'\097\105\109\082\097\100\105\117\115',an('\082\097\105\111\032\100\111\032\099\u{ed}\114\099\117\108\111\032\040\112\120\041','\067\105\114\099\108\101\032\114\097\100\105\117\115\032\040\112\120\041'),30,500,15,21,aG
)bU(bL,aE,'\097\105\109\079\102\102\115\101\116\089',an('\065\106\117\115\116\101\032\118\101\114\116\105\099\097\108\032\040\112\120\041','\086\101\114\116\105\099\097\108\032\111\102\102\115\101\116\032\040\112\120\041'),-130,
130,5,22,aG)bU(bL,aE,'\097\105\109\087\105\100\116\104',an('\069\115\112\101\115\115\117\114\097\032\100\111\032\099\u{ed}\114\099\117\108\111',
'\067\105\114\099\108\101\032\116\104\105\099\107\110\101\115\115'),1,4,1,23,aG)cr(bL,aB,'\097\105\109\067\105\114\099\108\101\067\111\108\111\114',2,24,ct,nil,function(
cy)return cy[4]and al.rgb(cy[4])end)cs(bL,'\097\105\109\076\097\098\101\108',an('\077\111\115\116\114\097\114\032\110\111\109\101\032\100\111\032\097\108\118\111',
'\083\104\111\119\032\116\097\114\103\101\116\032\110\097\109\101'),25)cx=al.label(bL,'\084\101\120\116\076\097\098\101\108',cw,36,26)cx.TextSize=11 al.
paint(cx,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')if ag then bQ(bL,an('\076\065\068\079\032\068\079\032\066\079\084\u{c3}\079\032\068\069\032\077\073\082\065',
'\065\073\077\032\066\085\084\084\079\078\032\083\073\068\069'),27)cr(bL,au,'\097\105\109\084\111\117\099\104\083\105\100\101',2,28,ct,ce)cs(bL,'\097\105\109\065\100\097\112\116\105\118\101\070\111\118',
an('\082\097\105\111\032\097\100\097\112\116\097\100\111\032\u{e0}\032\116\101\108\097','\083\099\097\108\101\032\114\097\100\105\117\115\032\116\111\032\115\099\114\101\101\110'),29,ci)end bU(bL,aE,
'\097\105\109\079\102\102\115\101\116\088',an('\065\106\117\115\116\101\032\104\111\114\105\122\111\110\116\097\108\032\040\112\120\041','\072\111\114\105\122\111\110\116\097\108\032\111\102\102\115\101\116\032\040\112\120\041'),-130,130,5,30
,function()ci()aG()end)bQ(bM,an('\068\069\083\084\065\081\085\069\032\068\069\032\074\079\071\065\068\079\082\069\083','\080\076\065\089\069\082\032\072\073\071\072\076\073\071\072\084\073\078\071'),1
)local cy=bR(bM,2)bT(cy,'\101\115\112','\069\083\080',false,function(cz)if not cz then bC()end end
)bQ(bM,an('\069\083\084\073\076\079','\083\084\089\076\069'),3)local cz cr(bM,aq,'\101\115\112\077\111\100\101',2,4,ct,function()bC()
if cz then cz()end end)bQ(bM,an('\067\079\082\032\068\079\032\069\083\080','\069\083\080\032\067\079\076\079\082'),5)local cA=cr(bM,ar,
'\101\115\112\067\111\108\111\114',3,6,ct,nil,function(cA)return cA[4]and al.rgb(cA[4])end)local cB=bR(
bM,7)local cC=al.label(cB,'\084\101\120\116\076\097\098\101\108',an('\067\111\114\032\112\101\114\115\111\110\097\108\105\122\097\100\097','\067\117\115\116\111\109\032\099\111\108\111\114'),42,
0)cC.Size,cC.TextXAlignment=UDim2.new(1,-166,1,0),Enum.TextXAlignment.Left cC.
TextSize=12 local cD=al.label(cB,'\084\101\120\116\066\111\120','\035'..aE.espHex,42,0)cD.Position,cD.
Size=UDim2.new(1,-166,0,0),UDim2.fromOffset(85,42)cD.ClearTextOnFocus,cD.
BackgroundTransparency=false,0 al.paint(cD,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051','\116\105\108\101')al.make(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,6)},cD)local cE=al.button(cB,an('\065\080\076\073\067\065\082',
'\065\080\080\076\089'),0)cE.Position,cE.Size=UDim2.new(1,-75,0,0),UDim2.fromOffset(75,42)local
cF=al.label(bM,'\084\101\120\116\076\097\098\101\108','',25,8)cF.Visible=false cF.TextSize=11 al.paint(cF,
'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local function cG()local cH=aD(cD.Text)cF.Visible=not cH if
not cH then cF.Text=an('\085\115\101\032\115\101\105\115\032\100\u{ed}\103\105\116\111\115\032\104\101\120\097\100\101\099\105\109\097\105\115\044\032\099\111\109\111\032\035\070\070\055\065\056\068\046',
'\085\115\101\032\115\105\120\032\104\101\120\032\100\105\103\105\116\115\044\032\115\117\099\104\032\097\115\032\035\070\070\055\065\056\068\046')return end aE.espHex,aE.espColor=cH,
'\099\117\115\116\111\109'cD.Text='\035'..cH cA()aG()end bp(cE.Activated,cG)bp(cD.FocusLost,function(
cH)if cH then cG()end end)cs(bM,'\101\115\112\084\104\114\111\117\103\104',an('\065\116\114\097\118\u{e9}\115\032\100\101\032\112\097\114\101\100\101\115',
'\084\104\114\111\117\103\104\032\119\097\108\108\115'),9,bC)cs(bM,'\101\115\112\084\101\097\109',an('\073\103\110\111\114\097\114\032\097\108\105\097\100\111\115\032\110\111\032\069\083\080',
'\073\103\110\111\114\101\032\116\101\097\109\109\097\116\101\115\032\105\110\032\069\083\080'),10,bC)bU(bM,aE,'\101\115\112\082\097\110\103\101',an(
'\068\105\115\116\u{e2}\110\099\105\097\032\109\u{e1}\120\105\109\097\032\100\111\032\069\083\080','\077\097\120\105\109\117\109\032\069\083\080\032\114\097\110\103\101'),100,1500,50,11,aG)bQ(bM
,an('\073\078\070\079\082\077\065\u{c7}\u{d5}\069\083\032\068\079\032\074\079\071\065\068\079\082','\080\076\065\089\069\082\032\068\069\084\065\073\076\083'),12)cr(bM,as,'\101\115\112\078\105\099\107',2
,13,ct,bC)cs(bM,'\101\115\112\068\105\115\116\097\110\099\101',an('\077\111\115\116\114\097\114\032\100\105\115\116\u{e2}\110\099\105\097','\083\104\111\119\032\100\105\115\116\097\110\099\101'),14,bC
)cz=cs(bM,'\101\115\112\072\101\097\108\116\104',an('\077\111\115\116\114\097\114\032\098\097\114\114\097\032\100\101\032\118\105\100\097','\083\104\111\119\032\104\101\097\108\116\104\032\098\097\114'),15,bC,aI)cr(
bM,ax,'\101\115\112\076\097\098\101\108\115',2,16,ct,bC)cs(bM,'\101\115\112\067\117\115\116\111\109\082\105\103\115',an(
'\080\101\114\115\111\110\097\103\101\110\115\032\112\101\114\115\111\110\097\108\105\122\097\100\111\115\032\040\069\083\080\032\101\032\109\105\114\097\041','\067\117\115\116\111\109\032\099\104\097\114\097\099\116\101\114\115\032\040\069\083\080\032\097\110\100\032\097\105\109\041'),17,
function()bC()ci()end)bQ(bN,an('\084\069\077\065\083\032\068\079\032\072\085\066','\072\085\066\032\084\072\069\077\069\083'),1)cr(bN,al.themes,
'\116\104\101\109\101',2,2,function(cH)return cH[2]end,al.setTheme,function(cH)return al.
themeAccent(cH[1])end)bQ(bN,an('\084\065\077\065\078\072\079\032\069\032\080\079\083\073\u{c7}\u{c3}\079','\083\073\090\069\032\065\078\068\032\080\079\083\073\084\073\079\078'
),3)local function cH()b2()aG()end bU(bN,aE,'\119\105\100\116\104',an('\076\097\114\103\117\114\097\032\100\111\032\112\097\105\110\101\108',
'\080\097\110\101\108\032\119\105\100\116\104'),300,900,20,4,cH)bU(bN,aE,'\104\101\105\103\104\116',an('\065\108\116\117\114\097\032\100\111\032\112\097\105\110\101\108',
'\080\097\110\101\108\032\104\101\105\103\104\116'),340,880,20,5,cH)bU(bN,aE,'\115\099\097\108\101',an(
'\069\115\099\097\108\097\032\100\111\032\116\101\120\116\111\032\101\032\099\111\110\116\114\111\108\101\115\032\040\037\041','\084\101\120\116\032\097\110\100\032\099\111\110\116\114\111\108\115\032\115\099\097\108\101\032\040\037\041'),65,140,5,6,cH)
bU(bN,aE,'\108\097\117\110\099\104\101\114',an('\084\097\109\097\110\104\111\032\100\111\032\102\108\117\116\117\097\110\116\101','\070\108\111\097\116\105\110\103\032\098\117\116\116\111\110\032\115\105\122\101'),40,90,4,7,
cH)bU(bN,aE,'\111\112\097\099\105\116\121',an('\079\112\097\099\105\100\097\100\101\032\100\111\032\112\097\105\110\101\108\032\040\037\041','\080\097\110\101\108\032\111\112\097\099\105\116\121\032\040\037\041'),60,100,5
,8,cH)bp(al.button(bN,an('\082\069\083\084\065\085\082\065\082\032\084\065\077\065\078\072\079\032\069\032\080\079\083\073\u{c7}\u{c3}\079',
'\082\069\083\069\084\032\083\073\090\069\032\065\078\068\032\080\079\083\073\084\073\079\078'),9).Activated,function()for cI,cJ in ipairs({'\119\105\100\116\104',
'\104\101\105\103\104\116','\115\099\097\108\101','\108\097\117\110\099\104\101\114','\111\112\097\099\105\116\121','\112\097\110\101\108\088','\112\097\110\101\108\089','\098\117\116\116\111\110\088','\098\117\116\116\111\110\089'})do
aE[cJ]=ao[cJ]end for cI,cJ in ipairs(a8)do cJ()end cH()end)bp(al.button(bN,an(
'\073\068\073\079\077\065','\076\065\078\071\085\065\071\069'),10).Activated,ab.chooseLanguage)bp(al.button(bN,an(
'\069\078\067\069\082\082\065\082\032\072\085\066','\067\076\079\083\069\032\072\085\066'),11).Activated,ab.unload)bp(aL.Destroying,function()
if a4 then ab.unload()end end)bp(ak.CharacterRemoving,function()bD()cj()end)
local cI=-math.huge bp(ae.JumpRequest,function()if not a5.jump or a5.fly or os.
clock()-cI<0.12 then return end local cJ=bq(ak.Character)if cJ and not cJ.Sit
then cI=os.clock()cJ:ChangeState(Enum.HumanoidStateType.Jumping)end end)bp(ad.
PreSimulation,function()if not a5.fly and not a5.noclip then return end local cJ
=ak.Character local cK,cL=bq(cJ)if not cK then bD()return end if a5.noclip then
if bb~=cJ then bA(cJ)end for cM in pairs(b)do if not cM:IsDescendantOf(cJ)then
if b[cM]and cM.Parent and not cM.CanCollide then cM.CanCollide=true end b[cM]=
nil elseif cM.CanCollide then b[cM]=true cM.CanCollide=false end end end if not
a5.fly then return end if cK.Sit or cL.Anchored then bB()return end if not be or
be.root~=cL then bB()local cM=al.make('\065\116\116\097\099\104\109\101\110\116',{Name='\065\110\111\110\072\117\098\070\108\105\103\104\116'},cL)
local cN=al.make('\076\105\110\101\097\114\086\101\108\111\099\105\116\121',{Attachment0=cM,RelativeTo=Enum.
ActuatorRelativeTo.World,ForceLimitsEnabled=false,VelocityConstraintMode=Enum.
VelocityConstraintMode.Vector,VectorVelocity=Vector3.zero},cL)be={root=cL,
attachment=cM,velocity=cN}end local cM=not ae:GetFocusedTextBox()local cN=bo.up
or cM and(ae:IsKeyDown(Enum.KeyCode.Space)or ae:IsKeyDown(Enum.KeyCode.E))local
cO=bo.down or cM and(ae:IsKeyDown(Enum.KeyCode.LeftControl)or ae:IsKeyDown(Enum.
KeyCode.Q))local cP=cK.MoveDirection local cQ=Vector3.new(cP.X,(cN and 1 or 0)-(
cO and 1 or 0),cP.Z)if cQ.Magnitude>1 then cQ=cQ.Unit end be.velocity.
VectorVelocity=cQ*a7.fly end)local cJ=RaycastParams.new()cJ.FilterType=Enum.
RaycastFilterType.Exclude local function cK(cL)if cL.glow then cL.glow:Destroy()
end if cL.billboard then cL.billboard:Destroy()end if cL.box then cL.box:
Destroy()end if cL.tag then cL.tag:Destroy()end end local function cL(cM,cN,cO,
cP,cQ)local cR={character=cM.character,root=cM.root,humanoid=cM.humanoid}if cN
then cR.glow=al.make('\072\105\103\104\108\105\103\104\116',{Adornee=cM.character,DepthMode=aE.espThrough
and Enum.HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded,
FillTransparency=0.88,OutlineTransparency=0.06},bh)end local cS=aI()and cM.
humanoid~=nil if cO or cS then local cT if cQ then cR.tag=al.make('\070\114\097\109\101',{
BackgroundTransparency=1,Size=UDim2.fromOffset(172,31),AnchorPoint=Vector2.new(
0.5,1),Visible=false},bi)cT=cR.tag else cR.billboard=al.make('\066\105\108\108\098\111\097\114\100\071\117\105',{
Adornee=cM.root,Size=UDim2.fromOffset(172,31),StudsOffsetWorldSpace=Vector3.new(
0,3.6,0),AlwaysOnTop=aE.espThrough},bh)cT=cR.billboard end if cO then cR.title=
al.label(cT,'\084\101\120\116\076\097\098\101\108','',22,0)cR.title.TextSize,cR.title.
TextStrokeTransparency=12,0.2 cR.title.TextTruncate=Enum.TextTruncate.AtEnd end
if cS then local cU=al.make('\070\114\097\109\101',{Position=UDim2.fromOffset(56,cO and 24 or
23),Size=UDim2.fromOffset(60,4),BorderSizePixel=0,BackgroundColor3=Color3.
fromRGB(24,27,33)},cT)cR.health=al.make('\070\114\097\109\101',{Size=UDim2.fromScale(1,1),
BorderSizePixel=0},cU)end end if cP then cR.box=al.make('\070\114\097\109\101',{
BackgroundTransparency=1,Visible=false,BorderSizePixel=0,AnchorPoint=Vector2.
new(0.5,0)},bi)cR.edge=al.make('\085\073\083\116\114\111\107\101',{Thickness=1.5},cR.box)end return cR
end local function cM(cN,cO)local cP=''if aE.espNick=='\100\105\115\112\108\097\121'then cP=cN.
DisplayName or cN.Name elseif aE.espNick=='\117\115\101\114\110\097\109\101'then cP='\064'..cN.Name elseif
aE.espNick=='\098\111\116\104'then cP=(cN.DisplayName or cN.Name)..'\032\040\064'..cN.Name..'\041'end if
aE.espDistance then local cQ=string.format('\037\046\048\102\032\115\116\117\100\115',cO)return cP==''and cQ
or cP..'\032\032\u{b7}\032\032'..cQ end return cP end local function cN()if(bh and not bh.
Parent)or(bi and not bi.Parent)then bC()end local cO=aE.espMode local cP=cO==
'\102\117\108\108'local cQ,cR=cO=='\111\117\116\108\105\110\101'or cP,cO=='\098\111\120'or cP local cS=aE.espNick~='\111\102\102'or
aE.espDistance local cT=aE.espLabels=='\115\099\114\101\101\110'and(cS or aI())if(cQ or(not cT and
(cS or aI())))and not bh then bh=al.make('\070\111\108\100\101\114',{Name='\065\110\111\110\072\117\098\069\083\080'},af)end if(
cR or cT)and not bi then bi=al.make('\083\099\114\101\101\110\071\117\105',{Name='\065\110\111\110\072\117\098\069\083\080\079\118\101\114\108\097\121',
ResetOnSpawn=false,IgnoreGuiInset=true,ScreenInsets=Enum.ScreenInsets.
DeviceSafeInsets,DisplayOrder=10025},aJ)end local cU=af.CurrentCamera local d,e=
bv(ak,aE.espCustomRigs)local f=e and e.Position or cU and cU.CFrame.Position
local g={}if f then for h,i in ipairs(ac:GetPlayers())do if not bw(i,aE.espTeam)
then continue end local j,k,l=bv(i,aE.espCustomRigs)if not k or j==d or(l and l.
Health<=0)then continue end local m=(k.Position-f).Magnitude if m<=aE.espRange
then table.insert(g,{other=i,character=j,root=k,humanoid=l,distance=m})end end
end if#g>32 then table.sort(g,function(h,i)return h.distance<i.distance end)end
local h=aC(ar,aE.espColor)local i=aE.espColor=='\099\117\115\116\111\109'and al.rgb(aE.espHex)or h
[4]and al.rgb(h[4])or am.accent local j=(cR or cT)and not aE.espThrough and cU
if j then cJ.FilterDescendantsInstances=d and{d}or{}end local k={}for l=1,math.
min(#g,32)do local m=g[l]local n=m.other local o=a9[n]if o and(o.character~=m.
character or o.root~=m.root or o.humanoid~=m.humanoid)then cK(o)o=nil end if not
o then o=cL(m,cQ,cS,cR,cT)a9[n]=o end local p=aE.espColor=='\116\101\097\109'and not n.
Neutral and n.Team and n.Team.TeamColor.Color or i if o.glow then o.glow.
OutlineColor,o.glow.FillColor=p,p end if o.billboard then o.billboard.
MaxDistance=aE.espRange end if o.title then local q=cM(n,m.distance)if o.title.
Text~=q then o.title.Text=q end o.title.TextColor3=p end if o.health then local
q=math.clamp(m.humanoid.Health/math.max(1,m.humanoid.MaxHealth),0,1)o.health.
Size=UDim2.fromScale(q,1)o.health.BackgroundColor3=p end if o.box then o.edge.
Color=p end if o.box or o.tag then o.head=br(m.character,'\072\101\097\100')o.clear=true if
j then local q=cU.CFrame.Position local r=af:Raycast(q,m.root.Position-q,cJ)o.
clear=not r or r.Instance:IsDescendantOf(m.character)end end k[n]=true end for l
,m in pairs(a9)do if not k[l]then cK(m)a9[l]=nil end end end local cO=0 local
function cP(cQ,cR)if not bi then return end cO+=cR if cO<1/30 then return end cO
=0 for cS,cT in pairs(a9)do local cU,d,e=cT.box,cT.tag,cT.root if not cU and not
d then continue end if not cQ or not cT.clear or not e.Parent or(cT.humanoid and
cT.humanoid.Health<=0)then if cU then cU.Visible=false end if d then d.Visible=
false end continue end local f=cT.head local g=f and f.Parent and f.Position+
Vector3.new(0,f.Size.Y*0.55,0)or e.Position+Vector3.new(0,math.max(2.6,e.Size.Y*
0.55),0)local h,i=cQ:WorldToViewportPoint(g)if d then d.Visible=i and h.Z>0 if d
.Visible then d.Position=UDim2.fromOffset(h.X,h.Y-4)end end if cU then local j=
cT.humanoid and cT.humanoid.HipHeight or 0 local k=e.Position-Vector3.new(0,math
.max(2.2,j+e.Size.Y*0.5),0)local l,m=cQ:WorldToViewportPoint(k)local n=math.abs(
l.Y-h.Y)cU.Visible=(i or m)and h.Z>0 and l.Z>0 and n>4 if cU.Visible then cU.
Size=UDim2.fromOffset(n*0.55,n)cU.Position=UDim2.fromOffset((h.X+l.X)*0.5,math.
min(h.Y,l.Y))end end end end local cQ=0 bp(ad.Heartbeat,function(cR)if not a5.
esp and not a5.speed then return end cQ+=cR if cQ<0.18 then return end cQ=0 if
a5.speed then local cS=bq(ak.Character)if cS then bf=by(bf,cS,'\087\097\108\107\083\112\101\101\100',a7.
speed)end end if a5.esp then cN()end end)local cR=RaycastParams.new()cR.
FilterType=Enum.RaycastFilterType.Exclude local function cS(cT,cU)if aE.aimPart
=='\114\111\111\116'then return cU end if aE.aimPart=='\104\101\097\100'then local d=br(cT,'\072\101\097\100')if d
then return d end end return br(cT,'\085\112\112\101\114\084\111\114\115\111')or br(cT,'\084\111\114\115\111')or cU end local
function cT(cU,d,e,f)local g=aE.aimObstacles if g=='\116\104\114\111\117\103\104'then return true end
local h=f and{f}or{}for i=1,(g=='\101\102\102\101\099\116\115'and 4 or 1)do cR.
FilterDescendantsInstances=h local j=af:Raycast(cU,d,cR)if not j or j.Instance:
IsDescendantOf(e)then return true end local k=j.Instance if g~='\101\102\102\101\099\116\115'or i==4
or not k:IsA('\066\097\115\101\080\097\114\116')or k.CanCollide or math.max(k.Transparency,k.
LocalTransparencyModifier)<0.95 then return false end table.insert(h,k)end
return false end local function cU(d,e,f,g,h,i,j)if not bw(e,aE.aimTeam)then
return end local k,l,m=bv(e,aE.espCustomRigs)if not l or k==i or(m and m.Health
<=0)then return end local n=cS(k,l)local o,p=d:WorldToViewportPoint(n.Position)
if not p or o.Z<=0 then return end local q=(Vector2.new(o.X,o.Y)-f).Magnitude if
q>g then return end local r=n.Position-d.CFrame.Position local s=r.Magnitude if
s>aE.aimRange or s<0.01 then return end local t=aE.aimPriority=='\100\105\115\116\097\110\099\101'and(n.
Position-h).Magnitude or q if j and t>=j then return end if not cT(d.CFrame.
Position,r,k,i)then return end return n,t end local d local e=false local
function f(g)local h,i=g.target,g.tool if not h or not h.Parent or not i or i.
Parent~=g.character or ae:GetFocusedTextBox()then return end local j,k=pcall(
getcallingscript)if j and typeof(k)=='\073\110\115\116\097\110\099\101'and k:IsDescendantOf(i)then
return h end end local function g(h,i)local j=i.Position-h.Origin if j.Magnitude
<=0.001 then return h end return Ray.new(h.Origin,j.Unit)end local function h(i)
local j=ak:GetMouse()local k local function l(m,n)local o=i.session if o and o.
target and m==j and(n=='\072\105\116'or n=='\084\097\114\103\101\116'or n=='\085\110\105\116\082\097\121')and not checkcaller()
then local p=f(o)if p then o.used='\109\111\117\115\101'if n=='\072\105\116'then return p.CFrame end if
n=='\084\097\114\103\101\116'then return p end return g(k(m,n),p)end end return k(m,n)end k=
hookmetamethod(game,'\095\095\105\110\100\101\120',type(newcclosure)=='\102\117\110\099\116\105\111\110'and newcclosure(l)or
l)end local function i(j)local k local l=math.cos(math.rad(8))local function m(n
,...)local o=j.session if o and o.target and o.camera==n and not checkcaller()
then local p=getnamecallmethod()if p=='\086\105\101\119\112\111\114\116\080\111\105\110\116\084\111\082\097\121'or p==
'\083\099\114\101\101\110\080\111\105\110\116\084\111\082\097\121'then local q=k(n,...)if q.Direction:Dot(o.camera.CFrame.
LookVector)>=l then local r=f(o)if r then o.used='\099\097\109\101\114\097'return g(q,r)end end
return q end end return k(n,...)end k=hookmetamethod(game,'\095\095\110\097\109\101\099\097\108\108',type(
newcclosure)=='\102\117\110\099\116\105\111\110'and newcclosure(m)or m)end local function j()if e then
return d end e=true if type(getgenv)~='\102\117\110\099\116\105\111\110'or type(hookmetamethod)~=
'\102\117\110\099\116\105\111\110'or type(checkcaller)~='\102\117\110\099\116\105\111\110'or type(getcallingscript)~='\102\117\110\099\116\105\111\110'
then return end local k=getgenv()local l=k.AnonHubSilentHooks_v2 if type(l)~=
'\116\097\098\108\101'then l={}k.AnonHubSilentHooks_v2=l end if not l.mouse then l.mouse=pcall(
h,l)end if ag and not l.camera and type(getnamecallmethod)=='\102\117\110\099\116\105\111\110'then l.
camera=pcall(i,l)end if l.mouse or(ag and l.camera)then d=l end return d end
local function k(l,m,n)local o=j()local p=o and l and l:FindFirstChildOfClass(
'\084\111\111\108')if not o or not p then if bm then table.clear(bm)end else if not bm then
bm={}end if bm.tool~=p then bm.used=false end bm.character,bm.tool,bm.target=l,p
,m bm.camera=ah()and n or nil o.session=bm end local q if not o then q=an(
'\077\105\114\097\032\115\105\108\101\110\099\105\111\115\097\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\032\110\101\115\116\101\032\101\120\101\099\117\116\111\114\046',
'\083\105\108\101\110\116\032\097\105\109\032\105\115\032\117\110\097\118\097\105\108\097\098\108\101\032\111\110\032\116\104\105\115\032\101\120\101\099\117\116\111\114\046')elseif not p then q=an(
'\069\113\117\105\112\101\032\117\109\097\032\097\114\109\097\032\112\097\114\097\032\117\115\097\114\032\097\032\109\105\114\097\032\115\105\108\101\110\099\105\111\115\097\046',
'\069\113\117\105\112\032\097\032\119\101\097\112\111\110\032\116\111\032\117\115\101\032\115\105\108\101\110\116\032\097\105\109\046')elseif bm.used=='\099\097\109\101\114\097'then q=an(
'\082\097\105\111\032\100\097\032\099\u{e2}\109\101\114\097\032\100\097\032\097\114\109\097\032\100\101\116\101\099\116\097\100\111\046','\087\101\097\112\111\110\032\099\097\109\101\114\097\032\114\097\121\032\100\101\116\101\099\116\101\100\046')elseif bm
.used=='\109\111\117\115\101'then q=an('\076\101\105\116\117\114\097\032\100\101\032\109\111\117\115\101\032\100\097\032\097\114\109\097\032\100\101\116\101\099\116\097\100\097\046',
'\087\101\097\112\111\110\032\109\111\117\115\101\032\105\110\112\117\116\032\100\101\116\101\099\116\101\100\046')else q=an(
'\065\103\117\097\114\100\097\110\100\111\032\101\110\116\114\097\100\097\032\099\111\109\112\097\116\u{ed}\118\101\108\032\100\097\032\097\114\109\097\046',
'\087\097\105\116\105\110\103\032\102\111\114\032\099\111\109\112\097\116\105\098\108\101\032\119\101\097\112\111\110\032\105\110\112\117\116\046')end if cx.Text~=q then cx.Text=q end end
local l={}for m,n in ipairs(aB)do if n[4]then l[n[1] ]=al.rgb(n[4])end end local
function m(n,o,p,q,r)cf.Visible=aE.aimCircle=='\101\110\097\098\108\101\100'or(aE.aimCircle=='\097\099\116\105\118\101'
and q)if cf.Visible then cf.Position,cf.Size=UDim2.fromOffset(o.X,o.Y),UDim2.
fromOffset(p*2,p*2)cg.Thickness=aE.aimWidth cg.Color=r and am.active or l[aE.
aimCircleColor]or am.accent end ch.Visible=aE.aimLabel and q if ch.Visible then
ch.Position=UDim2.fromOffset(o.X,math.min(n.Y-24,o.Y+(cf.Visible and p or 12)+5)
)local s=r and bk.DisplayName or an('\083\101\109\032\097\108\118\111\032\110\111\032\099\u{ed}\114\099\117\108\111',
'\078\111\032\116\097\114\103\101\116\032\105\110\115\105\100\101\032\116\104\101\032\099\105\114\099\108\101')if ch.Text~=s then ch.Text=s end end end local
function n(o,p,q,r,s)local t=o.CFrame local u=CFrame.lookAt(t.Position,p.
Position,t.UpVector)if q.X~=r.X*0.5 or q.Y~=r.Y*0.5 then local v=o:
ViewportPointToRay(q.X,q.Y).Direction local w=t:VectorToObjectSpace(v)local x=
CFrame.lookAt(Vector3.zero,w)u=u*x:Inverse()end if aE.aimResponse=='\115\109\111\111\116\104'then
local v=t if bl and bl.camera==o and bl.target==p then local w=bl.frame v=w+(t.
Position-w.Position)end u=v:Lerp(u,1-math.exp(-aE.aimSpeed*math.min(s,0.1)))end
o.CFrame=u bl={camera=o,target=p,frame=u}end local o=0 ad:BindToRenderStep(bF,
Enum.RenderPriority.Last.Value+1,function(p)if not a5.aim and not a5.fov and not
bi then return end local q=af.CurrentCamera cP(q,p)if not q then ci()cf.Visible=
false ch.Visible=false return end if a5.fov then bg=by(bg,q,'\070\105\101\108\100\079\102\086\105\101\119',aE.
cameraFov)end if not a5.aim then return end ck()local r=q.ViewportSize if r.X<=0
or r.Y<=0 then ci()cf.Visible=false ch.Visible=false return end local s=ah()
local t=aE.aimRadius if s and aE.aimAdaptiveFov then t*=math.clamp(math.min(r.X,
r.Y)/480,0.65,1.2)end local u=Vector2.new(math.clamp(r.X*0.5+aE.aimOffsetX,0,r.X
),math.clamp(r.Y*0.5+aE.aimOffsetY,0,r.Y))local v=aH()local w=v=='\097\108\119\097\121\115'or(v==
'\116\111\103\103\108\101'and bn)or(v=='\104\111\108\100'and(bo.aim or ae:IsMouseButtonPressed(Enum.
UserInputType.MouseButton2)or ae:IsKeyDown(Enum.KeyCode.LeftAlt)))local x,y,z=
bv(ak,aE.espCustomRigs)if not w or(s and aN.Visible)or not x or(z and z.Health<=
0)or ae:GetFocusedTextBox()or(not aE.aimCustomCamera and q.CameraType==Enum.
CameraType.Scriptable)then ci()o=0 m(r,u,t,false,nil)return end local A=y and y.
Position or q.CFrame.Position local B=t local C,D if bk then C,D=cU(q,bk,u,aE.
aimSticky and B*1.12 or B,A,x)if not C then ci()end end if(not C or not aE.
aimSticky)and os.clock()>=o then o=os.clock()+0.06 for E,F in ipairs(ac:
GetPlayers())do if F~=bk then local G,H=cU(q,F,u,B,A,x,D)if G then C,D,bk=G,H,F
end end end end if aj and aE.aimResponse=='\115\105\108\101\110\116'then k(x,C,q)elseif C then n(q
,C,u,r,p)end m(r,u,t,true,C)end)ab.ready()end a['\104\105\108\108\099\108\105\109\098\047\109\097\105\110\046\108\117\097']=function(
...)local aa='\048\046\051\056\046\049\051'local ab=...assert(type(ab)=='\116\097\098\108\101'and ab.access,
'\065\098\114\097\032\112\101\108\111\032\108\111\097\100\101\114\032\097\117\116\101\110\116\105\099\097\100\111')local ac=game:GetService('\080\108\097\121\101\114\115')local ad=game:
GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101')local ae=game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local af=
game:GetService('\084\119\101\101\110\083\101\114\118\105\099\101')local ag=ac.LocalPlayer local ah,ai={},{}local aj
,ak local al=true local am={dark=Color3.fromRGB(12,12,16),tile=Color3.fromRGB(39
,24,53),edge=Color3.fromRGB(150,60,220),text=Color3.fromRGB(255,245,255),muted=
Color3.fromRGB(202,180,216),accent=Color3.fromRGB(235,165,255)}am.sidebar=Color3
.fromRGB(25,15,35)local an=setmetatable({},{__mode='\107'})local ao=am.accent local
function ap(aq,ar)return ab.language=='\112\116'and aq or ar end local function aq(ar,
as,at)local au=Instance.new(ar)if au:IsA('\071\117\105\079\098\106\101\099\116')then au.BorderSizePixel=0
end for av,aw in pairs(as)do au[av]=aw if typeof(aw)=='\067\111\108\111\114\051'then for ax,ay in
pairs(am)do if aw==ay then an[au]=an[au]or{}an[au][av]=ax break end end end end
if au:IsA('\084\101\120\116\076\097\098\101\108')or au:IsA('\084\101\120\116\066\117\116\116\111\110')or au:IsA('\084\101\120\116\066\111\120')then au.
AutoLocalize=false end au.Parent=at return au end local function ar(as,at)ah[#ah
+1]=as:Connect(at)end local function as(at,au)af:Create(at,TweenInfo.new(0.18,
Enum.EasingStyle.Quad,Enum.EasingDirection.Out),au):Play()end local function at(
au,av)aq('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,av or 10)},au)end local function au
(av)return aq('\085\073\083\116\114\111\107\101',{Color=am.edge,Thickness=1,ApplyStrokeMode=Enum.
ApplyStrokeMode.Border},av)end local av=aq('\083\099\114\101\101\110\071\117\105',{Name='\065\110\111\110\072\117\098\072\105\108\108\067\108\105\109\098',
ResetOnSpawn=false,DisplayOrder=10032,ZIndexBehavior=Enum.ZIndexBehavior.Sibling
},ag:WaitForChild('\080\108\097\121\101\114\071\117\105'))local aw=aq('\070\114\097\109\101',{AnchorPoint=Vector2.new(0.5,
0.5),Size=UDim2.fromScale(0.94,0.88),Position=UDim2.fromScale(0.5,0.5),
BackgroundColor3=am.dark,ClipsDescendants=true},av)at(aw,9)au(aw)aq('\085\073\071\114\097\100\105\101\110\116'
,{Color=ColorSequence.new(am.tile,am.dark),Rotation=90},aw)local ax=aq('\070\114\097\109\101',{
Size=UDim2.new(0,174,1,0),BackgroundColor3=am.sidebar},aw)aq('\084\101\120\116\076\097\098\101\108',{Text=
'\065\078\079\078\072\085\066',Position=UDim2.fromOffset(17,24),Size=UDim2.fromOffset(145,28),
BackgroundTransparency=1,TextColor3=am.text,Font=Enum.Font.GothamBold,TextSize=
20,TextXAlignment=Enum.TextXAlignment.Left},ax)aq('\084\101\120\116\076\097\098\101\108',{Text=
'\072\073\076\076\032\067\076\073\077\066\032\047\032\067\079\078\084\082\079\076',Position=UDim2.fromOffset(18,56),Size=UDim2.fromOffset(
146,20),BackgroundTransparency=1,TextColor3=ao,Font=Enum.Font.Code,TextSize=9,
TextXAlignment=Enum.TextXAlignment.Left},ax)aq('\084\101\120\116\076\097\098\101\108',{Text=ag.DisplayName,
Position=UDim2.new(0,16,1,-62),Size=UDim2.new(1,-32,0,24),BackgroundTransparency
=1,TextColor3=am.text,Font=Enum.Font.GothamMedium,TextSize=12,TextTruncate=Enum.
TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left},ax)local ay=aq(
'\070\114\097\109\101',{Size=UDim2.new(1,0,0,68),BackgroundTransparency=1,Active=true},aw)local
az=aq('\084\101\120\116\076\097\098\101\108',{Text='\065',Font=Enum.Font.GothamBlack,TextSize=20,TextColor3=am
.dark,BackgroundColor3=ao,Position=UDim2.fromOffset(16,16),Size=UDim2.
fromOffset(36,36)},ay)at(az)az.Text=string.upper(ag.DisplayName:sub(1,1))az.Size
=UDim2.fromOffset(40,40)az.Position=UDim2.fromOffset(14,16)local aA=aq(
'\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Image=
'\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\065\118\097\116\097\114\072\101\097\100\083\104\111\116\038\105\100\061'..ag.UserId..'\038\119\061\049\053\048\038\104\061\049\053\048',ScaleType=Enum.
ScaleType.Fit},az)at(aA,10)ar(aA:GetPropertyChangedSignal('\073\115\076\111\097\100\101\100'),function()
if aA.IsLoaded then az.TextTransparency=1 end end)local aB=aq('\084\101\120\116\076\097\098\101\108',{Text=
ag.DisplayName,Size=UDim2.new(1,-154,0,22),Position=UDim2.fromOffset(64,8),
BackgroundTransparency=1,TextColor3=am.text,TextSize=15,Font=Enum.Font.
GothamBold,TextTruncate=Enum.TextTruncate.AtEnd,TextXAlignment=Enum.
TextXAlignment.Left},ay)aq('\084\101\120\116\076\097\098\101\108',{Text='\064'..ag.Name,Position=UDim2.
fromOffset(65,31),Size=UDim2.new(1,-154,0,16),BackgroundTransparency=1,
TextColor3=am.muted,TextSize=11,Font=Enum.Font.Gotham,TextTruncate=Enum.
TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left},ay)local aC=aq(
'\084\101\120\116\076\097\098\101\108',{Text='',Position=UDim2.fromOffset(65,49),Size=UDim2.new(1,-82,0,18)
,BackgroundTransparency=1,TextColor3=ao,TextSize=10,Font=Enum.Font.GothamMedium,
TextXAlignment=Enum.TextXAlignment.Left},ay)local function aD(aE,aF,aG)local aH=
aE.plan=='\080\114\101\109\105\117\109'and'\080\114\101\109\105\117\109'or'\077\101\109\098\101\114'local aI=type(aE.deadline)=='\110\117\109\098\101\114'and
aE.deadline-aF or type(aE.expiresAt)=='\110\117\109\098\101\114'and aE.expiresAt-aG if aI then if
aI<=0 then return aH..ap('\032\u{b7}\032\069\120\112\105\114\097\100\111','\032\u{b7}\032\069\120\112\105\114\101\100')end local aJ=math.
floor(aI)local aL=math.floor(aJ/86400)aJ=aJ%86400 local aM=math.floor(aJ/3600)
local aN=math.floor(aJ%3600/60)local aO=(aL>0 and aL..'\100\032'or'')..string.format(
'\037\048\050\100\104\032\037\048\050\100\109\032\037\048\050\100\115',aM,aN,aJ%60)return aH..'\032\u{b7}\032'..aO end return aH..(aE.
lifetime==true and ap('\032\u{b7}\032\086\105\116\097\108\u{ed}\099\105\111','\032\u{b7}\032\076\105\102\101\116\105\109\101')or ap(
'\032\u{b7}\032\080\114\097\122\111\032\110\u{e3}\111\032\105\110\102\111\114\109\097\100\111','\032\u{b7}\032\068\117\114\097\116\105\111\110\032\117\110\097\118\097\105\108\097\098\108\101'))end aC.Text=
aD(ab.access,os.clock(),os.time())task.spawn(function()while al do aC.Text=aD(ab
.access,os.clock(),os.time())task.wait(1)end end)local aE=aq('\084\101\120\116\076\097\098\101\108',{Text=
ap('\077\u{d3}\068\085\076\079\032\068\079\032\074\079\071\079\032\032\047\032\032\080\084','\071\065\077\069\032\077\079\068\085\076\069\032\032\047\032\032\069\078')..'\032\u{b7}\032\118'..aa,Size=
UDim2.new(1,-32,0,30),Position=UDim2.new(0,16,1,-32),BackgroundTransparency=1,
TextColor3=am.muted,TextSize=10,Font=Enum.Font.Code,TextXAlignment=Enum.
TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd},aw)local aF=aq(
'\084\101\120\116\066\117\116\116\111\110',{Text='\065',Size=UDim2.fromOffset(52,52),Position=UDim2.fromScale(
0.02,0.7),BackgroundColor3=ao,TextColor3=am.dark,TextSize=20,Font=Enum.Font.
GothamBlack},av)at(aF,16)au(aF)if ab.decorateLauncher then ab.decorateLauncher(
aF)end local aG=aq('\070\114\097\109\101',{Size=UDim2.new(1,-32,0,44),Position=UDim2.
fromOffset(16,72),BackgroundColor3=am.tile},aw)at(aG)local aH,aI={},{}local aJ=
'\070\097\114\109'local aL={Farm='\070\097\114\109',Cartas='\067\097\114\100\115',Combate='\067\111\109\098\097\116',Ajustes='\083\101\116\116\105\110\103\115'}
local function aM(aN)aJ=aN for aO,aP in pairs(aH)do aP.Visible=aO==aN as(aI[aO],
{BackgroundColor3=aO==aN and ao or am.tile,TextColor3=aO==aN and am.dark or am.
muted})if aO==aN then local aQ=aP.Position aP.Position=aQ+UDim2.fromOffset(6,0)
as(aP,{Position=aQ})end end end local function aN(aO)if aH[aO]then return aH[aO]
end local aP=aq('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Name=aO,Size=UDim2.new(1,-32,1,-166),Position=
UDim2.fromOffset(16,126),BackgroundTransparency=1,ScrollBarThickness=3,
ScrollBarImageColor3=ao,CanvasSize=UDim2.new(),AutomaticCanvasSize=Enum.
AutomaticSize.Y,Visible=aO=='\070\097\114\109'},aw)aq('\085\073\076\105\115\116\076\097\121\111\117\116',{Padding=UDim.new(0,8),
SortOrder=Enum.SortOrder.LayoutOrder},aP)aq('\085\073\080\097\100\100\105\110\103',{PaddingTop=UDim.new(0,2
),PaddingBottom=UDim.new(0,12),PaddingLeft=UDim.new(0,2)},aP)local aQ={Farm=ap(
'\065\117\116\111\032\087\105\110\032\049\048\075\032\u{b7}\032\077\117\110\100\111\032\049','\065\117\116\111\032\087\105\110\032\049\048\075\032\u{b7}\032\087\111\114\108\100\032\049'),Cartas=ap(
'\079\114\103\097\110\105\122\101\032\115\117\097\032\099\111\108\101\u{e7}\u{e3}\111\032\101\032\097\117\116\111\109\097\116\105\122\101\032\097\115\032\109\101\108\104\111\114\105\097\115\046',
'\077\097\110\097\103\101\032\121\111\117\114\032\099\111\108\108\101\099\116\105\111\110\032\097\110\100\032\097\117\116\111\109\097\116\101\032\117\112\103\114\097\100\101\115\046'),Combate=ap(
'\067\111\110\116\114\111\108\101\115\032\100\101\032\099\111\109\098\097\116\101\032\101\032\104\097\098\105\108\105\100\097\100\101\115\046','\067\111\109\098\097\116\032\097\110\100\032\097\098\105\108\105\116\121\032\099\111\110\116\114\111\108\115\046'),Ajustes=
ap('\080\101\114\115\111\110\097\108\105\122\101\032\111\032\112\097\105\110\101\108\032\101\032\097\115\032\114\101\103\114\097\115\032\100\101\032\097\117\116\111\109\097\u{e7}\u{e3}\111\046',
'\067\117\115\116\111\109\105\122\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\097\117\116\111\109\097\116\105\111\110\032\114\117\108\101\115\046')}local aR=aq('\084\101\120\116\076\097\098\101\108',{Text=ab.
language=='\112\116'and aO or aL[aO],Size=UDim2.new(1,-8,0,28),LayoutOrder=-30,
BackgroundTransparency=1,TextColor3=am.text,TextSize=20,Font=Enum.Font.
GothamBold,TextXAlignment=Enum.TextXAlignment.Left},aP)aq('\084\101\120\116\076\097\098\101\108',{Text=aQ[
aO],Size=UDim2.new(1,-8,0,38),LayoutOrder=-29,BackgroundTransparency=1,
TextColor3=am.muted,TextSize=12,TextWrapped=true,Font=Enum.Font.Gotham,
TextXAlignment=Enum.TextXAlignment.Left},aP)local aS=0 for aT in pairs(aH)do aS
+=1 end local aT=aq('\084\101\120\116\066\117\116\116\111\110',{Text=ab.language=='\112\116'and aO or aL[aO],Font=
Enum.Font.GothamMedium,TextSize=12,TextColor3=aO=='\070\097\114\109'and am.dark or am.muted,
Size=UDim2.new(0.5,-8,1,-8),Position=UDim2.new(aS*0.5,4,0,4),BackgroundColor3=aO
=='\070\097\114\109'and ao or am.tile,AutoButtonColor=false},aG)at(aT,8)aq('\085\073\080\097\100\100\105\110\103',{
PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,10)},aT)aH[aO]=aP aI[aO]=aT
ar(aT.Activated,function()aM(aO)end)return aP end local aO={}function aO.label(
aP,aQ,aR,aS,aT)local aU=aq(aQ,{Text=aR,Size=UDim2.new(1,-10,0,aS),LayoutOrder=aT
,BackgroundTransparency=aQ=='\084\101\120\116\066\111\120'and 0 or 1,BackgroundColor3=am.tile,
TextColor3=am.text,TextSize=13,Font=Enum.Font.Gotham,TextWrapped=true,
TextXAlignment=Enum.TextXAlignment.Left},aP)aq('\085\073\080\097\100\100\105\110\103',{PaddingLeft=UDim.
new(0,12),PaddingRight=UDim.new(0,12)},aU)if aQ=='\084\101\120\116\066\111\120'then at(aU,8)au(aU)aU.
ClearTextOnFocus=false ar(aU.Focused,function()as(aU,{BackgroundColor3=am.edge})
end)ar(aU.FocusLost,function()as(aU,{BackgroundColor3=am.tile})end)end return aU
end function aO.button(aP,aQ,aR)local aS=aO.label(aP,'\084\101\120\116\066\117\116\116\111\110',aQ,48,aR)aS.
BackgroundTransparency=0 aS.AutoButtonColor=false at(aS,10)au(aS)local aT=aq(
'\070\114\097\109\101',{Name='\066\117\116\116\111\110\083\104\097\100\111\119',Position=UDim2.new(0,4,1,1),Size=UDim2.new(1,-8,0,3
),BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=0.6,Active=false},aS
)at(aT,3)ar(aS.MouseEnter,function()as(aS,{BackgroundColor3=am.edge})end)ar(aS.
MouseLeave,function()as(aS,{BackgroundColor3=am.tile})end)ar(aS.MouseButton1Down
,function()as(aS,{BackgroundColor3=am.dark})end)ar(aS.MouseButton1Up,function()
as(aS,{BackgroundColor3=am.tile})end)return aS end local aP={}function aO.
checkbox(aQ,aR,aS)local aT=aO.button(aQ,'',aS)local aU=aO.label(aT,'\084\101\120\116\076\097\098\101\108',
aR,48,0)aU.Size=UDim2.new(1,-44,1,0)local aV=aq('\084\101\120\116\076\097\098\101\108',{Text='',AnchorPoint
=Vector2.new(1,0.5),Position=UDim2.new(1,-2,0.5,0),Size=UDim2.fromOffset(24,24),
TextSize=18,Font=Enum.Font.GothamBold,TextColor3=am.dark,BackgroundColor3=am.
dark},aT)at(aV,6)local aW=au(aV)local aX=false local function aY(aZ)aX=aZ==true
aV.Text=aX and'\u{2713}'or''as(aV,{BackgroundColor3=aX and ao or am.dark})as(aW,
{Color=aX and ao or am.edge})end aP[#aP+1]=function()aY(aX)end return aT,aY end
local aQ={}function aQ.resolve(aR,aS,aT)local aU=math.max(0.1,math.min(aT.scale/
100,math.max(1,aR-16)/300,math.max(1,aS-16)/340))local aV=math.min(aT.width,math
.max(1,aR-16)/aU)local aW=math.min(aT.height,math.max(1,aS-16)/aU)return{scale=
aU,width=aV,height=aW,x=8+math.max(0,aR-16-aV*aU)*aT.x,y=8+math.max(0,aS-16-aW*
aU)*aT.y,compact=aV<620}end local aR='\065\110\111\110\072\117\098\095\072\105\108\108\067\108\105\109\098\095\076\097\121\111\117\116\095'..ag.UserId..
'\046\106\115\111\110'local aS={width=760,height=580,scale=ad.TouchEnabled and 80 or 100,
launcher=56,x=0.5,y=0.5}local aT=table.clone(aS)local aU={width={300,1100},
height={340,900},scale={65,150},launcher={44,88},x={0,1},y={0,1}}if type(
readfile)=='\102\117\110\099\116\105\111\110'then pcall(function()local aV=ae:JSONDecode(readfile(aR))
for aW,aX in pairs(aU)do local aY=aV[aW]if type(aY)=='\110\117\109\098\101\114'and aY==aY then aT[
aW]=math.clamp(aY,aX[1],aX[2])end end end)end local function aV()if type(
writefile)=='\102\117\110\099\116\105\111\110'then pcall(writefile,aR,ae:JSONEncode(aT))end end local aW
=aq('\085\073\083\099\097\108\101',{Scale=1},aw)local function aX()local aY=av.AbsoluteSize if aY.X<
100 or aY.Y<100 then return end local aZ=aQ.resolve(aY.X,aY.Y,aT)aw.AnchorPoint=
Vector2.zero aw.Size=UDim2.fromOffset(aZ.width,aZ.height)aw.Position=UDim2.
fromOffset(aZ.x,aZ.y)aW.Scale=aZ.scale ax.Visible=not aZ.compact ay.Position=
UDim2.fromOffset(aZ.compact and 0 or 174,0)ay.Size=UDim2.new(1,aZ.compact and 0
or-174,0,76)aG.Parent=aw aG.Position=aZ.compact and UDim2.new(0,12,1,-84)or
UDim2.fromOffset(12,100)aG.Size=aZ.compact and UDim2.new(1,-24,0,44)or UDim2.
new(0,150,1,-180)aG.BackgroundTransparency=1 for a_,a0 in ipairs({'\070\097\114\109',
'\065\106\117\115\116\101\115'})do local a1=aI[a0]if a1 then a1.Size=aZ.compact and UDim2.new(0.5,-6,
0,42)or UDim2.new(1,0,0,44)a1.Position=aZ.compact and UDim2.new((a_-1)*0.5,0,0,0
)or UDim2.fromOffset(0,(a_-1)*52)a1.Text=aZ.compact and(ab.language=='\112\116'and a0
or aL[a0])or string.format('\037\048\050\100\032\u{b7}\032\037\115',a_,ab.language=='\112\116'and a0 or aL[a0]
)a1.TextXAlignment=aZ.compact and Enum.TextXAlignment.Center or Enum.
TextXAlignment.Left end end for a_,a0 in pairs(aH)do a0.Position=UDim2.
fromOffset(aZ.compact and 16 or 190,88)a0.Size=UDim2.new(1,aZ.compact and-32 or-
206,1,aZ.compact and-184 or-136)end aE.Position=UDim2.new(0,aZ.compact and 16 or
190,1,-34)aE.Size=UDim2.new(1,aZ.compact and-40 or-214,0,26)aF.Size=UDim2.
fromOffset(aT.launcher,aT.launcher)end ar(av:GetPropertyChangedSignal(
'\065\098\115\111\108\117\116\101\083\105\122\101'),aX)local aY={}local function aZ(a_)aO.label(a_,'\084\101\120\116\076\097\098\101\108',ap(
'\084\069\076\065\032\069\032\084\079\081\085\069','\068\073\083\080\076\065\089\032\038\032\084\079\085\067\072'),32,-10)aO.label(a_,'\084\101\120\116\076\097\098\101\108',ap(
'\065\114\114\097\115\116\101\032\111\032\099\097\098\101\u{e7}\097\108\104\111\032\112\097\114\097\032\109\111\118\101\114\046\032\085\115\101\032\111\032\099\097\110\116\111\032\105\110\102\101\114\105\111\114\032\112\097\114\097\032\114\101\100\105\109\101\110\115\105\111\110\097\114\046\032\079\115\032\097\106\117\115\116\101\115\032\115\u{e3}\111\032\115\097\108\118\111\115\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046'
,
"\068\114\097\103\032\116\104\101\032\104\101\097\100\101\114\032\116\111\032\109\111\118\101\046\032\085\115\101\032\116\104\101\032\098\111\116\116\111\109\032\099\111\114\110\101\114\032\116\111\032\114\101\115\105\122\101\046\032\067\104\097\110\103\101\115\032\097\114\101\032\115\097\118\101\100\032\097\117\116\111\109\097\116\105\099\097\108\108\121\046"
),64,-9)for a0,a1 in ipairs({{'\115\099\097\108\101','\069\115\099\097\108\097\032\100\097\032\105\110\116\101\114\102\097\099\101','\073\110\116\101\114\102\097\099\101\032\115\099\097\108\101',5,
'\037'},{'\119\105\100\116\104','\076\097\114\103\117\114\097\032\100\111\032\112\097\105\110\101\108','\080\097\110\101\108\032\119\105\100\116\104',10,'\032\112\120'},{'\104\101\105\103\104\116',
'\065\108\116\117\114\097\032\100\111\032\112\097\105\110\101\108','\080\097\110\101\108\032\104\101\105\103\104\116',10,'\032\112\120'},{'\108\097\117\110\099\104\101\114','\084\097\109\097\110\104\111\032\100\111\032\102\108\117\116\117\097\110\116\101',
'\070\108\111\097\116\105\110\103\032\098\117\116\116\111\110\032\115\105\122\101',2,'\032\112\120'}})do local a2=a1[1]local a3=aq('\070\114\097\109\101',{Size=
UDim2.new(1,-8,0,76),BackgroundColor3=am.tile,LayoutOrder=-8+a0},a_)at(a3,10)au(
a3)local a4=aO.label(a3,'\084\101\120\116\076\097\098\101\108',ap(a1[2],a1[3]),28,0)a4.Size=UDim2.new(1,0,0
,28)local a5=aO.button(a3,'\u{2212}',0)a5.Size=UDim2.fromOffset(42,36)a5.
Position=UDim2.fromOffset(12,32)a5.TextXAlignment=Enum.TextXAlignment.Center
local a6=aO.label(a3,'\084\101\120\116\066\111\120','',36,0)a6.Position=UDim2.fromOffset(62,32)a6.
Size=UDim2.new(1,-124,0,36)a6.TextXAlignment=Enum.TextXAlignment.Center local a7
=aO.button(a3,'\043',0)a7.Size=UDim2.fromOffset(42,36)a7.Position=UDim2.new(1,-54,0
,32)a7.TextXAlignment=Enum.TextXAlignment.Center local function a8()a6.Text=
tostring(math.floor(aT[a2]))..a1[5]end aY[#aY+1]=a8 local function a9(b)if b and
b==b then aT[a2]=math.clamp(b,aU[a2][1],aU[a2][2])aX()aV()end a8()end ar(a5.
Activated,function()a9(aT[a2]-a1[4])end)ar(a7.Activated,function()a9(aT[a2]+a1[4
])end)ar(a6.FocusLost,function()a9(tonumber(a6.Text:match('\091\037\100\037\046\093\043')))end)a8()
end local a0=aO.button(a_,ap('\067\101\110\116\114\097\108\105\122\097\114\032\101\032\114\101\115\116\097\117\114\097\114\032\116\097\109\097\110\104\111',
'\067\101\110\116\101\114\032\097\110\100\032\114\101\115\116\111\114\101\032\115\105\122\101'),-3)ar(a0.Activated,function()aT=table.clone(aS)aX()
aV()for a1,a2 in ipairs(aY)do a2()end end)end local a_=aq('\084\101\120\116\066\117\116\116\111\110',{Text=
'\u{25e2}',TextSize=20,TextColor3=am.muted,BackgroundTransparency=1,Size=UDim2.
fromOffset(30,30),Position=UDim2.new(1,-30,1,-30)},aw)local a0 local function a1
(a2,a3)if a2.UserInputType~=Enum.UserInputType.MouseButton1 and a2.UserInputType
~=Enum.UserInputType.Touch then return end a0={input=a2,kind=a3,origin=a2.
Position,pos=aw.Position,width=aw.Size.X.Offset,height=aw.Size.Y.Offset}end ar(
ay.InputBegan,function(a2)a1(a2,'\109\111\118\101')end)ar(a_.InputBegan,function(a2)a1(a2,
'\114\101\115\105\122\101')end)ar(ad.InputChanged,function(a2)if not a0 or(a2~=a0.input and a2.
UserInputType~=Enum.UserInputType.MouseMovement)then return end local a3=a2.
Position-a0.origin local a4=av.AbsoluteSize if a0.kind=='\114\101\115\105\122\101'then aT.width=
math.clamp(a0.width+a3.X/aW.Scale,300,1100)aT.height=math.clamp(a0.height+a3.Y/
aW.Scale,340,900)else local a5=math.max(1,a4.X-16-aw.Size.X.Offset*aW.Scale)
local a6=math.max(1,a4.Y-16-aw.Size.Y.Offset*aW.Scale)aT.x=math.clamp((a0.pos.X.
Offset+a3.X-8)/a5,0,1)aT.y=math.clamp((a0.pos.Y.Offset+a3.Y-8)/a6,0,1)end aX()
end)ar(ad.InputEnded,function(a2)if a0 and a2==a0.input then a0=nil aV()for a3,
a4 in ipairs(aY)do a4()end end end)local function a2()if not al then return end
al=false if aj then pcall(aj)end for a3,a4 in ipairs(ah)do a4:Disconnect()end av
:Destroy()end ab.attach(a2)local function a3(a4)aw.Visible=a4 if a4 then aX()
local a5=aw.Position aw.Position=a5+UDim2.fromOffset(0,8)as(aw,{Position=a5})end
end local a4=aq('\084\101\120\116\066\117\116\116\111\110',{Text='\u{2014}',Size=UDim2.fromOffset(32,32),
Position=UDim2.new(1,-76,0,16)},ay)local a5=aq('\084\101\120\116\066\117\116\116\111\110',{Text='\u{d7}',Size=
UDim2.fromOffset(32,32),Position=UDim2.new(1,-38,0,16)},ay)for a6,a7 in ipairs({
a4,a5})do a7.BackgroundColor3=am.tile a7.TextColor3=am.text a7.Font=Enum.Font.
GothamMedium a7.TextSize=18 at(a7,8)end ar(a4.Activated,function()a3(false)end)
ar(a5.Activated,function()ab.unload()end)local a6,a7,a8,a9,b ar(aF.InputBegan,
function(bb)if bb.UserInputType==Enum.UserInputType.MouseButton1 or bb.
UserInputType==Enum.UserInputType.Touch then a6=bb a7=bb.Position a8=aF.Position
a9=os.clock()b=false end end)ar(ad.InputChanged,function(bb)if a6 and(bb==a6 or
bb.UserInputType==Enum.UserInputType.MouseMovement)then local bc=bb.Position-a7
if bc.Magnitude>8 then b=true end if b then local be=av.AbsoluteSize local bf=
math.clamp(a8.X.Scale*be.X+a8.X.Offset+bc.X,0,math.max(0,be.X-aT.launcher))local
bg=math.clamp(a8.Y.Scale*be.Y+a8.Y.Offset+bc.Y,0,math.max(0,be.Y-aT.launcher))aF
.Position=UDim2.fromOffset(bf,bg)end end end)ar(ad.InputEnded,function(bb)if a6
and(bb==a6 or bb.UserInputType==Enum.UserInputType.MouseButton1)then if not b
then if os.clock()-a9>=0.65 then if ak then ak()end else a3(not aw.Visible)end
end a6=nil end end)ar(ad.InputBegan,function(bb,bc)if not bc and bb.KeyCode==
Enum.KeyCode.RightControl then a3(not aw.Visible)end end)local bb=os.clock()
local bc,be=false,false local function bf()return bc and(be or os.clock()-bb>=
2.5)end local bg=aq('\070\114\097\109\101',{Name='\076\111\097\100\105\110\103',Size=UDim2.fromScale(1,1),
BackgroundColor3=am.dark,ZIndex=50},aw)at(bg,10)local bh=aq('\084\101\120\116\076\097\098\101\108',{Text=
'\065\078\079\078\072\085\066',Position=UDim2.fromScale(0.1,0.045),Size=UDim2.fromScale(0.8,0.12),
BackgroundTransparency=1,Font=Enum.Font.GothamBlack,TextSize=28,TextColor3=ao,
ZIndex=51},bg)local bi=aq('\084\101\120\116\076\097\098\101\108',{Text=ap('\067\097\114\114\101\103\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115',
'\076\111\097\100\105\110\103\032\102\101\097\116\117\114\101\115'),Position=UDim2.fromScale(0.1,0.59),Size=UDim2.fromScale(0.8,
0.1),BackgroundTransparency=1,Font=Enum.Font.GothamBold,TextSize=18,TextWrapped=
true,TextColor3=am.text,ZIndex=51},bg)local bj=aq('\084\101\120\116\076\097\098\101\108',{Text='',Position=
UDim2.fromScale(0.1,0.69),Size=UDim2.fromScale(0.8,0.1),BackgroundTransparency=1
,Font=Enum.Font.Gotham,TextSize=13,TextWrapped=true,TextColor3=am.muted,ZIndex=
51},bg)local bk=aq('\070\114\097\109\101',{Position=UDim2.fromScale(0.15,0.82),Size=UDim2.new(
0.7,0,0,10),BackgroundColor3=am.edge,ZIndex=51},bg)at(bk,4)local bl=aq('\070\114\097\109\101',{
Size=UDim2.fromScale(0,1),BackgroundColor3=ao,ZIndex=52},bk)at(bl,4)aq(
'\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(Color3.fromRGB(150,60,220),Color3.fromRGB(
235,165,255)),Rotation=0},bl)local bm=aq('\084\101\120\116\076\097\098\101\108',{Text=
'\072\073\076\076\032\067\076\073\077\066\032\047\032\065\078\079\078\072\085\066\032\032\u{b7}\032\032\118'..aa,Position=UDim2.fromScale(0.1,0.145),Size=
UDim2.fromScale(0.8,0.05),BackgroundTransparency=1,Font=Enum.Font.Code,TextSize=
10,TextColor3=am.muted,ZIndex=51},bg)local bn=aq('\084\101\120\116\076\097\098\101\108',{Text='',Position=
UDim2.fromScale(0.15,0.87),Size=UDim2.fromScale(0.7,0.06),BackgroundTransparency
=1,Font=Enum.Font.Code,TextSize=11,TextColor3=am.muted,ZIndex=51},bg)local bo=
aq('\070\114\097\109\101',{Name='\071\097\109\101\067\111\118\101\114',Position=UDim2.fromScale(0.12,0.22),Size=UDim2.
fromScale(0.76,0.34),BackgroundColor3=am.tile,ClipsDescendants=true,ZIndex=51},
bg)at(bo,14)aq('\085\073\083\116\114\111\107\101',{Color=ao,Thickness=2,Transparency=0.15,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border},bo)local bp=aq('\073\109\097\103\101\076\097\098\101\108',{Size=
UDim2.fromScale(1,1),BackgroundTransparency=1,Image=ab.identity and ab.identity.
cover or"\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\071\097\109\101\084\104\117\109\098\110\097\105\108\038\105\100\061\049\048\048\057\056\049\057\049\055\050\048\048\054\054\057\038\119\061\052\056\048\038\104\061\050\055\048",
ScaleType=Enum.ScaleType.Crop,ZIndex=52},bo)at(bp,14)aq('\084\101\120\116\076\097\098\101\108',{Text=
'\073\077\080\079\083\083\073\066\076\069\032\072\073\076\076\032\067\076\073\077\066',Size=UDim2.new(1,0,0,30),Position=UDim2.new(0,0,1,-30),
BackgroundColor3=am.dark,BackgroundTransparency=0.25,TextColor3=Color3.new(1,1,1
),TextSize=12,Font=Enum.Font.GothamBold,ZIndex=53},bo)local bq=aq('\070\114\097\109\101',{Name=
'\067\111\118\101\114\082\101\102\108\101\099\116\105\111\110',Size=UDim2.fromScale(1,1),BackgroundColor3=Color3.new(1,1,1),
ZIndex=54,Active=false},bo)at(bq,14)local br=aq('\085\073\071\114\097\100\105\101\110\116',{Rotation=20,Offset
=Vector2.new(-1,0),Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0
,1),NumberSequenceKeypoint.new(0.4,1),NumberSequenceKeypoint.new(0.5,0.65),
NumberSequenceKeypoint.new(0.6,1),NumberSequenceKeypoint.new(1,1)})},bq)local bs
=af:Create(br,TweenInfo.new(1.6,Enum.EasingStyle.Linear,Enum.EasingDirection.Out
,-1,false,0.6),{Offset=Vector2.new(1,0)})bs:Play()ar(bg.Destroying,function()bs:
Cancel()end)task.spawn(function()pcall(function()game:GetService(
'\067\111\110\116\101\110\116\080\114\111\118\105\100\101\114'):PreloadAsync({bp})end)end)local bt=aq('\084\101\120\116\066\117\116\116\111\110',{Text=ap(
'\080\117\108\097\114\032\097\110\105\109\097\u{e7}\u{e3}\111','\083\107\105\112\032\097\110\105\109\097\116\105\111\110'),Position=UDim2.fromScale(0.3,0.93),
Size=UDim2.fromScale(0.4,0.055),BackgroundColor3=am.tile,TextColor3=am.text,Font
=Enum.Font.GothamMedium,TextSize=11,ZIndex=52},bg)at(bt,8)ar(bt.Activated,
function()be=true if bc then bg:Destroy()else bt.Text=ap(
'\065\103\117\097\114\100\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115\u{2026}','\087\097\105\116\105\110\103\032\102\111\114\032\102\101\097\116\117\114\101\115\u{2026}')bt.Active=
false end end)local bu=aq('\084\101\120\116\066\117\116\116\111\110',{Text=ap('\070\101\099\104\097\114','\067\108\111\115\101'),Position=UDim2
.new(1,-88,0,12),Size=UDim2.fromOffset(76,32),BackgroundColor3=am.tile,
TextColor3=am.text,Font=Enum.Font.Gotham,TextSize=12,ZIndex=52},bg)at(bu,8)ar(bu
.Activated,function()ab.unload()end)local function bv(bw,bx,by)if not al then
error('\073\110\105\116\105\097\108\105\122\097\116\105\111\110\032\099\097\110\099\101\108\108\101\100')end bj.Text=ap(bx,by)bn.Text=string.format(
'\037\100\037\037',math.floor(bw*100))if ab.progress then ab.progress(0.43+0.57*bw,bx,by)end
as(bl,{Size=UDim2.fromScale(bw,1)})game:GetService('\082\117\110\083\101\114\118\105\099\101').Heartbeat:Wait(
)end aX()bv(0.08,'\080\114\101\112\097\114\097\110\100\111\032\097\032\105\110\116\101\114\102\097\099\101\u{2026}',
'\080\114\101\112\097\114\105\110\103\032\116\104\101\032\105\110\116\101\114\102\097\099\101\u{2026}')local bw=function(bw)assert(game.PlaceId==
100981917200669 and game.GameId==10772968523,'\087\114\111\110\103\032\103\097\109\101')local bx,by,bz=bw.ui,
bw.T,bw.section('\070\097\114\109')local bA=Vector3.new(-8483.69,2631.8,-478.82)local bB,bC,
bD=false,true,true local bE,bF=true,false local bG,bH=0,-10 local bI,bJ local bK
={}local function bL(bM,bN)bK[#bK+1]=bM:Connect(bN)end bw.attach(function()bE=
false bB=false for bM,bN in ipairs(bK)do bN:Disconnect()end end)local bM=bx.
label(bz,'\084\101\120\116\076\097\098\101\108','\065\085\084\079\032\087\073\078\032\049\048\075',38,1)bM.Font,bM.TextSize=Enum.Font.
GothamBold,22 bx.label(bz,'\084\101\120\116\076\097\098\101\108',by('\077\117\110\100\111\032\049\032\u{b7}\032\070\105\110\097\108\032\100\097\032\115\117\098\105\100\097',
'\087\111\114\108\100\032\049\032\u{b7}\032\072\105\108\108\032\102\105\110\105\115\104'),28,2)bx.label(bz,'\084\101\120\116\076\097\098\101\108',by(
'\082\101\116\111\114\110\097\032\097\111\032\102\105\110\097\108\032\113\117\097\110\100\111\032\118\111\099\u{ea}\032\114\101\110\097\115\099\101\032\111\117\032\115\097\105\032\100\097\032\u{e1}\114\101\097\046\032\065\032\114\101\099\111\109\112\101\110\115\097\032\u{e9}\032\099\111\110\102\105\114\109\097\100\097\032\112\101\108\111\032\106\111\103\111\046'
,
"\082\101\116\117\114\110\115\032\116\111\032\116\104\101\032\102\105\110\105\115\104\032\119\104\101\110\032\121\111\117\032\114\101\115\112\097\119\110\032\111\114\032\108\101\097\118\101\032\116\104\101\032\097\114\101\097\046\032\082\101\119\097\114\100\115\032\097\114\101\032\099\111\110\102\105\114\109\101\100\032\098\121\032\116\104\101\032\103\097\109\101\046"
),62,3)local bN=bx.label(bz,'\084\101\120\116\076\097\098\101\108',by(
'\080\097\117\115\097\100\111\046\032\083\101\108\101\099\105\111\110\101\032\111\032\100\101\115\116\105\110\111\032\101\032\097\116\105\118\101\032\111\032\065\117\116\111\032\087\105\110\046',
'\080\097\117\115\101\100\046\032\083\101\108\101\099\116\032\116\104\101\032\100\101\115\116\105\110\097\116\105\111\110\032\097\110\100\032\101\110\097\098\108\101\032\065\117\116\111\032\087\105\110\046'),64,4)local bO=bx.label(bz
,'\084\101\120\116\076\097\098\101\108',by('\084\101\108\101\112\111\114\116\101\115\032\114\101\097\108\105\122\097\100\111\115\058\032\048','\067\111\109\112\108\101\116\101\100\032\116\101\108\101\112\111\114\116\115\058\032\048'),30,5)local
bP,bQ=bx.checkbox(bz,by('\065\116\105\118\097\114\032\065\117\116\111\032\087\105\110\032\049\048\075','\069\110\097\098\108\101\032\065\117\116\111\032\087\105\110\032\049\048\075'),6)local bR,
bS=bx.checkbox(bz,by('\068\101\115\116\105\110\111\058\032\077\117\110\100\111\032\049\032\u{b7}\032\070\105\110\097\108',
'\068\101\115\116\105\110\097\116\105\111\110\058\032\087\111\114\108\100\032\049\032\u{b7}\032\070\105\110\105\115\104'),7)local bT,bU=bx.checkbox(bz,by(
'\080\097\114\097\114\032\111\032\105\109\112\117\108\115\111\032\097\111\032\099\104\101\103\097\114','\083\116\111\112\032\109\111\109\101\110\116\117\109\032\111\110\032\097\114\114\105\118\097\108'),8)bQ(false)bS(true)bU(
true)local function bW()bB=not bB bQ(bB)bN.Text=bB and by(
'\065\117\116\111\032\087\105\110\032\097\116\105\118\111\046\032\080\114\111\099\117\114\097\110\100\111\032\115\101\117\032\112\101\114\115\111\110\097\103\101\109\u{2026}',
'\065\117\116\111\032\087\105\110\032\101\110\097\098\108\101\100\046\032\076\111\111\107\105\110\103\032\102\111\114\032\121\111\117\114\032\099\104\097\114\097\099\116\101\114\u{2026}')or by('\065\117\116\111\032\087\105\110\032\112\097\117\115\097\100\111\046'
,'\065\117\116\111\032\087\105\110\032\112\097\117\115\101\100\046')end bL(bP.Activated,bW)bw.quick(bW)bL(bR.Activated,function(
)bC=not bC bS(bC)end)bL(bT.Activated,function()bD=not bD bU(bD)end)local bX=bx.
button(bz,by('\073\114\032\097\111\032\102\105\110\097\108\032\097\103\111\114\097','\071\111\032\116\111\032\116\104\101\032\102\105\110\105\115\104\032\110\111\119'),9)local bY=bx.button(bz
,by('\086\111\108\116\097\114\032\u{e0}\032\112\111\115\105\u{e7}\u{e3}\111\032\097\110\116\101\114\105\111\114','\082\101\116\117\114\110\032\116\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110'),10
)local bZ=bx.button(bz,by('\080\097\114\097\114\032\065\117\116\111\032\087\105\110','\083\116\111\112\032\065\117\116\111\032\087\105\110'),11)bx.label(bz,
'\084\101\120\116\076\097\098\101\108','\088\032\u{2212}\056\052\056\051\046\054\057\032\032\u{b7}\032\032\089\032\050\054\051\049\046\056\048\032\032\u{b7}\032\032\090\032\u{2212}\052\055\056\046\056\050',42,
12)local function b_()if not bE or game.PlaceId~=100981917200669 then return end
local b0=ag.Character local b1=b0 and b0:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')local
b2=b0 and b0:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')if b1 and b2 and b2.Health>0 then
return b0,b1,b2 end end local function b0(b1,b2)if bF or not bE then return end
if not bC and not b1 then bN.Text=by('\083\101\108\101\099\105\111\110\101\032\077\117\110\100\111\032\049\032\112\114\105\109\101\105\114\111\046',
'\083\101\108\101\099\116\032\087\111\114\108\100\032\049\032\102\105\114\115\116\046')return end local b3,b4,b5=b_()if not b3 then bN.Text=by(
'\065\103\117\097\114\100\097\110\100\111\032\115\101\117\032\112\101\114\115\111\110\097\103\101\109\u{2026}','\087\097\105\116\105\110\103\032\102\111\114\032\121\111\117\114\032\099\104\097\114\097\099\116\101\114\u{2026}')return
end if b1 and(not bI or bJ~=b3)then bN.Text=by(
'\078\u{e3}\111\032\104\u{e1}\032\112\111\115\105\u{e7}\u{e3}\111\032\097\110\116\101\114\105\111\114\032\115\097\108\118\097\046',
'\078\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110\032\115\097\118\101\100\046')return end local b6=b1 and bI or CFrame.new(bA)*b4
.CFrame.Rotation local b7=b4.CFrame bF=true bH=os.clock()bN.Text=by(
'\080\114\101\112\097\114\097\110\100\111\032\111\032\100\101\115\116\105\110\111\u{2026}','\080\114\101\112\097\114\105\110\103\032\116\104\101\032\100\101\115\116\105\110\097\116\105\111\110\u{2026}')task.spawn(
function()local b8,b9=pcall(function()pcall(ag.RequestStreamAroundAsync,ag,b6.
Position,2)local b8,b9,c=b_()if b8~=b3 or(b2 and not bB)or(not b1 and not bC)
then return end c.Sit=false game:GetService('\082\117\110\083\101\114\118\105\099\101').Heartbeat:Wait()if not
bE or ag.Character~=b3 or c.Health<=0 or(b2 and not bB)then return end b3:
PivotTo(b6*b9.CFrame:Inverse()*b3:GetPivot())if bD then for ca,cb in ipairs(b3:
GetDescendants())do if cb:IsA('\066\097\115\101\080\097\114\116')then cb.AssemblyLinearVelocity=Vector3.
zero cb.AssemblyAngularVelocity=Vector3.zero end end end if not b1 then bI=b7 bJ
=b3 bG+=1 end bN.Text=b1 and by('\082\101\116\111\114\110\111\117\032\u{e0}\032\112\111\115\105\u{e7}\u{e3}\111\032\097\110\116\101\114\105\111\114\046',
'\082\101\116\117\114\110\101\100\032\116\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110\046')or by(
'\078\111\032\102\105\110\097\108\046\032\065\103\117\097\114\100\097\110\100\111\032\097\032\118\097\108\105\100\097\u{e7}\u{e3}\111\032\111\117\032\111\032\114\101\105\110\u{ed}\099\105\111\032\100\111\032\106\111\103\111\046',
'\065\116\032\116\104\101\032\102\105\110\105\115\104\046\032\087\097\105\116\105\110\103\032\102\111\114\032\116\104\101\032\103\097\109\101\032\116\111\032\118\097\108\105\100\097\116\101\032\111\114\032\114\101\115\116\097\114\116\046')bO.Text=by(
'\084\101\108\101\112\111\114\116\101\115\032\114\101\097\108\105\122\097\100\111\115\058\032','\067\111\109\112\108\101\116\101\100\032\116\101\108\101\112\111\114\116\115\058\032')..bG end)bF=false if bE and
not b8 then bN.Text=by('\070\097\108\104\097\032\110\111\032\116\101\108\101\112\111\114\116\101\058\032','\084\101\108\101\112\111\114\116\032\102\097\105\108\101\100\058\032')..tostring(b9)
end end)end bL(bX.Activated,function()b0(false,false)end)bL(bY.Activated,
function()bB=false bQ(false)b0(true,false)end)bL(bZ.Activated,function()bB=false
bQ(false)bN.Text=by('\065\117\116\111\032\087\105\110\032\112\097\117\115\097\100\111\046','\065\117\116\111\032\087\105\110\032\112\097\117\115\101\100\046')end)bL(ag.
CharacterAdded,function()bI=nil bJ=nil end)local function b1(b2,b3,b4,b5,b6)
return b2 and b3 and not b4 and b5>=5 and b6>30 end task.spawn(function()while
bE do local b2,b3=b_()if b2 and b1(bB,bC,bF,os.clock()-bH,(b3.Position-bA).
Magnitude)then b0(false,true)end task.wait(0.25)end end)end local bx,by,bz=false
,nil,false local bA=task.spawn(function()bx,by=pcall(bw,{ui=aO,page=aN('\070\097\114\109'),T
=function(bA,bB)return ab.language=='\112\116'and bA or bB end,progress=bv,attach=
function(bA)aj=bA end,section=aN,quick=function(bA)ak=bA end})bz=true end)local
bB=os.clock()+45 while al and not bz and os.clock()<bB do task.wait(0.05)end if
not bz then pcall(task.cancel,bA)bx=false by=ap(
'\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\052\053\032\115\101\103\117\110\100\111\115\032\101\120\099\101\100\105\100\111\046\032\u{da}\108\116\105\109\097\032\101\116\097\112\097\058\032',
'\052\053\045\115\101\099\111\110\100\032\116\105\109\101\111\117\116\046\032\076\097\115\116\032\115\116\097\103\101\058\032')..bj.Text end if not al then return end if not
bx then if aj then pcall(aj)aj=nil end bi.Text=ap(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\099\097\114\114\101\103\097\114\032\097\115\032\102\117\110\u{e7}\u{f5}\101\115',
'\067\111\117\108\100\032\110\111\116\032\108\111\097\100\032\116\104\101\032\102\101\097\116\117\114\101\115')bj.Text=ap(
'\070\101\099\104\101\032\111\032\112\097\105\110\101\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046\032\068\101\116\097\108\104\101\115\058\032',
'\067\108\111\115\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\116\114\121\032\097\103\097\105\110\046\032\068\101\116\097\105\108\115\058\032')..tostring(by)bn.Text=ap(
'\067\097\114\114\101\103\097\109\101\110\116\111\032\105\110\116\101\114\114\111\109\112\105\100\111','\076\111\097\100\105\110\103\032\105\110\116\101\114\114\117\112\116\101\100')ab.ready()return end local
function bC(bD,bE)local bF,bG,bH=false,false,nil local bI=task.spawn(function()
bG,bH=pcall(bD)bF=true end)local bJ=os.clock()+bE while al and not bF and os.
clock()<bJ do task.wait(0.05)end if not bF then pcall(task.cancel,bI)return
false,ap('\084\101\109\112\111\032\108\105\109\105\116\101\032\101\120\099\101\100\105\100\111','\084\105\109\101\032\108\105\109\105\116\032\101\120\099\101\101\100\101\100')end return bG,bH end bv(
0.92,'\077\111\110\116\097\110\100\111\032\111\115\032\097\106\117\115\116\101\115\032\100\101\032\116\101\108\097\u{2026}','\066\117\105\108\100\105\110\103\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\u{2026}')
local bD local bE,bF=bC(function()local bE=aN('\065\106\117\115\116\101\115')aZ(bE)local bF=aO.
button(bE,ap('\u{1f1e7}\u{1f1f7}\032\032\073\100\105\111\109\097\058\032\080\111\114\116\117\103\117\u{ea}\115\032\032\u{b7}\032\032\065\108\116\101\114\097\114',
'\u{1f1fa}\u{1f1f8}\032\032\076\097\110\103\117\097\103\101\058\032\069\110\103\108\105\115\104\032\032\u{b7}\032\032\067\104\097\110\103\101'),870)ar(bF.Activated,
function()if type(ab.chooseLanguage)=='\102\117\110\099\116\105\111\110'then ab.chooseLanguage()end end)
aO.label(bE,'\084\101\120\116\076\097\098\101\108',ap(
'\084\114\111\099\097\114\032\111\032\105\100\105\111\109\097\032\114\101\097\098\114\101\032\111\032\112\097\105\110\101\108\032\099\111\109\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\117\115\097\100\097\115\046',
'\067\104\097\110\103\105\110\103\032\108\097\110\103\117\097\103\101\032\114\101\111\112\101\110\115\032\116\104\101\032\112\097\110\101\108\032\119\105\116\104\032\097\117\116\111\109\097\116\105\111\110\032\112\097\117\115\101\100\046'),44,871)aO.label(
bE,'\084\101\120\116\076\097\098\101\108',ab.language=='\112\116'and
"\084\111\113\117\101\032\065\058\032\097\098\114\105\114\047\102\101\099\104\097\114\046\032\083\101\103\117\114\101\032\048\044\054\053\115\032\101\032\115\111\108\116\101\058\032\097\108\116\101\114\110\097\114\032\065\117\116\111\032\087\105\110\046\032\065\114\114\097\115\116\101\058\032\109\111\118\101\114\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\105\110\101\108\046"
or
"\084\097\112\032\065\058\032\116\111\103\103\108\101\032\112\097\110\101\108\046\032\072\111\108\100\032\048\046\054\053\115\032\097\110\100\032\114\101\108\101\097\115\101\058\032\116\111\103\103\108\101\032\065\117\116\111\032\087\105\110\046\032\068\114\097\103\058\032\109\111\118\101\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\110\101\108\046"
,68,900)local bG=aO.label(bE,'\084\101\120\116\066\111\120','\069\066\065\053\070\070',40,902)bG.ClearTextOnFocus=false
aO.label(bE,'\084\101\120\116\076\097\098\101\108',ab.language=='\112\116'and
'\067\111\114\032\100\101\032\100\101\115\116\097\113\117\101\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\120\046\058\032\070\070\067\065\052\050\041'or
'\065\099\099\101\110\116\032\099\111\108\111\114\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\046\103\046\032\070\070\067\065\052\050\041',30,901)local bH=
'\065\110\111\110\072\117\098\095\072\105\108\108\067\108\105\109\098\095\084\104\101\109\101\046\106\115\111\110'local bI='\065\109\101\116\104\121\115\116'local bJ={Amethyst={'\048\067\048\067\049\048',
'\050\055\049\056\051\053','\057\054\051\067\068\067','\070\070\070\053\070\070','\067\065\066\052\068\056','\069\066\065\053\070\070','\049\057\048\070\050\051'},Potato={'\050\051\049\070\049\057','\052\049\051\054\050\055'
,'\055\052\053\056\051\049','\070\067\070\054\069\050','\068\053\067\051\065\051','\069\066\065\053\070\070','\051\048\050\055\049\068'},Bloodmoon={'\049\055\048\067\049\051','\051\048\049\051\049\070',
'\054\066\050\054\051\068','\070\070\069\065\070\048','\068\050\065\048\066\048','\070\070\052\053\054\056','\050\051\048\070\049\065'},Midnight={'\049\048\049\051\049\069','\049\068\050\052\051\054',
'\051\053\052\054\054\053','\069\068\070\051\070\070','\065\052\066\051\067\067','\055\051\057\070\070\070','\049\053\049\066\050\065'},Emerald={'\048\066\049\057\049\054','\049\052\050\069\050\054',
'\050\066\053\057\052\055','\069\054\070\070\070\051','\057\069\067\054\066\051','\053\054\068\068\065\048','\049\048\050\052\049\069'},Arctic={'\049\049\049\066\050\054','\049\067\050\068\051\068','\051\054\053\049\054\065'
,'\069\066\070\056\070\070','\065\057\067\055\068\065','\055\057\068\057\070\070','\049\055\050\051\051\049'}}local function bK(bL)return Color3.
fromRGB(tonumber(bL:sub(1,2),16),tonumber(bL:sub(3,4),16),tonumber(bL:sub(5,6),
16))end local function bL()if type(writefile)=='\102\117\110\099\116\105\111\110'then task.spawn(
function()pcall(writefile,bH,ae:JSONEncode({preset=bI,hex=bG.Text}))end)end end
local function bM(bN)if type(bN)~='\115\116\114\105\110\103'or not bN:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then
return false end ao=Color3.fromRGB(tonumber(bN:sub(1,2),16),tonumber(bN:sub(3,4)
,16),tonumber(bN:sub(5,6),16))am.accent=ao aF.BackgroundColor3=ao az.
BackgroundColor3=ao aM(aJ)for bO,bP in ipairs(aP)do bP()end for bO,bP in pairs(
aH)do bP.ScrollBarImageColor3=ao end bG.Text=bN return true end local function
bN(bO)local bP=bJ[bO]if not bP then return end bI=bO for bQ,bR in ipairs({'\100\097\114\107'
,'\116\105\108\101','\101\100\103\101','\116\101\120\116','\109\117\116\101\100','\097\099\099\101\110\116','\115\105\100\101\098\097\114'})do am[bR]=bK(bP[bQ])end ao=am.
accent for bQ,bR in pairs(an)do if bQ.Parent then for bS,bT in pairs(bR)do bQ[bS
]=am[bT]end end end local bQ=aw:FindFirstChildOfClass('\085\073\071\114\097\100\105\101\110\116')if bQ then bQ
.Color=ColorSequence.new(am.tile,am.dark)end bM(bP[6])end aO.label(bE,
'\084\101\120\116\076\097\098\101\108',ap('\084\069\077\065\083\032\080\082\079\078\084\079\083','\084\072\069\077\069\032\080\082\069\083\069\084\083'),32,880)for bO,bP in ipairs({
'\065\109\101\116\104\121\115\116','\080\111\116\097\116\111','\066\108\111\111\100\109\111\111\110','\077\105\100\110\105\103\104\116','\069\109\101\114\097\108\100','\065\114\099\116\105\099'})do local bQ=aO.
button(bE,bP,880+bO)ar(bQ.Activated,function()bN(bP)bL()end)end bD=function()if
type(readfile)=='\102\117\110\099\116\105\111\110'then local bO=readfile(bH)if type(bO)=='\115\116\114\105\110\103'and#bO
<=2048 then local bP=ae:JSONDecode(bO)if al and bG.Parent and type(bP)=='\116\097\098\108\101'
then if bJ[bP.preset]then bN(bP.preset)end bM(bP.hex)end end end end ar(bG.
FocusLost,function()local bO=bG.Text:gsub('\035',''):upper()if bM(bO)then bL()end
end)end,5)if not al then return end bv(0.96,
'\065\106\117\115\116\097\110\100\111\032\111\032\112\097\105\110\101\108\032\u{e0}\032\115\117\097\032\116\101\108\097\u{2026}',
'\070\105\116\116\105\110\103\032\116\104\101\032\112\097\110\101\108\032\116\111\032\121\111\117\114\032\115\099\114\101\101\110\u{2026}')local bG,bH=pcall(aX)if not bG then
aT=table.clone(aS)pcall(aX)end local bI if not bE or not bG then bI=ap(
'\065\106\117\115\116\101\115\032\118\105\115\117\097\105\115\032\105\110\099\111\109\112\108\101\116\111\115\058\032','\083\111\109\101\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\032\102\097\105\108\101\100\058\032')..tostring(bF
or bH)aE.Text=bI warn('\091\065\110\111\110\072\117\098\032'..aa..'\093\032'..bI)end bv(1,
'\080\097\105\110\101\108\032\112\114\111\110\116\111\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\101\115\116\u{e3}\111\032\112\097\117\115\097\100\097\115\046',
'\080\097\110\101\108\032\114\101\097\100\121\046\032\070\101\097\116\117\114\101\115\032\097\114\101\032\112\097\117\115\101\100\046')bi.Text=ap('\083\101\117\032\112\097\105\110\101\108\032\101\115\116\u{e1}\032\112\114\111\110\116\111',
'\089\111\117\114\032\112\097\110\101\108\032\105\115\032\114\101\097\100\121')bc=true if bf()then bg:Destroy()else task.spawn(function()
while al and bg.Parent and not bf()do task.wait(0.05)end if al and bg.Parent
then bg:Destroy()end end)end pcall(ab.ready)if bD then task.defer(function()bC(
bD,2)end)end end a['\101\097\114\116\104\099\111\114\101\047\109\097\105\110\046\108\117\097']=function(...)local aa='\048\046\052\048\046\054'local ab=
...assert(type(ab)=='\116\097\098\108\101'and ab.access,'\065\098\114\097\032\112\101\108\111\032\108\111\097\100\101\114\032\097\117\116\101\110\116\105\099\097\100\111')local ac
=game:GetService('\080\108\097\121\101\114\115')local ad=game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101')local ae=
game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local af=game:GetService('\084\119\101\101\110\083\101\114\118\105\099\101')local ag=
ac.LocalPlayer local ah,ai={},{}local aj,ak local al=true local am={dark=Color3.
fromRGB(12,12,16),tile=Color3.fromRGB(39,24,53),edge=Color3.fromRGB(150,60,220),
text=Color3.fromRGB(255,245,255),muted=Color3.fromRGB(202,180,216),accent=Color3
.fromRGB(235,165,255)}am.sidebar=Color3.fromRGB(25,15,35)local an=setmetatable({
},{__mode='\107'})local ao=am.accent local function ap(aq,ar)return ab.language==
'\112\116'and aq or ar end local function aq(ar,as,at)local au=Instance.new(ar)if au:
IsA('\071\117\105\079\098\106\101\099\116')then au.BorderSizePixel=0 end for av,aw in pairs(as)do au[av]=aw
if typeof(aw)=='\067\111\108\111\114\051'then for ax,ay in pairs(am)do if aw==ay then an[au]=an[au
]or{}an[au][av]=ax break end end end end if au:IsA('\084\101\120\116\076\097\098\101\108')or au:IsA(
'\084\101\120\116\066\117\116\116\111\110')or au:IsA('\084\101\120\116\066\111\120')then au.AutoLocalize=false end au.Parent=at
return au end local function ar(as,at)ah[#ah+1]=as:Connect(at)end local function
as(at,au)af:Create(at,TweenInfo.new(0.18,Enum.EasingStyle.Quad,Enum.
EasingDirection.Out),au):Play()end local function at(au,av)aq('\085\073\067\111\114\110\101\114',{
CornerRadius=UDim.new(0,av or 10)},au)end local function au(av)return aq(
'\085\073\083\116\114\111\107\101',{Color=am.edge,Thickness=1,ApplyStrokeMode=Enum.ApplyStrokeMode.
Border},av)end local av=aq('\083\099\114\101\101\110\071\117\105',{Name='\065\110\111\110\072\117\098\069\097\114\116\104\067\111\114\101',ResetOnSpawn=
false,DisplayOrder=10032,ZIndexBehavior=Enum.ZIndexBehavior.Sibling},ag:
WaitForChild('\080\108\097\121\101\114\071\117\105'))local aw=aq('\070\114\097\109\101',{AnchorPoint=Vector2.new(0.5,0.5),
Size=UDim2.fromScale(0.94,0.88),Position=UDim2.fromScale(0.5,0.5),
BackgroundColor3=am.dark,ClipsDescendants=true},av)at(aw,9)au(aw)aq('\085\073\071\114\097\100\105\101\110\116'
,{Color=ColorSequence.new(am.tile,am.dark),Rotation=90},aw)local ax=aq('\070\114\097\109\101',{
Size=UDim2.new(0,174,1,0),BackgroundColor3=am.sidebar},aw)aq('\084\101\120\116\076\097\098\101\108',{Text=
'\065\078\079\078\072\085\066',Position=UDim2.fromOffset(17,24),Size=UDim2.fromOffset(145,28),
BackgroundTransparency=1,TextColor3=am.text,Font=Enum.Font.GothamBold,TextSize=
20,TextXAlignment=Enum.TextXAlignment.Left},ax)aq('\084\101\120\116\076\097\098\101\108',{Text=
'\069\065\082\084\072\032\067\079\082\069\032\047\032\067\079\078\084\082\079\076',Position=UDim2.fromOffset(18,56),Size=UDim2.fromOffset(
146,20),BackgroundTransparency=1,TextColor3=ao,Font=Enum.Font.Code,TextSize=9,
TextXAlignment=Enum.TextXAlignment.Left},ax)aq('\084\101\120\116\076\097\098\101\108',{Text=ag.DisplayName,
Position=UDim2.new(0,16,1,-62),Size=UDim2.new(1,-32,0,24),BackgroundTransparency
=1,TextColor3=am.text,Font=Enum.Font.GothamMedium,TextSize=12,TextTruncate=Enum.
TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left},ax)local ay=aq(
'\070\114\097\109\101',{Size=UDim2.new(1,0,0,68),BackgroundTransparency=1,Active=true},aw)local
az=aq('\084\101\120\116\076\097\098\101\108',{Text='\065',Font=Enum.Font.GothamBlack,TextSize=20,TextColor3=am
.dark,BackgroundColor3=ao,Position=UDim2.fromOffset(16,16),Size=UDim2.
fromOffset(36,36)},ay)at(az)az.Text=string.upper(ag.DisplayName:sub(1,1))az.Size
=UDim2.fromOffset(40,40)az.Position=UDim2.fromOffset(14,16)local aA=aq(
'\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Image=
'\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\065\118\097\116\097\114\072\101\097\100\083\104\111\116\038\105\100\061'..ag.UserId..'\038\119\061\049\053\048\038\104\061\049\053\048',ScaleType=Enum.
ScaleType.Fit},az)at(aA,10)ar(aA:GetPropertyChangedSignal('\073\115\076\111\097\100\101\100'),function()
if aA.IsLoaded then az.TextTransparency=1 end end)local aB=aq('\084\101\120\116\076\097\098\101\108',{Text=
ag.DisplayName,Size=UDim2.new(1,-154,0,22),Position=UDim2.fromOffset(64,8),
BackgroundTransparency=1,TextColor3=am.text,TextSize=15,Font=Enum.Font.
GothamBold,TextTruncate=Enum.TextTruncate.AtEnd,TextXAlignment=Enum.
TextXAlignment.Left},ay)aq('\084\101\120\116\076\097\098\101\108',{Text='\064'..ag.Name,Position=UDim2.
fromOffset(65,31),Size=UDim2.new(1,-154,0,16),BackgroundTransparency=1,
TextColor3=am.muted,TextSize=11,Font=Enum.Font.Gotham,TextTruncate=Enum.
TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left},ay)local aC=aq(
'\084\101\120\116\076\097\098\101\108',{Text='',Position=UDim2.fromOffset(65,49),Size=UDim2.new(1,-82,0,18)
,BackgroundTransparency=1,TextColor3=ao,TextSize=10,Font=Enum.Font.GothamMedium,
TextXAlignment=Enum.TextXAlignment.Left},ay)local function aD(aE,aF,aG)local aH=
aE.plan=='\080\114\101\109\105\117\109'and'\080\114\101\109\105\117\109'or'\077\101\109\098\101\114'local aI=type(aE.deadline)=='\110\117\109\098\101\114'and
aE.deadline-aF or type(aE.expiresAt)=='\110\117\109\098\101\114'and aE.expiresAt-aG if aI then if
aI<=0 then return aH..ap('\032\u{b7}\032\069\120\112\105\114\097\100\111','\032\u{b7}\032\069\120\112\105\114\101\100')end local aJ=math.
floor(aI)local aL=math.floor(aJ/86400)aJ=aJ%86400 local aM=math.floor(aJ/3600)
local aN=math.floor(aJ%3600/60)local aO=(aL>0 and aL..'\100\032'or'')..string.format(
'\037\048\050\100\104\032\037\048\050\100\109\032\037\048\050\100\115',aM,aN,aJ%60)return aH..'\032\u{b7}\032'..aO end return aH..(aE.
lifetime==true and ap('\032\u{b7}\032\086\105\116\097\108\u{ed}\099\105\111','\032\u{b7}\032\076\105\102\101\116\105\109\101')or ap(
'\032\u{b7}\032\080\114\097\122\111\032\110\u{e3}\111\032\105\110\102\111\114\109\097\100\111','\032\u{b7}\032\068\117\114\097\116\105\111\110\032\117\110\097\118\097\105\108\097\098\108\101'))end aC.Text=
aD(ab.access,os.clock(),os.time())task.spawn(function()while al do aC.Text=aD(ab
.access,os.clock(),os.time())task.wait(1)end end)local aE=aq('\084\101\120\116\076\097\098\101\108',{Text=
ap('\077\u{d3}\068\085\076\079\032\068\079\032\074\079\071\079\032\032\047\032\032\080\084','\071\065\077\069\032\077\079\068\085\076\069\032\032\047\032\032\069\078')..'\032\u{b7}\032\118'..aa,Size=
UDim2.new(1,-32,0,30),Position=UDim2.new(0,16,1,-32),BackgroundTransparency=1,
TextColor3=am.muted,TextSize=10,Font=Enum.Font.Code,TextXAlignment=Enum.
TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd},aw)local aF=aq(
'\084\101\120\116\066\117\116\116\111\110',{Text='\065',Size=UDim2.fromOffset(52,52),Position=UDim2.fromScale(
0.02,0.7),BackgroundColor3=ao,TextColor3=am.dark,TextSize=20,Font=Enum.Font.
GothamBlack},av)at(aF,16)au(aF)if ab.decorateLauncher then ab.decorateLauncher(
aF)end local aG=aq('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Size=UDim2.new(1,-32,0,44),Position=UDim2.
fromOffset(16,72),BackgroundColor3=am.tile},aw)at(aG)local aH,aI={},{}local aJ=
'\070\097\114\109'local aL=game.PlaceId==101906032112547 and{'\070\097\114\109','\065\106\117\115\116\101\115'}or{'\070\097\114\109',
'\077\101\108\104\111\114\105\097\115','\073\103\114\101\106\097','\067\111\109\098\097\116\101','\077\111\118\105\109\101\110\116\111','\069\083\080','\076\111\106\097','\065\106\117\115\116\101\115'}local aM={Farm
='\069\120\112\101\100\105\116\105\111\110',Melhorias='\085\112\103\114\097\100\101\115',Igreja='\067\104\117\114\099\104',Combate='\067\111\109\098\097\116',Movimento=
'\077\111\118\101\109\101\110\116',ESP='\069\083\080',Loja='\083\104\111\112',Ajustes='\083\101\116\116\105\110\103\115'}local function aN(aO)aJ=aO
for aP,aQ in pairs(aH)do aQ.Visible=aP==aO as(aI[aP],{BackgroundColor3=aP==aO
and ao or am.tile,TextColor3=aP==aO and am.dark or am.muted})if aP==aO then
local aR=aQ.Position aQ.Position=aR+UDim2.fromOffset(6,0)as(aQ,{Position=aR})end
end end local function aO(aP)if aH[aP]then return aH[aP]end local aQ=aq(
'\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Name=aP,Size=UDim2.new(1,-32,1,-166),Position=UDim2.
fromOffset(16,126),BackgroundTransparency=1,ScrollBarThickness=3,
ScrollBarImageColor3=ao,CanvasSize=UDim2.new(),AutomaticCanvasSize=Enum.
AutomaticSize.Y,Visible=aP=='\070\097\114\109'},aw)aq('\085\073\076\105\115\116\076\097\121\111\117\116',{Padding=UDim.new(0,8),
SortOrder=Enum.SortOrder.LayoutOrder},aQ)aq('\085\073\080\097\100\100\105\110\103',{PaddingTop=UDim.new(0,2
),PaddingBottom=UDim.new(0,12),PaddingLeft=UDim.new(0,2)},aQ)local aR={Loja=ap(
'\083\101\108\101\099\105\111\110\101\032\101\032\111\114\103\097\110\105\122\101\059\032\102\105\110\097\108\105\122\101\032\097\032\099\111\109\112\114\097\032\110\111\032\099\097\105\120\097\046',
'\083\101\108\101\099\116\032\097\110\100\032\115\116\097\103\101\059\032\102\105\110\105\115\104\032\121\111\117\114\032\112\117\114\099\104\097\115\101\032\097\116\032\116\104\101\032\114\101\103\105\115\116\101\114\046'),Movimento=ap(
'\077\111\118\105\109\101\110\116\097\u{e7}\u{e3}\111\032\108\111\099\097\108\032\101\032\114\101\115\116\097\117\114\097\u{e7}\u{e3}\111\032\097\111\032\100\101\115\108\105\103\097\114\046',
'\076\111\099\097\108\032\109\111\118\101\109\101\110\116\032\097\110\100\032\114\101\115\116\111\114\097\116\105\111\110\032\111\110\032\100\105\115\097\098\108\101\046'),ESP=ap(
'\067\097\116\101\103\111\114\105\097\115\044\032\099\111\114\101\115\032\101\032\101\115\116\105\108\111\115\032\105\110\100\101\112\101\110\100\101\110\116\101\115\046',
'\073\110\100\101\112\101\110\100\101\110\116\032\099\097\116\101\103\111\114\105\101\115\044\032\099\111\108\111\114\115\032\097\110\100\032\115\116\121\108\101\115\046'),Farm=game.PlaceId==101906032112547
and ap('\076\111\098\098\121\032\u{b7}\032\069\113\117\105\112\097\109\101\110\116\111\115','\076\111\098\098\121\032\u{b7}\032\069\113\117\105\112\109\101\110\116')or ap(
'\069\120\112\101\100\105\u{e7}\u{e3}\111\032\u{b7}\032\070\101\114\114\097\109\101\110\116\097\115\032\101\032\110\097\118\101\103\097\u{e7}\u{e3}\111',
'\069\120\112\101\100\105\116\105\111\110\032\u{b7}\032\084\111\111\108\115\032\097\110\100\032\110\097\118\105\103\097\116\105\111\110'),Melhorias=ap(
'\077\111\101\100\097\115\044\032\112\114\105\111\114\105\100\097\100\101\115\032\101\032\108\105\109\105\116\101\115\032\112\111\114\032\115\101\115\115\u{e3}\111\046',
'\067\111\105\110\115\044\032\112\114\105\111\114\105\116\105\101\115\032\097\110\100\032\112\101\114\045\115\101\115\115\105\111\110\032\108\105\109\105\116\115\046'),Igreja=ap(
'\083\101\108\101\u{e7}\u{e3}\111\032\100\101\032\101\113\117\105\112\097\109\101\110\116\111\115\032\101\032\114\101\116\111\114\110\111\032\097\111\032\108\111\098\098\121\046',
'\071\101\097\114\032\115\101\108\101\099\116\105\111\110\032\097\110\100\032\114\101\116\117\114\110\032\116\111\032\108\111\098\098\121\046'),Cartas=ap(
'\079\114\103\097\110\105\122\101\032\115\117\097\032\099\111\108\101\u{e7}\u{e3}\111\032\101\032\097\117\116\111\109\097\116\105\122\101\032\097\115\032\109\101\108\104\111\114\105\097\115\046',
'\077\097\110\097\103\101\032\121\111\117\114\032\099\111\108\108\101\099\116\105\111\110\032\097\110\100\032\097\117\116\111\109\097\116\101\032\117\112\103\114\097\100\101\115\046'),Combate=ap(
'\067\111\110\116\114\111\108\101\115\032\100\101\032\099\111\109\098\097\116\101\032\101\032\104\097\098\105\108\105\100\097\100\101\115\046','\067\111\109\098\097\116\032\097\110\100\032\097\098\105\108\105\116\121\032\099\111\110\116\114\111\108\115\046'),Ajustes=
ap('\080\101\114\115\111\110\097\108\105\122\101\032\111\032\112\097\105\110\101\108\032\101\032\097\115\032\114\101\103\114\097\115\032\100\101\032\097\117\116\111\109\097\u{e7}\u{e3}\111\046',
'\067\117\115\116\111\109\105\122\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\097\117\116\111\109\097\116\105\111\110\032\114\117\108\101\115\046')}local aS=aq('\084\101\120\116\076\097\098\101\108',{Text=ab.
language=='\112\116'and aP or aM[aP],Size=UDim2.new(1,-8,0,28),LayoutOrder=-30,
BackgroundTransparency=1,TextColor3=am.text,TextSize=20,Font=Enum.Font.
GothamBold,TextXAlignment=Enum.TextXAlignment.Left},aQ)aq('\084\101\120\116\076\097\098\101\108',{Text=aR[
aP],Size=UDim2.new(1,-8,0,38),LayoutOrder=-29,BackgroundTransparency=1,
TextColor3=am.muted,TextSize=12,TextWrapped=true,Font=Enum.Font.Gotham,
TextXAlignment=Enum.TextXAlignment.Left},aQ)local aT=0 for aU in pairs(aH)do aT
+=1 end local aU=aq('\084\101\120\116\066\117\116\116\111\110',{Text=ab.language=='\112\116'and aP or aM[aP],Font=
Enum.Font.GothamMedium,TextSize=12,TextColor3=aP=='\070\097\114\109'and am.dark or am.muted,
Size=UDim2.new(1/#aL,-8,1,-8),Position=UDim2.new(aT/#aL,4,0,4),BackgroundColor3=
aP=='\070\097\114\109'and ao or am.tile,AutoButtonColor=false},aG)at(aU,8)aq('\085\073\080\097\100\100\105\110\103',{
PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,10)},aU)aH[aP]=aQ aI[aP]=aU
ar(aU.Activated,function()aN(aP)end)return aQ end local aP={}function aP.label(
aQ,aR,aS,aT,aU)local aV=aq(aR,{Text=aS,Size=UDim2.new(1,-10,0,aT),LayoutOrder=aU
,BackgroundTransparency=aR=='\084\101\120\116\066\111\120'and 0 or 1,BackgroundColor3=am.tile,
TextColor3=am.text,TextSize=13,Font=Enum.Font.Gotham,TextWrapped=true,
TextXAlignment=Enum.TextXAlignment.Left},aQ)aq('\085\073\080\097\100\100\105\110\103',{PaddingLeft=UDim.
new(0,12),PaddingRight=UDim.new(0,12)},aV)if aR=='\084\101\120\116\066\111\120'then at(aV,8)au(aV)aV.
ClearTextOnFocus=false ar(aV.Focused,function()as(aV,{BackgroundColor3=am.edge})
end)ar(aV.FocusLost,function()as(aV,{BackgroundColor3=am.tile})end)end return aV
end function aP.button(aQ,aR,aS)local aT=aP.label(aQ,'\084\101\120\116\066\117\116\116\111\110',aR,48,aS)aT.
BackgroundTransparency=0 aT.AutoButtonColor=false at(aT,10)au(aT)local aU=aq(
'\070\114\097\109\101',{Name='\066\117\116\116\111\110\083\104\097\100\111\119',Position=UDim2.new(0,4,1,1),Size=UDim2.new(1,-8,0,3
),BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=0.6,Active=false},aT
)at(aU,3)ar(aT.MouseEnter,function()as(aT,{BackgroundColor3=am.edge})end)ar(aT.
MouseLeave,function()as(aT,{BackgroundColor3=am.tile})end)ar(aT.MouseButton1Down
,function()as(aT,{BackgroundColor3=am.dark})end)ar(aT.MouseButton1Up,function()
as(aT,{BackgroundColor3=am.tile})end)return aT end local aQ={}function aP.
checkbox(aR,aS,aT)local aU=aP.button(aR,'',aT)local aV=aP.label(aU,'\084\101\120\116\076\097\098\101\108',
aS,48,0)aV.Size=UDim2.new(1,-44,1,0)local aW=aq('\084\101\120\116\076\097\098\101\108',{Text='',AnchorPoint
=Vector2.new(1,0.5),Position=UDim2.new(1,-2,0.5,0),Size=UDim2.fromOffset(24,24),
TextSize=18,Font=Enum.Font.GothamBold,TextColor3=am.dark,BackgroundColor3=am.
dark},aU)at(aW,6)local aX=au(aW)local aY=false local function aZ(a_)aY=a_==true
aW.Text=aY and'\u{2713}'or''as(aW,{BackgroundColor3=aY and ao or am.dark})as(aX,
{Color=aY and ao or am.edge})end aQ[#aQ+1]=function()aZ(aY)end return aU,aZ end
local aR={}function aR.resolve(aS,aT,aU)local aV=math.max(0.1,math.min(aU.scale/
100,math.max(1,aS-16)/300,math.max(1,aT-16)/340))local aW=math.min(aU.width,math
.max(1,aS-16)/aV)local aX=math.min(aU.height,math.max(1,aT-16)/aV)return{scale=
aV,width=aW,height=aX,x=8+math.max(0,aS-16-aW*aV)*aU.x,y=8+math.max(0,aT-16-aX*
aV)*aU.y,compact=aW<620}end local aS='\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\076\097\121\111\117\116\095'..ag.UserId..
'\046\106\115\111\110'local aT={width=760,height=580,scale=ad.TouchEnabled and 80 or 100,
launcher=56,x=0.5,y=0.5}local aU=table.clone(aT)local aV={width={300,1100},
height={340,900},scale={65,150},launcher={44,88},x={0,1},y={0,1}}if type(
readfile)=='\102\117\110\099\116\105\111\110'then pcall(function()local aW=ae:JSONDecode(readfile(aS))
for aX,aY in pairs(aV)do local aZ=aW[aX]if type(aZ)=='\110\117\109\098\101\114'and aZ==aZ then aU[
aX]=math.clamp(aZ,aY[1],aY[2])end end end)end local function aW()if type(
writefile)=='\102\117\110\099\116\105\111\110'then pcall(writefile,aS,ae:JSONEncode(aU))end end local aX
=aq('\085\073\083\099\097\108\101',{Scale=1},aw)local function aY()local aZ=av.AbsoluteSize if aZ.X<
100 or aZ.Y<100 then return end local a_=aR.resolve(aZ.X,aZ.Y,aU)aw.AnchorPoint=
Vector2.zero aw.Size=UDim2.fromOffset(a_.width,a_.height)aw.Position=UDim2.
fromOffset(a_.x,a_.y)aX.Scale=a_.scale ax.Visible=not a_.compact ay.Position=
UDim2.fromOffset(a_.compact and 0 or 174,0)ay.Size=UDim2.new(1,a_.compact and 0
or-174,0,76)aG.Parent=aw aG.Position=a_.compact and UDim2.new(0,12,1,-84)or
UDim2.fromOffset(12,100)aG.Size=a_.compact and UDim2.new(1,-24,0,44)or UDim2.
new(0,150,1,-180)aG.BackgroundTransparency=1 aG.ScrollBarThickness=3 aG.
CanvasSize=a_.compact and UDim2.fromOffset(#aL*116,0)or UDim2.fromOffset(0,#aL*
52)aG.ScrollingDirection=a_.compact and Enum.ScrollingDirection.X or Enum.
ScrollingDirection.Y for a0,a1 in ipairs(aL)do local a2=aI[a1]if a2 then a2.Size
=a_.compact and UDim2.fromOffset(110,42)or UDim2.new(1,0,0,44)a2.Position=a_.
compact and UDim2.fromOffset((a0-1)*116,0)or UDim2.fromOffset(0,(a0-1)*52)a2.
Text=a_.compact and(ab.language=='\112\116'and a1 or aM[a1])or string.format(
'\037\048\050\100\032\u{b7}\032\037\115',a0,ab.language=='\112\116'and a1 or aM[a1])a2.TextXAlignment=a_.
compact and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left end end for
a0,a1 in pairs(aH)do a1.Position=UDim2.fromOffset(a_.compact and 16 or 190,88)a1
.Size=UDim2.new(1,a_.compact and-32 or-206,1,a_.compact and-184 or-136)end aE.
Position=UDim2.new(0,a_.compact and 16 or 190,1,-34)aE.Size=UDim2.new(1,a_.
compact and-40 or-214,0,26)aF.Size=UDim2.fromOffset(aU.launcher,aU.launcher)end
ar(av:GetPropertyChangedSignal('\065\098\115\111\108\117\116\101\083\105\122\101'),aY)local aZ={}local function a_(
a0)aP.label(a0,'\084\101\120\116\076\097\098\101\108',ap('\084\069\076\065\032\069\032\084\079\081\085\069','\068\073\083\080\076\065\089\032\038\032\084\079\085\067\072'),32,-10)aP.label(
a0,'\084\101\120\116\076\097\098\101\108',ap(
'\065\114\114\097\115\116\101\032\111\032\099\097\098\101\u{e7}\097\108\104\111\032\112\097\114\097\032\109\111\118\101\114\046\032\085\115\101\032\111\032\099\097\110\116\111\032\105\110\102\101\114\105\111\114\032\112\097\114\097\032\114\101\100\105\109\101\110\115\105\111\110\097\114\046\032\079\115\032\097\106\117\115\116\101\115\032\115\u{e3}\111\032\115\097\108\118\111\115\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046'
,
"\068\114\097\103\032\116\104\101\032\104\101\097\100\101\114\032\116\111\032\109\111\118\101\046\032\085\115\101\032\116\104\101\032\098\111\116\116\111\109\032\099\111\114\110\101\114\032\116\111\032\114\101\115\105\122\101\046\032\067\104\097\110\103\101\115\032\097\114\101\032\115\097\118\101\100\032\097\117\116\111\109\097\116\105\099\097\108\108\121\046"
),64,-9)for a1,a2 in ipairs({{'\115\099\097\108\101','\069\115\099\097\108\097\032\100\097\032\105\110\116\101\114\102\097\099\101','\073\110\116\101\114\102\097\099\101\032\115\099\097\108\101',5,
'\037'},{'\119\105\100\116\104','\076\097\114\103\117\114\097\032\100\111\032\112\097\105\110\101\108','\080\097\110\101\108\032\119\105\100\116\104',10,'\032\112\120'},{'\104\101\105\103\104\116',
'\065\108\116\117\114\097\032\100\111\032\112\097\105\110\101\108','\080\097\110\101\108\032\104\101\105\103\104\116',10,'\032\112\120'},{'\108\097\117\110\099\104\101\114','\084\097\109\097\110\104\111\032\100\111\032\102\108\117\116\117\097\110\116\101',
'\070\108\111\097\116\105\110\103\032\098\117\116\116\111\110\032\115\105\122\101',2,'\032\112\120'}})do local a3=a2[1]local a4=aq('\070\114\097\109\101',{Size=
UDim2.new(1,-8,0,76),BackgroundColor3=am.tile,LayoutOrder=-8+a1},a0)at(a4,10)au(
a4)local a5=aP.label(a4,'\084\101\120\116\076\097\098\101\108',ap(a2[2],a2[3]),28,0)a5.Size=UDim2.new(1,0,0
,28)local a6=aP.button(a4,'\u{2212}',0)a6.Size=UDim2.fromOffset(42,36)a6.
Position=UDim2.fromOffset(12,32)a6.TextXAlignment=Enum.TextXAlignment.Center
local a7=aP.label(a4,'\084\101\120\116\066\111\120','',36,0)a7.Position=UDim2.fromOffset(62,32)a7.
Size=UDim2.new(1,-124,0,36)a7.TextXAlignment=Enum.TextXAlignment.Center local a8
=aP.button(a4,'\043',0)a8.Size=UDim2.fromOffset(42,36)a8.Position=UDim2.new(1,-54,0
,32)a8.TextXAlignment=Enum.TextXAlignment.Center local function a9()a7.Text=
tostring(math.floor(aU[a3]))..a2[5]end aZ[#aZ+1]=a9 local function b(bb)if bb
and bb==bb then aU[a3]=math.clamp(bb,aV[a3][1],aV[a3][2])aY()aW()end a9()end ar(
a6.Activated,function()b(aU[a3]-a2[4])end)ar(a8.Activated,function()b(aU[a3]+a2[
4])end)ar(a7.FocusLost,function()b(tonumber(a7.Text:match('\091\037\100\037\046\093\043')))end)a9()
end local a1=aP.button(a0,ap('\067\101\110\116\114\097\108\105\122\097\114\032\101\032\114\101\115\116\097\117\114\097\114\032\116\097\109\097\110\104\111',
'\067\101\110\116\101\114\032\097\110\100\032\114\101\115\116\111\114\101\032\115\105\122\101'),-3)ar(a1.Activated,function()aU=table.clone(aT)aY()
aW()for a2,a3 in ipairs(aZ)do a3()end end)end local a0=aq('\084\101\120\116\066\117\116\116\111\110',{Text=
'\u{25e2}',TextSize=20,TextColor3=am.muted,BackgroundTransparency=1,Size=UDim2.
fromOffset(30,30),Position=UDim2.new(1,-30,1,-30)},aw)local a1 local function a2
(a3,a4)if a3.UserInputType~=Enum.UserInputType.MouseButton1 and a3.UserInputType
~=Enum.UserInputType.Touch then return end a1={input=a3,kind=a4,origin=a3.
Position,pos=aw.Position,width=aw.Size.X.Offset,height=aw.Size.Y.Offset}end ar(
ay.InputBegan,function(a3)a2(a3,'\109\111\118\101')end)ar(a0.InputBegan,function(a3)a2(a3,
'\114\101\115\105\122\101')end)ar(ad.InputChanged,function(a3)if not a1 or(a3~=a1.input and a3.
UserInputType~=Enum.UserInputType.MouseMovement)then return end local a4=a3.
Position-a1.origin local a5=av.AbsoluteSize if a1.kind=='\114\101\115\105\122\101'then aU.width=
math.clamp(a1.width+a4.X/aX.Scale,300,1100)aU.height=math.clamp(a1.height+a4.Y/
aX.Scale,340,900)else local a6=math.max(1,a5.X-16-aw.Size.X.Offset*aX.Scale)
local a7=math.max(1,a5.Y-16-aw.Size.Y.Offset*aX.Scale)aU.x=math.clamp((a1.pos.X.
Offset+a4.X-8)/a6,0,1)aU.y=math.clamp((a1.pos.Y.Offset+a4.Y-8)/a7,0,1)end aY()
end)ar(ad.InputEnded,function(a3)if a1 and a3==a1.input then a1=nil aW()for a4,
a5 in ipairs(aZ)do a5()end end end)local function a3()if not al then return end
al=false if aj then pcall(aj)end for a4,a5 in ipairs(ah)do a5:Disconnect()end av
:Destroy()end ab.attach(a3)local function a4(a5)aw.Visible=a5 if a5 then aY()
local a6=aw.Position aw.Position=a6+UDim2.fromOffset(0,8)as(aw,{Position=a6})end
end local a5=aq('\084\101\120\116\066\117\116\116\111\110',{Text='\u{2014}',Size=UDim2.fromOffset(32,32),
Position=UDim2.new(1,-76,0,16)},ay)local a6=aq('\084\101\120\116\066\117\116\116\111\110',{Text='\u{d7}',Size=
UDim2.fromOffset(32,32),Position=UDim2.new(1,-38,0,16)},ay)for a7,a8 in ipairs({
a5,a6})do a8.BackgroundColor3=am.tile a8.TextColor3=am.text a8.Font=Enum.Font.
GothamMedium a8.TextSize=18 at(a8,8)end ar(a5.Activated,function()a4(false)end)
ar(a6.Activated,function()ab.unload()end)local a7,a8,a9,b,bb ar(aF.InputBegan,
function(bc)if bc.UserInputType==Enum.UserInputType.MouseButton1 or bc.
UserInputType==Enum.UserInputType.Touch then a7=bc a8=bc.Position a9=aF.Position
b=os.clock()bb=false end end)ar(ad.InputChanged,function(bc)if a7 and(bc==a7 or
bc.UserInputType==Enum.UserInputType.MouseMovement)then local be=bc.Position-a8
if be.Magnitude>8 then bb=true end if bb then local bf=av.AbsoluteSize local bg=
math.clamp(a9.X.Scale*bf.X+a9.X.Offset+be.X,0,math.max(0,bf.X-aU.launcher))local
bh=math.clamp(a9.Y.Scale*bf.Y+a9.Y.Offset+be.Y,0,math.max(0,bf.Y-aU.launcher))aF
.Position=UDim2.fromOffset(bg,bh)end end end)ar(ad.InputEnded,function(bc)if a7
and(bc==a7 or bc.UserInputType==Enum.UserInputType.MouseButton1)then if not bb
then if os.clock()-b>=0.65 then if ak then ak()end else a4(not aw.Visible)end
end a7=nil end end)ar(ad.InputBegan,function(bc,be)if not be and bc.KeyCode==
Enum.KeyCode.RightControl then a4(not aw.Visible)end end)local bc=os.clock()
local be,bf=false,false local function bg()return be and(bf or os.clock()-bc>=
2.5)end local bh=aq('\070\114\097\109\101',{Name='\076\111\097\100\105\110\103',Size=UDim2.fromScale(1,1),
BackgroundColor3=am.dark,ZIndex=50},aw)at(bh,10)local bi=aq('\084\101\120\116\076\097\098\101\108',{Text=
'\065\078\079\078\072\085\066',Position=UDim2.fromScale(0.1,0.045),Size=UDim2.fromScale(0.8,0.12),
BackgroundTransparency=1,Font=Enum.Font.GothamBlack,TextSize=28,TextColor3=ao,
ZIndex=51},bh)local bj=aq('\084\101\120\116\076\097\098\101\108',{Text=game.PlaceId==101906032112547 and
ap('\067\097\114\114\101\103\097\110\100\111\032\108\111\098\098\121','\076\111\097\100\105\110\103\032\108\111\098\098\121')or ap('\067\097\114\114\101\103\097\110\100\111\032\101\120\112\101\100\105\u{e7}\u{e3}\111',
'\076\111\097\100\105\110\103\032\101\120\112\101\100\105\116\105\111\110'),Position=UDim2.fromScale(0.1,0.59),Size=UDim2.fromScale(
0.8,0.1),BackgroundTransparency=1,Font=Enum.Font.GothamBold,TextSize=18,
TextWrapped=true,TextColor3=am.text,ZIndex=51},bh)local bk=aq('\084\101\120\116\076\097\098\101\108',{Text=
'',Position=UDim2.fromScale(0.1,0.69),Size=UDim2.fromScale(0.8,0.1),
BackgroundTransparency=1,Font=Enum.Font.Gotham,TextSize=13,TextWrapped=true,
TextColor3=am.muted,ZIndex=51},bh)local bl=aq('\070\114\097\109\101',{Position=UDim2.fromScale(
0.15,0.82),Size=UDim2.new(0.7,0,0,10),BackgroundColor3=am.edge,ZIndex=51},bh)at(
bl,4)local bm=aq('\070\114\097\109\101',{Size=UDim2.fromScale(0,1),BackgroundColor3=ao,ZIndex=
52},bl)at(bm,4)aq('\085\073\071\114\097\100\105\101\110\116',{Color=ColorSequence.new(Color3.fromRGB(150,60,
220),Color3.fromRGB(235,165,255)),Rotation=0},bm)local bn=aq('\084\101\120\116\076\097\098\101\108',{Text=
'\069\065\082\084\072\032\067\079\082\069\032\047\032\065\078\079\078\072\085\066\032\032\u{b7}\032\032\118'..aa,Position=UDim2.fromScale(0.1,0.145),Size=
UDim2.fromScale(0.8,0.05),BackgroundTransparency=1,Font=Enum.Font.Code,TextSize=
10,TextColor3=am.muted,ZIndex=51},bh)local bo=aq('\084\101\120\116\076\097\098\101\108',{Text='',Position=
UDim2.fromScale(0.15,0.87),Size=UDim2.fromScale(0.7,0.06),BackgroundTransparency
=1,Font=Enum.Font.Code,TextSize=11,TextColor3=am.muted,ZIndex=51},bh)local bp=
aq('\070\114\097\109\101',{Name='\071\097\109\101\067\111\118\101\114',Position=UDim2.fromScale(0.12,0.22),Size=UDim2.
fromScale(0.76,0.34),BackgroundColor3=am.tile,ClipsDescendants=true,ZIndex=51},
bh)at(bp,14)aq('\085\073\083\116\114\111\107\101',{Color=ao,Thickness=2,Transparency=0.15,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border},bp)local bq=aq('\073\109\097\103\101\076\097\098\101\108',{Size=
UDim2.fromScale(1,1),BackgroundTransparency=1,Image=ab.identity and ab.identity.
cover or"\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\071\097\109\101\084\104\117\109\098\110\097\105\108\038\105\100\061\049\048\049\057\048\054\048\051\050\049\049\050\053\052\055\038\119\061\052\056\048\038\104\061\050\055\048",
ScaleType=Enum.ScaleType.Crop,ZIndex=52},bp)at(bq,14)aq('\084\101\120\116\076\097\098\101\108',{Text=
'\069\065\082\084\072\032\067\079\082\069',Size=UDim2.new(1,0,0,30),Position=UDim2.new(0,0,1,-30),
BackgroundColor3=am.dark,BackgroundTransparency=0.25,TextColor3=Color3.new(1,1,1
),TextSize=12,Font=Enum.Font.GothamBold,ZIndex=53},bp)local br=aq('\070\114\097\109\101',{Name=
'\067\111\118\101\114\082\101\102\108\101\099\116\105\111\110',Size=UDim2.fromScale(1,1),BackgroundColor3=Color3.new(1,1,1),
ZIndex=54,Active=false},bp)at(br,14)local bs=aq('\085\073\071\114\097\100\105\101\110\116',{Rotation=20,Offset
=Vector2.new(-1,0),Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0
,1),NumberSequenceKeypoint.new(0.4,1),NumberSequenceKeypoint.new(0.5,0.65),
NumberSequenceKeypoint.new(0.6,1),NumberSequenceKeypoint.new(1,1)})},br)local bt
=af:Create(bs,TweenInfo.new(1.6,Enum.EasingStyle.Linear,Enum.EasingDirection.Out
,-1,false,0.6),{Offset=Vector2.new(1,0)})bt:Play()ar(bh.Destroying,function()bt:
Cancel()end)task.spawn(function()pcall(function()game:GetService(
'\067\111\110\116\101\110\116\080\114\111\118\105\100\101\114'):PreloadAsync({bq})end)end)local bu=aq('\084\101\120\116\066\117\116\116\111\110',{Text=ap(
'\080\117\108\097\114\032\097\110\105\109\097\u{e7}\u{e3}\111','\083\107\105\112\032\097\110\105\109\097\116\105\111\110'),Position=UDim2.fromScale(0.3,0.93),
Size=UDim2.fromScale(0.4,0.055),BackgroundColor3=am.tile,TextColor3=am.text,Font
=Enum.Font.GothamMedium,TextSize=11,ZIndex=52},bh)at(bu,8)ar(bu.Activated,
function()bf=true if be then bh:Destroy()else bu.Text=ap(
'\065\103\117\097\114\100\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115\u{2026}','\087\097\105\116\105\110\103\032\102\111\114\032\102\101\097\116\117\114\101\115\u{2026}')bu.Active=
false end end)local bv=aq('\084\101\120\116\066\117\116\116\111\110',{Text=ap('\070\101\099\104\097\114','\067\108\111\115\101'),Position=UDim2
.new(1,-88,0,12),Size=UDim2.fromOffset(76,32),BackgroundColor3=am.tile,
TextColor3=am.text,Font=Enum.Font.Gotham,TextSize=12,ZIndex=52},bh)at(bv,8)ar(bv
.Activated,function()ab.unload()end)local function bw(bx,by,bz)if not al then
error('\073\110\105\116\105\097\108\105\122\097\116\105\111\110\032\099\097\110\099\101\108\108\101\100')end bk.Text=ap(by,bz)bo.Text=string.format(
'\037\100\037\037',math.floor(bx*100))if ab.progress then ab.progress(0.43+0.57*bx,by,bz)end
as(bm,{Size=UDim2.fromScale(bx,1)})game:GetService('\082\117\110\083\101\114\118\105\099\101').Heartbeat:Wait(
)end aY()bw(0.08,'\080\114\101\112\097\114\097\110\100\111\032\097\032\105\110\116\101\114\102\097\099\101\u{2026}',
'\080\114\101\112\097\114\105\110\103\032\116\104\101\032\105\110\116\101\114\102\097\099\101\u{2026}')local bx={{id='\068\114\105\108\108\080\111\119\101\114',name='\068\114\105\108\108\032\080\111\119\101\114',
icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\055\053\049\054\055\051\048\056\053\055\054\048\056\051'},{id='\070\117\101\108\083\116\111\114\097\103\101',name='\070\117\101\108\032\083\116\111\114\097\103\101',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\055\057\054\049\053\055\055\052\053\049\051\053\057\049'},{id='\068\114\105\118\101\083\112\101\101\100',name='\068\114\105\118\101\032\083\112\101\101\100',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\049\051\048\054\052\054\055\055\051\048\054\049\051\052\056'},{id='\068\114\105\108\108\068\101\102\101\110\115\101',name='\068\114\105\108\108\032\068\101\102\101\110\115\101',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\057\055\054\053\048\056\048\050\051\049\055\057\057\056'},{id='\084\101\097\109\072\101\097\108\116\104',name='\084\101\097\109\032\072\101\097\108\116\104',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\049\048\048\057\051\057\057\057\051\053\053\051\054\057\048'},{id='\083\097\099\107\083\116\111\114\097\103\101',name='\067\097\114\114\121\032\067\097\112\097\099\105\116\121',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\049\050\052\052\057\054\052\052\056\056\053\052\055\048\048'},{id='\080\111\119\101\114\068\114\105\118\101',name='\080\111\119\101\114\032\068\114\105\118\101',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\056\055\051\056\048\052\049\055\052\055\055\051\052\049'},{id='\080\111\119\101\114\083\108\097\109',name='\080\111\119\101\114\032\083\108\097\109',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\049\048\049\056\056\053\056\051\049\057\056\055\049\055\055'},{id='\069\110\103\105\110\101\079\118\101\114\100\114\105\118\101',name='\069\110\103\105\110\101\032\079\118\101\114\100\114\105\118\101',
icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\049\049\057\055\055\055\055\048\053\057\051\048\057\053\053'},{id='\077\101\103\097\068\114\105\108\108',name='\077\101\103\097\032\068\114\105\108\108',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\049\049\048\055\052\054\052\049\051\049\055\053\049\050\049'},{id='\084\101\097\109\071\117\110\068\097\109\097\103\101',name='\070\105\114\101\112\111\119\101\114',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\049\048\050\056\050\056\049\054\057\057\049\051\050\049\048'},{id='\084\101\097\109\077\101\108\101\101\068\097\109\097\103\101',name='\083\104\097\114\112\110\101\115\115',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\057\051\048\055\055\057\053\049\055\050\049\055\048\049'},{id='\084\101\097\109\080\105\099\107\097\120\101\068\097\109\097\103\101',name='\080\105\099\107\097\120\101\032\068\097\109\097\103\101',
icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\056\053\057\049\056\050\050\048\050\057\053\053\049\055'},{id='\084\101\097\109\069\120\112\108\111\115\105\118\101\068\097\109\097\103\101',name='\066\108\097\115\116\032\080\111\119\101\114'
,icon='\114\098\120\097\115\115\101\116\105\100\058\047\047\049\050\054\053\055\055\054\055\050\055\049\056\057\055\054'},{id='\080\111\119\101\114\066\117\114\115\116',name='\080\111\119\101\114\032\066\117\114\115\116',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\057\049\048\054\050\050\055\054\056\055\051\055\053\054'},{id='\077\111\117\110\116\101\100\071\117\110\110\101\114',name='\077\111\117\110\116\101\100\032\071\117\110\110\101\114',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\049\048\056\051\057\050\049\052\057\048\057\051\056\051\049'},{id='\082\080\077\079\118\101\114\099\108\111\099\107',name='\082\080\077\032\079\118\101\114\099\108\111\099\107',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\057\049\053\052\049\051\057\056\050\052\055\055\048\052'},{id='\076\105\102\101\083\116\101\097\108',name='\076\105\102\101\115\116\101\097\108',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\049\050\051\055\052\053\051\054\053\051\049\050\056\055\055'},{id='\077\111\110\101\121\068\114\105\108\108',name='\077\111\110\101\121\032\068\114\105\108\108',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\049\049\057\054\049\054\055\055\051\056\056\053\052\049\053'},{id='\085\108\116\114\097\068\114\105\108\108',name='\085\108\116\114\097\032\068\114\105\108\108',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\049\051\055\051\055\057\053\056\051\049\057\049\053\055\049'},{id='\072\101\097\108\116\104\082\101\103\101\110',name='\072\101\097\108\116\104\032\082\101\103\101\110',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\049\050\055\048\052\056\050\057\057\050\048\054\057\054\057'},{id='\067\097\114\116\069\120\116\101\110\115\105\111\110',name='\067\097\114\116\032\069\120\116\101\110\115\105\111\110',icon=
'\114\098\120\097\115\115\101\116\105\100\058\047\047\056\056\057\050\054\052\056\048\051\056\054\054\049\052'}}local function by(bz,bA,bB,bC,bD)return bz~=
'\112\108\097\121\101\114\115'and(bB=='\067\111\114\112\115\101'or bC~=nil or bD~=nil or type(bA)=='\110\117\109\098\101\114'and bA<=0)
end local function bz(bA,bB)local bC,bD=bA.ui,bA.T local bE=game:GetService(
'\080\108\097\121\101\114\115').LocalPlayer local bF=game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101')local bG=game
:GetService('\082\117\110\083\101\114\118\105\099\101')local bH=game:GetService('\067\111\108\108\101\099\116\105\111\110\083\101\114\118\105\099\101')local bI=
game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local bJ=true local bK={}local bL={}local bM={}
local bN={speed=24,flySpeed=40,reach=12,offset=5,maxDistance=1500,maxESP=60,
espPriority='\068\117\110\103\101\111\110\115',oreFilter='\067\111\097\108\044\073\114\111\110\044\071\111\108\100\044\068\105\097\109\111\110\100\044\069\109\101\114\097\108\100\044\082\117\098\121',position=
'\079\102\102',style='\079\117\116\108\105\110\101',textSize=12,distanceColor='\068\048\068\056\069\056',hideDead=true,
hideAttached=true,combatDistance=22,gunRange=250,hitboxSize=8}local bO={speed=
false,noclip=false,fly=false,aura=false,oreAura=false,autoMove=false,autoFire=
false,silentAim=false,hitbox=false}local bP={{'\109\111\098\115','\077\111\110\115\116\114\111\115','\069\110\101\109\105\101\115',
'\070\070\054\048\054\048'},{'\112\108\097\121\101\114\115','\074\111\103\097\100\111\114\101\115','\080\108\097\121\101\114\115','\054\048\068\056\070\070'},{'\099\111\109\112\097\110\105\111\110\115',
'\067\111\109\112\097\110\104\101\105\114\111\115','\067\111\109\112\097\110\105\111\110\115','\054\048\070\070\066\048'},{'\099\104\101\115\116\115','\066\097\u{fa}\115','\067\104\101\115\116\115','\070\070\068\048\054\048'},{
'\109\105\109\105\099\115','\077\u{ed}\109\105\099\111\115\032\105\100\101\110\116\105\102\105\099\097\100\111\115','\073\100\101\110\116\105\102\105\101\100\032\109\105\109\105\099\115','\070\070\053\048\068\048'},{'\105\116\101\109\115',
'\073\116\101\110\115','\073\116\101\109\115','\070\070\070\070\070\070'},{'\115\099\114\097\112','\083\117\099\097\116\097\115','\083\099\114\097\112','\066\053\067\048\068\048'},{'\111\114\101\115',
'\077\105\110\u{e9}\114\105\111\115','\079\114\101\115','\054\048\069\048\070\070'},{'\099\104\117\114\099\104','\073\103\114\101\106\097','\067\104\117\114\099\104','\070\070\070\048\065\048'},{'\100\111\111\114\115',
'\069\110\116\114\097\100\097\115\032\100\101\032\068\117\110\103\101\111\110','\068\117\110\103\101\111\110\032\101\110\116\114\097\110\099\101\115','\066\048\056\048\070\070'},{'\097\114\101\110\097\115','\080\111\114\116\097\115\032\100\101\032\097\114\101\110\097',
'\065\114\101\110\097\032\100\111\111\114\115','\070\070\056\048\052\048'},{'\116\114\101\097\115\117\114\101\068\111\111\114\115','\080\111\114\116\097\115\032\100\101\032\116\101\115\111\117\114\111','\084\114\101\097\115\117\114\101\032\100\111\111\114\115',
'\070\070\069\048\056\048'}}local bQ={}for bR,bS in ipairs(bP)do bQ[bS[1] ]={enabled=false,color=
bS[4]}end local bR='\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\086\105\115\117\097\108\095'..bE.UserId..'\046\106\115\111\110'if type(
readfile)=='\102\117\110\099\116\105\111\110'then pcall(function()local bS=bI:JSONDecode(readfile(bR))
for bT,bU in pairs(bN)do if type(bS.config[bT])==type(bU)then bN[bT]=bS.config[
bT]end end for bT,bU in pairs(bQ)do local bW=bS.colors and bS.colors[bT]if type(
bW)=='\115\116\114\105\110\103'and bW:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then bU.color=bW end end end)end
local function bS()if type(writefile)=='\102\117\110\099\116\105\111\110'then local bT={}for bU,bW in
pairs(bQ)do bT[bU]=bW.color end pcall(writefile,bR,bI:JSONEncode({config=bN,
colors=bT}))end end local function bT(bU,bW)bK[#bK+1]=bU:Connect(bW)end local
function bU(bW,bX,bY)local bZ=Instance.new(bW)for b_,b0 in pairs(bX)do bZ[b_]=b0
end bZ.Parent=bY return bZ end local function bW(bX)return Color3.fromRGB(
tonumber(bX:sub(1,2),16),tonumber(bX:sub(3,4),16),tonumber(bX:sub(5,6),16))end
local function bX(bY,bZ,b_,b0,b1,b2)b2=b2 or bO local b3,b4=bC.checkbox(bY,bD(b_
,b0),b1)bL[bZ]={paint=b4,table=b2}bT(b3.Activated,function()b2[bZ]=not b2[bZ]b4(
b2[bZ])end)end local function bY(bZ,b_,b0,b1,b2,b3,b4)bN[b_]=math.clamp(
tonumber(bN[b_])or b3,b3,b4)if bN[b_]~=bN[b_]then bN[b_]=b3 end bC.label(bZ,
'\084\101\120\116\076\097\098\101\108',bD(b0,b1),30,b2)local b5=bC.label(bZ,'\084\101\120\116\066\111\120',tostring(bN[b_]),40,
b2+1)bT(b5.FocusLost,function()local b6=tonumber(b5.Text)if b6 and b6==b6 and
math.abs(b6)<math.huge then bN[b_]=math.clamp(b6,b3,b4)bS()end b5.Text=tostring(
bN[b_])end)end local bZ=bA.section('\077\101\108\104\111\114\105\097\115')local b_={TeamHealth=
'\086\105\100\097\032\109\u{e1}\120\105\109\097',LifeSteal='\082\111\117\098\111\032\100\101\032\118\105\100\097',DrillPower='\080\111\116\u{ea}\110\099\105\097\032\100\097\032\098\114\111\099\097'
,RPMOverclock='\082\080\077\032\100\097\032\098\114\111\099\097',SackStorage='\067\097\112\097\099\105\100\097\100\101\032\100\097\032\109\111\099\104\105\108\097',DriveSpeed=
'\086\101\108\111\099\105\100\097\100\101\032\100\097\032\098\114\111\099\097',FuelStorage='\067\097\112\097\099\105\100\097\100\101\032\100\101\032\099\111\109\098\117\115\116\u{ed}\118\101\108',DrillDefense=
'\068\097\110\111\032\100\101\032\099\111\110\116\097\116\111',PowerDrive='\065\099\101\108\101\114\097\u{e7}\u{e3}\111',PowerSlam='\073\109\112\097\099\116\111\032\112\111\116\101\110\116\101',
EngineOverdrive='\083\111\098\114\101\099\097\114\103\097\032\100\111\032\109\111\116\111\114',MegaDrill='\077\101\103\097\032\098\114\111\099\097',TeamGunDamage=
'\068\097\110\111\032\100\101\032\097\114\109\097\115',TeamMeleeDamage='\068\097\110\111\032\099\111\114\112\111\032\097\032\099\111\114\112\111',TeamPickaxeDamage=
'\068\097\110\111\032\100\101\032\112\105\099\097\114\101\116\097',TeamExplosiveDamage='\068\097\110\111\032\101\120\112\108\111\115\105\118\111',PowerBurst=
'\069\120\112\108\111\115\u{e3}\111\032\100\101\032\112\111\116\u{ea}\110\099\105\097',MountedGunner='\065\116\105\114\097\100\111\114\032\109\111\110\116\097\100\111',MoneyDrill=
'\077\111\101\100\097\115\032\112\111\114\032\112\097\114\101\100\101',UltraDrill='\085\108\116\114\097\032\098\114\111\099\097',HealthRegen='\082\101\103\101\110\101\114\097\u{e7}\u{e3}\111'
,CartExtension='\069\120\116\101\110\115\u{e3}\111\032\100\097\032\098\114\111\099\097'}local b0,b1={},{}for b2,b3 in ipairs(bx)
do b1[b3.id]=b3 end for b2 in bB.priority:gmatch('\091\094\044\093\043')do b2=b2:match(
'\094\037\115\042\040\046\045\041\037\115\042\036')if b1[b2]and not table.find(b0,b2)then b0[#b0+1]=b2 end end local
b2={}for b3,b4 in ipairs(b0)do b2[b4]=true end for b3,b4 in ipairs(bx)do if not
table.find(b0,b4.id)then b0[#b0+1]=b4.id end end local b3={}local function b4()
local b5={}for b6,b7 in ipairs(b0)do local b8=b3[b7]if b8 then b8.frame.
LayoutOrder=100+b6 b8.caption.Text=b6..'\032\u{b7}\032'..bD(b_[b7]or b1[b7].name,b1[b7
].name)b8.paint(b2[b7])end if b2[b7]then b5[#b5+1]=b7 end end bB.setPriority(
table.concat(b5,'\044'))end for b5,b6 in ipairs(b0)do local b7=b1[b6]local b8=bU(
'\070\114\097\109\101',{Size=UDim2.new(1,-8,0,58),BackgroundTransparency=1},bZ)bU('\073\109\097\103\101\076\097\098\101\108',
{Size=UDim2.fromOffset(36,36),Position=UDim2.fromOffset(0,10),Image=b7.icon,
BackgroundTransparency=1},b8)local b9,c=bC.checkbox(b8,'',0)b9.Size=UDim2.new(1,
-136,0,48)b9.Position=UDim2.fromOffset(42,4)local ca=b9:FindFirstChildWhichIsA(
'\084\101\120\116\076\097\098\101\108')b3[b6]={frame=b8,paint=c,caption=ca}bT(b9.Activated,function()b2[b6]
=not b2[b6]b4()end)for cb,cc in ipairs({-1,1})do local cd=bU('\084\101\120\116\066\117\116\116\111\110',{Text=
cc<0 and'\u{2191}'or'\u{2193}',Size=UDim2.fromOffset(36,44),Position=UDim2.new(1
,-82+(cb-1)*40,0,6),BackgroundColor3=Color3.fromRGB(35,45,60),TextColor3=Color3.
new(1,1,1),TextSize=20},b8)bU('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,8)},cd)bT(cd.
Activated,function()local ce=table.find(b0,b6)local cf=ce+cc if cf>=1 and cf<=#
b0 then b0[ce],b0[cf]=b0[cf],b0[ce]b4()end end)end end b4()local b5=bA.section(
'\077\111\118\105\109\101\110\116\111')bX(b5,'\115\112\101\101\100','\086\101\108\111\099\105\100\097\100\101\032\112\101\114\115\111\110\097\108\105\122\097\100\097','\067\117\115\116\111\109\032\119\097\108\107\032\115\112\101\101\100',1)bY(b5
,'\115\112\101\101\100','\086\101\108\111\099\105\100\097\100\101\032\040\087\097\108\107\083\112\101\101\100\041','\087\097\108\107\083\112\101\101\100',2,8,100)bX(b5,'\110\111\099\108\105\112','\078\111\099\108\105\112',
'\078\111\099\108\105\112',5)bX(b5,'\102\108\121','\070\108\121\032\u{b7}\032\115\105\103\097\032\097\032\099\u{e2}\109\101\114\097\032\047\032\106\111\121\115\116\105\099\107',
'\070\108\121\032\u{b7}\032\099\097\109\101\114\097\032\047\032\106\111\121\115\116\105\099\107\032\100\105\114\101\099\116\105\111\110',6)bY(b5,'\102\108\121\083\112\101\101\100','\086\101\108\111\099\105\100\097\100\101\032\100\111\032\070\108\121',
'\070\108\121\032\115\112\101\101\100',7,5,150)bC.label(b5,'\084\101\120\116\076\097\098\101\108',bD(
'\070\108\121\058\032\087\065\083\068\047\106\111\121\115\116\105\099\107\044\032\069\115\112\097\u{e7}\111\032\115\111\098\101\032\101\032\067\116\114\108\032\100\101\115\099\101\046\032\078\111\032\099\101\108\117\108\097\114\044\032\117\115\101\032\111\115\032\098\111\116\u{f5}\101\115\032\u{2191}\047\u{2193}\046'
,
'\070\108\121\058\032\087\065\083\068\047\106\111\121\115\116\105\099\107\044\032\083\112\097\099\101\032\117\112\032\097\110\100\032\067\116\114\108\032\100\111\119\110\046\032\079\110\032\109\111\098\105\108\101\044\032\117\115\101\032\u{2191}\047\u{2193}\032\098\117\116\116\111\110\115\046'
),56,10)local b6=bA.section('\067\111\109\098\097\116\101')bX(b6,'\097\117\116\111\077\111\118\101',
'\065\117\116\111\032\077\111\118\101\032\u{b7}\032\109\097\110\116\101\114\032\100\105\115\116\u{e2}\110\099\105\097\032\100\111\032\105\110\105\109\105\103\111',
'\065\117\116\111\032\077\111\118\101\032\u{b7}\032\109\097\105\110\116\097\105\110\032\101\110\101\109\121\032\100\105\115\116\097\110\099\101',30)bY(b6,'\099\111\109\098\097\116\068\105\115\116\097\110\099\101',
'\068\105\115\116\u{e2}\110\099\105\097\032\100\111\032\065\117\116\111\032\077\111\118\101\032\040\115\116\117\100\115\041','\065\117\116\111\032\077\111\118\101\032\100\105\115\116\097\110\099\101\032\040\115\116\117\100\115\041',31,5,40)bC.
label(b6,'\084\101\120\116\076\097\098\101\108',bD(
'\077\111\118\101\045\115\101\032\101\032\117\115\097\032\111\032\097\116\097\113\117\101\032\101\113\117\105\112\097\100\111\046\032\050\050\032\115\116\117\100\115\032\u{e9}\032\097\032\100\105\115\116\u{e2}\110\099\105\097\032\105\110\105\099\105\097\108\059\032\110\u{e3}\111\032\103\097\114\097\110\116\101\032\105\110\118\117\108\110\101\114\097\098\105\108\105\100\097\100\101\046\032\078\u{e3}\111\032\109\111\118\101\032\101\110\113\117\097\110\116\111\032\112\105\108\111\116\097\046'
,
"\077\111\118\101\115\032\097\110\100\032\117\115\101\115\032\116\104\101\032\101\113\117\105\112\112\101\100\032\097\116\116\097\099\107\046\032\083\116\097\114\116\115\032\097\116\032\050\050\032\115\116\117\100\115\059\032\100\111\101\115\032\110\111\116\032\103\117\097\114\097\110\116\101\101\032\105\109\109\117\110\105\116\121\046\032\068\111\101\115\032\110\111\116\032\109\111\118\101\032\119\104\105\108\101\032\100\114\105\118\105\110\103\046"
),66,33)bX(b6,'\097\117\116\111\070\105\114\101','\065\117\116\111\032\070\105\114\101\032\u{b7}\032\097\114\109\097\032\100\101\032\102\111\103\111\032\101\113\117\105\112\097\100\097',
'\065\117\116\111\032\070\105\114\101\032\u{b7}\032\101\113\117\105\112\112\101\100\032\102\105\114\101\097\114\109',35)bX(b6,'\115\105\108\101\110\116\065\105\109',
'\083\105\108\101\110\116\032\065\105\109\032\u{b7}\032\109\105\114\097\114\032\110\097\032\099\097\098\101\u{e7}\097\032\100\111\115\032\078\080\067\115',
'\083\105\108\101\110\116\032\065\105\109\032\u{b7}\032\097\105\109\032\097\116\032\078\080\067\032\104\101\097\100\115',36)bY(b6,'\103\117\110\082\097\110\103\101',
'\068\105\115\116\u{e2}\110\099\105\097\032\100\101\032\115\101\108\101\u{e7}\u{e3}\111\032\100\097\032\097\114\109\097','\071\117\110\032\116\097\114\103\101\116\032\115\101\108\101\099\116\105\111\110\032\100\105\115\116\097\110\099\101',37
,10,1000)bX(b6,'\104\105\116\098\111\120','\072\105\116\098\111\120\032\108\111\099\097\108\032\097\109\112\108\105\097\100\111\032\u{b7}\032\099\097\105\120\097\032\116\114\097\110\115\112\097\114\101\110\116\101',
'\076\097\114\103\101\114\032\108\111\099\097\108\032\104\105\116\098\111\120\032\u{b7}\032\116\114\097\110\115\112\097\114\101\110\116\032\098\111\120',40)bY(b6,'\104\105\116\098\111\120\083\105\122\101',
'\084\097\109\097\110\104\111\032\100\111\032\104\105\116\098\111\120\032\108\111\099\097\108','\076\111\099\097\108\032\104\105\116\098\111\120\032\115\105\122\101',41,2,20)bX(b6,'\097\117\114\097',
'\065\117\114\097\032\100\101\032\097\116\097\113\117\101\032\u{b7}\032\097\114\109\097\032\099\111\114\112\111\032\097\032\099\111\114\112\111\032\101\113\117\105\112\097\100\097',
'\065\116\116\097\099\107\032\097\117\114\097\032\u{b7}\032\101\113\117\105\112\112\101\100\032\109\101\108\101\101\032\119\101\097\112\111\110',1)bX(b6,'\111\114\101\065\117\114\097',
'\065\117\114\097\032\100\101\032\109\105\110\u{e9}\114\105\111\115\032\u{b7}\032\112\105\099\097\114\101\116\097\032\101\113\117\105\112\097\100\097',
'\079\114\101\032\097\117\114\097\032\u{b7}\032\101\113\117\105\112\112\101\100\032\112\105\099\107\097\120\101',2)bY(b6,'\114\101\097\099\104','\065\108\099\097\110\099\101\032\115\111\108\105\099\105\116\097\100\111\032\101\109\032\115\116\117\100\115'
,'\082\101\113\117\101\115\116\101\100\032\114\101\097\099\104\032\105\110\032\115\116\117\100\115',3,2,40)bC.label(b6,'\084\101\120\116\076\097\098\101\108',bD(
"\085\115\097\032\111\032\097\116\097\113\117\101\032\101\032\099\111\111\108\100\111\119\110\032\110\097\116\105\118\111\115\046\032\065\108\099\097\110\099\101\032\097\099\101\105\116\111\032\101\032\100\097\110\111\032\099\111\110\116\105\110\117\097\109\032\115\117\106\101\105\116\111\115\032\097\111\032\115\101\114\118\105\100\111\114\046"
,
"\085\115\101\115\032\110\097\116\105\118\101\032\097\116\116\097\099\107\115\032\097\110\100\032\099\111\111\108\100\111\119\110\115\046\032\065\099\099\101\112\116\101\100\032\114\097\110\103\101\032\097\110\100\032\100\097\109\097\103\101\032\114\101\109\097\105\110\032\115\101\114\118\101\114\045\099\111\110\116\114\111\108\108\101\100\046"
),55,5)local b7=bC.button(b6,'',6)local function b8()b7.Text=bD(
'\080\111\115\105\u{e7}\u{e3}\111\058\032','\080\111\115\105\116\105\111\110\058\032')..({Off=bD('\100\101\115\108\105\103\097\100\111','\111\102\102'),Behind=bD(
'\099\111\115\116\097\115','\098\101\104\105\110\100'),Above=bD('\097\099\105\109\097','\097\098\111\118\101')})[bN.position]end if not({Off=true,
Behind=true,Above=true})[bN.position]then bN.position='\079\102\102'end b8()bT(b7.
Activated,function()bN.position=({Off='\066\101\104\105\110\100',Behind='\065\098\111\118\101',Above='\079\102\102'})[bN.
position]bS()b8()end)bY(b6,'\111\102\102\115\101\116','\068\105\115\116\u{e2}\110\099\105\097\032\097\099\105\109\097\047\097\116\114\u{e1}\115\032\100\111\032\097\108\118\111',
'\072\101\105\103\104\116\047\111\102\102\115\101\116\032\102\114\111\109\032\116\097\114\103\101\116',7,2,20)local b9=bA.section('\069\083\080')local c=bC.label(b9
,'\084\101\120\116\076\097\098\101\108',bD(
"\069\083\080\032\100\101\115\097\116\105\118\097\100\111\032\097\111\032\097\098\114\105\114\046\032\067\097\116\101\103\111\114\105\097\115\032\105\110\100\101\112\101\110\100\101\110\116\101\115\059\032\115\111\109\101\110\116\101\032\111\098\106\101\116\111\115\032\099\097\114\114\101\103\097\100\111\115\046"
,"\069\083\080\032\115\116\097\114\116\115\032\111\102\102\046\032\073\110\100\101\112\101\110\100\101\110\116\032\099\097\116\101\103\111\114\105\101\115\059\032\108\111\097\100\101\100\032\111\098\106\101\099\116\115\032\111\110\108\121\046"),55,1)for ca,
cb in ipairs(bP)do local cc,cd=bC.checkbox(b9,bD(cb[2],cb[3]),ca+2)bL['\101\115\112\095'..cb
[1] ]={paint=cd,category=cb[1]}bT(cc.Activated,function()bQ[cb[1] ].enabled=not
bQ[cb[1] ].enabled cd(bQ[cb[1] ].enabled)end)end bY(b9,'\109\097\120\068\105\115\116\097\110\099\101',
'\068\105\115\116\u{e2}\110\099\105\097\032\109\u{e1}\120\105\109\097\032\100\111\032\069\083\080','\069\083\080\032\109\097\120\105\109\117\109\032\100\105\115\116\097\110\099\101',15,50,10000)bY(b9,
'\109\097\120\069\083\080','\077\u{e1}\120\105\109\111\032\100\101\032\109\097\114\099\097\100\111\114\101\115\032\040\049\u{2013}\049\048\048\048\041',
'\077\097\114\107\101\114\032\108\105\109\105\116\032\040\049\u{2013}\049\048\048\048\041',18,1,1000)local ca={'\068\117\110\103\101\111\110\115','\069\110\101\109\105\101\115','\076\111\111\116',
'\068\105\115\116\097\110\099\101'}if not table.find(ca,bN.espPriority)then bN.espPriority='\068\117\110\103\101\111\110\115'end
local cb=bC.button(b9,'',20)local function cc()local cd={Dungeons='\068\117\110\103\101\111\110\115',
Enemies='\073\110\105\109\105\103\111\115',Loot='\073\116\101\110\115\032\101\032\098\097\u{fa}\115',Distance='\077\097\105\115\032\112\114\u{f3}\120\105\109\111\115'}cb.
Text=bD('\080\114\105\111\114\105\100\097\100\101\032\069\083\080\058\032','\069\083\080\032\112\114\105\111\114\105\116\121\058\032')..bD(cd[bN.espPriority],bN.
espPriority)end cc()bT(cb.Activated,function()bN.espPriority=ca[table.find(ca,bN
.espPriority)%#ca+1]cc()bS()end)local function cd(ce)if bN.espPriority==
'\068\117\110\103\101\111\110\115'then return(ce=='\100\111\111\114\115'or ce=='\097\114\101\110\097\115'or ce=='\116\114\101\097\115\117\114\101\068\111\111\114\115')and 0 or
1 end if bN.espPriority=='\069\110\101\109\105\101\115'then return(ce=='\109\111\098\115'or ce=='\109\105\109\105\099\115')and 0 or
1 end if bN.espPriority=='\076\111\111\116'then return(ce=='\105\116\101\109\115'or ce=='\099\104\101\115\116\115'or ce==
'\115\099\114\097\112'or ce=='\111\114\101\115')and 0 or 1 end return 0 end local ce=bC.button(b9,'',21)
local function cf()ce.Text=bD('\077\111\100\101\108\111\058\032','\083\116\121\108\101\058\032')..(bN.style=='\066\111\120'and bD(
'\099\097\105\120\097','\098\111\120')or bD('\099\111\110\116\111\114\110\111','\111\117\116\108\105\110\101'))end cf()bT(ce.Activated,function()bN.
style=bN.style=='\066\111\120'and'\079\117\116\108\105\110\101'or'\066\111\120'bS()cf()end)local cg=1 local ch=bC.
button(b9,'',22)local ci=bC.label(b9,'\084\101\120\116\066\111\120',bQ[bP[1][1] ].color,40,23)local
function cj()ch.Text=bD('\067\111\114\032\100\101\058\032','\067\111\108\111\114\032\102\111\114\058\032')..bD(bP[cg][2],bP[cg][3])ci.
Text=bQ[bP[cg][1] ].color end cj()bT(ch.Activated,function()cg=cg%#bP+1 cj()end)
bT(ci.FocusLost,function()local ck=ci.Text:gsub('\035',''):upper()if ck:match(
'\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then bQ[bP[cg][1] ].color=ck bS()else c.Text=bD(
'\072\069\088\032\105\110\118\u{e1}\108\105\100\111\058\032\117\115\101\032\054\032\099\097\114\097\099\116\101\114\101\115\032\100\101\032\048\u{2013}\057\032\101\032\065\u{2013}\070\044\032\099\111\109\111\032\070\070\065\049\051\049\046',
'\073\110\118\097\108\105\100\032\072\069\088\058\032\117\115\101\032\054\032\099\104\097\114\097\099\116\101\114\115\032\102\114\111\109\032\048\u{2013}\057\032\097\110\100\032\065\u{2013}\070\044\032\115\117\099\104\032\097\115\032\070\070\065\049\051\049\046')
end cj()end)local ck=bU('\070\114\097\109\101',{Size=UDim2.new(1,-8,0,190),
BackgroundTransparency=1,LayoutOrder=24},b9)local cl,cm=1,1 for cn=0,23 do local
co=cn/24 local cp=co*math.pi*2 local cq=bU('\084\101\120\116\066\117\116\116\111\110',{Text='',Size=UDim2.
fromOffset(24,24),Position=UDim2.new(0.5,math.cos(cp)*72-12,0.5,math.sin(cp)*72-
12),BackgroundColor3=Color3.fromHSV(co,1,1),BorderSizePixel=0},ck)bU('\085\073\067\111\114\110\101\114',
{CornerRadius=UDim.new(1,0)},cq)bT(cq.Activated,function()bQ[bP[cg][1] ].color=
Color3.fromHSV(co,cl,cm):ToHex():upper()bS()cj()end)end local cn=bC.button(b9,
bD('\066\114\097\110\099\111\032\047\032\115\097\116\117\114\097\u{e7}\u{e3}\111\032\122\101\114\111','\087\104\105\116\101\032\047\032\122\101\114\111\032\115\097\116\117\114\097\116\105\111\110'),25)bT(cn.
Activated,function()bQ[bP[cg][1] ].color='\070\070\070\070\070\070'bS()cj()end)local co=bC.label(
b9,'\084\101\120\116\066\111\120',bN.oreFilter,40,26)bT(co.FocusLost,function()bN.oreFilter=co.Text:
sub(1,300)bS()end)bC.label(b9,'\084\101\120\116\076\097\098\101\108',bD(
'\070\105\108\116\114\111\032\100\101\032\109\105\110\u{e9}\114\105\111\115\032\112\111\114\032\110\111\109\101\058\032\067\111\097\108\044\032\073\114\111\110\044\032\071\111\108\100\044\032\068\105\097\109\111\110\100\044\032\069\109\101\114\097\108\100\044\032\082\117\098\121\046\032\077\u{ed}\109\105\099\111\115\032\111\099\117\108\116\111\115\032\115\101\109\032\115\105\110\097\108\032\114\101\112\108\105\099\097\100\111\032\110\u{e3}\111\032\112\111\100\101\109\032\115\101\114\032\105\100\101\110\116\105\102\105\099\097\100\111\115\032\099\111\109\032\099\101\114\116\101\122\097\046'
,
"\079\114\101\032\110\097\109\101\032\102\105\108\116\101\114\058\032\067\111\097\108\044\032\073\114\111\110\044\032\071\111\108\100\044\032\068\105\097\109\111\110\100\044\032\069\109\101\114\097\108\100\044\032\082\117\098\121\046\032\072\105\100\100\101\110\032\109\105\109\105\099\115\032\119\105\116\104\111\117\116\032\097\032\114\101\112\108\105\099\097\116\101\100\032\115\105\103\110\097\108\032\099\097\110\110\111\116\032\098\101\032\105\100\101\110\116\105\102\105\101\100\032\119\105\116\104\032\099\101\114\116\097\105\110\116\121\046"
),78,27)bX(b9,'\104\105\100\101\068\101\097\100','\079\099\117\108\116\097\114\032\105\110\105\109\105\103\111\115\032\109\111\114\116\111\115','\072\105\100\101\032\100\101\097\100\032\101\110\101\109\105\101\115',40,bN)bX(
b9,'\104\105\100\101\065\116\116\097\099\104\101\100','\079\099\117\108\116\097\114\032\105\116\101\110\115\032\097\110\101\120\097\100\111\115\032\u{e0}\032\098\114\111\099\097',
'\072\105\100\101\032\105\116\101\109\115\032\097\116\116\097\099\104\101\100\032\116\111\032\100\114\105\108\108',41,bN)bL.hideDead.paint(bN.hideDead)bL.
hideAttached.paint(bN.hideAttached)bY(b9,'\116\101\120\116\083\105\122\101',
'\084\097\109\097\110\104\111\032\100\111\115\032\110\111\109\101\115\032\101\032\100\105\115\116\u{e2}\110\099\105\097\115','\078\097\109\101\032\097\110\100\032\100\105\115\116\097\110\099\101\032\116\101\120\116\032\115\105\122\101',43,8,28)bC.
label(b9,'\084\101\120\116\076\097\098\101\108',bD('\067\111\114\032\100\097\032\100\105\115\116\u{e2}\110\099\105\097\032\040\072\069\088\041','\068\105\115\116\097\110\099\101\032\099\111\108\111\114\032\040\072\069\088\041'),30
,46)if not bN.distanceColor:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then bN.distanceColor=
'\068\048\068\056\069\056'end local cp=bC.label(b9,'\084\101\120\116\066\111\120',bN.distanceColor,40,47)bT(cp.
FocusLost,function()local cq=cp.Text:gsub('\035',''):upper()if cq:match(
'\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then bN.distanceColor=cq bS()end cp.Text=bN.distanceColor end)
local cq=b5:FindFirstAncestorOfClass('\083\099\114\101\101\110\071\117\105')local cr=bU('\070\114\097\109\101',{Size=UDim2
.fromScale(1,1),BackgroundTransparency=1},cq)local cs=0 local ct,cu,cv,cw local
cx={{'\097\117\114\097','\065\116\097\113\117\101','\065\116\116\097\099\107'},{'\111\114\101\065\117\114\097','\080\105\099\097\114\101\116\097','\080\105\099\107\097\120\101'},{'\102\108\121','\086\111\097\114',
'\070\108\121'},{'\110\111\099\108\105\112','\078\111\099\108\105\112','\078\111\099\108\105\112'},{'\115\112\101\101\100','\086\101\108\111\099\105\100\097\100\101','\083\112\101\101\100'},{'\097\117\116\111\077\111\118\101',
'\065\117\116\111\032\077\111\118\101','\065\117\116\111\032\077\111\118\101'},{'\097\117\116\111\070\105\114\101','\065\117\116\111\032\070\105\114\101','\065\117\116\111\032\070\105\114\101'},{'\117\112','\083\117\098\105\114','\085\112'
},{'\100\111\119\110','\068\101\115\099\101\114','\068\111\119\110'}}local cy={}for cz,cA in ipairs(cx)do local cB=cA[1]
local cC=bU('\070\114\097\109\101',{Size=UDim2.fromOffset(66,76),Position=UDim2.new(0,12+((cz-1
)%4)*72,1,-90-math.floor((cz-1)/4)*82),BackgroundColor3=Color3.fromRGB(20,27,39)
,Visible=false},cr)bU('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,10)},cC)bU('\085\073\083\116\114\111\107\101',
{Color=Color3.fromRGB(105,165,220),Thickness=1.5,Transparency=0.2},cC)local cD,
cE=bC.checkbox(b5,bD('\065\116\097\108\104\111\032\110\097\032\116\101\108\097\058\032','\083\099\114\101\101\110\032\115\104\111\114\116\099\117\116\058\032')..bD(cA[2],cA[3]),80
+cz)bT(cD.Activated,function()cC.Visible=not cC.Visible cE(cC.Visible)if not cC.
Visible then cs=0 end end)local cF=bU('\084\101\120\116\066\117\116\116\111\110',{Text='\061',Size=UDim2.new(1,0,
0,18),BackgroundTransparency=1,TextColor3=Color3.fromRGB(150,180,210),TextSize=
14},cC)local cG=bU('\084\101\120\116\066\117\116\116\111\110',{Text='',Size=UDim2.new(1,0,1,-18),Position=
UDim2.fromOffset(0,18),BackgroundTransparency=1},cC)local cH=bU('\070\114\097\109\101',{Size=
UDim2.fromOffset(26,26),Position=UDim2.new(0.5,-13,0,2),BackgroundTransparency=1
},cG)local function cI(cJ,cK,cL,cM)bU('\070\114\097\109\101',{Size=UDim2.fromOffset(cL,2),
Position=UDim2.fromOffset(cJ,cK),Rotation=cM or 0,BorderSizePixel=0,
BackgroundColor3=Color3.fromRGB(210,235,255)},cH)end if cB=='\117\112'or cB=='\100\111\119\110'or
cB=='\102\108\121'then cI(12,5,2,90)cI(4,8,12,-40)cI(12,8,12,40)cI(7,20,12,0)if cB==
'\100\111\119\110'then cH.Rotation=180 end elseif cB=='\111\114\101\065\117\114\097'then cI(4,12,23,-45)cI(1,5,23
,15)elseif cB=='\097\117\114\097'then cI(2,12,26,-45)cI(2,12,26,45)else cI(2,12,24,0)cI(2,12
,24,90)local cJ=bU('\070\114\097\109\101',{Size=UDim2.fromOffset(18,18),Position=UDim2.
fromOffset(4,4),BackgroundTransparency=1},cH)bU('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.
new(1,0)},cJ)bU('\085\073\083\116\114\111\107\101',{Thickness=2,Color=Color3.fromRGB(210,235,255)},cJ)
end bU('\084\101\120\116\076\097\098\101\108',{Text=bD(cA[2],cA[3]),Size=UDim2.new(1,-4,0,20),Position=
UDim2.fromOffset(2,32),BackgroundTransparency=1,TextSize=10,TextColor3=Color3.
new(1,1,1),TextWrapped=true},cG)bT(cF.InputBegan,function(cJ)if cJ.UserInputType
==Enum.UserInputType.Touch or cJ.UserInputType==Enum.UserInputType.MouseButton1
then ct=cJ cu=cJ.Position cv=cC.AbsolutePosition cw=cC end end)if cB=='\117\112'or cB
=='\100\111\119\110'then bT(cG.InputBegan,function(cJ)if cJ.UserInputType==Enum.
UserInputType.Touch or cJ.UserInputType==Enum.UserInputType.MouseButton1 then cs
=cB=='\117\112'and 1 or-1 end end)bT(cG.InputEnded,function()cs=0 end)else cy[cB]=cC
bT(cG.Activated,function()bO[cB]=not bO[cB]bL[cB].paint(bO[cB])end)end end bT(bF
.InputChanged,function(cz)if not ct or not cw or not cw.Visible then return end
if cz~=ct and cz.UserInputType~=Enum.UserInputType.MouseMovement then return end
local cA=cz.Position-cu local cB=workspace.CurrentCamera local cC=cB and cB.
ViewportSize local cD,cE=cv.X+cA.X,cv.Y+cA.Y if cC then cD=math.clamp(cD,0,math.
max(0,cC.X-66))cE=math.clamp(cE,0,math.max(0,cC.Y-76))end cw.Position=UDim2.
fromOffset(cD,cE)end)bT(bF.InputEnded,function(cz)if cz==ct then ct=nil cw=nil
end cs=0 end)local function cz(cA)if cA:IsA('\066\097\115\101\080\097\114\116')then return cA end return
cA:IsA('\077\111\100\101\108')and(cA.PrimaryPart or cA:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')or cA:
FindFirstChildWhichIsA('\066\097\115\101\080\097\114\116',true))or nil end local cA=setmetatable({},{
__mode='\107'})local function cB(cC)if not(cC:IsA('\077\111\100\101\108')or cC:IsA('\066\097\115\101\080\097\114\116'))
then return nil end local cD=tostring(cC:GetAttribute('\082\101\097\108\078\097\109\101')or cC.Name)if
cC.Name=='\067\104\117\114\099\104'and cC:IsA('\077\111\100\101\108')then return'\099\104\117\114\099\104'end if cC.Parent and cC.
Parent.Name=='\078\112\099'then if cC:GetAttribute('\078\112\099\070\097\099\116\105\111\110')=='\070\114\105\101\110\100\108\121\067\111\109\112\097\110\105\111\110'or
cD:lower():find('\099\111\109\112\097\110\105\111\110',1,true)or cC:GetAttribute('\070\114\105\101\110\100\108\121')==true then
return'\099\111\109\112\097\110\105\111\110\115'end if cD:lower():find('\109\105\109\105\099',1,true)or cC:GetAttribute(
'\077\105\109\105\099\067\104\101\115\116\068\097\109\097\103\101\097\098\108\101')~=nil then return'\109\105\109\105\099\115'end return'\109\111\098\115'end if cC:
GetAttribute('\082\117\110\116\105\109\101\067\104\101\115\116\077\111\100\101\108')==true then return'\099\104\101\115\116\115'end if bH:HasTag(cC,
'\079\114\101')or type(cC:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101'))=='\115\116\114\105\110\103'then return'\111\114\101\115'end
if bH:HasTag(cC,'\068\117\110\103\101\111\110\065\114\101\110\097\068\111\111\114')then return'\097\114\101\110\097\115'end if bH:HasTag(cC,
'\068\117\110\103\101\111\110\084\114\101\097\115\117\114\101\068\111\111\114')then return'\116\114\101\097\115\117\114\101\068\111\111\114\115'end if bH:HasTag(cC,
'\068\117\110\103\101\111\110\068\111\111\114')then return'\100\111\111\114\115'end if cC.Parent and cC.Parent.Name=='\073\116\101\109\115'then
return cD:lower():find('\115\099\114\097\112',1,true)and'\115\099\114\097\112'or'\105\116\101\109\115'end end local cC=false
local function cD()if cC then return end cC=true task.spawn(function()local cE={
workspace}local cF=0 while bJ and#cE>0 do local cG=table.remove(cE)local cH=cB(
cG)if cH then cA[cG]=cH end for cI,cJ in ipairs(cG:GetChildren())do cE[#cE+1]=cJ
end cF+=1 if cF%120==0 then task.wait()end end cC=false end)end bT(workspace.
DescendantAdded,function(cE)local cF=cB(cE)if cF then cA[cE]=cF end end)local cE
={}local function cF(cG)local cH=cE[cG]if cH then for cI,cJ in pairs(cH)do if
typeof(cJ)=='\073\110\115\116\097\110\099\101'then cJ:Destroy()end end cE[cG]=nil end end local function
cG()local cH={}for cI in pairs(cE)do cH[#cH+1]=cI end for cI,cJ in ipairs(cH)do
cF(cJ)end end local cH,cI,cJ,cK,cL local cM=setmetatable({},{__mode='\107'})local
cN,cO local function cP()if cN then pcall(function()cN.Range=cO end)cN=nil end
end local function cQ()if cL then cL:Destroy()cL=nil end if cK then cK:Destroy()
cK=nil end cJ=nil end local function cR()for cS,cT in pairs(cM)do if cS.Parent
then cS.CanCollide=cT end cM[cS]=nil end end local cS={}local cT,cU,d local
function e()if cT and cT.GetAimRay==d then cT.GetAimRay=cU end cT=nil cU=nil d=
nil end local function f()for g,h in pairs(cS)do if g.Parent then g.Size=h.size
end h.box:Destroy()cS[g]=nil end end local function g(h,i)local j,k=nil,i local
l=workspace:FindFirstChild('\078\112\099')for m,n in ipairs(l and l:GetChildren()or{})do
local o=cB(n)local p=n:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local q=n:
FindFirstChild('\072\101\097\100')if(o=='\109\111\098\115'or o=='\109\105\109\105\099\115')and p and p.Health>0 and q and
q:IsA('\066\097\115\101\080\097\114\116')then local r=(q.Position-h.Position).Magnitude if r<k then k=r
j=q end end end return j,k end local function h()for i in pairs(bO)do bO[i]=
false bL[i].paint(false)end cP()cQ()cR()e()f()cs=0 if cH and cH.Parent then cH.
WalkSpeed=cI end cH=nil end bT(bG.Heartbeat,function()if not bJ then return end
local i,j,k=bB.actor()if cH and(cH~=k or not bO.speed)then if cH.Parent then cH.
WalkSpeed=cI end cH=nil end if k and bO.speed then if cH~=k then cH=k cI=k.
WalkSpeed end k.WalkSpeed=bN.speed end if not i or not bO.noclip then cR()else
for l,m in ipairs(i:GetDescendants())do if m:IsA('\066\097\115\101\080\097\114\116')then if cM[m]==nil
then cM[m]=m.CanCollide end m.CanCollide=false end end end if not j or not bO.
fly then cQ()else if cJ~=j then cQ()cJ=j cK=bU('\065\116\116\097\099\104\109\101\110\116',{},j)cL=bU(
'\076\105\110\101\097\114\086\101\108\111\099\105\116\121',{Attachment0=cK,MaxForce=1e7,RelativeTo=Enum.ActuatorRelativeTo
.World},j)end local l=k.MoveDirection local m=workspace.CurrentCamera if l.
Magnitude>0.1 and m then l=Vector3.new(l.X,m.CFrame.LookVector.Y*l.Magnitude,l.Z
)end local n=cs if not bF:GetFocusedTextBox()then if bF:IsKeyDown(Enum.KeyCode.
Space)then n+=1 end if bF:IsKeyDown(Enum.KeyCode.LeftControl)then n-=1 end end
cL.VectorVelocity=(l+Vector3.new(0,n,0))*bN.flySpeed end end)local i,j,k=0,0,0
task.spawn(function()while bJ do local l,m=pcall(function()local l,m,n=bB.actor(
)if not m then cP()e()f()cG()return end for o,p in pairs(cy)do p.
BackgroundColor3=bO[o]and Color3.fromRGB(30,85,100)or Color3.fromRGB(20,27,39)
end if not bO.hitbox then f()else local o={}local p=g(m,bN.gunRange)if p then o[
p]=true local q=cS[p]if not q then q={size=p.Size,box=bU('\066\111\120\072\097\110\100\108\101\065\100\111\114\110\109\101\110\116',{
Adornee=p,AlwaysOnTop=true,ZIndex=1,Transparency=0.93,Color3=Color3.fromRGB(110,
190,255)},cq)}cS[p]=q end p.Size=Vector3.new(bN.hitboxSize,bN.hitboxSize,bN.
hitboxSize)q.box.Size=p.Size end for q,r in pairs(cS)do if not o[q]then if q.
Parent then q.Size=r.size end r.box:Destroy()cS[q]=nil end end end local o=false
for p,q in pairs(bQ)do if q.enabled then o=true end end if o and os.clock()-i>30
then i=os.clock()cD()end if o and os.clock()-j>0.3 then j=os.clock()local p={}
for q,r in ipairs(game:GetService('\080\108\097\121\101\114\115'):GetPlayers())do if r~=bE and r.
Character then cA[r.Character]='\112\108\097\121\101\114\115'end end for q,r in pairs(cA)do if not q.
Parent or not q:IsDescendantOf(workspace)then cA[q]=nil else r=cB(q)or r cA[q]=r
if bQ[r].enabled then local s=cz(q)local t=true local u=q:FindFirstChildOfClass(
'\072\117\109\097\110\111\105\100')local v=u and u.Health or q:GetAttribute('\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')if bN.
hideDead and by(r,v,q:GetAttribute('\067\097\116\101\103\111\114\121'),q:GetAttribute('\067\111\114\112\115\101\077\097\120\072\101\097\108\116\104')
,q:GetAttribute('\067\111\114\112\115\101\080\108\097\121\101\114\085\115\101\114\073\100'))then t=false end if bN.hideAttached and(r
=='\105\116\101\109\115'or r=='\115\099\114\097\112')and(q:GetAttribute('\087\101\108\100\101\100')==true or q:GetAttribute(
'\068\114\105\108\108\087\101\108\100\067\111\108\108\105\115\105\111\110\083\117\112\112\114\101\115\115\101\100')==true)then t=false end if r=='\111\114\101\115'then local w=
tostring(q:GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101')or q.Name):lower()t=false for x in bN.
oreFilter:gmatch('\091\094\044\093\043')do if w:find(x:match('\094\037\115\042\040\046\045\041\037\115\042\036'):lower(),1,true)
then t=true end end end if s and t then local w=(s.Position-m.Position).
Magnitude if w<=bN.maxDistance then p[#p+1]={o=q,kind=r,anchor=s,distance=w}end
end end end end table.sort(p,function(q,r)local s,t=cd(q.kind),cd(r.kind)if s~=t
then return s<t end return q.distance<r.distance end)local q={}for r=1,math.min(
#p,bN.maxESP)do local s=p[r]local t=s.o q[t]=true if cE[t]and cE[t].style~=bN.
style then cF(t)end local u=cE[t]if not u then u={style=bN.style}cE[t]=u u.
billboard=bU('\066\105\108\108\098\111\097\114\100\071\117\105',{Adornee=s.anchor,AlwaysOnTop=true,Size=UDim2.
fromOffset(220,48),StudsOffset=Vector3.new(0,3,0)},cq)u.text=bU('\084\101\120\116\076\097\098\101\108',{
Size=UDim2.fromScale(1,1),BackgroundTransparency=1,TextSize=12,RichText=true,
TextStrokeTransparency=0.3,Font=Enum.Font.GothamBold,TextWrapped=true},u.
billboard)if bN.style=='\066\111\120'then u.visual=bU('\066\111\120\072\097\110\100\108\101\065\100\111\114\110\109\101\110\116',{Adornee=s.
anchor,AlwaysOnTop=true,ZIndex=5,Transparency=0.65},cq)else u.visual=bU(
'\072\105\103\104\108\105\103\104\116',{Adornee=t,DepthMode=Enum.HighlightDepthMode.AlwaysOnTop,
FillTransparency=0.85},cq)end end local v=bW(bQ[s.kind].color)local w=t:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local x=w and w.Health or t:GetAttribute(
'\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')local y=false local z=tostring(t:GetAttribute('\082\101\097\108\078\097\109\101')or t.
Name)u.billboard.Adornee=s.anchor if s.kind=='\111\114\101\115'then local A=tostring(t:
GetAttribute('\083\101\115\115\105\111\110\079\114\101\084\121\112\101')or t:GetAttribute('\082\101\097\108\078\097\109\101')or t.Name)local B={
Coal='\067\097\114\118\u{e3}\111',Iron='\070\101\114\114\111',Gold='\079\117\114\111',Diamond='\068\105\097\109\097\110\116\101',Emerald=
'\069\115\109\101\114\097\108\100\097',Ruby='\082\117\098\105'}for C,D in pairs(B)do if A:lower():find(C:lower(),1,true
)then z=bD(D,C)break end end y=bH:HasTag(t,'\087\111\114\109')or t:FindFirstChild('\087\111\114\109',
true)~=nil if y then z=z..bD('\032\105\110\102\101\115\116\097\100\111','\032\105\110\102\101\115\116\101\100')end elseif s.kind==
'\099\104\117\114\099\104'then z=bD('\073\103\114\101\106\097','\067\104\117\114\099\104')elseif s.kind=='\109\105\109\105\099\115'then z=bD(
'\091\033\093\032\077\u{ed}\109\105\099\111','\091\033\093\032\077\105\109\105\099')end z=z:gsub('\038','\038\097\109\112\059'):gsub('\060','\038\108\116\059'):gsub(
'\062','\038\103\116\059')u.billboard.Size=UDim2.fromOffset(260,bN.textSize*4)if not u.worm
then u.worm=bU('\070\114\097\109\101',{Size=UDim2.fromOffset(22,22),Position=UDim2.fromOffset(-
22,0),BackgroundTransparency=1,Visible=false},u.billboard)for A=0,4 do local B=
bU('\070\114\097\109\101',{Size=UDim2.fromOffset(7,7),Position=UDim2.fromOffset(A*4,8+math.sin(
A)*4),BackgroundColor3=Color3.fromRGB(225,145,190),BorderSizePixel=0},u.worm)bU(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},B)end u.mimic=bU('\070\114\097\109\101',{Size=UDim2.
fromOffset(22,18),Position=UDim2.fromOffset(-24,0),BackgroundColor3=Color3.
fromRGB(125,65,45),Visible=false},u.billboard)bU('\085\073\083\116\114\111\107\101',{Color=Color3.
fromRGB(255,185,75),Thickness=1.5},u.mimic)bU('\070\114\097\109\101',{Size=UDim2.fromOffset(20,
7),Position=UDim2.fromOffset(1,6),BackgroundColor3=Color3.fromRGB(30,15,20),
BorderSizePixel=0},u.mimic)for A=0,3 do bU('\070\114\097\109\101',{Size=UDim2.fromOffset(3,4),
Position=UDim2.fromOffset(2+A*5,6),BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0},u.mimic)end end u.worm.Visible=y u.mimic.Visible=s.kind==
'\109\105\109\105\099\115'u.text.TextSize=bN.textSize u.text.Text=string.format(
'\037\115\032\u{b7}\032\060\102\111\110\116\032\099\111\108\111\114\061\034\035\037\115\034\062\037\100\032\115\116\117\100\115\060\047\102\111\110\116\062\037\115',z,bN.distanceColor,s.distance,x
and string.format('\n\072\080\032\037\046\048\102',x)or'')u.text.TextColor3=v if bN.style=='\066\111\120'then
u.visual.Color3=v u.visual.Adornee=s.anchor if t:IsA('\077\111\100\101\108')then local A,B=t:
GetBoundingBox()u.visual.Size=B u.visual.CFrame=s.anchor.CFrame:ToObjectSpace(A)
else u.visual.Size=t.Size end else u.visual.FillColor=v u.visual.OutlineColor=v
end end local r={}for s in pairs(cE)do if not q[s]then r[#r+1]=s end end for s,t
in ipairs(r)do cF(t)end elseif not o then cG()end local p=bB.ctrl(
'\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local q=p and p.ActiveTool local r=q and type(q.Shoot)==
'\102\117\110\099\116\105\111\110'and q.Tool and(q.Tool.Name:find('\082\105\102\108\101',1,true)or q.Tool.Name:find(
'\082\101\118\111\108\118\101\114',1,true)or q.Tool.Name:find('\083\104\111\116\103\117\110',1,true))if bO.silentAim and r
then local s=bB.ctrl('\067\097\109\101\114\097\067\111\110\116\114\111\108\108\101\114')if s and type(s.GetAimRay)=='\102\117\110\099\116\105\111\110'
and cT~=s then e()cT=s cU=s.GetAimRay local t=cU d=function(u,...)local v=t(u,
...)local w,x=bB.actor()local y=bB.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local z=y and y.
ActiveTool if not bJ or not bO.silentAim or not x or not z or type(z.Shoot)~=
'\102\117\110\099\116\105\111\110'or not v then return v end local A=g(x,bN.gunRange)if A and(A.Position
-v.Origin).Magnitude>0.01 then return Ray.new(v.Origin,(A.Position-v.Origin).
Unit)end return v end s.GetAimRay=d end else e()end local s=bB.ctrl(
'\085\073\067\111\110\116\114\111\108\108\101\114')local t=not workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')and not bF:
GetFocusedTextBox()and not(s and s.ActiveFrame and s.ActiveFrame.Visible)if bO.
autoMove and t and not n.SeatPart and not bO.fly then local u=g(m,150)if u then
local v=Vector3.new(m.Position.X-u.Position.X,0,m.Position.Z-u.Position.Z)if v.
Magnitude<0.01 then v=Vector3.new(0,0,1)end local w=u.Position+v.Unit*bN.
combatDistance if math.abs((m.Position-u.Position).Magnitude-bN.combatDistance)>
1.5 then n:MoveTo(Vector3.new(w.X,m.Position.Y,w.Z))end end end if bO.autoFire
and r and t and g(m,bN.gunRange)then q:Shoot()end local u=bO.aura or bO.oreAura
or bO.autoMove if cN and(cN~=q or not u)then cP()end local v=bB.ctrl(
'\085\073\067\111\110\116\114\111\108\108\101\114')if u and q and q.Tool and type(q.Swing)=='\102\117\110\099\116\105\111\110'and not
workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')and not bF:GetFocusedTextBox()and not(v and
v.ActiveFrame and v.ActiveFrame.Visible)then local w=q.Tool.Name:find('\080\105\099\107\097\120\101',
1,true)~=nil if bO.aura or bO.autoMove or bO.oreAura and w then if type(q.Range)
=='\110\117\109\098\101\114'then if cN~=q then cN=q cO=q.Range end q.Range=bO.autoMove and math.
max(bN.reach,bN.combatDistance+2)or bN.reach end local x,y=nil,bO.autoMove and
math.max(bN.reach,bN.combatDistance+2)or bN.reach local z=workspace:
FindFirstChild('\078\112\099')if bO.aura or bO.autoMove then for A,B in ipairs(z and z:
GetChildren()or{})do local C=cB(B)local D=cz(B)local E=B:FindFirstChildOfClass(
'\072\117\109\097\110\111\105\100')local F=E and E.Health or B:GetAttribute('\070\117\101\108\076\101\101\099\104\072\101\097\108\116\104')or 0 local
G=B:GetAttribute('\083\101\115\115\105\111\110\070\117\101\108\076\101\101\099\104\073\100')~=nil local H=not G or(bE:GetAttribute(
'\073\110\068\117\110\103\101\111\110')~=true and B:GetAttribute('\070\117\101\108\076\101\101\099\104\086\117\108\110\101\114\097\098\108\101')==true)if H and(C==
'\109\111\098\115'or C=='\109\105\109\105\099\115')and D and F>0 then local I=(m.Position-D.Position).
Magnitude if I<y then x=D y=I end end end end if x and bN.position~='\079\102\102'and not
bO.fly and not bO.autoMove and not n.SeatPart and os.clock()-k>0.4 then k=os.
clock()local A=bN.position=='\065\098\111\118\101'and Vector3.new(0,bN.offset,0)or-x.CFrame.
LookVector*bN.offset l:PivotTo(CFrame.lookAt(x.Position+A,x.Position,bN.position
=='\065\098\111\118\101'and x.CFrame.RightVector or Vector3.yAxis))end if x or bO.oreAura and w
then q:Swing()end end end end)if not l then bB.say(bD(
'\067\111\110\116\114\111\108\101\115\032\097\118\097\110\u{e7}\097\100\111\115\058\032','\065\100\118\097\110\099\101\100\032\099\111\110\116\114\111\108\115\058\032')..tostring(m))end task.wait(
0.15)end end)return{stop=h,cleanup=function()bJ=false h()for l,m in ipairs(bK)do
m:Disconnect()end cG()cr:Destroy()end}end local function bA(bB,bC,bD,bE,bF,bG)if
type(bB)=='\115\116\114\105\110\103'and bB~=''then return bB==bC or bB==bD end if bE then return
true end return bF~=nil and bG~=nil and math.abs(bF.X)<=bG.X and math.abs(bF.Y)
<=bG.Y and math.abs(bF.Z)<=bG.Z end local function bB(bC,bD)local bE,bF=bC.ui,bC
.T local bG=game:GetService('\080\108\097\121\101\114\115').LocalPlayer local bH=game:GetService(
'\067\111\108\108\101\099\116\105\111\110\083\101\114\118\105\099\101')local bI=game:GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local bJ=true
local bK=0 local bL={}local bM=false local bN=false local bO=400 local bP=250
local bQ=setmetatable({},{__mode='\107'})local bR=bC.section('\070\097\114\109')local bS=bE.
label(bR,'\084\101\120\116\076\097\098\101\108',bF(
'\076\111\103\u{ed}\115\116\105\099\097\058\032\112\097\114\097\100\097\046\032\085\115\097\032\105\116\101\110\115\032\115\111\108\116\111\115\032\105\100\101\110\116\105\102\105\099\097\100\111\115\059\032\112\111\114\116\097\105\115\032\098\108\111\113\117\101\097\100\111\115\032\105\110\116\101\114\114\111\109\112\101\109\032\097\032\099\111\108\101\116\097\046'
,
"\076\111\103\105\115\116\105\099\115\058\032\115\116\111\112\112\101\100\046\032\085\115\101\115\032\105\100\101\110\116\105\102\105\101\100\032\108\111\111\115\101\032\105\116\101\109\115\059\032\108\111\099\107\101\100\032\112\111\114\116\097\108\115\032\115\116\111\112\032\099\111\108\108\101\099\116\105\111\110\046"
),65,40)local function bT(bU,bW)if bJ then bS.Text=bF(bU,bW)end end local
function bU(bW,bX)bL[#bL+1]=bW:Connect(bX)end bE.label(bR,'\084\101\120\116\076\097\098\101\108',bF(
'\086\101\110\100\101\032\112\101\108\111\032\118\097\108\111\114\032\101\120\105\098\105\100\111\032\100\111\032\105\116\101\109\032\u{2265}\032\108\105\109\105\116\101\046\032\065\098\097\105\120\111\044\032\101\110\118\105\097\032\097\112\101\110\097\115\032\105\116\101\110\115\032\100\097\032\099\097\116\101\103\111\114\105\097\032\083\099\114\097\112\032\112\097\114\097\032\114\101\099\105\099\108\097\103\101\109\046\032\070\105\113\117\101\032\115\111\098\114\101\032\097\032\098\114\111\099\097\032\112\101\114\116\111\032\100\101\032\117\109\097\032\101\115\116\097\u{e7}\u{e3}\111\046'
,
'\083\101\108\108\115\032\119\104\101\110\032\100\105\115\112\108\097\121\101\100\032\105\116\101\109\032\118\097\108\117\101\032\u{2265}\032\116\104\114\101\115\104\111\108\100\046\032\066\101\108\111\119\032\105\116\044\032\115\101\110\100\115\032\111\110\108\121\032\083\099\114\097\112\045\099\097\116\101\103\111\114\121\032\105\116\101\109\115\032\102\111\114\032\114\101\099\121\099\108\105\110\103\046\032\083\116\097\121\032\111\110\032\116\104\101\032\100\114\105\108\108\032\110\101\097\114\032\097\032\115\116\097\116\105\111\110\046'
),85,41)local bW=bE.label(bR,'\084\101\120\116\066\111\120','\052\048\048',40,42)bU(bW.FocusLost,function()
local bX=tonumber(bW.Text)if bX and bX==bX and bX<math.huge then bO=math.clamp(
math.floor(bX),0,1000000)end bW.Text=tostring(bO)end)local bX,bY=bE.checkbox(bR,
bF('\065\117\116\111\032\118\101\110\100\097\032\047\032\115\117\099\097\116\097\032\110\097\032\098\114\111\099\097','\065\117\116\111\032\115\101\108\108\032\047\032\115\099\114\097\112\032\111\110\032\100\114\105\108\108'),43)local bZ=bE.
button(bR,bF('\067\111\108\101\116\097\114\032\108\111\111\116\032\115\111\108\116\111\032\100\101\115\116\097\032\068\117\110\103\101\111\110\032\101\032\112\097\114\097\114',
"\067\111\108\108\101\099\116\032\116\104\105\115\032\068\117\110\103\101\111\110\039\115\032\108\111\111\115\101\032\108\111\111\116\032\097\110\100\032\115\116\111\112"),45)local b_=bE.button(bR,bF(
'\080\097\114\097\114\032\108\111\103\u{ed}\115\116\105\099\097','\083\116\111\112\032\108\111\103\105\115\116\105\099\115'),46)local function b0()bK+=1 bM=false bN
=false bY(false)end bU(b_.Activated,b0)bU(bX.Activated,function()bM=not bM bY(bM
)bT(bM and
'\065\117\116\111\032\118\101\110\100\097\032\097\116\105\118\097\058\032\097\103\117\097\114\100\097\110\100\111\032\105\116\101\110\115\032\110\097\032\098\114\111\099\097\032\101\032\101\115\116\097\u{e7}\u{e3}\111\032\112\114\u{f3}\120\105\109\097\046'
or'\065\117\116\111\032\118\101\110\100\097\032\112\097\114\097\100\097\046',bM and
"\065\117\116\111\032\115\101\108\108\032\097\099\116\105\118\101\058\032\119\097\105\116\105\110\103\032\102\111\114\032\100\114\105\108\108\032\105\116\101\109\115\032\097\110\100\032\097\032\110\101\097\114\098\121\032\115\116\097\116\105\111\110\046"or
'\065\117\116\111\032\115\101\108\108\032\115\116\111\112\112\101\100\046')end)local function b1(b2)return b2 and(b2:IsA('\066\097\115\101\080\097\114\116')
and b2 or b2:IsA('\077\111\100\101\108')and(b2.PrimaryPart or b2:FindFirstChildWhichIsA(
'\066\097\115\101\080\097\114\116',true)))or nil end local function b2(b3)local b4=bI:FindFirstChild(
'\083\104\097\114\101\100')local b5=b4 and b4:FindFirstChild(b3)return b5 and require(b5)end local
function b3(b4)return bJ and bK==b4 and bD.actor()~=nil end local function b4(b5
,b6,b7)local b8=os.clock()+b7 repeat if not b3(b5)then return false end if b6()
then return true end task.wait(0.1)until os.clock()>=b8 return false end local
function b5(b6,b7)local b8=workspace:FindFirstChild('\068\114\105\108\108')if not b8 or not b6
then return false end local b9=RaycastParams.new()b9.FilterType=Enum.
RaycastFilterType.Exclude b9.FilterDescendantsInstances={b7}local c=workspace:
Raycast(b6.Position,Vector3.new(0,-15,0),b9)return c and c.Instance:
IsDescendantOf(b8)or false end local function b6(b7,b8)local b9,c=nil,bP for ca,
cb in ipairs(bH:GetTagged(b7))do if cb:IsA('\066\097\115\101\080\097\114\116')and cb:IsDescendantOf(
workspace)and not cb:GetFullName():find('\067\117\116\083\099\101\110\101',1,true)then local cc=(cb.
Position-b8.Position).Magnitude if cc<c then b9=cb c=cc end end end return b9
end local function b7(b8)local b9,c,ca=bD.actor()if not c or bG:GetAttribute(
'\073\110\068\117\110\103\101\111\110')==true or workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101')then return end local
cb=workspace:FindFirstChild('\068\114\105\108\108')if not cb or not(b5(c,b9)or ca.SeatPart and
ca.SeatPart:IsDescendantOf(cb))then return end local cc=workspace:
FindFirstChild('\073\116\101\109\115')local cd=b2('\073\116\101\109\068\097\116\097\098\097\115\101')local ce=b2('\083\101\108\108\086\097\108\117\101')if not
cc or not cd or not ce then return end for cf,cg in ipairs(cc:GetChildren())do
local ch=b1(cg)if ch and not bQ[cg]and(b5(ch,cg)or cg:GetAttribute(
'\068\114\105\108\108\087\101\108\100\067\111\108\108\105\115\105\111\110\083\117\112\112\114\101\115\115\101\100')==true)and not bH:HasTag(cg,'\083\104\111\112\073\116\101\109')and not cg
:GetAttribute('\065\100\118\101\110\116\117\114\101\081\117\101\115\116\080\114\111\116\101\099\116\101\100')and not cg:GetAttribute('\068\101\097\116\104\067\104\101\115\116')and
not cg:GetAttribute('\067\114\097\102\116\101\100\080\108\097\099\101\097\098\108\101')then local ci=cg:GetAttribute('\086\097\108\117\101')if
type(ci)=='\110\117\109\098\101\114'then ci=math.round(ce.ScaleByCharges(ci,cg:GetAttribute(
'\070\114\111\109\084\111\111\108\095\073\116\101\109\067\104\097\114\103\101\115')or cd.GetAttribute(cg,'\073\116\101\109\067\104\097\114\103\101\115'),cg:GetAttribute(
'\070\114\111\109\084\111\111\108\095\077\097\120\073\116\101\109\067\104\097\114\103\101\115')or cd.GetAttribute(cg,'\077\097\120\073\116\101\109\067\104\097\114\103\101\115')))local cj=ci>=
bO and'\083\101\108\108\080\097\114\116'or cd.GetAttribute(cg,'\067\097\116\101\103\111\114\121')=='\083\099\114\097\112'and'\083\099\114\097\112\067\111\108\108\101\099\116\111\114'or
nil local ck=cj and b6(cj,c)if ck then bQ[cg]=true if cg:GetAttribute('\087\101\108\100\101\100')
==true then local cl=bD.await(bD.service('\068\114\097\103\083\101\114\118\105\099\101'):Weld(cg))if cl~=
'\100\101\116\097\099\104\101\100'or not b3(b8)or not bM then return end end local cl=bD.await(bD.
service('\068\114\097\103\083\101\114\118\105\099\101'):Request(cg))if not b3(b8)or not bM then if cl then pcall(
function()bD.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)end return end if cl==true
and cg.Parent and ck.Parent then cg:PivotTo(ck.CFrame*CFrame.new(0,ck.Size.Y*0.5
+1,0))task.wait()pcall(function()bD.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)
local cm=b4(b8,function()return not cg:IsDescendantOf(workspace)end,3)bT(cm and
'\073\116\101\109\032\112\114\111\099\101\115\115\097\100\111\032\112\101\108\097\032\101\115\116\097\u{e7}\u{e3}\111\046'or
'\069\115\116\097\u{e7}\u{e3}\111\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\111\032\112\114\111\099\101\115\115\097\109\101\110\116\111\059\032\105\116\101\109\032\110\u{e3}\111\032\115\101\114\u{e1}\032\114\101\112\101\116\105\100\111\032\110\101\115\116\097\032\115\101\115\115\u{e3}\111\046'
,cm and'\073\116\101\109\032\112\114\111\099\101\115\115\101\100\032\098\121\032\115\116\097\116\105\111\110\046'or
"\083\116\097\116\105\111\110\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\112\114\111\099\101\115\115\105\110\103\059\032\105\116\101\109\032\119\105\108\108\032\110\111\116\032\098\101\032\114\101\116\114\105\101\100\032\116\104\105\115\032\115\101\115\115\105\111\110\046")
end return end end end end end local function b8(b9)local c=b9.Parent if c and c
:IsA('\065\116\116\097\099\104\109\101\110\116')then return c.WorldCFrame end local ca=b1(c)return ca and ca.
CFrame end local function b9(c,ca,cb)assert(ca and ca.Parent and ca.Enabled and
type(fireproximityprompt)=='\102\117\110\099\116\105\111\110',bF('\080\111\114\116\097\108\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\047\098\108\111\113\117\101\097\100\111\046',
'\080\111\114\116\097\108\032\117\110\097\118\097\105\108\097\098\108\101\047\108\111\099\107\101\100\046'))local cc=bD.actor()local cd=b8(ca)assert(cc and cd
,'\080\111\114\116\097\108\032\112\111\115\105\116\105\111\110\032\117\110\097\118\097\105\108\097\098\108\101')cc:PivotTo(cd*CFrame.new(0,2,3))task.wait(0.4)
assert(b3(c),'\083\116\111\112\112\101\100')fireproximityprompt(ca)assert(b4(c,function()return(bG:
GetAttribute('\073\110\068\117\110\103\101\111\110')==true)==cb end,8),bF(
'\079\032\106\111\103\111\032\110\u{e3}\111\032\099\111\110\102\105\114\109\111\117\032\097\032\112\097\115\115\097\103\101\109\032\112\101\108\111\032\112\111\114\116\097\108\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\099\111\110\102\105\114\109\032\112\111\114\116\097\108\032\116\114\097\110\115\105\116\105\111\110\046'))end bU(bZ.Activated,function()if
bN then return end bK+=1 local c=bK bN=true bM=false bY(false)bD.pauseCombat()
task.spawn(function()local ca,cb=pcall(function()assert(bG:GetAttribute(
'\073\110\068\117\110\103\101\111\110')==true,bF('\069\110\116\114\101\032\112\114\105\109\101\105\114\111\032\110\097\032\068\117\110\103\101\111\110\046','\069\110\116\101\114\032\116\104\101\032\068\117\110\103\101\111\110\032\102\105\114\115\116\046'))
local ca=bD.ctrl('\068\117\110\103\101\111\110\085\073\067\111\110\116\114\111\108\108\101\114')local cb=ca and ca._BoundDungeon local cc
=assert(b2('\068\117\110\103\101\111\110\068\111\111\114\083\116\097\116\101'))local cd,ce cb=cb and(cc.GetRoot(cb)or cb)if not(
cb and cb.Parent)then local cf=bG:GetAttribute(
'\065\099\116\105\118\101\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')for cg,ch in ipairs(bH:GetTagged(
'\068\117\110\103\101\111\110\068\111\111\114'))do local ci=cc.GetRoot(ch)if ci and cf and(ci:GetAttribute(
'\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')==cf or ci:GetAttribute('\083\101\115\115\105\111\110\068\117\110\103\101\111\110\073\100')==cf)
then cb=ci break end end end assert(cb and cb.Parent,bF(
'\068\117\110\103\101\111\110\032\110\u{e3}\111\032\105\100\101\110\116\105\102\105\099\097\100\097\046\032\069\110\116\114\101\032\112\101\108\111\032\112\111\114\116\097\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046',
'\068\117\110\103\101\111\110\032\110\111\116\032\105\100\101\110\116\105\102\105\101\100\046\032\069\110\116\101\114\032\116\104\114\111\117\103\104\032\105\116\115\032\112\111\114\116\097\108\032\097\110\100\032\114\101\116\114\121\046'))for cf,cg in
ipairs(bH:GetTagged('\068\117\110\103\101\111\110\068\111\111\114'))do if cc.GetRoot(cg)==cb then cd=cg:
FindFirstChild('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116',true)ce=cg:FindFirstChild('\068\117\110\103\101\111\110\069\120\105\116\080\114\111\109\112\116',
true)if cd and ce then break end end end local cf=bD.ctrl('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local
cg=cf and cf.ActiveTool if not(cg and cg.IsSack)then local ch=bG:FindFirstChild(
'\066\097\099\107\112\097\099\107')local ci,cj,ck=bD.actor()for cl,cm in ipairs(ch and ch:GetChildren()
or{})do if cm:IsA('\084\111\111\108')and(cm.Name=='\083\097\099\107'or cm:GetAttribute('\073\116\101\109\068\097\116\097\098\097\115\101\073\100')
=='\083\097\099\107')then ck:EquipTool(cm)break end end b4(c,function()cg=cf and cf.
ActiveTool return cg and cg.IsSack end,4)end assert(cg and cg.IsSack and type(cg
.CanStoreTarget)=='\102\117\110\099\116\105\111\110',bF('\069\113\117\105\112\101\032\111\032\115\097\099\111\032\112\097\114\097\032\099\111\108\101\116\097\114\046',
'\069\113\117\105\112\032\116\104\101\032\115\097\099\107\032\116\111\032\099\111\108\108\101\099\116\046'))local ch=assert(b2('\083\097\099\107\067\111\110\102\105\103'))local cj=bG:
GetAttribute('\065\099\116\105\118\101\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')or cb:GetAttribute(
'\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')local ck=cb:GetAttribute('\083\101\115\115\105\111\110\068\117\110\103\101\111\110\073\100')local
cl,cm if cb:IsA('\077\111\100\101\108')then cl,cm=cb:GetBoundingBox()end local function cn(co)
local cp=co:GetAttribute('\068\117\110\103\101\111\110\076\111\111\116\072\105\103\104\108\105\103\104\116\082\111\111\116\073\100')or co:GetAttribute(
'\083\101\115\115\105\111\110\068\117\110\103\101\111\110\073\100')local cq=b1(co)local cr=cq and cl and cl:PointToObjectSpace(
cq.Position)local cs=cm and cm*0.5+Vector3.new(4,4,4)return bA(cp,cj,ck,co:
IsDescendantOf(cb),cr,cs)end local co={}local cp={}local cq=0 local cr=0 local
cs=nil local function ct()assert(cd and ce and ce.Parent and ce.Enabled,bF(
'\083\097\099\111\032\112\114\101\115\101\114\118\097\100\111\058\032\108\105\098\101\114\101\032\097\032\115\097\u{ed}\100\097\032\100\097\032\068\117\110\103\101\111\110\032\112\097\114\097\032\116\114\097\110\115\112\111\114\116\097\114\032\u{e0}\032\098\114\111\099\097\046'
,"\083\097\099\107\032\112\114\101\115\101\114\118\101\100\058\032\117\110\108\111\099\107\032\116\104\101\032\068\117\110\103\101\111\110\032\101\120\105\116\032\116\111\032\116\114\097\110\115\112\111\114\116\032\116\111\032\116\104\101\032\100\114\105\108\108\046"))b9(c,ce
,false)local cu=workspace:FindFirstChild('\068\114\105\108\108')local cv=cu and(cu:
FindFirstChild('\066\111\100\121')or cu.PrimaryPart)assert(cv and cv:IsA('\066\097\115\101\080\097\114\116'),
'\068\114\105\108\108\032\110\111\116\032\108\111\097\100\101\100')local cw=bD.actor()cw:PivotTo(cv.CFrame*CFrame.new(0,cv.Size.
Y*0.5+4,0))task.wait(0.5)assert(b3(c)and cf.ActiveTool==cg,
'\083\097\099\107\032\099\104\097\110\103\101\100\032\047\032\115\116\111\112\112\101\100')cg.Execute:Fire({'\068\114\111\112\065\108\108'})assert(b4(c,function()
return(cg.Size or 0)==0 end,5),'\068\101\112\111\115\105\116\032\110\111\116\032\099\111\110\102\105\114\109\101\100')b9(c,cd,true)end while
b3(c)do if(cg.Size or 0)>=ch.Capacity then ct()end assert(cf.ActiveTool==cg and
cb.Parent,'\083\097\099\107\032\099\104\097\110\103\101\100\032\047\032\100\117\110\103\101\111\110\032\117\110\108\111\097\100\101\100')local cu=workspace:FindFirstChild(
'\073\116\101\109\115')local cv for cw,cx in ipairs(cu and cu:GetChildren()or{})do if not co[cx
]and cn(cx)and cg:CanStoreTarget(cx)and b1(cx)then cv=cx break end end if not cv
then local cw for cx,cy in ipairs(cb:GetDescendants())do if cy:IsA(
'\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and cy.Enabled and not cp[cy]and cy:GetFullName():find(
'\067\104\101\115\116\078\111\100\101',1,true)then cw=cy break end end if not cw then cs=cs or os.clock()if
os.clock()-cs>=3 then break end task.wait(0.4)continue end cs=nil cp[cw]=true
local cx=b8(cw)assert(cx and type(fireproximityprompt)=='\102\117\110\099\116\105\111\110',
'\067\104\101\115\116\032\112\114\111\109\112\116\032\117\110\097\118\097\105\108\097\098\108\101')local cy=bD.actor()cy:PivotTo(cx*CFrame.new(0,3,3))
task.wait(0.3)assert(b3(c),'\083\116\111\112\112\101\100')fireproximityprompt(cw)b4(c,function()
return not cw.Parent or not cw.Enabled end,3)task.wait(0.5)continue end cs=nil
co[cv]=true local cw=bD.actor()cw:PivotTo(b1(cv).CFrame*CFrame.new(0,3,3))task.
wait(0.3)assert(b3(c)and cf.ActiveTool==cg,'\083\116\111\112\112\101\100')local cx=cg.Size or 0 cg.
Execute:Fire({'\080\105\099\107\117\112',cv})local cy=b4(c,function()return(cg.Size or 0)>cx end,3
)if cy then cq+=1 else cr+=1 bT(
'\073\116\101\109\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\100\111\059\032\115\101\103\117\105\110\100\111\032\112\097\114\097\032\111\115\032\100\101\109\097\105\115\032\105\116\101\110\115\032\101\108\101\103\u{ed}\118\101\105\115\046',
'\073\116\101\109\032\110\111\116\032\099\111\110\102\105\114\109\101\100\059\032\099\111\110\116\105\110\117\105\110\103\032\116\111\032\111\116\104\101\114\032\101\108\105\103\105\098\108\101\032\105\116\101\109\115\046')end if(cg.Size or 0)>=
ch.Capacity then ct()end end assert(b3(c),'\083\116\111\112\112\101\100')if(cg.Size or 0)>0 then ct()
end bT('\083\101\109\032\109\097\105\115\032\108\111\111\116\032\101\108\101\103\u{ed}\118\101\108\032\099\097\114\114\101\103\097\100\111\046\032\067\111\108\101\116\097\100\111\115\058\032'..cq..
'\059\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\100\111\115\058\032'..cr..
'\046\032\065\115\115\117\109\097\032\111\032\099\111\110\116\114\111\108\101\059\032\114\101\097\116\105\118\101\032\097\112\u{f3}\115\032\111\032\099\104\101\102\101\046',
'\078\111\032\109\111\114\101\032\101\108\105\103\105\098\108\101\032\108\111\097\100\101\100\032\108\111\111\116\046\032\067\111\108\108\101\099\116\101\100\058\032'..cq..'\059\032\117\110\099\111\110\102\105\114\109\101\100\058\032'..cr..
'\046\032\084\097\107\101\032\099\111\110\116\114\111\108\059\032\114\101\115\116\097\114\116\032\097\102\116\101\114\032\116\104\101\032\098\111\115\115\046')end)if bJ and bK==c then bN=false if
not ca then bT('\076\111\103\u{ed}\115\116\105\099\097\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(cb),
'\076\111\103\105\115\116\105\099\115\032\115\116\111\112\112\101\100\058\032'..tostring(cb))end end end)end)local c=5000 local ca=100 bE
.label(bR,'\084\101\120\116\076\097\098\101\108',bF(
'\082\111\116\097\032\100\101\032\098\097\u{fa}\115\058\032\118\105\115\105\116\097\032\098\097\u{fa}\115\032\101\032\088\032\099\097\114\114\101\103\097\100\111\115\032\102\111\114\097\032\100\097\115\032\068\117\110\103\101\111\110\115\046\032\085\115\097\032\111\115\032\112\114\111\109\112\116\115\032\100\111\032\106\111\103\111\044\032\097\116\u{e9}\032\111\032\108\105\109\105\116\101\032\100\101\032\100\105\115\116\u{e2}\110\099\105\097\044\032\101\032\118\111\108\116\097\032\u{e0}\032\098\114\111\099\097\046\032\078\u{e3}\111\032\103\097\114\097\110\116\101\032\067\111\114\101\115\032\112\111\114\032\098\097\u{fa}\046'
,
"\067\104\101\115\116\032\114\111\117\116\101\058\032\118\105\115\105\116\115\032\108\111\097\100\101\100\032\099\104\101\115\116\115\032\097\110\100\032\088\032\115\112\111\116\115\032\111\117\116\115\105\100\101\032\068\117\110\103\101\111\110\115\046\032\085\115\101\115\032\103\097\109\101\032\112\114\111\109\112\116\115\032\119\105\116\104\105\110\032\116\104\101\032\100\105\115\116\097\110\099\101\032\108\105\109\105\116\044\032\116\104\101\110\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\100\114\105\108\108\046\032\067\111\114\101\115\032\112\101\114\032\099\104\101\115\116\032\097\114\101\032\110\111\116\032\103\117\097\114\097\110\116\101\101\100\046"
),85,50)local cb=bE.label(bR,'\084\101\120\116\066\111\120',tostring(c),40,51)bU(cb.FocusLost,
function()local cc=tonumber(cb.Text)if cc and cc==cc then c=math.clamp(cc,100,
50000)end cb.Text=tostring(c)end)local cc=bE.button(bR,bF(
'\073\110\105\099\105\097\114\032\114\111\116\097\032\100\101\032\098\097\u{fa}\115\032\099\097\114\114\101\103\097\100\111\115\032\047\032\067\111\114\101\115','\083\116\097\114\116\032\108\111\097\100\101\100\032\099\104\101\115\116\032\047\032\067\111\114\101\032\114\111\117\116\101'
),52)bU(cc.Activated,function()if bN then return end bK+=1 local cd=bK bN=true
bM=false bY(false)bD.pauseCombat()task.spawn(function()local ce,cf=pcall(
function()assert(bG:GetAttribute('\073\110\068\117\110\103\101\111\110')~=true,'\076\101\097\118\101\032\116\104\101\032\068\117\110\103\101\111\110\032\102\105\114\115\116')
assert(type(fireproximityprompt)=='\102\117\110\099\116\105\111\110','\080\114\111\109\112\116\032\065\080\073\032\117\110\097\118\097\105\108\097\098\108\101')local ce,
cf=bD.actor()local cg=cf.Position local ch=cf.CFrame.LookVector local cj=assert(
b2('\068\117\110\103\101\111\110\068\111\111\114\083\116\097\116\101'))local ck={}local cl=0 local function cm(cn)local co=os.
clock()+math.min(180,(cf.Position-cn).Magnitude/ca+10)repeat assert(b3(cd)and bG
:GetAttribute('\073\110\068\117\110\103\101\111\110')~=true and not workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101'),
'\082\111\117\116\101\032\105\110\116\101\114\114\117\112\116\101\100')local cp,cq,cr=bD.actor()assert(not cr.SeatPart,
'\076\101\097\118\101\032\116\104\101\032\100\114\105\118\101\114\032\115\101\097\116\032\102\105\114\115\116')local cs=cn-cq.Position if cs.Magnitude<4 then
return end assert(os.clock()<co,'\077\111\118\101\109\101\110\116\032\116\105\109\101\100\032\111\117\116')cp:PivotTo(CFrame.new(cq.
Position+cs.Unit*math.min(cs.Magnitude,ca*0.05)))task.wait(0.05)until false end
while b3(cd)and cl<100 do local cn,co,cp=nil,nil,math.huge for cq,cr in ipairs(
workspace:GetDescendants())do if cr:IsA('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and cr.Enabled and not
ck[cr]then local cs=cr:GetFullName()local ct=b8(cr)local cu=cs:find('\067\104\101\115\116\078\111\100\101',
1,true)or cs:find('\068\105\103\083\112\111\116',1,true)if cu and ct and not cs:find('\067\117\116\083\099\101\110\101',1,
true)and not cs:find('\068\117\110\103\101\111\110',1,true)and not cj.GetRoot(cr)then local cv=ct.
Position-cg local cw=cv:Dot(ch)if cw>=-30 and cv.Magnitude<=c and cw<cp then cn=
cr co=ct cp=cw end end end end if not cn then break end ck[cn]=true cm(co.
Position+Vector3.new(0,3,0))if cn.Parent and cn.Enabled and b3(cd)then
fireproximityprompt(cn)cl+=1 bT('\082\111\116\097\032\100\101\032\098\097\u{fa}\115\058\032'..cl..
'\032\105\110\116\101\114\097\u{e7}\u{f5}\101\115\032\115\111\108\105\099\105\116\097\100\097\115\046','\067\104\101\115\116\032\114\111\117\116\101\058\032'..cl..
'\032\105\110\116\101\114\097\099\116\105\111\110\115\032\114\101\113\117\101\115\116\101\100\046')b4(cd,function()return not cn.Parent or not cn.
Enabled end,3)end end assert(b3(cd),'\083\116\111\112\112\101\100')local cn=workspace:FindFirstChild(
'\068\114\105\108\108')local co=cn and(cn:FindFirstChild('\066\111\100\121')or cn.PrimaryPart)assert(co and
co:IsA('\066\097\115\101\080\097\114\116'),'\068\114\105\108\108\032\110\111\116\032\108\111\097\100\101\100\032\102\111\114\032\114\101\116\117\114\110')cm(co.Position+Vector3.new(0,co
.Size.Y*0.5+4,0))bT(
'\082\111\116\097\032\099\111\110\099\108\117\u{ed}\100\097\059\032\114\101\116\111\114\110\111\032\u{e0}\032\098\114\111\099\097\046\032\073\110\116\101\114\097\u{e7}\u{f5}\101\115\058\032'..cl,
'\082\111\117\116\101\032\099\111\109\112\108\101\116\101\059\032\114\101\116\117\114\110\101\100\032\116\111\032\100\114\105\108\108\046\032\073\110\116\101\114\097\099\116\105\111\110\115\058\032'..cl)end)if bJ and bK==cd
then bN=false if not ce then bT('\082\111\116\097\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(cf),
'\082\111\117\116\101\032\115\116\111\112\112\101\100\058\032'..tostring(cf))end end end)end)task.spawn(function()while bJ do
if bM and not bN then local cd=bK local ce,cf=pcall(b7,cd)if not ce then b0()bT(
'\086\101\110\100\097\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(cf),'\083\101\108\108\105\110\103\032\115\116\111\112\112\101\100\058\032'..tostring(cf))end end
task.wait(bM and not bN and 0.05 or 0.5)end end)return{stop=b0,cleanup=function(
)bJ=false b0()for cd,ce in ipairs(bL)do ce:Disconnect()end end}end local
function bC(bD,bE,bF,bG)local bH={}local bI,bJ,bK=0,0,0 local bL,bM=0,0 for bN,
bO in ipairs(bD)do local bP,bQ,bR=bO.X+0.25,bO.Z+0.25,bO.Y+0.15 if bP>bE or bQ>
bF or bR>bG then return nil,bN end if bI+bP>bE then bI=0 bJ+=bL bL=0 end if bJ+
bQ>bF then bI=0 bJ=0 bK+=bM bL=0 bM=0 end if bK+bR>bG then return nil,bN end bH[
bN]=Vector3.new(-bE*0.5+bI+bP*0.5,-bG*0.5+bK+bR*0.5,-bF*0.5+bJ+bQ*0.5)bI+=bP bL=
math.max(bL,bQ)bM=math.max(bM,bR)end return bH end local function bD(bE,bF)local
bG,bH=bE.ui,bE.T local bI=game:GetService('\067\111\108\108\101\099\116\105\111\110\083\101\114\118\105\099\101')local bJ=game:
GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local bK=true local bL=false local bM=0 local bN=
{}local bO={}local bP={}local bQ={}local bR={}local bS local bT=bE.section(
'\076\111\106\097')bG.label(bT,'\084\101\120\116\076\097\098\101\108',bH(
'\069\115\099\111\108\104\097\032\105\116\101\110\115\032\100\097\032\108\111\106\097\032\112\114\u{f3}\120\105\109\097\046\032\067\079\078\070\073\082\077\065\082\032\097\112\101\110\097\115\032\111\114\103\097\110\105\122\097\032\097\032\u{e1}\114\101\097\032\100\101\032\099\111\109\112\114\097\059\032\118\111\099\u{ea}\032\099\111\109\112\114\097\032\110\111\032\099\097\105\120\097\046\032\080\114\101\u{e7}\111\115\032\101\120\105\098\105\100\111\115\032\115\u{e3}\111\032\101\115\116\105\109\097\116\105\118\097\115\032\100\111\115\032\105\116\101\110\115\046'
,
"\083\101\108\101\099\116\032\110\101\097\114\098\121\032\115\104\111\112\032\105\116\101\109\115\046\032\067\079\078\070\073\082\077\032\111\110\108\121\032\115\116\097\103\101\115\032\116\104\101\032\112\117\114\099\104\097\115\101\032\097\114\101\097\059\032\121\111\117\032\098\117\121\032\097\116\032\116\104\101\032\114\101\103\105\115\116\101\114\046\032\068\105\115\112\108\097\121\101\100\032\112\114\105\099\101\115\032\097\114\101\032\105\116\101\109\032\101\115\116\105\109\097\116\101\115\046"
),80,1)local bU=bG.label(bT,'\084\101\120\116\076\097\098\101\108',bH(
'\065\112\114\111\120\105\109\101\045\115\101\032\100\097\032\108\111\106\097\032\101\032\099\097\114\114\101\103\117\101\032\111\115\032\105\116\101\110\115\046',
'\065\112\112\114\111\097\099\104\032\116\104\101\032\115\104\111\112\032\097\110\100\032\108\111\097\100\032\105\116\115\032\105\116\101\109\115\046'),62,2)local bW=bG.button(bT,bH(
'\067\097\114\114\101\103\097\114\032\105\116\101\110\115\032\100\097\032\108\111\106\097\032\112\114\u{f3}\120\105\109\097','\076\111\097\100\032\110\101\097\114\098\121\032\115\104\111\112\032\105\116\101\109\115'),3)local bX=bG.
button(bT,bH('\067\079\078\070\073\082\077\065\082\032\u{b7}\032\111\114\103\097\110\105\122\097\114\032\110\097\032\u{e1}\114\101\097\032\100\101\032\099\111\109\112\114\097',
'\067\079\078\070\073\082\077\032\u{b7}\032\115\116\097\103\101\032\105\110\032\112\117\114\099\104\097\115\101\032\097\114\101\097'),5)local bY=bG.button(bT,bH(
'\080\097\114\097\114\032\111\114\103\097\110\105\122\097\u{e7}\u{e3}\111','\083\116\111\112\032\115\116\097\103\105\110\103'),6)local function bZ(b_,b0)bN[#bN+1
]=b_:Connect(b0)end local function b_(b0,b1)if bK then bU.Text=bH(b0,b1 or b0)
end end local function b0(b1,b2,b3)local b4=Instance.new(b1)for b5,b6 in pairs(
b2)do b4[b5]=b6 end b4.Parent=b3 return b4 end local function b1()for b2,b3 in
ipairs(bO)do b3:Disconnect()end table.clear(bO)for b2,b3 in ipairs(bP)do b3:
Destroy()end table.clear(bP)end local function b2()bM+=1 bL=false end bZ(bY.
Activated,b2)local function b3(b4)return b4:IsA('\066\097\115\101\080\097\114\116')and b4 or b4:IsA(
'\077\111\100\101\108')and(b4.PrimaryPart or b4:FindFirstChildWhichIsA('\066\097\115\101\080\097\114\116',true))end
local function b4(b5,b6)local b7,b8=b6,nil for b9,c in ipairs(bI:GetTagged(
'\066\117\121\080\097\114\116'))do if c:IsA('\066\097\115\101\080\097\114\116')and c:IsDescendantOf(workspace)and not c:
GetFullName():find('\067\117\116\083\099\101\110\101',1,true)then local ca=(b5-c.Position).Magnitude if
ca<b7 then b7=ca b8=c end end end return b8 end local function b5()local b6,b7=0
,0 for b8,b9 in ipairs(bQ)do if bR[b9.item]then b6+=1 b7+=b9.cost end end b_(
string.format(bH(
'\083\101\108\101\099\105\111\110\097\100\111\115\058\032\037\100\032\u{b7}\032\069\115\116\105\109\097\116\105\118\097\058\032\037\100\032\111\117\114\111\046\032\079\032\099\097\105\120\097\032\099\111\110\102\105\114\109\097\032\111\032\112\114\101\u{e7}\111\032\102\105\110\097\108\046'
,'\083\101\108\101\099\116\101\100\058\032\037\100\032\u{b7}\032\069\115\116\105\109\097\116\101\058\032\037\100\032\103\111\108\100\046\032\082\101\103\105\115\116\101\114\032\099\111\110\102\105\114\109\115\032\116\104\101\032\102\105\110\097\108\032\112\114\105\099\101\046'),b6
,b7))end bZ(bW.Activated,function()if bL then return end local b6,b7=pcall(
function()local b6,b7=bF.actor()assert(b7,bH('\080\101\114\115\111\110\097\103\101\109\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\046',
'\067\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101\046'))bS=b4(b7.Position,150)assert(bS,bH(
'\078\101\110\104\117\109\097\032\u{e1}\114\101\097\032\100\101\032\099\111\109\112\114\097\032\099\097\114\114\101\103\097\100\097\032\097\032\097\116\u{e9}\032\049\053\048\032\115\116\117\100\115\046',
'\078\111\032\108\111\097\100\101\100\032\112\117\114\099\104\097\115\101\032\097\114\101\097\032\119\105\116\104\105\110\032\049\053\048\032\115\116\117\100\115\046'))local b8=bJ:FindFirstChild('\083\104\097\114\101\100'
)local b9=b8 and b8:FindFirstChild('\073\116\101\109\068\097\116\097\098\097\115\101')local c=b9 and require(b9)b1()
bQ={}bR={}for ca,cb in ipairs(bI:GetTagged('\083\104\111\112\073\116\101\109'))do local cc=b3(cb)if cc
and cb:IsDescendantOf(workspace)and b4(cc.Position,100)==bS and not cb:
GetFullName():find('\067\117\116\083\099\101\110\101',1,true)then local cd=cb:GetAttribute('\067\111\115\116')or c
and c.GetAttribute(cb,'\067\111\115\116')if type(cd)=='\110\117\109\098\101\114'and cd==cd and cd>=0 and cd<
math.huge then bQ[#bQ+1]={item=cb,cost=cd,name=tostring(cb:GetAttribute(
'\068\105\115\112\108\097\121\078\097\109\101')or c and c.GetAttribute(cb,'\068\105\115\112\108\097\121\078\097\109\101')or cb.Name),icon=c and c.
GetAttribute(cb,'\073\099\111\110')or cb:GetAttribute('\073\099\111\110')}end end end table.sort(bQ,
function(ca,cb)return ca.name<cb.name end)for ca,cb in ipairs(bQ)do local cc=b0(
'\070\114\097\109\101',{Size=UDim2.new(1,-8,0,76),BackgroundColor3=Color3.fromRGB(20,29,43),
LayoutOrder=20+ca},bT)bP[#bP+1]=cc b0('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,10)},
cc)b0('\085\073\083\116\114\111\107\101',{Thickness=1,Color=Color3.fromRGB(75,115,155),Transparency=0.25
},cc)b0('\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromOffset(48,48),Position=UDim2.fromOffset(10,
12),BackgroundTransparency=1,Image=type(cb.icon)=='\115\116\114\105\110\103'and cb.icon or''},cc)
local cd,ce=bG.checkbox(cc,cb.name..'\032\u{b7}\032'..cb.cost..bH('\032\111\117\114\111','\032\103\111\108\100'),1)
cd.Position=UDim2.fromOffset(66,10)cd.Size=UDim2.new(1,-76,0,56)bO[#bO+1]=cd.
Activated:Connect(function()if bL then return end bR[cb.item]=not bR[cb.item]ce(
bR[cb.item])b5()end)end b5()if#bQ==0 then b_(
'\078\101\110\104\117\109\032\105\116\101\109\032\099\111\109\032\112\114\101\u{e7}\111\032\100\105\115\112\111\110\u{ed}\118\101\108\032\110\101\115\116\097\032\108\111\106\097\046',
'\078\111\032\112\114\105\099\101\100\032\105\116\101\109\115\032\097\118\097\105\108\097\098\108\101\032\105\110\032\116\104\105\115\032\115\104\111\112\046')end end)if not b6 then b_(tostring(b7)
)end end)bZ(bX.Activated,function()if bL then return end bL=true bM+=1 local b6=
bM bF.pauseCombat()task.spawn(function()local b7,b8=pcall(function()assert(bS
and bS.Parent,'\082\101\108\111\097\100\032\116\104\101\032\115\104\111\112\032\102\105\114\115\116')local b7={}for b8,b9 in ipairs(bQ)do if bR
[b9.item]then assert(b9.item:IsDescendantOf(workspace)and bI:HasTag(b9.item,
'\083\104\111\112\073\116\101\109'),'\083\116\111\099\107\032\099\104\097\110\103\101\100\059\032\114\101\108\111\097\100\032\115\104\111\112')local c,ca if b9.item:IsA('\077\111\100\101\108')then
c,ca=b9.item:GetBoundingBox()else c,ca=b9.item.CFrame,b9.item.Size end b7[#b7+1]
={item=b9.item,cf=c,size=ca}end end assert(#b7>0,bH(
'\083\101\108\101\099\105\111\110\101\032\097\111\032\109\101\110\111\115\032\117\109\032\105\116\101\109\046','\083\101\108\101\099\116\032\097\116\032\108\101\097\115\116\032\111\110\101\032\105\116\101\109\046'))table.sort(b7,
function(b8,b9)return b8.size.X*b8.size.Z>b9.size.X*b9.size.Z end)local b8={}for
b9,c in ipairs(b7)do b8[#b8+1]=c.size end local b9=bC(b8,bS.Size.X-0.4,bS.Size.Z
-0.4,bS.Size.Y-0.1)assert(b9,bH(
'\083\101\108\101\u{e7}\u{e3}\111\032\110\u{e3}\111\032\099\097\098\101\032\110\111\032\113\117\097\100\114\097\100\111\046\032\079\114\103\097\110\105\122\101\032\101\109\032\108\111\116\101\115\032\109\101\110\111\114\101\115\046',
'\083\101\108\101\099\116\105\111\110\032\100\111\101\115\032\110\111\116\032\102\105\116\032\116\104\101\032\115\113\117\097\114\101\046\032\083\116\097\103\101\032\115\109\097\108\108\101\114\032\098\097\116\099\104\101\115\046'))local c,ca=bF.
actor()assert(ca and(ca.Position-bS.Position).Magnitude<=150,
'\065\112\112\114\111\097\099\104\032\116\104\101\032\115\104\111\112\032\102\105\114\115\116')for cb,cc in ipairs(b7)do assert(bK and bM==b6,
'\083\116\111\112\112\101\100')local cd=bF.actor()local ce=b3(cc.item)assert(cd and ce and bS.Parent,
'\073\116\101\109\047\099\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101')cd:PivotTo(ce.CFrame*CFrame.new(0,3,4))task.wait(
0.2)assert(bK and bM==b6,'\083\116\111\112\112\101\100')local cf=bF.await(bF.service('\068\114\097\103\083\101\114\118\105\099\101'):
Request(cc.item))if not bK or bM~=b6 then if cf then pcall(function()bF.service(
'\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)end error('\083\116\111\112\112\101\100')end assert(cf==true,bH(
'\079\032\106\111\103\111\032\114\101\099\117\115\111\117\032\109\111\118\101\114\032\117\109\032\105\116\101\109\046\032\079\114\103\097\110\105\122\097\u{e7}\u{e3}\111\032\105\110\116\101\114\114\111\109\112\105\100\097\046',
'\071\097\109\101\032\114\101\102\117\115\101\100\032\116\111\032\109\111\118\101\032\097\110\032\105\116\101\109\046\032\083\116\097\103\105\110\103\032\115\116\111\112\112\101\100\046'))local cg,ch=pcall(function()
assert(bS.Parent and cc.item.Parent,'\083\116\111\099\107\032\117\110\108\111\097\100\101\100')cd:PivotTo(bS.CFrame*CFrame
.new(bS.Size.X*0.5+4,1,0))local cg=bS.CFrame*CFrame.new(b9[cb])local ch=cc.cf:
ToObjectSpace(cc.item:GetPivot())cc.item:PivotTo(cg*ch)task.wait(0.3)end)pcall(
function()bF.service('\068\114\097\103\083\101\114\118\105\099\101'):Cancel(false)end)assert(cg,ch)assert(bK and
bM==b6,'\083\116\111\112\112\101\100')b_(string.format(bH(
'\079\114\103\097\110\105\122\097\110\100\111\058\032\037\100\047\037\100\046\032\078\101\110\104\117\109\097\032\099\111\109\112\114\097\032\114\101\097\108\105\122\097\100\097\046',
'\083\116\097\103\105\110\103\058\032\037\100\047\037\100\046\032\078\111\032\112\117\114\099\104\097\115\101\032\109\097\100\101\046'),cb,#b7))end b_(
'\073\116\101\110\115\032\112\111\115\105\099\105\111\110\097\100\111\115\046\032\067\111\110\102\105\114\097\032\111\032\113\117\097\100\114\097\100\111\032\101\032\111\032\112\114\101\u{e7}\111\032\110\111\032\099\097\105\120\097\059\032\099\108\105\113\117\101\032\067\079\077\080\082\065\082\032\110\111\032\106\111\103\111\046'
,"\073\116\101\109\115\032\112\111\115\105\116\105\111\110\101\100\046\032\067\104\101\099\107\032\116\104\101\032\115\113\117\097\114\101\032\097\110\100\032\114\101\103\105\115\116\101\114\032\112\114\105\099\101\059\032\099\108\105\099\107\032\066\085\089\032\105\110\032\103\097\109\101\046")
end)if bK and bM==b6 then bL=false if not b7 then b_(
'\079\114\103\097\110\105\122\097\u{e7}\u{e3}\111\032\105\110\116\101\114\114\111\109\112\105\100\097\058\032'..tostring(b8),'\083\116\097\103\105\110\103\032\115\116\111\112\112\101\100\058\032'..
tostring(b8))end end end)end)return{stop=b2,cleanup=function()bK=false b2()b1()
for b6,b7 in ipairs(bN)do b7:Disconnect()end end}end local bE={}function bE.role
(bF,bG)if bG~=9796898051 then return nil end return({[101906032112547]='\108\111\098\098\121',[
74507545904779]='\114\117\110'})[bF]end function bE.names(bF)local bG={}for bH in
tostring(bF):gmatch('\091\094\044\093\043')do bH=bH:match('\094\037\115\042\040\046\045\041\037\115\042\036')if bH~=''then bG[#bG+1
]=bH end end return bG end function bE.offer(bF,bG,bH,bI)if type(bG)~='\110\117\109\098\101\114'or
bG~=bG then return nil end for bJ,bK in ipairs(bI)do for bL,bM in ipairs(type(bF
)=='\116\097\098\108\101'and bF or{})do if bM.UpgradeName==bK and bM.Type=='\067\111\105\110\115'and type(bM.
Cost)=='\110\117\109\098\101\114'and bM.Cost>=0 and bM.Cost<math.huge and bG-bM.Cost>=bH then
return bM end end end end function bE.selection(bF,bG,bH)local bI={}local bJ=
math.clamp(math.floor(tonumber(bG)or 0),0,100)for bK,bL in ipairs(bH)do for bM,
bN in ipairs(type(bF)=='\116\097\098\108\101'and bF or{})do if bN.Name==bL and bN.Id~=nil and
not bI[bN.Id]then local bO=math.min(bJ,math.max(0,math.floor(tonumber(bN.Count)
or 0)))if bO>0 then bI[bN.Id]=bO bJ-=bO end end end end return bI end function
bE.medalOffer(bF,bG,bH,bI)if type(bG)~='\116\097\098\108\101'or type(bG.Medals)~='\110\117\109\098\101\114'or bG.
Medals~=bG.Medals or type(bG.Available)~='\116\097\098\108\101'then return nil end for bJ,bK in
ipairs(bI)do local bL=bF[bK]if bL and type(bL.Cost)=='\110\117\109\098\101\114'and bL.Cost>=0 and
bL.Cost<math.huge and bG.Available[bK]and bG.Medals-bL.Cost>=bH then return bK
end end end function bE.skipRequest(bF)if not bF or not bF.CurrentCutScene or bF
.AbortingCutScene then return nil end local bG=bF.CurrentCutSceneContext if bG
and bG.DisableSkip then return nil end return{name=bF.CurrentCutScene,id=bG and
bG.RuntimeId,private=bG and bG.Private==true and bG.RuntimeId~=nil,session=bF.
CurrentCutSceneSessionId}end local bF=function(bF)local bG=assert(bE.role(game.
PlaceId,game.GameId),'\085\110\115\117\112\112\111\114\116\101\100\032\069\097\114\116\104\032\067\111\114\101\032\112\108\097\099\101')local bH,bI=bF.ui,bF.T local
bJ=game:GetService('\080\108\097\121\101\114\115').LocalPlayer local bK=game:GetService(
'\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local bL=game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local bM=true local
bN={}local bO={swing=false,upgrades=false,craft=false,skip=false,medals=false}
local bP={upgrades=0,craft=0,medals=0}local bQ={}local bR={}local bS,bT,bU local
bW={reserve=1000,limit=10,priority=
"\084\101\097\109\072\101\097\108\116\104\044\076\105\102\101\083\116\101\097\108\044\068\114\105\108\108\080\111\119\101\114\044\082\080\077\079\118\101\114\099\108\111\099\107\044\083\097\099\107\083\116\111\114\097\103\101\044\068\114\105\118\101\083\112\101\101\100",gear=
'\080\105\099\107\097\120\101\095\071\111\108\100',craftLimit=3,medalReserve=100,medalLimit=10,medalPriority=
'\084\117\114\114\101\116\068\097\109\097\103\101\044\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111'}local bX=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095'..bJ.UserId..'\095'..bG..'\046\106\115\111\110'if type(readfile)=='\102\117\110\099\116\105\111\110'
then pcall(function()local bY=bL:JSONDecode(readfile(bX))for bZ,b_ in pairs(bW)
do if type(bY[bZ])==type(b_)then bW[bZ]=bY[bZ]end end end)end bW.reserve=math.
clamp(tonumber(bW.reserve)or 1000,0,1e9)bW.limit=math.clamp(tonumber(bW.limit)or
10,1,100)bW.medalReserve=math.clamp(tonumber(bW.medalReserve)or 100,0,1e9)bW.
medalLimit=math.clamp(tonumber(bW.medalLimit)or 10,1,100)bW.craftLimit=math.
clamp(tonumber(bW.craftLimit)or 3,1,100)local function bY()if type(writefile)==
'\102\117\110\099\116\105\111\110'then pcall(writefile,bX,bL:JSONEncode(bW))end end local function bZ(b_
,b0)bN[#bN+1]=b_:Connect(b0)end local b_=bF.section('\070\097\114\109')local b0=bH.label(b_,
'\084\101\120\116\076\097\098\101\108',bI('\067\097\114\114\101\103\097\110\100\111\032\101\115\116\097\100\111\u{2026}','\076\111\097\100\105\110\103\032\115\116\097\116\101\u{2026}'),76,1)local
b1=bH.label(b_,'\084\101\120\116\076\097\098\101\108','',72,2)local function b2(b3,b4)if bM then b1.Text=
bI(b3,b4 or b3)end end local function b3()for b4 in pairs(bO)do bO[b4]=false if
bR[b4]then bR[b4](false)end end if bS then bS.stop()end if bT then bT.stop()end
if bU then bU.stop()end end bF.attach(function()bM=false b3()if bS then bS.
cleanup()end if bT then bT.cleanup()end if bU then bU.cleanup()end for b4,b5 in
ipairs(bN)do b5:Disconnect()end end)bF.quick(b3)local function b4(b5,b6,b7,b8,b9
)local c=bH.button(b5,bI(b6,b7),b8)bZ(c.Activated,function()if bQ[c]then return
end bQ[c]=true task.spawn(function()local ca,cb=pcall(b9)bQ[c]=nil if not ca
then b2(bI('\070\097\108\104\097\058\032','\070\097\105\108\101\100\058\032')..tostring(cb))end end)end)return c end local
function b5(b6,b7,b8,b9,c,ca)bH.label(b6,'\084\101\120\116\076\097\098\101\108',bI(b8,b9),32,c)local cb=bH.
label(b6,'\084\101\120\116\066\111\120',tostring(bW[b7]),42,c+1)bZ(cb.FocusLost,function()if ca then
local cc=tonumber(cb.Text)if cc and cc==cc and cc<math.huge then bW[b7]=math.
clamp(math.floor(cc),ca[1],ca[2])end else bW[b7]=cb.Text:sub(1,600)end cb.Text=
tostring(bW[b7])bY()end)end local function b6(b7,b8,b9,c,ca)local cb,cc=bH.
checkbox(b7,bI(b9,c),ca)bR[b8]=cc bZ(cb.Activated,function()bO[b8]=not bO[b8]cc(
bO[b8])end)end local b7 local function b8(b9,c)if not b7 then local ca=bK:
FindFirstChild('\080\097\099\107\097\103\101\115')local cb=ca and ca:FindFirstChild('\075\110\105\116')if not cb
then return nil end b7=require(cb)end local ca,cb=pcall(b9=='\099\111\110\116\114\111\108\108\101\114'and b7.
GetController or b7.GetService,c)return ca and cb or nil end local function b9(c
)return b8('\099\111\110\116\114\111\108\108\101\114',c)end local function c(ca)return assert(b8('\115\101\114\118\105\099\101',ca)
,ca..'\032\117\110\097\118\097\105\108\097\098\108\101')end local function ca(cb)if type(cb)=='\116\097\098\108\101'and type(cb.
await)=='\102\117\110\099\116\105\111\110'then local cc=table.pack(cb:timeout(8):await())if not cc[1]
then error(tostring(cc[2]))end return table.unpack(cc,2,cc.n)end return cb end
local function cb()local cc=bJ.Character local cd=cc and cc:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local ce=cc and cc:FindFirstChild(
'\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if ce and cd and cd.Health>0 then return cc,ce,cd end end
local function cc()if bG=='\108\111\098\098\121'then local cd=workspace:FindFirstChild('\076\111\098\098\121')
local ce=cd and cd:FindFirstChild('\079\117\116\101\114\083\116\114\117\099\116\117\114\101\115')return ce and ce:
FindFirstChild('\067\104\117\114\099\104')end return workspace:FindFirstChild('\067\104\117\114\099\104')end local
function cd()local ce=cc()local cf=ce and ce:FindFirstChild('\083\116\114\117\099\116\117\114\101')local cg
=cf and cf:FindFirstChild('\082\105\110\103')local ch=cg and cg:FindFirstChild('\083\097\118\101\071\101\097\114')
return ch and ch:IsA('\066\097\115\101\080\097\114\116')and ch or nil end local ce,cf local function cg(
)local ch=cd()if ch then ce=ch.CFrame cf=workspace:GetAttribute(
'\073\110\102\105\110\105\116\101\068\101\112\116\104\079\102\102\115\101\116\077\101\116\101\114\115')end end cg()local ch,cj b4(b_,
'\073\114\032\097\116\u{e9}\032\097\032\105\103\114\101\106\097\032\099\097\114\114\101\103\097\100\097','\071\111\032\116\111\032\108\111\097\100\101\100\032\099\104\117\114\099\104',10,function()local ck,cl=
cb()assert(ck,bI('\080\101\114\115\111\110\097\103\101\109\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\046','\067\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101\046'))cg()
local cm=cd()if not cm and ce and cf==workspace:GetAttribute(
'\073\110\102\105\110\105\116\101\068\101\112\116\104\079\102\102\115\101\116\077\101\116\101\114\115')then local cn=cl.CFrame ck:PivotTo(ce*CFrame.new(0,3
,5))pcall(function()bJ:RequestStreamAroundAsync(ce.Position,5)end)cm=cd()if not
cm then ck:PivotTo(cn)end end assert(cm,bI(
'\073\103\114\101\106\097\032\097\105\110\100\097\032\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097\046\032\065\032\112\111\115\105\u{e7}\u{e3}\111\032\108\101\109\098\114\097\100\097\032\110\u{e3}\111\032\099\111\110\102\105\114\109\097\032\117\109\032\097\108\116\097\114\032\100\105\115\112\111\110\u{ed}\118\101\108\046'
,
"\067\104\117\114\099\104\032\110\111\116\032\108\111\097\100\101\100\046\032\065\032\114\101\109\101\109\098\101\114\101\100\032\112\111\115\105\116\105\111\110\032\100\111\101\115\032\110\111\116\032\099\111\110\102\105\114\109\032\097\110\032\097\118\097\105\108\097\098\108\101\032\097\108\116\097\114\046"
))ch=cl.CFrame cj=ck ck:PivotTo(cm.CFrame*CFrame.new(0,3,5))b2(
'\068\101\115\108\111\099\097\109\101\110\116\111\032\115\111\108\105\099\105\116\097\100\111\046\032\067\111\110\102\105\114\097\032\115\117\097\032\112\111\115\105\u{e7}\u{e3}\111\046',
'\077\111\118\101\109\101\110\116\032\114\101\113\117\101\115\116\101\100\046\032\067\104\101\099\107\032\121\111\117\114\032\112\111\115\105\116\105\111\110\046')end)b4(b_,
'\086\111\108\116\097\114\032\u{e0}\032\112\111\115\105\u{e7}\u{e3}\111\032\097\110\116\101\114\105\111\114','\082\101\116\117\114\110\032\116\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110',11,
function()local ck=cb()assert(ck and ck==cj and ch,
'\078\111\032\112\114\101\118\105\111\117\115\032\112\111\115\105\116\105\111\110\032\102\111\114\032\116\104\105\115\032\099\104\097\114\097\099\116\101\114')ck:PivotTo(ch)end)b4(b_,
'\080\097\114\097\114\032\116\111\100\097\115\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115','\083\116\111\112\032\097\108\108\032\097\117\116\111\109\097\116\105\111\110',12,function()b3()b2(
'\065\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\114\097\100\097\115\046','\065\117\116\111\109\097\116\105\111\110\032\115\116\111\112\112\101\100\046')end)if bG=='\108\111\098\098\121'then bH.
label(b_,'\084\101\120\116\076\097\098\101\108',bI(
'\076\111\098\098\121\058\032\101\113\117\105\112\097\109\101\110\116\111\115\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\100\101\032\101\120\112\101\100\105\u{e7}\u{e3}\111\032\097\112\097\114\101\099\101\109\032\110\097\032\112\097\114\116\105\100\097\046'
,"\076\111\098\098\121\058\032\101\113\117\105\112\109\101\110\116\046\032\069\120\112\101\100\105\116\105\111\110\032\102\101\097\116\117\114\101\115\032\097\112\112\101\097\114\032\105\110\032\116\104\101\032\103\097\109\101\032\112\108\097\099\101\046"),54,15)b5(
b_,'\103\101\097\114','\078\111\109\101\032\101\120\097\116\111\032\100\111\032\101\113\117\105\112\097\109\101\110\116\111\032\100\111\032\108\111\098\098\121','\069\120\097\099\116\032\108\111\098\098\121\032\101\113\117\105\112\109\101\110\116\032\110\097\109\101',20)
b4(b_,'\069\113\117\105\112\097\114\032\111\032\105\116\101\109\032\105\110\102\111\114\109\097\100\111','\069\113\117\105\112\032\101\110\116\101\114\101\100\032\105\116\101\109',23,function()local ck=bE.
names(bW.gear)[1]assert(ck,'\069\110\116\101\114\032\097\110\032\105\116\101\109\032\110\097\109\101')local cl=ca(c(
'\076\111\098\098\121\066\097\099\107\112\097\099\107\083\101\114\118\105\099\101'):SetEquipped(ck))b2(cl and bI('\069\113\117\105\112\097\109\101\110\116\111\032\097\099\101\105\116\111\046',
'\069\113\117\105\112\109\101\110\116\032\097\099\099\101\112\116\101\100\046')or bI('\079\032\106\111\103\111\032\110\u{e3}\111\032\097\099\101\105\116\111\117\032\111\032\105\116\101\109\046',
'\084\104\101\032\103\097\109\101\032\100\105\100\032\110\111\116\032\097\099\099\101\112\116\032\116\104\105\115\032\105\116\101\109\046'))end)else b6(b_,'\115\119\105\110\103',
'\065\117\116\111\032\112\105\099\097\114\101\116\097\032\101\113\117\105\112\097\100\097\032\040\097\108\099\097\110\099\101\032\110\111\114\109\097\108\041','\065\117\116\111\032\101\113\117\105\112\112\101\100\032\112\105\099\107\097\120\101\032\040\110\111\114\109\097\108\032\114\097\110\103\101\041'
,20)bH.label(b_,'\084\101\120\116\076\097\098\101\108',bI(
"\069\113\117\105\112\101\032\097\032\112\105\099\097\114\101\116\097\032\101\032\097\112\114\111\120\105\109\101\045\115\101\032\100\111\032\097\108\118\111\046\032\082\101\115\112\101\105\116\097\032\111\032\099\111\111\108\100\111\119\110\032\110\097\116\105\118\111\046",
"\069\113\117\105\112\032\121\111\117\114\032\112\105\099\107\097\120\101\032\097\110\100\032\097\112\112\114\111\097\099\104\032\116\104\101\032\116\097\114\103\101\116\046\032\085\115\101\115\032\116\104\101\032\110\097\116\105\118\101\032\099\111\111\108\100\111\119\110\046"),48,21
)local ck=bF.section('\077\101\108\104\111\114\105\097\115')bH.label(ck,'\084\101\120\116\076\097\098\101\108',bI(
'\079\114\103\097\110\105\122\101\032\097\032\108\105\115\116\097\032\099\111\109\032\u{2191}\047\u{2193}\032\097\098\097\105\120\111\046\032\068\101\115\109\097\114\113\117\101\032\111\032\113\117\101\032\110\u{e3}\111\032\100\101\115\101\106\097\032\099\111\109\112\114\097\114\046'
,
'\082\101\111\114\100\101\114\032\119\105\116\104\032\u{2191}\047\u{2193}\032\098\101\108\111\119\046\032\085\110\099\104\101\099\107\032\117\112\103\114\097\100\101\115\032\121\111\117\032\100\111\032\110\111\116\032\119\097\110\116\032\116\111\032\098\117\121\046'
),50,1)b5(ck,'\114\101\115\101\114\118\101','\082\101\115\101\114\118\097\032\109\u{ed}\110\105\109\097\032\100\101\032\109\111\101\100\097\115','\077\105\110\105\109\117\109\032\099\111\105\110\032\114\101\115\101\114\118\101',4,
{0,1e9})b5(ck,'\108\105\109\105\116','\076\105\109\105\116\101\032\100\101\032\116\101\110\116\097\116\105\118\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\065\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',7,{1,100})b6(ck,'\117\112\103\114\097\100\101\115',
'\065\117\116\111\032\109\101\108\104\111\114\105\097\115\032\099\111\109\032\109\111\101\100\097\115','\065\117\116\111\032\099\111\105\110\032\117\112\103\114\097\100\101\115',10)b5(ck,'\099\114\097\102\116\076\105\109\105\116',
'\076\105\109\105\116\101\032\100\101\032\102\097\098\114\105\099\097\u{e7}\u{e3}\111\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\067\114\097\102\116\032\097\116\116\101\109\112\116\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',12,{1,100})b6(ck,'\099\114\097\102\116',
'\065\117\116\111\032\102\097\098\114\105\099\097\114\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\032\110\111\032\106\111\103\111','\065\117\116\111\032\099\114\097\102\116\032\105\116\101\109\032\115\101\108\101\099\116\101\100\032\105\110\032\103\097\109\101',15)
bH.label(ck,'\084\101\120\116\076\097\098\101\108',bI(
'\067\114\097\102\116\105\110\103\058\032\097\098\114\097\032\097\032\098\097\110\099\097\100\097\032\101\032\101\115\099\111\108\104\097\032\111\032\105\116\101\109\032\110\111\032\106\111\103\111\046\032\082\111\098\117\120\032\102\105\099\097\032\101\120\099\108\117\u{ed}\100\111\046\032\065\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\099\111\109\101\u{e7}\097\109\032\100\101\115\108\105\103\097\100\097\115\046'
,
"\067\114\097\102\116\105\110\103\058\032\111\112\101\110\032\116\104\101\032\098\101\110\099\104\032\097\110\100\032\115\101\108\101\099\116\032\097\110\032\105\116\101\109\032\105\110\032\103\097\109\101\046\032\082\111\098\117\120\032\105\115\032\101\120\099\108\117\100\101\100\046\032\065\117\116\111\109\097\116\105\111\110\032\115\116\097\114\116\115\032\100\105\115\097\098\108\101\100\046"
),72,16)local cl=bF.section('\073\103\114\101\106\097')b5(cl,'\103\101\097\114',
'\080\114\105\111\114\105\100\097\100\101\032\100\101\032\105\116\101\110\115\032\097\032\115\097\108\118\097\114\032\040\110\111\109\101\115\032\101\120\097\116\111\115\041','\071\101\097\114\032\115\097\118\101\032\112\114\105\111\114\105\116\121\032\040\101\120\097\099\116\032\110\097\109\101\115\041'
,1)local cm=bH.label(cl,'\084\101\120\116\076\097\098\101\108',bI(
"\083\101\108\101\099\105\111\110\101\032\111\115\032\105\116\101\110\115\032\101\032\114\101\118\105\115\101\032\097\110\116\101\115\032\100\101\032\115\097\108\118\097\114\046\032\083\097\108\118\097\114\032\114\101\116\111\114\110\097\032\097\111\032\108\111\098\098\121\046",
"\083\101\108\101\099\116\032\097\110\100\032\114\101\118\105\101\119\032\103\101\097\114\032\098\101\102\111\114\101\032\115\097\118\105\110\103\046\032\083\097\118\105\110\103\032\114\101\116\117\114\110\115\032\116\111\032\116\104\101\032\108\111\098\098\121\046"),90,5)
local cn=nil local co={}local cp={}local function cq()for cr,cs in ipairs(cp)do
cs:Disconnect()end table.clear(cp)for cr,cs in ipairs(co)do cs:Destroy()end
table.clear(co)end bF.attach(function()bM=false b3()cq()if bS then bS.cleanup()
end if bT then bT.cleanup()end if bU then bU.cleanup()end for cr,cs in ipairs(bN
)do cs:Disconnect()end end)b4(cl,'\067\097\114\114\101\103\097\114\032\105\110\118\101\110\116\u{e1}\114\105\111\032\101\032\101\115\099\111\108\104\101\114\032\105\116\101\110\115',
'\076\111\097\100\032\105\110\118\101\110\116\111\114\121\032\097\110\100\032\115\101\108\101\099\116\032\105\116\101\109\115',10,function()local cr=assert(b9(
'\083\097\118\101\071\101\097\114\067\111\110\116\114\111\108\108\101\114'),'\083\097\118\101\032\085\073\032\117\110\097\118\097\105\108\097\098\108\101')assert(cr.Loaded and cr.Frame.
Visible and not cr.Pending and not cr.DeathMode,bI('\065\098\114\097\032\112\114\105\109\101\105\114\111\032\111\032\097\108\116\097\114\046',
'\079\112\101\110\032\116\104\101\032\097\108\116\097\114\032\102\105\114\115\116\046'))local cs=ca(c('\080\108\097\121\101\114\083\101\114\118\105\099\101'):GetSaveGearChoices())
assert(bM and type(cs)=='\116\097\098\108\101'and cr.Loaded and cr.Frame.Visible and not cr.
Pending and not cr.DeathMode,'\065\108\116\097\114\032\099\108\111\115\101\100')cq()cr.Selection={}cr.Limit=math.
max(0,math.floor(tonumber(cs.Limit)or 0))cn=cr local ct={}local function cu()
local cv=0 for cw,cx in pairs(cr.Selection)do cv+=cx end cm.Text=string.format(
bI("\083\101\108\101\099\105\111\110\097\100\111\115\058\032\037\100\047\037\100\046\032\067\111\110\102\105\114\097\032\097\032\108\105\115\116\097\032\101\032\117\115\101\032\083\065\076\086\065\082\032\112\097\114\097\032\118\111\108\116\097\114\032\097\111\032\108\111\098\098\121\046",
"\083\101\108\101\099\116\101\100\058\032\037\100\047\037\100\046\032\082\101\118\105\101\119\032\116\104\101\032\108\105\115\116\032\097\110\100\032\117\115\101\032\083\065\086\069\032\116\111\032\114\101\116\117\114\110\032\116\111\032\116\104\101\032\108\111\098\098\121\046"),cv,cr
.Limit)cr:UpdateTotal()for cw,cx in ipairs(ct)do cx()end end for cv,cw in
ipairs(cs.Items or{})do if cw.Id~=nil and cw.Count and cw.Count>0 then local cx=
Instance.new('\070\114\097\109\101')cx.Size=UDim2.new(1,-8,0,64)cx.BackgroundTransparency=0.2
cx.BackgroundColor3=Color3.fromRGB(23,31,44)cx.LayoutOrder=100+cv cx.Parent=cl
co[#co+1]=cx local cy=Instance.new('\085\073\083\116\114\111\107\101')cy.Color=Color3.fromRGB(77,110,140
)cy.Transparency=0.35 cy.Parent=cx local cz,cA=cr:GetItemDisplay(cw.Name)local
cB=Instance.new('\073\109\097\103\101\076\097\098\101\108')cB.Size=UDim2.fromOffset(40,40)cB.Position=UDim2.
fromOffset(6,10)cB.BackgroundTransparency=1 cB.Image=cz or''cB.Parent=cx local
cC,cD=bH.checkbox(cx,'',1)cC.Size=UDim2.new(1,-150,0,58)cC.Position=UDim2.
fromOffset(50,2)local cE=cC:FindFirstChildWhichIsA('\084\101\120\116\076\097\098\101\108')local function cF
()local cG=cr.Selection[cw.Id]or 0 cD(cG>0)if cE then cE.Text=tostring(cA or cw.
Name)..'\032\u{b7}\032'..cG..'\047'..cw.Count end end ct[#ct+1]=cF local function cG(cH)
if not bM or cn~=cr or not cr.Loaded or not cr.Frame.Visible or cr.Pending or cr
.DeathMode then return end local cI=0 for cJ,cK in pairs(cr.Selection)do cI+=cK
end local cJ=cr.Selection[cw.Id]or 0 if cH>0 and cI>=cr.Limit then return end cr
.Selection[cw.Id]=math.clamp(cJ+cH,0,cw.Count)cu()end cp[#cp+1]=cC.Activated:
Connect(function()if not bM or cn~=cr or cr.Pending or not cr.Frame.Visible then
return end if(cr.Selection[cw.Id]or 0)>0 then cr.Selection[cw.Id]=0 cu()else cG(
1)end end)for cH,cI in ipairs({-1,1})do local cJ=bH.button(cx,cI<0 and'\u{2212}'
or'\043',2+cH)cJ.Size=UDim2.fromOffset(40,42)cJ.Position=UDim2.new(1,-94+(cH-1)*46,
0,10)cp[#cp+1]=cJ.Activated:Connect(function()cG(cI)end)end end end cu()end)b4(
cl,'\065\098\114\105\114\032\097\108\116\097\114\032\101\032\099\097\114\114\101\103\097\114\032\105\116\101\110\115','\079\112\101\110\032\097\108\116\097\114\032\097\110\100\032\108\111\097\100\032\103\101\097\114',7,function()local
cr,cs=cb()local ct=cd()assert(cs and ct and(cs.Position-ct.Position).Magnitude<=
20,bI('\065\112\114\111\120\105\109\101\045\115\101\032\100\111\032\097\108\116\097\114\032\112\114\105\109\101\105\114\111\046','\065\112\112\114\111\097\099\104\032\116\104\101\032\097\108\116\097\114\032\102\105\114\115\116\046'))local cu=
assert(b9('\085\073\067\111\110\116\114\111\108\108\101\114'),'\085\073\032\117\110\097\118\097\105\108\097\098\108\101')cu:ToggleFrame('\083\097\118\101\071\101\097\114',true)cn=nil
cm.Text=bI('\065\103\117\097\114\100\101\032\097\032\108\105\115\116\097\032\110\097\116\105\118\097\059\032\100\101\112\111\105\115\032\112\114\101\112\097\114\101\032\097\032\115\101\108\101\u{e7}\u{e3}\111\046',
'\087\097\105\116\032\102\111\114\032\116\104\101\032\110\097\116\105\118\101\032\108\105\115\116\044\032\116\104\101\110\032\112\114\101\112\097\114\101\032\116\104\101\032\115\101\108\101\099\116\105\111\110\046')end)b4(cl,
'\080\114\101\112\097\114\097\114\032\115\101\108\101\u{e7}\u{e3}\111\032\112\111\114\032\112\114\105\111\114\105\100\097\100\101','\080\114\101\112\097\114\101\032\115\101\108\101\099\116\105\111\110\032\098\121\032\112\114\105\111\114\105\116\121',8,
function()local cr=assert(b9('\083\097\118\101\071\101\097\114\067\111\110\116\114\111\108\108\101\114'),'\083\097\118\101\032\085\073\032\117\110\097\118\097\105\108\097\098\108\101')assert(
cr.Loaded and cr.Frame.Visible and not cr.Pending and not cr.DeathMode,
'\079\112\101\110\032\116\104\101\032\108\105\118\101\032\097\108\116\097\114\032\085\073\032\102\105\114\115\116')local cs=ca(c('\080\108\097\121\101\114\083\101\114\118\105\099\101'):
GetSaveGearChoices())assert(bM and type(cs)=='\116\097\098\108\101'and cr.Loaded and cr.Frame.
Visible and not cr.Pending and not cr.DeathMode,
'\067\104\111\105\099\101\115\032\117\110\097\118\097\105\108\097\098\108\101\032\111\114\032\097\108\116\097\114\032\099\108\111\115\101\100')local ct=bE.selection(cs.Items,cs.Limit,bE
.names(bW.gear))local cu=0 for cv,cw in pairs(ct)do cu+=cw end assert(cu>0,bI(
'\078\101\110\104\117\109\032\105\116\101\109\032\100\105\115\112\111\110\u{ed}\118\101\108\032\099\111\105\110\099\105\100\101\032\099\111\109\032\097\032\108\105\115\116\097\046',
'\078\111\032\097\118\097\105\108\097\098\108\101\032\103\101\097\114\032\109\097\116\099\104\101\115\032\121\111\117\114\032\108\105\115\116\046'))cr.Selection=ct cr:UpdateTotal()cn=cr cm
.Text=string.format(bI(
'\037\100\032\105\116\101\109\040\110\115\041\032\115\101\108\101\099\105\111\110\097\100\111\115\046\032\082\101\118\105\115\101\032\110\097\032\106\097\110\101\108\097\032\100\111\032\106\111\103\111\046\032\079\032\112\114\u{f3}\120\105\109\111\032\098\111\116\u{e3}\111\032\115\097\108\118\097\032\101\032\115\097\105\046'
,
"\037\100\032\105\116\101\109\040\115\041\032\115\101\108\101\099\116\101\100\046\032\082\101\118\105\101\119\032\105\110\032\116\104\101\032\103\097\109\101\032\119\105\110\100\111\119\046\032\084\104\101\032\110\101\120\116\032\098\117\116\116\111\110\032\115\097\118\101\115\032\097\110\100\032\101\120\105\116\115\046"
),cu)end)b4(cl,'\083\065\076\086\065\082\032\115\101\108\101\u{e7}\u{e3}\111\032\114\101\118\105\115\097\100\097\032\101\032\115\097\105\114',
'\083\065\086\069\032\114\101\118\105\101\119\101\100\032\115\101\108\101\099\116\105\111\110\032\097\110\100\032\101\120\105\116',9,function()local cr=cn local cs,ct=cb()local
cu=cd()assert(bM and ct and cu and(ct.Position-cu.Position).Magnitude<=20 and cr
and cr.Loaded and cr.Frame.Visible and not cr.Pending and not cr.DeathMode,
'\082\101\118\105\101\119\032\103\101\097\114\032\097\116\032\116\104\101\032\097\108\116\097\114\032\119\104\105\108\101\032\097\108\105\118\101\032\102\105\114\115\116')b3()cn=nil cr:Teleport()b2(
'\083\111\108\105\099\105\116\097\u{e7}\u{e3}\111\032\101\110\118\105\097\100\097\046\032\079\032\106\111\103\111\032\099\111\110\102\105\114\109\097\032\101\032\102\097\122\032\111\032\116\101\108\101\112\111\114\116\101\046',
'\082\101\113\117\101\115\116\032\115\101\110\116\046\032\084\104\101\032\103\097\109\101\032\099\111\110\102\105\114\109\115\032\097\110\100\032\116\101\108\101\112\111\114\116\115\032\121\111\117\046')end)end if bG=='\114\117\110'and bz
then bS=bz(bF,{actor=cb,ctrl=b9,say=b2,priority=bW.priority,setPriority=function
(ck)bW.priority=ck bY()end})end if bG=='\114\117\110'and bB then bT=bB(bF,{actor=cb,ctrl=
b9,service=c,await=ca,pauseCombat=function()if bS then bS.stop()end end})end if
bG=='\114\117\110'and bD then bU=bD(bF,{actor=cb,service=c,await=ca,pauseCombat=function(
)if bS then bS.stop()end if bT then bT.stop()end end})end local ck local cl if
bG=='\114\117\110'then b6(b_,'\115\107\105\112','\065\117\116\111\032\118\111\116\097\114\032\112\097\114\097\032\112\117\108\097\114\032\099\117\116\115\099\101\110\101\115',
'\065\117\116\111\032\118\111\116\101\032\116\111\032\115\107\105\112\032\099\117\116\115\099\101\110\101\115',24)bH.label(b_,'\084\101\120\116\076\097\098\101\108',bI(
'\079\032\112\114\111\103\114\101\115\115\111\032\100\101\112\101\110\100\101\032\100\097\032\098\114\111\099\097\032\101\032\100\097\115\032\112\097\114\101\100\101\115\046\032\084\101\108\101\112\111\114\116\101\032\101\032\118\111\111\032\110\u{e3}\111\032\099\111\110\116\097\109\032\113\117\105\108\u{f4}\109\101\116\114\111\115\046'
,
"\080\114\111\103\114\101\115\115\032\100\101\112\101\110\100\115\032\111\110\032\116\104\101\032\100\114\105\108\108\032\097\110\100\032\119\097\108\108\115\046\032\084\101\108\101\112\111\114\116\105\110\103\032\097\110\100\032\102\108\121\105\110\103\032\100\111\032\110\111\116\032\099\111\117\110\116\032\107\105\108\111\109\101\116\101\114\115\046"
),58,25)b4(b_,'\067\111\110\115\117\108\116\097\114\032\082\080\032\097\116\117\097\108\032\100\097\032\112\097\114\116\105\100\097','\067\104\101\099\107\032\099\117\114\114\101\110\116\032\114\117\110\032\082\080',27,function
()assert(bJ:GetAttribute('\082\097\110\107\101\100\082\117\110\065\099\116\105\118\101')==true,bI(
'\069\115\116\097\032\112\097\114\116\105\100\097\032\110\u{e3}\111\032\u{e9}\032\114\097\110\113\117\101\097\100\097\046','\084\104\105\115\032\114\117\110\032\105\115\032\110\111\116\032\114\097\110\107\101\100\046'))local cm=
ca(c('\082\097\110\107\101\100\083\101\114\118\105\099\101'):GetRankChange())assert(type(cm)=='\116\097\098\108\101'and type(cm.
DeltaRP)=='\110\117\109\098\101\114','\082\080\032\117\110\097\118\097\105\108\097\098\108\101')b2(string.format(bI(
'\082\080\032\112\114\111\106\101\116\097\100\111\032\112\101\108\111\032\106\111\103\111\058\032\037\043\100\046\032\078\u{e3}\111\032\115\097\108\118\097\032\110\101\109\032\115\097\105\032\097\117\116\111\109\097\116\105\099\097\109\101\110\116\101\046',
"\071\097\109\101\045\112\114\111\106\101\099\116\101\100\032\082\080\058\032\037\043\100\046\032\068\111\101\115\032\110\111\116\032\097\117\116\111\109\097\116\105\099\097\108\108\121\032\115\097\118\101\032\111\114\032\101\120\105\116\046"),cm.DeltaRP))
end)local cm=bF.section('\077\101\108\104\111\114\105\097\115')b5(cm,'\109\101\100\097\108\080\114\105\111\114\105\116\121',
'\077\101\100\097\108\104\097\115\058\032\112\114\105\111\114\105\100\097\100\101\115\032\040\073\068\115\032\115\101\112\097\114\097\100\111\115\032\112\111\114\032\118\u{ed}\114\103\117\108\097\041',
'\077\101\100\097\108\115\058\032\112\114\105\111\114\105\116\105\101\115\032\040\099\111\109\109\097\045\115\101\112\097\114\097\116\101\100\032\073\068\115\041',80)b5(cm,'\109\101\100\097\108\082\101\115\101\114\118\101',
'\082\101\115\101\114\118\097\032\100\101\032\109\101\100\097\108\104\097\115','\077\101\100\097\108\032\114\101\115\101\114\118\101',83,{0,1e9})b5(cm,'\109\101\100\097\108\076\105\109\105\116',
'\076\105\109\105\116\101\032\100\101\032\099\111\109\112\114\097\115\032\100\101\032\109\101\100\097\108\104\097\115\032\112\111\114\032\115\101\115\115\u{e3}\111',
'\077\101\100\097\108\032\112\117\114\099\104\097\115\101\032\108\105\109\105\116\032\112\101\114\032\115\101\115\115\105\111\110',86,{1,100})b6(cm,'\109\101\100\097\108\115',
'\065\117\116\111\032\109\101\108\104\111\114\105\097\115\032\100\101\032\076\097\114\114\121\032\099\111\109\032\109\101\100\097\108\104\097\115','\065\117\116\111\032\076\097\114\114\121\032\109\101\100\097\108\032\117\112\103\114\097\100\101\115',89)bH.label(
cm,'\084\101\120\116\076\097\098\101\108',bI(
'\065\098\114\097\032\076\097\114\114\121\032\112\101\114\116\111\032\100\097\032\101\115\116\097\u{e7}\u{e3}\111\046\032\073\068\115\058\032\084\117\114\114\101\116\068\097\109\097\103\101\044\032\070\108\097\109\101\068\117\114\097\116\105\111\110\044\032\070\114\111\115\116\068\117\114\097\116\105\111\110\044\032\070\108\097\109\101\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\070\114\111\115\116\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111\046\032\083\101\109\032\099\111\109\112\114\097\115\032\082\111\098\117\120\046'
,
"\079\112\101\110\032\076\097\114\114\121\032\110\101\097\114\032\116\104\101\032\115\116\097\116\105\111\110\046\032\073\068\115\058\032\084\117\114\114\101\116\068\097\109\097\103\101\044\032\070\108\097\109\101\068\117\114\097\116\105\111\110\044\032\070\114\111\115\116\068\117\114\097\116\105\111\110\044\032\070\108\097\109\101\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\070\114\111\115\116\082\101\099\104\097\114\103\101\083\112\101\101\100\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\068\097\109\097\103\101\044\032\083\101\116\116\108\101\109\101\110\116\071\117\110\110\101\114\065\109\109\111\046\032\078\111\032\082\111\098\117\120\032\112\117\114\099\104\097\115\101\115\046"
),110,90)end local cm,cn=0,0 task.spawn(function()while bM do local co,cp=pcall(
function()local co,cp,cq=cb()if os.clock()>=cn then cn=os.clock()+2 cg()b0.Text=
string.format(
'\037\115\032\u{b7}\032\080\108\097\099\101\032\037\115\n\037\115\058\032\037\115\032\u{b7}\032\037\115\058\032\037\115\n\037\115\058\032\037\100\047\037\100\032\u{b7}\032\067\114\097\102\116\058\032\037\100\047\037\100',bG==
'\108\111\098\098\121'and'\076\111\098\098\121'or bI('\069\120\112\101\100\105\u{e7}\u{e3}\111','\069\120\112\101\100\105\116\105\111\110'),game.PlaceId,bI(
'\086\105\100\097','\072\101\097\108\116\104'),cq and math.floor(cq.Health)or 0,bI('\073\103\114\101\106\097','\067\104\117\114\099\104'),cd()and
bI('\099\097\114\114\101\103\097\100\097','\108\111\097\100\101\100')or bI('\110\u{e3}\111\032\099\097\114\114\101\103\097\100\097','\110\111\116\032\108\111\097\100\101\100'),bI(
'\084\101\110\116\097\116\105\118\097\115\032\117\112\103\114\097\100\101','\085\112\103\114\097\100\101\032\097\116\116\101\109\112\116\115'),bP.upgrades,bW.limit,bP.craft,bW.
craftLimit)end if bG~='\114\117\110'or not cp then return end if bO.skip then local cr=bE
.skipRequest(b9('\067\117\116\083\099\101\110\101\067\111\110\116\114\111\108\108\101\114'))if not cr then ck=nil elseif not ck or ck.
name~=cr.name or ck.id~=cr.id or ck.session~=cr.session then ck=cr local cs=c(
'\067\117\116\083\099\101\110\101\083\101\114\118\105\099\101')if cr.private then ca(cs:VoteSkipPrivate(cr.id,cr.name))else
ca(cs:VoteSkip(cr.name,cr.id))end end end if workspace:GetAttribute('\073\110\067\117\116\083\099\101\110\101'
)then return end if bO.swing and not game:GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101'):
GetFocusedTextBox()then local cr=b9('\084\111\111\108\067\111\110\116\114\111\108\108\101\114')local cs=cr and cr.
ActiveTool local ct=b9('\085\073\067\111\110\116\114\111\108\108\101\114')if cs and cs.Tool and cs.Tool.Name:find(
'\080\105\099\107\097\120\101',1,true)and type(cs.Swing)=='\102\117\110\099\116\105\111\110'and not(ct and ct.ActiveFrame and
ct.ActiveFrame.Visible)then cs:Swing()end end if os.clock()<cm then return end
cm=os.clock()+3 if bO.upgrades and bP.upgrades<bW.limit then local cr=b9(
'\068\114\105\108\108\085\112\103\114\097\100\101\067\111\110\116\114\111\108\108\101\114')if cr and not cr.PurchasePending and not cr.CardsLocked
and not cr.ActiveClassReward and cr.OptionsVersion~=nil then local cs=cr.
OptionsVersion local ct=cr.RollToken local cu=ca(c('\067\117\114\114\101\110\099\121\083\101\114\118\105\099\101'):
GetCurrency())if not bM or not bO.upgrades or cs~=cr.OptionsVersion or ct~=cr.
RollToken or cr.PurchasePending or cr.CardsLocked or cr.ActiveClassReward or not
cb()then return end local cv=bE.offer(cr.Options,cu,bW.reserve,bE.names(bW.
priority))if cv then bP.upgrades+=1 cr:SetPurchasePending(true)local cw,cx=
pcall(function()return ca(c('\068\114\105\108\108\083\101\114\118\105\099\101'):UpgradeDrill(cv.UpgradeName,cs))end)
if cs==cr.OptionsVersion and ct==cr.RollToken then cr:SetPurchasePending(false)
end if not cw then error(cx)end if not bM then return end if cx=='\112\114\111\109\112\116\101\100'then
bO.upgrades=false bR.upgrades(false)b2(
'\079\032\106\111\103\111\032\114\101\116\111\114\110\111\117\032\117\109\032\102\108\117\120\111\032\100\101\032\099\111\109\112\114\097\059\032\097\117\116\111\109\097\u{e7}\u{e3}\111\032\100\101\115\097\116\105\118\097\100\097\046',
'\084\104\101\032\103\097\109\101\032\114\101\116\117\114\110\101\100\032\097\032\112\117\114\099\104\097\115\101\032\102\108\111\119\059\032\097\117\116\111\109\097\116\105\111\110\032\100\105\115\097\098\108\101\100\046')else b2(bI(
'\077\101\108\104\111\114\105\097\032\115\111\108\105\099\105\116\097\100\097\058\032','\085\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\058\032')..cv.UpgradeName)end if type(cr.
FetchUpgradeOptions)=='\102\117\110\099\116\105\111\110'then cr:FetchUpgradeOptions()end end end end if
bO.medals and bP.medals<bW.medalLimit then local cr=b9('\076\097\114\114\121\067\111\110\116\114\111\108\108\101\114')if cr
and cr.Frame and cr.Frame.Visible and not cr.PurchasePending and cr:FindStation(
)then if not cl then local cs=bK:FindFirstChild('\083\104\097\114\101\100')local ct=cs and cs:
FindFirstChild('\076\097\114\114\121\067\111\110\102\105\103')if ct then cl=require(ct).Upgrades end end local cs
=cl and bE.medalOffer(cl,cr.State,bW.medalReserve,bE.names(bW.medalPriority))if
cs then bP.medals+=1 cr:BuyUpgrade(cs)b2(bI('\077\101\108\104\111\114\105\097\032\099\111\109\032\109\101\100\097\108\104\097\115\032\115\111\108\105\099\105\116\097\100\097\058\032'
,'\077\101\100\097\108\032\117\112\103\114\097\100\101\032\114\101\113\117\101\115\116\101\100\058\032')..cs)end end end if bO.craft and bP.craft<bW.
craftLimit then local cr=b9('\067\114\097\102\116\105\110\103\067\111\110\116\114\111\108\108\101\114')if cr and cr.CurrentItem and
not cr.PendingCraft and cr.Frame and cr.Frame.Visible and not cr:
CanPurchaseWithRobux(cr.CurrentItem)and cr:CanCraft(cr.CurrentItem)then bP.craft
+=1 cr:CraftCurrentItem()b2(
'\070\097\098\114\105\099\097\u{e7}\u{e3}\111\032\115\111\108\105\099\105\116\097\100\097\032\112\097\114\097\032\111\032\105\116\101\109\032\115\101\108\101\099\105\111\110\097\100\111\046',
'\067\114\097\102\116\032\114\101\113\117\101\115\116\101\100\032\102\111\114\032\116\104\101\032\115\101\108\101\099\116\101\100\032\105\116\101\109\046')end end end)if not co then b2(bI(
'\065\103\117\097\114\100\097\110\100\111\032\047\032\101\114\114\111\058\032','\087\097\105\116\105\110\103\032\047\032\101\114\114\111\114\058\032')..tostring(cp))cm=os.clock()+8 end
task.wait(0.2)end end)end local bG,bH,bI=false,nil,false local bJ=task.spawn(
function()bG,bH=pcall(bF,{ui=aP,page=aO('\070\097\114\109'),T=function(bJ,bK)return ab.
language=='\112\116'and bJ or bK end,progress=bw,attach=function(bJ)aj=bJ end,section=
aO,quick=function(bJ)ak=bJ end})bI=true end)local bK=os.clock()+45 while al and
not bI and os.clock()<bK do task.wait(0.05)end if not bI then pcall(task.cancel,
bJ)bG=false bH=ap('\084\101\109\112\111\032\108\105\109\105\116\101\032\100\101\032\052\053\032\115\101\103\117\110\100\111\115\032\101\120\099\101\100\105\100\111\046\032\u{da}\108\116\105\109\097\032\101\116\097\112\097\058\032',
'\052\053\045\115\101\099\111\110\100\032\116\105\109\101\111\117\116\046\032\076\097\115\116\032\115\116\097\103\101\058\032')..bk.Text end if not al then return end if not
bG then if aj then pcall(aj)aj=nil end bj.Text=ap(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\099\097\114\114\101\103\097\114\032\097\115\032\102\117\110\u{e7}\u{f5}\101\115',
'\067\111\117\108\100\032\110\111\116\032\108\111\097\100\032\116\104\101\032\102\101\097\116\117\114\101\115')bk.Text=ap(
'\070\101\099\104\101\032\111\032\112\097\105\110\101\108\032\101\032\116\101\110\116\101\032\110\111\118\097\109\101\110\116\101\046\032\068\101\116\097\108\104\101\115\058\032',
'\067\108\111\115\101\032\116\104\101\032\112\097\110\101\108\032\097\110\100\032\116\114\121\032\097\103\097\105\110\046\032\068\101\116\097\105\108\115\058\032')..tostring(bH)bo.Text=ap(
'\067\097\114\114\101\103\097\109\101\110\116\111\032\105\110\116\101\114\114\111\109\112\105\100\111','\076\111\097\100\105\110\103\032\105\110\116\101\114\114\117\112\116\101\100')ab.ready()return end local
function bL(bM,bN)local bO,bP,bQ=false,false,nil local bR=task.spawn(function()
bP,bQ=pcall(bM)bO=true end)local bS=os.clock()+bN while al and not bO and os.
clock()<bS do task.wait(0.05)end if not bO then pcall(task.cancel,bR)return
false,ap('\084\101\109\112\111\032\108\105\109\105\116\101\032\101\120\099\101\100\105\100\111','\084\105\109\101\032\108\105\109\105\116\032\101\120\099\101\101\100\101\100')end return bP,bQ end bw(
0.92,'\077\111\110\116\097\110\100\111\032\111\115\032\097\106\117\115\116\101\115\032\100\101\032\116\101\108\097\u{2026}','\066\117\105\108\100\105\110\103\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\u{2026}')
local bM local bN,bO=bL(function()local bN=aO('\065\106\117\115\116\101\115')a_(bN)local bO=aP.
button(bN,ap('\u{1f1e7}\u{1f1f7}\032\032\073\100\105\111\109\097\058\032\080\111\114\116\117\103\117\u{ea}\115\032\032\u{b7}\032\032\065\108\116\101\114\097\114',
'\u{1f1fa}\u{1f1f8}\032\032\076\097\110\103\117\097\103\101\058\032\069\110\103\108\105\115\104\032\032\u{b7}\032\032\067\104\097\110\103\101'),870)ar(bO.Activated,
function()if type(ab.chooseLanguage)=='\102\117\110\099\116\105\111\110'then ab.chooseLanguage()end end)
aP.label(bN,'\084\101\120\116\076\097\098\101\108',ap(
'\084\114\111\099\097\114\032\111\032\105\100\105\111\109\097\032\114\101\097\098\114\101\032\111\032\112\097\105\110\101\108\032\099\111\109\032\097\115\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\032\112\097\117\115\097\100\097\115\046',
'\067\104\097\110\103\105\110\103\032\108\097\110\103\117\097\103\101\032\114\101\111\112\101\110\115\032\116\104\101\032\112\097\110\101\108\032\119\105\116\104\032\097\117\116\111\109\097\116\105\111\110\032\112\097\117\115\101\100\046'),44,871)aP.label(
bN,'\084\101\120\116\076\097\098\101\108',ab.language=='\112\116'and
'\084\111\113\117\101\032\065\058\032\097\098\114\105\114\047\102\101\099\104\097\114\046\032\083\101\103\117\114\101\032\048\044\054\053\115\032\101\032\115\111\108\116\101\058\032\112\097\114\097\114\032\097\117\116\111\109\097\u{e7}\u{f5}\101\115\046\032\065\114\114\097\115\116\101\058\032\109\111\118\101\114\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\105\110\101\108\046'
or
"\084\097\112\032\065\058\032\116\111\103\103\108\101\032\112\097\110\101\108\046\032\072\111\108\100\032\048\046\054\053\115\032\097\110\100\032\114\101\108\101\097\115\101\058\032\115\116\111\112\032\097\117\116\111\109\097\116\105\111\110\046\032\068\114\097\103\058\032\109\111\118\101\046\032\082\105\103\104\116\067\116\114\108\058\032\112\097\110\101\108\046"
,68,900)local bP=aP.label(bN,'\084\101\120\116\066\111\120','\069\066\065\053\070\070',40,902)bP.ClearTextOnFocus=false
aP.label(bN,'\084\101\120\116\076\097\098\101\108',ab.language=='\112\116'and
'\067\111\114\032\100\101\032\100\101\115\116\097\113\117\101\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\120\046\058\032\070\070\067\065\052\050\041'or
'\065\099\099\101\110\116\032\099\111\108\111\114\058\032\104\101\120\097\100\101\099\105\109\097\108\032\040\101\046\103\046\032\070\070\067\065\052\050\041',30,901)local bQ=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\084\104\101\109\101\046\106\115\111\110'local bR='\065\109\101\116\104\121\115\116'local bS={Amethyst={'\048\067\048\067\049\048',
'\050\055\049\056\051\053','\057\054\051\067\068\067','\070\070\070\053\070\070','\067\065\066\052\068\056','\069\066\065\053\070\070','\049\057\048\070\050\051'},Potato={'\050\051\049\070\049\057','\052\049\051\054\050\055'
,'\055\052\053\056\051\049','\070\067\070\054\069\050','\068\053\067\051\065\051','\069\066\065\053\070\070','\051\048\050\055\049\068'},Bloodmoon={'\049\055\048\067\049\051','\051\048\049\051\049\070',
'\054\066\050\054\051\068','\070\070\069\065\070\048','\068\050\065\048\066\048','\070\070\052\053\054\056','\050\051\048\070\049\065'},Midnight={'\049\048\049\051\049\069','\049\068\050\052\051\054',
'\051\053\052\054\054\053','\069\068\070\051\070\070','\065\052\066\051\067\067','\055\051\057\070\070\070','\049\053\049\066\050\065'},Emerald={'\048\066\049\057\049\054','\049\052\050\069\050\054',
'\050\066\053\057\052\055','\069\054\070\070\070\051','\057\069\067\054\066\051','\053\054\068\068\065\048','\049\048\050\052\049\069'},Arctic={'\049\049\049\066\050\054','\049\067\050\068\051\068','\051\054\053\049\054\065'
,'\069\066\070\056\070\070','\065\057\067\055\068\065','\055\057\068\057\070\070','\049\055\050\051\051\049'}}local function bT(bU)return Color3.
fromRGB(tonumber(bU:sub(1,2),16),tonumber(bU:sub(3,4),16),tonumber(bU:sub(5,6),
16))end local function bU()if type(writefile)=='\102\117\110\099\116\105\111\110'then task.spawn(
function()pcall(writefile,bQ,ae:JSONEncode({preset=bR,hex=bP.Text}))end)end end
local function bW(bX)if type(bX)~='\115\116\114\105\110\103'or not bX:match('\094\037\120\037\120\037\120\037\120\037\120\037\120\036')then
return false end ao=Color3.fromRGB(tonumber(bX:sub(1,2),16),tonumber(bX:sub(3,4)
,16),tonumber(bX:sub(5,6),16))am.accent=ao aF.BackgroundColor3=ao az.
BackgroundColor3=ao aN(aJ)for bY,bZ in ipairs(aQ)do bZ()end for bY,bZ in pairs(
aH)do bZ.ScrollBarImageColor3=ao end bP.Text=bX return true end local function
bX(bY)local bZ=bS[bY]if not bZ then return end bR=bY for b_,b0 in ipairs({'\100\097\114\107'
,'\116\105\108\101','\101\100\103\101','\116\101\120\116','\109\117\116\101\100','\097\099\099\101\110\116','\115\105\100\101\098\097\114'})do am[b0]=bT(bZ[b_])end ao=am.
accent for b_,b0 in pairs(an)do if b_.Parent then for b1,b2 in pairs(b0)do b_[b1
]=am[b2]end end end local b_=aw:FindFirstChildOfClass('\085\073\071\114\097\100\105\101\110\116')if b_ then b_
.Color=ColorSequence.new(am.tile,am.dark)end bW(bZ[6])end aP.label(bN,
'\084\101\120\116\076\097\098\101\108',ap('\084\069\077\065\083\032\080\082\079\078\084\079\083','\084\072\069\077\069\032\080\082\069\083\069\084\083'),32,880)for bY,bZ in ipairs({
'\065\109\101\116\104\121\115\116','\080\111\116\097\116\111','\066\108\111\111\100\109\111\111\110','\077\105\100\110\105\103\104\116','\069\109\101\114\097\108\100','\065\114\099\116\105\099'})do local b_=aP.
button(bN,bZ,880+bY)ar(b_.Activated,function()bX(bZ)bU()end)end bM=function()if
type(readfile)=='\102\117\110\099\116\105\111\110'then local bY=readfile(bQ)if type(bY)=='\115\116\114\105\110\103'and#bY
<=2048 then local bZ=ae:JSONDecode(bY)if al and bP.Parent and type(bZ)=='\116\097\098\108\101'
then if bS[bZ.preset]then bX(bZ.preset)end bW(bZ.hex)end end end end ar(bP.
FocusLost,function()local bY=bP.Text:gsub('\035',''):upper()if bW(bY)then bU()end
end)end,5)if not al then return end bw(0.96,
'\065\106\117\115\116\097\110\100\111\032\111\032\112\097\105\110\101\108\032\u{e0}\032\115\117\097\032\116\101\108\097\u{2026}',
'\070\105\116\116\105\110\103\032\116\104\101\032\112\097\110\101\108\032\116\111\032\121\111\117\114\032\115\099\114\101\101\110\u{2026}')local bP,bQ=pcall(aY)if not bP then
aU=table.clone(aT)pcall(aY)end local bR if not bN or not bP then bR=ap(
'\065\106\117\115\116\101\115\032\118\105\115\117\097\105\115\032\105\110\099\111\109\112\108\101\116\111\115\058\032','\083\111\109\101\032\100\105\115\112\108\097\121\032\115\101\116\116\105\110\103\115\032\102\097\105\108\101\100\058\032')..tostring(bO
or bQ)aE.Text=bR warn('\091\065\110\111\110\072\117\098\032'..aa..'\093\032'..bR)end bw(1,
'\080\097\105\110\101\108\032\112\114\111\110\116\111\046\032\065\115\032\102\117\110\u{e7}\u{f5}\101\115\032\101\115\116\u{e3}\111\032\112\097\117\115\097\100\097\115\046',
'\080\097\110\101\108\032\114\101\097\100\121\046\032\070\101\097\116\117\114\101\115\032\097\114\101\032\112\097\117\115\101\100\046')bj.Text=ap('\083\101\117\032\112\097\105\110\101\108\032\101\115\116\u{e1}\032\112\114\111\110\116\111',
'\089\111\117\114\032\112\097\110\101\108\032\105\115\032\114\101\097\100\121')be=true if bg()then bh:Destroy()else task.spawn(function()
while al and bh.Parent and not bg()do task.wait(0.05)end if al and bh.Parent
then bh:Destroy()end end)end pcall(ab.ready)if bM then task.defer(function()bL(
bM,2)end)end end local aa='\048\046\052\048\046\054'local ab={[9796898051]={name='\069\097\114\116\104\032\067\111\114\101',
version='\048\046\052\048\046\054',online=true,place=101906032112547,places={[101906032112547]=
true,[74507545904779]=true},path='\101\097\114\116\104\099\111\114\101\047\109\097\105\110\046\108\117\097',cache=
'\065\110\111\110\072\117\098\095\069\097\114\116\104\067\111\114\101\095\048\052\048\048\054\046\108\117\097',theme='\097\109\101\116\104\121\115\116'},[10772968523]={name=
'\073\109\112\111\115\115\105\098\108\101\032\072\105\108\108\032\067\108\105\109\098',version='\048\046\051\056\046\049\051',world='\049',online=true,place=
100981917200669,path='\104\105\108\108\099\108\105\109\098\047\109\097\105\110\046\108\117\097',cache='\065\110\111\110\072\117\098\095\072\105\108\108\095\048\051\056\049\051\046\108\117\097',theme=
'\097\109\101\116\104\121\115\116'},[10770228857]={name='\083\116\101\097\108\032\097\032\083\117\112\101\114\112\111\119\101\114',version='\048\046\051\057\046\052',world=
'\049\032\047\032\050',online=true,place=74183246285569,places={[74183246285569]=true,[
82739382053686]=true},path='\115\117\112\101\114\112\111\119\101\114\047\109\097\105\110\046\108\117\097',cache='\065\110\111\110\072\117\098\095\083\080\095\048\051\057\048\052\046\108\117\097',
theme='\099\097\114\098\111\110'},[10767408330]={name='\080\101\101\108\032\084\072\069\032\080\111\116\097\116\111',chapter='\050',version=
'\048\046\051\055\046\054',place=116701845804918,path='\112\111\116\097\116\111\047\099\104\097\112\116\101\114\050\046\108\117\097',cache=
'\069\118\111\108\118\121\095\067\104\097\112\116\101\114\050\095\077\097\105\110\046\108\117\097\117'}}local ac={name='\085\110\105\118\101\114\115\097\108',version='\048\046\051\055\046\056',path=
'\117\110\105\118\101\114\115\097\108\047\109\097\105\110\046\108\117\097',cache='\065\110\111\110\072\117\098\095\085\110\105\118\101\114\115\097\108\095\118\049\046\108\117\097\117'}local ad=
"\104\116\116\112\115\058\047\047\114\097\119\046\103\105\116\104\117\098\117\115\101\114\099\111\110\116\101\110\116\046\099\111\109\047\065\110\111\110\121\109\111\115\083\099\114\105\112\116\115\047\065\110\111\110\072\117\098\047\109\097\105\110\047"local ae=
'\097\110\111\110\107\101\121\050\052\104\114\115'local af='\104\116\116\112\115\058\047\047\115\101\099\117\114\101\046\112\097\110\100\097\117\116\104\046\099\111\109\047\112\118\052\047\108\105\098'local ag=
'\065\110\111\110\072\117\098\095\080\097\110\100\097\095\075\101\121\095\118\049\046\106\115\111\110'local ah=
'\104\116\116\112\115\058\047\047\119\119\119\046\121\111\117\116\117\098\101\046\099\111\109\047\064\065\110\111\110\121\109\111\117\115\065\112\107\115\095\083\099\114\105\112\116\115'local ai=
'\065\110\111\110\072\117\098\095\080\114\101\102\101\114\101\110\099\101\115\095\118\049\046\106\115\111\110'local aj=type(getgenv)=='\102\117\110\099\116\105\111\110'and getgenv()or
_G local ak=game:GetService('\080\108\097\121\101\114\115')local al=game:GetService('\072\116\116\112\083\101\114\118\105\099\101')if
not game:IsLoaded()then game.Loaded:Wait()end if not ak.LocalPlayer then ak:
GetPropertyChangedSignal('\076\111\099\097\108\080\108\097\121\101\114'):Wait()end local am=ak.LocalPlayer local
an=am:WaitForChild('\080\108\097\121\101\114\071\117\105')local ao=aj.AnonHubPreferences if type(ao)~=
'\116\097\098\108\101'then local ap,aq=pcall(function()local ap=readfile(ai)if type(ap)==
'\115\116\114\105\110\103'and#ap<=8192 then return al:JSONDecode(ap)end end)ao=ap and type(aq)==
'\116\097\098\108\101'and aq.schema==1 and aq or{schema=1}aj.AnonHubPreferences=ao end local
function ap()if type(writefile)=='\102\117\110\099\116\105\111\110'then pcall(function()writefile(ai,al:
JSONEncode(ao))end)end end local function aq(ar)if type(ar)~='\115\116\114\105\110\103'or#ar>512
then return nil end local as=ar:match('\094\037\115\042\040\046\045\041\037\115\042\036')if as~=''and not as:find(
'\037\115')and not as:find('\037\099')then return as end end local ar local function as()if
ar~=nil then return ar or nil end ar=false if type(readfile)~='\102\117\110\099\116\105\111\110'then
return end local at,au=pcall(function()local at=readfile(ag)if type(at)==
'\115\116\114\105\110\103'and#at<=2048 then return al:JSONDecode(at)end end)if at and type(au)==
'\116\097\098\108\101'and au.service==ae and au.account==am.UserId then ar=aq(au.key)or false
end return ar or nil end local function at(au)ar=au or false if type(writefile)
=='\102\117\110\099\116\105\111\110'then pcall(function()writefile(ag,al:JSONEncode({service=ae,account=
am.UserId,key=au}))end)end end local function au()if ae==''then return nil,
'\078\079\095\083\069\082\086\073\067\069'end local av,aw=pcall(game.HttpGet,game,af)if not av or type(aw)~=
'\115\116\114\105\110\103'then return nil,'\078\069\084\087\079\082\075'end local ax,ay=pcall(function()local ax=
assert(loadstring(aw,'\080\097\110\100\097\032\065\117\116\104\032\083\068\075'))()assert(type(ax)=='\116\097\098\108\101'and type(ax.
configure)=='\102\117\110\099\116\105\111\110'and type(ax.validate)=='\102\117\110\099\116\105\111\110'and type(ax.getKeyUrl)==
'\102\117\110\099\116\105\111\110'and type(ax.disconnect)=='\102\117\110\099\116\105\111\110')ax.configure({serviceId=ae,debug=
false,kickOnDetect=false})return ax end)if not ax then return nil,'\080\082\079\084\079\067\079\076'end
return ay end local function av(aw)return type(aw)=='\110\117\109\098\101\114'and aw==aw and math.
abs(aw)<math.huge end local function aw(ax,ay)local az,aA=pcall(ax.validate,ay)
if not az then return nil,'\078\069\084\087\079\082\075'end if type(aA)~='\116\097\098\108\101'then return nil,
'\080\082\079\084\079\067\079\076'end if aA.success~=true then return nil,aA.reason or'\080\082\079\084\079\067\079\076'end
local aB=aA.expiresAtUnix local aC=aA.timeLeft if aB~=nil and not av(aB)then
return nil,'\080\082\079\084\079\067\079\076'end if aC~=nil and not av(aC)then return nil,'\080\082\079\084\079\067\079\076'end
if not aB and aA.expiresAt~=nil then local aD,aE=pcall(DateTime.fromIsoDate,aA.
expiresAt)if aD and aE then aB=aE.UnixTimestamp end if not av(aB)then return nil
,'\080\082\079\084\079\067\079\076'end end if aC==nil and aB then aC=aB-os.time()end if aC and aC<=0
then return nil,'\069\088\080\073\082\069\068'end aB=aB or(aC and os.time()+aC)if aB and(aB<=0 or aB>
253402300799)then return nil,'\080\082\079\084\079\067\079\076'end return{plan=aA.isPremium==true and
'\080\114\101\109\105\117\109'or'\077\101\109\098\101\114',keyLabel=#ay>8 and'\u{2022}\u{2022}\u{2022}\u{2022}'..ay:
sub(-4)or'\u{2022}\u{2022}\u{2022}\u{2022}',expiresAt=aB,deadline=aC and os.
clock()+aC or nil,lifetime=aC==nil,source='\080\097\110\100\097\032\065\117\116\104'}end local ax=
'\065\110\111\110\072\117\098\095\076\097\117\110\099\104\101\114\095\118\049\046\112\110\103'local ay=string.char(137,80,78,71,13,10,26,10)local az=
type(getcustomasset)=='\102\117\110\099\116\105\111\110'and getcustomasset or type(getsynasset)==
'\102\117\110\099\116\105\111\110'and getsynasset or nil local aA,aB local aC={}local function aD(aE)
return type(aE)=='\115\116\114\105\110\103'and#aE>=24 and#aE<=4*1024*1024 and aE:sub(1,#ay)==ay
end local function aE()local aF=false if type(readfile)=='\102\117\110\099\116\105\111\110'then local aG
,aH=pcall(readfile,ax)aF=aG and aD(aH)end if not aF then if type(writefile)~=
'\102\117\110\099\116\105\111\110'then return end local aG,aH=pcall(game.HttpGet,game,ad..
'\097\115\115\101\116\115\047\097\110\111\110\104\117\098\045\108\097\117\110\099\104\101\114\046\112\110\103\063\118\061\049')if not aG or not aD(aH)then return end local
aI,aJ=pcall(writefile,ax,aH)if not aI or aJ==false then return end end local aG,
aH=pcall(az,ax)if aG and type(aH)=='\115\116\114\105\110\103'and(aH:match('\094\114\098\120\097\115\115\101\116\058\047\047\046\043')or aH:
match('\094\114\098\120\097\115\115\101\116\105\100\058\047\047\037\100\043\036'))then return aH end end local function aF(aG,aH)if
not aG.Parent or aG:FindFirstChild('\065\110\111\110\072\117\098\076\097\117\110\099\104\101\114\073\099\111\110')then return end local
aI=Instance.new('\073\109\097\103\101\076\097\098\101\108')aI.Name='\065\110\111\110\072\117\098\076\097\117\110\099\104\101\114\073\099\111\110'aI.Size=UDim2.
fromScale(1,1)aI.BackgroundTransparency=1 aI.BorderSizePixel=0 aI.Active=false
aI.ScaleType=Enum.ScaleType.Crop aI.ZIndex=aG.ZIndex+1 local aJ=Instance.new(
'\085\073\067\111\114\110\101\114')local aL=aG:FindFirstChildOfClass('\085\073\067\111\114\110\101\114')aJ.CornerRadius=aL and
aL.CornerRadius or UDim.new(0,7)aJ.Parent=aI local function aM()if aI.Parent and
aI.IsLoaded then aG.TextTransparency=1 end end aI:GetPropertyChangedSignal(
'\073\115\076\111\097\100\101\100'):Connect(aM)aI.Parent=aG aI.Image=aH aM()end local function aG(aH)if
not az then return end if aA then aH(aA)return end table.insert(aC,aH)if aB then
return end aB=true task.spawn(function()aA=aE()aB=false local aI=aC aC={}if aA
then for aJ,aL in ipairs(aI)do aL(aA)end end end)end local function aH(aI)aG(
function(aJ)aF(aI,aJ)end)end local function aI(aJ)aG(function(aL)if aJ.Parent
then aJ.Image=aL end end)end local function aJ(aL)return Color3.fromRGB(
tonumber(aL:sub(1,2),16),tonumber(aL:sub(3,4),16),tonumber(aL:sub(5,6),16))end
local function aL(aM,aN,aO,aP,aQ,aR,aS,aT,aU)return{dark=aJ(aM),tile=aJ(aN),text
=aJ(aO),muted=aJ(aP),accent=aJ(aQ),active=aJ(aR),edge=aJ(aS),top=aJ(aT),bottom=
aJ(aU)}end local aM={peel=aL('\050\051\049\070\049\057','\052\049\051\054\050\055','\070\067\070\054\069\050','\068\053\067\051\065\051','\070\070\067\065\052\050',
'\056\048\067\068\051\055','\055\052\053\056\051\049','\070\070\070\049\068\054','\066\048\056\052\053\053'),carbon=aL('\049\048\049\049\049\056','\049\057\049\066\050\054','\070\050\070\050\070\065',
'\065\056\065\069\067\051','\066\051\065\068\070\070','\056\049\068\068\067\048','\051\051\051\054\052\065','\051\048\051\051\052\068','\049\056\049\065\050\054'),midnight=aL('\048\068\049\053\050\052',
'\049\056\050\055\052\048','\070\049\070\054\070\070','\065\057\066\067\068\057','\055\055\066\057\070\070','\056\048\069\057\066\069','\051\055\053\067\056\056','\050\052\051\068\054\053','\049\048\049\068\051\051'),blood=
aL('\049\067\048\068\049\055','\051\054\049\054\050\054','\070\070\070\048\070\052','\068\067\065\068\066\068','\070\070\055\065\056\068','\070\070\057\065\065\069','\056\055\052\048\053\056','\054\066\050\052\051\067',
'\050\065\049\049\050\049'),aurora=aL('\048\065\050\048\049\070','\049\053\051\053\051\051','\069\069\070\070\070\056','\065\053\067\067\066\069','\054\067\070\053\066\056','\065\048\069\066\065\070',
'\050\070\055\054\054\065','\050\055\053\066\053\053','\049\050\051\048\050\070'),amethyst=aL('\049\057\048\070\050\066','\050\067\050\048\052\056','\070\056\070\048\070\070','\067\052\066\049\069\050',
'\067\069\057\066\070\070','\068\057\066\048\070\070','\054\055\052\067\057\066','\053\048\051\057\055\054','\050\049\049\055\051\054'),arctic=aL('\048\068\050\048\050\065','\049\057\051\054\052\054',
'\069\067\070\065\070\070','\065\067\067\068\068\057','\056\055\069\053\070\053','\065\051\069\067\069\049','\052\051\055\069\057\052','\051\052\053\069\055\050','\049\050\050\057\051\056')}local aN={{
'\099\097\114\098\111\110','\067\097\114\098\111\110'},{'\109\105\100\110\105\103\104\116','\077\105\100\110\105\103\104\116'},{'\098\108\111\111\100','\066\108\111\111\100\032\077\111\111\110'},{'\097\117\114\111\114\097',
'\065\117\114\111\114\097'},{'\097\109\101\116\104\121\115\116','\065\109\101\116\104\121\115\116'},{'\097\114\099\116\105\099','\065\114\099\116\105\099'}}local function aO(aP)local
aQ={}local aR=setmetatable({},{__mode='\107'})local function aS(aT,aU,aV)if type(aV
)=='\116\097\098\108\101'then aT[aU]=ColorSequence.new(aQ[aV[1] ],aQ[aV[2] ])else aT[aU]=aQ[aV]
end end local function aT(aU,aV,aW)local aX=aR[aU]or{}aR[aU]=aX aX[aV]=aW aS(aU,
aV,aW)end local function aU(aV)for aW,aX in pairs(aM[aV]or aM.midnight)do aQ[aW]
=aX end for aW,aX in pairs(aR)do if aW.Parent then for aY,aZ in pairs(aX)do aS(
aW,aY,aZ)end end end end aU(aP)local function aV(aW,aX,aY)local aZ=Instance.new(
aW)for a_,a0 in pairs(aX)do local a1=type(a0)=='\115\116\114\105\110\103'and a_:find('\067\111\108\111\114',1,
true)and a0:match('\094\064\040\037\097\043\041\036')if a1 and aQ[a1]then aT(aZ,a_,a1)else aZ[a_]=a0 end
end aZ.Parent=aY return aZ end local function aW(aX,aY,aZ,a_)local a0=aV(
'\085\073\071\114\097\100\105\101\110\116',{Rotation=a_},aX)aT(a0,'\067\111\108\111\114',{aY,aZ})return a0 end local function
aX(aY,aZ,a_,a0,a1)return aV(aZ,{BackgroundTransparency=1,Text=a_,TextColor3=
'\064\116\101\120\116',TextSize=16,TextWrapped=true,Font=Enum.Font.GothamMedium,Size=UDim2.new(
1,0,0,a0),LayoutOrder=a1,BorderSizePixel=0,AutoLocalize=false},aY)end local
function aY(aZ,a_,a0)local a1=aV('\083\099\114\101\101\110\071\117\105',{Name='\065\110\111\110\072\117\098\076\097\117\110\099\104\101\114',
ResetOnSpawn=false,DisplayOrder=10030},an)local a2=aV('\070\114\097\109\101',{Size=UDim2.
fromScale(1,1),BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=a_==
false and 1 or a0 and 0.22 or 0.3,BorderSizePixel=0,Active=a_~=false},a1)local
a3=aV('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Size=UDim2.fromScale(0.9,0.92),AnchorPoint=Vector2.new(
0.5,0.5),Position=UDim2.fromScale(0.5,0.5),BackgroundColor3='\064\100\097\114\107',
BorderSizePixel=0,CanvasSize=UDim2.fromOffset(0,0),AutomaticCanvasSize=Enum.
AutomaticSize.Y,ScrollingDirection=Enum.ScrollingDirection.Y,ScrollBarThickness=
3,ScrollBarImageColor3='\064\097\099\099\101\110\116',ElasticBehavior=aP=='\112\101\101\108'and Enum.
ElasticBehavior.WhenScrollable or Enum.ElasticBehavior.Never},a2)aV(
'\085\073\083\105\122\101\067\111\110\115\116\114\097\105\110\116',{MaxSize=Vector2.new(a0 and 550 or a_==false and 520 or 470,
aZ)},a3)aV('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,a0 and 16 or 9)},a3)aV('\085\073\083\116\114\111\107\101'
,{Color='\064\101\100\103\101',Thickness=a0 and 1 or 2},a3)aV('\085\073\080\097\100\100\105\110\103',{PaddingTop=UDim.new(
0,12),PaddingBottom=UDim.new(0,12),PaddingLeft=UDim.new(0,16),PaddingRight=UDim.
new(0,16)},a3)aV('\085\073\076\105\115\116\076\097\121\111\117\116',{SortOrder=Enum.SortOrder.LayoutOrder,Padding=
UDim.new(0,6)},a3)local a4=aV('\070\114\097\109\101',{Size=UDim2.new(1,0,0,a0 and 49 or 42),
LayoutOrder=0,BackgroundColor3=a0 and'\064\100\097\114\107'or'\064\101\100\103\101',BorderSizePixel=0,Active=
true},a3)aV('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,7)},a4)if a0 then local a5=aX(a4
,'\084\101\120\116\076\097\098\101\108','\065',30,0)a5.Position,a5.Size=UDim2.fromOffset(0,6),UDim2.
fromOffset(30,30)a5.BackgroundTransparency=0 a5.Font,a5.TextSize=Enum.Font.
GothamBlack,17 aT(a5,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051','\097\099\099\101\110\116')aT(a5,'\084\101\120\116\067\111\108\111\114\051','\100\097\114\107')aV(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,9)},a5)local a6=aX(a4,'\084\101\120\116\076\097\098\101\108','\065\110\111\110\072\117\098',
40,0)a6.Position,a6.Size=UDim2.fromOffset(41,1),UDim2.new(1,-130,0,40)a6.Font,a6
.TextSize,a6.TextXAlignment=Enum.Font.GothamBold,18,Enum.TextXAlignment.Left
local a7=aX(a4,'\084\101\120\116\076\097\098\101\108','\085\078\073\086\069\082\083\065\076',24,0)a7.Position,a7.Size=UDim2.new(1,-82,
0,9),UDim2.fromOffset(82,24)a7.Font,a7.TextSize,a7.BackgroundTransparency=Enum.
Font.Code,10,0 aT(a7,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051','\116\105\108\101')aT(a7,'\084\101\120\116\067\111\108\111\114\051','\097\099\099\101\110\116')aV(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,6)},a7)else aW(a4,'\116\111\112','\098\111\116\116\111\109',90)local a5
=aX(a4,'\084\101\120\116\076\097\098\101\108','\065\078\079\078\072\085\066',42,0)a5.Font,a5.TextSize=Enum.Font.GothamBlack,25
aT(a5,'\084\101\120\116\083\116\114\111\107\101\067\111\108\111\114\051','\100\097\114\107')a5.TextStrokeTransparency=0.32 end return a1,a3,
a2,a4 end local function aZ(a_,a0,a1,a2)local a3=aX(a_,'\084\101\120\116\066\117\116\116\111\110',a0,42,a1)a3.
BackgroundTransparency=0 aT(a3,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051',a2 and'\097\099\099\101\110\116'or'\116\105\108\101')aT(a3,
'\084\101\120\116\067\111\108\111\114\051',a2 and'\100\097\114\107'or'\116\101\120\116')a3.Font=Enum.Font.GothamBold aV('\085\073\067\111\114\110\101\114',{
CornerRadius=UDim.new(0,7)},a3)aV('\085\073\083\116\114\111\107\101',{Color='\064\101\100\103\101',Thickness=1},a3)
return a3 end local function a_(a0,a1,a2,a3)local a4=aZ(a0,'',a3)a4.Name=a1..
'\066\117\116\116\111\110'local a5=aX(a4,'\084\101\120\116\076\097\098\101\108',a2,42,0)a5.Position,a5.Size=UDim2.fromOffset(
37,0),UDim2.new(1,-44,1,0)a5.Font,a5.TextSize=Enum.Font.GothamBold,12 a5.
TextXAlignment=Enum.TextXAlignment.Left local a6=aV('\070\114\097\109\101',{Name=a1..'\073\099\111\110',
Position=UDim2.new(0,11,0.5,0),AnchorPoint=Vector2.new(0,0.5),Size=UDim2.
fromOffset(18,18),BackgroundTransparency=1},a4)local a7=Color3.fromRGB(255,255,
255)if a1=='\089\111\117\084\117\098\101'then local a8=aV('\070\114\097\109\101',{Position=UDim2.fromOffset(0,3),
Size=UDim2.fromOffset(18,12),BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(
255,32,52)},a6)aV('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,4)},a8)local a9=aX(a8,
'\084\101\120\116\076\097\098\101\108','\u{25b6}',12,0)a9.Position,a9.TextSize,a9.TextColor3=UDim2.
fromOffset(0,-1),9,a7 else local a8=Color3.fromRGB(24,25,31)a6.
BackgroundTransparency=0.15 aT(a6,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051','\097\099\099\101\110\116')aV('\085\073\067\111\114\110\101\114',{
CornerRadius=UDim.new(0,5)},a6)local function a9(b,bb,bc,be,bf,bg,bh)local bi=
aV('\070\114\097\109\101',{Name=b,Position=UDim2.fromOffset(bb,bc),Size=UDim2.fromOffset(be,bf)
,BorderSizePixel=0,BackgroundColor3=bg,Rotation=bh or 0},a6)aV('\085\073\067\111\114\110\101\114',{
CornerRadius=UDim.new(1,0)},bi)end a9('\076\101\102\116\069\097\114',0,0,7,7,a8)a9('\082\105\103\104\116\069\097\114',11,0,7,
7,a8)a9('\070\097\099\101',1,3,16,14,a7)a9('\076\101\102\116\069\121\101',4,7,4,5,a8,28)a9('\082\105\103\104\116\069\121\101',10,7,4,5,a8
,-28)a9('\078\111\115\101',7,12,4,2,a8)end return a4,a5 end local function a0(a1)aW(a1,'\116\111\112'
,'\100\097\114\107',0)local a2=aV('\073\109\097\103\101\076\097\098\101\108',{Name='\065\110\111\110\072\117\098\065\114\116\119\111\114\107',AnchorPoint=Vector2.
new(1,0.5),Position=UDim2.fromScale(1,0.5),Size=UDim2.fromScale(0.6,1),
BackgroundTransparency=1,ScaleType=Enum.ScaleType.Crop,ImageTransparency=0.14,
ImageRectOffset=Vector2.new(530,76),ImageRectSize=Vector2.new(470,520)},a1)aV(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,10)},a2)aI(a2)local a3=aV('\070\114\097\109\101',{Size=
UDim2.fromScale(1,1),BackgroundColor3='\064\100\097\114\107',BorderSizePixel=0},a1)aV(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,10)},a3)aV('\085\073\071\114\097\100\105\101\110\116',{Transparency=
NumberSequence.new({NumberSequenceKeypoint.new(0,0.06),NumberSequenceKeypoint.
new(0.58,0.34),NumberSequenceKeypoint.new(1,0.93)})},a3)end local function a1(a2
,a3,a4,a5,a6,a7)local a8=a6 and 158 or 112 local a9=aV('\070\114\097\109\101',{Size=UDim2.new(1
,0,0,a8),BackgroundColor3='\064\116\105\108\101',BorderSizePixel=0,ClipsDescendants=true,
LayoutOrder=a5},a2)aV('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,a6 and 12 or 8)},a9)if
a6 then aV('\085\073\083\116\114\111\107\101',{Color='\064\101\100\103\101',Thickness=1},a9)end local b if a7 then a0(
a9)else b=aV('\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,
Image=a3.cover,ScaleType=Enum.ScaleType.Crop,ImageTransparency=a6 and 0.08 or
0.32},a9)local bb=aV('\070\114\097\109\101',{Size=UDim2.fromScale(1,1),BackgroundColor3='\064\100\097\114\107'
,BackgroundTransparency=a6 and 0.08 or 0.42,BorderSizePixel=0},a9)if a6 then aV(
'\085\073\071\114\097\100\105\101\110\116',{Rotation=90,Transparency=NumberSequence.new({
NumberSequenceKeypoint.new(0,0.94),NumberSequenceKeypoint.new(0.55,0.46),
NumberSequenceKeypoint.new(1,0)})},bb)end end local bb=aV('\073\109\097\103\101\076\097\098\101\108',{Position
=UDim2.fromOffset(a6 and 14 or 11,a6 and 71 or 18),Size=UDim2.fromOffset(76,76),
Image=a3.icon,BackgroundColor3='\064\100\097\114\107',BorderSizePixel=0,ScaleType=Enum.
ScaleType.Crop},a9)aV('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,9)},bb)aV('\085\073\083\116\114\111\107\101',{
Color='\064\101\100\103\101',Thickness=1},bb)local bc=aX(a9,'\084\101\120\116\076\097\098\101\108',a3.name,44,1)bc.
Position,bc.Size=UDim2.fromOffset(103,a6 and 80 or 22),UDim2.new(1,-115,0,44)bc.
Font,bc.TextSize=Enum.Font.GothamBold,a6 and 22 or 19 if not a6 then bc.Position
,bc.Size=UDim2.fromOffset(100,22),UDim2.new(1,-109,0,44)bc.Font=Enum.Font.
GothamBlack end bc.TextXAlignment=Enum.TextXAlignment.Left a3.watch(function(be)
if bc.Parent then bc.Text=be end end)if b and a3.watchCover then a3.watchCover(
function(be)if b.Parent then b.Image=be end end)end local be=aX(a9,'\084\101\120\116\076\097\098\101\108',
a4,27,2)be.Position,be.Size=UDim2.fromOffset(a6 and 104 or 100,a6 and 124 or 70)
,UDim2.new(1,a6 and-116 or-107,0,27)be.TextXAlignment,be.TextSize=Enum.
TextXAlignment.Left,11 if a6 then be.Font=Enum.Font.Code end aT(be,'\084\101\120\116\067\111\108\111\114\051',
'\097\099\099\101\110\116')return a9 end local function a2()local a3={}for a4,a5 in pairs(ab)do
table.insert(a3,{id=a4,module=a5})end table.sort(a3,function(a4,a5)return a4.
module.name<a5.module.name end)return a3 end local function a3(a4,a5,a6)local a7
=a5=='\112\116'local a8=a2()if#a8==0 then local a9=aX(a4,'\084\101\120\116\076\097\098\101\108',a7 and
'\078\101\110\104\117\109\032\109\u{f3}\100\117\108\111\032\100\101\100\105\099\097\100\111\032\110\111\032\099\097\116\u{e1}\108\111\103\111\046'or
'\078\111\032\100\101\100\105\099\097\116\101\100\032\109\111\100\117\108\101\115\032\105\110\032\116\104\101\032\099\097\116\097\108\111\103\046',40,a6)a9.TextSize=12 aT(a9,'\084\101\120\116\067\111\108\111\114\051',
'\109\117\116\101\100')end for a9,b in ipairs(a8)do local bb=b.module local bc=b.id==game.
GameId and(bb.place==game.PlaceId or bb.places and bb.places[game.PlaceId])local
be=aV('\070\114\097\109\101',{Name='\071\097\109\101\077\111\100\117\108\101',Size=UDim2.new(1,0,0,78),LayoutOrder=a6+a9-1,
BackgroundColor3='\064\116\105\108\101',BorderSizePixel=0},a4)aV('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.
new(0,9)},be)aV('\085\073\083\116\114\111\107\101',{Color='\064\101\100\103\101',Thickness=1},be)local bf=aV(
'\073\109\097\103\101\076\097\098\101\108',{Position=UDim2.fromOffset(11,13),Size=UDim2.fromOffset(52,52),
BackgroundColor3='\064\100\097\114\107',BorderSizePixel=0,ScaleType=Enum.ScaleType.Crop,Image=
string.format('\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\071\097\109\101\073\099\111\110\038\105\100\061\037\100\038\119\061\049\053\048\038\104\061\049\053\048',b.id)},be)aV(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,8)},bf)local bg=aX(be,'\084\101\120\116\076\097\098\101\108',bb.name,26
,0)bg.Position,bg.Size=UDim2.fromOffset(73,9),UDim2.new(1,-85,0,26)bg.Font,bg.
TextSize,bg.TextXAlignment=Enum.Font.GothamBold,15,Enum.TextXAlignment.Left bg.
TextWrapped,bg.TextTruncate=false,Enum.TextTruncate.AtEnd local bh=bb.world and(
a7 and'\077\117\110\100\111\032'or'\087\111\114\108\100\032')..bb.world or bb.chapter and(a7 and'\067\097\112\u{ed}\116\117\108\111\032'or
'\067\104\097\112\116\101\114\032')..bb.chapter or(a7 and'\077\u{f3}\100\117\108\111\032\100\101\100\105\099\097\100\111'or'\068\101\100\105\099\097\116\101\100\032\109\111\100\117\108\101')
local bi=aX(be,'\084\101\120\116\076\097\098\101\108',bh,16,0)bi.Position,bi.Size=UDim2.fromOffset(73,34),
UDim2.new(1,-85,0,16)bi.TextSize,bi.TextXAlignment=11,Enum.TextXAlignment.Left
aT(bi,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local bj=bb.online and(bc and(a7 and
'\079\078\076\073\078\069\032\u{b7}\032\074\079\071\079\032\065\066\069\082\084\079'or'\079\078\076\073\078\069\032\u{b7}\032\067\085\082\082\069\078\084\032\071\065\077\069')or'\079\078\076\073\078\069')or bc and(
a7 and'\074\079\071\079\032\065\066\069\082\084\079'or'\067\085\082\082\069\078\084\032\071\065\077\069')or(a7 and'\068\073\083\080\079\078\u{cd}\086\069\076'or'\065\086\065\073\076\065\066\076\069')
local bk=aX(be,'\084\101\120\116\076\097\098\101\108',bj,17,0)bk.Position,bk.Size=UDim2.fromOffset(73,53),
UDim2.new(1,-85,0,17)bk.Font,bk.TextSize,bk.TextXAlignment=Enum.Font.Code,10,
Enum.TextXAlignment.Left aT(bk,'\084\101\120\116\067\111\108\111\114\051','\097\099\116\105\118\101')end end local function a4(
a5,a6,a7,a8)local a9=a7=='\112\116'local b=aV('\070\114\097\109\101',{Size=UDim2.new(1,0,0,0),
AutomaticSize=Enum.AutomaticSize.Y,LayoutOrder=a6,BackgroundTransparency=1},a5)
aV('\085\073\076\105\115\116\076\097\121\111\117\116',{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,6)},b
)local bb=aV('\070\114\097\109\101',{Size=UDim2.new(1,0,0,42),LayoutOrder=1,
BackgroundTransparency=1},b)local bc=aZ(bb,'',0)bc.Size=UDim2.new(0.6,-4,1,0)bc.
TextSize=12 local be,bf=a_(bb,'\089\111\117\084\117\098\101','\089\111\117\084\117\098\101',0)be.Position,be.Size=UDim2.
new(0.6,4,0,0),UDim2.new(0.4,-4,1,0)local bg=a9 and'\074\111\103\111\115\032\099\111\109\032\109\u{f3}\100\117\108\111'or
'\071\097\109\101\115\032\119\105\116\104\032\109\111\100\117\108\101\115'if a8 then bc.Text=bg..'\032\032\u{203a}'bc.Activated:Connect(a8)
else local bh=aV('\070\114\097\109\101',{Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.
AutomaticSize.Y,LayoutOrder=2,BackgroundTransparency=1,Visible=false},b)aV(
'\085\073\076\105\115\116\076\097\121\111\117\116',{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,4)},bh)
a3(bh,a7,1)bc.Text=bg..'\032\032\043'bc.Activated:Connect(function()bh.Visible=not bh.
Visible bc.Text=bg..(bh.Visible and'\032\032\u{2212}'or'\032\032\043')end)end local bh=aX(b,
'\084\101\120\116\066\111\120',ah,34,3)bh.Visible,bh.TextEditable,bh.ClearTextOnFocus=false,false,
false bh.TextSize,bh.TextWrapped,bh.BackgroundTransparency=11,false,0 aT(bh,
'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051','\116\105\108\101')aV('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,7)},bh)be.
Activated:Connect(function()if type(setclipboard)=='\102\117\110\099\116\105\111\110'and pcall(
setclipboard,ah)then bf.Text=a9 and'\076\105\110\107\032\099\111\112\105\097\100\111'or'\076\105\110\107\032\099\111\112\105\101\100'task.delay(2,
function()if be.Parent then bf.Text='\089\111\117\084\117\098\101'end end)else bh.Visible=not bh.
Visible end end)end return{make=aV,paint=aT,gradient=aW,panel=aY,label=aX,button
=aZ,providerButton=a_,gameCard=a1,gameCatalog=a3,resources=a4,artworkBackdrop=a0
,color=aQ,setTheme=aU,themes=aN,rgb=aJ,themeAccent=function(a5)return aM[a5].
accent end}end local function aP(aQ,aR)local aS=game:GetService('\083\116\097\114\116\101\114\071\117\105')for
aT=1,8 do if pcall(aS.SetCore,aS,'\083\101\110\100\078\111\116\105\102\105\099\097\116\105\111\110',{Title='\065\110\111\110\072\117\098',Text=aR,
Duration=7})then return end task.wait(0.25)end local aT,aU=aQ.panel(170)aQ.
label(aU,'\084\101\120\116\076\097\098\101\108',aR,60,1)aQ.button(aU,'\079\075',2).Activated:Connect(function()aT
:Destroy()end)task.delay(8,function()if aT.Parent then aT:Destroy()end end)end
local function aQ(aR)return a[aR.path]end local aR aR=function(aS)local aT=aj.
AnonHubLauncher if type(aT)=='\116\097\098\108\101'and type(aT.close)=='\102\117\110\099\116\105\111\110'then aT.close(
)end local aU,aV,aW local aX={}aj.AnonHubLauncher=aX local function aY()return
aj.AnonHubLauncher==aX end local function aZ()if aU then aU:Destroy()aU=nil end
end aX.close=function()if not aY()then return end aj.AnonHubLauncher=nil aZ()if
aW then pcall(aW.disconnect)aW=nil end if aV then aV()end end local function a_(
)if aW then return aW end local a0,a1=au()if not aY()then if a0 then pcall(a0.
disconnect)end return nil,'\067\076\079\083\069\068'end aW=a0 return a0,a1 end local a0=ao.
language local function a1(a2,a3)return a0=='\112\116'and a2 or a3 end local a2=ab[
game.GameId]if a2 and a2.place~=game.PlaceId and not(a2.places and a2.places[
game.PlaceId])then a2=nil end if a2 and game.GameId==10770228857 then local a3=(
{[74183246285569]=1,[82739382053686]=2})[game.PlaceId]if a3 then a2=table.clone(
a2)a2.world=tostring(a3)a2.place=game.PlaceId a2.cache='\065\110\111\110\072\117\098\095\083\080\095\048\051\057\048\052\095\087'..a3
..'\046\108\117\097'a2.name=a2.name..a1('\032\u{b7}\032\077\117\110\100\111\032','\032\u{b7}\032\087\111\114\108\100\032')..a3 else a2=nil
end end local a3=a2 or ac local a4=type(ao.universal)=='\116\097\098\108\101'and ao.universal
or{}local a5=a2 and(a2.theme or'\112\101\101\108')or(a4.theme~='\112\101\101\108'and a4.theme or'\099\097\114\098\111\110'
)local a6=aO(a5)local a7,a8,a9,b,bb,bc=a6.panel,a6.label,a6.button,a6.make,a6.
gameCard,a6.color local be,bf={},{}local function bg(bh)return string.format(
'\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\071\097\109\101\084\104\117\109\098\110\097\105\108\038\105\100\061\037\100\038\119\061\052\056\048\038\104\061\050\055\048',bh)end local bh={name=a2 and
a2.name or a1('\069\120\112\101\114\105\u{ea}\110\099\105\097','\069\120\112\101\114\105\101\110\099\101')..'\032\u{b7}\032'..game.PlaceId,icon=
string.format('\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\071\097\109\101\073\099\111\110\038\105\100\061\037\100\038\119\061\049\053\048\038\104\061\049\053\048',game.GameId),cover=
bg(game.PlaceId),watch=function(bh)table.insert(be,bh)end,watchCover=function(bh
)table.insert(bf,bh)end}if not a2 then task.spawn(function()local bi,bj,bk=
pcall(function()local bi='\104\116\116\112\115\058\047\047\103\097\109\101\115\046\114\111\098\108\111\120\046\099\111\109\047\118\049\047\103\097\109\101\115\063\117\110\105\118\101\114\115\101\073\100\115\061'..game.
GameId local bj=al:JSONDecode(game:HttpGet(bi)).data[1]return bj.name,bj.
rootPlaceId end)if not bi or type(bj)~='\115\116\114\105\110\103'or bj==''then bi,bj=pcall(
function()return game:GetService('\077\097\114\107\101\116\112\108\097\099\101\083\101\114\118\105\099\101'):GetProductInfoAsync(game.
PlaceId,Enum.InfoType.Asset).Name end)end if aY()and bi and type(bj)=='\115\116\114\105\110\103'
and bj~=''then bh.name=bj for bl,bm in ipairs(be)do bm(bh.name)end end if aY()
and type(bk)=='\110\117\109\098\101\114'and bk>0 and bk~=game.PlaceId then bh.cover=bg(bk)for bl,
bm in ipairs(bf)do bm(bh.cover)end end end)end local function bi(bj,bk)aZ()local
bl aU,bl=a7(500,nil,not a2)local bm=aU local bn=os.clock()local bo=false local
bp=false bm.DisplayOrder=10031 local bq=a2 and a1('\077\u{d3}\068\085\076\079\032\068\079\032\074\079\071\079',
'\071\065\077\069\032\077\079\068\085\076\069')or a1('\070\069\082\082\065\077\069\078\084\065\083\032\085\078\073\086\069\082\083\065\073\083','\085\078\073\086\069\082\083\065\076\032\084\079\079\076\083')local br=b(
'\070\114\097\109\101',{Name='\076\111\097\100\105\110\103\067\111\118\101\114',Size=UDim2.new(1,0,0,165),LayoutOrder=1,
BackgroundColor3=bc.tile,BorderSizePixel=0,ClipsDescendants=true},bl)b(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,12)},br)b('\085\073\083\116\114\111\107\101',{Color=bc.accent,
Thickness=2,Transparency=0.15},br)local bs=b('\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromScale(
1,1),BackgroundTransparency=1,Image=bh.cover,ScaleType=Enum.ScaleType.Crop},br)
b('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,12)},bs)local bt=a8(br,'\084\101\120\116\076\097\098\101\108',bh.name
,28,0)bt.Position,bt.Size=UDim2.new(0,0,1,-32),UDim2.new(1,0,0,32)bt.
BackgroundTransparency=0.2 bt.BackgroundColor3=bc.dark bt.Font=Enum.Font.
GothamBold bt.ZIndex=3 bh.watch(function(bu)if bt.Parent then bt.Text=bu end end
)bh.watchCover(function(bu)if bs.Parent then bs.Image=bu end end)local bu=b(
'\070\114\097\109\101',{Size=UDim2.fromScale(1,1),BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0,ZIndex=4,Active=false},br)b('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(
0,12)},bu)local bv=b('\085\073\071\114\097\100\105\101\110\116',{Rotation=20,Offset=Vector2.new(-1,0),
Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(0.4,1),NumberSequenceKeypoint.new(0.5,0.65),
NumberSequenceKeypoint.new(0.6,1),NumberSequenceKeypoint.new(1,1)})},bu)local bw
=game:GetService('\084\119\101\101\110\083\101\114\118\105\099\101'):Create(bv,TweenInfo.new(1.6,Enum.EasingStyle.
Linear,Enum.EasingDirection.Out,-1,false,0.6),{Offset=Vector2.new(1,0)})bw:Play(
)bm.Destroying:Connect(function()bw:Cancel()end)task.spawn(function()pcall(
function()game:GetService('\067\111\110\116\101\110\116\080\114\111\118\105\100\101\114'):PreloadAsync({bs})end)end)local bx=
a8(bl,'\084\101\120\116\076\097\098\101\108',a1('\074\079\071\079\032\073\068\069\078\084\073\070\073\067\065\068\079','\071\065\077\069\032\073\068\069\078\084\073\070\073\069\068'),24,2)bx.TextColor3=
bc.active bx.Font=Enum.Font.GothamBold local by=a8(bl,'\084\101\120\116\076\097\098\101\108',(a2 and game.
GameId==10770228857)and a1('\067\097\114\114\101\103\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115\032\100\111\032\077\117\110\100\111\032',
'\076\111\097\100\105\110\103\032\102\101\097\116\117\114\101\115\032\102\111\114\032\087\111\114\108\100\032')..a2.world or a1(
'\067\097\114\114\101\103\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115\u{2026}','\076\111\097\100\105\110\103\032\102\101\097\116\117\114\101\115\u{2026}'),28,3)by.
TextColor3=bc.muted if not a2 then bx.Font,bx.TextSize,bx.TextXAlignment=Enum.
Font.Code,11,Enum.TextXAlignment.Left by.Font,by.TextSize,by.TextXAlignment=Enum
.Font.GothamMedium,16,Enum.TextXAlignment.Left end local bz=b('\070\114\097\109\101',{Name=
'\076\111\097\100\105\110\103\080\114\111\103\114\101\115\115',Size=UDim2.new(1,0,0,8),LayoutOrder=4,BackgroundColor3=bc.tile
,BorderSizePixel=0},bl)b('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,5)},bz)local bA=b(
'\070\114\097\109\101',{Size=UDim2.fromScale(0.18,1),BackgroundColor3=bc.accent,BorderSizePixel
=0},bz)b('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,5)},bA)local bB=a8(bl,'\084\101\120\116\076\097\098\101\108',
'\049\056\037',24,5)bB.Font,bB.TextSize,bB.TextColor3=Enum.Font.Code,12,bc.accent bB.
TextXAlignment=Enum.TextXAlignment.Right local bC=0.18 local function bD(bE,bF,
bG)if aY()and aU==bm and bA.Parent then bC=math.clamp(bE,bC,1)game:GetService(
'\084\119\101\101\110\083\101\114\118\105\099\101'):Create(bA,TweenInfo.new(0.18,Enum.EasingStyle.Quad),{Size=UDim2.
fromScale(bC,1)}):Play()if bF then by.Text=a1(bF,bG)end bB.Text=string.format(
'\037\100\037\037',math.floor(bC*100+0.5))end end task.wait()if not aY()then return end
local bE=aQ(a3)if not aY()then return end if not bE then by.Text=a1(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\098\097\105\120\097\114\032\097\115\032\102\117\110\u{e7}\u{f5}\101\115\046',
'\067\111\117\108\100\032\110\111\116\032\100\111\119\110\108\111\097\100\032\116\104\101\032\102\101\097\116\117\114\101\115\046')a9(bl,a1('\084\101\110\116\097\114\032\110\111\118\097\109\101\110\116\101','\084\114\121\032\097\103\097\105\110'),6,
true).Activated:Connect(function()if aY()then task.defer(aR,false)end end)a9(bl,
a1('\070\101\099\104\097\114','\067\108\111\115\101'),7).Activated:Connect(aX.close)return end if not a2 then bD(
0.55,'\067\097\114\114\101\103\097\110\100\111\032\099\097\112\097\032\101\032\u{ed}\099\111\110\101\u{2026}','\076\111\097\100\105\110\103\032\099\111\118\101\114\032\097\110\100\032\105\099\111\110\u{2026}')
local bF=false task.spawn(function()pcall(function()game:GetService(
'\067\111\110\116\101\110\116\080\114\111\118\105\100\101\114'):PreloadAsync({bh.icon,bh.cover})end)bF=true end)local bG=os.
clock()+1.25 repeat task.wait()until bF or not aY()or os.clock()>=bG if not aY()
then return end end local function bF()if not aY()or not bj.deadline then return
end local bG=bj.deadline-os.clock()if bG<=0 then at(nil)aR(false)else task.
delay(math.min(bG,3600),bF)end end bF()if not aY()then return end bD(a2 and 0.43
or 0.82,'\080\114\101\112\097\114\097\110\100\111\032\111\032\112\097\105\110\101\108\u{2026}','\080\114\101\112\097\114\105\110\103\032\116\104\101\032\112\097\110\101\108\u{2026}')local
function bG()if bp and aY()and aU==bm and(bo or os.clock()-bn>=2.5)then aZ()end
end local bH=a9(bl,a1('\080\117\108\097\114\032\097\110\105\109\097\u{e7}\u{e3}\111','\083\107\105\112\032\097\110\105\109\097\116\105\111\110'),8)bH.
Activated:Connect(function()bo=true if not bp then bH.Text=a1(
'\065\103\117\097\114\100\097\110\100\111\032\102\117\110\u{e7}\u{f5}\101\115\u{2026}','\087\097\105\116\105\110\103\032\102\111\114\032\102\101\097\116\117\114\101\115\u{2026}')end bG()
end)local function bI()if bp or not aY()then return end bp=true bD(1,'\080\114\111\110\116\111',
'\082\101\097\100\121')task.delay(bo and 0 or math.max(0,2.5-(os.clock()-bn)),bG)end local bJ=
pcall(bE,{language=a0,access=bj,startNow=bk,unload=aX.close,identity=bh,progress
=bD,ready=bI,decorateLauncher=aH,decorateArtwork=aI,ui=a6,settings=a4,
saveSettings=function(bJ)if not a2 and aY()then ao.universal=table.clone(bJ)ap()
end end,attach=function(bJ)if aY()then aV=bJ else bJ()end end,chooseLanguage=
function()if aY()then task.defer(aR,true)end end})if not bJ and aY()then if aV
then aV()aV=nil end aP(a6,a1(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\097\098\114\105\114\032\111\032\109\u{f3}\100\117\108\111\032\100\101\115\116\101\032\106\111\103\111\046',
"\067\111\117\108\100\032\110\111\116\032\111\112\101\110\032\116\104\105\115\032\103\097\109\101\039\115\032\109\111\100\117\108\101\046"))end if aY()and(not bp or not bJ)then aZ()
end end local function bj()local bk aU,bk=a7(570,nil,not a2)local bl=b('\070\114\097\109\101',{
Size=UDim2.new(1,0,0,108),LayoutOrder=1,BorderSizePixel=0,ClipsDescendants=true,
BackgroundColor3='\064\116\105\108\101'},bk)b('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,10)},bl)a6.
artworkBackdrop(bl)local bm=a8(bl,'\084\101\120\116\076\097\098\101\108',a1('\067\069\078\084\082\065\076\032\068\069\032\065\067\069\083\083\079',
'\065\067\067\069\083\083\032\067\069\078\084\069\082'),20,0)bm.Position,bm.Size=UDim2.fromOffset(15,18),UDim2.new(1,-
30,0,20)bm.Font,bm.TextSize,bm.TextXAlignment=Enum.Font.Code,11,Enum.
TextXAlignment.Left a6.paint(bm,'\084\101\120\116\067\111\108\111\114\051','\097\099\099\101\110\116')local bn=a8(bl,'\084\101\120\116\076\097\098\101\108'
,a1('\066\101\109\045\118\105\110\100\111\032\097\111\032\065\110\111\110\072\117\098','\087\101\108\099\111\109\101\032\116\111\032\065\110\111\110\072\117\098'),38,0)bn.Position,bn.Size=UDim2.
fromOffset(15,39),UDim2.new(1,-30,0,38)bn.Font,bn.TextSize,bn.TextXAlignment=
Enum.Font.GothamBold,21,Enum.TextXAlignment.Left local bo=b('\070\114\097\109\101',{Size=UDim2.
new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,LayoutOrder=2,BackgroundColor3=
'\064\116\105\108\101',BorderSizePixel=0},bk)b('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,10)},bo)b(
'\085\073\080\097\100\100\105\110\103',{PaddingTop=UDim.new(0,10),PaddingBottom=UDim.new(0,10),PaddingLeft=
UDim.new(0,11),PaddingRight=UDim.new(0,11)},bo)b('\085\073\076\105\115\116\076\097\121\111\117\116',{SortOrder=Enum.
SortOrder.LayoutOrder,Padding=UDim.new(0,6)},bo)local bp=a8(bo,'\084\101\120\116\076\097\098\101\108',a1(
'\074\u{e1}\032\116\101\109\032\117\109\097\032\107\101\121\063\032\067\111\108\101\032\097\098\097\105\120\111\046','\065\108\114\101\097\100\121\032\104\097\118\101\032\097\032\107\101\121\063\032\080\097\115\116\101\032\105\116\032\098\101\108\111\119\046'),22,1)
bp.TextSize,bp.TextXAlignment=13,Enum.TextXAlignment.Left a6.paint(bp,
'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local bq=a8(bo,'\084\101\120\116\066\111\120','',46,2)bq.BackgroundTransparency,
bq.ClearTextOnFocus=0,false bq.PlaceholderText,bq.PlaceholderColor3=
'\080\065\078\068\065\045\088\088\088\088\045\088\088\088\088\045\088\088\088\088',bc.muted bq.Font,bq.TextSize,bq.TextXAlignment=Enum.Font.
Code,14,Enum.TextXAlignment.Left bq.TextWrapped=false a6.paint(bq,
'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051','\100\097\114\107')b('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,7)},bq)b(
'\085\073\080\097\100\100\105\110\103',{PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0,12)},bq)local br
=b('\085\073\083\116\114\111\107\101',{Color='\064\101\100\103\101',Thickness=1,ApplyStrokeMode=Enum.ApplyStrokeMode.
Border},bq)bq.Focused:Connect(function()a6.paint(br,'\067\111\108\111\114','\097\099\099\101\110\116')end)bq.
FocusLost:Connect(function()a6.paint(br,'\067\111\108\111\114','\101\100\103\101')end)local bs=a8(bo,
'\084\101\120\116\076\097\098\101\108',a1('\083\101\109\032\107\101\121\063\032\085\115\101\032\079\098\116\101\114\032\107\101\121\032\112\097\114\097\032\099\111\109\101\u{e7}\097\114\046',
'\078\101\119\032\104\101\114\101\063\032\085\115\101\032\071\101\116\032\107\101\121\032\116\111\032\115\116\097\114\116\046'),32,4)bs.TextSize,bs.TextXAlignment=12,Enum.
TextXAlignment.Left a6.paint(bs,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local bt,bu=false,false
local bv=b('\070\114\097\109\101',{Size=UDim2.new(1,0,0,46),LayoutOrder=3,
BackgroundTransparency=1},bo)local bw=a9(bv,a1('\086\097\108\105\100\097\114\032\101\032\097\098\114\105\114',
'\086\097\108\105\100\097\116\101\032\097\110\100\032\111\112\101\110'),5,true)local bx,by=a6.providerButton(bv,'\080\097\110\100\097',a1(
'\079\098\116\101\114\032\107\101\121','\071\101\116\032\107\101\121'),7)bw.Size=UDim2.new(0.56,-4,1,0)bx.Position,bx.Size=UDim2
.new(0.56,4,0,0),UDim2.new(0.44,-4,1,0)bw.TextSize,by.TextSize=13,13 local
function bz(bA,bB)bt=bA bw.Text=bA and not bB and a1('\086\097\108\105\100\097\110\100\111\u{2026}',
'\086\097\108\105\100\097\116\105\110\103\u{2026}')or a1('\086\097\108\105\100\097\114\032\101\032\097\098\114\105\114','\086\097\108\105\100\097\116\101\032\097\110\100\032\111\112\101\110')by.Text=bA and
bB and a1('\080\114\101\112\097\114\097\110\100\111\u{2026}','\080\114\101\112\097\114\105\110\103\u{2026}')or a1('\079\098\116\101\114\032\107\101\121','\071\101\116\032\107\101\121')
end local function bA(bB)a6.paint(bs,'\084\101\120\116\067\111\108\111\114\051','\097\099\099\101\110\116')if bB=='\073\078\086\065\076\073\068\095\075\069\089'
or bB=='\069\088\080\073\082\069\068'then bs.Text=a1(
'\075\101\121\032\105\110\118\u{e1}\108\105\100\097\032\111\117\032\101\120\112\105\114\097\100\097\032\112\097\114\097\032\101\115\116\101\032\100\105\115\112\111\115\105\116\105\118\111\046',
'\075\101\121\032\105\110\118\097\108\105\100\032\111\114\032\101\120\112\105\114\101\100\032\102\111\114\032\116\104\105\115\032\100\101\118\105\099\101\046')elseif bB=='\078\079\095\075\069\089'then bs.Text=a1(
'\067\111\108\101\032\115\117\097\032\107\101\121\032\112\097\114\097\032\099\111\110\116\105\110\117\097\114\046','\080\097\115\116\101\032\121\111\117\114\032\107\101\121\032\116\111\032\099\111\110\116\105\110\117\101\046')elseif bB==
'\078\079\095\083\069\082\086\073\067\069'then bs.Text=a1(
'\083\101\114\118\105\u{e7}\111\032\080\097\110\100\097\032\065\117\116\104\032\097\105\110\100\097\032\110\u{e3}\111\032\099\111\110\102\105\103\117\114\097\100\111\046',
'\080\097\110\100\097\032\065\117\116\104\032\115\101\114\118\105\099\101\032\105\115\032\110\111\116\032\099\111\110\102\105\103\117\114\101\100\032\121\101\116\046')elseif bB=='\082\065\084\069\095\076\073\077\073\084\069\068'then bs.
Text=a1('\077\117\105\116\097\115\032\116\101\110\116\097\116\105\118\097\115\046\032\065\103\117\097\114\100\101\032\101\032\116\101\110\116\101\032\100\101\032\110\111\118\111\046',
'\084\111\111\032\109\097\110\121\032\097\116\116\101\109\112\116\115\046\032\087\097\105\116\032\097\110\100\032\116\114\121\032\097\103\097\105\110\046')elseif bB=='\073\068\069\078\084\073\084\089'then bs.Text=a1(
'\079\032\080\097\110\100\097\032\065\117\116\104\032\110\u{e3}\111\032\099\111\110\115\101\103\117\105\117\032\105\100\101\110\116\105\102\105\099\097\114\032\111\032\100\105\115\112\111\115\105\116\105\118\111\046',
'\080\097\110\100\097\032\065\117\116\104\032\099\111\117\108\100\032\110\111\116\032\105\100\101\110\116\105\102\121\032\116\104\105\115\032\100\101\118\105\099\101\046')elseif bB=='\078\079\095\072\084\084\080'then bs.Text=
a1('\079\032\101\120\101\099\117\116\111\114\032\110\u{e3}\111\032\100\105\115\112\111\110\105\098\105\108\105\122\111\117\032\097\032\099\111\110\101\120\u{e3}\111\032\072\084\084\080\046',
'\084\104\101\032\101\120\101\099\117\116\111\114\032\100\105\100\032\110\111\116\032\112\114\111\118\105\100\101\032\072\084\084\080\032\097\099\099\101\115\115\046')else bs.Text=a1(
'\078\u{e3}\111\032\102\111\105\032\112\111\115\115\u{ed}\118\101\108\032\099\111\110\101\099\116\097\114\032\097\111\032\080\097\110\100\097\032\065\117\116\104\046\032\084\101\110\116\101\032\100\101\032\110\111\118\111\046',
'\067\111\117\108\100\032\110\111\116\032\099\111\110\110\101\099\116\032\116\111\032\080\097\110\100\097\032\065\117\116\104\046\032\084\114\121\032\097\103\097\105\110\046')end end local function bB()if bt
or not aY()then return end local bC=aq(bq.Text)if not bC then bA('\078\079\095\075\069\089')return
end bz(true,false)bs.Text=a1('\086\097\108\105\100\097\110\100\111\032\097\099\101\115\115\111\046\046\046','\086\097\108\105\100\097\116\105\110\103\032\097\099\099\101\115\115\046\046\046')local
bD,bE=a_()local bF if bD then bF,bE=aw(bD,bC)end if not aY()then if bD then
pcall(bD.disconnect)end return end bz(false)if not bF then if(bE=='\073\078\086\065\076\073\068\095\075\069\089'
or bE=='\069\088\080\073\082\069\068')and as()==bC then at(nil)if bq.Text==bC then bq.Text=''end end
bA(bE)return end at(bC)bi(bF,bu)end bw.Activated:Connect(bB)if a2 then local bC=
a9(bk,a1('\073\078\073\067\073\065\082\032\079\080\032\065\079\032\065\066\082\073\082','\083\084\065\082\084\032\079\080\032\079\078\032\079\080\069\078')..'\032\032\u{b7}\032\032\079\070\070',4)bC.
Activated:Connect(function()bu=not bu bC.Text=a1('\073\078\073\067\073\065\082\032\079\080\032\065\079\032\065\066\082\073\082',
'\083\084\065\082\084\032\079\080\032\079\078\032\079\080\069\078')..'\032\032\u{b7}\032\032'..(bu and'\079\078'or'\079\070\070')bC.BackgroundColor3=bu and
bc.edge or bc.tile end)end a6.resources(bk,3,a0)local bC=b('\070\114\097\109\101',{Size=UDim2.
new(1,0,0,38),LayoutOrder=5,BackgroundTransparency=1},bk)local bD=a9(bC,a1(
'\073\100\105\111\109\097','\076\097\110\103\117\097\103\101'),0)bD.Size=UDim2.new(0.5,-4,1,0)bD.TextSize=12 bD.Activated:
Connect(function()task.defer(aR,true)end)local bE=a9(bC,a1('\070\101\099\104\097\114','\067\108\111\115\101'),0)
bE.Position,bE.Size=UDim2.new(0.5,4,0,0),UDim2.new(0.5,-4,1,0)bE.TextSize=12 bE.
Activated:Connect(aX.close)local bF=a8(bo,'\084\101\120\116\066\111\120','',0,5)bF.Visible,bF.
TextEditable,bF.ClearTextOnFocus=false,false,false bF.TextWrapped=false bF.Font,
bF.TextSize=Enum.Font.Code,12 bx.Activated:Connect(function()if bt or not aY()
then return end bz(true,true)bs.Text=a1('\080\114\101\112\097\114\097\110\100\111\032\111\032\108\105\110\107\032\100\101\032\097\099\101\115\115\111\u{2026}',
'\080\114\101\112\097\114\105\110\103\032\121\111\117\114\032\097\099\099\101\115\115\032\108\105\110\107\u{2026}')local bG,bH=a_()local bI,bJ if bG then bI,
bJ=pcall(bG.getKeyUrl)end if not aY()then return end bz(false)local bK=bI and
type(bJ)=='\115\116\114\105\110\103'and bJ:match('\094\104\116\116\112\115\058\047\047\040\091\037\119\037\046\037\045\093\043\041\047')if not bK or(bK~=
'\112\097\110\100\097\117\116\104\046\099\111\109'and not bK:match('\037\046\112\097\110\100\097\117\116\104\037\046\099\111\109\036'))then bA(bH or'\080\082\079\084\079\067\079\076')
return end local bL=type(setclipboard)=='\102\117\110\099\116\105\111\110'and setclipboard or nil if bL
and pcall(bL,bJ)then a6.paint(bs,'\084\101\120\116\067\111\108\111\114\051','\097\099\116\105\118\101')bs.Text=a1(
'\076\105\110\107\032\099\111\112\105\097\100\111\046\032\065\098\114\097\032\110\111\032\110\097\118\101\103\097\100\111\114\046','\076\105\110\107\032\099\111\112\105\101\100\046\032\079\112\101\110\032\105\116\032\105\110\032\121\111\117\114\032\098\114\111\119\115\101\114\046')else
bF.Size=UDim2.new(1,0,0,36)bF.Text,bF.Visible=bJ,true bs.Text=a1(
'\067\111\112\105\101\032\111\032\108\105\110\107\032\097\098\097\105\120\111\032\101\032\097\098\114\097\032\110\111\032\110\097\118\101\103\097\100\111\114\046',
'\067\111\112\121\032\116\104\101\032\108\105\110\107\032\098\101\108\111\119\032\097\110\100\032\111\112\101\110\032\105\116\032\105\110\032\121\111\117\114\032\098\114\111\119\115\101\114\046')end end)bq.FocusLost:Connect(
function(bG)if bG then bB()end end)local bG=as()if bG then bq.Text=bG task.
defer(bB)elseif ae==''then bA('\078\079\095\083\069\082\086\073\067\069')end end if not aS and(a0=='\112\116'or a0==
'\101\110')then bj()return end local bk aU,bk=a7(430,nil,not a2)local bl=a8(bk,
'\084\101\120\116\076\097\098\101\108','\069\115\099\111\108\104\097\032\115\101\117\032\105\100\105\111\109\097\032\047\032\067\104\111\111\115\101\032\121\111\117\114\032\108\097\110\103\117\097\103\101',48,1)bl.Font=Enum.Font.
GothamBold bl.TextSize=18 local function bm(bn)if not aY()then return end a0=bn
ao.language=bn ap()aZ()bj()end local function bn(bo,bp,bq,br,bs)local bt=a9(bk,
'',bs)bt.Size=UDim2.new(1,0,0,72)bt.AutoButtonColor=false local bu=ao.language==
bo a6.paint(bt,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051',bu and'\101\100\103\101'or'\116\105\108\101')local bv=a8(bt,
'\084\101\120\116\076\097\098\101\108',bp,44,0)bv.Position,bv.Size=UDim2.fromOffset(12,14),UDim2.
fromOffset(46,44)bv.TextSize=29 local bw=a8(bt,'\084\101\120\116\076\097\098\101\108',bq,25,0)bw.Position,
bw.Size=UDim2.fromOffset(72,11),UDim2.new(1,-118,0,25)bw.Font,bw.TextSize,bw.
TextXAlignment=Enum.Font.GothamBold,18,Enum.TextXAlignment.Left local bx=a8(bt,
'\084\101\120\116\076\097\098\101\108',br,20,0)bx.Position,bx.Size=UDim2.fromOffset(73,39),UDim2.new(1,-120
,0,20)bx.TextSize,bx.TextXAlignment=11,Enum.TextXAlignment.Left a6.paint(bx,
'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local by=a8(bt,'\084\101\120\116\076\097\098\101\108',bu and'\u{2713}'or'\u{203a}',30,
0)by.Position,by.Size=UDim2.new(1,-38,0,21),UDim2.fromOffset(28,30)by.TextSize=
22 a6.paint(by,'\084\101\120\116\067\111\108\111\114\051','\097\099\099\101\110\116')local bz=game:GetService('\084\119\101\101\110\083\101\114\118\105\099\101')bt.
MouseEnter:Connect(function()bz:Create(bt,TweenInfo.new(0.15),{BackgroundColor3=
bc.edge}):Play()end)bt.MouseLeave:Connect(function()bz:Create(bt,TweenInfo.new(
0.15),{BackgroundColor3=bu and bc.edge or bc.tile}):Play()end)bt.Activated:
Connect(function()bm(bo)end)end bn('\112\116','\u{1f1e7}\u{1f1f7}','\080\111\114\116\117\103\117\u{ea}\115',
'\066\114\097\115\105\108\032\u{b7}\032\067\111\110\116\105\110\117\097\114\032\101\109\032\112\111\114\116\117\103\117\u{ea}\115',2)bn('\101\110','\u{1f1fa}\u{1f1f8}',
'\069\110\103\108\105\115\104','\085\110\105\116\101\100\032\083\116\097\116\101\115\032\u{b7}\032\067\111\110\116\105\110\117\101\032\105\110\032\069\110\103\108\105\115\104',3)a9(bk,'\070\101\099\104\097\114\032\032\047\032\032\067\108\111\115\101',
4).Activated:Connect(aX.close)end local function aS(aT,aU,aV,aW,aX)return aV==
10767408330 and type(aT)=='\116\097\098\108\101'and aT.schema==1 and aT.account==aU and aT.game
==aV and type(aT.from)=='\115\116\114\105\110\103'and aT.from~=''and aT.from~=aW and(aT.to==
'\099\104\097\112\116\101\114'or aT.to=='\108\111\098\098\121')and type(aT.untilTime)=='\110\117\109\098\101\114'and aT.untilTime>=aX
and aT.untilTime<=aX+180 end local aT=false if type(readfile)=='\102\117\110\099\116\105\111\110'and(ao.
language=='\112\116'or ao.language=='\101\110')then local aU,aV=pcall(function()local aU=
readfile('\069\118\111\108\118\121\095\067\104\097\112\116\101\114\050\095\084\114\097\110\115\102\101\114\095\118\049\046\106\115\111\110')if type(aU)~='\115\116\114\105\110\103'or#aU>3000 then
return end return al:JSONDecode(aU)end)aT=aU and aS(aV,am.UserId,game.GameId,
game.JobId,os.time())end aR(not aT)
