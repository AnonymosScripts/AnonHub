-- Luau · AnonHub universal entry point
local version="0.37.5"
local games={
    [10767408330]={name="Peel THE Potato",chapter="2",place=116701845804918,path="potato/chapter2.lua",cache="Evolvy_Chapter2_Main.luau"},
}
local universal={name="Universal",path="universal/main.lua",cache="AnonHub_Universal_v1.luau"}
local root="https://raw.githubusercontent.com/AnonymosScripts/AnonHub/main/"
-- Public Identifier from Panda Auth → Service Settings → General.
local pandaServiceId="anonkey24hrs"
local pandaSdkUrl="https://secure.pandauth.com/pv4/lib"
local pandaKeyFile="AnonHub_Panda_Key_v1.json"
local youtubeUrl="https://www.youtube.com/@AnonymousApks_Scripts"
local preferencesFile="AnonHub_Preferences_v1.json"
local environment=type(getgenv)=="function" and getgenv() or _G
local players=game:GetService("Players")
local http=game:GetService("HttpService")
if not game:IsLoaded() then game.Loaded:Wait() end
if not players.LocalPlayer then players:GetPropertyChangedSignal("LocalPlayer"):Wait() end
local player=players.LocalPlayer
local playerGui=player:WaitForChild("PlayerGui")
local preferences=environment.AnonHubPreferences
if type(preferences)~="table" then
    local ok,saved=pcall(function()
        local content=readfile(preferencesFile)
        if type(content)=="string" and #content<=8192 then return http:JSONDecode(content) end
    end)
    preferences=ok and type(saved)=="table" and saved.schema==1 and saved or {schema=1}
    environment.AnonHubPreferences=preferences
end

local function save()
    if type(writefile)=="function" then
        pcall(function() writefile(preferencesFile,http:JSONEncode(preferences)) end)
    end
end

local function cleanKey(value)
    if type(value)~="string" or #value>512 then return nil end
    local key=value:match("^%s*(.-)%s*$")
    if key~="" and not key:find("%s") and not key:find("%c") then return key end
end

local rememberedKey
local function readKey()
    if rememberedKey~=nil then return rememberedKey or nil end
    rememberedKey=false
    if type(readfile)~="function" then return end
    local ok,record=pcall(function()
        local raw=readfile(pandaKeyFile)
        if type(raw)=="string" and #raw<=2048 then return http:JSONDecode(raw) end
    end)
    if ok and type(record)=="table" and record.service==pandaServiceId and record.account==player.UserId then
        rememberedKey=cleanKey(record.key) or false
    end
    return rememberedKey or nil
end

local function writeKey(key)
    rememberedKey=key or false
    if type(writefile)=="function" then
        pcall(function()
            writefile(pandaKeyFile,http:JSONEncode({service=pandaServiceId,account=player.UserId,key=key}))
        end)
    end
end

local function loadPandaSdk()
    if pandaServiceId=="" then return nil,"NO_SERVICE" end
    local fetched,source=pcall(game.HttpGet,game,pandaSdkUrl)
    if not fetched or type(source)~="string" then return nil,"NETWORK" end
    local ok,sdk=pcall(function()
        local library=assert(loadstring(source,"Panda Auth SDK"))()
        assert(type(library)=="table" and type(library.configure)=="function"
            and type(library.validate)=="function" and type(library.getKeyUrl)=="function"
            and type(library.disconnect)=="function")
        library.configure({serviceId=pandaServiceId,debug=false,kickOnDetect=false})
        return library
    end)
    if not ok then return nil,"PROTOCOL" end
    return sdk
end

local function finite(value)
    return type(value)=="number" and value==value and math.abs(value)<math.huge
end

local function validateKey(sdk,key)
    local ok,result=pcall(sdk.validate,key)
    if not ok then return nil,"NETWORK" end
    if type(result)~="table" then return nil,"PROTOCOL" end
    if result.success~=true then return nil,result.reason or "PROTOCOL" end

    local expiresAt=result.expiresAtUnix
    local remaining=result.timeLeft
    if expiresAt~=nil and not finite(expiresAt) then return nil,"PROTOCOL" end
    if remaining~=nil and not finite(remaining) then return nil,"PROTOCOL" end
    if not expiresAt and result.expiresAt~=nil then
        local parsed,date=pcall(DateTime.fromIsoDate,result.expiresAt)
        if parsed and date then expiresAt=date.UnixTimestamp end
        if not finite(expiresAt) then return nil,"PROTOCOL" end
    end
    if remaining==nil and expiresAt then remaining=expiresAt-os.time() end
    if remaining and remaining<=0 then return nil,"EXPIRED" end
    expiresAt=expiresAt or (remaining and os.time()+remaining)
    if expiresAt and (expiresAt<=0 or expiresAt>253402300799) then return nil,"PROTOCOL" end
    return {
        plan=result.isPremium==true and "Premium" or "Member",
        keyLabel=#key>8 and "••••"..key:sub(-4) or "••••",
        expiresAt=expiresAt,
        deadline=remaining and os.clock()+remaining or nil,
        lifetime=remaining==nil,
        source="Panda Auth",
    }
end

local iconFile="AnonHub_Launcher_v1.png"
local iconSignature=string.char(137,80,78,71,13,10,26,10)
local registerAsset=type(getcustomasset)=="function" and getcustomasset
    or type(getsynasset)=="function" and getsynasset or nil
local iconUri,iconLoading
local iconListeners={}

