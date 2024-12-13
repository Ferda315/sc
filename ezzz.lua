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
textLabel.Text = "İlk Roblox ismin ney?"
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
local ESPEnabled = false
local maxDistance = 200 -- Maksimum mesafe (studs)
local ESPFolder = Instance.new("Folder") -- ESP'lerin saklanacağı yer
ESPFolder.Name = "ESPFolder"
ESPFolder.Parent = game.CoreGui

-- Highlight nesnelerini takip etmek için bir tablo
local highlights = {}

-- Highlight Object Creation (highlightları tabloya ekliyoruz)
local function CreateHighlight(Character)
    local highlight = Instance.new("Highlight")
    highlight.Adornee = Character
    highlight.FillColor = Color3.fromRGB(255, 0, 0)
    highlight.FillTransparency = 0.75 -- Daha az transparan
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = Character

    -- Highlight'ı tabloya ekle
    table.insert(highlights, highlight)
    return highlight
end

-- ESP oluşturma fonksiyonu
local function createESP(player)
    if player == game.Players.LocalPlayer then return end
    if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then return end

    -- Daha önce bu oyuncuya ESP oluşturulmuşsa sil
    local existingESP = ESPFolder:FindFirstChild(player.Name)
    if existingESP then
        existingESP:Destroy()
    end

    -- Billboard GUI
    local billboard = Instance.new("BillboardGui")
    billboard.Name = player.Name
    billboard.Adornee = player.Character.HumanoidRootPart
    billboard.Size = UDim2.new(4, 0, 3, 0)
    billboard.AlwaysOnTop = true
    billboard.StudsOffset = Vector3.new(0, 3, 0)
    billboard.Parent = ESPFolder

    -- Sağlık metni
    local healthText = Instance.new("TextLabel", billboard)
    healthText.Size = UDim2.new(1, 0, 0.4, 0)
    healthText.Position = UDim2.new(0, 0, 0, 0)
    healthText.BackgroundTransparency = 1
    healthText.Font = Enum.Font.SourceSans
    healthText.TextSize = 12
    healthText.TextStrokeTransparency = 0.5
    healthText.TextColor3 = Color3.new(1, 1, 1) -- Beyaz
    healthText.Text = "Health: 0"

    -- Takım ve mesafe etiketi
    local teamLabel = Instance.new("TextLabel", billboard)
    teamLabel.Size = UDim2.new(1, 0, 0.4, 0)
    teamLabel.Position = UDim2.new(0, 0, 0.4, 0)
    teamLabel.BackgroundTransparency = 1
    teamLabel.Font = Enum.Font.SourceSans
    teamLabel.TextSize = 12
    teamLabel.TextStrokeTransparency = 0.5
    teamLabel.TextColor3 = player.Team and player.Team.TeamColor.Color or Color3.new(1, 1, 1) -- Takım rengi veya beyaz
    teamLabel.Text = player.Team and player.Team.Name or "No Team"

    local studLabel = Instance.new("TextLabel", billboard)
    studLabel.Size = UDim2.new(1, 0, 0.4, 0)
    studLabel.Position = UDim2.new(0, 0, 0.8, 0)
    studLabel.BackgroundTransparency = 1
    studLabel.Font = Enum.Font.SourceSans
    studLabel.TextSize = 12
    studLabel.TextStrokeTransparency = 0.5
    studLabel.TextColor3 = Color3.new(1, 1, 1) -- Beyaz
    studLabel.Text = "Stud: 0"

    -- Highlight Eklenmesi
    local highlight = CreateHighlight(player.Character)

    -- Güncelleme fonksiyonu
    local function updateESP()
        if player.Character and player.Character:FindFirstChild("Humanoid") and player.Character:FindFirstChild("HumanoidRootPart") then
            local humanoid = player.Character.Humanoid
            local rootPart = player.Character.HumanoidRootPart

            -- Can metnini güncelle
            healthText.Text = "Health: " .. math.floor(humanoid.Health)

            -- Takım metnini güncelle
            teamLabel.Text = player.Team and player.Team.Name or "No Team"

            -- Mesafe metnini güncelle
            local distance = (rootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            studLabel.Text = "Stud: " .. math.floor(distance)

            -- Takım rengini ayarla
            teamLabel.TextColor3 = player.Team and player.Team.TeamColor.Color or Color3.new(1, 1, 1)
        end
    end

    -- Mesafe kontrolü
    local function checkDistance()
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            billboard.Enabled = distance <= maxDistance
            highlight.Enabled = distance <= maxDistance
        end
    end

    -- Sürekli güncelleme
    local heartbeat
    heartbeat = game:GetService("RunService").Heartbeat:Connect(function()
        if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
            if billboard then
                billboard:Destroy()
            end
            if highlight then
                highlight:Destroy()
            end
            if heartbeat then
                heartbeat:Disconnect()
            end
            return
        else
            updateESP()
            checkDistance()
        end
    end)

    -- return highlight for future toggle
    return highlight
end

-- ESP açma/kapatma fonksiyonu
local function toggleESP()
    ESPEnabled = not ESPEnabled
    if ESPEnabled then
        -- Mevcut oyunculara ESP ekle
        for _, player in pairs(game.Players:GetPlayers()) do
            local highlight = createESP(player)
            player.CharacterAdded:Connect(function()
                task.wait(1)
                local newHighlight = createESP(player)
            end)
        end

        -- Yeni oyunculara ESP ekle
        game.Players.PlayerAdded:Connect(function(player)
            player.CharacterAdded:Connect(function()
                task.wait(1)
                createESP(player)
            end)
        end)
    else
        -- Tüm ESP'leri ve Highlight'ları kaldır
        ESPFolder:ClearAllChildren()
        for _, highlight in ipairs(highlights) do
            if highlight and highlight.Parent then
                highlight:Destroy()
            end
        end
        highlights = {} -- Tablonun içini temizle
    end
end

-- "END" tuşu ile ESP aç/kapa
game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.End then
        toggleESP()
    end
end)

-- Script injectlendiğinde
toggleESP() -- ESP'yi otomatik olarak aç
