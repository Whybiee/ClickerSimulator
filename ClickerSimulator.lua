local backgrnd = game:GetService("Players").LocalPlayer.PlayerGui.shutdownUI.background
local titles = game:GetService("Players").LocalPlayer.PlayerGui.shutdownUI.background.title
local descript = game:GetService("Players").LocalPlayer.PlayerGui.shutdownUI.background.description
local counter = game:GetService("Players").LocalPlayer.PlayerGui.shutdownUI.background.countdown

titles.Text = "Ban Time"
descript.Text = "currently banning your account"
local thirysec = 10
counter.Text = thirysec
_G.toggle = true

function count()
spawn(function()
if _G.toggle then
backgrnd.Visible = true
else
backgrnd.Visible = false
end

while _G.toggle do wait(1)
    thirysec = thirysec - 1
    counter.Text = thirysec
    if counter.Text == "0" then
    _G.toggle = false
counter.Text = " "
    game.Players.LocalPlayer:Kick("You have been banned for exploiting. Join the discord to appeal if you think this was a mistake https://discord.gg/pressurestudios.")
    end
end
end)
end
count()
