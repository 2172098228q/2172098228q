local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "YY", HidePremium = false, SaveConfig = true,IntroText = "YY", ConfigFolder = "YY"})

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "YY"; Text ="YY"; Duration = 4; })

local about = Window:MakeTab({
    Name = "YY制作",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false

})

about:AddParagraph("作者快手号4370770866")
about:AddParagraph("自己用的")
about:AddParagraph("作者牢大爱喝冰红茶")
about:AddParagraph("请勿倒卖")

OrionLib:MakeNotification({
	Name = "YY",
	Content = "欢迎使用YY",
	Image = "rbxassetid://4483345998",
	Time = 2

})

local Tab = Window:MakeTab({

    Name = "绘制",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

local Section = Tab:AddSection({

	Name = "自用状态"

})

Tab:AddSlider({

	Name = "速度",

	Min = 16,

	Max = 200,

	Default = 16,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end    

})

Tab:AddSlider({

	Name = "跳跃高度",

	Min = 50,

	Max = 200,

	Default = 50,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end    

})

Tab:AddTextbox({

	Name = "跳跃高度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end

})

Tab:AddTextbox({

	Name = "移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end

})

Tab:AddTextbox({

	Name = "重力设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Workspace.Gravity = Value

	end

})

Tab:AddToggle({

	Name = "夜视",

	Default = false,

	Callback = function(Value)

		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end

	end

})

Tab:AddButton({

	Name = "绘制",

	Callback = function()

     loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/UNIVERSALESPLTX/main/README.md'),true))()

  	end    

})

Tab:AddButton({

	Name = "自瞄",

	Callback = function()

     local fov = 100 local smoothness = 10 local crosshairDistance = 5 local RunService = game:GetService("RunService") local UserInputService = game:GetService("UserInputService") local Players = game:GetService("Players") local Cam = game.Workspace.CurrentCamera local FOVring = Drawing.new("Circle") FOVring.Visible = true FOVring.Thickness = 2 FOVring.Color = Color3.fromRGB(0, 255, 0) FOVring.Filled = false FOVring.Radius = fov FOVring.Position = Cam.ViewportSize / 2 local Player = Players.LocalPlayer local PlayerGui = Player:WaitForChild("PlayerGui") local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "FovAdjustGui" ScreenGui.Parent = PlayerGui local Frame = Instance.new("Frame") Frame.Name = "MainFrame" Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) Frame.BorderColor3 = Color3.fromRGB(128, 0, 128) Frame.BorderSizePixel = 2 Frame.Position = UDim2.new(0.3, 0, 0.3, 0) Frame.Size = UDim2.new(0.4, 0, 0.4, 0) Frame.Active = true Frame.Draggable = true Frame.Parent = ScreenGui local MinimizeButton = Instance.new("TextButton") MinimizeButton.Name = "MinimizeButton" MinimizeButton.Text = "-" MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255) MinimizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50) MinimizeButton.Position = UDim2.new(0.9, 0, 0, 0) MinimizeButton.Size = UDim2.new(0.1, 0, 0.1, 0) MinimizeButton.Parent = Frame local isMinimized = false MinimizeButton.MouseButton1Click:Connect(function() isMinimized = not isMinimized if isMinimized then Frame:TweenSize(UDim2.new(0.1, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "+" else Frame:TweenSize(UDim2.new(0.4, 0, 0.4, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "-" end end) local FovLabel = Instance.new("TextLabel") FovLabel.Name = "FovLabel" FovLabel.Text = "自瞄范围" FovLabel.TextColor3 = Color3.fromRGB(255, 255, 255) FovLabel.BackgroundTransparency = 1 FovLabel.Position = UDim2.new(0.1, 0, 0.1, 0) FovLabel.Size = UDim2.new(0.8, 0, 0.2, 0) FovLabel.Parent = Frame local FovSlider = Instance.new("TextBox") FovSlider.Name = "FovSlider" FovSlider.Text = tostring(fov) FovSlider.TextColor3 = Color3.fromRGB(255, 255, 255) FovSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) FovSlider.Position = UDim2.new(0.1, 0, 0.3, 0) FovSlider.Size = UDim2.new(0.8, 0, 0.2, 0) FovSlider.Parent = Frame local SmoothnessLabel = Instance.new("TextLabel") SmoothnessLabel.Name = "SmoothnessLabel" SmoothnessLabel.Text = "自瞄平滑度" SmoothnessLabel.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessLabel.BackgroundTransparency = 1 SmoothnessLabel.Position = UDim2.new(0.1, 0, 0.5, 0) SmoothnessLabel.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessLabel.Parent = Frame local SmoothnessSlider = Instance.new("TextBox") SmoothnessSlider.Name = "SmoothnessSlider" SmoothnessSlider.Text = tostring(smoothness) SmoothnessSlider.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) SmoothnessSlider.Position = UDim2.new(0.1, 0, 0.7, 0) SmoothnessSlider.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessSlider.Parent = Frame local CrosshairDistanceLabel = Instance.new("TextLabel") CrosshairDistanceLabel.Name = "CrosshairDistanceLabel" CrosshairDistanceLabel.Text = "自瞄预判距离" CrosshairDistanceLabel.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceLabel.BackgroundTransparency = 1 CrosshairDistanceLabel.Position = UDim2.new(0.1, 0, 0.9, 0) CrosshairDistanceLabel.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceLabel.Parent = Frame local CrosshairDistanceSlider = Instance.new("TextBox") CrosshairDistanceSlider.Name = "CrosshairDistanceSlider" CrosshairDistanceSlider.Text = tostring(crosshairDistance) CrosshairDistanceSlider.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) CrosshairDistanceSlider.Position = UDim2.new(0.1, 0, 1.1, 0) CrosshairDistanceSlider.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceSlider.Parent = Frame local targetCFrame = Cam.CFrame local function updateDrawings() local camViewportSize = Cam.ViewportSize FOVring.Position = camViewportSize / 2 FOVring.Radius = fov end local function onKeyDown(input) if input.KeyCode == Enum.KeyCode.Delete then RunService:UnbindFromRenderStep("FOVUpdate") FOVring:Remove() end end UserInputService.InputBegan:Connect(onKeyDown) local function getClosestPlayerInFOV(trg_part) local nearest = nil local last = math.huge local playerMousePos = Cam.ViewportSize / 2 for _, player in ipairs(Players:GetPlayers()) do if player ~= Players.LocalPlayer then local part = player.Character and player.Character:FindFirstChild(trg_part) if part then local ePos, isVisible = Cam:WorldToViewportPoint(part.Position) local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude if distance < last and isVisible and distance < fov then last = distance nearest = player end end end end return nearest end RunService.RenderStepped:Connect(function() updateDrawings() local closest = getClosestPlayerInFOV("Head") if closest and closest.Character:FindFirstChild("Head") then local targetCharacter = closest.Character local targetHead = targetCharacter.Head local targetRootPart = targetCharacter:FindFirstChild("HumanoidRootPart") local isMoving = targetRootPart.Velocity.Magnitude > 0.1 local targetPosition if isMoving then targetPosition = targetHead.Position + (targetHead.CFrame.LookVector * crosshairDistance) else targetPosition = targetHead.Position end targetCFrame = CFrame.new(Cam.CFrame.Position, targetPosition) else targetCFrame = Cam.CFrame end Cam.CFrame = Cam.CFrame:Lerp(targetCFrame, 1 / smoothness) end) FovSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newFov = tonumber(FovSlider.Text) if newFov then fov = newFov else FovSlider.Text = tostring(fov) end end end) SmoothnessSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newSmoothness = tonumber(SmoothnessSlider.Text) if newSmoothness then smoothness = newSmoothness else SmoothnessSlider.Text = tostring(smoothness) end end end) CrosshairDistanceSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newCrosshairDistance = tonumber(CrosshairDistanceSlider.Text) if newCrosshairDistance then crosshairDistance = newCrosshairDistance else CrosshairDistanceSlider.Text = tostring(crosshairDistance) end end end)

  	end    

})

