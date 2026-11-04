-- Luau · Anonymous_Potato_Hub.luau · Peel THE Potato 116701845804918 · Roblox / Delta · Luau 0.745
-- Local test key: Anonymous. Version 0.7.0. Chapter 2 only. No paid purchases.

local Core = (function()
-- Luau · potato_core.luau · configuration and task coordination · Roblox / CLI · Luau 0.745
local Core = {}

Core.defaults = {
    autoProgress = false, autoCut = false, autoFarm = false, autoDeliver = false,
    autoCool = false, autoSell = false, autoDynamite = false, autoCrank = false, autoBuyTools = false, autoBuyUpgrades = false,
    autoBuyStorage = false, collectPumpkins = false, pumpkinPriority = true, priorityValue = true,
    cutBuyTools = true, rarity = "Any", selection = "Nearest", tableChoice = "Nearest",
    deliveryMode = "Amount", deliveryTarget = "Crate",
    movement = "Teleport", speedMode = "Turbo", cutMode = "Fast", teleportSettle = 0.10,
    pickBatch = 8, cutBurst = 3,cutTargetRate=20,cutToolMultiplier=4,
    collectTool="Auto",logicalSpecials=true,autoRecover=true,
    sellThreshold=500,sellRemainder=true,buyAfterSell=true,returnAfterSell=true,
    infiniteBag=false,collectGems=true,gemPriority=true,
    upgradeDrone=true,upgradeMachines=true,upgradeGeneral=true,saveForNextTool=true,
    dynamiteInterval=1,dynamiteAggressive=false,
    uiWidth = 760, uiHeight = 580, uiScale = 100, uiX = 0.5, uiY = 0.5,
    buttonX = 0.03, buttonY = 0.22, buttonSize = 56,
    deliveryFill = 90, deliveryBatch = 1000, heatStart = 60, heatStop = 25, coolingRetry = 12,
    reserveCash = 0, maxPurchase = 0, actionDelay = 0.04, actionTimeout = 10,
    travelTimeout = 30, maxDistance = 250, returnAfterCooling = true,
    showStatus = true, notifications = true,
    pauseOnMovement = true,
    keyProgress = "F6", keyCut = "F7", keyFarm = "F8", keyCool = "F9",
    keyBuy = "F10", keyMenu = "Insert", keyPause = "End",
    keyDeliver = "None", keyPumpkin = "None", keyStorage = "None", keyUpgrades = "None",
    keyCrank = "None",
    keySell="None",keyDynamite="None",
}

local ranges = {
    deliveryFill = {10,100}, deliveryBatch = {1,1000000}, heatStart = {15,100}, heatStop = {0,90},
    coolingRetry = {5,120}, reserveCash = {0,100000000}, maxPurchase = {0,100000000},
    actionDelay = {0.02,5}, actionTimeout = {2,60}, travelTimeout = {5,120}, maxDistance = {10,1000},
    teleportSettle={0.05,1}, uiWidth={300,1100}, uiHeight={340,900}, uiScale={65,150},
    uiX={0,1},uiY={0,1},buttonX={0,1},buttonY={0,1},buttonSize={44,88},
    pickBatch={1,16},cutBurst={1,6},
    cutTargetRate={1,40},cutToolMultiplier={1,4},
    sellThreshold={1,1000000},dynamiteInterval={0.1,15},
}
local choices = {
    rarity = {Any=true,Rainbow=true,Diamond=true,Golden=true},
    selection = {Nearest=true,Random=true},
    deliveryMode = {Amount=true,Percent=true},
    deliveryTarget = {Crate=true,Table=true,Manual=true,Auto=true},
    movement={Walk=true,Teleport=true},speedMode={Turbo=true,Standard=true},cutMode={Fast=true,Native=true},
    collectTool={Auto=true,Hand=true,Shovel=true,PotatoSucker=true},
    tableChoice = {Nearest=true,PeelingTable1=true,PeelingTable2=true,PeelingTable3=true,PeelingTable4=true},
}
local automation = {"autoProgress","autoCut","autoFarm","autoDeliver","autoCool","autoCrank","autoSell","autoDynamite",
    "autoBuyTools","autoBuyUpgrades","autoBuyStorage","collectPumpkins"}

function Core.clone(value)
    if type(value) ~= "table" then return value end
    local result = {}
    for key, item in pairs(value) do result[key] = Core.clone(item) end
    return result
end

function Core.validate(values, resetActive)
    local config = Core.clone(Core.defaults)
    if type(values) == "table" then
        for key, default in pairs(Core.defaults) do
            local value = values[key]
            if type(value) == type(default) then
                if type(value) == "number" then
                    if value == value and value ~= math.huge and value ~= -math.huge then
                        local range = ranges[key]
                        config[key] = range and math.clamp(value,range[1],range[2]) or value
                    end
                elseif choices[key] then
                    if choices[key][value] then config[key] = value end
                elseif string.sub(key,1,3) == "key" then
                    if #value > 0 and #value < 24 and string.match(value,"^[%w]+$") then config[key] = value end
                else
                    config[key] = value
                end
            end
        end
    end
    config.heatStop = math.min(config.heatStop,config.heatStart - 5)
    config.deliveryBatch=math.floor(config.deliveryBatch)
    config.pickBatch=math.floor(config.pickBatch) config.cutBurst=math.floor(config.cutBurst)
    config.sellThreshold=math.floor(config.sellThreshold)
    if resetActive then
        for _, key in ipairs(automation) do config[key] = false end
    end
    return config
end

function Core.pause(config)
    for _, key in ipairs(automation) do config[key] = false end
end

function Core.effective(config, name)
    if name=="autoCrank" and config.autoProgress and config.deliveryTarget=="Manual" then return true end
    if name == "autoFarm" and config.collectPumpkins then return true end
    if name == "autoCool" or name == "autoFarm" or name == "autoDeliver"
        or name == "autoBuyTools" or name == "autoBuyUpgrades" or name == "autoBuyStorage" or name=="autoSell" or name=="autoDynamite" then
        if config.autoProgress then return true end
    end
    if name == "autoCut" then return config.autoProgress or config.autoCut end
    if name == "autoBuyTools" and config.autoCut and config.cutBuyTools then return true end
    return config[name] == true
end

function Core.acceptVariant(config, kind, isPumpkin,isGem)
    if isPumpkin then return config.collectPumpkins end
    if isGem and config.collectGems then return true end
    if not config.autoProgress and not config.autoFarm then return false end
    if config.rarity == "Any" then return true end
    return kind ~= nil and string.lower(tostring(kind)) == string.lower(config.rarity)
end

function Core.affordable(config, cash, price, currency)
    if currency ~= "Cash" then return false,"currency" end
    if type(cash) ~= "number" or type(price) ~= "number" or cash ~= cash or price ~= price
        or cash == math.huge or price == math.huge or price <= 0 then return false,"unconfirmed" end
    if config.maxPurchase > 0 and price > config.maxPurchase then return false,"purchase_limit" end
    if cash - price < config.reserveCash then return false,"reserve" end
    return true
end

function Core.parseAmount(text)
    if type(text) ~= "string" then return nil end
    local trimmed = string.gsub(text,"%s","")
    if string.find(string.upper(trimmed),"R$",1,true) or string.find(string.upper(trimmed),"ROBUX",1,true) then return nil end
    local value = string.match(trimmed,"%-?[%d][%d%.,]*")
    if not value then return nil end
    local lastComma, lastDot
    for i = 1,#value do
        local c = string.sub(value,i,i)
        if c == "," then lastComma = i elseif c == "." then lastDot = i end
    end
    if lastComma and lastDot then
        if lastComma > lastDot then
            value = string.gsub(string.gsub(value,"%.",""),",",".")
        else
            value = string.gsub(value,",","")
        end
    elseif lastComma then
        local tail = #value-lastComma
        value = string.gsub(value,",",tail == 3 and "" or ".")
    elseif lastDot and #value-lastDot == 3 then
        value = string.gsub(value,"%.","")
    end
    local amount = tonumber(value)
    if not amount or amount < 0 then return nil end
    local suffix = string.upper(string.match(trimmed,"[%d][%d%.,]*([KkMmBbTt])") or "")
    local multiplier = ({K=1000,M=1000000,B=1000000000,T=1000000000000})[suffix] or 1
    amount = amount * multiplier
    return amount
end

function Core.purchaseReady(config,cash,price,level,blocked)
    if not Core.affordable(config,cash,price,"Cash") then return false end
    return not blocked or cash>=blocked.cash or level~=blocked.level
end

function Core.parseCapacity(text)
    if type(text) ~= "string" then return nil,nil end
    local left,right=string.match(text,"^(.-)/(.-)$")
    if not left or not right then return nil,nil end
    local current=Core.parseAmount(left)
    local capacity=string.find(right,"∞",1,true) and math.huge or Core.parseAmount(right)
    if not current or not capacity or capacity<=0 or current%1~=0 then return nil,nil end
    return current,capacity
end

function Core.coolingLatch(wasCooling, heatPercent, config, alarm)
    if type(heatPercent) == "number" and heatPercent == heatPercent then
        if wasCooling then return heatPercent > config.heatStop end
        return heatPercent >= config.heatStart
    end
    return alarm == true
end

function Core.deliveryGoal(config,capacity)
    if type(capacity)~="number" or capacity<=0 or capacity~=capacity then return nil end
    if capacity==math.huge then return config.deliveryBatch end
    if config.deliveryMode=="Percent" then return math.max(1,math.ceil(capacity*config.deliveryFill/100)) end
    return math.min(capacity,config.deliveryBatch)
end

function Core.tickInterval(config)
    return config.speedMode=="Turbo" and math.min(config.actionDelay,0.02) or config.actionDelay
end

function Core.pickLimit(config,carried,capacity,pumpkin)
    if pumpkin or config.speedMode~="Turbo" then return 1 end
    local goal=Core.deliveryGoal(config,capacity)
    return math.max(1,math.min(config.pickBatch,math.max(1,capacity-carried),math.max(1,(goal or capacity)-carried)))
end

function Core.choose(config, state, now)
    local function ready(action) return now>=((state.retryAt or {})[action] or 0) end
    if Core.effective(config,"autoCool") and state.needCooling and now >= (state.coolingRetryAt or 0) and ready("cool") then return "cool" end
    if state.deliveryPending and (Core.effective(config,"autoDeliver") or Core.effective(config,"autoCut")) and ready("deliver") then return "deliver" end
    if Core.effective(config,"autoSell") and state.sellReady and now>=(state.sellRetryAt or 0) and ready("sell") then return "sell" end
    if state.returnToTable and state.postSaleWeaponBought and ready("returnTable") then return "returnTable" end
    if state.canBuy and now >= (state.buyRetryAt or 0) and ready("buy") then
        if Core.effective(config,"autoBuyTools") or Core.effective(config,"autoBuyUpgrades")
            or Core.effective(config,"autoBuyStorage") or state.afterSale and config.buyAfterSell then return "buy" end
    end
    if state.returnToTable and ready("returnTable") then return "returnTable" end
    if Core.effective(config,"autoDynamite") and state.dynamiteReady and not state.cutting and ready("dynamite") then return "dynamite" end
    if Core.effective(config,"autoCrank") and state.crankReady and ready("crank") then return "crank" end
    if Core.effective(config,"autoCut") and state.cutting and ready("cut") then return "cut" end
    if Core.effective(config,"autoCut") and not Core.effective(config,"autoFarm") and state.carried and state.carried>0 and state.canStageCut and not state.tableReady and ready("stageCut") then return "stageCut" end
    if Core.effective(config,"autoDeliver") and state.carried and state.carried > 0 then
        local goal=Core.deliveryGoal(config,state.capacity)
        local full=goal and state.carried>=goal
        if (full or state.noCandidate or not Core.effective(config,"autoFarm")) and ready("deliver") then return "deliver" end
    end
    if Core.effective(config,"autoCut") and state.tableReady and ready("enterCut") then return "enterCut" end
    if Core.effective(config,"autoFarm") and state.hasCandidate
        and type(state.capacity)=="number" and type(state.carried)=="number"
        and state.capacity>0 and (state.carried < state.capacity or state.candidatePumpkin) and ready("collect") then return "collect" end
    return "idle"
end

function Core.newCancellation()
    local generation = 0
    return {
        current = function() return generation end,
        valid = function(token) return token == generation end,
        cancel = function() generation = generation + 1 return generation end,
    }
end

return Core

end)()

local Layout = (function()
-- Luau · potato_layout.luau · screen bounds and touch layout · Roblox / CLI · Luau 0.745
local Layout={}
function Layout.resolve(width,height,config)
    local margin=8
    local availableW,availableH=math.max(1,width-2*margin),math.max(1,height-2*margin)
    local scale=math.min(config.uiScale/100,availableW/300,availableH/340)
    scale=math.max(0.1,scale)
    local baseW=math.min(config.uiWidth,availableW/scale)
    local baseH=math.min(config.uiHeight,availableH/scale)
    local visualW,visualH=baseW*scale,baseH*scale
    return {width=baseW,height=baseH,scale=scale,
        x=margin+math.clamp(config.uiX,0,1)*math.max(0,availableW-visualW),
        y=margin+math.clamp(config.uiY,0,1)*math.max(0,availableH-visualH),
        visualWidth=visualW,visualHeight=visualH,compact=baseW<580}
end
function Layout.normalized(x,y,width,height,objectW,objectH)
    return math.clamp((x-8)/math.max(1,width-objectW-16),0,1),
        math.clamp((y-8)/math.max(1,height-objectH-16),0,1)
end
function Layout.launcher(width,height,config)
    local size=math.min(config.buttonSize,width-16,height-16)
    return {size=size,x=8+config.buttonX*math.max(0,width-size-16),y=8+config.buttonY*math.max(0,height-size-16)}
end
return Layout

end)()

local Observer = (function()
-- Luau · potato_observer.luau · transparent getter observation · Roblox / CLI · Luau 0.745
local Observer={}
function Observer.create(target,names,onCall)
    local installed={}
    local probing=0
    local closed=false
    local disabled={}
    local stats={installed=0,observed=0,perName={}}
    for _,name in ipairs(names) do
        local original=target[name]
        if type(original)=="function" then
            local wrapper
            wrapper=function(...)
                if closed or disabled[name] then return original(...) end
                local args=table.pack(...)
                local results=table.pack(original(...))
                if not closed and probing==0 then
                    stats.observed+=1
                    stats.perName[name]=(stats.perName[name] or 0)+1
                    local ok,done=pcall(onCall,name,args,results)
                    if ok and done==true or stats.perName[name]>=24 then
                        disabled[name]=true
                        pcall(function() if target[name]==wrapper then target[name]=original end end)
                    end
                end
                return table.unpack(results,1,results.n)
            end
            if pcall(function() target[name]=wrapper end) then
                table.insert(installed,{name=name,original=original,wrapper=wrapper})
                stats.installed+=1
            end
        end
    end
    return {
        read=function(fn,...)
            probing+=1
            local results=table.pack(pcall(fn,...))
            probing-=1
            return table.unpack(results,1,results.n)
        end,
        close=function()
            closed=true
            for _,item in ipairs(installed) do
                pcall(function() if target[item.name]==item.wrapper then target[item.name]=item.original end end)
            end
            table.clear(installed)
        end,
        stats=stats,
        unwrap=function(fn)
            for _,item in ipairs(installed) do if item.wrapper==fn then return item.original end end
            return fn
        end,
    }
end
return Observer

end)()

local Spatial = (function()
-- Luau · potato_spatial.luau · sparse index for live pile geometry · Roblox / CLI · Luau 0.745
local Spatial={}
function Spatial.new(tolerance)
    local cells={}
    local size=math.max(0.1,(tolerance or 0.08)*2)
    local distanceLimit=(tolerance or 0.08)^2
    local count=0
    local function add(position,value)
        local x,y,z=math.floor(position.X/size),math.floor(position.Y/size),math.floor(position.Z/size)
        cells[x]=cells[x] or {} cells[x][y]=cells[x][y] or {} cells[x][y][z]=cells[x][y][z] or {}
        table.insert(cells[x][y][z],{p=position,value=value}) count+=1
    end
    local function find(position)
        local x,y,z=math.floor(position.X/size),math.floor(position.Y/size),math.floor(position.Z/size)
        local best,bestDistance,ambiguous=nil,distanceLimit+1e-12,false
        for dx=-1,1 do
            local column=cells[x+dx]
            if column then for dy=-1,1 do
                local row=column[y+dy]
                if row then for dz=-1,1 do
                    for _,item in ipairs(row[z+dz] or {}) do
                        local px,py,pz=position.X-item.p.X,position.Y-item.p.Y,position.Z-item.p.Z
                        local d=px*px+py*py+pz*pz
                        if d<=distanceLimit then
                            if d<bestDistance-1e-10 then best,bestDistance,ambiguous=item.value,d,false
                            elseif math.abs(d-bestDistance)<1e-10 and best~=item.value then ambiguous=true end
                        end
                    end
                end end
            end end end
        return not ambiguous and best or nil
    end
    return {add=add,find=find,count=function() return count end}
end
return Spatial

end)()

local TopK = (function()
-- Luau · potato_topk.luau · retain the best targets without sorting the entire pile · Roblox / CLI · Luau 0.745
local TopK={}
function TopK.new(limit)
    local heap={}
    local function down(index)
        while index*2<=#heap do
            local child=index*2
            if child+1<=#heap and heap[child+1].score>heap[child].score then child+=1 end
            if heap[index].score>=heap[child].score then break end
            heap[index],heap[child]=heap[child],heap[index] index=child
        end
    end
    return {add=function(item)
        if #heap<limit then
            table.insert(heap,item)
            local index=#heap
            while index>1 do
                local parent=math.floor(index/2)
                if heap[parent].score>=heap[index].score then break end
                heap[parent],heap[index]=heap[index],heap[parent] index=parent
            end
        elseif item.score<heap[1].score then heap[1]=item down(1) end
    end,values=function()
        table.sort(heap,function(a,b) return a.score<b.score end)
        return heap
    end}
end
return TopK

end)()

local Chapter = (function()
-- Luau · potato_chapter2.luau · owned upgrades and progression for chapter 2 · Roblox / CLI · Luau 0.745
local Chapter={}
Chapter.allowed={
    Hand={"PickAmount","PickSpeed","HoldPick"},Shovel={"PickAmount","PickSpeed","HoldPick"},
    Dynamite={"PickAmount","PickSpeed","ThrowRange"},PotatoSucker={"PickAmount","Cooling","Charge"},
    Body={"PotatoWorth","Luck","WalkSpeed"},General={"PotatoWorth","Luck","WalkSpeed"},
    Drone={"Capacity","Grasp","FlySpeed"},AutoPeeler={"PeelAmount","PeelSpeed"},HandPeeler={"PeelAmount","Cranks"},
}
function Chapter.owns(data,id)
    if type(data)~="table" then return false end
    if id=="Hand" or id=="Body" or id=="General" then return true end
    if id=="Drone" then return data.HasDrone==true end
    if id=="AutoPeeler" then return data.HasAutoPeeler==true end
    if id=="HandPeeler" then return data.HasHandPeeler==true end
    for key,value in pairs(data.Tools or {}) do if value==id or key==id and value~=false and value~=nil then return true end end
    return false
end
function Chapter.canUpgrade(data,tool,id,config)
    local list=Chapter.allowed[tool]
    if not list or not Chapter.owns(data,tool) then return false end
    if tool=="Drone" and not config.upgradeDrone then return false end
    if (tool=="AutoPeeler" or tool=="HandPeeler") and not config.upgradeMachines then return false end
    if (tool=="Body" or tool=="General") and not config.upgradeGeneral then return false end
    if id=="WalkSpeed" and config.movement=="Teleport" then return false end
    for _,name in ipairs(list) do if name==id then return true end end
    return false
end
function Chapter.level(shared,data,tool,id)
    local values=data and data.Upgrades and data.Upgrades[tool]
    local direct=type(values)=="table" and values[id] or nil
    if type(direct)=="number" and direct>=0 then return direct end
    local best=nil
    if type(shared.GetLevel)=="function" then
        local ok,value=pcall(shared.GetLevel,data,tool,id)
        if ok and type(value)=="number" and value>=0 and value%1==0 then best=value end
        if data and type(data.Upgrades)=="table" then
            ok,value=pcall(shared.GetLevel,data.Upgrades,tool,id)
            if ok and type(value)=="number" and value>=0 and value%1==0 then best=math.max(best or 0,value) end
        end
    end
    return best
end
function Chapter.rank(tool,id)
    local order={Shovel=1,Dynamite=2,PotatoSucker=3,Hand=4,AutoPeeler=5,HandPeeler=6,Drone=7,Body=8,General=8}
    local rank=order[tool] or 100
    return rank*10+(id=="PickAmount" and 0 or id=="PickSpeed" and 1 or 2)
end
function Chapter.sellReady(config,stock,state)
    if type(stock)~="number" or stock<=0 then return false end
    if stock>=config.sellThreshold then return true end
    return config.sellRemainder and not state.cutting and state.crate==0 and state.carried==0 and state.exhausted==true
end
return Chapter

end)()

