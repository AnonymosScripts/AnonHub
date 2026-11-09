-- Luau · AnonHub universal entry point
local version="0.36.0"
local games={
    [10767408330]={name="Peel THE Potato",place=116701845804918,path="potato/chapter2.lua",cache="Evolvy_Chapter2_Main.luau"},
}
local universal={name="Universal",path="universal/main.lua",cache="AnonHub_Universal_v1.luau"}
local root="https://raw.githubusercontent.com/AnonymosScripts/AnonHub/main/"
local testKey="Anonymous"
local testLifetime=24*60*60
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

local iconFile="AnonHub_Launcher_v1.png"
local iconSignature=string.char(137,80,78,71,13,10,26,10)
local registerAsset=type(getcustomasset)=="function" and getcustomasset
    or type(getsynasset)=="function" and getsynasset or nil
local iconUri,iconLoading
local iconButtons={}

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

local function decorateLauncher(button)
    if not registerAsset then return end
    if iconUri then setLauncherIcon(button,iconUri) return end
    table.insert(iconButtons,button)
    if iconLoading then return end
    iconLoading=true
    task.spawn(function()
        iconUri=loadIcon()
        iconLoading=false
        local pending=iconButtons
        iconButtons={}
        if iconUri then
            for _,control in ipairs(pending) do setLauncherIcon(control,iconUri) end
        end
    end)
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
    carbon=palette("101215","1B1E24","F2F4F7","A7AFBA","82E6C2","A7F4D1","363F49","282F37","191E24"),
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
            BackgroundTransparency=modal==false and 1 or 0.3,BorderSizePixel=0,Active=modal~=false},screen)
        local body=make("ScrollingFrame",{Size=UDim2.fromScale(0.9,0.92),AnchorPoint=Vector2.new(0.5,0.5),
            Position=UDim2.fromScale(0.5,0.5),BackgroundColor3="@dark",BorderSizePixel=0,
            CanvasSize=UDim2.fromOffset(0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,
            ScrollingDirection=Enum.ScrollingDirection.Y,ScrollBarThickness=3,ScrollBarImageColor3="@accent",
            ElasticBehavior=initialTheme=="peel" and Enum.ElasticBehavior.WhenScrollable or Enum.ElasticBehavior.Never},shade)
        make("UISizeConstraint",{MaxSize=Vector2.new(console and 550 or modal==false and 520 or 470,height)},body)
        make("UICorner",{CornerRadius=UDim.new(0,console and 14 or 9)},body)
        make("UIStroke",{Color="@edge",Thickness=console and 1 or 2},body)
        make("UIPadding",{PaddingTop=UDim.new(0,12),PaddingBottom=UDim.new(0,12),
            PaddingLeft=UDim.new(0,16),PaddingRight=UDim.new(0,16)},body)
        make("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,6)},body)
        local header=make("Frame",{Size=UDim2.new(1,0,0,42),LayoutOrder=0,BackgroundColor3=console and "@tile" or "@edge",
            BorderSizePixel=0,Active=true},body)
        make("UICorner",{CornerRadius=UDim.new(0,7)},header)
        if not console then gradient(header,"top","bottom",90) end
        local brand=label(header,"TextLabel",console and "ANONHUB  /  UNIVERSAL" or "ANONHUB",42,0)
        brand.Font=console and Enum.Font.Code or Enum.Font.GothamBlack
        brand.TextSize=console and 15 or 25
        paint(brand,"TextStrokeColor3","dark")
        brand.TextStrokeTransparency=0.32
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

    local function gameCard(parent,identity,badge,order,console)
        local height=console and 148 or 112
        local card=make("Frame",{Size=UDim2.new(1,0,0,height),BackgroundColor3="@tile",BorderSizePixel=0,
            ClipsDescendants=true,LayoutOrder=order},parent)
        make("UICorner",{CornerRadius=UDim.new(0,8)},card)
        local cover=make("ImageLabel",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Image=identity.cover,
            ScaleType=Enum.ScaleType.Crop,ImageTransparency=console and 0.08 or 0.32},card)
        local shade=make("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3="@dark",
            BackgroundTransparency=console and 0.08 or 0.42,BorderSizePixel=0},card)
        if console then
            make("UIGradient",{Rotation=90,Transparency=NumberSequence.new({
                NumberSequenceKeypoint.new(0,0.94),NumberSequenceKeypoint.new(0.55,0.46),
                NumberSequenceKeypoint.new(1,0),
            })},shade)
        end
        local icon=make("ImageLabel",{Position=UDim2.fromOffset(11,console and 67 or 18),Size=UDim2.fromOffset(76,76),
            Image=identity.icon,BackgroundColor3="@dark",BorderSizePixel=0,ScaleType=Enum.ScaleType.Crop},card)
        make("UICorner",{CornerRadius=UDim.new(0,9)},icon)
        make("UIStroke",{Color="@edge",Thickness=1},icon)
        local name=label(card,"TextLabel",identity.name,44,1)
        name.Position,name.Size=UDim2.fromOffset(100,console and 78 or 22),UDim2.new(1,-109,0,44)
        name.Font,name.TextSize=Enum.Font.GothamBlack,console and 21 or 19
        name.TextXAlignment=Enum.TextXAlignment.Left
        identity.watch(function(value) if name.Parent then name.Text=value end end)
        if identity.watchCover then
            identity.watchCover(function(value) if cover.Parent then cover.Image=value end end)
        end
        local mode=label(card,"TextLabel",badge,27,2)
        mode.Position,mode.Size=UDim2.fromOffset(100,console and 117 or 70),UDim2.new(1,-107,0,27)
        mode.TextXAlignment,mode.TextSize=Enum.TextXAlignment.Left,11
        if console then mode.Font=Enum.Font.Code end
        paint(mode,"TextColor3","accent")
        return card
    end
    return {make=make,paint=paint,gradient=gradient,panel=panel,label=label,button=button,gameCard=gameCard,
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

local function activeAccess(now)
    local access=preferences.access
    if type(access)=="table" and access.account==player.UserId and access.provider=="local-test"
        and type(access.expiresAt)=="number" and access.expiresAt>now and access.expiresAt<=now+testLifetime then
        return access
    end
end

local start
start=function(chooseLanguage)
    local previous=environment.AnonHubLauncher
    if type(previous)=="table" and type(previous.close)=="function" then previous.close() end
    local screen,closeGame
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
        if closeGame then closeGame() end
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
        local badge=dedicated and tr("MÓDULO DO JOGO","GAME MODULE") or tr("FERRAMENTAS UNIVERSAIS","UNIVERSAL TOOLS")
        gameCard(body,identity,badge,1,not dedicated)
        local caption=label(body,"TextLabel",tr("JOGO IDENTIFICADO","GAME IDENTIFIED"),24,2)
        caption.TextColor3=color.active
        caption.Font=Enum.Font.GothamBold
        local status=label(body,"TextLabel",tr("Carregando funções…","Loading features…"),28,3)
        status.TextColor3=color.muted
        local track=make("Frame",{Size=UDim2.new(1,0,0,6),LayoutOrder=4,BackgroundColor3=color.tile,
            BorderSizePixel=0},body)
        make("UICorner",{CornerRadius=UDim.new(0,5)},track)
        local fill=make("Frame",{Size=UDim2.fromScale(0.18,1),BackgroundColor3=color.accent,BorderSizePixel=0},track)
        make("UICorner",{CornerRadius=UDim.new(0,5)},fill)
        local percent
        if not dedicated then
            percent=label(body,"TextLabel","01 / 03     18%",24,5)
            percent.Font,percent.TextSize,percent.TextColor3=Enum.Font.Code,12,color.accent
        end
        local function progress(fraction,portuguese,english)
            if current() and fill.Parent then
                fill.Size=UDim2.fromScale(math.clamp(fraction,0,1),1)
                if portuguese then status.Text=tr(portuguese,english) end
                if percent then
                    local stage=fraction<0.48 and 1 or fraction<0.75 and 2 or 3
                    percent.Text=string.format("%02d / 03     %d%%",stage,math.floor(fraction*100+0.5))
                end
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
        local function expire()
            if current() and preferences.access==access then
                preferences.access=nil
                save()
                start(false)
            end
        end
        local remaining=access.expiresAt-os.time()
        if remaining<=0 then expire() return end
        task.delay(remaining,expire)
        progress(dedicated and 0.43 or 0.82,"Preparando o painel…","Preparing the panel…")
        local ready=false
        local function showReady()
            if ready or not current() then return end
            ready=true
            progress(1,"Pronto","Ready")
            dismiss()
        end
        local ok=pcall(run,{
            language=language,access=access,startNow=startNow,unload=state.close,
            identity=identity,progress=progress,ready=showReady,
            decorateLauncher=decorateLauncher,
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
        if current() then dismiss() end
    end

    local function showAccess()
        local access=activeAccess(os.time())
        if access then openGame(access,false) return end
        local body
        screen,body=panel(505,nil,not dedicated)
        gameCard(body,identity,dedicated and tr("ACESSO AO MÓDULO","MODULE ACCESS") or tr("MODO UNIVERSAL","UNIVERSAL MODE"),1,not dedicated)
        label(body,"TextLabel",tr("Cole sua key para abrir o hub.","Paste your key to open the hub."),28,2)
        local input=label(body,"TextBox","",42,3)
        input.BackgroundTransparency=0
        input.BackgroundColor3=color.tile
        input.ClearTextOnFocus=false
        input.PlaceholderText=tr("Key de acesso","Access key")
        input.PlaceholderColor3=color.muted
        make("UICorner",{CornerRadius=UDim.new(0,7)},input)
        local status=label(body,"TextLabel","",28,4)
        status.TextColor3=color.muted
        local submitting,startWithOP=false,false
        local function submit()
            if submitting or not current() then return end
            if input.Text:match("^%s*(.-)%s*$")~=testKey then
                status.Text=tr("Key inválida. Confira e tente novamente.","Invalid key. Check it and try again.")
                return
            end
            submitting=true
            local session={account=player.UserId,provider="local-test",expiresAt=os.time()+testLifetime}
            preferences.access=session
            save()
            openGame(session,startWithOP)
        end
        button(body,tr("Validar e abrir","Validate and open"),5,true).Activated:Connect(submit)
        if dedicated then
            local option=button(body,tr("INICIAR OP AO ABRIR","START OP ON OPEN").."  ·  OFF",6)
            option.Activated:Connect(function()
                startWithOP=not startWithOP
                option.Text=tr("INICIAR OP AO ABRIR","START OP ON OPEN").."  ·  "..(startWithOP and "ON" or "OFF")
                option.BackgroundColor3=startWithOP and color.edge or color.tile
            end)
        end
        button(body,tr("Idioma","Language"),7).Activated:Connect(function() task.defer(start,true) end)
        button(body,tr("Fechar","Close"),8).Activated:Connect(state.close)
        input.FocusLost:Connect(function(pressed) if pressed then submit() end end)
        input:GetPropertyChangedSignal("Text"):Connect(function()
            if input.Text:match("^%s*(.-)%s*$")==testKey then task.defer(submit) end
        end)
    end

    if not chooseLanguage and (language=="pt" or language=="en") then showAccess() return end
    local body
    screen,body=panel(250)
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