Tab:AddButton({

	Name = "俄州子追",

	Callback = function()

     loadstring(game:HttpGet("https://gist.githubusercontent.com/ClasiniZukov/e7547e7b48fa90d10eb7f85bd3569147/raw/f95cd3561a3bb3ac6172a14eb74233625b52e757/gistfile1.txt"))()

  	end    

})

local Tab = Window:MakeTab({

    Name = "内存",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "提升流畅",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/FPS-X-GUI/main/FPS_X.lua"))()

  	end    

})

Tab:AddButton({

	Name = "高清光影 ",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()

  	end    

})

Tab:AddButton({

	Name = "车子飞天",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()

  	end    

})

Tab:AddButton({

	Name = "防止掉线",

	Callback = function()

     	print("Anti Afk On")

		local vu = game:GetService("VirtualUser")

		game:GetService("Players").LocalPlayer.Idled:connect(function()

		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

		   wait(1)

		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

		end)

  	end    

})

Tab:AddButton({

	Name = "人物飞行",

	Callback = function()

     loadstring(game:HttpGet('https://pastebin.com/raw/U27yQRxS'))()

  	end    

})

Tab:AddButton({

	Name = "分身术",

	Callback = function()

     loadstring(game:GetObjects('rbxassetid://7339698872')[1].Source)()

  	end    

})

