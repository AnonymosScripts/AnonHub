-- Luau · loader.lua · AnonHub Chapter 2 · Roblox / Delta · Luau 0.745
local version="0.28.4"
local root="https://raw.githubusercontent.com/AnonymosScripts/"
local path="/main/potato/chapter2.lua?v="..version
local cache="Evolvy_Chapter2_Main.luau"
local function compile(value)
    if type(value)~="string" or #value<1000 or string.sub(value,1,7)~="-- Luau" then return nil,"Resposta do arquivo invalida." end
    if not string.find(value,'local BOOT_VERSION="'..version..'"',1,true) then
        return nil,"O arquivo ainda nao e da versao "..version..". Verifique se foi publicado."
    end
    return loadstring(value,"AnonHub Chapter 2")
end
local run,message,source=nil,nil,nil
for _,repository in ipairs({"AnonHub","Script-1-Evolvy-Hub"}) do
    local ok,body=pcall(game.HttpGet,game,root..repository..path)
    if ok then
        run,message=compile(body)
        if run then
            source=body
            break
        end
    end
end
local fromNetwork=run~=nil
if not run and type(readfile)=="function" then
    local readOk,saved=pcall(readfile,cache)
    if readOk then run,message=compile(saved) end
end
if not run then
    local detail=message or "Falha ao baixar o hub."
    warn("AnonHub "..version..": "..tostring(detail))
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification",{
            Title="AnonHub "..version.." / download",Text=tostring(detail):sub(1,140),Duration=12})
    end)
    return
end
if fromNetwork and type(writefile)=="function" then pcall(writefile,cache,source) end
run()
