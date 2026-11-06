-- Luau · AnonHub universal entry point
local version="0.31.0"
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

local function make(class,properties,parent)
    local object=Instance.new(class)
    for key,value in pairs(properties) do object[key]=value end
    object.Parent=parent
    return object
end

local color={
    dark=Color3.fromRGB(35,31,25),
    tile=Color3.fromRGB(65,54,39),
    text=Color3.fromRGB(252,246,226),
    muted=Color3.fromRGB(213,195,163),
    accent=Color3.fromRGB(255,202,66),
    green=Color3.fromRGB(128,205,55),
    edge=Color3.fromRGB(116,88,49),
    blue=Color3.fromRGB(65,141,206),
}
local function label(parent,class,message,height,order)
    return make(class,{BackgroundTransparency=1,Text=message,TextColor3=color.text,
        TextSize=16,TextWrapped=true,Font=Enum.Font.GothamMedium,Size=UDim2.new(1,0,0,height),
        LayoutOrder=order,BorderSizePixel=0,AutoLocalize=false},parent)
end

local function panel(height,modal)
    local screen=make("ScreenGui",{Name="AnonHubLauncher",ResetOnSpawn=false,DisplayOrder=10030},playerGui)
    local shade=make("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3=Color3.new(0,0,0),
        BackgroundTransparency=modal==false and 1 or 0.3,BorderSizePixel=0,Active=modal~=false},screen)
    local body=make("ScrollingFrame",{Size=UDim2.fromScale(0.9,0.92),AnchorPoint=Vector2.new(0.5,0.5),
        Position=UDim2.fromScale(0.5,0.5),BackgroundColor3=color.dark,BorderSizePixel=0,
        CanvasSize=UDim2.fromOffset(0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,
        ScrollingDirection=Enum.ScrollingDirection.Y,ScrollBarThickness=3,ScrollBarImageColor3=color.accent},shade)
    make("UISizeConstraint",{MaxSize=Vector2.new(modal==false and 520 or 470,height)},body)
    make("UICorner",{CornerRadius=UDim.new(0,9)},body)
    make("UIStroke",{Color=color.edge,Thickness=2},body)
    make("UIPadding",{PaddingTop=UDim.new(0,12),PaddingBottom=UDim.new(0,12),
        PaddingLeft=UDim.new(0,16),PaddingRight=UDim.new(0,16)},body)
    make("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,6)},body)
    local header=make("Frame",{Size=UDim2.new(1,0,0,42),LayoutOrder=0,BackgroundColor3=color.edge,
        BorderSizePixel=0,Active=true},body)
    make("UICorner",{CornerRadius=UDim.new(0,7)},header)
    make("UIGradient",{Color=ColorSequence.new(Color3.fromRGB(255,241,214),Color3.fromRGB(176,132,85)),
        Rotation=90},header)
    local brand=label(header,"TextLabel","ANONHUB",42,0)
    brand.Font=Enum.Font.GothamBlack
    brand.TextSize=25
    brand.TextStrokeColor3=color.dark
    brand.TextStrokeTransparency=0.32
    return screen,body,shade,header
end

local function button(parent,message,order,primary)
    local object=label(parent,"TextButton",message,42,order)
    object.BackgroundTransparency=0
    object.BackgroundColor3=primary and color.accent or color.tile
    object.TextColor3=primary and color.dark or color.text
    object.Font=Enum.Font.GothamBold
    make("UICorner",{CornerRadius=UDim.new(0,7)},object)
    make("UIStroke",{Color=color.edge,Thickness=1},object)
    return object
end

local function gameCard(parent,identity,badge,order)
    local card=make("Frame",{Size=UDim2.new(1,0,0,112),BackgroundColor3=color.tile,BorderSizePixel=0,
        ClipsDescendants=true,LayoutOrder=order},parent)
    make("UICorner",{CornerRadius=UDim.new(0,8)},card)
    local cover=make("ImageLabel",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Image=identity.cover,
        ScaleType=Enum.ScaleType.Crop,ImageTransparency=0.32},card)
    make("UIGradient",{Color=ColorSequence.new(color.tile,Color3.new(1,1,1)),Rotation=0},cover)
    make("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3=color.dark,
        BackgroundTransparency=0.42,BorderSizePixel=0},card)
    local icon=make("ImageLabel",{Position=UDim2.fromOffset(11,18),Size=UDim2.fromOffset(76,76),
        Image=identity.icon,BackgroundColor3=color.dark,BorderSizePixel=0,ScaleType=Enum.ScaleType.Crop},card)
    make("UICorner",{CornerRadius=UDim.new(0,9)},icon)
    make("UIStroke",{Color=color.edge,Thickness=1},icon)
    local name=label(card,"TextLabel",identity.name,44,1)
    name.Position,name.Size=UDim2.fromOffset(100,22),UDim2.new(1,-109,0,44)
    name.Font,name.TextSize=Enum.Font.GothamBlack,19
    name.TextXAlignment=Enum.TextXAlignment.Left
    identity.watch(function(value) if name.Parent then name.Text=value end end)
    local mode=label(card,"TextLabel",badge,27,2)
    mode.Position,mode.Size=UDim2.fromOffset(100,70),UDim2.new(1,-107,0,27)
    mode.TextXAlignment,mode.TextColor3,mode.TextSize=Enum.TextXAlignment.Left,color.accent,11
    return card