Tab:AddButton({

	Name = "人物动作",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/Zj4NnKs6"))()

  	end    

})

Tab:AddButton({

	Name = "Fc指令",

	Callback = function()

     loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

  	end    

})

Tab:AddButton({

	Name = "进入提示",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()

  	end    

})

Tab:AddButton({

	Name = "立刻死亡",

	Callback = function()

     game.Players.LocalPlayer.Character.Humanoid.Health=0

  	end    

})

Tab:AddButton({

	Name = "骂人无违规",

	Callback = function()

     loadstring(game:GetObjects("rbxassetid://1262435912")[1].Source)()

  	end    

})

Tab:AddButton({

	Name = "人物连跳",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()

  	end    

})

Tab:AddButton({

	Name = "人物踏空",

	Callback = function()

     loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()

  	end    

})

Tab:AddButton({

	Name = "人物铁拳",

	Callback = function()

     loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()

  	end    

})

Tab:AddButton({

	Name = "直升机旋转",

	Callback = function()

     if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://27432686"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true
local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=165113352"
hi.Volume = 2
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi:Play()

local spinSpeed = 40
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)

end)
else
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://507776043"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true
local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=165113352"
hi.Volume = 2
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi:Play()

local spinSpeed = 40
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)


end)    
end
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local u = game.Players.LocalPlayer
local urchar = u.Character

task.spawn(function()


qUp = Mouse.KeyUp:Connect(function(KEY)
if KEY == 'q' then
urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight - 3
end
end)
eUp = Mouse.KeyUp:Connect(function(KEY)
if KEY == 'e' then
urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight + 3
end
end)


end)

  	end    

})

Tab:AddButton({

	Name = "甩飞敌人",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()

  	end    

})

