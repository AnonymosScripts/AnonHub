-- Luau · Compatibility entry point for the original AnonHub link
local url="https://raw.githubusercontent.com/AnonymosScripts/AnonHub/main/loader.lua"
local ok,source=pcall(game.HttpGet,game,url)
local run=ok and type(source)=="string" and loadstring(source,"AnonHub")
if run then
    run()
else
    warn("AnonHub: loader unavailable / loader indisponível")
end