local Protocol = (function()
-- Luau · potato_protocol.luau · compare the live packet writers before direct actions · Roblox / CLI · Luau 0.745
local Protocol={}
function Protocol.create(packets,types)
    local reverse={}
    for name,writer in pairs(type(types)=="table" and types.Writes or {}) do if type(writer)=="function" then reverse[writer]=name end end
    local function schema(name)
        local packet=packets[name]
        if type(packet)~="table" or type(packet.Writes)~="table" then return nil end
        local result={}
        for i,writer in ipairs(packet.Writes) do result[i]=reverse[writer] or "Unknown" end
        return result
    end
    local function matches(name,expected)
        local actual=schema(name)
        if not actual or #actual~=#expected then return false end
        for i,wanted in ipairs(expected) do
            if wanted=="String" then
                if actual[i]~="String" and actual[i]~="StringLong" then return false end
            elseif wanted=="Vector3" then
                if not string.match(actual[i],"^Vector3") then return false end
            elseif wanted=="Boolean" then
                if actual[i]~="Boolean" and actual[i]~="Boolean8" then return false end
            elseif actual[i]~=wanted then return false end
        end
        return true
    end
    return {schema=schema,matches=matches,fire=function(name,...)
        local packet=packets[name]
        if not packet or type(packet.Fire)~="function" then return false,"Pacote indisponivel: "..name end
        return pcall(packet.Fire,packet,...)
    end}
end
return Protocol

end)()

local CutEngine = (function()
-- Luau · potato_cut_engine.luau · paced server acknowledgements · Roblox / CLI · Luau 0.745
local CutEngine={}
function CutEngine.create(config,io)
    local epoch,lastSent=0,-1
    local active,serverSeen,native=false,false,false
    local progressAt,lastFingerprint,lastCash=io.clock(),nil,nil
    local sentAt,nextAt=0,0
    local pending,recovery=0,0
    local scheduled=false
    local generation=0
    local lastTool=nil
    local stats={attempted=0,accepted=0,epochs=0,native=false,pending=0,throttled=false,targetRate=20,ackRate=0,timeouts=0}
    local rateWindow,rateCount=io.clock(),0
    local tick
    local function allowed() return not io.allowed or io.allowed() end
    local function drive(value)
        if native~=value then io.native(value) native=value stats.native=value end
    end
    local function target(tool)
        local toolRate=type(tool)=="table" and tonumber(tool.AutoCutRate) or 1.5
        return math.clamp(config.cutTargetRate or 20,1,40)*math.clamp((toolRate or 1.5)/1.5,1,config.cutToolMultiplier or 4)
    end
    local function schedule()
        if not io.schedule or scheduled or not active or not allowed() then return end
        scheduled=true
        local token=generation
        io.schedule(math.max(0,nextAt-io.clock()),function()
            if token~=generation then return end
            scheduled=false
            if active and allowed() then tick(true,lastFingerprint,lastCash,lastTool) end
        end)
    end
    local function advance(ack)
        if ack and pending>0 then
            pending=0 stats.pending=0 stats.accepted+=1 recovery+=1 rateCount+=1
            if recovery>=4 then stats.throttled=false recovery=0 end
        end
        local now=io.clock()
        if now-rateWindow>=1 then stats.ackRate=rateCount/(now-rateWindow) rateWindow=now rateCount=0 end
        epoch+=1 stats.epochs=epoch progressAt=now
    end
    local function event(name)
        serverSeen=true
        if name=="start" then
            pending=0 stats.pending=0 active=true lastSent=-1 advance(false)
        elseif name=="next" then active=true advance(true)
        elseif name=="stop" then
            active=false pending=0 stats.pending=0 generation+=1 scheduled=false drive(false)
        end
        if name~="stop" then schedule() end
    end
    tick=function(isActive,fingerprint,cash,tool)
        local now=io.clock()
        if not isActive or not allowed() then
            active=false pending=0 stats.pending=0 generation+=1 scheduled=false drive(false) lastFingerprint=nil
            return true
        end
        lastTool=tool or lastTool
        stats.targetRate=target(lastTool)
        if not active then active=true lastSent=-1 advance(false) lastFingerprint=fingerprint end
        if not serverSeen and fingerprint~=nil and lastFingerprint~=nil and fingerprint~=lastFingerprint then advance(true) end
        if cash~=nil and lastCash~=nil and cash~=lastCash then progressAt=now end
        lastFingerprint,lastCash=fingerprint,cash
        if pending>0 and now-sentAt>math.max(0.35,4/stats.targetRate) then
            pending=0 stats.pending=0 stats.throttled=true stats.timeouts+=1 recovery=0 lastSent=-1
            nextAt=math.max(nextAt,now+0.10)
        end
        if config.cutMode=="Fast" and pending==0 and lastSent~=epoch and type(io.finish)=="function" then
            if now>=nextAt then
                -- One current potato per acknowledgement. Old multi-finish bursts
                -- waited for replies the server never sent and permanently throttled.
                lastSent=epoch sentAt=now nextAt=now+1/stats.targetRate
                pending=1 stats.pending=1
                local ok,message=io.finish()
                if not ok then pending=0 stats.pending=0 drive(true) return false,message end
                stats.attempted+=1
            else schedule() end
        end
        drive(config.cutMode=="Native" or pending>0 and now-sentAt>=0.12)
        if now-progressAt>math.max(4,math.min(config.actionTimeout or 10,8)) then
            progressAt=now
            return false,"Corte sem avancar; reabrindo a mesa automaticamente."
        end
        return true
    end
    return {event=event,tick=tick,pause=function()
        generation+=1 scheduled=false active=false pending=0 stats.pending=0 lastSent=-1 drive(false)
    end,stats=stats,epoch=function() return epoch end,serverActive=function() return active end}
end
return CutEngine

end)()

local Session = (function()
-- Luau · potato_session.luau · local configuration and lifecycle · Roblox / Delta · Luau 0.745
local Session = {}

function Session.create(Core, json, files)
    local filename = "Anonymous_Potato_Config_v1.json"
    local available = type(files.read)=="function" and type(files.write)=="function"
    local function decode(content)
        if type(content)~="string" or #content>65536 then return nil,"configuracao invalida" end
        local ok,value=pcall(json.decode,content)
        if not ok or type(value)~="table" or value.schema~=1 or type(value.config)~="table" then
            return nil,"formato de configuracao invalido"
        end
        return Core.validate(value.config,true)
    end
    local function read(path)
        if not available then return nil,"arquivos indisponiveis" end
        local ok,content=pcall(files.read,path)
        if not ok then return nil,"arquivo ausente" end
        return decode(content)
    end
    local function load()
        local config,message=read(filename)
        if config then return config,"Configuracao carregada; rotinas pausadas." end
        local backup=read(filename..".backup")
        if backup then return backup,"Configuracao recuperada do backup; rotinas pausadas." end
        return Core.validate({},true),available and "Nova sessao; rotinas pausadas." or "Sem arquivos: ajustes apenas nesta sessao."
    end
    local function save(config)
        if not available then return false,"Este executor nao disponibilizou leitura e escrita de arquivos." end
        local sanitized=Core.validate(config,true)
        local encodedOk,encoded=pcall(json.encode,{schema=1,config=sanitized})
        if not encodedOk then return false,"Falha ao codificar ajustes." end
        local oldOk,old=pcall(files.read,filename)
        if oldOk and decode(old) then
            local backupOk=pcall(files.write,filename..".backup",old)
            if not backupOk then return false,"Nao foi possivel preservar o backup." end
        end
        local written,why=pcall(files.write,filename,encoded)
        if not written then return false,"Falha ao gravar: "..tostring(why) end
        local checked=read(filename)
        if not checked then
            if oldOk and decode(old) then pcall(files.write,filename,old) end
            return false,"Falha na verificacao do arquivo; tente salvar novamente."
        end
        return true,"Ajustes salvos; ativacoes nao sao restauradas automaticamente."
    end
    return {load=load,save=save,filename=filename,available=available}
end

function Session.log(capacity)
    local lines,records={},{}
    return {
        add=function(message,level)
            local stamp=os.date("%H:%M:%S")
            table.insert(lines,1,stamp.."  "..tostring(message))
            table.insert(records,{time=stamp,level=level or "info",message=tostring(message)})
            while #lines>(capacity or 14) do table.remove(lines) end
            while #records>100 do table.remove(records,1) end
        end,
        lines=function() return table.clone(lines) end,
        records=function() return table.clone(records) end,
    }
end

function Session.lifecycle()
    local alive=true
    local disposables={}
    return {
        alive=function() return alive end,
        add=function(cleanup)
            if alive then table.insert(disposables,cleanup) else pcall(cleanup) end
        end,
        close=function()
            if not alive then return end
            alive=false
            for i=#disposables,1,-1 do pcall(disposables[i]) end
            table.clear(disposables)
        end,
    }
end

return Session

end)()

local Gate = (function()
-- Luau · potato_gate.luau · local access screen and real initialization progress · Roblox · Luau 0.745
local Gate={}

function Gate.open(services,lifecycle,options)
    local player=services.Players.LocalPlayer
    local connections={}
    local approved=options.enabled==false
    local checking=false
    local function make(class,props,parent)
        local instance=Instance.new(class)
        for key,value in pairs(props) do instance[key]=value end
        instance.Parent=parent
        return instance
    end
    local old=player.PlayerGui:FindFirstChild("AnonymousPotatoAccess")
    if old then old:Destroy() end
    local gui=make("ScreenGui",{Name="AnonymousPotatoAccess",ResetOnSpawn=false,DisplayOrder=100,
        ZIndexBehavior=Enum.ZIndexBehavior.Sibling},player.PlayerGui)
    local backdrop=make("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3=Color3.fromRGB(6,7,13),
        BackgroundTransparency=0.2,BorderSizePixel=0},gui)
    local panel=make("Frame",{Size=UDim2.new(0.88,0,0,355),AnchorPoint=Vector2.new(0.5,0.5),
        Position=UDim2.fromScale(0.5,0.5),BackgroundColor3=Color3.fromRGB(19,19,30),BorderSizePixel=0},backdrop)
    make("UISizeConstraint",{MinSize=Vector2.new(260,355),MaxSize=Vector2.new(440,355)},panel)
    make("UICorner",{CornerRadius=UDim.new(0,18)},panel)
    make("UIStroke",{Color=Color3.fromRGB(79,64,109),Thickness=1},panel)
    local function label(text,y,height,size,color)
        return make("TextLabel",{BackgroundTransparency=1,Text=text,Position=UDim2.fromOffset(26,y),
            Size=UDim2.new(1,-52,0,height),Font=Enum.Font.Gotham,TextSize=size,
            TextColor3=color or Color3.fromRGB(238,232,250),TextWrapped=true,
            TextXAlignment=Enum.TextXAlignment.Left},panel)
    end
    label("ANONYMOUS",28,35,26).Font=Enum.Font.GothamBold
    label("POTATO / DELTA",67,20,11,Color3.fromRGB(182,155,255))
    local detail=label("Acesso local de demonstracao. Key provisoria: Anonymous",104,37,12,Color3.fromRGB(159,151,177))
    local entry=make("TextBox",{Position=UDim2.fromOffset(26,157),Size=UDim2.new(1,-52,0,42),
        BackgroundColor3=Color3.fromRGB(12,13,21),BorderSizePixel=0,ClearTextOnFocus=false,
        Text="",PlaceholderText="Digite sua key",PlaceholderColor3=Color3.fromRGB(111,105,132),
        TextColor3=Color3.fromRGB(238,232,250),TextSize=14,Font=Enum.Font.Gotham},panel)
    make("UICorner",{CornerRadius=UDim.new(0,9)},entry)
    local submit=make("TextButton",{Position=UDim2.fromOffset(26,214),Size=UDim2.new(1,-52,0,42),
        BackgroundColor3=Color3.fromRGB(178,151,255),BorderSizePixel=0,Text="ENTRAR",
        TextColor3=Color3.fromRGB(18,13,29),TextSize=13,Font=Enum.Font.GothamBold},panel)
    make("UICorner",{CornerRadius=UDim.new(0,9)},submit)
    local status=label("Aguardando key.",269,30,11,Color3.fromRGB(159,151,177))
    local track=make("Frame",{Position=UDim2.fromOffset(26,317),Size=UDim2.new(1,-52,0,5),
        BackgroundColor3=Color3.fromRGB(49,42,65),BorderSizePixel=0},panel)
    make("UICorner",{CornerRadius=UDim.new(0,5)},track)
    local fill=make("Frame",{Size=UDim2.fromScale(0,1),BackgroundColor3=Color3.fromRGB(178,151,255),BorderSizePixel=0},track)
    make("UICorner",{CornerRadius=UDim.new(0,5)},fill)
    local close=make("TextButton",{Text="X",BackgroundTransparency=1,TextColor3=Color3.fromRGB(159,151,177),
        Position=UDim2.new(1,-38,0,12),Size=UDim2.fromOffset(26,26),TextSize=15,Font=Enum.Font.Gotham},panel)
    local function enter()
        if checking or approved or not lifecycle.alive() then return end
        checking=true submit.Text="VALIDANDO..."
        task.spawn(function()
            local value=string.match(entry.Text,"^%s*(.-)%s*$")
            local ok,accepted,message
            if type(options.validate)=="function" then
                ok,accepted,message=pcall(options.validate,value)
            else ok,accepted=true,value==(options.key or "Anonymous") end
            if not lifecycle.alive() or not gui.Parent then return end
            checking=false
            if ok and accepted==true then
                approved=true
                entry.Visible=false submit.Visible=false
                detail.Text="Carregando os componentes disponiveis nesta experiencia."
                status.Text="Acesso liberado. Inicializando..."
            else
                submit.Text="ENTRAR"
                status.Text=ok and (type(message)=="string" and message or "Key incorreta.") or "Falha ao validar. Tente novamente."
            end
        end)
    end
    table.insert(connections,submit.Activated:Connect(enter))
    table.insert(connections,entry.FocusLost:Connect(function(pressedEnter) if pressedEnter then enter() end end))
    table.insert(connections,close.Activated:Connect(lifecycle.close))
    local function dispose()
        for _,connection in ipairs(connections) do connection:Disconnect() end
        table.clear(connections)
        if gui.Parent then gui:Destroy() end
    end
    lifecycle.add(dispose)
    if approved then
        entry.Visible=false submit.Visible=false
        detail.Text="Carregando os componentes disponiveis nesta experiencia."
        status.Text="Inicializando..."
    end
    return {
        wait=function()
            while lifecycle.alive() and gui.Parent and not approved do task.wait(0.1) end
            return lifecycle.alive() and gui.Parent~=nil and approved
        end,
        progress=function(fraction,message)
            if gui.Parent then
                fill.Size=UDim2.fromScale(math.clamp(fraction,0,1),1)
                status.Text=tostring(message)
            end
        end,
        close=dispose,
    }
end

return Gate

end)()