Tab:AddButton({

	Name = "灵魂出窍",

	Callback = function()

     for i, v in pairs(game.CoreGui:GetChildren()) do
    if v:FindFirstChild("UI") then
        v:Destroy()
    end
end
wait(1)

local UI = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Toggle = Instance.new("ImageLabel")
local Button = Instance.new("TextButton")
local Circle = Instance.new("ImageLabel")
local InvisText = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")

--Properties:

UI.Name = "UI"
UI.Parent = game:WaitForChild("CoreGui")

Main.Name = "Main"
Main.Parent = UI
Main.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.5, -75, 0.41232878, -37)
Main.Size = UDim2.new(0, 248, 0, 107)
Main.Image = "rbxassetid://3570695787"
Main.ImageColor3 = Color3.fromRGB(48, 48, 48)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.SliceScale = 0.120

Toggle.Name = "Toggle"
Toggle.Parent = Main
Toggle.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(0.5, -23, 0.565420568, -11)
Toggle.Size = UDim2.new(0, 46, 0, 22)
Toggle.Image = "rbxassetid://3570695787"
Toggle.ImageColor3 = Color3.fromRGB(200, 200, 200)
Toggle.ScaleType = Enum.ScaleType.Slice
Toggle.SliceCenter = Rect.new(100, 100, 100, 100)
Toggle.SliceScale = 0.120

Button.Name = "Button"
Button.Parent = Toggle
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Size = UDim2.new(1, 0, 1, 0)
Button.Font = Enum.Font.SourceSans
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 14.000
Button.TextTransparency = 1.000

local toggled = false
local debounce = false

Button.MouseButton1Click:Connect(
    function()
        if debounce == false then
            if toggled == true then
                debounce = true
                game:GetService("TweenService"):Create(
                    Toggle,
                    TweenInfo.new(0.25),
                    {ImageColor3 = Color3.fromRGB(200, 200, 200)}
                ):Play()
                game:GetService("TweenService"):Create(Circle, TweenInfo.new(0.25), {Position = UDim2.new(0, 2, 0, 2)}):Play(

                )
                wait(0.25)
                debounce = false
                toggled = false

                game.Players.LocalPlayer.Character.Humanoid.Health = 0
            elseif toggled == false then
                debounce = true
                game:GetService("TweenService"):Create(
                    Toggle,
                    TweenInfo.new(0.25),
                    {ImageColor3 = Color3.fromRGB(64, 200, 114)}
                ):Play()
                game:GetService("TweenService"):Create(
                    Circle,
                    TweenInfo.new(0.25),
                    {Position = UDim2.new(1, -20, 0, 2)}
                ):Play()
                wait(0.25)
                debounce = false
                toggled = true
                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v.Name == "Root" or v.Name == "RootJoint" then
                        v:Destroy()
                    end
                end
            end
        end
    end
)

Circle.Name = "Circle"
Circle.Parent = Toggle
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.BackgroundTransparency = 1.000
Circle.Position = UDim2.new(0, 2, 0, 2)
Circle.Size = UDim2.new(0, 18, 0, 18)
Circle.Image = "rbxassetid://3570695787"
Circle.ScaleType = Enum.ScaleType.Slice
Circle.SliceCenter = Rect.new(100, 100, 100, 100)
Circle.SliceScale = 0.120

InvisText.Name = "InvisText"
InvisText.Parent = Main
InvisText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InvisText.BackgroundTransparency = 1.000
InvisText.BorderColor3 = Color3.fromRGB(27, 42, 53)
InvisText.BorderSizePixel = 0
InvisText.Position = UDim2.new(0.0967741907, 0, 0, 0)
InvisText.Size = UDim2.new(0, 200, 0, 50)
InvisText.Font = Enum.Font.SourceSans
InvisText.Text = "通用隐身(出体)"
InvisText.TextColor3 = Color3.fromRGB(255, 255, 255)
InvisText.TextScaled = true
InvisText.TextSize = 14.000
InvisText.TextTransparency = 0.140
InvisText.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = Main
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.BorderColor3 = Color3.fromRGB(27, 42, 53)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.0241935477, 0, 0.738317728, 0)
Credits.Size = UDim2.new(0, 94, 0, 18)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Bebo Mods汉化组"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextTransparency = 0.250
Credits.TextWrapped = true

-- Scripts:

local UserInputService = game:GetService("UserInputService")
local runService = (game:GetService("RunService"))

local gui = Main

local dragging
local dragInput
local dragStart
local startPos

function Lerp(a, b, m)
    return a + (b - a) * m
end

local lastMousePos
local lastGoalPos
local DRAG_SPEED = (8) -- // The speed of the UI darg.
function Update(dt)
    if not (startPos) then
        return
    end
    if not (dragging) and (lastGoalPos) then
        gui.Position =
            UDim2.new(
            startPos.X.Scale,
            Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED),
            startPos.Y.Scale,
            Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED)
        )
        return
    end

    local delta = (lastMousePos - UserInputService:GetMouseLocation())
    local xGoal = (startPos.X.Offset - delta.X)
    local yGoal = (startPos.Y.Offset - delta.Y)
    lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
    gui.Position =
        UDim2.new(
        startPos.X.Scale,
        Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED),
        startPos.Y.Scale,
        Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED)
    )
end

gui.InputBegan:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
            lastMousePos = UserInputService:GetMouseLocation()

            input.Changed:Connect(
                function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end
            )
        end
    end
)

gui.InputChanged:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end
)

runService.Heartbeat:Connect(Update)

  	end    

})

Tab:AddButton({

	Name = "碰撞体积",

	Callback = function()

     loadstring(game:HttpGet('https://pastebin.com/raw/JYFXjEVh'))()

  	end    

})

Tab:AddButton({

	Name = "自身黑洞",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/LHsrytuj"))()

  	end    

})

Tab:AddButton({

	Name = "定点黑洞",

	Callback = function()

     --blackhole script 0.4: fixed all issues
loadstring(game:HttpGet('https://gist.githubusercontent.com/AxolotlBmgo/8888080921c2b426a32dd9ff587baff1/raw/d45e03afed3c1716f36523bbf6dd741d3d2aad00/gistfile1.txt'))()

  	end    

})

