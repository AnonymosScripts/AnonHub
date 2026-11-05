-- Luau · loader.lua · Evolvy / Anonymous chapter 2 · Roblox / Delta · Luau 0.745
local url="https://raw.githubusercontent.com/AnonymosScripts/Script-1-Evolvy-Hub/main/potato/chapter2.lua?v=0.11.1"
local cache="Evolvy_Chapter2_Main.luau"
local ok,source=pcall(function() return game:HttpGet(url) end)
local function compile(value)
    if type(value)~="string" or #value<1000 or string.sub(value,1,7)~="-- Luau" then return nil,"Resposta do arquivo invalida." end
    return loadstring(value,"Evolvy Chapter 2")
end
local run,message=nil,nil
if ok then run,message=compile(source) end
local fromNetwork=run~=nil
if not run and type(readfile)=="function" then
    local readOk,saved=pcall(readfile,cache)
    if readOk then run,message=compile(saved) end
end
assert(run,"Evolvy: nao foi possivel carregar o capitulo 2. "..tostring(message or source))
if fromNetwork and type(writefile)=="function" then pcall(writefile,cache,source) end
run()
