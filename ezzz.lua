local allowedNames = {"BettyVinheim", "RaVexillium"}  -- İzin verilen isimler
local guiTimeLimit = 15  -- GUI için 15 saniye süre
local kickMessage = "[WHITELIST DEĞİLSİN EŞEK]"  -- Hata mesajı

-- Sesler (ID'ler)
local correctSoundID = "rbxassetid://1584394759"  -- Doğru isim girildiğinde çalacak ses
local wrongSoundID = "rbxassetid://97933839986546"  -- Yanlış isim girildiğinde çalacak ses
local guiOpenSoundID = "rbxassetid://1978402480"  -- GUI açıldığında çalacak ses (loop)

-- Ses nesnesi
local loopSound = Instance.new("Sound")
loopSound.SoundId = guiOpenSoundID
loopSound.Looped = true  -- Döngüye alınır
loopSound.Volume = 1
loopSound.Parent = game.Workspace

-- Kullanıcı doğrulama flag
local isWhitelisted = false

-- GUI oluşturma
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 350, 0, 250)
frame.Position = UDim2.new(0.5, -175, 0.5, -125)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.3  -- Daha şeffaf arka plan
frame.BorderSizePixel = 5
frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
frame.Parent = screenGui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0, 300, 0, 40)
textLabel.Position = UDim2.new(0, 25, 0, 15)
textLabel.Text = "Roblox ismin ney beta?"
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.BackgroundTransparency = 1
textLabel.TextSize = 22
textLabel.Font = Enum.Font.GothamBold
textLabel.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 300, 0, 40)
textBox.Position = UDim2.new(0, 25, 0, 65)
textBox.TextColor3 = Color3.fromRGB(0, 0, 0)
textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textBox.PlaceholderText = "İzin verilen ismi yazın"
textBox.TextSize = 18
textBox.Font = Enum.Font.Gotham
textBox.Parent = frame

local submitButton = Instance.new("TextButton")
submitButton.Size = UDim2.new(0, 120, 0, 40)
submitButton.Position = UDim2.new(0.5, -60, 0, 120)
submitButton.Text = "Gönder"
submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
submitButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
submitButton.TextSize = 20
submitButton.Font = Enum.Font.Gotham
submitButton.Parent = frame

local timerLabel = Instance.new("TextLabel")
timerLabel.Size = UDim2.new(0, 120, 0, 40)
timerLabel.Position = UDim2.new(0, 25, 0, 175)
timerLabel.Text = "Kalan Süre: 15"
timerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
timerLabel.BackgroundTransparency = 1
timerLabel.TextSize = 18
timerLabel.Font = Enum.Font.Gotham
timerLabel.Parent = frame

-- GUI açıldığında ses başlatılır
loopSound:Play()

-- Timer başlatma
local timeLeft = guiTimeLimit
local timer = tick()

-- GUI zamanlayıcı
game:GetService("RunService").Heartbeat:Connect(function()
    if isWhitelisted then return end -- Eğer doğrulanmışsa zamanlayıcıyı çalıştırma
    local elapsedTime = tick() - timer
    timeLeft = guiTimeLimit - math.floor(elapsedTime)
    timerLabel.Text = "Kalan Süre: " .. timeLeft
    
    if timeLeft <= 0 then
        -- Süre doldu, oyuncuyu kickle
        loopSound:Stop()  -- Ses durduruluyor
        player:Kick(kickMessage)
    end
end)

-- Gönder butonuna tıklandığında isim kontrolü
submitButton.MouseButton1Click:Connect(function()
    local playerName = textBox.Text
    if table.find(allowedNames, playerName) then
        -- Doğru isim girildi
        isWhitelisted = true  -- Kullanıcı doğrulandı
        loopSound:Stop()  -- Döngü sesini durdur
        local correctSound = Instance.new("Sound")
        correctSound.SoundId = correctSoundID
        correctSound.Parent = game.Workspace
        correctSound:Play()
        textLabel.Text = "Whitelist eklendin!"
        textLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
        textLabel.TextSize = 24
        textLabel.Font = Enum.Font.GothamBold
        -- İsim eklendi, GUI kapanabilir ya da animasyon yapılabilir
        frame:TweenPosition(UDim2.new(0.5, -175, 1, 100), "Out", "Quart", 0.5, true)
    else
        -- Yanlış isim girildi
        loopSound:Stop()  -- Döngü sesini durdur
        local wrongSound = Instance.new("Sound")
        wrongSound.SoundId = wrongSoundID
        wrongSound.Parent = game.Workspace
        wrongSound:Play()
        player:Kick(kickMessage)
    end
end)

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
local Camera = game:GetService("Workspace").CurrentCamera
local ESPEnabled = true -- ESP başlangıçta açık
local MaxDistance = 200 -- 200 stud mesafe sınırı