local Tab = Window:MakeTab({

    Name = "道具",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "偷别人物品",

	Callback = function()

     --Copy And Paste:
for i,v in pairs (game.Players:GetChildren()) do
wait()
for i,b in pairs (v.Backpack:GetChildren()) do
b.Parent = game.Players.LocalPlayer.Backpack
end
end

  	end    

})

Tab:AddButton({

	Name = "传送工具",

	Callback = function()

     mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack

  	end    

})

Tab:AddButton({

	Name = "建筑工具",

	Callback = function()

     loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()

  	end    

})

Tab:AddButton({

	Name = "隐身工具",

	Callback = function()

     loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()

  	end    

})

Tab:AddButton({

	Name = "死亡笔记",

	Callback = function()

     --Made by Hirari_Tear, credits to expro for the GUI--

local Handle = Instance.new('Part')

local Mesh = Instance.new('SpecialMesh')

local Death = Instance.new('Tool')

Death.Name = "Death Note"

Handle.Name = "Handle"

Death.Parent = game.Players.LocalPlayer.Backpack

Death.GripForward = Vector3.new(0.331, -0.766, 0.551)

Death.GripPos = Vector3.new(-0.8, 0, -0.8)

Death.GripRight = Vector3.new(-0.943, -0.297, 0.152)

Death.GripUp = Vector3.new(-0.048, 0.57, 0.82)

Death.ToolTip = "Kill your fucking rival"

Handle.Parent = Death

Mesh.Parent = Handle

Mesh.MeshId = "http://www.roblox.com/asset/?id=1136139"

Mesh.TextureId = "http://www.roblox.com/asset/?id=18276952"

Mesh.Scale = Vector3.new(0.55, 0.174, 0.6)

Handle.Rotation = Vector3.new(0,-90,0)

Death.Equipped:connect(function(mouse)

local Bounce = Enum.EasingStyle.Bounce

local Quad = Enum.EasingStyle.Quad

local Normal = Enum.EasingStyle.Linear



local ScreenGui = Instance.new("ScreenGui", game.Players["LocalPlayer"].PlayerGui)

ScreenGui.Name = "Death Note"



local open = Instance.new("ImageButton", ScreenGui)

open.Position = UDim2.new(1, -110, 1, 500)

open.Size = UDim2.new(0, 100,0, 150)

open.Image = "rbxassetid://18536731"

open:TweenPosition(UDim2.new(1, -110, 1, -150), "In", Bounce, 0.8, true)



local Note = Instance.new("Frame", ScreenGui)

Note.Active = true

Note.Position = UDim2.new(1, -321, 1, 500)

Note.Size = UDim2.new(0, 320,0, 250)

Note.Visible = false

Note.Draggable = true



open.MouseButton1Down:connect(function()

open:TweenPosition(UDim2.new(open.Position.X.Scale,open.Position.X.Offset, 1, 500), "Out", Normal, 0.8, true)

wait(0.30)

open.Visible = false

Note.Visible = true

Note.Position = UDim2.new(1, -321, 1, 500)

Note:TweenPosition(UDim2.new(1, -321, 1, -251), "In", Normal, 0.5, true)

end)



local bg = Instance.new("Frame", Note)

bg.BackgroundColor3 = Color3.fromRGB(31, 31, 31)

bg.Size = UDim2.new(0, 160,0, 250)

bg.ZIndex = 2



-- Background



local close = Instance.new("TextButton", bg)

close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

close.BackgroundTransparency = 1

close.Position = UDim2.new(0, 8,0, 10)

close.Size = UDim2.new(0, 10,0, 10)

close.ZIndex = 4

close.Font = "Cartoon"

close.Text = "X"

close.TextColor3 = Color3.fromRGB(255, 255, 255)

close.TextSize = "17"



close.MouseButton1Down:connect(function()

Note:TweenPosition(UDim2.new(Note.Position.X.Scale,Note.Position.X.Offset,1, 500), "Out", Normal, 0.5, true)

wait(0.30)

Note.Visible = false

open.Visible = true

open:TweenPosition(UDim2.new(1, -110, 1, -150), "In", Normal, 0.8, true)

end)



local image1 = Instance.new("ImageLabel", bg)

image1.BackgroundTransparency = 1

image1.Size = UDim2.new(1, 0,1, 0)

image1.ZIndex = 3

image1.Image = "rbxassetid://18528551"



local title = Instance.new("TextLabel", bg)

title.BackgroundTransparency = 1

title.Position = UDim2.new(0, 0,0, 30)

title.Size = UDim2.new(1, 0,0, 30)

title.ZIndex = 4

title.Font = "Bodoni"

title.Text = "DEATH NOTE"

title.TextColor3 = Color3.fromRGB(255, 255, 255)

title.TextSize = "18"



local body = Instance.new("TextLabel", bg)

body.BackgroundTransparency = 1

body.Position = UDim2.new(0, 15,0, 65)

body.Size = UDim2.new(0, 134,0, 40)

body.ZIndex = 4

body.Font = "Garamond"

body.Text = "Type in somebody's name to kill them."

body.TextColor3 = Color3.fromRGB(255, 255, 255)

body.TextSize = "19"

body.TextWrapped = true

body.TextXAlignment = "Left"

body.TextYAlignment = "Top"



local line = Instance.new("TextLabel", body)

line.BackgroundTransparency = 1

line.Position = UDim2.new(0, 0,0, 50)

line.Size = UDim2.new(0, 130,0, 40)

line.ZIndex = 4

line.Font = "Garamond"

line.Text = "________________"

line.TextColor3 = Color3.fromRGB(255, 255, 255)

line.TextSize = "19"

line.TextWrapped = true

line.TextXAlignment = "Left"

line.TextYAlignment = "Top"



local text = Instance.new("TextLabel", body)

text.BackgroundTransparency = 1

text.Position = UDim2.new(0, 0,0, 100)

text.Size = UDim2.new(0, 134,0, 40)

text.ZIndex = 4

text.Font = "Garamond"

text.Text = "This was made by RcDZ."

text.TextColor3 = Color3.fromRGB(255, 255, 255)

text.TextSize = "19"

text.TextWrapped = true

text.TextXAlignment = "Left"

text.TextYAlignment = "Top"



-- Page



local page = Instance.new("Frame", Note)

page.BackgroundColor3 = Color3.fromRGB(236, 236, 236)

page.Position = UDim2.new(0, 160,0, 0)

page.Size = UDim2.new(0, 160,0, 250)

page.ZIndex = 2



local list = Instance.new("TextBox", page)

list.BackgroundTransparency = 1

list.Position = UDim2.new(0, 25,0, 20)

list.Size = UDim2.new(0.8, 5,0, 230)

list.ZIndex = 4

list.Font = "Antique"

list.Text = ""

list.TextColor3 = Color3.fromRGB(0, 0, 0)

list.TextSize = "23"

list.TextWrapped = true

list.TextXAlignment = "Left"

list.TextYAlignment = "Top"



local image2 = Instance.new("ImageLabel", page)

image2.BackgroundTransparency = 1

image2.Size = UDim2.new(1, 0,1, 0)

image2.ZIndex = 3

image2.Image = "rbxassetid://170279713"

image2.Transparency = 0.2



while true do

repeat wait() until game.Workspace:FindFirstChild(list.Text)

if game.Workspace[list.Text]:FindFirstChild("Humanoid") then

game.Workspace[list.Text].Humanoid.PlatformStand = true

game.Workspace[list.Text].Humanoid.Health = 0

elseif game.Workspace[list.Text]:FindFirstChild("Zombie") then

game.Workspace[list.Text].Zombie.PlatformStand = true

game.Workspace[list.Text].Zombie.Health = 0

end

end

end)

Death.Unequipped:connect(function(mouse)

game.Players.LocalPlayer.PlayerGui["Death Note"]:remove()

end)
--12333

  	end    

})

Tab:AddButton({

  Name = "耶稣十字架",

  Callback = function ()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi2"))()

  end

})

Tab:AddButton({

  Name = "紫光十字架",

  Callback = function ()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi3"))()

  end

})

Tab:AddButton({

  Name = "万圣节十字架",

  Callback = function ()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi4"))()

  end

})

Tab:AddButton({

  Name = "普通十字架",

  Callback = function ()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizizhen"))()

  end

})

local Tab = Window:MakeTab({

    Name = "脚本",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "doors汉化",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/XSKMS/MS-Chinese-XXZ/refs/heads/main/rename.txt"))()

  	end    

})