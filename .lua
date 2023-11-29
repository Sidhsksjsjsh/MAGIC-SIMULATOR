local function Coins()
  game:GetService("ReplicatedStorage")["Events"]["CoinPickup"]:FireServer(49)
end

local Library = 
loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Window_1 = Library:NewWindow("MAGIC SIMULATOR")

local Tab1 = Window_1:NewSection("Main")

Tab1:CreateToggle("ADD COINS (+49)",function(value)
_G.CoinsConf = value
while wait() do
      if _G.CoinsConf == false then break end
        Coins()
    end
end)