local function isIcon(bytes)
    return type(bytes)=="string" and #bytes>=24 and #bytes<=4*1024*1024
        and bytes:sub(1,#iconSignature)==iconSignature
end

local function loadIcon()
    local cached=false
    if type(readfile)=="function" then
        local ok,bytes=pcall(readfile,iconFile)
        cached=ok and isIcon(bytes)
    end
    if not cached then
        if type(writefile)~="function" then return end
        local ok,bytes=pcall(game.HttpGet,game,root.."assets/anonhub-launcher.png?v=1")
        if not ok or not isIcon(bytes) then return end
        local wrote,result=pcall(writefile,iconFile,bytes)
        if not wrote or result==false then return end
    end
    local ok,uri=pcall(registerAsset,iconFile)
    if ok and type(uri)=="string" and (uri:match("^rbxasset://.+") or uri:match("^rbxassetid://%d+$")) then
        return uri
    end
end

local function setLauncherIcon(button,uri)
    if not button.Parent or button:FindFirstChild("AnonHubLauncherIcon") then return end
    local image=Instance.new("ImageLabel")
    image.Name="AnonHubLauncherIcon"
    image.Size=UDim2.fromScale(1,1)
    image.BackgroundTransparency=1
    image.BorderSizePixel=0
    image.Active=false
    image.ScaleType=Enum.ScaleType.Crop
    image.ZIndex=button.ZIndex+1
    local corner=Instance.new("UICorner")
    local buttonCorner=button:FindFirstChildOfClass("UICorner")
    corner.CornerRadius=buttonCorner and buttonCorner.CornerRadius or UDim.new(0,7)
    corner.Parent=image
    local function reveal()
        if image.Parent and image.IsLoaded then button.TextTransparency=1 end
    end
    image:GetPropertyChangedSignal("IsLoaded"):Connect(reveal)
    image.Parent=button
    image.Image=uri
    reveal()
end

local function withArtwork(callback)
    if not registerAsset then return end
    if iconUri then callback(iconUri) return end
    table.insert(iconListeners,callback)
    if iconLoading then return end
    iconLoading=true
    task.spawn(function()
        iconUri=loadIcon()
        iconLoading=false
        local pending=iconListeners
        iconListeners={}
        if iconUri then
            for _,listener in ipairs(pending) do listener(iconUri) end
        end
    end)
end

local function decorateLauncher(button)
    withArtwork(function(uri) setLauncherIcon(button,uri) end)
end

local function decorateArtwork(image)
    withArtwork(function(uri) if image.Parent then image.Image=uri end end)
end

local function rgb(hex)
    return Color3.fromRGB(tonumber(hex:sub(1,2),16),tonumber(hex:sub(3,4),16),tonumber(hex:sub(5,6),16))
end
local function palette(dark,tile,text,muted,accent,active,edge,top,bottom)
    return {dark=rgb(dark),tile=rgb(tile),text=rgb(text),muted=rgb(muted),accent=rgb(accent),
        active=rgb(active),edge=rgb(edge),top=rgb(top),bottom=rgb(bottom)}
end
local themes={
    peel=palette("231F19","413627","FCF6E2","D5C3A3","FFCA42","80CD37","745831","FFF1D6","B08455"),
    carbon=palette("101118","191B26","F2F2FA","A8AEC3","B3ADFF","81DDC0","33364A","30334D","181A26"),
    midnight=palette("0D1524","182740","F1F6FF","A9BCD9","77B9FF","80E9BE","375C88","243D65","101D33"),
    blood=palette("1C0D17","361626","FFF0F4","DCADBD","FF7A8D","FF9AAE","874058","6B243C","2A1121"),
    aurora=palette("0A201F","153533","EEFFF8","A5CCBE","6CF5B8","A0EBAF","2F766A","275B55","12302F"),
    amethyst=palette("190F2B","2C2048","F8F0FF","C4B1E2","CE9BFF","D9B0FF","674C9B","503976","211736"),
    arctic=palette("0D202A","193646","ECFAFF","ACCDD9","87E5F5","A3ECE1","437E94","345E72","122938"),
}
local themeOptions={{"carbon","Carbon"},{"midnight","Midnight"},{"blood","Blood Moon"},{"aurora","Aurora"},
    {"amethyst","Amethyst"},{"arctic","Arctic"}}

local function createUI(initialTheme)
    local color={}
    local bindings=setmetatable({}, {__mode="k"})
    local function update(object,property,token)
        if type(token)=="table" then
            object[property]=ColorSequence.new(color[token[1]],color[token[2]])
        else
            object[property]=color[token]
        end
    end
    local function paint(object,property,token)
        local properties=bindings[object] or {}
        bindings[object]=properties
        properties[property]=token
        update(object,property,token)
    end
    local function setTheme(theme)
        for key,value in pairs(themes[theme] or themes.midnight) do color[key]=value end
        for object,properties in pairs(bindings) do
            if object.Parent then
                for property,token in pairs(properties) do update(object,property,token) end
            end
        end
    end
    setTheme(initialTheme)
    local function make(class,properties,parent)
        local object=Instance.new(class)
        for key,value in pairs(properties) do
            local token=type(value)=="string" and key:find("Color",1,true) and value:match("^@(%a+)$")
            if token and color[token] then paint(object,key,token) else object[key]=value end
        end
        object.Parent=parent
        return object
    end
    local function gradient(parent,top,bottom,rotation)
        local item=make("UIGradient",{Rotation=rotation},parent)
        paint(item,"Color",{top,bottom})
        return item
    end
    local function label(parent,class,message,height,order)
        return make(class,{BackgroundTransparency=1,Text=message,TextColor3="@text",
            TextSize=16,TextWrapped=true,Font=Enum.Font.GothamMedium,Size=UDim2.new(1,0,0,height),
            LayoutOrder=order,BorderSizePixel=0,AutoLocalize=false},parent)
    end

    local function panel(height,modal,console)
        local screen=make("ScreenGui",{Name="AnonHubLauncher",ResetOnSpawn=false,DisplayOrder=10030},playerGui)
        local shade=make("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3=Color3.new(0,0,0),
            BackgroundTransparency=modal==false and 1 or console and 0.22 or 0.3,BorderSizePixel=0,Active=modal~=false},screen)
        local body=make("ScrollingFrame",{Size=UDim2.fromScale(0.9,0.92),AnchorPoint=Vector2.new(0.5,0.5),
            Position=UDim2.fromScale(0.5,0.5),BackgroundColor3="@dark",BorderSizePixel=0,
            CanvasSize=UDim2.fromOffset(0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,
            ScrollingDirection=Enum.ScrollingDirection.Y,ScrollBarThickness=3,ScrollBarImageColor3="@accent",
            ElasticBehavior=initialTheme=="peel" and Enum.ElasticBehavior.WhenScrollable or Enum.ElasticBehavior.Never},shade)
        make("UISizeConstraint",{MaxSize=Vector2.new(console and 550 or modal==false and 520 or 470,height)},body)
        make("UICorner",{CornerRadius=UDim.new(0,console and 16 or 9)},body)
        make("UIStroke",{Color="@edge",Thickness=console and 1 or 2},body)
        make("UIPadding",{PaddingTop=UDim.new(0,12),PaddingBottom=UDim.new(0,12),
            PaddingLeft=UDim.new(0,16),PaddingRight=UDim.new(0,16)},body)
        make("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,6)},body)
        local header=make("Frame",{Size=UDim2.new(1,0,0,console and 49 or 42),LayoutOrder=0,BackgroundColor3=console and "@dark" or "@edge",
            BorderSizePixel=0,Active=true},body)
        make("UICorner",{CornerRadius=UDim.new(0,7)},header)
        if console then
            local mark=label(header,"TextLabel","A",30,0)
            mark.Position,mark.Size=UDim2.fromOffset(0,6),UDim2.fromOffset(30,30)
            mark.BackgroundTransparency=0
            mark.Font,mark.TextSize=Enum.Font.GothamBlack,17
            paint(mark,"BackgroundColor3","accent")
            paint(mark,"TextColor3","dark")
            make("UICorner",{CornerRadius=UDim.new(0,9)},mark)
            local brand=label(header,"TextLabel","AnonHub",40,0)
            brand.Position,brand.Size=UDim2.fromOffset(41,1),UDim2.new(1,-130,0,40)
            brand.Font,brand.TextSize,brand.TextXAlignment=Enum.Font.GothamBold,18,Enum.TextXAlignment.Left
            local chip=label(header,"TextLabel","UNIVERSAL",24,0)
            chip.Position,chip.Size=UDim2.new(1,-82,0,9),UDim2.fromOffset(82,24)
            chip.Font,chip.TextSize,chip.BackgroundTransparency=Enum.Font.Code,10,0
            paint(chip,"BackgroundColor3","tile")
            paint(chip,"TextColor3","accent")
            make("UICorner",{CornerRadius=UDim.new(0,6)},chip)
        else
            gradient(header,"top","bottom",90)
            local brand=label(header,"TextLabel","ANONHUB",42,0)
            brand.Font,brand.TextSize=Enum.Font.GothamBlack,25
            paint(brand,"TextStrokeColor3","dark")
            brand.TextStrokeTransparency=0.32
        end
        return screen,body,shade,header
    end

    local function button(parent,message,order,primary)
        local object=label(parent,"TextButton",message,42,order)
        object.BackgroundTransparency=0
        paint(object,"BackgroundColor3",primary and "accent" or "tile")
        paint(object,"TextColor3",primary and "dark" or "text")
        object.Font=Enum.Font.GothamBold
        make("UICorner",{CornerRadius=UDim.new(0,7)},object)
        make("UIStroke",{Color="@edge",Thickness=1},object)
        return object
    end

    local function providerButton(parent,provider,message,order)
        local control=button(parent,"",order)
        control.Name=provider.."Button"
        local caption=label(control,"TextLabel",message,42,0)
        caption.Position,caption.Size=UDim2.fromOffset(37,0),UDim2.new(1,-44,1,0)
        caption.Font,caption.TextSize=Enum.Font.GothamBold,12
        caption.TextXAlignment=Enum.TextXAlignment.Left
        local icon=make("Frame",{Name=provider.."Icon",Position=UDim2.new(0,11,0.5,0),
            AnchorPoint=Vector2.new(0,0.5),Size=UDim2.fromOffset(18,18),BackgroundTransparency=1},control)
        local white=Color3.fromRGB(255,255,255)
        if provider=="YouTube" then
            local mark=make("Frame",{Position=UDim2.fromOffset(0,3),Size=UDim2.fromOffset(18,12),
                BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(255,32,52)},icon)
            make("UICorner",{CornerRadius=UDim.new(0,4)},mark)
            local play=label(mark,"TextLabel","▶",12,0)
            play.Position,play.TextSize,play.TextColor3=UDim2.fromOffset(0,-1),9,white
        else
            local ink=Color3.fromRGB(24,25,31)
            icon.BackgroundTransparency=0.15
            paint(icon,"BackgroundColor3","accent")
            make("UICorner",{CornerRadius=UDim.new(0,5)},icon)
            local function oval(name,x,y,width,height,tint,rotation)
                local part=make("Frame",{Name=name,Position=UDim2.fromOffset(x,y),Size=UDim2.fromOffset(width,height),
                    BorderSizePixel=0,BackgroundColor3=tint,Rotation=rotation or 0},icon)
                make("UICorner",{CornerRadius=UDim.new(1,0)},part)
            end
            oval("LeftEar",0,0,7,7,ink)
            oval("RightEar",11,0,7,7,ink)
            oval("Face",1,3,16,14,white)
            oval("LeftEye",4,7,4,5,ink,28)
            oval("RightEye",10,7,4,5,ink,-28)
            oval("Nose",7,12,4,2,ink)
        end
        return control,caption
    end

    local function artworkBackdrop(parent)
        gradient(parent,"top","dark",0)
        -- Use only the mask so localized labels never compete with text baked into the artwork.
        local art=make("ImageLabel",{Name="AnonHubArtwork",AnchorPoint=Vector2.new(1,0.5),
            Position=UDim2.fromScale(1,0.5),Size=UDim2.fromScale(0.60,1),BackgroundTransparency=1,
            ScaleType=Enum.ScaleType.Crop,ImageTransparency=0.14,
            ImageRectOffset=Vector2.new(530,76),ImageRectSize=Vector2.new(470,520)},parent)
        make("UICorner",{CornerRadius=UDim.new(0,10)},art)
        decorateArtwork(art)
        local shade=make("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3="@dark",BorderSizePixel=0},parent)
        make("UICorner",{CornerRadius=UDim.new(0,10)},shade)
        make("UIGradient",{Transparency=NumberSequence.new({
            NumberSequenceKeypoint.new(0,0.06),NumberSequenceKeypoint.new(0.58,0.34),
            NumberSequenceKeypoint.new(1,0.93),
        })},shade)
    end

    local function gameCard(parent,identity,badge,order,console,localizedBackdrop)
        local height=console and 158 or 112
        local card=make("Frame",{Size=UDim2.new(1,0,0,height),BackgroundColor3="@tile",BorderSizePixel=0,
            ClipsDescendants=true,LayoutOrder=order},parent)
        make("UICorner",{CornerRadius=UDim.new(0,console and 12 or 8)},card)
        if console then make("UIStroke",{Color="@edge",Thickness=1},card) end
        local cover
        if localizedBackdrop then
            artworkBackdrop(card)
        else
            cover=make("ImageLabel",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Image=identity.cover,
                ScaleType=Enum.ScaleType.Crop,ImageTransparency=console and 0.08 or 0.32},card)
            local shade=make("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3="@dark",
                BackgroundTransparency=console and 0.08 or 0.42,BorderSizePixel=0},card)
            if console then
                make("UIGradient",{Rotation=90,Transparency=NumberSequence.new({
                    NumberSequenceKeypoint.new(0,0.94),NumberSequenceKeypoint.new(0.55,0.46),
                    NumberSequenceKeypoint.new(1,0),
                })},shade)
            end
        end
        local icon=make("ImageLabel",{Position=UDim2.fromOffset(console and 14 or 11,console and 71 or 18),Size=UDim2.fromOffset(76,76),
            Image=identity.icon,BackgroundColor3="@dark",BorderSizePixel=0,ScaleType=Enum.ScaleType.Crop},card)
        make("UICorner",{CornerRadius=UDim.new(0,9)},icon)
        make("UIStroke",{Color="@edge",Thickness=1},icon)
        local name=label(card,"TextLabel",identity.name,44,1)
        name.Position,name.Size=UDim2.fromOffset(103,console and 80 or 22),UDim2.new(1,-115,0,44)
        name.Font,name.TextSize=Enum.Font.GothamBold,console and 22 or 19
        if not console then
            name.Position,name.Size=UDim2.fromOffset(100,22),UDim2.new(1,-109,0,44)
            name.Font=Enum.Font.GothamBlack
        end
        name.TextXAlignment=Enum.TextXAlignment.Left
        identity.watch(function(value) if name.Parent then name.Text=value end end)
        if cover and identity.watchCover then
            identity.watchCover(function(value) if cover.Parent then cover.Image=value end end)
        end
        local mode=label(card,"TextLabel",badge,27,2)
        mode.Position,mode.Size=UDim2.fromOffset(console and 104 or 100,console and 124 or 70),UDim2.new(1,console and -116 or -107,0,27)
        mode.TextXAlignment,mode.TextSize=Enum.TextXAlignment.Left,11
        if console then mode.Font=Enum.Font.Code end
        paint(mode,"TextColor3","accent")
        return card
    end

    local function catalogEntries()
        local entries={}
        for id,module in pairs(games) do table.insert(entries,{id=id,module=module}) end
        table.sort(entries,function(a,b) return a.module.name<b.module.name end)
        return entries
    end

    local function gameCatalog(parent,language,order)
        local pt=language=="pt"
        local entries=catalogEntries()
        if #entries==0 then
            local empty=label(parent,"TextLabel",pt and "Nenhum módulo dedicado no catálogo." or "No dedicated modules in the catalog.",40,order)
            empty.TextSize=12
            paint(empty,"TextColor3","muted")
        end
        for index,entry in ipairs(entries) do
            local module=entry.module
            local current=entry.id==game.GameId and module.place==game.PlaceId
            local card=make("Frame",{Name="GameModule",Size=UDim2.new(1,0,0,78),LayoutOrder=order+index-1,
                BackgroundColor3="@tile",BorderSizePixel=0},parent)
            make("UICorner",{CornerRadius=UDim.new(0,9)},card)
            make("UIStroke",{Color="@edge",Thickness=1},card)
            local icon=make("ImageLabel",{Position=UDim2.fromOffset(11,13),Size=UDim2.fromOffset(52,52),
                BackgroundColor3="@dark",BorderSizePixel=0,ScaleType=Enum.ScaleType.Crop,
                Image=string.format("rbxthumb://type=GameIcon&id=%d&w=150&h=150",entry.id)},card)
            make("UICorner",{CornerRadius=UDim.new(0,8)},icon)
            local name=label(card,"TextLabel",module.name,26,0)
            name.Position,name.Size=UDim2.fromOffset(73,9),UDim2.new(1,-85,0,26)
            name.Font,name.TextSize,name.TextXAlignment=Enum.Font.GothamBold,15,Enum.TextXAlignment.Left
            name.TextWrapped,name.TextTruncate=false,Enum.TextTruncate.AtEnd
            local chapter=module.chapter and (pt and "Capítulo " or "Chapter ")..module.chapter
                or (pt and "Módulo dedicado" or "Dedicated module")
            local detail=label(card,"TextLabel",chapter,16,0)
            detail.Position,detail.Size=UDim2.fromOffset(73,34),UDim2.new(1,-85,0,16)
            detail.TextSize,detail.TextXAlignment=11,Enum.TextXAlignment.Left
            paint(detail,"TextColor3","muted")
            local status=current and (pt and "JOGO ABERTO" or "CURRENT GAME") or (pt and "DISPONÍVEL" or "AVAILABLE")
            local badge=label(card,"TextLabel",status,17,0)
            badge.Position,badge.Size=UDim2.fromOffset(73,53),UDim2.new(1,-85,0,17)
            badge.Font,badge.TextSize,badge.TextXAlignment=Enum.Font.Code,10,Enum.TextXAlignment.Left
            paint(badge,"TextColor3","active")
        end
    end

    local function resources(parent,order,language,openCatalog)
        local pt=language=="pt"
        local stack=make("Frame",{Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,
            LayoutOrder=order,BackgroundTransparency=1},parent)
        make("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,6)},stack)
        local actions=make("Frame",{Size=UDim2.new(1,0,0,42),LayoutOrder=1,BackgroundTransparency=1},stack)
        local catalog=button(actions,"",0)
        catalog.Size=UDim2.new(0.60,-4,1,0)
        catalog.TextSize=12
        local social,socialCaption=providerButton(actions,"YouTube","YouTube",0)
        social.Position,social.Size=UDim2.new(0.60,4,0,0),UDim2.new(0.40,-4,1,0)
        local catalogTitle=pt and "Jogos com módulo" or "Games with modules"
        if openCatalog then
            catalog.Text=catalogTitle.."  ›"
            catalog.Activated:Connect(openCatalog)
        else
            local list=make("Frame",{Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,
                LayoutOrder=2,BackgroundTransparency=1,Visible=false},stack)
            make("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,4)},list)
            gameCatalog(list,language,1)
            catalog.Text=catalogTitle.."  +"
            catalog.Activated:Connect(function()
                list.Visible=not list.Visible
                catalog.Text=catalogTitle..(list.Visible and "  −" or "  +")
            end)
        end
        local link=label(stack,"TextBox",youtubeUrl,34,3)
        link.Visible,link.TextEditable,link.ClearTextOnFocus=false,false,false
        link.TextSize,link.TextWrapped,link.BackgroundTransparency=11,false,0
        paint(link,"BackgroundColor3","tile")
        make("UICorner",{CornerRadius=UDim.new(0,7)},link)
        social.Activated:Connect(function()
            if type(setclipboard)=="function" and pcall(setclipboard,youtubeUrl) then
                socialCaption.Text=pt and "Link copiado" or "Link copied"
                task.delay(2,function() if social.Parent then socialCaption.Text="YouTube" end end)
            else
                link.Visible=not link.Visible
            end
        end)
    end
    return {make=make,paint=paint,gradient=gradient,panel=panel,label=label,button=button,
        providerButton=providerButton,gameCard=gameCard,gameCatalog=gameCatalog,resources=resources,
        artworkBackdrop=artworkBackdrop,
        color=color,setTheme=setTheme,themes=themeOptions,rgb=rgb,
        themeAccent=function(id) return themes[id].accent end}
end

local function notify(ui,message)
    local starter=game:GetService("StarterGui")
    for _=1,8 do
        if pcall(starter.SetCore,starter,"SendNotification",{Title="AnonHub",Text=message,Duration=7}) then return end
        task.wait(0.25)
    end
    local screen,body=ui.panel(170)
    ui.label(body,"TextLabel",message,60,1)
    ui.button(body,"OK",2).Activated:Connect(function() screen:Destroy() end)
    task.delay(8,function() if screen.Parent then screen:Destroy() end end)
end

local function loadGame(route)
    local marker='local BOOT_VERSION="'..version..'"'
    local function compile(source)
        if type(source)=="string" and source:sub(1,7)=="-- Luau" and source:find(marker,1,true) then
            return loadstring(source,"AnonHub / "..route.name)
        end
    end
    local ok,source=pcall(game.HttpGet,game,root..route.path.."?v="..version)
    local run=ok and compile(source)
    if run and type(writefile)=="function" then pcall(writefile,route.cache,source) end
    if not run and type(readfile)=="function" then
        local cached,body=pcall(readfile,route.cache)
        if cached then run=compile(body) end
    end
    return run
end

local start
start=function(chooseLanguage)
    local previous=environment.AnonHubLauncher
    if type(previous)=="table" and type(previous.close)=="function" then previous.close() end
    local screen,closeGame,pandaSdk
    local state={}
    environment.AnonHubLauncher=state
    local function current() return environment.AnonHubLauncher==state end
    local function dismiss()
        if screen then screen:Destroy() screen=nil end
    end
    state.close=function()
        if not current() then return end
        environment.AnonHubLauncher=nil
        dismiss()
        if pandaSdk then pcall(pandaSdk.disconnect) pandaSdk=nil end
        if closeGame then closeGame() end
    end

    local function sdkForSession()
        if pandaSdk then return pandaSdk end
        local sdk,reason=loadPandaSdk()
        if not current() then
            if sdk then pcall(sdk.disconnect) end
            return nil,"CLOSED"
        end
        pandaSdk=sdk
        return sdk,reason
    end

    local language=preferences.language
    local function tr(portuguese,english)
        return language=="pt" and portuguese or english
    end
    local dedicated=games[game.GameId]
    if dedicated and dedicated.place~=game.PlaceId then dedicated=nil end
    local route=dedicated or universal
    local customization=type(preferences.universal)=="table" and preferences.universal or {}
    local theme=dedicated and "peel" or (customization.theme~="peel" and customization.theme or "carbon")
    local skin=createUI(theme)
    local panel,label,button,make,gameCard,color=skin.panel,skin.label,skin.button,skin.make,skin.gameCard,skin.color
    local nameListeners,coverListeners={},{}
    local function coverUrl(placeId)
        return string.format("rbxthumb://type=GameThumbnail&id=%d&w=480&h=270",placeId)
    end
    local identity={
        name=dedicated and dedicated.name or tr("Experiência","Experience").." · "..game.PlaceId,
        icon=string.format("rbxthumb://type=GameIcon&id=%d&w=150&h=150",game.GameId),
        cover=coverUrl(game.PlaceId),
        watch=function(callback) table.insert(nameListeners,callback) end,
        watchCover=function(callback) table.insert(coverListeners,callback) end,
    }
    if not dedicated then
        task.spawn(function()
            local ok,name,rootPlace=pcall(function()
                local url="https://games.roblox.com/v1/games?universeIds="..game.GameId
                local info=http:JSONDecode(game:HttpGet(url)).data[1]
                return info.name,info.rootPlaceId
            end)
            if not ok or type(name)~="string" or name=="" then
                ok,name=pcall(function()
                    return game:GetService("MarketplaceService"):GetProductInfoAsync(game.PlaceId,Enum.InfoType.Asset).Name
                end)
            end
            if current() and ok and type(name)=="string" and name~="" then
                identity.name=name
                for _,callback in ipairs(nameListeners) do callback(identity.name) end
            end
            if current() and type(rootPlace)=="number" and rootPlace>0 and rootPlace~=game.PlaceId then
                identity.cover=coverUrl(rootPlace)
                for _,callback in ipairs(coverListeners) do callback(identity.cover) end
            end
        end)
    end

    local function openGame(access,startNow)
        dismiss()
        local body
        screen,body=panel(dedicated and 292 or 370,nil,not dedicated)
        local splash=screen
        splash.DisplayOrder=10031
        local badge=dedicated and tr("MÓDULO DO JOGO","GAME MODULE") or tr("FERRAMENTAS UNIVERSAIS","UNIVERSAL TOOLS")
        gameCard(body,identity,badge,1,not dedicated,true)
        local caption=label(body,"TextLabel",tr("JOGO IDENTIFICADO","GAME IDENTIFIED"),24,2)
        caption.TextColor3=color.active
        caption.Font=Enum.Font.GothamBold
        local status=label(body,"TextLabel",tr("Carregando funções…","Loading features…"),28,3)
        status.TextColor3=color.muted
        if not dedicated then
            caption.Font,caption.TextSize,caption.TextXAlignment=Enum.Font.Code,11,Enum.TextXAlignment.Left
            status.Font,status.TextSize,status.TextXAlignment=Enum.Font.GothamMedium,16,Enum.TextXAlignment.Left
        end
        local track=make("Frame",{Name="LoadingProgress",Size=UDim2.new(1,0,0,8),LayoutOrder=4,BackgroundColor3=color.tile,
            BorderSizePixel=0},body)
        make("UICorner",{CornerRadius=UDim.new(0,5)},track)
        local fill=make("Frame",{Size=UDim2.fromScale(0.18,1),BackgroundColor3=color.accent,BorderSizePixel=0},track)
        make("UICorner",{CornerRadius=UDim.new(0,5)},fill)
        local percent=label(body,"TextLabel","18%",24,5)
        percent.Font,percent.TextSize,percent.TextColor3=Enum.Font.Code,12,color.accent
        percent.TextXAlignment=Enum.TextXAlignment.Right
        local displayed=0.18
        local function progress(fraction,portuguese,english)
            if current() and screen==splash and fill.Parent then
                displayed=math.clamp(fraction,displayed,1)
                fill.Size=UDim2.fromScale(displayed,1)
                if portuguese then status.Text=tr(portuguese,english) end
                percent.Text=string.format("%d%%",math.floor(displayed*100+0.5))
            end
        end
        task.wait()
        if not current() then return end
        local run=loadGame(route)
        if not current() then return end
        if not run then
            status.Text=tr("Não foi possível baixar as funções.","Could not download the features.")
            button(body,tr("Tentar novamente","Try again"),6,true).Activated:Connect(function()
                if current() then task.defer(start,false) end
            end)
            button(body,tr("Fechar","Close"),7).Activated:Connect(state.close)
            return
        end
        if not dedicated then
            progress(0.55,"Carregando capa e ícone…","Loading cover and icon…")
            local completed=false
            task.spawn(function()
                pcall(function()
                    game:GetService("ContentProvider"):PreloadAsync({identity.icon,identity.cover})
                end)
                completed=true
            end)
            local deadline=os.clock()+1.25
            repeat task.wait() until completed or not current() or os.clock()>=deadline
            if not current() then return end
        end
        local function checkExpiry()
            if not current() or not access.deadline then return end
            local remaining=access.deadline-os.clock()
            if remaining<=0 then
                writeKey(nil)
                start(false)
            else
                task.delay(math.min(remaining,3600),checkExpiry)
            end
        end
        checkExpiry()
        if not current() then return end
        progress(dedicated and 0.43 or 0.82,"Preparando o painel…","Preparing the panel…")
        local ready=false
        local function showReady()
            if ready or not current() then return end
            ready=true
            progress(1,"Pronto","Ready")
            task.delay(0.2,function()
                if current() and screen==splash then dismiss() end
            end)
        end
        local ok=pcall(run,{
            language=language,access=access,startNow=startNow,unload=state.close,
            identity=identity,progress=progress,ready=showReady,
            decorateLauncher=decorateLauncher,decorateArtwork=decorateArtwork,
            ui=skin,settings=customization,
            saveSettings=function(value)
                if not dedicated and current() then preferences.universal=table.clone(value) save() end
            end,
            attach=function(close)
                if current() then closeGame=close else close() end
            end,
            chooseLanguage=function() if current() then task.defer(start,true) end end,
        })
        if not ok and current() then
            if closeGame then closeGame() closeGame=nil end
            notify(skin,tr("Não foi possível abrir o módulo deste jogo.","Could not open this game's module."))
        end
        if current() and (not ready or not ok) then dismiss() end
    end

    local function showAccess()
        local body
        screen,body=panel(570,nil,not dedicated)
        local hero=make("Frame",{Size=UDim2.new(1,0,0,108),LayoutOrder=1,BorderSizePixel=0,
            ClipsDescendants=true,BackgroundColor3="@tile"},body)
        make("UICorner",{CornerRadius=UDim.new(0,10)},hero)
        skin.artworkBackdrop(hero)
        local caption=label(hero,"TextLabel",tr("CENTRAL DE ACESSO","ACCESS CENTER"),20,0)
        caption.Position,caption.Size=UDim2.fromOffset(15,18),UDim2.new(1,-30,0,20)
        caption.Font,caption.TextSize,caption.TextXAlignment=Enum.Font.Code,11,Enum.TextXAlignment.Left
        skin.paint(caption,"TextColor3","accent")
        local accessTitle=label(hero,"TextLabel",tr("Bem-vindo ao AnonHub","Welcome to AnonHub"),38,0)
        accessTitle.Position,accessTitle.Size=UDim2.fromOffset(15,39),UDim2.new(1,-30,0,38)
        accessTitle.Font,accessTitle.TextSize,accessTitle.TextXAlignment=Enum.Font.GothamBold,21,Enum.TextXAlignment.Left

        local form=make("Frame",{Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,LayoutOrder=2,
            BackgroundColor3="@tile",BorderSizePixel=0},body)
        make("UICorner",{CornerRadius=UDim.new(0,10)},form)
        make("UIPadding",{PaddingTop=UDim.new(0,10),PaddingBottom=UDim.new(0,10),
            PaddingLeft=UDim.new(0,11),PaddingRight=UDim.new(0,11)},form)
        make("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,6)},form)
        local hint=label(form,"TextLabel",tr("Já tem uma key? Cole abaixo.","Already have a key? Paste it below."),22,1)
        hint.TextSize,hint.TextXAlignment=13,Enum.TextXAlignment.Left
        skin.paint(hint,"TextColor3","muted")
        local input=label(form,"TextBox","",46,2)
        input.BackgroundTransparency,input.ClearTextOnFocus=0,false
        input.PlaceholderText,input.PlaceholderColor3="PANDA-XXXX-XXXX-XXXX",color.muted
        input.Font,input.TextSize,input.TextXAlignment=Enum.Font.Code,14,Enum.TextXAlignment.Left
        input.TextWrapped=false
        skin.paint(input,"BackgroundColor3","dark")
        make("UICorner",{CornerRadius=UDim.new(0,7)},input)
        make("UIPadding",{PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0,12)},input)
        local focusBorder=make("UIStroke",{Color="@edge",Thickness=1,ApplyStrokeMode=Enum.ApplyStrokeMode.Border},input)
        input.Focused:Connect(function() skin.paint(focusBorder,"Color","accent") end)
        input.FocusLost:Connect(function() skin.paint(focusBorder,"Color","edge") end)
        local status=label(form,"TextLabel",tr("Sem key? Use Obter key para começar.","New here? Use Get key to start."),32,4)
        status.TextSize,status.TextXAlignment=12,Enum.TextXAlignment.Left
        skin.paint(status,"TextColor3","muted")
        local busy,startWithOP=false,false
        local accessActions=make("Frame",{Size=UDim2.new(1,0,0,46),LayoutOrder=3,BackgroundTransparency=1},form)
        local continueButton=button(accessActions,tr("Validar e abrir","Validate and open"),5,true)
        local getKey,getKeyCaption=skin.providerButton(accessActions,"Panda",tr("Obter key","Get key"),7)
        continueButton.Size=UDim2.new(0.56,-4,1,0)
        getKey.Position,getKey.Size=UDim2.new(0.56,4,0,0),UDim2.new(0.44,-4,1,0)
        continueButton.TextSize,getKeyCaption.TextSize=13,13
        local function setBusy(value,fetchingLink)
            busy=value
            continueButton.Text=value and not fetchingLink and tr("Validando…","Validating…") or tr("Validar e abrir","Validate and open")
            getKeyCaption.Text=value and fetchingLink and tr("Preparando…","Preparing…") or tr("Obter key","Get key")
        end
        local function report(reason)
            skin.paint(status,"TextColor3","accent")
            if reason=="INVALID_KEY" or reason=="EXPIRED" then
                status.Text=tr("Key inválida ou expirada para este dispositivo.","Key invalid or expired for this device.")
            elseif reason=="NO_KEY" then
                status.Text=tr("Cole sua key para continuar.","Paste your key to continue.")
            elseif reason=="NO_SERVICE" then
                status.Text=tr("Serviço Panda Auth ainda não configurado.","Panda Auth service is not configured yet.")
            elseif reason=="RATE_LIMITED" then
                status.Text=tr("Muitas tentativas. Aguarde e tente de novo.","Too many attempts. Wait and try again.")
            elseif reason=="IDENTITY" then
                status.Text=tr("O Panda Auth não conseguiu identificar o dispositivo.","Panda Auth could not identify this device.")
            elseif reason=="NO_HTTP" then
                status.Text=tr("O executor não disponibilizou a conexão HTTP.","The executor did not provide HTTP access.")
            else
                status.Text=tr("Não foi possível conectar ao Panda Auth. Tente de novo.",
                    "Could not connect to Panda Auth. Try again.")
            end
        end
        local function submit()
            if busy or not current() then return end
            local key=cleanKey(input.Text)
            if not key then report("NO_KEY") return end
            setBusy(true,false)
            status.Text=tr("Validando acesso...","Validating access...")
            local sdk,reason=sdkForSession()
            local session
            if sdk then session,reason=validateKey(sdk,key) end
            if not current() then
                if sdk then pcall(sdk.disconnect) end
                return
            end
            setBusy(false)
            if not session then
                if (reason=="INVALID_KEY" or reason=="EXPIRED") and readKey()==key then
                    writeKey(nil)
                    if input.Text==key then input.Text="" end
                end
                report(reason)
                return
            end
            writeKey(key)
            openGame(session,startWithOP)
        end
        continueButton.Activated:Connect(submit)
        if dedicated then
            local option=button(body,tr("INICIAR OP AO ABRIR","START OP ON OPEN").."  ·  OFF",4)
            option.Activated:Connect(function()
                startWithOP=not startWithOP
                option.Text=tr("INICIAR OP AO ABRIR","START OP ON OPEN").."  ·  "..(startWithOP and "ON" or "OFF")
                option.BackgroundColor3=startWithOP and color.edge or color.tile
            end)
        end
        skin.resources(body,3,language)
        local actions=make("Frame",{Size=UDim2.new(1,0,0,38),LayoutOrder=5,BackgroundTransparency=1},body)
        local languageButton=button(actions,tr("Idioma","Language"),0)
        languageButton.Size=UDim2.new(0.5,-4,1,0)
        languageButton.TextSize=12
        languageButton.Activated:Connect(function() task.defer(start,true) end)
        local closeButton=button(actions,tr("Fechar","Close"),0)
        closeButton.Position,closeButton.Size=UDim2.new(0.5,4,0,0),UDim2.new(0.5,-4,1,0)
        closeButton.TextSize=12
        closeButton.Activated:Connect(state.close)
        local keyLink=label(form,"TextBox","",0,5)
        keyLink.Visible,keyLink.TextEditable,keyLink.ClearTextOnFocus=false,false,false
        keyLink.TextWrapped=false
        keyLink.Font,keyLink.TextSize=Enum.Font.Code,12
        getKey.Activated:Connect(function()
            if busy or not current() then return end
            setBusy(true,true)
            status.Text=tr("Preparando o link de acesso…","Preparing your access link…")
            local sdk,reason=sdkForSession()
            local ok,url
            if sdk then ok,url=pcall(sdk.getKeyUrl) end
            if not current() then return end
            setBusy(false)
            local host=ok and type(url)=="string" and url:match("^https://([%w%.%-]+)/")
            if not host or (host~="pandauth.com" and not host:match("%.pandauth%.com$")) then
                report(reason or "PROTOCOL")
                return
            end
            local clipboard=type(setclipboard)=="function" and setclipboard or nil
            if clipboard and pcall(clipboard,url) then
                skin.paint(status,"TextColor3","active")
                status.Text=tr("Link copiado. Abra no navegador.","Link copied. Open it in your browser.")
            else
                keyLink.Size=UDim2.new(1,0,0,36)
                keyLink.Text,keyLink.Visible=url,true
                status.Text=tr("Copie o link abaixo e abra no navegador.","Copy the link below and open it in your browser.")
            end
        end)
        input.FocusLost:Connect(function(pressed) if pressed then submit() end end)
        local savedKey=readKey()
        if savedKey then
            input.Text=savedKey
            task.defer(submit)
        elseif pandaServiceId=="" then
            report("NO_SERVICE")
        end
    end

    if not chooseLanguage and (language=="pt" or language=="en") then showAccess() return end
    local body
    screen,body=panel(250,nil,not dedicated)
    label(body,"TextLabel","Escolha o idioma  /  Choose a language",38,1)
    local function selectLanguage(code)
        if not current() then return end
        language=code
        preferences.language=code
        save()
        dismiss()
        showAccess()
    end
    button(body,"🇧🇷  Português",2).Activated:Connect(function() selectLanguage("pt") end)
    button(body,"🇺🇸  English",3).Activated:Connect(function() selectLanguage("en") end)
    button(body,"Fechar  /  Close",4).Activated:Connect(state.close)
end

start(false)