local function DrawText()
    local t = Drawing.new("Text")
    t.Visible = false
    t.Center = true
    t.Outline = true
    t.Size = 8
    t.Color = Color3.fromRGB(255, 255, 255)
    t.Transparency = 1
    return t
end

local function DrawLine()
    local l = Drawing.new("Line")
    l.Visible = false
    l.From = Vector2.new(0, 0)
    l.To = Vector2.new(1, 1)
    l.Color = Color3.fromRGB(255, 0, 0)
    l.Thickness = 1
    l.Transparency = 1
    return l
end

local function DrawESP(plr)
    repeat wait() until plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil
    local limbs = {}
    local infoText = DrawText()

    local R15 = (plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15) and true or false
    if R15 then 
        limbs = {
            -- Spine
            Head_UpperTorso = DrawLine(),
            UpperTorso_LowerTorso = DrawLine(),
            -- Left Arm
            UpperTorso_LeftUpperArm = DrawLine(),
            LeftUpperArm_LeftLowerArm = DrawLine(),
            LeftLowerArm_LeftHand = DrawLine(),
            -- Right Arm
            UpperTorso_RightUpperArm = DrawLine(),
            RightUpperArm_RightLowerArm = DrawLine(),
            RightLowerArm_RightHand = DrawLine(),
            -- Left Leg
            LowerTorso_LeftUpperLeg = DrawLine(),
            LeftUpperLeg_LeftLowerLeg = DrawLine(),
            LeftLowerLeg_LeftFoot = DrawLine(),
            -- Right Leg
            LowerTorso_RightUpperLeg = DrawLine(),
            RightUpperLeg_RightLowerLeg = DrawLine(),
            RightLowerLeg_RightFoot = DrawLine(),
        }
    else 
        limbs = {
            Head_Spine = DrawLine(),
            Spine = DrawLine(),
            LeftArm = DrawLine(),
            LeftArm_UpperTorso = DrawLine(),
            RightArm = DrawLine(),
            RightArm_UpperTorso = DrawLine(),
            LeftLeg = DrawLine(),
            LeftLeg_LowerTorso = DrawLine(),
            RightLeg = DrawLine(),
            RightLeg_LowerTorso = DrawLine()
        }
    end

    local function Visibility(state)
        for _, v in pairs(limbs) do
            v.Visible = state
        end
        infoText.Visible = state
    end

    local function UpdateText(HUM)
        local humanoid = plr.Character:FindFirstChild("Humanoid")
        local team = plr.Team and plr.Team.Name or "No Team"
        local distance = math.floor((Player.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude)
        infoText.Position = Vector2.new(HUM.X, HUM.Y - 70) -- Sağlık ve mesafe yazısını yukarıda göster

        -- Sağlık ve mesafeyi alt alta göstermek, "Stud" yazmadan sadece mesafeyi göstermek
        infoText.Text = string.format("%s\nHealth: %d\n[%d]", team, math.floor(humanoid.Health), distance)
        infoText.Color = plr.TeamColor.Color -- Takımın rengini ayarla
    end

    local function Updater()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character.Humanoid.Health > 0 then
                local HUM, vis = Camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
                local distance = (Player.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude
                if vis and distance <= MaxDistance and ESPEnabled then
                    UpdateText(HUM)
                    Visibility(true)
                else
                    Visibility(false)
                end
            else
                Visibility(false)
                if game.Players:FindFirstChild(plr.Name) == nil then 
                    for _, v in pairs(limbs) do
                        v:Remove()
                    end
                    infoText:Remove()
                    connection:Disconnect()
                end
            end
        end)
    end

    coroutine.wrap(Updater)()
end

for _, v in pairs(game:GetService("Players"):GetPlayers()) do
    if v.Name ~= Player.Name then
        DrawESP(v)
    end
end

game.Players.PlayerAdded:Connect(function(newplr)
    if newplr.Name ~= Player.Name then
        DrawESP(newplr)
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.End then
        ESPEnabled = not ESPEnabled
    end
end)
