Library = {}
SaveTheme = {}

local themes = {
	index = {'Dark', 'Amethyst'},
	Amethyst = {
		['Shadow'] = Color3.fromRGB(24, 24, 31),
		['Background'] = Color3.fromRGB(29, 28, 38),
		['Page'] = Color3.fromRGB(24, 24, 31),
		['Main'] = Color3.fromRGB(91, 68, 209),
		['Text & Icon'] = Color3.fromRGB(255, 255, 255),
		['Function'] = {
			['Toggle'] = {
				['Background'] = Color3.fromRGB(29, 28, 38),
				['True'] = {
					['Toggle Background'] = Color3.fromRGB(44, 34, 103),
					['Toggle Value'] = Color3.fromRGB(91, 68, 209),
				},
				['False'] = {
					['Toggle Background'] = Color3.fromRGB(36, 35, 48),
					['Toggle Value'] = Color3.fromRGB(44, 42, 62),
				}
			},
			['Label'] = {
				['Background'] = Color3.fromRGB(29, 28, 38),
			},
			['Dropdown'] = {
				['Background'] = Color3.fromRGB(29, 28, 38),
				['Value Background'] = Color3.fromRGB(24, 24, 31),
				['Value Stroke'] = Color3.fromRGB(255, 255, 255),
				['Dropdown Select'] = {
					['Background'] = Color3.fromRGB(24, 24, 31),
					['Search'] = Color3.fromRGB(35, 35, 42),
					['Item Background'] = Color3.fromRGB(45, 45, 52),
				}
			},
			['Slider'] = {
				['Background'] = Color3.fromRGB(29, 28, 38),
				['Value Background'] = Color3.fromRGB(24, 24, 31),
				['Value Stroke'] = Color3.fromRGB(255, 255, 255),
				['Slider Bar'] = Color3.fromRGB(44, 34, 103),
				['Slider Bar Value'] = Color3.fromRGB(91, 68, 209),
				['Circle Value'] = Color3.fromRGB(255, 255, 255)
			},
			['Code'] = {
				['Background'] = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(29, 28, 38)), ColorSequenceKeypoint.new(1, Color3.fromRGB(29, 28, 38))},
				['Background Code'] = Color3.fromRGB(51, 62, 68),
				['Background Code Value'] = Color3.fromRGB(38, 50, 56),
				['ScrollingFrame Code'] = Color3.fromRGB(216, 150, 179)
			},
			['Button'] = {
				['Background'] = Color3.fromRGB(29, 28, 38),
				['Click'] = Color3.fromRGB(255, 255, 255)
			},
			['Textbox'] = {
				['Background'] = Color3.fromRGB(29, 28, 38),
				['Value Background'] = Color3.fromRGB(24, 24, 31),
				['Value Stroke'] = Color3.fromRGB(255, 255, 255),
			},
			['Keybind'] = {
				['Background'] = Color3.fromRGB(29, 28, 38),
				['Value Background'] = Color3.fromRGB(24, 24, 31),
				['Value Stroke'] = Color3.fromRGB(255, 255, 255),
				['True'] = {
					['Toggle Background'] = Color3.fromRGB(44, 34, 103),
					['Toggle Value'] = Color3.fromRGB(91, 68, 209),
				},
				['False'] = {
					['Toggle Background'] = Color3.fromRGB(36, 35, 48),
					['Toggle Value'] = Color3.fromRGB(44, 42, 62),
				}
			},
			['Color Picker'] = {
				['Background'] = Color3.fromRGB(29, 28, 38),
				['Color Select'] = {
					['Background'] = Color3.fromRGB(24, 24, 31),
					['UIStroke'] = Color3.fromRGB(255, 255, 255),
				}
			}
		}
	},
	Dark = {
		['Shadow'] = Color3.fromRGB(15, 15, 15),
		['Background'] = Color3.fromRGB(20, 20, 20),
		['Page'] = Color3.fromRGB(18, 18, 18),
		['Main'] = Color3.fromRGB(50, 50, 50),
		['Text & Icon'] = Color3.fromRGB(230, 230, 230),
		['Function'] = {
			['Toggle'] = {
				['Background'] = Color3.fromRGB(25, 25, 25),
				['True'] = {
					['Toggle Background'] = Color3.fromRGB(40, 40, 40),
					['Toggle Value'] = Color3.fromRGB(70, 130, 180),
				},
				['False'] = {
					['Toggle Background'] = Color3.fromRGB(30, 30, 30),
					['Toggle Value'] = Color3.fromRGB(40, 40, 40),
				}
			},
			['Label'] = {
				['Background'] = Color3.fromRGB(25, 25, 25),
			},
			['Dropdown'] = {
				['Background'] = Color3.fromRGB(25, 25, 25),
				['Value Background'] = Color3.fromRGB(20, 20, 20),
				['Value Stroke'] = Color3.fromRGB(230, 230, 230),
				['Dropdown Select'] = {
					['Background'] = Color3.fromRGB(20, 20, 20),
					['Search'] = Color3.fromRGB(30, 30, 30),
					['Item Background'] = Color3.fromRGB(30, 30, 30),
				}
			},
			['Slider'] = {
				['Background'] = Color3.fromRGB(25, 25, 25),
				['Value Background'] = Color3.fromRGB(20, 20, 20),
				['Value Stroke'] = Color3.fromRGB(230, 230, 230),
				['Slider Bar'] = Color3.fromRGB(40, 40, 40),
				['Slider Bar Value'] = Color3.fromRGB(70, 130, 180),
				['Circle Value'] = Color3.fromRGB(255, 255, 255)
			},
			['Code'] = {
				['Background'] = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 25, 25)), ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 25, 25))},
				['Background Code'] = Color3.fromRGB(35, 35, 35),
				['Background Code Value'] = Color3.fromRGB(28, 28, 28),
				['ScrollingFrame Code'] = Color3.fromRGB(150, 150, 150)
			},
			['Button'] = {
				['Background'] = Color3.fromRGB(25, 25, 25),
				['Click'] = Color3.fromRGB(230, 230, 230)
			},
			['Textbox'] = {
				['Background'] = Color3.fromRGB(25, 25, 25),
				['Value Background'] = Color3.fromRGB(20, 20, 20),
				['Value Stroke'] = Color3.fromRGB(230, 230, 230),
			},
			['Keybind'] = {
				['Background'] = Color3.fromRGB(25, 25, 25),
				['Value Background'] = Color3.fromRGB(20, 20, 20),
				['Value Stroke'] = Color3.fromRGB(230, 230, 230),
				['True'] = {
					['Toggle Background'] = Color3.fromRGB(40, 40, 40),
					['Toggle Value'] = Color3.fromRGB(70, 130, 180),
				},
				['False'] = {
					['Toggle Background'] = Color3.fromRGB(30, 30, 30),
					['Toggle Value'] = Color3.fromRGB(40, 40, 40),
				}
			},
			['Color Picker'] = {
				['Background'] = Color3.fromRGB(25, 25, 25),
				['Color Select'] = {
					['Background'] = Color3.fromRGB(20, 20, 20),
					['UIStroke'] = Color3.fromRGB(230, 230, 230),
				}
			}
		}
	},
}

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Dummy Kawaii"
ScreenGui.Parent = not game:GetService("RunService"):IsStudio() and game:GetService("CoreGui") or game:GetService("Players").LocalPlayer.PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local U, Tw = game:GetService("UserInputService"), game:GetService("TweenService")

