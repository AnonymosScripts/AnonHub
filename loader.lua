-- Luau · AnonHub universal entry point
local version="0.30.0"
local games={
    [10767408330]={name="Peel THE Potato",place=116701845804918,path="potato/chapter2.lua",cache="Evolvy_Chapter2_Main.luau"},
}
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
    dark=Color3.fromRGB(20,23,34),
    tile=Color3.fromRGB(36,43,62),
    text=Color3.fromRGB(245,247,255),
    muted=Color3.fromRGB(174,188,212),
    accent=Color3.fromRGB(140,229,182),
}
local function label(parent,class,message,height,order)
    return make(class,{BackgroundTransparency=1,Text=message,TextColor3=color.text,
        TextSize=16,TextWrapped=true,Font=Enum.Font.GothamMedium,Size=UDim2.new(1,0,0,height),
        LayoutOrder=order,BorderSizePixel=0,AutoLocalize=false},parent)
end

local function panel(height)
    local screen=make("ScreenGui",{Name="AnonHubLauncher",ResetOnSpawn=false,DisplayOrder=10030},playerGui)
    local shade=make("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3=Color3.new(0,0,0),
        BackgroundTransparency=0.3,BorderSizePixel=0,Active=true},screen)
    local body=make("ScrollingFrame",{Size=UDim2.fromScale(0.9,0.92),AnchorPoint=Vector2.new(0.5,0.5),
        Position=UDim2.fromScale(0.5,0.5),BackgroundColor3=color.dark,BorderSizePixel=0,
        CanvasSize=UDim2.fromOffset(0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,
        ScrollingDirection=Enum.ScrollingDirection.Y,ScrollBarThickness=3},shade)
    make("UISizeConstraint",{MaxSize=Vector2.new(440,height)},body)
    make("UICorner",{CornerRadius=UDim.new(0,14)},body)
    make("UIStroke",{Color=color.tile,Thickness=2},body)
    make("UIPadding",{PaddingTop=UDim.new(0,12),PaddingBottom=UDim.new(0,12),
        PaddingLeft=UDim.new(0,16),PaddingRight=UDim.new(0,16)},body)
    make("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,6)},body)
    local brand=label(body,"TextLabel","ANONHUB",30,0)
    brand.TextColor3=color.accent
    brand.Font=Enum.Font.GothamBlack
    return screen,body
end

local function button(parent,message,order)
    local object=label(parent,"TextButton",message,42,order)
    object.BackgroundTransparency=0
    object.BackgroundColor3=color.tile
    make("UICorner",{CornerRadius=UDim.new(0,7)},object)
    return object
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
    local route=games[game.GameId]
    if not route or route.place~=game.PlaceId then
        if language~="pt" and language~="en" then
            language=tostring(player.LocaleId):lower():match("^pt") and "pt" or "en"
        end
        notify(tr("Ainda não há um módulo para este jogo.","This game is not supported yet."))
        return
    end

    local function openGame(access,startNow)
        dismiss()
        local run=loadGame(route)
        if not current() then return end
        if not run then
            notify(tr("Não foi possível baixar o módulo deste jogo.","Could not download this game's module."))
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
        local ok=pcall(run,{
            language=language,access=access,startNow=startNow,unload=state.close,
            attach=function(close)
                if current() then closeGame=close else close() end
            end,
            chooseLanguage=function() if current() then task.defer(start,true) end end,
        })
        if not ok and current() then
            if closeGame then closeGame() closeGame=nil end
            notify(tr("Não foi possível abrir o módulo deste jogo.","Could not open this game's module."))
        end
    end

    local function showAccess()
        local access=activeAccess(os.time())
        if access then openGame(access,false) return end
        local body
        screen,body=panel(400)
        label(body,"TextLabel",route.name,25,1)
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
        local submitting=false
        local function submit(startNow)
            if submitting or not current() then return end
            if input.Text:match("^%s*(.-)%s*$")~=testKey then
                status.Text=tr("Key inválida. Confira e tente novamente.","Invalid key. Check it and try again.")
                return
            end
            submitting=true
            local session={account=player.UserId,provider="local-test",expiresAt=os.time()+testLifetime}
            preferences.access=session
            save()
            openGame(session,startNow)
        end
        button(body,tr("Abrir painel","Open panel"),5).Activated:Connect(function() submit(false) end)
        button(body,tr("Abrir e iniciar OP","Open and start OP"),6).Activated:Connect(function() submit(true) end)
        button(body,tr("Idioma","Language"),7).Activated:Connect(function() task.defer(start,true) end)
        button(body,tr("Fechar","Close"),8).Activated:Connect(state.close)
        input.FocusLost:Connect(function(pressed) if pressed then submit(false) end end)
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
