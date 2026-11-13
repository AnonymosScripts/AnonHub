-- Luau
-- AnonHub protected distribution 0.38.11
-- local BOOT_VERSION="0.37.6"
local a='\048\046\051\055\046\054'local b=...if type(b)~='\116\097\098\108\101'then return end local c=game:
GetService('\080\108\097\121\101\114\115')local d=game:GetService('\082\117\110\083\101\114\118\105\099\101')local e=game:
GetService('\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101')local f=game:GetService('\087\111\114\107\115\112\097\099\101')local g=e.
TouchEnabled local function h()return g and(e.PreferredInput==nil or e.
PreferredInput==Enum.PreferredInput.Touch)end local i=h()local j=game.GameId~=
8795154789 and game.PlaceId~=136801880565837 and game.GameId~=6035872082 and
game.PlaceId~=17625359962 local k=c.LocalPlayer local l=b.ui local m=l.color
local function n(o,p)return b.language=='\112\116'and o or p end local o={theme=
'\099\097\114\098\111\110',width=560,height=610,scale=i and 70 or 100,launcher=48,opacity=100,
panelX=0.5,panelY=0.5,buttonX=0,buttonY=1,espMode='\111\117\116\108\105\110\101',espColor='\116\104\101\109\101',
espHex='\070\070\055\065\056\068',espRange=850,espThrough=true,espNick='\100\105\115\112\108\097\121',espDistance=true,
espTeam=true,espLabels='\115\099\114\101\101\110',espCustomRigs=true,aimActivation='\097\117\116\111',
aimResponse='\115\109\111\111\116\104',aimTouchSide='\108\101\102\116',aimAdaptiveFov=true,aimPriority=
'\099\101\110\116\101\114',aimPart='\104\101\097\100',aimCircle='\101\110\097\098\108\101\100',aimCircleColor='\116\104\101\109\101',aimRadius=175
,aimOffsetX=0,aimOffsetY=0,aimWidth=1,aimRange=850,aimSpeed=24,cameraFov=80,
aimTeam=true,aimObstacles='\118\105\115\105\098\108\101',aimSticky=true,aimCustomCamera=true,aimLabel
=true}local p={width={300,900},height={340,880},scale={65,140},launcher={40,90},
opacity={60,100},panelX={0,1},panelY={0,1},buttonX={0,1},buttonY={0,1},espRange=
{100,1500},aimRadius={30,500},aimOffsetX={-130,130},aimOffsetY={-130,130},
aimWidth={1,4},aimRange={75,1500},aimSpeed={3,70},cameraFov={35,120}}local q={{
'\111\117\116\108\105\110\101','\067\111\110\116\111\114\110\111','\079\117\116\108\105\110\101'},{'\098\111\120','\067\097\105\120\097\032\050\068','\050\068\032\098\111\120'},{'\110\097\109\101\115',
'\078\111\109\101\032\101\032\100\105\115\116\u{e2}\110\099\105\097','\078\097\109\101\032\097\110\100\032\100\105\115\116\097\110\099\101'},{'\102\117\108\108','\067\111\109\112\108\101\116\111','\070\117\108\108'}}local r=
{{'\116\104\101\109\101','\084\101\109\097','\084\104\101\109\101'},{'\116\101\097\109','\069\113\117\105\112\101','\084\101\097\109'},{'\114\101\100','\086\101\114\109\101\108\104\111','\082\101\100',
'\070\070\054\055\055\056'},{'\099\121\097\110','\067\105\097\110\111','\067\121\097\110','\053\055\069\053\070\070'},{'\108\105\109\101','\076\105\109\097','\076\105\109\101','\066\051\070\055\054\048'},{
'\103\111\108\100','\068\111\117\114\097\100\111','\071\111\108\100','\070\070\068\049\054\054'},{'\118\105\111\108\101\116','\086\105\111\108\101\116\097','\086\105\111\108\101\116','\067\069\057\066\070\070'},{
'\119\104\105\116\101','\066\114\097\110\099\111','\087\104\105\116\101','\070\057\070\056\070\070'},{'\099\117\115\116\111\109','\072\101\120\097\100\101\099\105\109\097\108','\067\117\115\116\111\109\032\104\101\120'}}local s
={{'\100\105\115\112\108\097\121','\078\111\109\101\032\100\101\032\101\120\105\098\105\u{e7}\u{e3}\111','\068\105\115\112\108\097\121\032\110\097\109\101'},{'\117\115\101\114\110\097\109\101',
'\064\085\115\117\u{e1}\114\105\111','\064\085\115\101\114\110\097\109\101'},{'\098\111\116\104','\078\111\109\101\032\043\032\064\117\115\117\u{e1}\114\105\111','\078\097\109\101\032\043\032\064\117\115\101\114\110\097\109\101'},
{'\111\102\102','\079\099\117\108\116\097\114\032\110\111\109\101','\072\105\100\101\032\110\097\109\101'}}local t={{'\097\117\116\111','\065\117\116\111\109\u{e1}\116\105\099\111',
'\065\117\116\111\109\097\116\105\099'},{'\104\111\108\100','\083\101\103\117\114\097\114','\072\111\108\100'},{'\116\111\103\103\108\101','\084\111\113\117\101\032\097\108\116\101\114\110\097','\084\097\112\032\116\111\032\116\111\103\103\108\101'
},{'\097\108\119\097\121\115','\067\111\110\116\u{ed}\110\117\097','\067\111\110\116\105\110\117\111\117\115'}}local u={{'\108\101\102\116','\069\115\113\117\101\114\100\097','\076\101\102\116'},{
'\114\105\103\104\116','\068\105\114\101\105\116\097','\082\105\103\104\116'}}local v={{'\115\109\111\111\116\104','\083\117\097\118\101','\083\109\111\111\116\104'},{'\115\110\097\112','\068\105\114\101\116\097'
,'\068\105\114\101\099\116'}}if j then table.insert(v,{'\115\105\108\101\110\116','\083\105\108\101\110\099\105\111\115\097','\083\105\108\101\110\116'})end local w
={{'\118\105\115\105\098\108\101','\076\105\110\104\097\032\108\105\118\114\101','\067\108\101\097\114\032\108\105\110\101'},{'\101\102\102\101\099\116\115','\073\103\110\111\114\097\114\032\101\102\101\105\116\111\115',
'\073\103\110\111\114\101\032\101\102\102\101\099\116\115'},{'\116\104\114\111\117\103\104','\065\116\114\u{e1}\115\032\100\101\032\111\098\115\116\u{e1}\099\117\108\111\115','\066\101\104\105\110\100\032\111\098\115\116\097\099\108\101\115'}
}local x={{'\115\099\114\101\101\110','\078\097\032\116\101\108\097\032\040\050\068\041','\083\099\114\101\101\110\032\040\050\068\041'},{'\119\111\114\108\100','\078\111\032\112\101\114\115\111\110\097\103\101\109\032\040\051\068\041',
'\079\110\032\099\104\097\114\097\099\116\101\114\032\040\051\068\041'}}local y={{'\099\101\110\116\101\114','\080\101\114\116\111\032\100\097\032\109\105\114\097','\078\101\097\114\032\099\114\111\115\115\104\097\105\114'},{
'\100\105\115\116\097\110\099\101','\080\101\114\116\111\032\100\111\032\106\111\103\097\100\111\114','\078\101\097\114\032\112\108\097\121\101\114'}}local z={{'\104\101\097\100','\067\097\098\101\u{e7}\097',
'\072\101\097\100'},{'\098\111\100\121','\084\114\111\110\099\111','\084\111\114\115\111'},{'\114\111\111\116','\067\101\110\116\114\111','\082\111\111\116'}}local A={{'\101\110\097\098\108\101\100',
'\065\111\032\108\105\103\097\114\032\097\032\109\105\114\097','\087\104\105\108\101\032\101\110\097\098\108\101\100'},{'\097\099\116\105\118\101','\083\u{f3}\032\097\111\032\109\105\114\097\114','\087\104\105\108\101\032\097\105\109\105\110\103'},
{'\111\102\102','\079\099\117\108\116\111','\072\105\100\100\101\110'}}local B={r[1],r[3],r[4],r[8]}local function C(D,E)for
F,G in ipairs(D)do if G[1]==E then return G end end end local function D(E)local
F=type(E)=='\115\116\114\105\110\103'and E:match('\094\037\115\042\035\063\040\037\120\037\120\037\120\037\120\037\120\037\120\041\037\115\042\036')return F and F:upper()
or nil end local E=table.clone(o)local F=type(b.settings)=='\116\097\098\108\101'and b.settings
or{}for G,H in pairs(p)do local I=F[G]if G=='\115\099\097\108\101'then if i then I=F.
mobileScale else I=F.desktopScale or I end end if type(I)=='\110\117\109\098\101\114'and I==I then
E[G]=math.clamp(I,H[1],H[2])end end if C(l.themes,F.theme)then E.theme=F.theme
end if C(q,F.espMode)then E.espMode=F.espMode end if C(r,F.espColor)then E.
espColor=F.espColor end E.espHex=D(F.espHex)or o.espHex for G,H in pairs({
espNick=s,espLabels=x,aimActivation=t,aimResponse=v,aimTouchSide=u,aimObstacles=
w,aimPriority=y,aimPart=z,aimCircle=A,aimCircleColor=B})do if C(H,F[G])then E[G]
=F[G]end end if not C(w,F.aimObstacles)and F.aimVisible==false then E.
aimObstacles='\116\104\114\111\117\103\104'end for G,H in ipairs({'\101\115\112\084\104\114\111\117\103\104','\101\115\112\068\105\115\116\097\110\099\101',
'\101\115\112\072\101\097\108\116\104','\101\115\112\084\101\097\109','\101\115\112\067\117\115\116\111\109\082\105\103\115','\097\105\109\084\101\097\109','\097\105\109\065\100\097\112\116\105\118\101\070\111\118','\097\105\109\083\116\105\099\107\121',
'\097\105\109\067\117\115\116\111\109\067\097\109\101\114\097','\097\105\109\076\097\098\101\108'})do if type(F[H])=='\098\111\111\108\101\097\110'then E[H]=F[H]end end
local function G()local H=table.clone(E)H.mobileScale=i and E.scale or F.
mobileScale H.desktopScale=i and(F.desktopScale or F.scale or 100)or E.scale b.
saveSettings(H)end local function H()if E.aimActivation~='\097\117\116\111'then return E.
aimActivation end return h()and'\116\111\103\103\108\101'or'\104\111\108\100'end local function I()if E.
espHealth~=nil then return E.espHealth end return E.espMode=='\102\117\108\108'end l.
setTheme(E.theme)local J=k:WaitForChild('\080\108\097\121\101\114\071\117\105')local K=l.make('\083\099\114\101\101\110\071\117\105',{
Name='\065\110\111\110\072\117\098\085\110\105\118\101\114\115\097\108',ResetOnSpawn=false,DisplayOrder=10030},J)local L=l.make(
'\070\114\097\109\101',{Size=UDim2.fromScale(1,1),BackgroundTransparency=1},K)local M=l.make(
'\070\114\097\109\101',{Name='\085\110\105\118\101\114\115\097\108\080\097\110\101\108',AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.
fromScale(0.5,0.5),BackgroundColor3='\064\100\097\114\107',BorderSizePixel=0,ClipsDescendants=
true},L)local N=l.make('\085\073\083\099\097\108\101',{Scale=1},M)l.make('\085\073\067\111\114\110\101\114',{CornerRadius=
UDim.new(0,16)},M)l.make('\085\073\083\116\114\111\107\101',{Color='\064\101\100\103\101',Thickness=1},M)local O=l.
make('\070\114\097\109\101',{Name='\072\101\097\100\101\114',Size=UDim2.new(1,0,0,62),BackgroundColor3='\064\100\097\114\107',
BorderSizePixel=0,Active=true,ClipsDescendants=true},M)l.make('\070\114\097\109\101',{Size=
UDim2.new(1,0,0,1),Position=UDim2.new(0,0,1,-1),BackgroundColor3='\064\101\100\103\101',
BorderSizePixel=0},O)local P=l.label(O,'\084\101\120\116\076\097\098\101\108','\065',30,0)P.Position,P.Size=
UDim2.fromOffset(16,16),UDim2.fromOffset(30,30)P.BackgroundTransparency=0 P.Font
,P.TextSize=Enum.Font.GothamBlack,17 l.paint(P,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051','\097\099\099\101\110\116')l.
paint(P,'\084\101\120\116\067\111\108\111\114\051','\100\097\114\107')l.make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,9)},P)if
b.decorateArtwork then local Q=l.make('\073\109\097\103\101\076\097\098\101\108',{Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,ScaleType=Enum.ScaleType.Crop,ZIndex=P.ZIndex+1},P)l.
make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,9)},Q)b.decorateArtwork(Q)end local Q=l
.label(O,'\084\101\120\116\076\097\098\101\108','\065\110\111\110\072\117\098',25,1)Q.Position,Q.Size=UDim2.fromOffset(56,11),
UDim2.new(1,-110,0,25)Q.Font,Q.TextSize,Q.TextXAlignment=Enum.Font.GothamBold,19
,Enum.TextXAlignment.Left local R=l.label(O,'\084\101\120\116\076\097\098\101\108',n('\067\069\078\084\082\065\076\032\085\078\073\086\069\082\083\065\076',
'\085\078\073\086\069\082\083\065\076\032\087\079\082\075\083\080\065\067\069'),16,2)R.Position,R.Size=UDim2.fromOffset(57,35),UDim2.new(
1,-112,0,16)R.Font,R.TextSize,R.TextXAlignment=Enum.Font.Code,10,Enum.
TextXAlignment.Left l.paint(R,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local S=l.make('\070\114\097\109\101',{Name=
'\078\097\118\105\103\097\116\105\111\110',BackgroundColor3='\064\116\105\108\101',BorderSizePixel=0},M)l.make('\085\073\067\111\114\110\101\114',{
CornerRadius=UDim.new(0,10)},S)local T=l.label(S,'\084\101\120\116\076\097\098\101\108',n(
'\u{c1}\082\069\065\032\068\069\032\084\082\065\066\065\076\072\079','\087\079\082\075\083\080\065\067\069'),18,0)T.Position,T.Size=UDim2.fromOffset(14,
10),UDim2.new(1,-24,0,18)T.Font,T.TextSize,T.TextXAlignment=Enum.Font.Code,9,
Enum.TextXAlignment.Left l.paint(T,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local U=32 local V=l.
make('\070\114\097\109\101',{Name='\083\101\115\115\105\111\110\083\116\097\116\117\115',Position=UDim2.new(0,0,1,-U),Size=UDim2.new(1
,0,0,U),BorderSizePixel=0,BackgroundColor3='\064\100\097\114\107'},M)l.make('\070\114\097\109\101',{Size=UDim2
.new(1,0,0,1),BackgroundColor3='\064\101\100\103\101',BorderSizePixel=0},V)local W=l.make(
'\070\114\097\109\101',{Position=UDim2.fromOffset(15,13),Size=UDim2.fromOffset(6,6),
BorderSizePixel=0,BackgroundColor3='\064\097\099\099\101\110\116'},V)l.make('\085\073\067\111\114\110\101\114',{CornerRadius=
UDim.new(1,0)},W)local X=l.label(V,'\084\101\120\116\076\097\098\101\108','',32,0)X.Position,X.Size=UDim2.
fromOffset(28,0),UDim2.new(1,-104,1,0)X.Font,X.TextSize,X.TextXAlignment=Enum.
Font.Code,11,Enum.TextXAlignment.Left local Y=l.label(V,'\084\101\120\116\076\097\098\101\108','\118'..a,32,0)
Y.Position,Y.Size=UDim2.new(1,-77,0,0),UDim2.fromOffset(61,32)Y.Font,Y.TextSize,
Y.TextXAlignment=Enum.Font.Code,11,Enum.TextXAlignment.Right l.paint(Y,
'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local Z={}local _={}local aa={}local ab=0 local ac={}local
ad=true local ae={}local function af()local ag=h()and n('\084\079\081\085\069','\084\079\085\067\072')or n(
'\084\069\067\076\065\068\079','\075\069\089\066\079\065\082\068')local ah=ae.aim and n('\077\073\082\065\032\079\078','\065\073\077\032\079\078')or n('\077\073\082\065\032\079\070\070',
'\065\073\077\032\079\070\070')X.Text=ag..'\032\032\047\032\032'..ah..'\032\032\047\032\032\069\083\080\032'..(ae.esp and'\079\078'or'\079\070\070')l.paint(X,
'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')l.paint(W,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051',(ae.aim or ae.esp)and'\097\099\116\105\118\101'
or'\097\099\099\101\110\116')end local ag={speed=24,fly=55}local ah={}local ai={}local aj={}local
ak,al,am,an,ao local ap,aq,ar,as,at local au local av=false local aw={up=false,
down=false,aim=false}local function ax(ay,az)local aA=ay:Connect(az)table.
insert(ac,aA)return aA end local function ay(az)local aA=az and az:
FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local aB=az and az:FindFirstChild(
'\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if aA and aA.Health>0 and aB and aB:IsA('\066\097\115\101\080\097\114\116')then
return aA,aB end end local function az(aA,aB)local aC=aA:FindFirstChild(aB)or aA
:FindFirstChild(aB,true)if aC and aC:IsA('\066\097\115\101\080\097\114\116')then return aC end end local
function aA(aB)if not aB or not aB.Parent or not aB:IsA('\077\111\100\101\108')then return end
local aC=aB:FindFirstChildOfClass('\072\117\109\097\110\111\105\100')local aD=az(aB,'\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')
or(aC and aC.RootPart)or aB.PrimaryPart or az(aB,'\085\112\112\101\114\084\111\114\115\111')or az(aB,'\084\111\114\115\111')
or az(aB,'\072\101\097\100')if aD then return aB,aD,aC end end local aB={'\067\104\097\114\097\099\116\101\114\115',
'\080\108\097\121\101\114\067\104\097\114\097\099\116\101\114\115','\065\108\105\118\101','\080\108\097\121\101\114\115'}local aC={'\067\104\097\114\097\099\116\101\114\077\111\100\101\108','\067\104\097\114\097\099\116\101\114'}
local function aD(aE,aF)local aG,aH,aI=aA(aE.Character)if aG or not aF then
return aG,aH,aI end for aJ,aK in ipairs(aC)do local aL=aE:FindFirstChild(aK)if
aL and aL:IsA('\079\098\106\101\099\116\086\097\108\117\101')then aG,aH,aI=aA(aL.Value)if aG then return aG,aH,aI
end end end for aJ,aK in ipairs(aB)do local aL=f:FindFirstChild(aK)if aL then aG
,aH,aI=aA(aL:FindFirstChild(aE.Name)or aL:FindFirstChild(tostring(aE.UserId)))if
aG then return aG,aH,aI end end end end local function aE(aF,aG)return aF~=k and
(not aG or k.Neutral or aF.Neutral or not k.Team or aF.Team~=k.Team)end local
function aF(aG)if aG and aG.object.Parent and aG.object[aG.property]==aG.applied
then aG.object[aG.property]=aG.original end end local function aG(aH,aI,aJ,aK)if
not aH or aH.object~=aI then aF(aH)aH={object=aI,property=aJ,original=aI[aJ]}
elseif aH.applied~=nil and aI[aJ]~=aH.applied then aH.original=aI[aJ]end aI[aJ]=
aK aH.applied=aK return aH end local function aH()if al then al:Disconnect()al=
nil end ak=nil for aI,aJ in pairs(aj)do if aJ and aI.Parent and not aI.
CanCollide then aI.CanCollide=true end end table.clear(aj)end local function aI(
aJ)aH()ak=aJ local function aK(aL)if aL:IsA('\066\097\115\101\080\097\114\116')and aj[aL]==nil then aj[
aL]=false end end for aL,aM in ipairs(aJ:GetDescendants())do aK(aM)end al=aJ.
DescendantAdded:Connect(aK)end local function aJ()if not am then return end am.
velocity:Destroy()am.attachment:Destroy()am=nil end local function aK()if ap
then ap:Destroy()ap=nil end if aq then aq:Destroy()aq=nil end table.clear(ai)end
local function aL()aH()aJ()aF(an)an=nil end local function aM()table.clear(ae)aw
.up,aw.down,aw.aim=false,false,false as,at,av=nil,nil,false if au then table.
clear(au)au=nil end aL()aK()aF(ao)ao=nil for aN,aO in ipairs(ah)do aO()end end
local aN='\065\110\111\110\072\117\098\085\110\105\118\101\114\115\097\108\095'..tostring(k.UserId)local function aO()if not ad
then return end ad=false d:UnbindFromRenderStep(aN)for aP,aQ in ipairs(ac)do aQ:
Disconnect()end table.clear(ac)aM()if ar then ar:Destroy()end K:Destroy()end b.
attach(aO)if not ad then return end local function aP(aQ)for aR,aS in pairs(Z)do
local aT=aR==aQ aS.Visible=aT _[aR].BackgroundTransparency=aT and 0 or 1 l.
paint(_[aR],'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051','\100\097\114\107')local aU=aa[aR]l.paint(aU.caption,
'\084\101\120\116\067\111\108\111\114\051',aT and'\097\099\099\101\110\116'or'\109\117\116\101\100')aU.marker.Visible=aT end end local function
aQ(aR,aS,aT,aU)ab+=1 local aV=ab local aW=l.label(S,'\084\101\120\116\066\117\116\116\111\110','',40,0)aW.Name
=aR..'\084\097\098'aW.AutoButtonColor=false l.make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,7)
},aW)local aX=l.label(aW,'\084\101\120\116\076\097\098\101\108',aS,40,0)aX.Font,aX.TextSize=Enum.Font.
GothamBold,12 local aY=l.make('\070\114\097\109\101',{BackgroundColor3='\064\097\099\099\101\110\116',
BorderSizePixel=0},aW)l.make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},aY)local aZ
=l.label(aW,'\084\101\120\116\076\097\098\101\108',string.format('\037\048\050\100',aV),18,0)aZ.Position,aZ.Size=UDim2.
fromOffset(10,11),UDim2.fromOffset(21,18)aZ.Font,aZ.TextSize=Enum.Font.Code,10 l
.paint(aZ,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local a_=l.make('\083\099\114\111\108\108\105\110\103\070\114\097\109\101',{Name=aR,
BackgroundTransparency=1,BorderSizePixel=0,CanvasSize=UDim2.fromOffset(0,0),
AutomaticCanvasSize=Enum.AutomaticSize.Y,ScrollBarThickness=3,
ScrollBarImageColor3='\064\097\099\099\101\110\116',ScrollingDirection=Enum.ScrollingDirection.Y,
ElasticBehavior=Enum.ElasticBehavior.Never,Visible=false},M)l.make('\085\073\080\097\100\100\105\110\103',{
PaddingRight=UDim.new(0,6),PaddingBottom=UDim.new(0,8)},a_)l.make('\085\073\076\105\115\116\076\097\121\111\117\116'
,{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,8)},a_)local a0=l.
make('\070\114\097\109\101',{Size=UDim2.new(1,0,0,60),LayoutOrder=0,BackgroundTransparency=1},
a_)local a1=l.label(a0,'\084\101\120\116\076\097\098\101\108',aS,28,0)a1.Font,a1.TextSize,a1.TextXAlignment
=Enum.Font.GothamBold,23,Enum.TextXAlignment.Left local a2=l.label(a0,
'\084\101\120\116\076\097\098\101\108',aT,28,0)a2.Position=UDim2.fromOffset(0,29)a2.TextSize,a2.
TextXAlignment,a2.TextYAlignment=12,Enum.TextXAlignment.Left,Enum.TextYAlignment
.Top l.paint(a2,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')Z[aR],_[aR]=a_,aW aa[aR]={index=aV,marker=
aY,number=aZ,caption=aX,title=aS,compactTitle=aU or aS}ax(aW.Activated,function(
)aP(aR)end)return a_ end local aR=aQ('\099\111\110\116\114\111\108\115',n('\067\111\110\116\114\111\108\101\115','\067\111\110\116\114\111\108\115'),n(
'\074\111\103\111\032\097\116\117\097\108\032\101\032\097\116\097\108\104\111\115\032\100\101\032\109\111\118\105\109\101\110\116\111\046','\067\117\114\114\101\110\116\032\103\097\109\101\032\097\110\100\032\109\111\118\101\109\101\110\116\032\115\104\111\114\116\099\117\116\115\046'),n(
'\073\110\u{ed}\099\105\111','\072\111\109\101'))local aS=aQ('\103\097\109\101\115',n('\074\111\103\111\115','\071\097\109\101\115'),n(
'\077\u{f3}\100\117\108\111\115\032\100\101\100\105\099\097\100\111\115\032\100\105\115\112\111\110\u{ed}\118\101\105\115\032\110\111\032\065\110\111\110\072\117\098\046',
'\068\101\100\105\099\097\116\101\100\032\109\111\100\117\108\101\115\032\097\118\097\105\108\097\098\108\101\032\105\110\032\065\110\111\110\072\117\098\046'))local aT=aQ('\097\105\109',n('\077\105\114\097','\065\105\109'),n(
'\065\106\117\115\116\101\032\097\032\114\101\115\112\111\115\116\097\044\032\111\115\032\097\108\118\111\115\032\101\032\111\032\099\097\109\112\111\032\100\101\032\118\105\115\u{e3}\111\046',
'\065\100\106\117\115\116\032\114\101\115\112\111\110\115\101\044\032\116\097\114\103\101\116\115\044\032\097\110\100\032\102\105\101\108\100\032\111\102\032\118\105\101\119\046'))local aU=aQ('\118\105\115\105\111\110','\069\083\080',n(
'\067\111\110\102\105\103\117\114\101\032\097\032\097\112\114\101\115\101\110\116\097\u{e7}\u{e3}\111\032\100\111\115\032\106\111\103\097\100\111\114\101\115\032\110\097\032\116\101\108\097\046',
'\067\104\111\111\115\101\032\104\111\119\032\112\108\097\121\101\114\115\032\097\114\101\032\100\105\115\112\108\097\121\101\100\032\111\110\032\115\099\114\101\101\110\046'))local aV=aQ('\115\101\116\116\105\110\103\115',n(
'\065\106\117\115\116\101\115','\083\101\116\116\105\110\103\115'),n(
'\080\101\114\115\111\110\097\108\105\122\101\032\097\032\097\112\097\114\u{ea}\110\099\105\097\032\101\032\097\032\112\111\115\105\u{e7}\u{e3}\111\032\100\111\032\112\097\105\110\101\108\046',
'\067\117\115\116\111\109\105\122\101\032\116\104\101\032\097\112\112\101\097\114\097\110\099\101\032\097\110\100\032\112\097\110\101\108\032\112\111\115\105\116\105\111\110\046'))aP('\099\111\110\116\114\111\108\115')l.gameCatalog(aS,b
.language,1)l.gameCard(aR,b.identity,n(
'\083\069\083\083\u{c3}\079\032\065\084\073\086\065\032\u{b7}\032\077\u{d3}\068\085\076\079\032\085\078\073\086\069\082\083\065\076',
'\065\067\084\073\086\069\032\083\069\083\083\073\079\078\032\u{b7}\032\085\078\073\086\069\082\083\065\076\032\077\079\068\085\076\069'),2,true)local aW=b.access local aX if
type(aW)=='\116\097\098\108\101'then local aY=aW.plan=='\080\114\101\109\105\117\109'local aZ=l.make('\070\114\097\109\101',{Name=
'\077\101\109\098\101\114\115\104\105\112',AnchorPoint=Vector2.new(1,0),Position=UDim2.new(1,-58,0,6),
BackgroundColor3='\064\116\105\108\101',BorderSizePixel=0},O)l.make('\085\073\067\111\114\110\101\114',{CornerRadius=
UDim.new(0,9)},aZ)local a_=l.make('\085\073\083\116\114\111\107\101',{Color='\064\101\100\103\101',Thickness=1},aZ)
local a0=l.make('\073\109\097\103\101\076\097\098\101\108',{Position=UDim2.fromOffset(7,9),Size=UDim2.
fromOffset(32,32),Image=string.format(
'\114\098\120\116\104\117\109\098\058\047\047\116\121\112\101\061\065\118\097\116\097\114\072\101\097\100\083\104\111\116\038\105\100\061\037\100\038\119\061\049\048\048\038\104\061\049\048\048',k.UserId),BackgroundColor3=
'\064\100\097\114\107',BorderSizePixel=0},aZ)l.make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},a0)
local a1=l.label(aZ,'\084\101\120\116\076\097\098\101\108',k.DisplayName or k.Name,15,0)a1.Position,a1.Size
=UDim2.fromOffset(46,3),UDim2.new(1,-115,0,15)a1.Font,a1.TextSize,a1.
TextXAlignment=Enum.Font.GothamBold,12,Enum.TextXAlignment.Left a1.TextWrapped,
a1.TextTruncate=false,Enum.TextTruncate.AtEnd local a2=l.label(aZ,'\084\101\120\116\076\097\098\101\108',
'\064'..k.Name,14,0)a2.Position,a2.Size=UDim2.fromOffset(46,18),UDim2.new(1,-53,0,
14)a2.TextSize,a2.TextXAlignment=10,Enum.TextXAlignment.Left a2.TextWrapped,a2.
TextTruncate=false,Enum.TextTruncate.AtEnd l.paint(a2,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local
a3=l.label(aZ,'\084\101\120\116\076\097\098\101\108',aY and'\080\082\069\077\073\085\077'or'\077\069\077\066\069\082',15,0)a3.Position,a3.Size=
UDim2.new(1,-63,0,4),UDim2.fromOffset(57,15)a3.Font,a3.TextSize,a3.
BackgroundTransparency=Enum.Font.GothamBold,10,0 l.make('\085\073\067\111\114\110\101\114',{CornerRadius
=UDim.new(0,6)},a3)l.paint(a3,'\084\101\120\116\067\111\108\111\114\051','\100\097\114\107')if aY then local a4=Color3.
fromRGB(248,208,130)a3.BackgroundColor3,a_.Color=a4,a4 else l.paint(a3,
'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051','\097\099\099\101\110\116')end local a4=l.label(aZ,'\084\101\120\116\076\097\098\101\108','',15,0)a4.
Position=UDim2.fromOffset(46,32)a4.Font,a4.TextSize,a4.TextXAlignment=Enum.Font.
GothamMedium,11,Enum.TextXAlignment.Left a4.TextWrapped,a4.TextTruncate=false,
Enum.TextTruncate.AtEnd l.paint(a4,'\084\101\120\116\067\111\108\111\114\051','\097\099\116\105\118\101')local a5=aW.expiresAt
and os.date(n('\033\037\100\047\037\109\047\037\089\032\037\072\058\037\077\032\085\084\067','\033\037\089\045\037\109\045\037\100\032\037\072\058\037\077\032\085\084\067'),aW.expiresAt)local a6
=l.label(aZ,'\084\101\120\116\076\097\098\101\108',aW.keyLabel,13,0)a6.Position,a6.Size=UDim2.new(1,-63,0,
19),UDim2.fromOffset(57,13)a6.Font,a6.TextSize,a6.TextXAlignment=Enum.Font.Code,
9,Enum.TextXAlignment.Right l.paint(a6,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local a7=l.label(aZ,
'\084\101\120\116\076\097\098\101\108',a5 or'',15,0)a7.Position,a7.Size=UDim2.new(1,-113,0,32),UDim2.
fromOffset(107,15)a7.Font,a7.TextSize,a7.TextXAlignment=Enum.Font.Code,9,Enum.
TextXAlignment.Right l.paint(a7,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')aX=function(a8)local a9=a8
>=360 local ba=math.min(254,math.max(0,a8-(a9 and 206 or 110)))local bb=math.
max(0,a8-ba-122)local bc=a9 and bb>=122 aZ.Size=UDim2.fromOffset(ba,50)Q.Visible
,R.Visible=a9,bc Q.Position=UDim2.fromOffset(56,bc and 11 or 18)Q.Size,R.Size=
UDim2.fromOffset(bb,25),UDim2.fromOffset(bb,16)a6.Visible=ba>=206 a2.Size=UDim2.
new(1,a6.Visible and-113 or-53,0,14)a7.Visible=a5~=nil and ba>=248 a4.Size=UDim2
.new(1,a7.Visible and-163 or-53,0,15)end local function a8()if not ad or not aZ.
Parent then return end if aW.lifetime then a4.Text=n('\065\099\101\115\115\111\032\118\105\116\097\108\u{ed}\099\105\111',
'\076\105\102\101\116\105\109\101\032\097\099\099\101\115\115')elseif aW.deadline or aW.expiresAt then local a9=math.max(0,aW
.deadline and(aW.deadline-os.clock())or(aW.expiresAt-os.time()))if a9<=0 then a4
.Text=n('\065\099\101\115\115\111\032\101\120\112\105\114\097\100\111','\065\099\099\101\115\115\032\101\120\112\105\114\101\100')elseif a9<60 then a4.Text=string.
format(n('\082\101\115\116\097\109\032\037\100\115','\037\100\115\032\108\101\102\116'),math.ceil(a9))task.delay(1,a8)else local ba=
math.ceil(a9/60)a4.Text=string.format(n('\082\101\115\116\097\109\032\037\100\104\032\037\048\050\100\109','\037\100\104\032\037\048\050\100\109\032\108\101\102\116'),
math.floor(ba/60),ba%60)task.delay((a9%60)+0.05,a8)end else a4.Text=n(
'\086\097\108\105\100\097\100\101\032\110\u{e3}\111\032\105\110\102\111\114\109\097\100\097','\069\120\112\105\114\121\032\117\110\097\118\097\105\108\097\098\108\101')end end a8()end l.resources(
aR,1,b.language,function()aP('\103\097\109\101\115')end)af()local function aY(aZ,a_,a0)local a1
=l.make('\070\114\097\109\101',{Size=UDim2.new(1,0,0,26),LayoutOrder=a0,BackgroundTransparency=
1},aZ)l.make('\070\114\097\109\101',{Size=UDim2.new(1,0,0,1),BackgroundColor3='\064\101\100\103\101',
BorderSizePixel=0},a1)local a2=l.label(a1,'\084\101\120\116\076\097\098\101\108',a_,20,0)a2.Position=UDim2.
fromOffset(0,6)l.paint(a2,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')a2.Font=Enum.Font.Code a2.
TextSize=11 a2.TextXAlignment=Enum.TextXAlignment.Left end local function aZ(a_,
a0)return l.make('\070\114\097\109\101',{Size=UDim2.new(1,0,0,44),LayoutOrder=a0,
BackgroundTransparency=1},a_)end local function a_(a0,a1,a2)local a3=l.button(a0
,'',a2)a3.Name=a1 a3.AutoButtonColor=false local a4=l.label(a3,'\084\101\120\116\076\097\098\101\108',a1,42
,0)a4.Position,a4.Size=UDim2.fromOffset(11,0),UDim2.new(1,-56,1,0)a4.TextSize,a4
.TextXAlignment=12,Enum.TextXAlignment.Left local a5=l.make('\070\114\097\109\101',{AnchorPoint
=Vector2.new(1,0.5),Position=UDim2.new(1,-10,0.5,0),Size=UDim2.fromOffset(31,16)
,BorderSizePixel=0},a3)local a6=l.make('\070\114\097\109\101',{Size=UDim2.fromOffset(12,12),
BorderSizePixel=0},a5)l.make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},a5)l.make(
'\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},a6)return a3,function(a7)l.paint(a5,
'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051',a7 and'\097\099\116\105\118\101'or'\101\100\103\101')l.paint(a6,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051',a7 and
'\100\097\114\107'or'\109\117\116\101\100')a6.Position=UDim2.fromOffset(a7 and 17 or 2,2)end end local
function a0(a1,a2,a3,a4,a5)local a6,a7=a_(a1,a3,0)a6.Position=UDim2.fromScale(a4
and 0.51 or 0,0)a6.Size=UDim2.fromScale(0.49,1)local function a8()a7(ae[a2])if
a2=='\097\105\109'or a2=='\101\115\112'then af()end end table.insert(ah,a8)a8()ax(a6.Activated,
function()ae[a2]=not ae[a2]if a5 then a5(ae[a2])end a8()end)end local function
a1(a2,a3,a4,a5,a6,a7,a8,a9,ba)local bb=aZ(a2,a9)local bc=l.label(bb,'\084\101\120\116\076\097\098\101\108',
a5,42,0)bc.Size=UDim2.new(1,-132,1,0)bc.TextXAlignment=Enum.TextXAlignment.Left
bc.TextSize=13 local bd=l.button(bb,'\u{2212}',0)bd.Position,bd.Size=UDim2.new(1
,-126,0,0),UDim2.fromOffset(36,42)local be=l.label(bb,'\084\101\120\116\066\111\120',tostring(a3[a4])
,42,0)be.Position,be.Size=UDim2.new(1,-86,0,0),UDim2.fromOffset(46,42)be.
BackgroundTransparency=0 l.paint(be,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051','\116\105\108\101')be.
ClearTextOnFocus=false l.make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(0,5)},be)local
bf=l.button(bb,'\043',0)bf.Position,bf.Size=UDim2.new(1,-36,0,0),UDim2.fromOffset(
36,42)local function bg()be.Text=tostring(a3[a4])end table.insert(ah,bg)local
function bh(bi)if bi and bi==bi then local bj=math.clamp(math.floor(bi+0.5),a6,
a7)if bj~=a3[a4]then a3[a4]=bj if ba then ba()end end end bg()end ax(bd.
Activated,function()bh(a3[a4]-a8)end)ax(bf.Activated,function()bh(a3[a4]+a8)end)
ax(be.FocusLost,function()bh(tonumber(be.Text))end)end local a2=l.button(L,'\065',0
,true)a2.ZIndex=20 a2.TextSize=23 b.decorateLauncher(a2)local function a3()M.
Visible=not M.Visible end local a4=0 ax(a2.Activated,function()if os.clock()>a4
then a3()end end)local a5=l.button(O,'\u{2212}',0)a5.Position,a5.Size=UDim2.new(
1,-50,0,14),UDim2.fromOffset(34,34)ax(a5.Activated,a3)local a6=8 local function
a7(a8,a9,ba,bb)local bc=math.max(0,a8.X-a9.X-2*a6)local bd=math.max(0,a8.Y-a9.Y-
2*a6)return a6+bc*ba,a6+bd*bb end local function a8(a9,ba)local bb=i and L.
AbsoluteSize.X<L.AbsoluteSize.Y local bc=not bb and a9>=530 and ba>=158+ab*46 T.
Visible=bc S.Position=UDim2.fromOffset(12,74)S.Size=bc and UDim2.new(0,132,1,-
118)or UDim2.new(1,-24,0,44)for bd,be in pairs(aa)do local bf,bg=_[bd],Z[bd]be.
number.Visible=bc if bc then bf.Position,bf.Size=UDim2.fromOffset(6,34+(be.index
-1)*46),UDim2.new(1,-12,0,40)be.caption.Text,be.caption.TextSize=be.title,12 be.
caption.Position,be.caption.Size=UDim2.fromOffset(37,0),UDim2.new(1,-45,1,0)be.
caption.TextXAlignment=Enum.TextXAlignment.Left be.marker.Position,be.marker.
Size=UDim2.fromOffset(0,10),UDim2.fromOffset(3,20)bg.Position,bg.Size=UDim2.
fromOffset(160,74),UDim2.new(1,-172,1,-118)else bf.Position=UDim2.new((be.index-
1)/ab,3,0,3)bf.Size=UDim2.new(1/ab,-6,1,-6)be.caption.Text,be.caption.TextSize=
be.compactTitle,11 be.caption.Position,be.caption.Size=UDim2.fromOffset(0,0),
UDim2.fromScale(1,1)be.caption.TextXAlignment=Enum.TextXAlignment.Center be.
marker.Position,be.marker.Size=UDim2.new(0.25,0,1,-3),UDim2.new(0.5,0,0,2)bg.
Position,bg.Size=UDim2.fromOffset(12,130),UDim2.new(1,-24,1,-170)end end end
local function a9()local ba=L.AbsoluteSize if ba.X<50 or ba.Y<50 then return end
local bb=E.scale/100 local bc=math.min(E.width,(ba.X-2*a6)/bb)local bd=math.min(
E.height,(ba.Y-2*a6)/bb)M.Size,N.Scale=UDim2.fromOffset(bc,bd),bb M.
BackgroundTransparency=1-E.opacity/100 if aX then aX(bc)end a8(bc,bd)local be=
Vector2.new(bc*bb,bd*bb)local bf,bg=a7(ba,be,E.panelX,E.panelY)M.Position=UDim2.
fromOffset(bf+be.X*0.5,bg+be.Y*0.5)local bh=math.min(E.launcher,ba.X-2*a6,ba.Y-2
*a6)a2.Size=UDim2.fromOffset(bh,bh)local bi,bj=a7(ba,Vector2.new(bh,bh),E.
buttonX,E.buttonY)a2.Position=UDim2.fromOffset(bi,bj)end local ba,bb,bc,bd,be
local function bf(bg,bh)if not ba and(bg.UserInputType==Enum.UserInputType.Touch
or bg.UserInputType==Enum.UserInputType.MouseButton1)then ba=bg bb=bg.Position
bd=bh bc=bh.AbsolutePosition-L.AbsolutePosition be=false end end ax(O.InputBegan
,function(bg)bf(bg,M)end)ax(a2.InputBegan,function(bg)bf(bg,a2)end)ax(e.
InputChanged,function(bg)if not ba or(ba.UserInputType==Enum.UserInputType.Touch
and bg~=ba)or(ba.UserInputType==Enum.UserInputType.MouseButton1 and bg.
UserInputType~=Enum.UserInputType.MouseMovement)then return end local bh=bg.
Position-bb if not be and bh.Magnitude<6 then return end be=true local bi,bj=L.
AbsoluteSize,bd.AbsoluteSize local bk,bl=math.max(0,bi.X-bj.X-2*a6),math.max(0,
bi.Y-bj.Y-2*a6)local bm=math.clamp(bc.X+bh.X,a6,a6+bk)local bn=math.clamp(bc.Y+
bh.Y,a6,a6+bl)if bd==M then bd.Position=UDim2.fromOffset(bm+bj.X*0.5,bn+bj.Y*0.5
)if bk>0 then E.panelX=(bm-a6)/bk end if bl>0 then E.panelY=(bn-a6)/bl end else
bd.Position=UDim2.fromOffset(bm,bn)if bk>0 then E.buttonX=(bm-a6)/bk end if bl>0
then E.buttonY=(bn-a6)/bl end a4=os.clock()+0.25 end end)local function bg()if
not ba then return end ba=nil if be then if bd==a2 then a4=os.clock()+0.25 end
G()end end ax(e.InputEnded,function(bh)if bh==ba then bg()end end)ax(e.
WindowFocusReleased,function()bg()aw.up,aw.down,aw.aim=false,false,false as,at,
av=nil,nil,false if au then au.target=nil end end)ax(L:GetPropertyChangedSignal(
'\065\098\115\111\108\117\116\101\083\105\122\101'),function()if not ba then a9()end end)a9()ax(e.InputBegan,
function(bh,bi)if not bi and bh.KeyCode==Enum.KeyCode.RightShift then a3()end
end)local function bh(bi,bj,bk,bl,bm)local bn=l.button(L,bj,0,true)bn.Position,
bn.Size=UDim2.new(1,-bl-12,1,bk),UDim2.fromOffset(bl,46)bn.Visible,bn.ZIndex=
false,30 local bo,bp local function bq()bo=nil aw[bi]=false if bp then bp:
Disconnect()bp=nil end if bi=='\097\105\109'and au then au.target=nil end end ax(bn.
InputBegan,function(br)if(not bm or bm())and(not bo or not aw[bi])and(br.
UserInputType==Enum.UserInputType.Touch or br.UserInputType==Enum.UserInputType.
MouseButton1)then if bo then bq()end bo,aw[bi]=br,true if br.UserInputType==Enum
.UserInputType.Touch then bp=br:GetPropertyChangedSignal('\085\115\101\114\073\110\112\117\116\083\116\097\116\101'):
Connect(function()if br.UserInputState==Enum.UserInputState.Cancel or br.
UserInputState==Enum.UserInputState.End then bq()end end)end end end)ax(e.
InputEnded,function(br)if br==bo then bq()end end)ax(e.WindowFocusReleased,bq)bn
.Destroying:Connect(bq)return bn,bq end local bi=bh('\117\112',n('\u{2191}\032\032\083\085\066\073\082',
'\u{2191}\032\032\085\080'),-165,103)local bj=bh('\100\111\119\110',n('\u{2193}\032\032\068\069\083\067\069\082',
'\u{2193}\032\032\068\079\087\078'),-112,103)local bk,bl=bh('\097\105\109',n('\077\073\082\065\082','\065\073\077'),-64,112,
function()return H()=='\104\111\108\100'end)local function bm()if not g then return end
local bn=E.aimTouchSide=='\108\101\102\116'bk.AnchorPoint=Vector2.new(bn and 0 or 1,0.5)bk.
Position=UDim2.new(bn and 0 or 1,bn and 10 or-10,0.43,0)bk.Size=UDim2.
fromOffset(112,50)end bm()ar=l.make('\083\099\114\101\101\110\071\117\105',{Name='\065\110\111\110\072\117\098\065\105\109\079\118\101\114\108\097\121',
ResetOnSpawn=false,IgnoreGuiInset=true,ScreenInsets=Enum.ScreenInsets.
DeviceSafeInsets,DisplayOrder=10026},J)local bn=l.make('\070\114\097\109\101',{AnchorPoint=
Vector2.new(0.5,0.5),BackgroundTransparency=1,Visible=false,Active=false},ar)l.
make('\085\073\067\111\114\110\101\114',{CornerRadius=UDim.new(1,0)},bn)local bo=l.make('\085\073\083\116\114\111\107\101',{
Color='\064\097\099\099\101\110\116',Thickness=1,Transparency=0.18},bn)local bp=l.label(ar,
'\084\101\120\116\076\097\098\101\108','',24,0)bp.AnchorPoint,bp.Size=Vector2.new(0.5,0),UDim2.fromOffset(
240,24)bp.Font,bp.TextSize=Enum.Font.GothamBold,12 bp.TextStrokeTransparency,bp.
Visible=0.25,false local function bq()as,at=nil,nil if au then au.target=nil end
end local function br()bl()av=false bq()end local function bs()local bt=H()==
'\116\111\103\103\108\101'and(av and n('\080\065\082\065\082\032\077\073\082\065','\083\084\079\080\032\065\073\077')or n('\076\073\071\065\082\032\077\073\082\065','\083\084\065\082\084\032\065\073\077'))or
n('\083\069\071\085\082\065\082\032\077\073\082\065','\072\079\076\068\032\065\073\077')if bk.Text~=bt then bk.Text=bt end end local
function bt()if not ae.aim or H()~='\116\111\103\103\108\101'then return end av=not av bq()bs()end
ax(bk.Activated,bt)ax(e.InputBegan,function(bu,bv)if not bv and not e:
GetFocusedTextBox()and(bu.UserInputType==Enum.UserInputType.MouseButton2 or bu.
KeyCode==Enum.KeyCode.LeftAlt)then bt()end end)local function bu()bi.Visible,bj.
Visible=ae.fly==true,ae.fly==true bk.Visible=ae.aim==true and H()~='\097\108\119\097\121\115'and(
not h()or not M.Visible)if not ae.fly then aw.up,aw.down=false,false end if not
ae.aim then br()bn.Visible=false bp.Visible=false end bs()end table.insert(ah,bu
)if g then ax(M:GetPropertyChangedSignal('\086\105\115\105\098\108\101'),function()if M.Visible then
bl()bq()end bu()end)end local bv=aZ(aR,4)a0(bv,'\102\108\121',n('\086\111\111','\070\108\121'),false,
function(bw)if not bw then aJ()end bu()end)a0(bv,'\110\111\099\108\105\112','\078\111\099\108\105\112',true,function
(bw)if not bw then aH()end end)local bw=aZ(aR,5)a0(bw,'\115\112\101\101\100',n('\086\101\108\111\099\105\100\097\100\101',
'\087\097\108\107\032\115\112\101\101\100'),false,function(bx)if not bx then aF(an)an=nil end end)a0(bw,'\106\117\109\112'
,n('\083\097\108\116\111\032\105\110\102\105\110\105\116\111','\073\110\102\105\110\105\116\101\032\106\117\109\112'),true)a1(aR,ag,'\115\112\101\101\100',n(
'\086\101\108\111\099\105\100\097\100\101\032\097\111\032\097\110\100\097\114','\087\097\108\107\032\115\112\101\101\100'),4,120,4,6)a1(aR,ag,'\102\108\121',n(
'\086\101\108\111\099\105\100\097\100\101\032\100\101\032\118\111\111','\070\108\105\103\104\116\032\115\112\101\101\100'),10,180,10,7)aY(aT,n(
'\077\073\082\065\032\069\032\067\065\077\080\079\032\068\069\032\086\073\083\u{c3}\079','\065\073\077\032\065\078\068\032\070\073\069\076\068\032\079\070\032\086\073\069\087'),1)local bx=aZ(aT,2)a0(bx,
'\097\105\109',n('\077\105\114\097\032\097\115\115\105\115\116\105\100\097','\065\105\109\032\097\115\115\105\115\116'),false,function(by)if by and h()then av=H(
)=='\116\111\103\103\108\101'M.Visible=false end bu()end)a0(bx,'\102\111\118',n('\070\079\086\032\100\097\032\099\u{e2}\109\101\114\097',
'\067\097\109\101\114\097\032\070\079\086'),true,function(by)if not by then aF(ao)ao=nil end end)a1(aT,E,
'\099\097\109\101\114\097\070\111\118',n('\067\097\109\112\111\032\100\101\032\118\105\115\u{e3}\111\032\100\097\032\099\u{e2}\109\101\114\097\032\040\u{b0}\041',
'\067\097\109\101\114\097\032\102\105\101\108\100\032\111\102\032\118\105\101\119\032\040\u{b0}\041'),35,120,5,3,G)local by=l.label(aR,'\084\101\120\116\076\097\098\101\108',n(
'\080\097\114\097\032\118\111\097\114\044\032\117\115\101\032\111\032\100\105\114\101\099\105\111\110\097\108\032\101\032\111\115\032\098\111\116\u{f5}\101\115\032\108\097\116\101\114\097\105\115\046',
'\085\115\101\032\109\111\118\101\109\101\110\116\032\099\111\110\116\114\111\108\115\032\097\110\100\032\116\104\101\032\115\105\100\101\032\098\117\116\116\111\110\115\032\116\111\032\102\108\121\046'),40,8)by.TextSize=12 l.
paint(by,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')ax(l.button(aR,n('\082\069\083\084\065\085\082\065\082\032\067\079\078\084\082\079\076\069\083',
'\082\069\083\069\084\032\067\079\078\084\082\079\076\083'),9,true).Activated,aM)local function bz(bA,bB,bC,bD,bE,bF,bG,bH
)local bI=l.make('\070\114\097\109\101',{Size=UDim2.new(1,0,0,math.ceil(#bB/bD)*39),LayoutOrder
=bE,BackgroundTransparency=1},bA)l.make('\085\073\071\114\105\100\076\097\121\111\117\116',{CellSize=UDim2.new(1/bD,
-4,0,34),CellPadding=UDim2.fromOffset(4,5),SortOrder=Enum.SortOrder.LayoutOrder}
,bI)local bJ={}local function bK()for bL,bM in pairs(bJ)do local bN=E[bC]==bL l.
paint(bM,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051',bN and'\097\099\099\101\110\116'or'\116\105\108\101')l.paint(bM,'\084\101\120\116\067\111\108\111\114\051',bN
and'\100\097\114\107'or'\116\101\120\116')end end for bL,bM in ipairs(bB)do local bN=bM[1]local bO=l.
button(bI,bF(bM),bL)bO.TextSize=11 bJ[bN]=bO local bP=bH and bH(bM)if bP then
local bQ=l.make('\070\114\097\109\101',{Position=UDim2.fromOffset(5,5),Size=UDim2.fromOffset(7,
7),BorderSizePixel=0,BackgroundColor3=bP},bO)l.make('\085\073\067\111\114\110\101\114',{CornerRadius=
UDim.new(1,0)},bQ)end ax(bO.Activated,function()if E[bC]==bN then return end E[
bC]=bN if bG then bG(bN)end bK()G()end)end bK()return bK end local function bA(
bB,bC,bD,bE,bF,bG)local bH,bI=a_(bB,bD,bE)local function bJ()if bG then return
bG()end return E[bC]end local function bK()bI(bJ())end bK()ax(bH.Activated,
function()E[bC]=not bJ()if bF then bF()end bK()G()end)return bK end local
function bB(bC)return n(bC[2],bC[3])end aY(aT,n('\065\084\073\086\065\u{c7}\u{c3}\079',
'\065\067\084\073\086\065\084\073\079\078'),4)local bC=l.label(aT,'\084\101\120\116\076\097\098\101\108','',36,6)bC.TextSize=11 l.paint(
bC,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local function bD()local bE=H()bC.Text=bE=='\097\108\119\097\121\115'and
n('\065\032\109\105\114\097\032\097\099\111\109\112\097\110\104\097\032\097\108\118\111\115\032\101\110\113\117\097\110\116\111\032\101\115\116\105\118\101\114\032\108\105\103\097\100\097\046',
'\065\105\109\032\116\114\097\099\107\115\032\116\097\114\103\101\116\115\032\119\104\105\108\101\032\101\110\097\098\108\101\100\046')or bE=='\116\111\103\103\108\101'and(h()and n(
'\065\032\109\105\114\097\032\099\111\109\101\u{e7}\097\032\097\111\032\108\105\103\097\114\046\032\085\115\101\032\111\032\098\111\116\u{e3}\111\032\108\097\116\101\114\097\108\032\112\097\114\097\032\112\097\117\115\097\114\032\111\117\032\114\101\116\111\109\097\114\046',
"\065\105\109\032\115\116\097\114\116\115\032\119\104\101\110\032\101\110\097\098\108\101\100\046\032\085\115\101\032\116\104\101\032\115\105\100\101\032\098\117\116\116\111\110\032\116\111\032\112\097\117\115\101\032\111\114\032\114\101\115\117\109\101\046")or n(
'\085\115\101\032\111\032\098\111\116\u{e3}\111\032\100\105\114\101\105\116\111\044\032\065\108\116\032\101\115\113\117\101\114\100\111\032\111\117\032\111\032\098\111\116\u{e3}\111\032\108\097\116\101\114\097\108\046',
'\085\115\101\032\114\105\103\104\116\032\109\111\117\115\101\044\032\076\101\102\116\032\065\108\116\044\032\111\114\032\116\104\101\032\115\105\100\101\032\098\117\116\116\111\110\046'))or n(
'\083\101\103\117\114\101\032\111\032\098\111\116\u{e3}\111\032\108\097\116\101\114\097\108\044\032\111\032\098\111\116\u{e3}\111\032\100\105\114\101\105\116\111\032\100\111\032\109\111\117\115\101\032\111\117\032\065\108\116\032\101\115\113\117\101\114\100\111\046',
'\072\111\108\100\032\116\104\101\032\115\105\100\101\032\098\117\116\116\111\110\044\032\114\105\103\104\116\032\109\111\117\115\101\032\111\114\032\076\101\102\116\032\065\108\116\046')end bz(aT,t,'\097\105\109\065\099\116\105\118\097\116\105\111\110',2,5
,bB,function()br()bu()bD()end)ax(e:GetPropertyChangedSignal('\080\114\101\102\101\114\114\101\100\073\110\112\117\116'),
function()br()bu()bD()af()end)bD()aY(aT,n('\082\069\083\080\079\083\084\065\032\068\065\032\077\073\082\065','\065\073\077\032\082\069\083\080\079\078\083\069'),7)
local bE if not j then bE=n(
'\083\105\108\101\110\116\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\032\110\101\115\116\101\032\106\111\103\111\046\032\085\115\101\032\083\117\097\118\101\032\111\117\032\068\105\114\101\116\097\046',
'\083\105\108\101\110\116\032\105\115\032\117\110\097\118\097\105\108\097\098\108\101\032\104\101\114\101\046\032\085\115\101\032\083\109\111\111\116\104\032\111\114\032\068\105\114\101\099\116\046')elseif g then bE=n(
'\083\105\108\101\110\116\032\102\117\110\099\105\111\110\097\032\099\111\109\032\097\114\109\097\115\032\113\117\101\032\117\115\097\109\032\109\111\117\115\101\032\099\108\u{e1}\115\115\105\099\111\032\111\117\032\114\097\105\111\032\099\101\110\116\114\097\108\032\100\097\032\099\u{e2}\109\101\114\097\046'
,"\083\105\108\101\110\116\032\119\111\114\107\115\032\119\105\116\104\032\119\101\097\112\111\110\115\032\116\104\097\116\032\117\115\101\032\099\108\097\115\115\105\099\032\109\111\117\115\101\032\111\114\032\097\032\099\101\110\116\101\114\101\100\032\099\097\109\101\114\097\032\114\097\121\046")
else bE=n('\083\105\108\101\110\116\032\102\117\110\099\105\111\110\097\032\099\111\109\032\097\114\109\097\115\032\113\117\101\032\117\115\097\109\032\109\111\117\115\101\032\099\108\u{e1}\115\115\105\099\111\046',
'\083\105\108\101\110\116\032\119\111\114\107\115\032\119\105\116\104\032\119\101\097\112\111\110\115\032\116\104\097\116\032\117\115\101\032\099\108\097\115\115\105\099\032\109\111\117\115\101\046')end local bF bz(aT,v,
'\097\105\109\082\101\115\112\111\110\115\101',#v,8,bB,function()bq()bF.Text=bE end)a1(aT,E,'\097\105\109\083\112\101\101\100',n(
'\086\101\108\111\099\105\100\097\100\101\032\100\097\032\109\105\114\097\032\115\117\097\118\101','\083\109\111\111\116\104\032\097\105\109\032\115\112\101\101\100'),3,70,2,9,G)aY(aT,n(
'\080\082\073\079\082\073\068\065\068\069\032\068\069\032\065\076\086\079','\084\065\082\071\069\084\032\080\082\073\079\082\073\084\089'),10)bz(aT,y,'\097\105\109\080\114\105\111\114\105\116\121',2,11,bB,bq)aY(
aT,n('\080\079\078\084\079\032\068\079\032\065\076\086\079','\084\065\082\071\069\084\032\080\065\082\084'),12)bz(aT,z,'\097\105\109\080\097\114\116',3,13,bB,bq)a1(aT,E,
'\097\105\109\082\097\110\103\101',n('\065\108\099\097\110\099\101\032\100\097\032\109\105\114\097','\065\105\109\032\114\097\110\103\101'),75,1500,50,14,G)bA(aT,'\097\105\109\084\101\097\109',n(
'\073\103\110\111\114\097\114\032\097\108\105\097\100\111\115\032\110\097\032\109\105\114\097','\073\103\110\111\114\101\032\116\101\097\109\109\097\116\101\115\032\105\110\032\097\105\109'),15,bq)bz(aT,w,
'\097\105\109\079\098\115\116\097\099\108\101\115',3,16,bB,bq)bA(aT,'\097\105\109\083\116\105\099\107\121',n('\077\097\110\116\101\114\032\111\032\097\108\118\111\032\097\116\117\097\108',
'\075\101\101\112\032\099\117\114\114\101\110\116\032\116\097\114\103\101\116'),17)bA(aT,'\097\105\109\067\117\115\116\111\109\067\097\109\101\114\097',n(
'\065\099\101\105\116\097\114\032\099\u{e2}\109\101\114\097\032\112\101\114\115\111\110\097\108\105\122\097\100\097','\065\108\108\111\119\032\099\117\115\116\111\109\032\099\097\109\101\114\097'),18,bq)aY(aT,n(
'\067\u{cd}\082\067\085\076\079\032\068\069\032\077\073\082\065','\065\073\077\032\067\073\082\067\076\069'),19)bz(aT,A,'\097\105\109\067\105\114\099\108\101',3,20,bB)a1(aT,E,
'\097\105\109\082\097\100\105\117\115',n('\082\097\105\111\032\100\111\032\099\u{ed}\114\099\117\108\111\032\040\112\120\041','\067\105\114\099\108\101\032\114\097\100\105\117\115\032\040\112\120\041'),30,500,15,21,G)
a1(aT,E,'\097\105\109\079\102\102\115\101\116\089',n('\065\106\117\115\116\101\032\118\101\114\116\105\099\097\108\032\040\112\120\041','\086\101\114\116\105\099\097\108\032\111\102\102\115\101\116\032\040\112\120\041'),-130,130,5
,22,G)a1(aT,E,'\097\105\109\087\105\100\116\104',n('\069\115\112\101\115\115\117\114\097\032\100\111\032\099\u{ed}\114\099\117\108\111','\067\105\114\099\108\101\032\116\104\105\099\107\110\101\115\115'),1,4,1
,23,G)bz(aT,B,'\097\105\109\067\105\114\099\108\101\067\111\108\111\114',2,24,bB,nil,function(bG)return bG[4]and l.rgb(bG[
4])end)bA(aT,'\097\105\109\076\097\098\101\108',n('\077\111\115\116\114\097\114\032\110\111\109\101\032\100\111\032\097\108\118\111','\083\104\111\119\032\116\097\114\103\101\116\032\110\097\109\101'),25)bF=l.
label(aT,'\084\101\120\116\076\097\098\101\108',bE,36,26)bF.TextSize=11 l.paint(bF,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')if
g then aY(aT,n('\076\065\068\079\032\068\079\032\066\079\084\u{c3}\079\032\068\069\032\077\073\082\065','\065\073\077\032\066\085\084\084\079\078\032\083\073\068\069'),27)bz(aT,u,
'\097\105\109\084\111\117\099\104\083\105\100\101',2,28,bB,bm)bA(aT,'\097\105\109\065\100\097\112\116\105\118\101\070\111\118',n('\082\097\105\111\032\097\100\097\112\116\097\100\111\032\u{e0}\032\116\101\108\097',
'\083\099\097\108\101\032\114\097\100\105\117\115\032\116\111\032\115\099\114\101\101\110'),29,bq)end a1(aT,E,'\097\105\109\079\102\102\115\101\116\088',n(
'\065\106\117\115\116\101\032\104\111\114\105\122\111\110\116\097\108\032\040\112\120\041','\072\111\114\105\122\111\110\116\097\108\032\111\102\102\115\101\116\032\040\112\120\041'),-130,130,5,30,function()bq()
G()end)aY(aU,n('\068\069\083\084\065\081\085\069\032\068\069\032\074\079\071\065\068\079\082\069\083','\080\076\065\089\069\082\032\072\073\071\072\076\073\071\072\084\073\078\071'),1)local bG=aZ(aU,2
)a0(bG,'\101\115\112','\069\083\080',false,function(bH)if not bH then aK()end end)aY(aU,n('\069\083\084\073\076\079'
,'\083\084\089\076\069'),3)local bH bz(aU,q,'\101\115\112\077\111\100\101',2,4,bB,function()aK()if bH then bH()end
end)aY(aU,n('\067\079\082\032\068\079\032\069\083\080','\069\083\080\032\067\079\076\079\082'),5)local bI=bz(aU,r,'\101\115\112\067\111\108\111\114',3,6,bB,nil,
function(bI)return bI[4]and l.rgb(bI[4])end)local bJ=aZ(aU,7)local bK=l.label(bJ
,'\084\101\120\116\076\097\098\101\108',n('\067\111\114\032\112\101\114\115\111\110\097\108\105\122\097\100\097','\067\117\115\116\111\109\032\099\111\108\111\114'),42,0)bK.Size,bK.
TextXAlignment=UDim2.new(1,-166,1,0),Enum.TextXAlignment.Left bK.TextSize=12
local bL=l.label(bJ,'\084\101\120\116\066\111\120','\035'..E.espHex,42,0)bL.Position,bL.Size=UDim2.new(1
,-166,0,0),UDim2.fromOffset(85,42)bL.ClearTextOnFocus,bL.BackgroundTransparency=
false,0 l.paint(bL,'\066\097\099\107\103\114\111\117\110\100\067\111\108\111\114\051','\116\105\108\101')l.make('\085\073\067\111\114\110\101\114',{CornerRadius=
UDim.new(0,6)},bL)local bM=l.button(bJ,n('\065\080\076\073\067\065\082','\065\080\080\076\089'),0)bM.Position,bM.
Size=UDim2.new(1,-75,0,0),UDim2.fromOffset(75,42)local bN=l.label(aU,'\084\101\120\116\076\097\098\101\108'
,'',25,8)bN.Visible=false bN.TextSize=11 l.paint(bN,'\084\101\120\116\067\111\108\111\114\051','\109\117\116\101\100')local
function bO()local bP=D(bL.Text)bN.Visible=not bP if not bP then bN.Text=n(
'\085\115\101\032\115\101\105\115\032\100\u{ed}\103\105\116\111\115\032\104\101\120\097\100\101\099\105\109\097\105\115\044\032\099\111\109\111\032\035\070\070\055\065\056\068\046',
'\085\115\101\032\115\105\120\032\104\101\120\032\100\105\103\105\116\115\044\032\115\117\099\104\032\097\115\032\035\070\070\055\065\056\068\046')return end E.espHex,E.espColor=bP,
'\099\117\115\116\111\109'bL.Text='\035'..bP bI()G()end ax(bM.Activated,bO)ax(bL.FocusLost,function(
bP)if bP then bO()end end)bA(aU,'\101\115\112\084\104\114\111\117\103\104',n('\065\116\114\097\118\u{e9}\115\032\100\101\032\112\097\114\101\100\101\115',
'\084\104\114\111\117\103\104\032\119\097\108\108\115'),9,aK)bA(aU,'\101\115\112\084\101\097\109',n('\073\103\110\111\114\097\114\032\097\108\105\097\100\111\115\032\110\111\032\069\083\080',
'\073\103\110\111\114\101\032\116\101\097\109\109\097\116\101\115\032\105\110\032\069\083\080'),10,aK)a1(aU,E,'\101\115\112\082\097\110\103\101',n(
'\068\105\115\116\u{e2}\110\099\105\097\032\109\u{e1}\120\105\109\097\032\100\111\032\069\083\080','\077\097\120\105\109\117\109\032\069\083\080\032\114\097\110\103\101'),100,1500,50,11,G)aY(aU,
n('\073\078\070\079\082\077\065\u{c7}\u{d5}\069\083\032\068\079\032\074\079\071\065\068\079\082','\080\076\065\089\069\082\032\068\069\084\065\073\076\083'),12)bz(aU,s,'\101\115\112\078\105\099\107',2,13
,bB,aK)bA(aU,'\101\115\112\068\105\115\116\097\110\099\101',n('\077\111\115\116\114\097\114\032\100\105\115\116\u{e2}\110\099\105\097','\083\104\111\119\032\100\105\115\116\097\110\099\101'),14,aK)bH=
bA(aU,'\101\115\112\072\101\097\108\116\104',n('\077\111\115\116\114\097\114\032\098\097\114\114\097\032\100\101\032\118\105\100\097','\083\104\111\119\032\104\101\097\108\116\104\032\098\097\114'),15,aK,I)bz(aU,x,
'\101\115\112\076\097\098\101\108\115',2,16,bB,aK)bA(aU,'\101\115\112\067\117\115\116\111\109\082\105\103\115',n(
'\080\101\114\115\111\110\097\103\101\110\115\032\112\101\114\115\111\110\097\108\105\122\097\100\111\115\032\040\069\083\080\032\101\032\109\105\114\097\041','\067\117\115\116\111\109\032\099\104\097\114\097\099\116\101\114\115\032\040\069\083\080\032\097\110\100\032\097\105\109\041'),17,
function()aK()bq()end)aY(aV,n('\084\069\077\065\083\032\068\079\032\072\085\066','\072\085\066\032\084\072\069\077\069\083'),1)bz(aV,l.themes,
'\116\104\101\109\101',2,2,function(bP)return bP[2]end,l.setTheme,function(bP)return l.
themeAccent(bP[1])end)aY(aV,n('\084\065\077\065\078\072\079\032\069\032\080\079\083\073\u{c7}\u{c3}\079','\083\073\090\069\032\065\078\068\032\080\079\083\073\084\073\079\078')
,3)local function bP()a9()G()end a1(aV,E,'\119\105\100\116\104',n('\076\097\114\103\117\114\097\032\100\111\032\112\097\105\110\101\108',
'\080\097\110\101\108\032\119\105\100\116\104'),300,900,20,4,bP)a1(aV,E,'\104\101\105\103\104\116',n('\065\108\116\117\114\097\032\100\111\032\112\097\105\110\101\108',
'\080\097\110\101\108\032\104\101\105\103\104\116'),340,880,20,5,bP)a1(aV,E,'\115\099\097\108\101',n(
'\069\115\099\097\108\097\032\100\111\032\116\101\120\116\111\032\101\032\099\111\110\116\114\111\108\101\115\032\040\037\041','\084\101\120\116\032\097\110\100\032\099\111\110\116\114\111\108\115\032\115\099\097\108\101\032\040\037\041'),65,140,5,6,bP)
a1(aV,E,'\108\097\117\110\099\104\101\114',n('\084\097\109\097\110\104\111\032\100\111\032\102\108\117\116\117\097\110\116\101','\070\108\111\097\116\105\110\103\032\098\117\116\116\111\110\032\115\105\122\101'),40,90,4,7,bP
)a1(aV,E,'\111\112\097\099\105\116\121',n('\079\112\097\099\105\100\097\100\101\032\100\111\032\112\097\105\110\101\108\032\040\037\041','\080\097\110\101\108\032\111\112\097\099\105\116\121\032\040\037\041'),60,100,5,8,
bP)ax(l.button(aV,n('\082\069\083\084\065\085\082\065\082\032\084\065\077\065\078\072\079\032\069\032\080\079\083\073\u{c7}\u{c3}\079',
'\082\069\083\069\084\032\083\073\090\069\032\065\078\068\032\080\079\083\073\084\073\079\078'),9).Activated,function()for bQ,bR in ipairs({'\119\105\100\116\104',
'\104\101\105\103\104\116','\115\099\097\108\101','\108\097\117\110\099\104\101\114','\111\112\097\099\105\116\121','\112\097\110\101\108\088','\112\097\110\101\108\089','\098\117\116\116\111\110\088','\098\117\116\116\111\110\089'})do
E[bR]=o[bR]end for bQ,bR in ipairs(ah)do bR()end bP()end)ax(l.button(aV,n(
'\073\068\073\079\077\065','\076\065\078\071\085\065\071\069'),10).Activated,b.chooseLanguage)ax(l.button(aV,n(
'\069\078\067\069\082\082\065\082\032\072\085\066','\067\076\079\083\069\032\072\085\066'),11).Activated,b.unload)ax(K.Destroying,function()if
ad then b.unload()end end)ax(k.CharacterRemoving,function()aL()br()end)local bQ=
-math.huge ax(e.JumpRequest,function()if not ae.jump or ae.fly or os.clock()-bQ<
0.12 then return end local bR=ay(k.Character)if bR and not bR.Sit then bQ=os.
clock()bR:ChangeState(Enum.HumanoidStateType.Jumping)end end)ax(d.PreSimulation,
function()if not ae.fly and not ae.noclip then return end local bR=k.Character
local bS,bT=ay(bR)if not bS then aL()return end if ae.noclip then if ak~=bR then
aI(bR)end for bU in pairs(aj)do if not bU:IsDescendantOf(bR)then if aj[bU]and bU
.Parent and not bU.CanCollide then bU.CanCollide=true end aj[bU]=nil elseif bU.
CanCollide then aj[bU]=true bU.CanCollide=false end end end if not ae.fly then
return end if bS.Sit or bT.Anchored then aJ()return end if not am or am.root~=bT
then aJ()local bU=l.make('\065\116\116\097\099\104\109\101\110\116',{Name='\065\110\111\110\072\117\098\070\108\105\103\104\116'},bT)local bV=l.make(
'\076\105\110\101\097\114\086\101\108\111\099\105\116\121',{Attachment0=bU,RelativeTo=Enum.ActuatorRelativeTo.World,
ForceLimitsEnabled=false,VelocityConstraintMode=Enum.VelocityConstraintMode.
Vector,VectorVelocity=Vector3.zero},bT)am={root=bT,attachment=bU,velocity=bV}end
local bU=not e:GetFocusedTextBox()local bV=aw.up or bU and(e:IsKeyDown(Enum.
KeyCode.Space)or e:IsKeyDown(Enum.KeyCode.E))local bW=aw.down or bU and(e:
IsKeyDown(Enum.KeyCode.LeftControl)or e:IsKeyDown(Enum.KeyCode.Q))local bX=bS.
MoveDirection local bY=Vector3.new(bX.X,(bV and 1 or 0)-(bW and 1 or 0),bX.Z)if
bY.Magnitude>1 then bY=bY.Unit end am.velocity.VectorVelocity=bY*ag.fly end)
local bR=RaycastParams.new()bR.FilterType=Enum.RaycastFilterType.Exclude local
function bS(bT)if bT.glow then bT.glow:Destroy()end if bT.billboard then bT.
billboard:Destroy()end if bT.box then bT.box:Destroy()end if bT.tag then bT.tag:
Destroy()end end local function bT(bU,bV,bW,bX,bY)local bZ={character=bU.
character,root=bU.root,humanoid=bU.humanoid}if bV then bZ.glow=l.make(
'\072\105\103\104\108\105\103\104\116',{Adornee=bU.character,DepthMode=E.espThrough and Enum.
HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded,
FillTransparency=0.88,OutlineTransparency=0.06},ap)end local b_=I()and bU.
humanoid~=nil if bW or b_ then local b0 if bY then bZ.tag=l.make('\070\114\097\109\101',{
BackgroundTransparency=1,Size=UDim2.fromOffset(172,31),AnchorPoint=Vector2.new(
0.5,1),Visible=false},aq)b0=bZ.tag else bZ.billboard=l.make('\066\105\108\108\098\111\097\114\100\071\117\105',{
Adornee=bU.root,Size=UDim2.fromOffset(172,31),StudsOffsetWorldSpace=Vector3.new(
0,3.6,0),AlwaysOnTop=E.espThrough},ap)b0=bZ.billboard end if bW then bZ.title=l.
label(b0,'\084\101\120\116\076\097\098\101\108','',22,0)bZ.title.TextSize,bZ.title.TextStrokeTransparency=
12,0.2 bZ.title.TextTruncate=Enum.TextTruncate.AtEnd end if b_ then local b1=l.
make('\070\114\097\109\101',{Position=UDim2.fromOffset(56,bW and 24 or 23),Size=UDim2.
fromOffset(60,4),BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(24,27,33)},b0
)bZ.health=l.make('\070\114\097\109\101',{Size=UDim2.fromScale(1,1),BorderSizePixel=0},b1)end
end if bX then bZ.box=l.make('\070\114\097\109\101',{BackgroundTransparency=1,Visible=false,
BorderSizePixel=0,AnchorPoint=Vector2.new(0.5,0)},aq)bZ.edge=l.make('\085\073\083\116\114\111\107\101',{
Thickness=1.5},bZ.box)end return bZ end local function bU(bV,bW)local bX=''if E.
espNick=='\100\105\115\112\108\097\121'then bX=bV.DisplayName or bV.Name elseif E.espNick=='\117\115\101\114\110\097\109\101'
then bX='\064'..bV.Name elseif E.espNick=='\098\111\116\104'then bX=(bV.DisplayName or bV.Name)
..'\032\040\064'..bV.Name..'\041'end if E.espDistance then local bY=string.format(
'\037\046\048\102\032\115\116\117\100\115',bW)return bX==''and bY or bX..'\032\032\u{b7}\032\032'..bY end return bX end
local function bV()if(ap and not ap.Parent)or(aq and not aq.Parent)then aK()end
local bW=E.espMode local bX=bW=='\102\117\108\108'local bY,bZ=bW=='\111\117\116\108\105\110\101'or bX,bW=='\098\111\120'or
bX local b_=E.espNick~='\111\102\102'or E.espDistance local b0=E.espLabels=='\115\099\114\101\101\110'and(
b_ or I())if(bY or(not b0 and(b_ or I())))and not ap then ap=l.make('\070\111\108\100\101\114',{
Name='\065\110\111\110\072\117\098\069\083\080'},f)end if(bZ or b0)and not aq then aq=l.make('\083\099\114\101\101\110\071\117\105',{Name
='\065\110\111\110\072\117\098\069\083\080\079\118\101\114\108\097\121',ResetOnSpawn=false,IgnoreGuiInset=true,ScreenInsets=Enum.
ScreenInsets.DeviceSafeInsets,DisplayOrder=10025},J)end local b1=f.CurrentCamera
local b2,b3=aD(k,E.espCustomRigs)local b4=b3 and b3.Position or b1 and b1.CFrame
.Position local b5={}if b4 then for b6,b7 in ipairs(c:GetPlayers())do if not aE(
b7,E.espTeam)then continue end local b8,b9,ca=aD(b7,E.espCustomRigs)if not b9 or
b8==b2 or(ca and ca.Health<=0)then continue end local cb=(b9.Position-b4).
Magnitude if cb<=E.espRange then table.insert(b5,{other=b7,character=b8,root=b9,
humanoid=ca,distance=cb})end end end if#b5>32 then table.sort(b5,function(b6,b7)
return b6.distance<b7.distance end)end local b6=C(r,E.espColor)local b7=E.
espColor=='\099\117\115\116\111\109'and l.rgb(E.espHex)or b6[4]and l.rgb(b6[4])or m.accent local
b8=(bZ or b0)and not E.espThrough and b1 if b8 then bR.
FilterDescendantsInstances=b2 and{b2}or{}end local b9={}for ca=1,math.min(#b5,32
)do local cb=b5[ca]local cc=cb.other local cd=ai[cc]if cd and(cd.character~=cb.
character or cd.root~=cb.root or cd.humanoid~=cb.humanoid)then bS(cd)cd=nil end
if not cd then cd=bT(cb,bY,b_,bZ,b0)ai[cc]=cd end local ce=E.espColor=='\116\101\097\109'and
not cc.Neutral and cc.Team and cc.Team.TeamColor.Color or b7 if cd.glow then cd.
glow.OutlineColor,cd.glow.FillColor=ce,ce end if cd.billboard then cd.billboard.
MaxDistance=E.espRange end if cd.title then local cf=bU(cc,cb.distance)if cd.
title.Text~=cf then cd.title.Text=cf end cd.title.TextColor3=ce end if cd.health
then local cf=math.clamp(cb.humanoid.Health/math.max(1,cb.humanoid.MaxHealth),0,
1)cd.health.Size=UDim2.fromScale(cf,1)cd.health.BackgroundColor3=ce end if cd.
box then cd.edge.Color=ce end if cd.box or cd.tag then cd.head=az(cb.character,
'\072\101\097\100')cd.clear=true if b8 then local cf=b1.CFrame.Position local cg=f:Raycast(
cf,cb.root.Position-cf,bR)cd.clear=not cg or cg.Instance:IsDescendantOf(cb.
character)end end b9[cc]=true end for ca,cb in pairs(ai)do if not b9[ca]then bS(
cb)ai[ca]=nil end end end local bW=0 local function bX(bY,bZ)if not aq then
return end bW+=bZ if bW<1/30 then return end bW=0 for b_,b0 in pairs(ai)do local
b1,b2,b3=b0.box,b0.tag,b0.root if not b1 and not b2 then continue end if not bY
or not b0.clear or not b3.Parent or(b0.humanoid and b0.humanoid.Health<=0)then
if b1 then b1.Visible=false end if b2 then b2.Visible=false end continue end
local b4=b0.head local b5=b4 and b4.Parent and b4.Position+Vector3.new(0,b4.Size
.Y*0.55,0)or b3.Position+Vector3.new(0,math.max(2.6,b3.Size.Y*0.55),0)local b6,
b7=bY:WorldToViewportPoint(b5)if b2 then b2.Visible=b7 and b6.Z>0 if b2.Visible
then b2.Position=UDim2.fromOffset(b6.X,b6.Y-4)end end if b1 then local b8=b0.
humanoid and b0.humanoid.HipHeight or 0 local b9=b3.Position-Vector3.new(0,math.
max(2.2,b8+b3.Size.Y*0.5),0)local ca,cb=bY:WorldToViewportPoint(b9)local cc=math
.abs(ca.Y-b6.Y)b1.Visible=(b7 or cb)and b6.Z>0 and ca.Z>0 and cc>4 if b1.Visible
then b1.Size=UDim2.fromOffset(cc*0.55,cc)b1.Position=UDim2.fromOffset((b6.X+ca.X
)*0.5,math.min(b6.Y,ca.Y))end end end end local bY=0 ax(d.Heartbeat,function(bZ)
if not ae.esp and not ae.speed then return end bY+=bZ if bY<0.18 then return end
bY=0 if ae.speed then local b_=ay(k.Character)if b_ then an=aG(an,b_,'\087\097\108\107\083\112\101\101\100'
,ag.speed)end end if ae.esp then bV()end end)local bZ=RaycastParams.new()bZ.
FilterType=Enum.RaycastFilterType.Exclude local function b_(b0,b1)if E.aimPart==
'\114\111\111\116'then return b1 end if E.aimPart=='\104\101\097\100'then local b2=az(b0,'\072\101\097\100')if b2
then return b2 end end return az(b0,'\085\112\112\101\114\084\111\114\115\111')or az(b0,'\084\111\114\115\111')or b1 end
local function b0(b1,b2,b3,b4)local b5=E.aimObstacles if b5=='\116\104\114\111\117\103\104'then
return true end local b6=b4 and{b4}or{}for b7=1,(b5=='\101\102\102\101\099\116\115'and 4 or 1)do bZ.
FilterDescendantsInstances=b6 local b8=f:Raycast(b1,b2,bZ)if not b8 or b8.
Instance:IsDescendantOf(b3)then return true end local b9=b8.Instance if b5~=
'\101\102\102\101\099\116\115'or b7==4 or not b9:IsA('\066\097\115\101\080\097\114\116')or b9.CanCollide or math.max(b9.
Transparency,b9.LocalTransparencyModifier)<0.95 then return false end table.
insert(b6,b9)end return false end local function b1(b2,b3,b4,b5,b6,b7,b8)if not
aE(b3,E.aimTeam)then return end local b9,ca,cb=aD(b3,E.espCustomRigs)if not ca
or b9==b7 or(cb and cb.Health<=0)then return end local cc=b_(b9,ca)local cd,ce=
b2:WorldToViewportPoint(cc.Position)if not ce or cd.Z<=0 then return end local
cf=(Vector2.new(cd.X,cd.Y)-b4).Magnitude if cf>b5 then return end local cg=cc.
Position-b2.CFrame.Position local ch=cg.Magnitude if ch>E.aimRange or ch<0.01
then return end local ci=E.aimPriority=='\100\105\115\116\097\110\099\101'and(cc.Position-b6).Magnitude
or cf if b8 and ci>=b8 then return end if not b0(b2.CFrame.Position,cg,b9,b7)
then return end return cc,ci end local b2 local b3=false local function b4(b5)
local b6,b7=b5.target,b5.tool if not b6 or not b6.Parent or not b7 or b7.Parent
~=b5.character or e:GetFocusedTextBox()then return end local b8,b9=pcall(
getcallingscript)if b8 and typeof(b9)=='\073\110\115\116\097\110\099\101'and b9:IsDescendantOf(b7)then
return b6 end end local function b5(b6,b7)local b8=b7.Position-b6.Origin if b8.
Magnitude<=0.001 then return b6 end return Ray.new(b6.Origin,b8.Unit)end local
function b6(b7)local b8=k:GetMouse()local b9 local function ca(cb,cc)local cd=b7
.session if cd and cd.target and cb==b8 and(cc=='\072\105\116'or cc=='\084\097\114\103\101\116'or cc==
'\085\110\105\116\082\097\121')and not checkcaller()then local ce=b4(cd)if ce then cd.used='\109\111\117\115\101'if
cc=='\072\105\116'then return ce.CFrame end if cc=='\084\097\114\103\101\116'then return ce end return b5(
b9(cb,cc),ce)end end return b9(cb,cc)end b9=hookmetamethod(game,'\095\095\105\110\100\101\120',type(
newcclosure)=='\102\117\110\099\116\105\111\110'and newcclosure(ca)or ca)end local function b7(b8)local
b9 local ca=math.cos(math.rad(8))local function cb(cc,...)local cd=b8.session if
cd and cd.target and cd.camera==cc and not checkcaller()then local ce=
getnamecallmethod()if ce=='\086\105\101\119\112\111\114\116\080\111\105\110\116\084\111\082\097\121'or ce=='\083\099\114\101\101\110\080\111\105\110\116\084\111\082\097\121'then
local cf=b9(cc,...)if cf.Direction:Dot(cd.camera.CFrame.LookVector)>=ca then
local cg=b4(cd)if cg then cd.used='\099\097\109\101\114\097'return b5(cf,cg)end end return cf end
end return b9(cc,...)end b9=hookmetamethod(game,'\095\095\110\097\109\101\099\097\108\108',type(newcclosure)==
'\102\117\110\099\116\105\111\110'and newcclosure(cb)or cb)end local function b8()if b3 then return b2
end b3=true if type(getgenv)~='\102\117\110\099\116\105\111\110'or type(hookmetamethod)~='\102\117\110\099\116\105\111\110'or
type(checkcaller)~='\102\117\110\099\116\105\111\110'or type(getcallingscript)~='\102\117\110\099\116\105\111\110'then return
end local b9=getgenv()local ca=b9.AnonHubSilentHooks_v2 if type(ca)~='\116\097\098\108\101'then
ca={}b9.AnonHubSilentHooks_v2=ca end if not ca.mouse then ca.mouse=pcall(b6,ca)
end if g and not ca.camera and type(getnamecallmethod)=='\102\117\110\099\116\105\111\110'then ca.camera
=pcall(b7,ca)end if ca.mouse or(g and ca.camera)then b2=ca end return b2 end
local function b9(ca,cb,cc)local cd=b8()local ce=cd and ca and ca:
FindFirstChildOfClass('\084\111\111\108')if not cd or not ce then if au then table.clear(au)
end else if not au then au={}end if au.tool~=ce then au.used=false end au.
character,au.tool,au.target=ca,ce,cb au.camera=h()and cc or nil cd.session=au
end local cf if not cd then cf=n(
'\077\105\114\097\032\115\105\108\101\110\099\105\111\115\097\032\105\110\100\105\115\112\111\110\u{ed}\118\101\108\032\110\101\115\116\101\032\101\120\101\099\117\116\111\114\046',
'\083\105\108\101\110\116\032\097\105\109\032\105\115\032\117\110\097\118\097\105\108\097\098\108\101\032\111\110\032\116\104\105\115\032\101\120\101\099\117\116\111\114\046')elseif not ce then cf=n(
'\069\113\117\105\112\101\032\117\109\097\032\097\114\109\097\032\112\097\114\097\032\117\115\097\114\032\097\032\109\105\114\097\032\115\105\108\101\110\099\105\111\115\097\046',
'\069\113\117\105\112\032\097\032\119\101\097\112\111\110\032\116\111\032\117\115\101\032\115\105\108\101\110\116\032\097\105\109\046')elseif au.used=='\099\097\109\101\114\097'then cf=n(
'\082\097\105\111\032\100\097\032\099\u{e2}\109\101\114\097\032\100\097\032\097\114\109\097\032\100\101\116\101\099\116\097\100\111\046','\087\101\097\112\111\110\032\099\097\109\101\114\097\032\114\097\121\032\100\101\116\101\099\116\101\100\046')elseif au
.used=='\109\111\117\115\101'then cf=n('\076\101\105\116\117\114\097\032\100\101\032\109\111\117\115\101\032\100\097\032\097\114\109\097\032\100\101\116\101\099\116\097\100\097\046',
'\087\101\097\112\111\110\032\109\111\117\115\101\032\105\110\112\117\116\032\100\101\116\101\099\116\101\100\046')else cf=n(
'\065\103\117\097\114\100\097\110\100\111\032\101\110\116\114\097\100\097\032\099\111\109\112\097\116\u{ed}\118\101\108\032\100\097\032\097\114\109\097\046',
'\087\097\105\116\105\110\103\032\102\111\114\032\099\111\109\112\097\116\105\098\108\101\032\119\101\097\112\111\110\032\105\110\112\117\116\046')end if bF.Text~=cf then bF.Text=cf end
end local ca={}for cb,cc in ipairs(B)do if cc[4]then ca[cc[1] ]=l.rgb(cc[4])end
end local function cb(cc,cd,ce,cf,cg)bn.Visible=E.aimCircle=='\101\110\097\098\108\101\100'or(E.
aimCircle=='\097\099\116\105\118\101'and cf)if bn.Visible then bn.Position,bn.Size=UDim2.
fromOffset(cd.X,cd.Y),UDim2.fromOffset(ce*2,ce*2)bo.Thickness=E.aimWidth bo.
Color=cg and m.active or ca[E.aimCircleColor]or m.accent end bp.Visible=E.
aimLabel and cf if bp.Visible then bp.Position=UDim2.fromOffset(cd.X,math.min(cc
.Y-24,cd.Y+(bn.Visible and ce or 12)+5))local ch=cg and as.DisplayName or n(
'\083\101\109\032\097\108\118\111\032\110\111\032\099\u{ed}\114\099\117\108\111','\078\111\032\116\097\114\103\101\116\032\105\110\115\105\100\101\032\116\104\101\032\099\105\114\099\108\101')if bp.Text~=ch then bp.
Text=ch end end end local function cc(cd,ce,cf,cg,ch)local ci=cd.CFrame local cj
=CFrame.lookAt(ci.Position,ce.Position,ci.UpVector)if cf.X~=cg.X*0.5 or cf.Y~=cg
.Y*0.5 then local ck=cd:ViewportPointToRay(cf.X,cf.Y).Direction local cl=ci:
VectorToObjectSpace(ck)local cm=CFrame.lookAt(Vector3.zero,cl)cj=cj*cm:Inverse()
end if E.aimResponse=='\115\109\111\111\116\104'then local ck=ci if at and at.camera==cd and at.
target==ce then local cl=at.frame ck=cl+(ci.Position-cl.Position)end cj=ck:Lerp(
cj,1-math.exp(-E.aimSpeed*math.min(ch,0.1)))end cd.CFrame=cj at={camera=cd,
target=ce,frame=cj}end local cd=0 d:BindToRenderStep(aN,Enum.RenderPriority.Last
.Value+1,function(ce)if not ae.aim and not ae.fov and not aq then return end
local cf=f.CurrentCamera bX(cf,ce)if not cf then bq()bn.Visible=false bp.Visible
=false return end if ae.fov then ao=aG(ao,cf,'\070\105\101\108\100\079\102\086\105\101\119',E.cameraFov)end if
not ae.aim then return end bs()local cg=cf.ViewportSize if cg.X<=0 or cg.Y<=0
then bq()bn.Visible=false bp.Visible=false return end local ch=h()local ci=E.
aimRadius if ch and E.aimAdaptiveFov then ci*=math.clamp(math.min(cg.X,cg.Y)/480
,0.65,1.2)end local cj=Vector2.new(math.clamp(cg.X*0.5+E.aimOffsetX,0,cg.X),math
.clamp(cg.Y*0.5+E.aimOffsetY,0,cg.Y))local ck=H()local cl=ck=='\097\108\119\097\121\115'or(ck==
'\116\111\103\103\108\101'and av)or(ck=='\104\111\108\100'and(aw.aim or e:IsMouseButtonPressed(Enum.
UserInputType.MouseButton2)or e:IsKeyDown(Enum.KeyCode.LeftAlt)))local cm,cn,co=
aD(k,E.espCustomRigs)if not cl or(ch and M.Visible)or not cm or(co and co.Health
<=0)or e:GetFocusedTextBox()or(not E.aimCustomCamera and cf.CameraType==Enum.
CameraType.Scriptable)then bq()cd=0 cb(cg,cj,ci,false,nil)return end local cp=cn
and cn.Position or cf.CFrame.Position local cq=ci local cr,cs if as then cr,cs=
b1(cf,as,cj,E.aimSticky and cq*1.12 or cq,cp,cm)if not cr then bq()end end if(
not cr or not E.aimSticky)and os.clock()>=cd then cd=os.clock()+0.06 for ct,cu
in ipairs(c:GetPlayers())do if cu~=as then local cv,cw=b1(cf,cu,cj,cq,cp,cm,cs)
if cv then cr,cs,as=cv,cw,cu end end end end if j and E.aimResponse=='\115\105\108\101\110\116'
then b9(cm,cr,cf)elseif cr then cc(cf,cr,cj,cg,ce)end cb(cg,cj,ci,true,cr)end)b.
ready()
