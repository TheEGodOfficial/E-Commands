--[[
THIS IS NOT BEING USED BECAUSE IT IS BROKEN ON A LOT OF EXPLOITS
DO NOT USE IT OR ELSE IT WONT WORK
YOU HAVE BEEN WARNED
]]


local function ontp(s)
    if syn and syn.queue_on_teleport then
        syn.queue_on_teleport(s)
    elseif queue_on_teleport then
        queue_on_teleport(s)
    end
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEGodOfficial/E-Commands/main/Holder/Source.lua", true))()
ontp("if not game:IsLoaded() then game.Loaded:Wait() end wait(3) if not game.Players.LocalPlayer.Character then game.Players.LocalPlayer.CharacterAdded:Wait() end loadstring(game:HttpGet('https://raw.githubusercontent.com/TheEGodOfficial/E-Commands/main/Holder/Loader.lua'))()")