local UI = (function()
-- Luau · potato_ui.luau · Anonymous native control panel · Roblox client · Luau 0.745
local UI = {}

function UI.create(services, config, callbacks, Layout)
    local Players, TweenService, Input = services.Players, services.TweenService, services.UserInputService
    local player = Players.LocalPlayer
    local connections, bindings, pages, navButtons = {}, {}, {}, {}
    local closed, activePage, isOpen = false,"Inicio",true
    local palette = {
        background=Color3.fromRGB(11,15,24), sidebar=Color3.fromRGB(16,21,33),
        card=Color3.fromRGB(23,29,44), line=Color3.fromRGB(47,58,79),
        text=Color3.fromRGB(244,240,255), muted=Color3.fromRGB(153,148,173),
        accent=Color3.fromRGB(164,148,255), mint=Color3.fromRGB(95,230,192),
    }
    local function make(class, properties, parent)
        local result = Instance.new(class)
        for k,v in pairs(properties or {}) do result[k]=v end
        result.Parent=parent
        return result
    end
    local function corner(parent,radius) make("UICorner",{CornerRadius=UDim.new(0,radius or 10)},parent) end
    local function stroke(parent,color) make("UIStroke",{Color=color or palette.line,Thickness=1},parent) end
    local function text(parent,content,size,color,bold)
        return make("TextLabel",{BackgroundTransparency=1,Text=content,TextSize=size or 13,
            TextColor3=color or palette.text,Font=bold and Enum.Font.GothamBold or Enum.Font.Gotham,
            TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center},parent)
    end
    local function button(parent,content)
        local result=make("TextButton",{BackgroundColor3=palette.card,Text=content,TextSize=12,
            TextColor3=palette.text,Font=Enum.Font.GothamBold,BorderSizePixel=0,AutoButtonColor=true},parent)
        corner(result,8)
        return result
    end
    local uiParent=player.PlayerGui
    if type(gethui)=="function" then
        local ok,parent=pcall(gethui)
        if ok and typeof(parent)=="Instance" then uiParent=parent end
    end
    local old=uiParent:FindFirstChild("AnonymousPotatoHub")
    if old then old:Destroy() end
    local gui=make("ScreenGui",{Name="AnonymousPotatoHub",ResetOnSpawn=false,
        DisplayOrder=10000,ZIndexBehavior=Enum.ZIndexBehavior.Sibling},uiParent)
    table.insert(connections,gui:GetPropertyChangedSignal("Enabled"):Connect(function()
        if not closed and not gui.Enabled then gui.Enabled=true end
    end))
    local canvas=make("Frame",{Name="SafeCanvas",Size=UDim2.fromScale(1,1),BackgroundTransparency=1},gui)
    local panel=make("Frame",{Name="Panel",Position=UDim2.fromOffset(8,8),
        Size=UDim2.fromOffset(760,580),Visible=false,BackgroundColor3=palette.background,BorderSizePixel=0,ClipsDescendants=true},canvas)
    local panelScale=make("UIScale",{Scale=1},panel)
    make("UIGradient",{Color=ColorSequence.new(Color3.fromRGB(21,25,39),palette.background),Rotation=90},panel)
    corner(panel,15) stroke(panel)
    local sidebar=make("Frame",{Size=UDim2.new(0,174,1,0),BackgroundColor3=palette.sidebar,BorderSizePixel=0},panel)
    local brand=text(sidebar,"anonymous",20,palette.text,true)
    brand.Position,brand.Size=UDim2.fromOffset(17,21),UDim2.new(1,-32,0,28)
    local edition=text(sidebar,"POTATO / CONTROL",10,palette.accent,true)
    edition.Position,edition.Size=UDim2.fromOffset(18,51),UDim2.new(1,-32,0,16) edition.Text="CHAPTER II / EVOLVY"
    local nav=make("ScrollingFrame",{BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=2,
        AutomaticCanvasSize=Enum.AutomaticSize.Y,CanvasSize=UDim2.fromOffset(0,0),
        Position=UDim2.fromOffset(12,90),Size=UDim2.new(1,-24,1,-165)},sidebar)
    local navLayout=make("UIListLayout",{Padding=UDim.new(0,7),SortOrder=Enum.SortOrder.LayoutOrder},nav)
    local session=text(sidebar,"KEY LOCAL\nAnonymous",11,palette.muted,false)
    session.Position,session.Size=UDim2.new(0,18,1,-66),UDim2.new(1,-30,0,43)
    local content=make("Frame",{BackgroundTransparency=1,Position=UDim2.fromOffset(196,22),
        Size=UDim2.new(1,-218,1,-44)},panel)
    local heading=text(content,"Inicio",23,palette.text,true)
    heading.Size=UDim2.new(1,-110,0,34)
    local hide=button(content,"OCULTAR")
    hide.Position,hide.Size=UDim2.new(1,-100,0,0),UDim2.fromOffset(100,31)
    local status=text(content,"Inicializando...",11,palette.muted,false)
    status.Position,status.Size=UDim2.fromOffset(0,40),UDim2.new(1,0,0,35)
    status.TextWrapped=true
    local pageArea=make("Frame",{BackgroundTransparency=1,Position=UDim2.fromOffset(0,87),
        Size=UDim2.new(1,0,1,-146)},content)
    local footer=make("Frame",{BackgroundTransparency=1,Position=UDim2.new(0,0,1,-43),Size=UDim2.new(1,0,0,38)},content)
    local save=button(footer,"SALVAR")
    save.Size=UDim2.fromOffset(100,35)
    local pause=button(footer,"PAUSAR TUDO")
    pause.Size,pause.Position=UDim2.fromOffset(143,35),UDim2.fromOffset(111,0)
    local mini=button(canvas,"A")
    mini.Position,mini.Size=UDim2.fromOffset(13,72),UDim2.fromOffset(56,56)
    mini.BackgroundColor3=palette.accent mini.TextColor3=palette.background mini.TextSize=27 mini.Visible=true mini.ZIndex=20
    local dragBar=make("Frame",{Name="MoveHandle",Size=UDim2.new(1,-18,0,33),BackgroundTransparency=1,Active=true},panel)
    local dragHint=text(dragBar,"≡   ANONYMOUS / POTATO   ·   ARRASTE",10,palette.muted,true)
    dragHint.Position,dragHint.Size=UDim2.fromOffset(15,3),UDim2.new(1,-30,1,-6)
    local grip=button(panel,"↘") grip.Position,grip.Size=UDim2.new(1,-25,1,-25),UDim2.fromOffset(23,23)
    grip.BackgroundTransparency=1 grip.TextColor3=palette.accent grip.TextSize=20 grip.ZIndex=10
    local suppressMiniUntil=0
    local applyLayout=nil
    local function layoutChange(values)
        if callbacks.layout then callbacks.layout(values)
        else for key,value in pairs(values) do config[key]=value end end
        if applyLayout then applyLayout() end
    end
    local function draggable(handle,target,kind)
        local captured,origin,position,startW,startH,startScale=nil,nil,nil,nil,nil,nil
        table.insert(connections,handle.InputBegan:Connect(function(event)
            if event.UserInputType~=Enum.UserInputType.Touch and event.UserInputType~=Enum.UserInputType.MouseButton1 then return end
            captured=event origin=Vector2.new(event.Position.X,event.Position.Y)
            position=target.AbsolutePosition-canvas.AbsolutePosition
            startScale=panelScale.Scale
            startW,startH=panel.Size.X.Offset,panel.Size.Y.Offset
        end))
        table.insert(connections,Input.InputChanged:Connect(function(event)
            if not captured then return end
            local touch=captured.UserInputType==Enum.UserInputType.Touch
            if touch and event~=captured or not touch and event.UserInputType~=Enum.UserInputType.MouseMovement then return end
            local delta=Vector2.new(event.Position.X,event.Position.Y)-origin
            if delta.Magnitude<5 then return end
            if kind=="resize" then
                layoutChange({uiWidth=math.clamp(startW+delta.X/startScale,300,1100),uiHeight=math.clamp(startH+delta.Y/startScale,340,900)})
            else
                local nextPosition=position+delta
                local x,y=Layout.normalized(nextPosition.X,nextPosition.Y,canvas.AbsoluteSize.X,canvas.AbsoluteSize.Y,target.AbsoluteSize.X,target.AbsoluteSize.Y)
                if kind=="launcher" then suppressMiniUntil=os.clock()+0.25 layoutChange({buttonX=x,buttonY=y})
                else layoutChange({uiX=x,uiY=y}) end
            end
        end))
        table.insert(connections,Input.InputEnded:Connect(function(event)
            if captured and (event==captured or captured.UserInputType==Enum.UserInputType.MouseButton1 and event.UserInputType==Enum.UserInputType.MouseButton1) then captured=nil end
        end))
    end
    draggable(dragBar,panel,"panel") draggable(grip,panel,"resize") draggable(mini,mini,"launcher")

    local function setOpen(value)
        isOpen=value panel.Visible=value mini.Visible=true
    end
    table.insert(connections,hide.Activated:Connect(function() setOpen(false) end))
    table.insert(connections,mini.Activated:Connect(function() if os.clock()>suppressMiniUntil then setOpen(true) end end))
    table.insert(connections,save.Activated:Connect(function() if callbacks.save then callbacks.save() end end))
    table.insert(connections,pause.Activated:Connect(function() callbacks.pause() end))
    local function page(name)
        activePage=name heading.Text=name
        for key,frame in pairs(pages) do frame.Visible=key==name end
        for key,item in pairs(navButtons) do
            item.BackgroundColor3=key==name and Color3.fromRGB(48,37,68) or palette.sidebar
            item.TextColor3=key==name and palette.accent or palette.muted
        end
    end
    local function newPage(name,index)
        local area=make("ScrollingFrame",{Name=name,Size=UDim2.fromScale(1,1),BackgroundTransparency=1,
            BorderSizePixel=0,ScrollBarThickness=4,ScrollBarImageColor3=palette.accent,
            AutomaticCanvasSize=Enum.AutomaticSize.Y,CanvasSize=UDim2.fromOffset(0,0),Visible=false},pageArea)
        local list=make("UIListLayout",{Padding=UDim.new(0,13),SortOrder=Enum.SortOrder.LayoutOrder},area)
        make("UIPadding",{PaddingRight=UDim.new(0,9),PaddingBottom=UDim.new(0,12)},area)
        pages[name]=area
        local b=button(nav,string.format("%02d   %s",index,name))
        b.Size=UDim2.new(1,0,0,39) b.LayoutOrder=index b.TextXAlignment=Enum.TextXAlignment.Left
        make("UIPadding",{PaddingLeft=UDim.new(0,10)},b)
        navButtons[name]=b
        table.insert(connections,b.Activated:Connect(function() page(name) end))
        return area,list
    end
    local function card(parent,title,description)
        local frame=make("Frame",{BackgroundColor3=palette.card,BorderSizePixel=0,
            Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y},parent)
        corner(frame,12) stroke(frame)
        make("UIPadding",{PaddingTop=UDim.new(0,16),PaddingBottom=UDim.new(0,15),
            PaddingLeft=UDim.new(0,15),PaddingRight=UDim.new(0,15)},frame)
        make("UIListLayout",{Padding=UDim.new(0,10),SortOrder=Enum.SortOrder.LayoutOrder},frame)
        local titleLabel=text(frame,title,15,palette.text,true)
        titleLabel.Size=UDim2.new(1,0,0,23) titleLabel.LayoutOrder=0
        if description then
            local descriptionLabel=text(frame,description,11,palette.muted,false)
            descriptionLabel.Size=UDim2.new(1,0,0,0) descriptionLabel.AutomaticSize=Enum.AutomaticSize.Y
            descriptionLabel.TextWrapped=true descriptionLabel.TextYAlignment=Enum.TextYAlignment.Top descriptionLabel.LayoutOrder=1
        end
        return frame
    end
    local nextOrder=10
    local function row(parent,title,description,height)
        nextOrder=nextOrder+1
        local r=make("Frame",{BackgroundTransparency=1,Size=UDim2.new(1,0,0,height or 80),LayoutOrder=nextOrder},parent)
        local name=text(r,title,12,palette.text,false)
        name.Size=UDim2.new(1,-115,0,36) name.TextWrapped=true
        if description then
            local desc=text(r,description,10,palette.muted,false)
            desc.Position,desc.Size=UDim2.fromOffset(0,41),UDim2.new(1,-5,0,32)
            desc.TextWrapped=true desc.TextYAlignment=Enum.TextYAlignment.Top
        end
        return r
    end
    local function bindField(field,refresh)
        bindings[field]=bindings[field] or {}
        table.insert(bindings[field],refresh)
        refresh(config[field])
    end
    local function toggle(parent,field,title,description)
        local r=row(parent,title,description,description and 82 or 44)
        local control=button(r,"")
        control.Size,control.Position=UDim2.fromOffset(54,34),UDim2.new(1,-54,0,1)
        local knob=make("Frame",{BackgroundColor3=Color3.fromRGB(244,238,255),BorderSizePixel=0,
            Size=UDim2.fromOffset(24,24),Position=UDim2.fromOffset(5,5)},control)
        corner(knob,20)
        bindField(field,function(value)
            control.BackgroundColor3=value and palette.accent or Color3.fromRGB(63,59,78)
            knob.Position=UDim2.fromOffset(value and 25 or 5,5)
        end)
        table.insert(connections,control.Activated:Connect(function()
            local value=callbacks.value and callbacks.value(field) or config[field]
            callbacks.change(field,not value)
        end))
    end
    local function choice(parent,field,title,options)
        local r=row(parent,title,nil,46)
        local control=button(r,"")
        control.Size,control.Position=UDim2.fromOffset(112,36),UDim2.new(1,-112,0,0)
        bindField(field,function(value)
            for _, option in ipairs(options) do if option[1]==value then control.Text=option[2].." >" return end end
        end)
        table.insert(connections,control.Activated:Connect(function()
            local current=1
            for i,option in ipairs(options) do if option[1]==config[field] then current=i break end end
            callbacks.change(field,options[current % #options + 1][1])
        end))
    end
    local function number(parent,field,title,low,high,step,suffix)
        local r=row(parent,title,nil,80)
        local input=make("TextBox",{Size=UDim2.fromOffset(100,34),Position=UDim2.new(1,-100,0,0),
            BackgroundColor3=palette.background,TextColor3=palette.accent,BorderSizePixel=0,
            TextSize=12,Font=Enum.Font.Gotham,ClearTextOnFocus=false},r)
        corner(input,6)
        local track=make("TextButton",{Text="",AutoButtonColor=false,Position=UDim2.fromOffset(0,46),
            Size=UDim2.new(1,0,0,28),BackgroundColor3=Color3.fromRGB(57,53,74),BackgroundTransparency=1,BorderSizePixel=0},r)
        local rail=make("Frame",{Position=UDim2.fromOffset(0,11),Size=UDim2.new(1,0,0,6),BackgroundColor3=Color3.fromRGB(57,53,74),BorderSizePixel=0},track)
        corner(track,4)
        local fill=make("Frame",{Size=UDim2.fromScale(0,1),BackgroundColor3=palette.accent,BorderSizePixel=0},rail) corner(fill,4)
        local dragging=false
        local touchPointer,touchStart=nil,nil
        local inputOnly=high>=10000
        if inputOnly then
            track.Visible=false r.Size=UDim2.new(1,0,0,55)
        end
        bindField(field,function(value)
            input.Text=string.format(step<1 and "%.2f%s" or "%.0f%s",value,suffix or "")
            fill.Size=UDim2.fromScale(math.clamp((value-low)/(high-low),0,1),1)
        end)
        local function fromPosition(x)
            local ratio=math.clamp((x-track.AbsolutePosition.X)/math.max(1,track.AbsoluteSize.X),0,1)
            callbacks.change(field,math.clamp(math.floor((low+ratio*(high-low))/step+0.5)*step,low,high))
        end
        table.insert(connections,input.FocusLost:Connect(function()
            local value=callbacks.parseNumber and callbacks.parseNumber(input.Text) or tonumber(string.match(input.Text,"%-?[%d%.]+"))
            if value then callbacks.change(field,math.clamp(value,low,high)) else callbacks.change(field,config[field]) end
        end))
        table.insert(connections,track.InputBegan:Connect(function(event)
            if event.UserInputType==Enum.UserInputType.MouseButton1 then dragging=true fromPosition(event.Position.X)
            elseif event.UserInputType==Enum.UserInputType.Touch then touchPointer=event touchStart=event.Position dragging=false end
        end))
        table.insert(connections,Input.InputChanged:Connect(function(event)
            if touchPointer and event==touchPointer then
                local delta=event.Position-touchStart
                if not dragging and math.abs(delta.Y)>10 and math.abs(delta.Y)>math.abs(delta.X) then touchPointer=nil return end
                if math.abs(delta.X)>8 and math.abs(delta.X)>math.abs(delta.Y)*1.4 then dragging=true end
            end
            if dragging and (event.UserInputType==Enum.UserInputType.MouseMovement or event==touchPointer) then fromPosition(event.Position.X) end
        end))
        table.insert(connections,Input.InputEnded:Connect(function(event)
            if event.UserInputType==Enum.UserInputType.MouseButton1 or event==touchPointer then dragging=false touchPointer=nil end
        end))
    end

    local home=newPage("Inicio",1)
    local hero=card(home,"EVOLVY / CHAPTER II","COLETAR  >  CORTAR  >  VENDER  >  EVOLUIR")
    toggle(hero,"autoProgress","Auto Progress","Vende ao atingir a meta, prioriza ferramentas e retorna ao trabalho.")
    toggle(hero,"autoCut","Auto Cut","Somente mesa de corte, com compra de ferramentas opcional.")
    local counters=card(home,"Sessao")
    local summary=text(counters,"Dinheiro: —\nBolsa: —\nCalor: —\nEstado: aguardando",12,palette.muted,false)
    summary.Size=UDim2.new(1,0,0,145) summary.LayoutOrder=3 summary.TextYAlignment=Enum.TextYAlignment.Top summary.TextWrapped=true
    local farm=newPage("Coleta",2)
    local f=card(farm,"Filtro e selecao")
    toggle(f,"autoFarm","Coletar automaticamente")
    toggle(f,"autoDeliver","Entregar automaticamente")
    choice(f,"rarity","Batatas",{{"Any","Qualquer"},{"Rainbow","Rainbow"},{"Diamond","Diamante"},{"Golden","Dourada"}})
    choice(f,"selection","Escolha",{{"Nearest","Mais perto"},{"Random","Aleatoria"}})
    toggle(f,"collectPumpkins","Coletar aboboras")
    toggle(f,"collectGems","Incluir gemas da pilha")
    toggle(f,"gemPriority","Priorizar gemas")
    toggle(f,"pumpkinPriority","Priorizar aboboras")
    toggle(f,"priorityValue","Priorizar maior valor","Na selecao por proximidade, procura variantes valiosas quando sua identidade estiver disponivel.")
    choice(f,"deliveryMode","Entregar por",{{"Amount","Quantidade"},{"Percent","Porcentagem"}})
    choice(f,"deliveryTarget","Destino",{{"Crate","Caixa"},{"Table","Mesa"},{"Manual","Manual"},{"Auto","Automatica"}})
    number(f,"deliveryFill","Entregar com a bolsa em",10,100,5,"%")
    number(f,"deliveryBatch","Quantidade por entrega",1,1000000,1,"")
    nextOrder+=1
    local presets=make("Frame",{BackgroundTransparency=1,Size=UDim2.new(1,0,0,44),LayoutOrder=nextOrder},f)
    make("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,6)},presets)
    for _,amount in ipairs({100,500,1000,5000}) do
        local preset=button(presets,tostring(amount)) preset.Size=UDim2.new(0.25,-5,0,38)
        table.insert(connections,preset.Activated:Connect(function() callbacks.change("deliveryBatch",amount) end))
    end
    toggle(f,"infiniteBag","Tenho bolsa infinita","Usa o lote configurado no planejamento. Esta opcao nao concede a mochila no jogo.")
    number(f,"maxDistance","Alcance de busca",10,1000,10," studs")
    local cut=newPage("Corte",3)
    local c=card(cut,"Mesa e ferramentas")
    toggle(c,"autoCut","Auto Cut")
    choice(c,"cutMode","Modo de corte",{{"Fast","Rapido"},{"Native","Nativo"}})
    number(c,"cutTargetRate","Meta de tentativas por segundo",1,40,1,"/s")
    number(c,"cutToolMultiplier","Multiplicador com ferramentas",1,4,0.5,"x")
    choice(c,"tableChoice","Mesa",{{"Nearest","Mais perto"},{"PeelingTable1","Mesa 1"},{"PeelingTable2","Mesa 2"},{"PeelingTable3","Mesa 3"},{"PeelingTable4","Mesa 4"}})
    toggle(c,"cutBuyTools","Comprar no Auto Cut","Compra ferramentas de corte usando o orcamento configurado.")
    toggle(c,"autoCrank","Girar cortador manual","Aciona a maquina quando estiver carregada e liberada pelo jogo.")
    local sales=newPage("Vendas",4)
    local saleCard=card(sales,"Venda e retorno","Vende o estoque cortado e retoma a rotina. A proxima ferramenta tem prioridade apos a venda.")
    toggle(saleCard,"autoSell","Auto Sell")
    number(saleCard,"sellThreshold","Vender a partir de",1,1000000,1," batatas")
    toggle(saleCard,"buyAfterSell","Comprar ferramenta apos vender")
    toggle(saleCard,"returnAfterSell","Voltar para a mesa")
    toggle(saleCard,"sellRemainder","Vender o restante no fim")
    local thermal=newPage("Resfriar",5)
    local t=card(thermal,"Valvula de agua","Usa COOL FIRE / Water Valve e respeita os 5 segundos de interacao.")
    toggle(t,"autoCool","Auto Cooling")
    number(t,"heatStart","Comecar a resfriar em",15,100,5,"%")
    number(t,"heatStop","Considerar frio em",0,90,5,"%")
    number(t,"coolingRetry","Espera entre tentativas",5,120,1," s")
    toggle(t,"returnAfterCooling","Voltar ao ponto anterior")
    local purchases=newPage("Compras",6)
    local p=card(purchases,"Orcamento","Compras automaticas usam somente dinheiro comum do jogo. Reserva e limite por compra sao aplicados antes de cada acao.")
    toggle(p,"autoBuyTools","Ferramentas")
    toggle(p,"autoBuyUpgrades","Melhorias")
    toggle(p,"autoBuyStorage","Bolsas e capacidade")
    toggle(p,"saveForNextTool","Guardar para a proxima arma")
    toggle(p,"upgradeDrone","Melhorar drone comprado")
    toggle(p,"upgradeMachines","Melhorar maquinas compradas")
    toggle(p,"upgradeGeneral","Melhorias gerais do capitulo 2")
    number(p,"reserveCash","Reserva de dinheiro",0,100000,0.01," $")
    number(p,"maxPurchase","Limite por compra (0 = livre)",0,100000,0.01," $")
    local settings=newPage("Ajustes",7)
    local appearance=card(settings,"Tela e toque","Arraste o topo para mover o painel. O botao A tambem pode ser arrastado. Use o canto inferior para redimensionar.")
    number(appearance,"uiScale","Escala da interface",65,150,5,"%")
    number(appearance,"uiWidth","Largura do painel",300,1100,10," px")
    number(appearance,"uiHeight","Altura do painel",340,900,10," px")
    number(appearance,"buttonSize","Tamanho do botao A",44,88,2," px")
    local resetLayout=button(appearance,"CENTRALIZAR E RESTAURAR TAMANHO") resetLayout.Size=UDim2.new(1,0,0,44) resetLayout.LayoutOrder=1000
    table.insert(connections,resetLayout.Activated:Connect(function()
        layoutChange({uiX=0.5,uiY=0.5,uiWidth=760,uiHeight=580,uiScale=100,buttonX=0.03,buttonY=0.22,buttonSize=56})
    end))
    local s=card(settings,"Execucao")
    choice(s,"movement","Deslocamento",{{"Teleport","Teleporte"},{"Walk","Caminhar"}})
    choice(s,"speedMode","Ritmo",{{"Turbo","Turbo"},{"Standard","Normal"}})
    number(s,"pickBatch","Coletas por rodada",1,16,1,"")
    choice(s,"collectTool","Ferramenta de coleta",{{"Auto","Melhor adquirida"},{"Hand","Mao"},{"Shovel","Pa"},{"PotatoSucker","P0T4T0-3000"}})
    toggle(s,"logicalSpecials","Especiais sem modelo visivel","Usa os IDs e as posicoes atuais do jogo. Tentativas recusadas recebem uma pausa; recompensas dependem do servidor.")
    toggle(s,"autoRecover","Recuperar etapas automaticamente","Falhas de coleta e entrega adiam somente a etapa afetada.")
    local restore=button(s,"RESTAURAR CONTROLES DO JOGO") restore.Size=UDim2.new(1,0,0,40) restore.LayoutOrder=1000
    table.insert(connections,restore.Activated:Connect(function() if callbacks.restore then callbacks.restore() end end))
    number(s,"actionDelay","Intervalo entre acoes",0.02,5,0.01," s")
    number(s,"actionTimeout","Tempo limite de acao",2,60,1," s")
    number(s,"travelTimeout","Tempo limite de trajeto",5,120,1," s")
    toggle(s,"autoDynamite","Dinamite automatica","Atua quando a ferramenta foi adquirida e o protocolo de lancamento foi identificado.")
    toggle(s,"dynamiteAggressive","Intervalo acelerado","Reduz a espera local; tentativas sem confirmacao recebem um intervalo maior.")
    number(s,"dynamiteInterval","Intervalo da dinamite",0.1,15,0.1," s")
    toggle(s,"pauseOnMovement","Pausar com movimento manual")
    toggle(s,"notifications","Notificacoes")
    local shortcuts=card(settings,"Atalhos")
    for _, item in ipairs({{"keyProgress","Auto Progress"},{"keyCut","Auto Cut"},{"keyFarm","Coleta"},
        {"keyCool","Resfriamento"},{"keyBuy","Ferramentas"},{"keyDeliver","Entregar"},
        {"keyPumpkin","Aboboras"},{"keyStorage","Bolsas"},{"keyUpgrades","Melhorias"},
        {"keyCrank","Cortador manual"},
        {"keySell","Vender"},{"keyDynamite","Dinamite"},
        {"keyMenu","Painel"},{"keyPause","Pausar"}}) do
        local field,title=item[1],item[2]
        local r=row(shortcuts,title,nil,36)
        local b=button(r,config[field]) b.Position,b.Size=UDim2.new(1,-96,0,0),UDim2.fromOffset(96,27)
        bindField(field,function(value) b.Text=value end)
        table.insert(connections,b.Activated:Connect(function() callbacks.bind(field) end))
    end
    local logPage=newPage("Registros",8)
    local l=card(logPage,"Atividade recente")
    local logText=text(l,"Pronto.",11,palette.muted,false)
    logText.Size=UDim2.new(1,0,0,230) logText.TextWrapped=true logText.TextYAlignment=Enum.TextYAlignment.Top logText.LayoutOrder=3
    local export=button(l,"EXPORTAR DIAGNOSTICO") export.Size=UDim2.new(1,0,0,34) export.LayoutOrder=5
    table.insert(connections,export.Activated:Connect(function() if callbacks.export then callbacks.export() end end))
    local loader=button(l,"COPIAR LOADER CURTO") loader.Size=UDim2.new(1,0,0,38) loader.LayoutOrder=6
    table.insert(connections,loader.Activated:Connect(function() if callbacks.copyLoader then callbacks.copyLoader() end end))
    local unload=button(l,"ENCERRAR HUB") unload.Size=UDim2.new(1,0,0,38) unload.LayoutOrder=7
    table.insert(connections,unload.Activated:Connect(function() gui:Destroy() end))

    applyLayout=function()
        if closed then return end
        if canvas.AbsoluteSize.X<100 or canvas.AbsoluteSize.Y<100 then return end
        local bounds=Layout.resolve(canvas.AbsoluteSize.X,canvas.AbsoluteSize.Y,config)
        panel.Size=UDim2.fromOffset(bounds.width,bounds.height)
        panelScale.Scale=bounds.scale
        panel.Position=UDim2.fromOffset(bounds.x,bounds.y)
        panel.Visible=isOpen
        local launcher=Layout.launcher(canvas.AbsoluteSize.X,canvas.AbsoluteSize.Y,config)
        mini.Size=UDim2.fromOffset(launcher.size,launcher.size)
        mini.Position=UDim2.fromOffset(launcher.x,launcher.y)
        local compact=bounds.compact
        local width=compact and 66 or 174
        sidebar.Size=UDim2.new(0,width,1,0)
        sidebar.Visible=not compact
        content.Position=UDim2.fromOffset(compact and 16 or width+16,43)
        content.Size=UDim2.new(1,compact and -32 or -width-32,1,-59)
        pageArea.Size=UDim2.new(1,0,1,compact and -202 or -146)
        nav.Parent=compact and panel or sidebar
        nav.Position=compact and UDim2.new(0,12,1,-112) or UDim2.fromOffset(12,90)
        nav.Size=compact and UDim2.new(1,-24,0,43) or UDim2.new(1,-24,1,-165)
        nav.AutomaticCanvasSize=compact and Enum.AutomaticSize.X or Enum.AutomaticSize.Y
        nav.ScrollingDirection=compact and Enum.ScrollingDirection.X or Enum.ScrollingDirection.Y
        navLayout.FillDirection=compact and Enum.FillDirection.Horizontal or Enum.FillDirection.Vertical
        dragHint.Text=compact and "≡   ANONYMOUS / POTATO   ·   ARRASTE" or "≡   ARRASTE PARA MOVER"
        dragHint.TextXAlignment=compact and Enum.TextXAlignment.Left or Enum.TextXAlignment.Right
        brand.Text=compact and "A" or "anonymous"
        brand.TextSize=compact and 27 or 20
        edition.Visible=not compact session.Visible=not compact
        for name,b in pairs(navButtons) do
            local index=({Inicio=1,Coleta=2,Corte=3,Vendas=4,Resfriar=5,Compras=6,Ajustes=7,Registros=8})[name]
            b.Text=compact and ({Inicio="INICIO",Coleta="COLETA",Corte="CORTE",Vendas="VENDER",Resfriar="AGUA",Compras="LOJA",Ajustes="AJUSTE",Registros="LOG"})[name] or string.format("%02d   %s",index,name)
            b.TextSize=compact and 9 or 12
            b.Size=compact and UDim2.fromOffset(52,39) or UDim2.new(1,0,0,43)
            b.TextXAlignment=compact and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left
            local padding=b:FindFirstChildOfClass("UIPadding")
            if padding then padding.PaddingLeft=UDim.new(0,compact and 0 or 10) end
        end
        save.Size=UDim2.new(0.38,-4,0,35)
        pause.Position,pause.Size=UDim2.new(0.38,4,0,0),UDim2.new(0.62,-4,0,35)
    end
    table.insert(connections,canvas:GetPropertyChangedSignal("AbsoluteSize"):Connect(applyLayout))
    task.defer(applyLayout)
    page("Inicio")
    local function destroy()
        if closed then return end
        closed=true
        for _, connection in ipairs(connections) do connection:Disconnect() end
        if callbacks.close then callbacks.close() end
    end
    gui.Destroying:Connect(destroy)
    return {
        refresh=function(field)
            if closed then return end
            for key,list in pairs(bindings) do
                if not field or key==field then
                    local value=callbacks.value and callbacks.value(key)
                    if value==nil then value=config[key] end
                    for _, update in ipairs(list) do update(value) end
                end
            end
            if applyLayout then applyLayout() end
        end,
        status=function(message) if not closed then status.Text=message end end,
        summary=function(message) if not closed then summary.Text=message end end,
        logs=function(lines) if not closed then logText.Text=table.concat(lines,"\n") end end,
        show=function() setOpen(true) end,
        toggle=function() setOpen(not isOpen) end,
        close=function() if gui.Parent then gui:Destroy() end end,
        gui=gui,
    }
end

return UI

end)()

local Navigation = (function()
-- Luau · potato_navigation.luau · cancellable movement and prompt interactions · Roblox · Luau 0.745
local Navigation = {}

function Navigation.create(services, config, log,runtime)
    local clock=runtime and runtime.clock or os.clock
    local player = services.Players.LocalPlayer
    local nativePrompt=runtime and runtime.nativePrompt or type(fireproximityprompt)=="function" and fireproximityprompt or nil
    local controls, controlDepth, previousEnabled = nil,0,true
    local activeHumanoid = nil
    local heldPrompt=nil
    local promptStats={attempts=0,held=0,native=0,lastMethod="none",lastPath="none"}
    local function actor()
        local character = player.Character
        local root = character and character:FindFirstChild("HumanoidRootPart")
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
        if not root or not humanoid or humanoid.Health <= 0 then return nil,nil end
        return root,humanoid
    end
    local function lockControls()
        if controlDepth > 0 then controlDepth = controlDepth+1 return end
        if not controls then
            local module = player:FindFirstChild("PlayerScripts") and player.PlayerScripts:FindFirstChild("PlayerModule")
            if module then
                local ok,result = pcall(require,module)
                if ok and type(result)=="table" and type(result.GetControls)=="function" then
                    local controlsOk,controller = pcall(result.GetControls,result)
                    if controlsOk then controls = controller end
                end
            end
        end
        previousEnabled = not controls or controls.controlsEnabled ~= false
        if controls and type(controls.Disable)=="function" then pcall(controls.Disable,controls) end
        controlDepth = 1
    end
    local function unlockControls(force)
        controlDepth = force and 0 or math.max(0,controlDepth-1)
        if controlDepth==0 and controls and previousEnabled and type(controls.Enable)=="function" then
            pcall(controls.Enable,controls)
        end
    end
    local function stop()
        if heldPrompt then pcall(heldPrompt.InputHoldEnd,heldPrompt) heldPrompt=nil end
        local root,humanoid = actor()
        if humanoid and root then humanoid:MoveTo(root.Position) end
        activeHumanoid = nil
        unlockControls(true)
    end
    local function waitFor(seconds,valid)
        local deadline = clock()+seconds
        while clock()<deadline do
            if not valid() then return false end
            services.RunService.Heartbeat:Wait()
        end
        return true
    end
    local function moveWaypoints(waypoints,valid,deadline)
        for _,point in ipairs(waypoints) do
            local root,humanoid = actor()
            if not root or not valid() or clock()>deadline then return false,"trajeto interrompido" end
            activeHumanoid = humanoid
            if point.Action==Enum.PathWaypointAction.Jump then humanoid.Jump=true end
            humanoid:MoveTo(point.Position)
            local previousDistance,lastImprovement = math.huge,clock()
            while Vector2.new(root.Position.X-point.Position.X,root.Position.Z-point.Position.Z).Magnitude>2.5
                or math.abs(root.Position.Y-point.Position.Y)>7 do
                if not valid() or humanoid.Health<=0 or not root.Parent or clock()>deadline then return false,"trajeto interrompido" end
                local distance=Vector2.new(root.Position.X-point.Position.X,root.Position.Z-point.Position.Z).Magnitude
                if distance<previousDistance-0.15 then previousDistance,lastImprovement=distance,clock() end
                if clock()-lastImprovement>3 then return false,"caminho bloqueado" end
                services.RunService.Heartbeat:Wait()
            end
        end
        return true
    end
    local function goTo(destination,valid,rootTarget)
        local root,humanoid=actor()
        if not root then return false,"personagem indisponivel" end
        if not valid() then return false,"cancelado" end
        if config.movement=="Teleport" then
            local character=player.Character
            local height=rootTarget and 0 or math.max(2,humanoid.HipHeight+root.Size.Y/2)
            local target=CFrame.new(destination+Vector3.new(0,height,0))*root.CFrame.Rotation
            local ok,message=pcall(function()
                local pivotOffset=character:GetPivot():ToObjectSpace(root.CFrame)
                character:PivotTo(target*pivotOffset:Inverse())
                root.AssemblyLinearVelocity=Vector3.zero root.AssemblyAngularVelocity=Vector3.zero
            end)
            if not ok then return false,tostring(message) end
            if not waitFor(config.teleportSettle,valid) then return false,"cancelado" end
            local current=actor()
            if not current or (current.Position-target.Position).Magnitude>8 then return false,"O servidor reposicionou o personagem apos o teleporte." end
            return true
        end
        lockControls()
        local success,message
        local ok,reason=pcall(function()
            local path=services.PathfindingService:CreatePath({AgentRadius=1.6,AgentHeight=5,
                AgentCanJump=true,AgentCanClimb=true,WaypointSpacing=3})
            path:ComputeAsync(root.Position,destination)
            if not valid() then success,message=false,"cancelado" return end
            if path.Status~=Enum.PathStatus.Success then success,message=false,"sem caminho navegavel" return end
            success,message=moveWaypoints(path:GetWaypoints(),valid,clock()+config.travelTimeout)
        end)
        if not ok then success,message=false,tostring(reason) end
        unlockControls()
        if not success then
            local currentRoot,currentHumanoid=actor()
            if currentRoot and currentHumanoid then currentHumanoid:MoveTo(currentRoot.Position) end
        end
        activeHumanoid=nil
        return success,message
    end
    local function promptPosition(prompt)
        local parent=prompt and prompt.Parent
        if not parent then return nil end
        if parent:IsA("Attachment") then return parent.WorldPosition end
        if parent:IsA("BasePart") then return parent.Position end
        if parent:IsA("Model") then return parent:GetPivot().Position end
        return nil
    end
    local function approach(prompt,valid)
        local position=promptPosition(prompt)
        local root=actor()
        if not position or not root then return false,"prompt indisponivel" end
        local range=math.max(1,prompt.MaxActivationDistance-1)
        if (root.Position-position).Magnitude<=range then return true end
        local delta=Vector3.new(root.Position.X-position.X,0,root.Position.Z-position.Z)
        local toward=delta.Magnitude>0.01 and delta.Unit or Vector3.new(0,0,1)
        local perpendicular=Vector3.new(-toward.Z,0,toward.X)
        local directions={toward,perpendicular,-perpendicular,-toward}
        if config.movement=="Teleport" then
            local near=position+toward*math.min(3,range*0.45)+Vector3.new(0,1.4,0)
            return goTo(near,valid,true)
        end
        local params=RaycastParams.new()
        params.FilterType=Enum.RaycastFilterType.Exclude
        params.FilterDescendantsInstances={player.Character,prompt:FindFirstAncestorOfClass("Model") or prompt.Parent}
        for _,direction in ipairs(directions) do
            if not valid() then return false,"cancelado" end
            local near=position+direction*math.min(4,range*0.6)
            local ground=workspace:Raycast(near+Vector3.new(0,8,0),Vector3.new(0,-80,0),params)
            if ground then
                local success=goTo(ground.Position,valid)
                local currentRoot=actor()
                if success and currentRoot and (currentRoot.Position-position).Magnitude<=range then return true end
            end
        end
        return false,"nao foi possivel chegar ao prompt"
    end
    local function triggerRaw(prompt,valid,options)
        options=options or {}
        if not prompt or not prompt.Parent then return false,"prompt removido" end
        local reached,message=approach(prompt,valid)
        if not reached then return false,message end
        if not valid() then return false,"cancelado" end
        local position=promptPosition(prompt)
        local root=actor()
        if not root or not position or (root.Position-position).Magnitude>prompt.MaxActivationDistance then return false,"fora do alcance" end
        promptStats.attempts+=1 promptStats.lastPath=prompt:GetFullName()
        local holdFirst=options.method~="native" and (prompt.HoldDuration>0 or options.method=="hold")
        if nativePrompt and not holdFirst then
            local fired,why=pcall(nativePrompt,prompt)
            if fired then
                promptStats.native+=1 promptStats.lastMethod="native"
                return true
            end
            log("Acionamento nativo do prompt falhou: "..tostring(why),"error")
        end
        local begun,errorMessage=pcall(prompt.InputHoldBegin,prompt)
        if not begun then
            if nativePrompt then
                local fired,why=pcall(nativePrompt,prompt)
                if fired then promptStats.native+=1 promptStats.lastMethod="native fallback" return true end
                return false,tostring(why)
            end
            return false,tostring(errorMessage)
        end
        heldPrompt=prompt promptStats.held+=1 promptStats.lastMethod="continuous hold"
        local completed,finished=pcall(waitFor,prompt.HoldDuration>0 and prompt.HoldDuration+0.20 or 0.08,valid)
        pcall(prompt.InputHoldEnd,prompt)
        if heldPrompt==prompt then heldPrompt=nil end
        if not completed then return false,tostring(finished) end
        if not finished then return false,"interacao interrompida" end
        return true
    end
    local function trigger(prompt,valid,options)
        if not prompt or not prompt.Parent then return false,"prompt removido" end
        local beforeEnabled,beforeSight=prompt.Enabled,prompt.RequiresLineOfSight
        local ok,success,message=pcall(function()
            prompt.Enabled=true prompt.RequiresLineOfSight=false
            return triggerRaw(prompt,valid,options)
        end)
        if prompt.Parent then
            pcall(function() prompt.RequiresLineOfSight=beforeSight end)
            if not beforeEnabled then pcall(function() prompt.Enabled=false end) end
        end
        if not ok then return false,tostring(success) end
        return success,message
    end
    return {actor=actor,goTo=goTo,approach=approach,trigger=trigger,promptPosition=promptPosition,stop=stop,waitFor=waitFor,stats=promptStats}
end

return Navigation

end)()

local Resolver = (function()
-- Luau · potato_resolver.luau · bounded contracts and spatial pile index · Roblox / Delta · Luau 0.745
local Resolver={}
function Resolver.create(modules,services,log,Observer,Spatial,runtime)
    local valueType=runtime and runtime.typeOf or typeof
    local pile=modules["Shared.PotatoPileShared"] or {}
    local packets=modules["Modules.Resources.Packets"] or {}
    local world=services.Workspace
    local names={"GetSlotPosition","GetRotation","GetKind","GetPotatoSlot","GetPotatoInSlot","IsPumpkin","IsDiamond"}
    local originals,samples,bindings={},{},{}
    local direct=setmetatable({},{__mode="k"})
    local theoretical=nil
    local worldPositions={}
    local directPositions=setmetatable({},{__mode="k"})
    local indexedFolder=nil
    local lastSync=-math.huge
    local preparing=false
    local nextPrepare=0
    local closed=false
    local observer=nil
    local stats={slot="pending spatial index",kind="pending captured arguments",generation=0,
        mapped=0,parts=0,syncRequests=0,contracts={},scores={},upvalues=false}
    for _,name in ipairs(names) do originals[name]=pile[name] samples[name]={} end
    local function validId(value)
        return type(value)=="number" and value%1==0 and value>=1 and value<=(pile.SLOT_COUNT or 30009)
    end
    local function point(value,second,third)
        local kind=valueType(value)
        if kind=="Vector3" then return value end
        if kind=="CFrame" then return value.Position end
        if type(value)=="table" and valueType(value.Position)=="Vector3" then return value.Position end
        if type(value)=="number" and type(second)=="number" and type(third)=="number" then
            return Vector3.new(value,second,third)
        end
        return nil
    end
    local function normalize(value)
        if type(value)=="table" then value=value.Name or value.Id end
        if type(value)=="number" then return ({"Normal","Golden","Diamond","Rainbow","Key","Charred"})[value] end
        if type(value)=="string" then
            for _,name in ipairs({"Normal","Golden","Diamond","Rainbow","Key","Charred"}) do
                if string.lower(value)==string.lower(name) then return name end
            end
        end
        return nil
    end
    local function summary(value)
        local kind=valueType(value)
        if type(value)=="number" or type(value)=="string" then return value end
        local p=point(value)
        if p then return {type=kind,x=p.X,y=p.Y,z=p.Z} end
        return {type=kind}
    end
    local function infer(name)
        local list=samples[name]
        if #list<3 then return nil end
        local best,bestCount=nil,0
        for argument=1,list[1].args.n do
            local distinct={}
            local valid=true
            for _,sample in ipairs(list) do
                local value=sample.args[argument]
                if not validId(value) then valid=false break end
                distinct[value]=true
            end
            local count=0 for _ in pairs(distinct) do count+=1 end
            if valid and count>bestCount then best,bestCount=argument,count end
        end
        if not best or bestCount<2 then return nil end
        local template=table.clone(list[#list].args)
        local original=originals[name]
        bindings[name]=function(index)
            local args=table.clone(template) args[best]=index
            return pcall(original,table.unpack(args,1,args.n))
        end
        local shape={index_argument=best,samples=#list,arguments={}}
        for i=1,template.n do shape.arguments[i]=summary(template[i]) end
        shape.result=summary(list[#list].result[1])
        stats.contracts[name]=shape
        if name=="GetKind" then stats.kind="captured changing slot argument" end
        return best
    end
    observer=Observer.create(pile,names,function(name,args,result)
        if closed then return true end
        if name=="GetPotatoSlot" and validId(result[1]) then
            local folder=world:FindFirstChild("PotatoPile")
            for i=1,args.n do
                local value=args[i]
                if valueType(value)=="Instance" and value:IsA("BasePart") and folder and value:IsDescendantOf(folder) then
                    direct[value]=result[1]
                end
            end
        end
        local list=samples[name]
        if #list<16 then table.insert(list,{args=table.clone(args),result=table.clone(result)}) end
        return infer(name)~=nil or #list>=16
    end)
    stats.observer=observer.stats

    local fire=modules["Shared.FireShared"] or {}
    local originalHeat=fire.GetHeat
    local heatInput=nil
    local heatWrapper=nil
    if type(originalHeat)=="function" then
        heatWrapper=function(input)
            heatInput=input
            return originalHeat(input)
        end
        pcall(function() fire.GetHeat=heatWrapper end)
    end
    local nextHeatScan=0
    local heatObjects={}
    local function heat()
        if heatInput~=nil and type(originalHeat)=="function" then
            local ok,value=pcall(originalHeat,heatInput)
            if ok and type(value)=="number" and value>=0 and value<=1 then
                local flowing=false
                if type(fire.IsFlowing)=="function" then local good,flag=pcall(fire.IsFlowing,heatInput) flowing=good and flag==true end
                return value*100,flowing,"captured native FireShared input"
            end
        end
        if os.clock()>=nextHeatScan then
            nextHeatScan=os.clock()+5 heatObjects={}
            local map=world:FindFirstChild("Map")
            for _,name in ipairs({"Fire","Water"}) do
                local area=map and map:FindFirstChild(name)
                if area then
                    table.insert(heatObjects,area)
                    for _,object in ipairs(area:GetDescendants()) do table.insert(heatObjects,object) end
                end
            end
        end
        local flowing=false
        for _,object in ipairs(heatObjects) do
            if object.Parent then
                flowing=flowing or object:GetAttribute("Flowing")==true
                local value=object:GetAttribute("Heat")
                if type(value)=="number" and value>=0 and value<=1 then
                    return value*100,flowing,"replicated Heat attribute"
                end
            end
        end
        return nil,flowing,"alarm only"
    end
    local function requestSync()
        if stats.syncRequests>=2 or os.clock()-lastSync<10 then return false end
        local packet=packets.PotatoPileRequest
        if not packet or type(packet.Fire)~="function" then return false end
        lastSync=os.clock() stats.syncRequests+=1
        return pcall(packet.Fire,packet)
    end
    local function transforms()
        if runtime and runtime.transforms then return runtime.transforms end
        local result={{name="world",apply=function(p) return p end}}
        local map=world:FindFirstChild("Map")
        local marker=map and map:FindFirstChild("PotatoPile")
        if marker and marker:IsA("BasePart") then
            local frame=marker.CFrame
            table.insert(result,{name="marker-local",apply=function(p) return frame:PointToWorldSpace(p) end})
            if type(pile.GetPileCFrame)=="function" then
                local ok,frame2=pcall(pile.GetPileCFrame,marker)
                if ok and valueType(frame2)=="CFrame" and frame2~=frame then
                    table.insert(result,{name="pile-local",apply=function(p) return frame2:PointToWorldSpace(p) end})
                end
            end
        end
        return result
    end
    local function prepare(valid)
        local folder=world:FindFirstChild("PotatoPile")
        if indexedFolder==folder and theoretical then return true end
        if preparing or os.clock()<nextPrepare then return false,"Preparando os indices da pilha." end
        if not bindings.GetSlotPosition then
            requestSync() nextPrepare=os.clock()+1
            return false,"Aguardando os argumentos de posicao usados pelo jogo."
        end
        if not folder then return false,"Pilha indisponivel." end
        preparing=true
        local ok,message=pcall(function()
            local parts={}
            local physical=Spatial.new(0.09)
            for _,part in ipairs(folder:GetChildren()) do
                if part:IsA("BasePart") then table.insert(parts,part) physical.add(part.Position,part) end
            end
            stats.parts=#parts
            local frames=transforms()
            local maps,scores,records={},{},{}
            for i=1,#frames do maps[i]={} scores[i]=0 end
            local deadline=os.clock()+0.003
            for index=1,(pile.SLOT_COUNT or 30009) do
                if not valid() or closed then error("cancelado") end
                local readOk,value,b,c=bindings.GetSlotPosition(index)
                local p=readOk and point(value,b,c)
                if p then
                    records[index]=p
                    for i,frame in ipairs(frames) do
                        local transformed=frame.apply(p)
                        local part=physical.find(transformed)
                        if part and maps[i][part]==nil then maps[i][part]=index scores[i]+=1 end
                    end
                end
                if os.clock()>deadline then services.RunService.Heartbeat:Wait() deadline=os.clock()+0.003 end
            end
            local best,bestScore=1,0
            for i,score in ipairs(scores) do
                stats.scores[frames[i].name]=score
                if score>bestScore then best,bestScore=i,score end
            end
            if #parts==0 or bestScore<math.max(1,math.ceil(#parts*0.70)) then
                stats.slot="geometry mismatch"
                stats.position_samples={}
                for index,p in pairs(records) do
                    table.insert(stats.position_samples,{slot=index,x=p.X,y=p.Y,z=p.Z})
                    if #stats.position_samples==4 then break end
                end
                error("Posicoes nao coincidem com a pilha: "..bestScore.."/"..#parts)
            end
            local selected=frames[best]
            theoretical=Spatial.new(0.09)
            worldPositions={}
            for index,p in pairs(records) do
                local position=selected.apply(p)
                theoretical.add(position,index) worldPositions[index]=position
            end
            for part,index in pairs(maps[best]) do direct[part]=index directPositions[part]=part.Position end
            indexedFolder=folder stats.mapped=bestScore stats.slot="spatial / "..selected.name stats.generation+=1
            log("Indices confirmados por geometria: "..bestScore.."/"..#parts..".")
        end)
        preparing=false nextPrepare=os.clock()+(ok and 0 or 5)
        return ok,ok and nil or tostring(message)
    end
    local function physicalSlot(part)
        if not part or not part.Parent then return nil end
        local previous=directPositions[part]
        local position=part.Position
        if direct[part] and previous and previous.X==position.X and previous.Y==position.Y and previous.Z==position.Z then return direct[part] end
        if theoretical then
            local index=theoretical.find(position)
            if index then direct[part]=index directPositions[part]=position return index end
        end
        return nil
    end
    local function potatoInSlot(index)
        if not bindings.GetPotatoInSlot then return nil end
        local ok,id=bindings.GetPotatoInSlot(index)
        if not ok or not validId(id) then return nil end
        return id
    end
    local preferred="geometry"
    local votes={geometry=0,permuted=0}
    local function slot(part)
        local index=physicalSlot(part)
        if preferred=="permuted" then return index and potatoInSlot(index) or nil end
        return index
    end
    local function alternate(part,id)
        local index=physicalSlot(part)
        local other=index and (id==index and potatoInSlot(index) or index)
        return other~=id and other or nil
    end
    local function confirm(part,id,originalIndex)
        local index=originalIndex or physicalSlot(part)
        if not index then return end
        local mode=id==index and "geometry" or "permuted"
        votes[mode]+=1
        if votes[mode]>=3 and votes[mode]>votes[preferred] then preferred=mode end
        stats.identity={mode=preferred,confirmed_geometry=votes.geometry,confirmed_permuted=votes.permuted}
    end
    local function live(id) return validId(id) end
    local function kind(part,index)
        index=index or slot(part)
        if not index then return nil,part and part.Name=="Pumpkin" or false,false end
        local name,pumpkin,gem=nil,part and part.Name=="Pumpkin" or false,false
        if bindings.GetKind then local ok,value=bindings.GetKind(index) if ok then name=normalize(value) end end
        if bindings.IsPumpkin then local ok,value=bindings.IsPumpkin(index) pumpkin=pumpkin or ok and value==true end
        if bindings.IsDiamond then local ok,value=bindings.IsDiamond(index) gem=ok and value==true end
        return name,pumpkin,gem
    end
    local function specialTargets(valid)
        local result={}
        if not theoretical or not bindings.GetPotatoSlot or not bindings.GetPotatoInSlot then return result end
        local deadline=os.clock()+0.002
        for index=1,(pile.SLOT_COUNT or 30009) do
            if closed or not valid() then return {} end
            local id=potatoInSlot(index)
            if id then
                local name,pumpkin,gem=kind(nil,id)
                if (pumpkin or gem) and worldPositions[index] then
                    table.insert(result,{slot=id,position=worldPositions[index],kind=name,pumpkin=pumpkin,gem=gem,logical=true})
                end
            end
            if os.clock()>deadline then services.RunService.Heartbeat:Wait() deadline=os.clock()+0.002 end
        end
        return result
    end
    local function close()
        closed=true observer.close()
        if heatWrapper then pcall(function() if fire.GetHeat==heatWrapper then fire.GetHeat=originalHeat end end) end
    end
    return {slot=slot,alternate=alternate,confirm=confirm,physicalSlot=physicalSlot,live=live,specialTargets=specialTargets,kind=kind,heat=heat,prepare=prepare,requestSync=requestSync,stats=stats,close=close,
        ready=function() return bindings.GetKind~=nil and bindings.GetSlotPosition~=nil and bindings.GetPotatoInSlot~=nil end,
        refresh=function() nextPrepare=0 end}
end
return Resolver

end)()

local Bridge = (function()
-- Luau · potato_bridge.luau · existing game UI input and cash checks · Roblox / Delta · Luau 0.745
local Bridge={}

function Bridge.create(services,Core)
    local gui=services.Players.LocalPlayer:WaitForChild("PlayerGui")
    local signalFire=type(firesignal)=="function" and firesignal or nil
    local connectionsGet=type(getconnections)=="function" and getconnections or nil
    local function visible(object)
        local current=object
        while current and current~=gui do
            if current:IsA("GuiObject") and not current.Visible then return false end
            if current:IsA("ScreenGui") and not current.Enabled then return false end
            current=current.Parent
        end
        return current==gui
    end
    local function texts(object)
        local result={}
        if object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then table.insert(result,object.Text) end
        for _,item in ipairs(object:GetDescendants()) do
            if item:IsA("TextLabel") or item:IsA("TextButton") then table.insert(result,item.Text) end
        end
        return table.concat(result," "):gsub("<.->","")
    end
    local function cash(text)
        if type(text)~="string" then return nil end
        local upper=string.upper(text)
        if upper:find("R$",1,true) or upper:find("ROBUX",1,true) then return nil end
        local raw=text:match("%$%s*[%d][%d%.,]*[KkMmBbTt]?")
        return raw and Core.parseAmount(raw) or nil
    end
    local function activate(button,headless)
        if not button or not button:IsA("GuiButton") or not headless and (not visible(button) or not button.Active) then
            return false,"botao indisponivel"
        end
        if not signalFire then return false,"firesignal nao disponibilizado pelo executor" end
        local signal=button.Activated
        if connectionsGet then
            local ok,items=pcall(connectionsGet,signal)
            if ok and #items==0 then
                local clickOk,clicks=pcall(connectionsGet,button.MouseButton1Click)
                if clickOk and #clicks>0 then signal=button.MouseButton1Click end
            end
        end
        local ok,why=pcall(signalFire,signal)
        return ok,ok and nil or tostring(why)
    end
    local function buyButton(expected)
        local screen=gui:FindFirstChild("StoreView")
        if not screen then return nil,"janela StoreView ausente" end
        local matches={}
        for _,item in ipairs(screen:GetDescendants()) do
            if item:IsA("GuiButton") and visible(item) and item.Active then
                local own=texts(item)
                local upper=string.upper(own.." "..item.Name)
                local rejected=upper:find("SOLD",1,true) or upper:find("OWNED",1,true) or upper:find("LOCKED",1,true)
                    or upper:find("ROBUX",1,true) or upper:find("R$",1,true) or upper:find("PERMANENT",1,true)
                if not rejected and (upper:find("BUY",1,true) or upper:find("PURCHASE",1,true) or upper:find("COMPRAR",1,true)) then
                    local context=own
                    local price=cash(context)
                    if not price and item.Parent then context=texts(item.Parent) price=cash(context) end
                    if not price and item.Parent then
                        for _,label in ipairs(item.Parent:GetChildren()) do
                            if label:IsA("TextLabel") then
                                local value=cash(label.Text)
                                if value and math.abs(value-expected)<0.005 then price=value break end
                            end
                        end
                    end
                    if price and math.abs(price-expected)<0.005 then table.insert(matches,item) end
                end
            end
        end
        if #matches~=1 then return nil,"compra sem botao unico com o preco em dinheiro esperado" end
        return matches[1]
    end
    local function diagnostic()
        local result={}
        for _,name in ipairs({"StoreView","ToolUpgrades"}) do
            local screen=gui:FindFirstChild(name)
            if screen then
                for _,item in ipairs(screen:GetDescendants()) do
                    if item:IsA("GuiButton") and visible(item) and #result<40 then
                        table.insert(result,{path=item:GetFullName(),text=texts(item),active=item.Active})
                    end
                end
            end
        end
        return result
    end
    return {available=signalFire~=nil,visible=visible,texts=texts,cash=cash,activate=activate,
        buyButton=buyButton,diagnostic=diagnostic}
end

return Bridge

end)()

local Adapter = (function()
-- Luau · potato_adapter.luau · gameplay coordination for PlaceId 116701845804918 · Roblox / Delta · Luau 0.745
local Adapter={}

function Adapter.create(services,modules,Core,config,nav,resolver,bridge,log,CutEngine,Chapter,Protocol,TopK)
    local player=services.Players.LocalPlayer
    local playerGui=player:WaitForChild("PlayerGui")
    local world=services.Workspace
    local packets=modules["Modules.Resources.Packets"] or {}
    local protocol=Protocol.create(packets,modules["ModifiedPackages.Packet._Types"])
    local afterSale,postSaleWeaponBought=false,false
    local resumePosition,lastTable=nil,nil
    local sellRetryAt,dynamiteAt,dynamiteSerial=0,0,0
    local offerRetry={}
    local deniedOffers={}
    local tableRetry=setmetatable({},{__mode="k"})
    local progressGoal=nil
    local snapshotAt=0
    local peeling=modules["Controllers.PeelingController"] or {}
    local cutting=modules["Controllers.CuttingController"] or {}
    local pileController=modules["Controllers.PotatoPileController"] or {}
    local storeView=modules["Controllers.StoreViewController"] or {}
    local upgradeController=modules["Controllers.ToolUpgradeController"] or {}
    local stateShared=modules["Shared.PlayerStateShared"] or {}
    local cutShared=modules["Shared.CutToolShared"] or {}
    local carryShared=modules["Shared.CarryUpgradeShared"] or {}
    local connections={}
    local openedUpgrade=false
    local restoreHeadless=nil
    local rejected=setmetatable({},{__mode="k"})
    local variantCache=setmetatable({},{__mode="k"})
    local variantEpoch=0
    local candidate,findAt=nil,0
    local queue,queueIndex,queueExpires={},1,0
    local searchEmpty=false
    local cooling=false
    local coolingRetryAt,buyRetryAt,nextPickAt=0,0,0
    local warmupAt=0
    local adaptivePickDelay=0.04
    local cachedPurchase,purchaseCacheAt,purchaseCash=nil,0,nil
    local exactBagBound=false
    local pumpkinSerial,gemSerial=0,0
    local counts={collected=0,pumpkins=0,gems=0,sold=0,sales=0,throws=0,delivered=0,cuts=0,cooled=0,purchases=0}
    local cutEngine=nil
    local last={}
    local retryAt={}
    local deliveryPending=nil
    local cutGuiSnapshot=nil
    local cutDriving,closed=false,false
    local equippedTool=nil
    local specialCache,specialAt={},0
    local logicalAttemptAt=0
    local rejectedIds={}
    local rateAt,stockBefore,cutUnits,cutRate=os.clock(),nil,0,0
    local function itemPosition(item) return item.part and item.part.Position or item.position end
    local function itemAlive(item)
        return item and (item.part and item.part.Parent~=nil or item.logical and resolver.live(item.slot))
    end
    local function get(root,path)
        for _,name in ipairs(path) do root=root and root:FindFirstChild(name) end
        return root
    end
    local function safeCall(module,name,...)
        if type(module[name])~="function" then return false,nil end
        return pcall(module[name],...)
    end
    local function state()
        local ok,value=safeCall(stateShared,"TryGetPlayerState",player)
        if ok and type(value)=="table" and (value.Cash~=nil or value.CarryLevel~=nil) then return value end
        ok,value=safeCall(stateShared,"TryGetPlayerState",player.UserId)
        if ok and type(value)=="table" and (value.Cash~=nil or value.CarryLevel~=nil) then return value end
        return nil
    end
    local function cash()
        local data=state()
        if data and type(data.Cash)=="number" and data.Cash==data.Cash then return data.Cash end
        local label=get(playerGui,{"Cash","Counter","Value"})
        return label and Core.parseAmount(label.Text) or nil
    end
    local function inventory()
        local label=get(playerGui,{"Bag","Counter","Value"})
        local count,capacity=Core.parseCapacity(label and label.Text)
        local data=state()
        if data then
            if type(data.Potatoes)=="number" and data.Potatoes>=0 and data.Potatoes%1==0 then
                local abbreviated=label and string.find(string.upper(label.Text),"[KMBT]")~=nil
                if not abbreviated and count~=nil then exactBagBound=count>0 and count==data.Potatoes end
                if abbreviated and exactBagBound then count=data.Potatoes end
            end
            local ok,infinite=safeCall(carryShared,"HasInfiniteStorage",data)
            if ok and infinite==true then capacity=math.huge end
            if not capacity and type(data.CarryLevel)=="number" then
                local level=carryShared.Levels and carryShared.Levels[data.CarryLevel]
                if type(level)=="table" and type(level.Capacity)=="number" then capacity=level.Capacity end
            end
        end
        if config.infiniteBag then capacity=math.huge end
        return count,capacity
    end
    local function alarm()
        local quest=playerGui:FindFirstChild("QuestCard")
        local label=quest and get(quest,{"PileHolder","Heat","Label"})
        if not label then return nil end
        local text=string.upper(label.Text)
        return text:find("CHARRING",1,true)~=nil or text:find("COOL IT",1,true)~=nil
            or text:find("BURNING",1,true)~=nil
    end
    local function isCutting()
        if type(peeling.IsPeeling)=="boolean" then return peeling.IsPeeling end
        local ok,value=safeCall(cutting,"GetPotato")
        if ok and value~=nil and value~=false then return true end
        local screen=playerGui:FindFirstChild("Peeling")
        local cancel=screen and screen:FindFirstChild("Cancel",true)
        return cancel~=nil and bridge.visible(cancel) and cancel.AbsoluteSize.X>0
    end
    cutEngine=CutEngine.create(config,{
        clock=os.clock,
        allowed=function() return not closed and cutDriving and Core.effective(config,"autoCut") end,
        schedule=function(delay,callback) task.delay(delay,callback) end,
        finish=function()
            if not isCutting() then return false,"A mesa nao esta ativa." end
            if not packets.PeelingFinished or type(packets.PeelingFinished.Fire)~="function" then return false,"Conclusao de corte indisponivel." end
            return pcall(packets.PeelingFinished.Fire,packets.PeelingFinished)
        end,
        native=function(enabled)
            local autoOk=safeCall(cutting,"SetAuto",enabled)
            local heldOk=safeCall(cutting,"SetHeld",enabled)
            if enabled and not autoOk and not heldOk then error("Controlador de movimento de corte indisponivel.") end
        end,
    })
    local function release()
        cutDriving=false
        if cutEngine then cutEngine.pause() end
        safeCall(cutting,"SetHeld",false)
        safeCall(cutting,"SetAuto",false)
        safeCall(pileController,"SetUseHeld",false)
        if protocol.matches("ToolUsing",{"Boolean"}) then protocol.fire("ToolUsing",false) end
    end
    local function cancelCut()
        release()
        if isCutting() then
            if type(packets.PeelingCancel)=="table" and type(packets.PeelingCancel.Fire)=="function" then
                pcall(packets.PeelingCancel.Fire,packets.PeelingCancel)
            end
            safeCall(peeling,"StopPeeling")
        end
        if cutGuiSnapshot and peeling.IsPeeling~=true then
            for object,value in pairs(cutGuiSnapshot) do
                if object.Parent then pcall(function() if object:IsA("ScreenGui") then object.Enabled=value else object.Visible=value end end) end
            end
            cutGuiSnapshot=nil
        end
    end
    local function waitUntil(predicate,timeout,valid)
        local deadline=os.clock()+timeout
        repeat
            if not valid() then return false,"cancelado" end
            if predicate() then return true end
            services.RunService.Heartbeat:Wait()
        until os.clock()>=deadline
        return false,"o jogo nao confirmou a acao no tempo configurado"
    end
    local function equip(tool)
        if tool==equippedTool or not protocol.matches("ToolEquip",{"String"}) then return end
        local ok=protocol.fire("ToolEquip",tool)
        if ok then equippedTool=tool end
    end
    local function interactionTool()
        cancelCut() equip("Hand")
    end
    local function collectTool()
        local data=state()
        local chosen=config.collectTool
        if chosen=="Auto" then chosen=data and Chapter.owns(data,"PotatoSucker") and "PotatoSucker" or data and Chapter.owns(data,"Shovel") and "Shovel" or "Hand" end
        if chosen~="Hand" and not (data and Chapter.owns(data,chosen)) then chosen="Hand" end
        equip(chosen)
    end
    local function tables()
        local result={}
        local machines=get(world,{"Map","PeelingMachines"})
        for i=1,4 do
            local model=machines and machines:FindFirstChild("PeelingTable"..i)
            if model and (config.tableChoice=="Nearest" or config.tableChoice==model.Name) then
                local prompt=get(model,{"TabelTop","PeelPrompt","Peel"})
                if prompt and prompt:IsA("ProximityPrompt") then table.insert(result,prompt) end
            end
        end
        local root=nav.actor()
        if root then table.sort(result,function(a,b)
            local pa,pb=nav.promptPosition(a),nav.promptPosition(b)
            return (pa and (pa-root.Position).Magnitude or math.huge)<(pb and (pb-root.Position).Magnitude or math.huge)
        end) end
        return result
    end
    local function crateCount()
        local area=get(world,{"Map","PeelingMachines","PotatoCrate","PotatoArea"})
        return area and tonumber(area:GetAttribute("PotatoCount")) or 0
    end
    local function selectedTable(allowStock)
        local options=tables()
        for _,prompt in ipairs(options) do if prompt.Enabled and os.clock()>=(tableRetry[prompt] or 0) then return prompt end end
        if allowStock and crateCount()>0 then
            for _,prompt in ipairs(options) do if os.clock()>=(tableRetry[prompt] or 0) then return prompt end end
        end
        return nil
    end
    local function promptFor(category,id)
        local model=get(world,{"Map","StoreItems",category,id})
        return model and get(model,{"Price","PromptAttachment","ProximityPrompt"})
    end
    local function shopItem(category,id,group,rank)
        if os.clock()<(offerRetry[id] or 0) then return nil end
        local prompt=promptFor(category,id)
        if not prompt or not prompt.Enabled or string.upper(prompt.ActionText)~="BUY" then return nil end
        local price=bridge.cash(prompt.ObjectText)
        if not price then return nil end
        return {id=id,category=category,group=group,rank=rank,prompt=prompt,price=price,name=id}
    end
    local function owns(list,id)
        if type(list)~="table" then return false end
        if list[id]==true then return true end
        for key,value in pairs(list) do if value==id or key==id and value~=false and value~=nil then return true end end
        return false
    end
    local function bestCutRank(data)
        local rank=1
        local current=player:GetAttribute("CutToolId")
        local ok,best=safeCall(cutShared,"GetBestTool",data)
        if ok then current=type(best)=="table" and best.Id or best end
        for index,tool in ipairs(cutShared.Tools or {}) do
            local ownOk,owned=safeCall(cutShared,"OwnsTool",data,tool.Id)
            if tool.Id==current or owns(data.CutTools,tool.Id) or ownOk and owned==true then rank=math.max(rank,index) end
        end
        return rank
    end
    local function upgradePrice(data,tool,id,level,button)
        local shared=modules["Shared.ToolUpgradeShared"] or {}
        if type(shared.GetUpgradeCost)=="function" then
            local ok,value=pcall(shared.GetUpgradeCost,data,tool,id)
            if ok and type(value)=="number" and value>0 then return value end
        end
        if button and button.Parent then return bridge.cash(bridge.texts(button)) end
        return nil
    end
    local function upgradeOffers(data,balance,includeUnaffordable)
        local result={}
        local shared=modules["Shared.ToolUpgradeShared"] or {}
        for _,tool in ipairs({"Shovel","Dynamite","PotatoSucker","Hand","AutoPeeler","HandPeeler","Drone","Body"}) do
            for _,id in ipairs(Chapter.allowed[tool] or {}) do
                if Chapter.canUpgrade(data,tool,id,config) then
                    local level=Chapter.level(shared,data,tool,id)
                    local ok,definition=safeCall(shared,"GetUpgrade",tool,id)
                    local maxLevel=nil
                    if ok and type(definition)=="table" then
                        local good,value=safeCall(shared,"GetMaxLevel",definition)
                        if good and type(value)=="number" then maxLevel=value end
                    end
                    local buttonOk,button=safeCall(upgradeController,"GetUpgradeButton",tool,id)
                    if not buttonOk or typeof(button)~="Instance" or not button:IsA("GuiButton") then button=nil end
                    local price=upgradePrice(data,tool,id,level,button)
                    local maxed=button and button:FindFirstChild("Maxed")
                    if level~=nil and not (maxLevel and level>=maxLevel) and not (maxed and maxed.Enabled)
                        and (button or protocol.matches("ToolUpgradePurchase",{"String","String"})) then
                        local key=tool.."/"..id
                        if os.clock()>=(offerRetry[key] or 0) and type(price)=="number" and (includeUnaffordable or Core.purchaseReady(config,balance,price,level,deniedOffers[key])) then
                            table.insert(result,{group="upgrade",name=key,tool=tool,upgrade=id,button=button,
                                price=price,level=level,rank=tool=="Dynamite" and -100+Chapter.rank(tool,id) or Chapter.rank(tool,id)})
                        end
                    end
                end
            end
        end
        table.sort(result,function(a,b) return a.rank<b.rank end)
        return result
    end
    local function nextPurchase()
        local balance=cash()
        local data=state()
        if not balance or not data then return nil end
        if afterSale and postSaleWeaponBought then return nil end
        local options={}
        if Chapter.owns(data,"Dynamite") and Core.effective(config,"autoBuyUpgrades") then
            for _,offer in ipairs(upgradeOffers(data,balance,true)) do
                if offer.tool=="Dynamite" then
                    progressGoal=offer
                    local blocked=deniedOffers[offer.name]
                    if blocked and balance<blocked.cash and offer.level==blocked.level then progressGoal.price=math.max(offer.price,blocked.cash) return nil end
                    if Core.affordable(config,balance,offer.price,"Cash") then return offer end
                    return nil
                end
            end
        end
        local toolEnabled=Core.effective(config,"autoBuyTools") or afterSale and config.buyAfterSell
        local wanted=nil
        if toolEnabled then
            local best=bestCutRank(data)
            local tools=cutShared.Tools or {}
            for index=#tools,best+1,-1 do
                local offer=shopItem("Knives",tools[index].Id,"cut",1)
                if offer then
                    if Core.affordable(config,balance,offer.price,"Cash") then progressGoal=offer return offer end
                    wanted=offer
                end
            end
            if wanted and config.saveForNextTool then progressGoal=wanted return nil end
            if config.autoProgress or config.autoFarm then
                for _,id in ipairs({"Shovel","Dynamite","P0T4T0-3000"}) do
                    local ownedId=id=="P0T4T0-3000" and "PotatoSucker" or id
                    if not Chapter.owns(data,ownedId) then
                        local offer=shopItem("Tools",id,"collect",2)
                        if offer then
                            wanted=wanted or offer
                            if Core.affordable(config,balance,offer.price,"Cash") then progressGoal=offer return offer end
                        end
                    end
                end
            end
        end
        if Core.effective(config,"autoBuyUpgrades") then
            for _,offer in ipairs(upgradeOffers(data,balance)) do table.insert(options,offer) end
        end
        local _,capacity=inventory()
        if Core.effective(config,"autoBuyStorage") and capacity~=math.huge and type(data.CarryLevel)=="number" then
            local level=carryShared.Levels and carryShared.Levels[data.CarryLevel+1]
            if type(level)=="table" and level.ItemName then
                local offer=shopItem("Storage",level.ItemName,"storage",500)
                if offer and Core.affordable(config,balance,offer.price,"Cash") then table.insert(options,offer) end
            end
        end
        table.sort(options,function(a,b) return a.rank<b.rank end)
        progressGoal=wanted or options[1]
        return options[1]
    end

    local function stockCount()
        local area=get(world,{"Map","PeelingMachines","SellCrate","PotatoArea"})
        local value=area and area:GetAttribute("PotatoCount")
        return type(value)=="number" and value>=0 and value or nil
    end
    local function snapshot()
        if os.clock()<snapshotAt then return last end
        snapshotAt=os.clock()+0.12
        local count,capacity=inventory()
        local heat,flowing,heatSource=resolver.heat()
        cooling=Core.coolingLatch(cooling,heat,config,alarm())
        local balance=cash()
        if os.clock()>=purchaseCacheAt then
            cachedPurchase=nextPurchase() purchaseCacheAt=os.clock()+0.7 purchaseCash=balance
        end
        local purchase=os.clock()>=buyRetryAt and cachedPurchase or nil
        local crank=get(world,{"Map","PeelingMachines","PeelingMachine","CrankPromptPart","Crank"})
        last={cash=balance,carried=count,capacity=capacity,heat=heat,flowing=flowing,heatSource=heatSource,
            needCooling=cooling and not flowing,cutting=isCutting(),tableReady=selectedTable(true)~=nil,retryAt=retryAt,deliveryPending=deliveryPending~=nil,
            hasCandidate=itemAlive(candidate) or queueIndex<=#queue and os.clock()<queueExpires,
            noCandidate=searchEmpty,candidatePumpkin=candidate~=nil and candidate.pumpkin==true,
            purchase=purchase,canBuy=purchase~=nil,buyRetryAt=buyRetryAt,coolingRetryAt=coolingRetryAt}
        last.crankReady=crank~=nil and crank.Enabled
        last.stock=stockCount()
        if last.stock and stockBefore and last.stock>stockBefore then cutUnits+=last.stock-stockBefore end
        stockBefore=last.stock
        if os.clock()-rateAt>=1 then cutRate=cutUnits/(os.clock()-rateAt) cutUnits=0 rateAt=os.clock() end
        last.cutRate=cutRate
        last.sellReady=Chapter.sellReady(config,last.stock,{cutting=last.cutting,crate=crateCount(),carried=count,exhausted=searchEmpty})
        if progressGoal and progressGoal.price and balance and balance<progressGoal.price+config.reserveCash and last.stock and last.stock>=math.min(50,config.sellThreshold) then last.sellReady=true end
        last.sellRetryAt=sellRetryAt
        last.afterSale=afterSale
        last.returnToTable=afterSale and resumePosition~=nil
        last.postSaleWeaponBought=postSaleWeaponBought
        last.goal=progressGoal
        local data=state()
        last.drone=data and data.HasDrone==true
        last.dynamiteReady=data and Chapter.owns(data,"Dynamite") and os.clock()>=dynamiteAt
            and protocol.matches("DynamiteThrow",{"NumberU32"}) and itemAlive(candidate)

        last.canStageCut=get(world,{"Map","PeelingMachines","PotatoCrate","PotatoArea","PlacePrompt"})~=nil
        return last
    end
    local function popQueue(valid,onlyPumpkins)
        local folder=world:FindFirstChild("PotatoPile")
        if not folder then return nil end
        local params=RaycastParams.new()
        params.FilterType=Enum.RaycastFilterType.Include params.FilterDescendantsInstances={folder}
        local checked=0
        while queueIndex<=#queue and os.clock()<queueExpires do
            if not valid() then return nil end
            local item=queue[queueIndex] queueIndex+=1
            local rejectedAt=item.part and rejected[item.part] or rejectedIds[item.slot] or 0
            if itemAlive(item) and os.clock()>=rejectedAt and (not onlyPumpkins or item.pumpkin) then
                if item.part then item.slot=resolver.slot(item.part) end
                local hit=item.part and world:Raycast(item.part.Position+Vector3.new(0,25,0),Vector3.new(0,-25.5,0),params)
                if item.slot and (item.logical or hit and hit.Instance==item.part) then candidate=item searchEmpty=false snapshotAt=0 return item end
            end
            checked+=1
            if checked%24==0 then services.RunService.Heartbeat:Wait() end
        end
        return nil
    end

    local function findCandidate(valid)
        snapshotAt=0
        local prepared,prepareError=resolver.prepare(valid)
        if not prepared then return nil,prepareError end
        local held,capacity=inventory()
        local onlyPumpkins=held~=nil and capacity~=nil and held>=capacity
        if variantEpoch~=resolver.stats.generation then
            variantEpoch=resolver.stats.generation variantCache=setmetatable({},{__mode="k"})
            candidate=nil queue={} queueIndex=1 queueExpires=0
        end
        if itemAlive(candidate) and os.clock()>=(candidate.part and rejected[candidate.part] or rejectedIds[candidate.slot] or 0) and (not onlyPumpkins or candidate.pumpkin) then return candidate end
        if os.clock()<queueExpires then
            local nextItem=popQueue(valid,onlyPumpkins)
            if nextItem then return nextItem end
        end
        if os.clock()<findAt then return nil end
        candidate=nil findAt=os.clock()+0.4
        local root=nav.actor()
        if not root then return nil end
        local folder=world:FindFirstChild("PotatoPile")
        if not folder then return nil end
        local parts=folder:GetChildren()
        local selected=TopK.new(256)
        local unresolved=false
        local attempts=0
        if variantEpoch~=resolver.stats.generation then
            variantEpoch=resolver.stats.generation variantCache=setmetatable({},{__mode="k"})
        end
        for index,part in ipairs(parts) do
            if not valid() then return nil end
            if part:IsA("BasePart") and part.Transparency<0.99 and os.clock()>=(rejected[part] or 0) then
                local distance=(part.Position-root.Position).Magnitude
                if distance<=config.maxDistance then
                    local pumpkin=part.Name=="Pumpkin"
                    local kind,slot,isGem
                    local needKind=true
                    if needKind then
                        local cached=variantCache[part]
                        if cached and resolver.slot(part)==cached.slot then kind,pumpkin,slot,isGem=cached.kind,cached.pumpkin,cached.slot,cached.gem
                        else
                            if attempts<8 or resolver.stats.kind~="unresolved" then
                                attempts+=1
                                slot=resolver.slot(part)
                                if slot then kind,pumpkin,isGem=resolver.kind(part,slot) end
                            end
                            if kind then variantCache[part]={kind=kind,pumpkin=pumpkin,slot=slot,gem=isGem} end
                        end
                        if not kind and not pumpkin then unresolved=true end
                    end
                    if Core.acceptVariant(config,kind,pumpkin,isGem) and (not onlyPumpkins or pumpkin) then
                        local worth=({Normal=1,Golden=3,Diamond=6,Rainbow=10,Key=1,Charred=0.5})[kind] or 1
                        local score=config.selection=="Random" and math.random()*1000 or distance
                        if config.pumpkinPriority and pumpkin then score-=1000000000 end
                        if config.gemPriority and isGem and config.collectGems then score-=1000000 end
                        if config.priorityValue and config.rarity=="Any" then score-=worth*10000 end
                        selected.add({part=part,kind=kind,pumpkin=pumpkin,gem=isGem,slot=slot,distance=distance,worth=worth,score=score})
                    end
                end
            end
            if index%700==0 then services.RunService.Heartbeat:Wait() end
        end
        if config.logicalSpecials and (config.collectPumpkins or config.collectGems) then
            if os.clock()>=specialAt then specialCache=resolver.specialTargets(valid) specialAt=os.clock()+20 end
            local seen={}
            for _,entry in ipairs(selected.values()) do if entry.slot then seen[entry.slot]=true end end
            for _,item in ipairs(specialCache) do
                if not valid() then return nil end
                if os.clock()>=logicalAttemptAt and not seen[item.slot] and os.clock()>=(rejectedIds[item.slot] or 0) and resolver.live(item.slot)
                    and Core.acceptVariant(config,item.kind,item.pumpkin,item.gem) and (not onlyPumpkins or item.pumpkin) then
                    local distance=(item.position-root.Position).Magnitude
                    if distance<=config.maxDistance then
                        item.score=distance-(item.pumpkin and config.pumpkinPriority and 1000000000 or item.gem and config.gemPriority and 1000000 or 0)
                        selected.add(item)
                    end
                end
            end
        end
        local choices=selected.values()
        queue,queueIndex,queueExpires=choices,1,os.clock()+5
        candidate=popQueue(valid,onlyPumpkins)
        searchEmpty=candidate==nil
        if not candidate and unresolved and config.rarity~="Any" then
            return nil,"Raridade indisponivel: o cliente nao expos um vinculo verificavel entre peca, indice e estado."
        end
        return candidate
    end
    local function approachPart(item,valid)
        local root=nav.actor()
        if not root or not itemAlive(item) then return false,"alvo indisponivel" end
        local position=itemPosition(item)
        if (root.Position-position).Magnitude<=10 then return true end
        if config.movement=="Teleport" then return nav.goTo(position+Vector3.new(0,3.5,0),valid,true) end
        local delta=root.Position-position
        local horizontal=Vector3.new(delta.X,0,delta.Z)
        local near=position+(horizontal.Magnitude>0.1 and horizontal.Unit or Vector3.new(0,0,1))*5
        local params=RaycastParams.new() params.FilterType=Enum.RaycastFilterType.Exclude
        params.FilterDescendantsInstances={player.Character,world:FindFirstChild("PotatoPile")}
        local hit=world:Raycast(near+Vector3.new(0,12,0),Vector3.new(0,-120,0),params)
        if not hit then return false,"sem piso proximo da batata" end
        local ok,message=nav.goTo(hit.Position,valid)
        root=nav.actor()
        if not ok then return false,message end
        return root~=nil and itemAlive(item) and (root.Position-position).Magnitude<=18,"alvo fora do alcance"
    end
    local function collect(valid)
        local item,message=findCandidate(valid)
        if not item then
            if message then log(message,"error") end
            return true
        end
        collectTool()
        local before,capacity=inventory()
        local beforePumpkin,beforeGem=pumpkinSerial,gemSerial
        if not before or not capacity or before>=capacity and not item.pumpkin then return false,"bolsa cheia ou capacidade desconhecida" end
        local function confirmedPick()
            local count=inventory()
            return count~=nil and count>before or item.pumpkin and pumpkinSerial>beforePumpkin or item.gem and gemSerial>beforeGem
        end
        if os.clock()<nextPickAt then return true end
        local ok,why=approachPart(item,valid)
        if not ok then if item.part then rejected[item.part]=os.clock()+5 else rejectedIds[item.slot]=os.clock()+30 end candidate=nil findAt=0 return false,why end
        if not valid() then return false,"cancelado" end
        item.slot=item.part and resolver.slot(item.part) or item.slot
        item.geometry=item.part and resolver.physicalSlot(item.part) or nil
        if item.slot then
            item.kind,item.pumpkin,item.gem=resolver.kind(item.part,item.slot)
            if not Core.acceptVariant(config,item.kind,item.pumpkin,item.gem) then candidate=nil return true end
        end
        if item.logical then logicalAttemptAt=os.clock()+5 end
        local picked=false
        if item.slot and type(packets.PotatoPick)=="table" and type(packets.PotatoPick.Fire)=="function"
            and type(packets.ToolSwing)=="table" and type(packets.ToolSwing.Fire)=="function" then
            local targets={item}
            local root=nav.actor()
            local limit=Core.pickLimit(config,before,capacity,item.pumpkin)
            local identity=resolver.stats.identity
            if not identity or math.max(identity.confirmed_geometry or 0,identity.confirmed_permuted or 0)<3 then limit=1 end
            while #targets<limit and queueIndex<=#queue and root do
                local extra=queue[queueIndex]
                if not itemAlive(extra) then queueIndex+=1
                elseif extra.pumpkin or extra.logical or (itemPosition(extra)-root.Position).Magnitude>18 then break
                else
                    extra.slot=extra.part and resolver.slot(extra.part) or extra.slot
                    if not extra.slot then break end
                    queueIndex+=1 table.insert(targets,extra)
                end
            end
            local sent,errorMessage=pcall(function()
                if protocol.matches("ToolUsing",{"Boolean"}) then protocol.fire("ToolUsing",true) end
                for _,target in ipairs(targets) do
                    if not valid() then break end
                    packets.ToolSwing:Fire()
                    packets.PotatoPick:Fire(target.slot)
                end
            end)
            if not sent then log("Coleta direta indisponivel; usando entrada nativa: "..tostring(errorMessage),"error") end
            picked=sent
        end
        if not picked then return false,"Indice da batata nao confirmado; filtro especifico mantido em espera." end
        local confirmed,reason=waitUntil(confirmedPick,config.speedMode=="Turbo" and math.min(0.65,config.actionTimeout) or config.actionTimeout,valid)
        if not confirmed and valid() and item.part and resolver.alternate then
            local alternative=resolver.alternate(item.part,item.slot)
            if alternative then
                local name,pumpkin,gem=resolver.kind(item.part,alternative)
                if Core.acceptVariant(config,name,pumpkin,gem) then
                    local ok=protocol.fire("PotatoPick",alternative)
                    if ok then
                        confirmed,reason=waitUntil(confirmedPick,0.4,valid)
                        if confirmed then item.slot=alternative end
                    end
                end
            end
        end
        local after=inventory()
        if confirmed then
            if item.part then resolver.confirm(item.part,item.slot,item.geometry) end
            counts.collected+=math.max(0,(after or before)-before)
            if item.pumpkin and pumpkinSerial>beforePumpkin then counts.pumpkins+=pumpkinSerial-beforePumpkin end
            if gemSerial>beforeGem then counts.gems+=gemSerial-beforeGem end
            adaptivePickDelay=math.max(0.04,adaptivePickDelay*0.9)
        else
            if item.part then rejected[item.part]=os.clock()+3 else rejectedIds[item.slot]=os.clock()+30 end
            adaptivePickDelay=math.min(0.6,math.max(0.08,adaptivePickDelay*1.3))
        end
        snapshotAt=0
        local cooldown=config.speedMode=="Turbo" and adaptivePickDelay or Core.tickInterval(config)
        local data=state()
        if data and config.speedMode~="Turbo" then
            local good,value=safeCall(pileController,"GetPickCooldown",data)
            if good and type(value)=="number" and value>0 and value<3 then cooldown=math.max(cooldown,value) end
        end
        nextPickAt=os.clock()+cooldown candidate=nil
        return confirmed,reason
    end
    local function deliver(valid)
        local before=inventory()
        if not before or before<=0 then deliveryPending=nil snapshotAt=0 return true end
        if not deliveryPending then
            interactionTool()
            local machines=get(world,{"Map","PeelingMachines"})
            local prompt
            if config.deliveryTarget=="Table" then prompt=selectedTable(true)
            elseif config.deliveryTarget=="Manual" then prompt=machines and get(machines,{"PeelingMachine","Cube.033","Load"})
            elseif config.deliveryTarget=="Auto" then prompt=machines and get(machines,{"AutoPeelingMachine","Cube.042","Load"})
            else prompt=machines and get(machines,{"PotatoCrate","PotatoArea","PlacePrompt"}) end
            if not prompt then return false,"Destino selecionado indisponivel." end
            local ok,message=nav.trigger(prompt,valid)
            if not ok then return false,message end
            deliveryPending={prompt=prompt,last=before,remaining=before,progressAt=os.clock(),began=os.clock(),total=0}
        end
        local pending=deliveryPending
        local deadline=os.clock()+math.max(4,math.min(8,config.actionTimeout))
        repeat
            if not valid() then return false,"cancelado" end
            local count=inventory()
            if count and count<pending.last then
                local amount=pending.last-count
                counts.delivered+=amount pending.total+=amount pending.progressAt=os.clock()
                snapshotAt=0
            end
            if count then pending.last=count pending.remaining=count end
            if count==0 then
                log("Entrega concluida: "..tostring(pending.total).." batatas.")
                deliveryPending=nil snapshotAt=0 candidate=nil
                return true
            end
            if os.clock()-pending.progressAt>2 then
                local prompt=pending.prompt
                if prompt and prompt.Parent and prompt.Enabled then
                    local ok,message=nav.trigger(prompt,valid)
                    if not ok then return false,message end
                    pending.progressAt=os.clock()
                elseif os.clock()-pending.progressAt>math.max(8,config.actionTimeout) then
                    deliveryPending=nil snapshotAt=0
                    return false,"Entrega parou sem progresso; destino sera reavaliado."
                end
            end
            services.RunService.Heartbeat:Wait()
        until os.clock()>=deadline
        return true,"Entrega em andamento."
    end
    local function cut(valid)
        if not isCutting() then return true end
        local _,potato=safeCall(cutting,"GetPotato")
        local data=state()
        local tool=data and cutShared.Tools and cutShared.Tools[bestCutRank(data)] or nil
        cutDriving=true
        local ok,message=cutEngine.tick(true,potato,cash(),tool)
        if not ok then cancelCut() table.clear(tableRetry) retryAt.enterCut=os.clock()+1 snapshotAt=0 end
        if not valid() then return false,"cancelado" end
        return ok,message
    end
    local function enterCut(valid)
        interactionTool()
        local prompt=selectedTable(true)
        if not prompt then return false,"Nenhuma mesa liberada com batatas." end
        cutGuiSnapshot={}
        for _,screen in ipairs(playerGui:GetChildren()) do
            if screen:IsA("ScreenGui") and screen.Name~="AnonymousPotatoHub" then
                cutGuiSnapshot[screen]=screen.Enabled
                for _,frame in ipairs(screen:GetChildren()) do if frame:IsA("GuiObject") then cutGuiSnapshot[frame]=frame.Visible end end
            end
        end
        local ok,message=nav.trigger(prompt,valid)
        if not ok then tableRetry[prompt]=os.clock()+3 snapshotAt=0 return false,message end
        if not ok then return false,message end
        local confirmed,why=waitUntil(isCutting,math.min(3,config.actionTimeout),valid)
        if not confirmed and valid() and prompt.Enabled then
            local tried=nav.trigger(prompt,valid,{method="hold"})
            if tried then confirmed,why=waitUntil(isCutting,math.min(2,config.actionTimeout),valid) end
        end
        if confirmed then lastTable=prompt cutDriving=true else tableRetry[prompt]=os.clock()+3 snapshotAt=0 end
        return confirmed,why
    end
    local function cool(valid)
        coolingRetryAt=os.clock()+2
        local root=nav.actor()
        local previous=root and root.Position
        interactionTool()
        local prompt=get(world,{"Map","Water","WaterTerminal","3","Button","WaterPrompt"})
        if not prompt then return false,"WaterPrompt nao encontrado." end
        local initialHeat=resolver.heat()
        local confirmed,reason=false,nil
        for attempt=1,2 do
            local ok,message=nav.trigger(prompt,valid,{method=attempt==1 and "hold" or "native"})
            if not ok then reason=message
            else
                confirmed,reason=waitUntil(function()
                    local heat,flowing=resolver.heat()
                    return flowing or heat and (heat<=config.heatStop or initialHeat and heat<initialHeat-1)
                end,attempt==1 and 1.5 or 6,valid)
            end
            if confirmed or not valid() then break end
        end
        snapshotAt=0
        if confirmed then
            counts.cooled+=1 log("Valvula confirmada: agua fluindo ou calor diminuindo.")
            coolingRetryAt=os.clock()+config.coolingRetry
            if config.returnAfterCooling and previous and valid() then nav.goTo(previous,valid,true) end
        end
        return confirmed,reason
    end
    local function crank(valid)
        cancelCut()
        local prompt=get(world,{"Map","PeelingMachines","PeelingMachine","CrankPromptPart","Crank"})
        if not prompt or not prompt.Enabled then return false,"Cortador manual indisponivel." end
        local before=prompt.ObjectText
        local ok,message=nav.trigger(prompt,valid)
        if not ok then return false,message end
        return waitUntil(function() return not prompt.Parent or not prompt.Enabled or prompt.ObjectText~=before end,config.actionTimeout,valid)
    end
    local function buy(valid)
        local item=nextPurchase()
        if not item then return true end
        local beforeState=state()
        local beforeCash=cash()
        local beforeRank=beforeState and bestCutRank(beforeState)
        local beforeCarry=beforeState and beforeState.CarryLevel
        local shared=modules["Shared.ToolUpgradeShared"] or {}
        local beforeLevel=item.group=="upgrade" and Chapter.level(shared,beforeState,item.tool,item.upgrade) or nil
        local previous=nav.actor()
        previous=previous and previous.Position
        local wasCutting=isCutting()
        local function confirmed()
            local data=state()
            if not data then return false end
            if item.group=="upgrade" then
                local current=Chapter.level(shared,data,item.tool,item.upgrade)
                return current~=nil and beforeLevel~=nil and current>beforeLevel
            end
            if item.group=="cut" and beforeRank and bestCutRank(data)>beforeRank then return true end
            if item.group=="storage" and beforeCarry and data.CarryLevel>beforeCarry then return true end
            if item.group=="collect" and Chapter.owns(data,item.id=="P0T4T0-3000" and "PotatoSucker" or item.id) then return true end
            local current=cash()
            return current and beforeCash and current<beforeCash-0.001
        end
        local function finish(success,message,deferred)
            if item.group=="upgrade" then
                if restoreHeadless then restoreHeadless() restoreHeadless=nil end
            else safeCall(storeView,"Close") end
            if success and not deferred then
                counts.purchases+=1
                if afterSale and item.group=="cut" then postSaleWeaponBought=true end
                log("Compra confirmada: "..item.name..".")
            end
            if item.group=="upgrade" and not success then
                deniedOffers[item.name]={cash=math.max((beforeCash or 0)*1.5,(beforeCash or 0)+math.max(0.1,(item.price or 0)*0.5)),level=beforeLevel}
            elseif success and not deferred then deniedOffers[item.name]=nil end
            offerRetry[item.name]=success and not deferred and 0 or os.clock()+20
            buyRetryAt=os.clock()+(success and 0.15 or 1)
            cachedPurchase=nil purchaseCacheAt=0 snapshotAt=0
            if wasCutting and previous and valid() and item.group~="upgrade" and not afterSale then nav.goTo(previous,valid,true) end
            return success,message
        end
        if item.group=="upgrade" then
            -- Prices/buttons are read without opening or selecting the game's tabs.
            -- Native upgrade callbacks had side effects on unrelated game ScreenGuis.
            if beforeLevel==nil then return finish(true,"Nivel de melhoria indisponivel.",true) end
            local ok,button=safeCall(upgradeController,"GetUpgradeButton",item.tool,item.upgrade)
            if ok and typeof(button)=="Instance" and button:IsA("GuiButton") then item.button=button end
            item.price=upgradePrice(state(),item.tool,item.upgrade,beforeLevel,item.button) or item.price
            if not valid() then return finish(false,"cancelado") end
            if not item.price or not Core.affordable(config,cash(),item.price,"Cash") then return finish(true,"Aguardando saldo para "..item.name,true) end
            local fired,why
            if protocol.matches("ToolUpgradePurchase",{"String","String"}) then
                fired,why=protocol.fire("ToolUpgradePurchase",item.tool,item.upgrade)
            elseif item.button then fired,why=bridge.activate(item.button,true)
            else return finish(true,"Botao de melhoria ainda indisponivel.",true) end
            if not fired then return finish(false,why) end
            local success,message=waitUntil(confirmed,math.min(3,config.actionTimeout),valid)
            return finish(success,message)
        end
        if not Core.affordable(config,beforeCash,item.price,"Cash") then return finish(true,"Aguardando saldo.",true) end
        interactionTool()
        local approached,why=nav.trigger(item.prompt,valid)
        if not approached then return finish(false,why) end
        local button,message
        local ready,reason=waitUntil(function()
            if confirmed() then return true end
            button,message=bridge.buyButton(item.price)
            return button~=nil
        end,2,valid)
        if confirmed() then return finish(true) end
        if protocol.matches("StorePurchase",{"Instance","String"}) then
            local model=item.prompt:FindFirstAncestorOfClass("Model")
            if model then
                local sent=protocol.fire("StorePurchase",model,"Buy")
                if sent then
                    local accepted=waitUntil(confirmed,1.5,valid)
                    if accepted then return finish(true) end
                end
            end
        end
        if not ready then return finish(false,message or reason) end
        if not Core.affordable(config,cash(),item.price,"Cash") then return finish(true,"Saldo alterado.",true) end
        local activated,why2=bridge.activate(button)
        if not activated then return finish(false,why2) end
        local success,reason2=waitUntil(confirmed,math.min(3,config.actionTimeout),valid)
        return finish(success,reason2)
    end
    local function sell(valid)
        local before=stockCount()
        if not before or before<=0 then return true end
        local root=nav.actor()
        resumePosition=config.returnAfterSell and root and root.Position or nil
        interactionTool()
        local prompt=get(world,{"Map","PeelingMachines","SellCrate","PotatoArea","SellPrompt"})
        sellRetryAt=os.clock()+3
        local ok,message=nav.trigger(prompt,valid)
        if not ok then return false,message end
        local confirmed,why=waitUntil(function() local amount=stockCount() return amount~=nil and amount<before end,math.min(4,config.actionTimeout),valid)
        if confirmed then
            counts.sales+=1 counts.sold+=math.max(0,before-(stockCount() or before))
            afterSale=true postSaleWeaponBought=false
            cachedPurchase=nil purchaseCacheAt=0 snapshotAt=0
            log("Venda confirmada: "..tostring(before-(stockCount() or before)).." batatas.")
        end
        return confirmed,why
    end
    local function returnTable(valid)
        local position=resumePosition
        afterSale=false resumePosition=nil postSaleWeaponBought=false snapshotAt=0
        if not position then return true end
        local ok,message=nav.goTo(position,valid,true)
        if not ok then return false,message end
        if Core.effective(config,"autoCut") and selectedTable(true) then return enterCut(valid) end
        return true
    end
    local function dynamite(valid)
        local data=state()
        if not Chapter.owns(data,"Dynamite") or not itemAlive(candidate) then return true end
        if not protocol.matches("DynamiteThrow",{"NumberU32"}) then return true end
        local root=nav.actor()
        if not root then return false,"personagem indisponivel" end
        local target=itemPosition(candidate)
        if (root.Position-target).Magnitude>18 then
            local moved,why=approachPart(candidate,valid)
            if not moved then return false,why end
        end
        local equipped=protocol.matches("ToolEquip",{"String"})
        if equipped then protocol.fire("ToolEquip","Dynamite") end
        local before=dynamiteSerial
        local ok,message=protocol.fire("DynamiteThrow",candidate.slot)
        local interval=math.max(config.dynamiteInterval,config.dynamiteAggressive and 0.1 or 1)
        dynamiteAt=os.clock()+interval
        local confirmed=false
        if ok then confirmed=waitUntil(function() return dynamiteSerial>before end,math.min(1.2,config.actionTimeout),valid) end
        if equipped then
            local tool=Chapter.owns(data,"PotatoSucker") and "PotatoSucker" or Chapter.owns(data,"Shovel") and "Shovel" or "Hand"
            protocol.fire("ToolEquip",tool)
        end
        if confirmed then counts.throws+=1 else dynamiteAt=os.clock()+math.max(1,interval*1.3) end
        if confirmed then candidate=nil snapshotAt=0 end
        return confirmed,confirmed and nil or message or "Lancamento sem confirmacao; aguardando recarga."
    end

    if cutting.PotatoCut and type(cutting.PotatoCut.Connect)=="function" then
        local ok,connection=pcall(cutting.PotatoCut.Connect,cutting.PotatoCut,function() counts.cuts+=1 end)
        if ok then table.insert(connections,connection) end
    end
    for _,item in ipairs({{"PeelingStarted","start"},{"PeelingNextPotato","next"},{"PeelingStopped","stop"}}) do
        local packet=packets[item[1]]
        local event=packet and packet.OnClientEvent
        if type(event)=="table" and type(event.Connect)=="function" then
                local eventKind=item[2]
                local ok,connection=pcall(event.Connect,event,function() cutEngine.event(eventKind) end)
            if ok then table.insert(connections,connection) end
        end
    end
    local pumpkinEvent=packets.PotatoPumpkinCollected and packets.PotatoPumpkinCollected.OnClientEvent
    if type(pumpkinEvent)=="table" and type(pumpkinEvent.Connect)=="function" then
        local ok,connection=pcall(pumpkinEvent.Connect,pumpkinEvent,function(first)
            if typeof(first)=="Instance" and first:IsA("Player") and first~=player then return end
            pumpkinSerial+=1
        end)
        if ok then table.insert(connections,connection) end
    end
    local function watchReward(name,fn)
        local packet=packets[name]
        local event=packet and packet.OnClientEvent
        if type(event)=="table" and type(event.Connect)=="function" then
            local ok,connection=pcall(event.Connect,event,function(first)
                if typeof(first)=="Instance" and first:IsA("Player") and first~=player then return end
                fn()
            end)
            if ok then table.insert(connections,connection) end
        end
    end
    watchReward("PotatoDiamondCollected",function() gemSerial+=1 end)
    watchReward("DynamiteThrown",function() dynamiteSerial+=1 end)
    local function stageCut(valid)
        local prompt=get(world,{"Map","PeelingMachines","PotatoCrate","PotatoArea","PlacePrompt"})
        local before=inventory()
        if not before or before<=0 then return true end
        local ok,message=nav.trigger(prompt,valid)
        if not ok then return false,message end
        return waitUntil(function() local n=inventory() return n and n<before end,config.actionTimeout,valid)
    end
    local function reset()
        snapshotAt=0
        candidate=nil findAt=0 queue={} queueIndex=1 queueExpires=0 searchEmpty=false
        cachedPurchase=nil purchaseCacheAt=0
        variantCache=setmetatable({},{__mode="k"})
        specialCache={} specialAt=0 equippedTool=nil
    end
    local function recover(action,attempt)
        retryAt[action]=os.clock()+math.min(12,0.5*2^math.min(attempt or 1,4))
        snapshotAt=0
        if action=="collect" or action=="dynamite" then candidate=nil queue={} queueIndex=1 findAt=0 end
        if action=="enterCut" or action=="cut" or action=="returnTable" then cancelCut() end
        if action=="deliver" or action=="stageCut" then
            local count=inventory()
            if not count or count<=0 then deliveryPending=nil end
        end
        if action=="buy" then cachedPurchase=nil purchaseCacheAt=0 end
    end
    local function restoreGame()
        interactionTool() nav.stop() safeCall(storeView,"Close")
        safeCall(upgradeController,"SetOpen",false)
        for _,name in ipairs({"Cash","Bag","Hotbar","ToolHotbar"}) do
            local screen=playerGui:FindFirstChild(name)
            if screen and screen:IsA("ScreenGui") then screen.Enabled=true end
        end
        table.clear(retryAt) table.clear(tableRetry) reset()
    end
    return {
        snapshot=snapshot,findCandidate=findCandidate,release=release,cancelCut=cancelCut,reset=reset,recover=recover,restoreGame=restoreGame,counts=counts,
        actions={collect=collect,deliver=deliver,cut=cut,enterCut=enterCut,cool=cool,buy=buy,crank=crank,stageCut=stageCut,sell=sell,returnTable=returnTable,dynamite=dynamite},
        stop=function()
            cancelCut() nav.stop()
            if restoreHeadless then restoreHeadless() restoreHeadless=nil end
            if openedUpgrade then safeCall(upgradeController,"SetOpen",false) openedUpgrade=false end
        end,
        defer=function(action,seconds)
            if action=="buy" then buyRetryAt=os.clock()+seconds end
            if action=="cool" then coolingRetryAt=os.clock()+seconds end
        end,
        close=function()
            closed=true
            cancelCut() nav.stop() resolver.close()
            if restoreHeadless then restoreHeadless() restoreHeadless=nil end
            for _,connection in ipairs(connections) do connection:Disconnect() end
        end,
        diagnostic=function()
            local snap=snapshot()
            return {place_id=game.PlaceId,place_version=game.PlaceVersion,bindings=resolver.stats,
                state={cash=snap.cash,stock=snap.stock,goal=snap.goal and snap.goal.name,carried=snap.carried,capacity=snap.capacity==math.huge and "infinite" or snap.capacity,
                    heat=snap.heat,heat_source=snap.heatSource,cutting=snap.cutting,water_flowing=snap.flowing,cut_units_per_second=snap.cutRate,delivery_pending=deliveryPending~=nil,equipped_request=equippedTool},counts=counts,cut_engine=cutEngine.stats,prompts=nav.stats,retry_at=retryAt,schemas={upgrade=protocol.schema("ToolUpgradePurchase"),throw=protocol.schema("DynamiteThrow"),equip=protocol.schema("ToolEquip")},buttons=bridge.diagnostic()}
        end,
    }
end

return Adapter

end)()

local function bootAnonymousPotato()
-- Luau · potato_main.luau · Anonymous Potato entry point · Roblox / Delta · Luau 0.745
-- Core, Session, Gate, UI, Navigation, Resolver, Bridge and Adapter are bundled above this entry point.
local VERSION="0.7.0"
local EXPECTED_PLACE=116701845804918
local ACCESS={enabled=true,key="Anonymous"}
local services={}
for _,name in ipairs({"Players","Workspace","ReplicatedStorage","HttpService","RunService",
    "UserInputService","TweenService","PathfindingService","StarterGui"}) do services[name]=game:GetService(name) end
local player=services.Players.LocalPlayer
assert(player,"Execute o hub no cliente Roblox dentro da experiencia.")
if game.PlaceId~=EXPECTED_PLACE then
    pcall(services.StarterGui.SetCore,services.StarterGui,"SendNotification",{
        Title="Anonymous Potato",Text="Este arquivo e para Descasque a Batata, PlaceId "..EXPECTED_PLACE,Duration=8})
    return
end
local environment=type(getgenv)=="function" and getgenv() or _G
local previous=environment.AnonymousPotatoSession
if type(previous)=="table" and type(previous.close)=="function" then pcall(previous.close) end
local lifecycle=Session.lifecycle()
local cancellation=Core.newCancellation()
local registry={close=lifecycle.close,version=VERSION}
environment.AnonymousPotatoSession=registry
lifecycle.add(function() if environment.AnonymousPotatoSession==registry then environment.AnonymousPotatoSession=nil end end)
local json={encode=function(value) return services.HttpService:JSONEncode(value) end,
    decode=function(value) return services.HttpService:JSONDecode(value) end}
local store=Session.create(Core,json,{read=type(readfile)=="function" and readfile or nil,
    write=type(writefile)=="function" and writefile or nil})
local config,loadMessage=store.load()
local logger=Session.log(14)
local ui,adapter,activeAction=nil,nil,nil
local failures={}
local recent={}
local function log(message,level)
    local now=os.clock()
    if recent[message] and now-recent[message]<12 then return end
    recent[message]=now
    logger.add(message,level)
    if ui then ui.logs(logger.lines()) end
end
local function notify(message)
    if config.notifications then
        pcall(services.StarterGui.SetCore,services.StarterGui,"SendNotification",{
            Title="Anonymous Potato",Text=tostring(message),Duration=5})
    end
end
local function pause(message)
    Core.pause(config) cancellation.cancel()
    if adapter then adapter.stop() end
    if ui then ui.refresh() ui.status(message or "Rotinas pausadas.") end
    if message then log(message) end
end
lifecycle.add(function()
    cancellation.cancel()
    if adapter then adapter.close() end
end)
local gate=Gate.open(services,lifecycle,ACCESS)
if not gate.wait() then lifecycle.close() return end

local moduleNames={
    "Shared.PlayerStateShared","Shared.PotatoPileShared","Shared.PotatoKindShared","Shared.PotatoHoldShared",
    "Shared.CarryUpgradeShared","Shared.CutToolShared","Shared.ToolUpgradeShared","Shared.FireShared",
    "Modules.Resources.Packets","Controllers.SyncController","Controllers.PotatoPileController",
    "Controllers.PotatoTableController","Controllers.PeelingController","Controllers.CuttingController",
    "Controllers.FireController","Controllers.StoreViewController","Controllers.ToolUpgradeController",
    "ModifiedPackages.Packet._Types",
}
local modules,moduleErrors={},{}
for index,path in ipairs(moduleNames) do
    if not lifecycle.alive() then return end
    gate.progress((index-1)/(#moduleNames+2),"Lendo "..path)
    local instance=services.ReplicatedStorage
    for name in string.gmatch(path,"[^%.]+") do instance=instance and instance:FindFirstChild(name) end
    if instance and instance:IsA("ModuleScript") then
        local completed,ok,value=false,false,nil
        task.spawn(function() ok,value=pcall(require,instance) completed=true end)
        local deadline=os.clock()+6
        while not completed and lifecycle.alive() and os.clock()<deadline do task.wait(0.05) end
        if completed and ok and type(value)=="table" then modules[path]=value
        else moduleErrors[path]=completed and tostring(value) or "tempo limite de leitura" end
    else moduleErrors[path]="modulo ausente" end
end
if not lifecycle.alive() then return end
local nav=Navigation.create(services,config,log)
local resolver=Resolver.create(modules,services,log,Observer,Spatial)
lifecycle.add(resolver.close)
gate.progress(0.9,"Sincronizando os indices e as variantes da pilha...")
resolver.requestSync()
local syncDeadline=os.clock()+1.2
while lifecycle.alive() and not resolver.ready() and os.clock()<syncDeadline do task.wait(0.05) end
if not lifecycle.alive() then resolver.close() return end
local bridge=Bridge.create(services,Core)
adapter=Adapter.create(services,modules,Core,config,nav,resolver,bridge,log,CutEngine,Chapter,Protocol,TopK)
gate.progress(0.95,"Preparando painel e controles por toque...")
local binding=nil
local keyActions={keyProgress="autoProgress",keyCut="autoCut",keyFarm="autoFarm",keyCool="autoCool",
    keyBuy="autoBuyTools",keyDeliver="autoDeliver",keyPumpkin="collectPumpkins",keyStorage="autoBuyStorage",keyUpgrades="autoBuyUpgrades",keyCrank="autoCrank",keySell="autoSell",keyDynamite="autoDynamite"}
local combined={"autoFarm","autoDeliver","autoCut","autoCool","autoBuyTools","autoBuyUpgrades","autoBuyStorage","autoCrank","autoSell","autoDynamite"}
local combinedSet={}
for _,name in ipairs(combined) do combinedSet[name]=true end
local function displayed(field)
    if field=="autoFarm" then return config.autoProgress or config.autoFarm end
    for _,name in ipairs(combined) do if name==field then return Core.effective(config,field) end end
    return config[field]
end
local function change(field,value)
    if config[field]==nil then return end
    if config[field]==value and not (config.autoProgress and combinedSet[field]) then return end
    if field=="autoCool" and config.autoProgress and value==false then
        if ui then ui.status("O resfriamento faz parte do Auto Progress. Pause o ciclo para desliga-lo.") ui.refresh() end
        return
    end
    if config.autoProgress and combinedSet[field] and type(value)=="boolean" then
        for _,name in ipairs(combined) do config[name]=Core.effective(config,name) end
        config.autoProgress=false
    end
    if field=="autoBuyTools" and value==false then config.cutBuyTools=false end
    local nextConfig=Core.clone(config) nextConfig[field]=value
    local checked=Core.validate(nextConfig,false)
    for key,item in pairs(checked) do config[key]=item end
    local layoutField=string.sub(field,1,2)=="ui" or string.sub(field,1,6)=="button"
    if not layoutField then cancellation.cancel() adapter.stop() adapter.reset() end
    table.clear(failures)
    if ui then ui.refresh() end
end
local function export()
    local ok,result=pcall(function()
        local report=adapter.diagnostic()
        report.hub_version=VERSION report.module_errors=moduleErrors report.log=logger.records()
        report.config=Core.validate(config,false)
        report.active_action=activeAction report.failures=Core.clone(failures)
        return json.encode(report)
    end)
    if not ok then log("Falha ao criar diagnostico: "..tostring(result),"error") return end
    local copied,saved=false,false
    local clipboard=type(setclipboard)=="function" and setclipboard or (type(toclipboard)=="function" and toclipboard or nil)
    if clipboard then copied=pcall(clipboard,result) end
    if type(writefile)=="function" then saved=pcall(writefile,"Anonymous_Potato_Diagnostic.json",result) end
    log(copied and "Diagnostico copiado." or saved and "Diagnostico salvo: Anonymous_Potato_Diagnostic.json"
        or "O executor nao disponibilizou clipboard nem escrita de arquivos.")
end
ui=UI.create(services,config,{
    value=displayed,change=change,parseNumber=Core.parseAmount,
    save=function() local ok,message=store.save(config) log(message,ok and "info" or "error") notify(message) end,
    pause=function() pause("Pausado pelo painel.") end,
    bind=function(field)
        if not services.UserInputService.KeyboardEnabled then ui.status("Use os controles por toque; atalhos sao opcionais para teclado.") return end
        if binding==field then binding=nil ui.status("Edicao de atalho cancelada.") return end
        binding=field ui.status("Pressione uma tecla para o atalho; Esc cancela e Backspace remove.")
    end,
    export=export,close=lifecycle.close,
    restore=function()
        cancellation.cancel() adapter.restoreGame() table.clear(failures)
        ui.show() ui.status("Controles restaurados; a rotina continua conforme as opcoes ativas.")
    end,
    copyLoader=function()
        local code='loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonymosScripts/Script-1-Evolvy-Hub/main/potato/loader.lua"))()'
        local clipboard=type(setclipboard)=="function" and setclipboard or (type(toclipboard)=="function" and toclipboard or nil)
        if clipboard then pcall(clipboard,code) log("Loader copiado.") end
        if type(writefile)=="function" then pcall(writefile,"Evolvy_Chapter2_Loader.lua",code) end
    end,
    layout=function(values)
        local nextConfig=Core.clone(config)
        for key,value in pairs(values) do nextConfig[key]=value end
        local checked=Core.validate(nextConfig,false)
        for key,value in pairs(checked) do config[key]=value end
        if ui then ui.refresh() end
    end,
},Layout)
lifecycle.add(function() if ui then ui.close() end end)
ui.refresh()
log("Anonymous Potato "..VERSION.." / Place version "..game.PlaceVersion)
log(loadMessage)
for name,why in pairs(moduleErrors) do log(name..": "..why,"error") end
if not bridge.available then log("A ativacao de botoes nao esta disponivel; compras diretas por prompt ainda podem funcionar.") end
gate.progress(1,"Componentes carregados. Rotinas pausadas.")
gate.close()
ui.status("Pronto. Configure um modo e ative a rotina desejada.")

local inputConnection=services.UserInputService.InputBegan:Connect(function(input,processed)
    if not lifecycle.alive() then return end
    if binding then
        if input.UserInputType~=Enum.UserInputType.Keyboard then return end
        local field=binding binding=nil
        if input.KeyCode==Enum.KeyCode.Escape then ui.status("Atalho cancelado.") return end
        local value=input.KeyCode==Enum.KeyCode.Backspace and "None" or input.KeyCode.Name
        for key,existing in pairs(config) do
            if key~=field and string.sub(key,1,3)=="key" and value~="None" and existing==value then
                ui.status("Essa tecla ja esta em uso por "..key..".") return
            end
        end
        change(field,value) ui.status("Atalho atualizado.") return
    end
    if services.UserInputService:GetFocusedTextBox() then return end
    local name=input.KeyCode.Name
    if name==config.keyPause and name~="None" then pause("Pausado pelo atalho.") return end
    if processed then return end
    if name==config.keyMenu and name~="None" then ui.toggle() return end
    for key,field in pairs(keyActions) do
        if config[key]~="None" and name==config[key] then change(field,not displayed(field)) return end
    end
    if activeAction and config.pauseOnMovement and ({W=true,A=true,S=true,D=true,Space=true,Up=true,Down=true,Left=true,Right=true})[name] then
        pause("Pausado por entrada manual de movimento.")
    end
end)
lifecycle.add(function() inputConnection:Disconnect() end)
local respawnConnection=player.CharacterAdded:Connect(function()
    pause("Personagem recarregado; rotinas pausadas.") adapter.reset()
end)
lifecycle.add(function() respawnConnection:Disconnect() end)

local actionNames={cool="Resfriando",collect="Coletando",deliver="Entregando",cut="Cortando",enterCut="Indo para a mesa",buy="Comprando",crank="Girando cortador",search="Indexando e selecionando",stageCut="Abastecendo a mesa",sell="Vendendo",returnTable="Retornando a mesa",dynamite="Lancando dinamite"}
local nextUi=0
local heartbeat=services.RunService.Heartbeat:Connect(function()
    if not lifecycle.alive() or os.clock()<nextUi then return end
    nextUi=os.clock()+0.5
    local ok,snapshot=pcall(adapter.snapshot)
    if not ok then log("Falha de leitura: "..tostring(snapshot),"error") return end
    local goal=Core.deliveryGoal(config,snapshot.capacity)
    local money=snapshot.cash and string.format("$%.2f",snapshot.cash) or "indisponivel"
    local capacity=snapshot.capacity==math.huge and "∞" or snapshot.capacity and tostring(snapshot.capacity) or "?"
    local bag=snapshot.carried and tostring(snapshot.carried).."/"..capacity or "indisponivel"
    local heat=snapshot.heat and string.format("%.0f%%",snapshot.heat) or "somente aviso do jogo"
    local message=activeAction and actionNames[activeAction] or "Aguardando rotina ou recurso disponivel"
    local stock=snapshot.stock and tostring(snapshot.stock) or "?"
    local target=snapshot.goal and snapshot.goal.name or "coletar e cortar"
    ui.summary(string.format("%s  |  Bolsa: %s\nEntrega: %s  |  Cortadas: %s/%d\nMeta: %s\nCalor: %s  |  Gemas: %d\n%.1f cortadas/s | %s | vendas: %d",
        money,bag,goal and tostring(goal) or "?",stock,config.sellThreshold,target,heat,adapter.counts.gems,snapshot.cutRate or 0,message,adapter.counts.sales))
    if not binding then ui.status(message) end
    if activeAction and activeAction~="cool" and snapshot.needCooling and Core.effective(config,"autoCool")
        and os.clock()>=snapshot.coolingRetryAt then cancellation.cancel() adapter.stop() end
end)
lifecycle.add(function() heartbeat:Disconnect() end)

task.spawn(function()
    while lifecycle.alive() do
        local token=cancellation.current()
        local function valid() return lifecycle.alive() and cancellation.valid(token) end
        local ok,errorMessage=pcall(function()
            local snapshot=adapter.snapshot()
            local hasActor=nav.actor()~=nil
            if not hasActor then return end
            local action=Core.choose(config,snapshot,os.clock())
            if action=="idle" and Core.effective(config,"autoFarm")
                and (config.collectPumpkins or snapshot.carried and snapshot.capacity and snapshot.carried<snapshot.capacity) then
                activeAction="search"
                local current,why=adapter.findCandidate(valid)
                activeAction=nil
                if why then log(why,"error") end
                if not valid() then return end
                snapshot=adapter.snapshot()
                snapshot.hasCandidate=current~=nil
                action=Core.choose(config,snapshot,os.clock())
            end
            if action=="idle" or not valid() then return end
            activeAction=action
            local success,message=adapter.actions[action](valid)
            activeAction=nil
            if not valid() then return end
            if success then failures[action]=0
            else
                failures[action]=(failures[action] or 0)+1
                log((actionNames[action] or action)..": "..tostring(message),"error")
                if action=="buy" then adapter.defer(action,3) end
                if action=="cool" then adapter.defer(action,config.coolingRetry) end
                if config.autoRecover then
                    adapter.recover(action,failures[action])
                    if failures[action]==3 then log("Recuperacao automatica de "..(actionNames[action] or action).."; outras etapas continuam.") end
                elseif failures[action]>=3 and action~="buy" and action~="enterCut" and action~="sell" and action~="dynamite" then
                    pause("Rotinas pausadas apos tres falhas em "..(actionNames[action] or action)..". Veja Registros.")
                    notify("Rotina pausada; veja Registros e exporte o diagnostico se necessario.")
                end
                if failures[action]>=3 and (action=="buy" or action=="enterCut" or action=="sell" or action=="dynamite") then
                    failures[action]=0 log("A etapa foi adiada; as outras rotinas continuam.")
                end
            end
        end)
        if not ok then
            local failed=activeAction or "collect"
            activeAction=nil adapter.stop()
            log("Falha de execucao: "..tostring(errorMessage),"error")
            if config.autoRecover then
                failures[failed]=(failures[failed] or 0)+1 adapter.recover(failed,failures[failed])
            else pause("Falha de execucao; controles restaurados.") end
        end
        task.wait(Core.tickInterval(config))
    end
end)

end

local started,startError=xpcall(bootAnonymousPotato,debug.traceback)
if not started then
    local env=type(getgenv)=="function" and getgenv() or _G
    local session=env.AnonymousPotatoSession
    if type(session)=="table" and type(session.close)=="function" then pcall(session.close) end
    warn("Anonymous Potato: "..tostring(startError))
    pcall(function() game:GetService("StarterGui"):SetCore("SendNotification",{
        Title="Anonymous Potato",Text="Falha ao carregar; veja o console do Delta.",Duration=8}) end)
end