do
	function addToTheme(name, obj)
		if not SaveTheme[name] then
			SaveTheme[name] = {}
		end
		table.insert(SaveTheme[name], obj)
	end
	function getColorFromPath(tbl, path)
		local result = tbl
		for _, part in ipairs(string.split(path, ".")) do
			result = result and result[part]
		end
		return result
	end
	function Library:setTheme(st)
		for name, objs in pairs(SaveTheme) do
			local color = getColorFromPath(st, name)
			if color then
				for _, obj in pairs(objs) do
					if SaveTheme[name] then
						for _, obj in pairs(SaveTheme[name]) do
							if obj:IsA("Frame") or obj:IsA("CanvasGroup") then
								obj.BackgroundColor3 = color
							elseif obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
								obj.TextColor3 = color
							elseif obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
								obj.ImageColor3 = color
							elseif obj:IsA("ScrollingFrame") then
								obj.ScrollBarImageColor3 = color
							elseif obj:IsA("UIStroke") then
								obj.Color = color
							elseif obj:IsA("UIGradient") then
								obj.Color = color
							end
						end
					end
				end
			end
		end
	end

	local IconList = loadstring(game:HttpGet('https://raw.githubusercontent.com/Dummyrme/Library/refs/heads/main/Icon.lua'))()
	function gl(i)
		local iconData = IconList.Icons[i]
		if iconData then
			local spriteSheet = IconList.Spritesheets[tostring(iconData.Image)]
			if spriteSheet then
				return {
					Image = spriteSheet,
					ImageRectSize = iconData.ImageRectSize,
					ImageRectPosition = iconData.ImageRectPosition,
				}
			end
		end
		if type(i) == 'string' and not i:find('rbxassetid://') then
			return {
				Image = "rbxassetid://".. i,
				ImageRectSize = Vector2.new(0, 0),
				ImageRectPosition = Vector2.new(0, 0),
			}
		elseif type(i) == 'number' then
			return {
				Image = "rbxassetid://".. i,
				ImageRectSize = Vector2.new(0, 0),
				ImageRectPosition = Vector2.new(0, 0),
			}
		else
			return i
		end
	end
	function tw(info)
		return Tw:Create(info.v,TweenInfo.new(info.t, info.s, Enum.EasingDirection[info.d]),info.g)
	end
	function changecanvas(ScrollingFrame, UIListLayout, Plus)
		UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + Plus or 5)
		end)
	end
	function gs(side, pl, pr)
		if not side then
			return pl
		end

		local sideLower = string.lower(tostring(side))
		if sideLower == "r" or sideLower == "right" or side == 2 then
			return pr
		elseif sideLower == "l" or sideLower == "left" or side == 1 then
			return pl
		else
			return pl
		end
	end
	function jc(c, p)
		local Mouse = game.Players.LocalPlayer:GetMouse()

		local relativeX = Mouse.X - c.AbsolutePosition.X
		local relativeY = Mouse.Y - c.AbsolutePosition.Y

		if relativeX < 0 or relativeY < 0 or relativeX > c.AbsoluteSize.X or relativeY > c.AbsoluteSize.Y then
			return
		end

		local ClickButtonCircle = Instance.new("Frame")
		ClickButtonCircle.Parent = p
		ClickButtonCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ClickButtonCircle.BackgroundTransparency = 0.7
		ClickButtonCircle.BorderSizePixel = 0
		ClickButtonCircle.AnchorPoint = Vector2.new(0.5, 0.5)
		ClickButtonCircle.Position = UDim2.new(0, relativeX, 0, relativeY)
		ClickButtonCircle.Size = UDim2.new(0, 0, 0, 0)
		ClickButtonCircle.ZIndex = 10

		local UICorner = Instance.new("UICorner")
		UICorner.CornerRadius = UDim.new(1, 0)
		UICorner.Parent = ClickButtonCircle

		local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		local goal = {
			Size = UDim2.new(0, c.AbsoluteSize.X * 1.5, 0, c.AbsoluteSize.X * 1.5),
			BackgroundTransparency = 1
		}

		local expandTween = game:GetService("TweenService"):Create(ClickButtonCircle, tweenInfo, goal)

		expandTween.Completed:Connect(function()
			ClickButtonCircle:Destroy()
		end)

		expandTween:Play()
	end
	function jcf(p, p2)
		local ClickButtonCircle = Instance.new("Frame")
		ClickButtonCircle.Parent = p
		ClickButtonCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ClickButtonCircle.BackgroundTransparency = 0.7
		ClickButtonCircle.BorderSizePixel = 0
		ClickButtonCircle.AnchorPoint = Vector2.new(0.5, 0.5)
		ClickButtonCircle.Position = UDim2.new(0, p2.AbsolutePosition.X - p.AbsolutePosition.X + p2.AbsoluteSize.X / 2, 
			0, p2.AbsolutePosition.Y - p.AbsolutePosition.Y + p2.AbsoluteSize.Y / 2)
		ClickButtonCircle.Size = UDim2.new(0, 0, 0, 0)
		ClickButtonCircle.ZIndex = 10

		local UICorner = Instance.new("UICorner")
		UICorner.CornerRadius = UDim.new(1, 0)
		UICorner.Parent = ClickButtonCircle

		local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		local goal = {
			Size = UDim2.new(0, p2.AbsoluteSize.X * 5, 0, p2.AbsoluteSize.X * 5),
			BackgroundTransparency = 1
		}

		local expandTween = game:GetService("TweenService"):Create(ClickButtonCircle, tweenInfo, goal)

		expandTween.Completed:Connect(function()
			ClickButtonCircle:Destroy()
		end)

		expandTween:Play()
	end
	function lak(t, o)
		local a, b, c, d
		local function u(i)
			local dt = i.Position - c
			tw({v = o, t = 0.05, s = Enum.EasingStyle.Linear, d = "InOut", g = {Position = UDim2.new(d.X.Scale, d.X.Offset + dt.X, d.Y.Scale, d.Y.Offset + dt.Y)}}):Play()
		end
		t.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then a = true c = i.Position d = o.Position; i.Changed:Connect(function() if i.UserInputState == Enum.UserInputState.End then a = false end end) end end)
		t.InputChanged:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch then b = i end end)
		U.InputChanged:Connect(function(i) if i == b and a then u(i) end end)
	end
	function click(p)
		local Click = Instance.new("TextButton")

		Click.Name = "Click"
		Click.Parent = p
		Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Click.BackgroundTransparency = 1.000
		Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Click.BorderSizePixel = 0
		Click.Size = UDim2.new(1, 0, 1, 0)
		Click.Font = Enum.Font.SourceSans
		Click.Text = ""
		Click.TextColor3 = Color3.fromRGB(0, 0, 0)
		Click.TextSize = 14.000

		return Click
	end
	function background(pl, t, d, i, ty)
		local RealBackground = Instance.new("Frame")
		local Background = Instance.new("Frame")
		local UICorner_1 = Instance.new("UICorner")
		local T_1 = Instance.new("Frame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local UIPadding_3 = Instance.new("UIPadding")
		local TextLabel_1 = Instance.new("TextLabel")
		local TextLabel_2 = Instance.new("TextLabel")

		RealBackground.Name = "Real Background"
		RealBackground.Parent = pl
		RealBackground.BackgroundTransparency = 1
		RealBackground.BorderColor3 = Color3.fromRGB(0,0,0)
		RealBackground.BorderSizePixel = 0
		RealBackground.Size = UDim2.new(1, 0,0, 35)
		RealBackground.ClipsDescendants = true

		Background.Name = "Background"
		Background.Parent = RealBackground
		Background.BackgroundColor3 = Color3.fromRGB(29,28,38)
		Background.BorderColor3 = Color3.fromRGB(0,0,0)
		Background.BorderSizePixel = 0
		Background.Size = UDim2.new(1, 0,1, 0)
		Background.ClipsDescendants = true

		addToTheme('Function.'..ty..'.Background', Background)

		UICorner_1.Parent = Background

		T_1.Name = "T"
		T_1.Parent = Background
		T_1.AnchorPoint = Vector2.new(0, 0.5)
		T_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		T_1.BackgroundTransparency = 1
		T_1.BorderColor3 = Color3.fromRGB(0,0,0)
		T_1.BorderSizePixel = 0
		T_1.Position = UDim2.new(0, 0,0.5, 0)
		T_1.Size = UDim2.new(1, 0,1, 0)

		UIListLayout_2.Parent = T_1
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
