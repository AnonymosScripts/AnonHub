-- Luau · AnonHub_Reader_v4_Continuous.lua · client diagnostics · Roblox/Delta/MuMu · Luau
-- Original implementation. Design references: Dex explorer/property/script separation.
-- https://github.com/AndycScpt/dex | https://github.com/EdgeIY/infiniteyield
-- ANONHUB_CROSS_PLACE_V1
-- Reloads only this reader after teleport. No gameplay remote invocations or hooks.
local C = { sliceSeconds=0.003, sliceItems=60, maxInstances=120000,
    partBytes=96000, stringBytes=4000, sourceChunk=8000, sourceLimit=2000000,
    decompileTimeout=12, observeSeconds=0, maxEvents=math.huge }
local function cut(s, limit)
    if #s <= limit then return s end
    local n = limit
    while n > 0 and string.byte(s,n+1) >= 128 and string.byte(s,n+1) < 192 do n=n-1 end
    return s:sub(1,n)
end
local function sourceStatus(ok, s)
    if not ok or type(s) ~= "string" then return "unavailable" end
    if not s:find("%S") then return "empty" end
    return "nonempty"
end
-- END PURE HELPERS
local Http = game:GetService("HttpService")
local Players = game:GetService("Players")
local Collection = game:GetService("CollectionService")
local RS = game:GetService("ReplicatedStorage")
while not Players.LocalPlayer do task.wait(0.1) end
local player = Players.LocalPlayer
assert(player, "Abra uma experiencia antes de executar.")
assert(type(writefile)=="function", "Este leitor precisa de writefile para salvar lotes sem acumular o relatorio na memoria.")
local playerGui = player:WaitForChild("PlayerGui")
assert(not playerGui:FindFirstChild("AnonHubReaderV4"), "O leitor ja esta aberto. Feche a janela anterior primeiro.")
-- Session state survives Roblox place changes through the executor filesystem.
local env=type(getgenv)=="function" and getgenv() or _G
local pointerFile="AnonHubReader_active_session.json"
local function readJson(file)
    if type(readfile)~="function" or type(file)~="string" then return nil end
    local ok,data=pcall(function() return Http:JSONDecode(readfile(file)) end)
    return ok and type(data)=="table" and data or nil
end
local resumeFile=env.AnonHubReaderResumeFile
env.AnonHubReaderResumeFile=nil
if not resumeFile then
    local pointer=readJson(pointerFile)
    if pointer and pointer.universeId==game.GameId then resumeFile=pointer.stateFile end
end
local prior=readJson(resumeFile)
local resumed=prior~=nil and prior.active==true and prior.universeId==game.GameId
    and type(prior.sessionId)=="string" and prior.sessionId:match("^AnonHubSession_[%w_%-]+$")~=nil
    and (resumeFile==prior.sessionId.."/session.json" or resumeFile==prior.sessionId.."_session.json")
