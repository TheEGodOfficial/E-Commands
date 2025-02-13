local tpenabled = true

if getgenv ~= nil and getgenv().ComeBackOnTeleport ~= nil then
    tpenabled = getgenv().ComeBackOnTeleport
end

local function ontp(s)
    if queue_on_teleport then
        queue_on_teleport(s)
    elseif queueonteleport then
        queueonteleport(s)
    else
        warn("Executor does not support queue_on_teleport")
    end
end

task.spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEGodOfficial/E-Commands/main/Holder/Source.lua", true))()
end

if tpenabled == false then
    return
end
ontp([[if game:IsLoaded() then else game.Loaded:Wait() end local plr = game:GetService("Players").LocalPlayer if not plr.Character then plr.CharacterAdded:Wait() end loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEGodOfficial/E-Commands/main/Holder/Loader.lua", true))()]])
