local tpenabled = true

local env = getgenv and getgenv() or _G or shared

if not env.E_COMMANDS_LOADED then
	env.E_COMMANDS_LOADED = true
else
	return
end

if env and env.ComeBackOnTeleport ~= nil then
    tpenabled = env.ComeBackOnTeleport
else
    warn("Executor does not support any of the global variables (running with ComeBackOnTeleport on true)")
end

local function ontp(s)
    if queue_on_teleport then
        queue_on_teleport(s)
    elseif queueonteleport then
        queueonteleport(s)
    else
        warn("Executor does not support queue_on_teleport (ComeBackOnTeleport will not work)")
    end
end

task.spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEGodOfficial/E-Commands/refs/heads/main/Holder/Source.lua"))()
end)

if tpenabled == false then
    return
end
ontp([[
    if game:IsLoaded() then
    else
        game.Loaded:Wait()
    end
    local plr = game:GetService("Players").LocalPlayer
    if not plr.Character then
        plr.CharacterAdded:Wait()
    end
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEGodOfficial/E-Commands/refs/heads/main/Holder/Loader.lua"))()]])
