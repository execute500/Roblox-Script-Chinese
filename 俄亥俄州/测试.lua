local kavoUi = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local window = kavoUi.CreateLib("Roblox Swag Like Ohio","BloodTheme")

---Tabs

local Tab1 = window:NewTab("Main")
local Tab1Section = Tab1:NewSection("Main")
local Tab2 = window:NewTab("Credits")
local Tab2Section = Tab2:NewSection("Made By JN HH Gaming")
local Tab2Section = Tab2:NewSection("Subscribe To JN HH Gaming On Youtube")

---Buttons

Tab1Section:NewButton("Gun Aimbot","Increase Range",function()
  _G.HeadSize = 25
  _G.Disabled = true

  game:GetService('RunService').RenderStepped:connect(function()
    if _G.Disabled then
     for i,v in next, game:GetService('Players'):GetPlayers() do
        if v.Name ~= game:GetService('Players').LocalPlayer.Name then
          pcall(function()
            v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
            v.Character.HumanoidRootPart.Transparency = 0.7
            v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
            v.Character.HumanoidRootPart.Material = "Neon"
            v.Character.HumanoidRootPart.CanCollide = false
          end)
        end
      end
    end
  end)
end)

Tab1Section:NewButton("Knife Reach","Increase Range",function()
  _G.HeadSize = 25
  _G.Disabled = true

  game:GetService('RunService').RenderStepped:connect(function()
    if _G.Disabled then
      for i,v in next, game:GetService('Players'):GetPlayers() do
        if v.Name ~= game:GetService('Players').LocalPlayer.Name then
          pcall(function()
            v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
            v.Character.HumanoidRootPart.Transparency = 0.7
            v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
            v.Character.HumanoidRootPart.Material = "Neon"
            v.Character.HumanoidRootPart.CanCollide = false
          end)
        end
      end
    end
  end)
end)

Tab1Section:NewButton("Fist Reach","Increase Range",function()
  _G.HeadSize = 25
  _G.Disabled = true

  game:GetService('RunService').RenderStepped:connect(function()
    if _G.Disabled then
      for i,v in next, game:GetService('Players'):GetPlayers() do
        if v.Name ~= game:GetService('Players').LocalPlayer.Name then
          pcall(function()
            v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
            v.Character.HumanoidRootPart.Transparency = 0.7
            v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
            v.Character.HumanoidRootPart.Material = "Neon"
            v.Character.HumanoidRootPart.CanCollide = false
          end)
        end
      end
    end
  end)
end)

Tab1Section:NewButton("Bat Reach","Increase Range",function()
  _G.HeadSize = 25
  _G.Disabled = true

  game:GetService('RunService').RenderStepped:connect(function()
    if _G.Disabled then
      for i,v in next, game:GetService('Players'):GetPlayers() do
        if v.Name ~= game:GetService('Players').LocalPlayer.Name then
          pcall(function()
            v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
            v.Character.HumanoidRootPart.Transparency = 0.7
            v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
            v.Character.HumanoidRootPart.Material = "Neon"
            v.Character.HumanoidRootPart.CanCollide = false
          end)
        end
      end
    end
  end)
end)

Tab1Section:NewButton("All Tools Reach","Increase Range",function()
  _G.HeadSize = 25
  _G.Disabled = true

  game:GetService('RunService').RenderStepped:connect(function()
    if _G.Disabled then
      for i,v in next, game:GetService('Players'):GetPlayers() do
        if v.Name ~= game:GetService('Players').LocalPlayer.Name then
          pcall(function()
            v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
            v.Character.HumanoidRootPart.Transparency = 0.7
            v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
            v.Character.HumanoidRootPart.Material = "Neon"
            v.Character.HumanoidRootPart.CanCollide = false
          end)
        end
      end
    end
  end)
end)