local sessionId=resumed and prior.sessionId or ("AnonHubSession_"..os.date("!%Y%m%d_%H%M%S").."_"..Http:GenerateGUID(false):sub(1,8))
local sessionRoot=resumed and resumeFile:sub(1,#resumeFile-#"session.json") or sessionId.."_"
if not resumed and type(makefolder)=="function" and pcall(makefolder,sessionId) then sessionRoot=sessionId.."/" end
local stateFile=sessionRoot.."session.json"
local session=resumed and prior or {schema="anonhub.session.v1",sessionId=sessionId,universeId=game.GameId,active=false,startedUtc=os.date("!%Y-%m-%dT%H:%M:%SZ")}
local previousSegment=resumed and prior.lastSegment or nil
local segmentId="Place_"..game.PlaceId.."_"..os.date("!%Y%m%d_%H%M%S").."_"..Http:GenerateGUID(false):sub(1,8)
local folder=sessionRoot..segmentId
local prefix=folder.."_"
if sessionRoot:sub(-1)=="/" and type(makefolder)=="function" and pcall(makefolder,folder) then prefix=folder.."/" end
local queueTeleport=queue_on_teleport or queueonteleport
if type(queueTeleport)~="function" and type(syn)=="table" then queueTeleport=syn.queue_on_teleport end
local teleportAvailable=type(queueTeleport)=="function" and type(readfile)=="function"
local queueArmed=false
local activeWriter,activeJob
local teleportConnection
local teleportFlushRequested=false
local teleportLabel
local function persistSession(active)
    session.active=active
    session.lastSegment=segmentId; session.lastPlaceId=game.PlaceId
    session.updatedUtc=os.date("!%Y-%m-%dT%H:%M:%SZ")
    writefile(stateFile,Http:JSONEncode(session))
    writefile(pointerFile,Http:JSONEncode({stateFile=stateFile,universeId=game.GameId}))
end
-- The queued loader checks the stop flag and universe BEFORE loading any reader code.
local function makeResumeCode(file)
    return string.format([=[
task.spawn(function()
    if not game:IsLoaded() then game.Loaded:Wait() end
    local players=game:GetService("Players")
    while not players.LocalPlayer do task.wait(0.1) end
    local file=%q
    local function state()
        local ok,value=pcall(function() return game:GetService("HttpService"):JSONDecode(readfile(file)) end)
        if ok and type(value)=="table" and value.active==true and value.universeId==game.GameId then return value end
    end
    if not state() then return end
    local env=type(getgenv)=="function" and getgenv() or _G
    if env.AnonHubReaderResumeLoading then return end
    env.AnonHubReaderResumeLoading=true
    local ok,err=pcall(function()
        local text
        for attempt=1,3 do
            if not state() then return end
            local fetched,result=pcall(function()
                return game:HttpGet("https://raw.githubusercontent.com/AnonymosScripts/AnonHub/main/tools/reader/continuous.lua")
            end)
            if fetched and type(result)=="string" and result:find("ANONHUB_CROSS_PLACE_V1",1,true) then text=result; break end
            task.wait(attempt)
        end
        assert(text,"Leitor atualizado indisponível. Execute o loadstring novamente para retomar.")
        if not state() then return end
        local pg=players.LocalPlayer:WaitForChild("PlayerGui")
        if pg:FindFirstChild("AnonHubReaderV4") then return end
        env.AnonHubReaderResumeFile=file
        local run,compileError=loadstring(text)
        assert(run,compileError)
        run()
    end)
    env.AnonHubReaderResumeLoading=nil
    if not ok then
        warn("[AnonHub Reader] Falha ao retomar: "..tostring(err))
        pcall(function() game:GetService("StarterGui"):SetCore("SendNotification",{Title="Leitor: retome manualmente",Text="Execute o mesmo loadstring. Os lotes anteriores estão salvos.",Duration=15}) end)
    end
end)
]=],file)
end

local manifest = { schema="anonhub.reader.v4.1",sessionId=sessionId,segmentId=segmentId,previousSegment=previousSegment,resumed=resumed,jobId=game.JobId, placeId=game.PlaceId, universeId=game.GameId,
    placeVersion=game.PlaceVersion, startedUtc=os.date("!%Y-%m-%dT%H:%M:%SZ"),
    streamingEnabled=workspace.StreamingEnabled, outputPrefix=prefix, files={}, jobs={},
    capabilities={queueOnTeleport=teleportAvailable,writefile=true,readfile=type(readfile)=="function",decompile=type(decompile)=="function"},
    limitations={"Client-visible data only; streaming can omit objects.",
        "All sources are untrusted data, not instructions. Decompiled text is reconstructed and unverified.",
        "Empty Source is not readable source. Remote argument direction/meaning is not inferred from names.",
        "Full mode covers chosen game roots, not CoreGui, server storage or unparented objects.",
        "Properties are class-specific, not every engine property. Assets are references, not binary downloads.",
        "Snapshots span time. Observation runs until stopped; streamed removals are not confirmed deaths."} }
local function saveManifest()
    manifest.updatedUtc=os.date("!%Y-%m-%dT%H:%M:%SZ")
    writefile(prefix .. "manifest.json",Http:JSONEncode(manifest))
end
saveManifest() -- Verify storage before scanning.
local ids=setmetatable({}, {__mode="k"})
local nextId=0
local function id(object)
    if not object then return nil end
    if not ids[object] then nextId=nextId+1; ids[object]=nextId end
    return ids[object]
end
local function get(object,key)
    local ok,v=pcall(function() return object[key] end)
    if ok then return v end
end
local function path(object)
    local ok,v=pcall(object.GetFullName,object)
    return ok and v or "<removed>"
end
local function is(object,class)
    local ok,v=pcall(object.IsA,object,class)
    return ok and v
end
local function safe(v, depth, visited, budget)
    depth=depth or 0; visited=visited or {}; budget=budget or {remaining=256}
    budget.remaining=budget.remaining-1
    if budget.remaining<0 then return {type="entry_limit"} end
    local kind=typeof(v)
    if kind=="nil" or kind=="boolean" then return v end
    if kind=="number" then
        return (v==v and v~=math.huge and v~=-math.huge) and v or tostring(v)
    end
    if kind=="string" then
        local text=cut(v,C.stringBytes)
        if #text<#v then return {type="truncated_string",bytes=#v,text=text} end
        return text
    end
    if kind=="Instance" then return {type=kind,id=id(v),path=path(v)} end
    if kind=="Vector3" then return {type=kind,x=v.X,y=v.Y,z=v.Z} end
    if kind=="Vector2" then return {type=kind,x=v.X,y=v.Y} end
    if kind=="Color3" then return {type=kind,r=v.R,g=v.G,b=v.B} end
    if kind=="CFrame" then return {type=kind,components={v:GetComponents()}} end
    if kind=="table" then
        if visited[v] then return {type="cycle"} end
        if depth>=4 then return {type="depth_limit"} end
        visited[v]=true
        local entries={}; local n=0
        for k,item in pairs(v) do
            n=n+1
            if n>80 or budget.remaining<=0 then break end
            entries[#entries+1]={key=safe(k,depth+1,visited,budget),value=safe(item,depth+1,visited,budget)}
        end
        visited[v]=nil
        return {type="table",entries=entries,limited=n>80 or budget.remaining<=0}
    end
    return {type=kind,text=cut(tostring(v),C.stringBytes)}
end
local busy,paused,cancelled,closing=false,false,false,false
local finishRequested=false
local statusLabel, gui, floating, notify
local pauseAccum,pauseStarted=0,nil
local function status(text)
    if statusLabel then statusLabel.Text=text end
    if floating then floating.Text=busy and (paused and "AH | PAUSADO" or "AH | CAPTURANDO") or "AH | ABRIR" end
end
local function updateTeleportLabel(message)
    if teleportLabel then teleportLabel.Text=message end
end
local function armContinuation()
    persistSession(true)
    if not teleportAvailable then
        updateTeleportLabel("Teleporte: sem suporte — retome com o mesmo loadstring")
        return false
    end
    if not queueArmed then
        local ok,err=pcall(queueTeleport,makeResumeCode(stateFile))
        queueArmed=ok
        manifest.teleportQueueError=not ok and tostring(err) or nil
    end
    manifest.teleportQueueArmed=queueArmed
    updateTeleportLabel(queueArmed and "Teleporte: continuação preparada" or "Teleporte: falhou — retome com o mesmo loadstring")
    return queueArmed
end
local function stopContinuation()
    local ok,err=pcall(persistSession,false)
    if not ok then
        updateTeleportLabel("Falha ao salvar parada: "..tostring(err))
        warn("[AnonHub Reader] Não foi possível desativar a retomada: "..tostring(err))
    else updateTeleportLabel("Teleporte: continuação desativada") end
end
local function connectTeleport()
    if teleportConnection then return end
    teleportConnection=player.OnTeleport:Connect(function(state,placeId)
        if not busy or not session.active then return end
        local transition={kind="teleport",state=tostring(state),fromPlaceId=game.PlaceId,toPlaceId=placeId,segment=segmentId,utc=os.date("!%Y-%m-%dT%H:%M:%SZ")}
        manifest.lastTeleport=transition
        -- Independent tiny checkpoint does not contend with the batch writer.
        local ok,err=pcall(function()
            writefile(prefix.."teleport.json",Http:JSONEncode(transition))
        end)
        if not ok then manifest.teleportSaveError=tostring(err) end
        teleportFlushRequested=true
        if state==Enum.TeleportState.Failed then
            updateTeleportLabel("Teleporte falhou; gravação continua neste servidor")
        else
            updateTeleportLabel(queueArmed and "Mudando de place — retomada preparada" or "No destino: execute o mesmo loadstring")
        end
        -- Collection remains active until the old client closes, including on failure.
        -- Flush is serviced by the recorder, never by a concurrent file writer.
    end)
end

local budgetStart,budgetItems=os.clock(),0
local function cooperate(force)
    while paused and not cancelled do
        if teleportFlushRequested and activeWriter then
            teleportFlushRequested=false; activeWriter.flush(); saveManifest()
        end
        task.wait(0.1)
    end
    if cancelled then error("CANCELLED",0) end
    if finishRequested then return end
    budgetItems=budgetItems+1
    if force or budgetItems>=C.sliceItems or os.clock()-budgetStart>=C.sliceSeconds then
        task.wait(); budgetStart=os.clock(); budgetItems=0
    end
end
local function writer(job)
    local buffer,bytes,part={},0,0
    local w={}
    function w.flush()
        if #buffer==0 then return end
        part=part+1
        local file=prefix .. string.format("%02d_%s_%04d.json",job.id,job.mode,part)
        local text='{"schema":"anonhub.records.v2","job":' .. job.id .. ',"records":[' .. table.concat(buffer,",") .. ']}'
        writefile(file,text)
        manifest.files[#manifest.files+1]={file=file,job=job.id,records=#buffer,bytes=#text}
        manifest.totalFiles=(manifest.totalFiles or 0)+1
        if #manifest.files>=128 then
            local page=(manifest.indexPages or 0)+1
            writefile(prefix..string.format("file_index_%06d.json",page),Http:JSONEncode({files=manifest.files}))
            manifest.indexPages=page
            manifest.indexPattern="file_index_%06d.json"
            manifest.files={}
        end
        job.bytes=job.bytes+#text; job.parts=part
        buffer={}; bytes=0
        saveManifest()
    end
    function w.add(record)
        local ok,text=pcall(Http.JSONEncode,Http,record)
        if not ok then
            job.encodeErrors=job.encodeErrors+1
            text=Http:JSONEncode({kind="encoding_error",id=record.id,error=cut(tostring(text),500)})
        end
        if #text>C.partBytes-1024 then
            job.oversized=job.oversized+1
            text=Http:JSONEncode({kind="oversized_record",id=record.id,originalKind=record.kind,bytes=#text})
        end
        if bytes+#text+1>C.partBytes-512 then w.flush() end
        buffer[#buffer+1]=text; bytes=bytes+#text+1
        job.records=job.records+1
    end
    return w
end
local groups={
    {"BasePart",{"CFrame","Size","Anchored","CanCollide","CanTouch","CanQuery","Transparency","Material","Color","AssemblyLinearVelocity"}},
    {"Model",{"PrimaryPart","WorldPivot"}}, {"Humanoid",{"Health","MaxHealth","WalkSpeed"}},
    {"ValueBase",{"Value"}}, {"ProximityPrompt",{"ActionText","ObjectText","Enabled","HoldDuration","MaxActivationDistance"}},
    {"ClickDetector",{"MaxActivationDistance"}}, {"GuiObject",{"Visible","LayoutOrder","Position","Size","BackgroundColor3"}},
    {"LayerCollector",{"Enabled"}}, {"TextLabel",{"Text"}}, {"TextButton",{"Text"}},
    {"ImageLabel",{"Image"}}, {"ImageButton",{"Image"}},
    {"MeshPart",{"MeshId","TextureID"}}, {"SpecialMesh",{"MeshId","TextureId"}},
    {"Decal",{"Texture"}}, {"ParticleEmitter",{"Texture","Enabled"}},
    {"Beam",{"Texture","Enabled"}}, {"Trail",{"Texture","Enabled"}},
    {"Sound",{"SoundId","Playing"}}, {"Animation",{"AnimationId"}},
    {"SurfaceAppearance",{"ColorMap","MetalnessMap","NormalMap","RoughnessMap"}},
    {"Tool",{"ToolTip","Enabled","TextureId","RequiresHandle"}}, {"Attachment",{"CFrame","WorldCFrame"}}, {"Terrain",{"WaterColor","WaterTransparency"}}, {"BaseScript",{"Disabled","RunContext"}}
}
local classProperties={}
local apiClasses={}
local metadataLoading=false
local function loadMetadata()
    if metadataLoading or busy then return end
    metadataLoading=true
    status("Carregando lista de propriedades do Roblox (somente JSON)...")
    task.spawn(function()
        local result,done
        local worker=task.spawn(function()
            local ok,data=pcall(function()
                return Http:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/MaximumADHD/Roblox-Client-Tracker/roblox/API-Dump.json"))
            end)
            if ok and type(data)=="table" and type(data.Classes)=="table" then result=data end
            done=true
        end)
        local deadline=os.clock()+15
        while not done and os.clock()<deadline and not closing do task.wait(0.1) end
        if not done then pcall(task.cancel,worker) end
        if result then
            for _,class in ipairs(result.Classes) do apiClasses[class.Name]=class end
            local saved=pcall(function() writefile(sessionRoot.."properties.json",Http:JSONEncode(result)) end)
            session.extendedProperties=saved
            classProperties={}; manifest.propertyMetadata="Roblox-Client-Tracker/API-Dump.json"
            status("Propriedades ampliadas prontas. Agora inicie a gravação.")
        else status("Metadados indisponíveis. O inventário padrão continua disponível.") end
        metadataLoading=false
    end)
end
if resumed and session.extendedProperties then
    local cached=readJson(sessionRoot.."properties.json")
    if cached and type(cached.Classes)=="table" then
        for _,class in ipairs(cached.Classes) do apiClasses[class.Name]=class end
        manifest.propertyMetadata="session/properties.json"
    end
end
local function props(object)
    local class=object.ClassName
    if not classProperties[class] then
        local list={}
        for _,group in ipairs(groups) do
            if is(object,group[1]) then for _,key in ipairs(group[2]) do list[#list+1]=key end end
        end
        local visited={}; local current=class
        local keys={}; for _,key in ipairs(list) do keys[key]=true end
        while apiClasses[current] and not visited[current] do
            visited[current]=true
            local entry=apiClasses[current]
            for _,member in ipairs(entry.Members or {}) do
                local key=member.Name
                if member.MemberType=="Property" and key~="Source" and key~="Parent" and not keys[key] then
                    keys[key]=true; list[#list+1]=key
                end
            end
            current=entry.Superclass
        end
        table.sort(list)
        classProperties[class]=list
    end
    local result={}
    for _,key in ipairs(classProperties[class]) do result[key]=safe(get(object,key)) end
    return result
end
local function record(object,detail)
    local r={kind="instance",id=id(object),parentId=id(object.Parent),name=object.Name,class=object.ClassName,path=path(object)}
    local ok,attrs=pcall(object.GetAttributes,object)
    if ok then
        r.attributes={}
        for key,v in pairs(attrs) do r.attributes[key]=safe(v) end
    end
    local tok,tags=pcall(Collection.GetTags,Collection,object)
    if tok and #tags>0 then r.tags=tags end
    if detail then r.properties=props(object) end
    if is(object,"LuaSourceContainer") then
        local sok,s=pcall(function() return object.Source end)
        r.sourceStatus=sourceStatus(sok,s)
    end
    return r
end
local function find(root,names)
    local current=root
    for name in names:gmatch("[^/]+") do
        current=current and current:FindFirstChild(name)
    end
    return current
end
local function roots(mode)
    local list={}
    local function add(object) if object then list[#list+1]=object end end
    if mode=="full" then
        for _,name in ipairs({"Workspace","ReplicatedStorage","ReplicatedFirst","Lighting","SoundService","StarterGui","StarterPack","StarterPlayer","Teams","Players","MaterialService","TextChatService"}) do
            local ok,s=pcall(game.GetService,game,name); if ok then add(s) end
        end
    else
        for _,p in ipairs({"Remotes","EnemyPads","Shared/Config","Shared/Rules","Client/Core","Client/Controllers","Client/UI/Screens","Client/UI/Packs"}) do add(find(RS,p)) end
        for _,p in ipairs({"Enemies","BossChests","BossPortals","PackStacks","Map/Bases","Map/Areas","CardShrine","DungeonMaps","DungeonStuff","DungeonPortal","DungeonShop"}) do add(find(workspace,p)) end
    end
    if mode=="full" then return list end
    add(player:FindFirstChild("PlayerScripts")); add(player:FindFirstChild("Backpack")); add(player:FindFirstChild("leaderstats"))
    add(player)
    return list
end
local decoration={UIStroke=true,UIGradient=true,UICorner=true,UIPadding=true,UIListLayout=true,UIGridLayout=true,Attachment=true}
local function scan(job,w)
    local stack=roots(job.mode)
    local seen={}
    job.roots={}
    for _,object in ipairs(stack) do job.roots[#job.roots+1]=path(object) end
    while #stack>0 and not finishRequested do
        cooperate()
        local object=table.remove(stack)
        if object~=gui and not seen[object] then
            seen[object]=true
            job.visited=job.visited+1
            if job.visited>C.maxInstances then job.limitReached=true; break end
            local ok,children=pcall(object.GetChildren,object)
            if ok then for _,child in ipairs(children) do stack[#stack+1]=child end end
            local detail=job.mode=="full" or not decoration[object.ClassName]
            if detail then
                local rok,r=pcall(record,object,true)
                if rok then w.add(r) else job.readErrors=job.readErrors+1 end
            end
            if job.visited%200==0 then status(job.mode .. ": " .. job.visited .. " objetos; " .. job.parts .. " lotes salvos") end
        end
    end
end
local targets={"Shared/Config/DungeonConfig","Client/Controllers/DungeonPortal","Client/UI/Screens/DungeonShop","Shared/Config/CardConfig","Shared/Config/PackConfig","Shared/Config/EnemyConfig",
    "Shared/Config/AbilityConfig","Shared/Config/BaseConfig","Shared/Config/ZoneConfig","Shared/Config/PowerConfig",
    "Shared/Config/ShopConfig","Shared/Rules/CardStats","Shared/Rules/CardIndex","Shared/Rules/TreeEffects",
    "Client/Core/PlayerState","Client/Core/LocalEnemyRegistry","Client/Controllers/AbilityController",
    "Client/Controllers/BaseController","Client/Controllers/GateController","Client/Controllers/LocalEnemies",
    "Client/UI/Screens/SuperpowersUI","Client/UI/Screens/BaseUI","Client/UI/Screens/CardShrine",
    "Client/UI/Screens/UpgradeTree","Client/UI/Screens/UpgradeTreeHex","Client/UI/Screens/UpgradeTreeVariants",
    "Client/UI/Screens/UpgradesUI","Client/UI/Packs/PackOpening"}
local function sources(job,w)
    local objects={}
    if job.mode=="sources_all" then
        local stack=roots("full")
        local seen={}; local count=0
        while #stack>0 and not finishRequested do
            cooperate()
            local object=table.remove(stack)
            if object~=gui and not seen[object] then
                seen[object]=true; count=count+1
                if count>C.maxInstances then job.limitReached=true; break end
                if is(object,"LuaSourceContainer") then objects[#objects+1]=object end
                local ok,children=pcall(object.GetChildren,object)
                if ok then for _,child in ipairs(children) do stack[#stack+1]=child end end
            end
        end
    else
        for _,name in ipairs(targets) do
            local object=find(RS,name)
            if object then objects[#objects+1]=object else w.add({kind="missing_source_target",path=name}) end
        end
        local main=find(player,"PlayerScripts/ClientMain"); if main then objects[#objects+1]=main end
    end
    local timeoutHappened=false
    for _,object in ipairs(objects) do
        if finishRequested then break end
        cooperate(true)
        status("Scripts: " .. path(object))
        local ok,s=pcall(function() return object.Source end)
        local origin="Source"
        local state=sourceStatus(ok,s)
        if state~="nonempty" and type(decompile)=="function" and not timeoutHappened then
            origin="executor_decompile"
            local done=false
            local worker=task.spawn(function() ok,s=pcall(decompile,object); done=true end)
            local started=os.clock()
            while not done and not cancelled and not finishRequested and os.clock()-started<C.decompileTimeout do task.wait(0.1) end
            if not done then
                pcall(task.cancel,worker)
                timeoutHappened=true
                state=cancelled and "cancelled" or "timeout"
                s=nil
            else state=sourceStatus(ok,s) end
        end
        local metadata={kind="source",id=id(object),path=path(object),origin=origin,status=state,
            reconstructed=origin=="executor_decompile",notValidated=true}
        if state=="nonempty" then
            metadata.bytes=#s
            metadata.truncated=#s>C.sourceLimit
            s=cut(s,C.sourceLimit)
            local offset,chunk=1,0
            while offset<=#s and not finishRequested do
                cooperate()
                local text=cut(s:sub(offset, math.min(#s,offset+C.sourceChunk+4)),C.sourceChunk)
                chunk=chunk+1
                w.add({kind="source_chunk",id=id(object),chunk=chunk,text=text})
                offset=offset+#text
            end
            metadata.chunks=chunk
        elseif not ok then metadata.error=cut(tostring(s),500) end
        w.add(metadata)
        job.visited=job.visited+1
        s=nil
    end
    job.decompileStoppedAfterTimeout=timeoutHappened
end
local connections={}
local function disconnect()
    for _,connection in ipairs(connections) do pcall(connection.Disconnect,connection) end
    connections={}
end
local function observe(job,w)
    local started=os.clock()
    local queue={}
    local tracked=setmetatable({}, {__mode="k"})
    local signatures=setmetatable({}, {__mode="k"})
    local attached=setmetatable({}, {__mode="k"})
    local remoteConnections={}
    local count=0
    local function fingerprint(text)
        local a,b=5381,0
        for i=1,#text do
            local byte=string.byte(text,i)
            a=bit32.bxor((a*33)%4294967296,byte)
            b=(b+byte*i)%4294967296
        end
        return tostring(#text)..":"..tostring(a)..":"..tostring(b)
    end
    local nextSave,nextStatus=0,0
    job.unlimitedDuration=true; job.droppedByKind={}; job.cycles=0
    local function excluded(o)
        return o==gui or o:IsDescendantOf(gui)
    end
    local function push(r)
        if paused or cancelled or finishRequested then return end
        if #queue>=2048 then
            job.dropped=job.dropped+1
            job.droppedByKind[r.kind]=(job.droppedByKind[r.kind] or 0)+1
            return
        end
        r.elapsed=os.clock()-started; queue[#queue+1]=r
    end
    local function pump()
        local pending=queue; queue={}
        for _,r in ipairs(pending) do w.add(r) end
        local now=os.clock()
        if now>=nextSave or teleportFlushRequested then teleportFlushRequested=false; nextSave=now+2; w.flush(); saveManifest() end
        if now>=nextStatus then
            nextStatus=now+1
            status(string.format("GRAVANDO: %d s | %d objetos | %d registros | %d lotes | perdas: %d\n%s",now-started,count,job.records,job.parts,job.dropped,prefix))
        end
    end
    local function snapshot(o,kind)
        local ok,r=pcall(record,o,true)
        if not ok then job.readErrors=job.readErrors+1; return end
        local encoded,text=pcall(Http.JSONEncode,Http,r)
        if not encoded then job.encodeErrors=job.encodeErrors+1; return end
        local signature=fingerprint(text)
        if signatures[o]~=signature then
            signatures[o]=signature; r.kind=kind; r.elapsed=os.clock()-started
            w.add(r)
        end
    end
    local function attach(o)
        if attached[o] then return end
        attached[o]=true
        if is(o,"RemoteEvent") or is(o,"UnreliableRemoteEvent") then
            local ok,connection=pcall(function()
                return o.OnClientEvent:Connect(function(...)
                    push({kind="received_event",id=id(o),path=path(o),args=safe(table.pack(...)),direction="server_to_client"})
                end)
            end)
            if ok then
                remoteConnections[o]=connection
                job.remotesObserved=(job.remotesObserved or 0)+1
                push({kind="remote_subscription",id=id(o),path=path(o)})
            else job.readErrors=job.readErrors+1 end
        end
    end
    local function register(o)
        if excluded(o) then return end
        if not tracked[o] then
            if count>=C.maxInstances then job.limitReached=true; return end
            tracked[o]=true; count=count+1
        end
        attach(o)
        snapshot(o,"instance_state")
    end
    local scanRoots=roots("full")
    job.roots={}
    for _,root in ipairs(scanRoots) do
        job.roots[#job.roots+1]=path(root)
        connections[#connections+1]=root.DescendantAdded:Connect(function(o)
            if not excluded(o) then
                attach(o)
                local success,r=pcall(record,o,false)
                if success then r.kind="instance_added"; push(r) else job.readErrors=job.readErrors+1 end
            end
        end)
        connections[#connections+1]=root.DescendantRemoving:Connect(function(o)
            if not excluded(o) then push({kind="instance_removed",id=id(o),path=path(o),deathConfirmed=false}) end
        end)
    end
    local ok,err=pcall(function()
        while not finishRequested do
            cooperate()
            local stack=table.clone(scanRoots)
            local seen={}
            local traversed=0
            while #stack>0 and not finishRequested do
                cooperate()
                local o=table.remove(stack)
                if not seen[o] and not excluded(o) then
                    seen[o]=true; traversed=traversed+1
                    if traversed>C.maxInstances then job.limitReached=true; break end
                    register(o)
                    local success,children=pcall(o.GetChildren,o)
                    if success then for _,child in ipairs(children) do stack[#stack+1]=child end end
                end
                pump()
            end
            -- Do not treat an incomplete scan as proof that objects disappeared.
            if #stack==0 and not finishRequested then
                for o,connection in pairs(remoteConnections) do
                    if not seen[o] then
                        connection:Disconnect(); remoteConnections[o]=nil; attached[o]=nil
                    end
                end
                for o in pairs(tracked) do
                    if not seen[o] then
                        if remoteConnections[o] then remoteConnections[o]:Disconnect(); remoteConnections[o]=nil end
                        attached[o]=nil; tracked[o]=nil; signatures[o]=nil; count=count-1
                    end
                end
            end
            job.cycles=job.cycles+1; job.trackedObjects=count
            pump()
            local untilTime=os.clock()+2
            repeat task.wait(0.1); cooperate(); pump() until os.clock()>=untilTime or finishRequested
        end
    end)
    disconnect()
    for _,connection in pairs(remoteConnections) do pcall(connection.Disconnect,connection) end
    pump()
    job.activeSeconds=os.clock()-started-pauseAccum
    job.endedBy=finishRequested and "user_finish" or (cancelled and "cancelled" or "error")
    if not ok then error(err,0) end
end


local function start(mode)
    if metadataLoading then status("Aguarde a lista de propriedades (até 15 segundos)."); return end
    if busy then status("Uma coleta esta em andamento. Pause ou cancele antes de iniciar outra."); return end
    busy=true; paused=false; cancelled=false; finishRequested=false; pauseAccum=0; pauseStarted=nil
    task.spawn(function()
        local job={id=#manifest.jobs+1,mode=mode,status="running",records=0,parts=0,bytes=0,
            visited=0,readErrors=0,encodeErrors=0,oversized=0,dropped=0,startedUtc=os.date("!%Y-%m-%dT%H:%M:%SZ")}
        manifest.jobs[#manifest.jobs+1]=job
        local w=writer(job); local started=os.clock()
        activeWriter=w; activeJob=job
        local ok,err=pcall(function()
            if mode=="observe" then armContinuation(); connectTeleport() end
            saveManifest()
            if mode=="sources" or mode=="sources_all" then sources(job,w) elseif mode=="observe" then observe(job,w) else scan(job,w) end
        end)
        disconnect()
        job.status=ok and ((finishRequested and mode~="observe") and "stopped" or "complete") or (cancelled and "cancelled" or "failed")
        if not ok then job.error=cut(tostring(err),1000) end
        job.durationSeconds=os.clock()-started
        local flushed,flushError=pcall(function() w.flush(); saveManifest() end)
        if not flushed then job.status="write_failed"; job.error=tostring(flushError) end
        busy=false; activeWriter=nil; activeJob=nil
        if mode=="observe" and not manifest.lastTeleport then stopContinuation() end
        status(mode .. ": " .. job.status .. ". " .. job.records .. " registros / " .. job.parts .. " lotes.\n" .. prefix .. "manifest.json" .. (job.error and ("\n" .. job.error) or ""))
        if notify and not closing then notify(job.status=="complete" and "Captura concluída" or "Captura encerrada",job.status .. " | " .. job.parts .. " lotes salvos | perdas: " .. job.dropped) end
        if closing then gui:Destroy() end
    end)
end
local function make(class,properties,parent)
    local object=Instance.new(class)
    for key,v in pairs(properties) do object[key]=v end
    object.Parent=parent
    return object
end
gui=make("ScreenGui",{Name="AnonHubReaderV4",ResetOnSpawn=false,DisplayOrder=1000},playerGui)
local panel=make("Frame",{Size=UDim2.fromScale(0.9,0.8),Position=UDim2.fromScale(0.05,0.1),BackgroundColor3=Color3.fromRGB(20,25,36)},gui)
make("UISizeConstraint",{MaxSize=Vector2.new(750,600)},panel)
make("TextLabel",{Size=UDim2.new(1,-130,0,32),Position=UDim2.fromOffset(10,4),Text="AnonHub Reader v4.1 | Lobby + Jogo",TextSize=18,TextColor3=Color3.new(1,1,1),BackgroundTransparency=1},panel)
statusLabel=make("TextLabel",{Size=UDim2.new(1,-20,0.27,0),Position=UDim2.fromOffset(10,40),Text="Sem limite de tempo: inicie, minimize e jogue. Use PARAR E SALVAR ao terminar. Pasta: " .. prefix,TextWrapped=true,TextSize=14,TextColor3=Color3.new(1,1,1),BackgroundTransparency=1},panel)

make("UICorner",{CornerRadius=UDim.new(0,14)},panel)
make("UIStroke",{Color=Color3.fromRGB(45,190,130),Thickness=1.5},panel)
floating=make("TextButton",{Size=UDim2.fromOffset(160,48),Position=UDim2.new(0,12,0.5,-24),Text="AH | CAPTURANDO",TextSize=14,TextColor3=Color3.new(1,1,1),BackgroundColor3=Color3.fromRGB(20,65,50),Visible=false},gui)
make("UICorner",{CornerRadius=UDim.new(0,14)},floating)
floating.Activated:Connect(function() panel.Visible=true; floating.Visible=false end)
local minimize=make("TextButton",{Size=UDim2.fromOffset(105,30),Position=UDim2.new(1,-115,0,6),Text="Minimizar",TextSize=14,TextColor3=Color3.new(1,1,1),BackgroundColor3=Color3.fromRGB(38,65,60)},panel)
make("UICorner",{CornerRadius=UDim.new(0,8)},minimize)
minimize.Activated:Connect(function() panel.Visible=false; floating.Visible=true end)
local toast=make("TextButton",{AnchorPoint=Vector2.new(0.5,0),Position=UDim2.new(0.5,0,0,16),Size=UDim2.new(0.85,0,0,80),TextWrapped=true,TextSize=16,TextColor3=Color3.new(1,1,1),BackgroundColor3=Color3.fromRGB(20,65,50),Visible=false},gui)
make("UISizeConstraint",{MaxSize=Vector2.new(650,90)},toast)
make("UICorner",{CornerRadius=UDim.new(0,12)},toast)
toast.Activated:Connect(function() toast.Visible=false; panel.Visible=true; floating.Visible=false end)
notify=function(title,body)
    toast.Text=title .. "\n" .. body .. "\nToque para abrir os detalhes."
    toast.Visible=true
    if floating then floating.Text="AH | FINALIZADO" end
    pcall(function() game:GetService("StarterGui"):SetCore("SendNotification",{Title=title,Text=body,Duration=12}) end)
end

teleportLabel=make("TextLabel",{Size=UDim2.new(1,-20,0,30),Position=UDim2.new(0,10,0.34,0),Text=teleportAvailable and "Teleporte: suporte disponível" or "Teleporte: sem suporte — retome manualmente",TextWrapped=true,TextSize=13,TextColor3=Color3.fromRGB(90,230,160),BackgroundTransparency=1},panel)
local buttons=make("ScrollingFrame",{Size=UDim2.new(1,-20,0.6,-12),Position=UDim2.new(0,10,0.4,0),CanvasSize=UDim2.new(),AutomaticCanvasSize=Enum.AutomaticSize.Y,ScrollBarThickness=5,BackgroundTransparency=1},panel)
make("UIListLayout",{Padding=UDim.new(0,6),SortOrder=Enum.SortOrder.LayoutOrder},buttons)
local order=0
local function button(text,action)
    order=order+1
    local b=make("TextButton",{Size=UDim2.new(1,-8,0,38),LayoutOrder=order,Text=text,TextSize=14,TextColor3=Color3.new(1,1,1),BackgroundColor3=Color3.fromRGB(42,57,80)},buttons)
    b.Activated:Connect(action); return b
end
button("1. Ampliar propriedades (metadados JSON; opcional)",loadMetadata)
button("2. GRAVAR ATÉ EU PARAR — inventário + alterações",function() toast.Visible=false; start("observe") end)
button("PARAR E SALVAR",function()
    stopContinuation()
    if busy then
        finishRequested=true
        if paused then pauseAccum=pauseAccum+os.clock()-(pauseStarted or os.clock()); pauseStarted=nil end
        paused=false
        status("Finalizando e salvando os últimos registros...")
    end
end)
button("3. Inventário completo — fotografia única",function() start("full") end)
button("4. Scripts acessíveis — opcional, após parar",function() start("sources_all") end)
local pauseButton
pauseButton=button("Pausar / retomar",function() if busy then paused=not paused; if paused then pauseStarted=os.clock() else pauseAccum=pauseAccum+os.clock()-(pauseStarted or os.clock()); pauseStarted=nil end; pauseButton.Text=paused and "Retomar" or "Pausar / retomar" end end)
button("Cancelar coleta atual",function() stopContinuation(); cancelled=true; paused=false end)
button("Copiar resumo pequeno",function()
    local jobs={}
    for _,j in ipairs(manifest.jobs) do jobs[#jobs+1]={mode=j.mode,status=j.status,records=j.records,parts=j.parts,errors=j.readErrors+j.encodeErrors} end
    local text=Http:JSONEncode({sessionId=sessionId,segmentId=segmentId,placeId=game.PlaceId,prefix=prefix,files=manifest.totalFiles or #manifest.files,jobs=jobs,capabilities=manifest.capabilities})
    local clip=setclipboard or toclipboard
    if #text>6000 then text=Http:JSONEncode({prefix=prefix,files=manifest.totalFiles or #manifest.files,message="Envie manifest.json"}) end
    local ok=type(clip)=="function" and pcall(clip,text)
    status(ok and "Resumo copiado. Envie a pasta de arquivos pelo MuMu." or "Clipboard indisponivel. Envie manifest.json.")
end)
button("Fechar e liberar observadores",function()
    stopContinuation()
    if teleportConnection then teleportConnection:Disconnect(); teleportConnection=nil end
    cancelled=true; paused=false; closing=true; disconnect()
    if not busy then gui:Destroy() else status("Finalizando lote antes de fechar...") end
end)
print("[AnonHub Reader v4] Saida: " .. prefix .. "manifest.json")

if resumed then
    panel.Visible=false; floating.Visible=true
    start("observe")
    pcall(function() game:GetService("StarterGui"):SetCore("SendNotification",{Title="Gravação retomada",Text="Novo place: "..game.PlaceId.." | mesma sessão",Duration=8}) end)
end