end

local function notify(message)
    local starter=game:GetService("StarterGui")
    for _=1,8 do
        if pcall(starter.SetCore,starter,"SendNotification",{Title="AnonHub",Text=message,Duration=7}) then return end
        task.wait(0.25)
    end
    local screen,body=panel(170)
    label(body,"TextLabel",message,60,1)
    button(body,"OK",2).Activated:Connect(function() screen:Destroy() end)
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
    local nameListeners={}
    local identity={
        name=dedicated and dedicated.name or string.format("Roblox · %d",game.PlaceId),
        icon=string.format("rbxthumb://type=GameIcon&id=%d&w=150&h=150",game.GameId),
        cover=string.format("rbxthumb://type=GameThumbnail&id=%d&w=480&h=270",game.PlaceId),
        watch=function(callback) table.insert(nameListeners,callback) end,
    }
    if not dedicated then
        task.spawn(function()
            local ok,name=pcall(function()
                local url="https://games.roblox.com/v1/games?universeIds="..game.GameId
                return http:JSONDecode(game:HttpGet(url)).data[1].name
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
        end)
    end

    local function openGame(access,startNow)
        dismiss()
        local body
        screen,body=panel(292)
        local badge=dedicated and tr("MÓDULO DO JOGO","GAME MODULE") or tr("FERRAMENTAS UNIVERSAIS","UNIVERSAL TOOLS")
        gameCard(body,identity,badge,1)
        local caption=label(body,"TextLabel",tr("JOGO IDENTIFICADO","GAME IDENTIFIED"),24,2)
        caption.TextColor3=color.green
        caption.Font=Enum.Font.GothamBold
        local status=label(body,"TextLabel",tr("Carregando funções…","Loading features…"),25,3)
        status.TextColor3=color.muted
        local track=make("Frame",{Size=UDim2.new(1,0,0,6),LayoutOrder=4,BackgroundColor3=color.tile,
            BorderSizePixel=0},body)
        make("UICorner",{CornerRadius=UDim.new(0,5)},track)
        local fill=make("Frame",{Size=UDim2.fromScale(0.18,1),BackgroundColor3=color.accent,BorderSizePixel=0},track)
        make("UICorner",{CornerRadius=UDim.new(0,5)},fill)
        local function progress(fraction,portuguese,english)
            if current() and fill.Parent then
                fill.Size=UDim2.fromScale(math.clamp(fraction,0,1),1)
                if portuguese then status.Text=tr(portuguese,english) end
            end
        end
        task.wait()
        if not current() then return end
        local run=loadGame(route)
        if not current() then return end
        if not run then
            status.Text=tr("Não foi possível baixar as funções.","Could not download the features.")
            button(body,tr("Tentar novamente","Try again"),5,true).Activated:Connect(function()
                if current() then task.defer(start,false) end
            end)
            button(body,tr("Fechar","Close"),6).Activated:Connect(state.close)
            return
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
        progress(0.43,"Preparando o painel…","Preparing the panel…")
        local ready=false
        local function showReady()
            if ready or not current() then return end
            ready=true
            progress(1,"Pronto","Ready")
            dismiss()
            if not dedicated then
                task.spawn(notify,tr("Este jogo ainda não tem um módulo próprio. Modo universal aberto.",
                    "This game has no dedicated module yet. Universal mode is open."))
            end
        end
        local ok=pcall(run,{
            language=language,access=access,startNow=startNow,unload=state.close,
            identity=identity,progress=progress,ready=showReady,
            ui={make=make,panel=panel,label=label,button=button,gameCard=gameCard,color=color},
            attach=function(close)
                if current() then closeGame=close else close() end
            end,
            chooseLanguage=function() if current() then task.defer(start,true) end end,
        })
        if not ok and current() then
            if closeGame then closeGame() closeGame=nil end
            notify(tr("Não foi possível abrir o módulo deste jogo.","Could not open this game's module."))
        end
        if current() then dismiss() end
    end

    local function showAccess()
        local access=activeAccess(os.time())
        if access then openGame(access,false) return end
        local body
        screen,body=panel(505)
        gameCard(body,identity,dedicated and tr("ACESSO AO MÓDULO","MODULE ACCESS") or tr("MODO UNIVERSAL","UNIVERSAL MODE"),1)
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
