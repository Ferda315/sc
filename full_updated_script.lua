-- Gerekli servisleri tanımlayın
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Ekranda belirgin bir mesaj gösterme
local function showMessage()
    local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
    local textLabel = Instance.new("TextLabel", screenGui)
    textLabel.Size = UDim2.new(0, 400, 0, 100)
    textLabel.Position = UDim2.new(0.5, -200, 0.5, -50)
    textLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.Text = "Please join the server for script work  https://discord.gg/m7GJQnk3xh"
    textLabel.TextSize = 24
    textLabel.TextScaled = true
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextStrokeTransparency = 0

    wait(5) -- 5 saniye bekletme
    screenGui:Destroy()
end

-- Mesajı göster
showMessage()
