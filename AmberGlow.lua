local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🐻BearBrothers🐻",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Sigma Hub🙉",
   LoadingSubtitle = "by BearBrothers [DEV Team]",
   Theme = "AmberGlow", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "BearBrothersArePro"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "🎄❄ᗷEᗩᖇ ᗷᖇOTᕼEᖇᕼOOᗪ🐻👑", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "BearBrothers KeySystem",
      Subtitle = "World's best key system",
      Note = "Get the key from https://discord.gg/tG9KBkw6", -- Use this to tell the user how to get a key
      FileName = "BearBrothers key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/UnyhTiaK"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local UpdateTab = Window:CreateTab("🐻Update Logs & Customisation🐻", nil) -- Title, Image
local Logs = UpdateTab:CreateSection("Here are the logs of the updates and customisation.")

--[[
Default - Default
Amber Glow - AmberGlow
Amethyst - Amethyst
Bloom - Bloom
Dark Blue - DarkBlue
Green - Green
Light - Light
Ocean - Ocean
Serenity - Serenity
]]


local Paragraph = UpdateTab:CreateParagraph({Title = "Logs", Content = "[+] Re-added jerky script idk why it was removed\n[+] Fixed speed slider (was a loadstring)\n[+] Added more scripts to specific games."})
local Dropdown = UpdateTab:CreateDropdown({
   Name = "Rayfield Interface Themes",
   Options = {"ThisIsToPreventErrors", "Amethyst", "Default", "AmberGlow", "Bloom", "DarkBlue", "Green", "Light", "Ocean", "Serenity"},
   CurrentOption = {"ThisIsToPreventErrors"},
   MultipleOptions = false,
   Flag = "BearBrothersHubRayfieldInterface", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
        if Option == "ThisIsToPreventErrors" then
            print("Bear")
            elseif Option == "Amethyst" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/pkplaysrblx/BearBrothers/refs/heads/main/Amethyst.lua"))()
            elseif Option == "Default" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/pkplaysrblx/BearBrothers/refs/heads/main/Default.lua"))()
            elseif Option == "AmberGlow" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/pkplaysrblx/BearBrothers/refs/heads/main/AmberGlow.lua"))()
            elseif Option == "Bloom" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/pkplaysrblx/BearBrothers/refs/heads/main/Bloom.lua"))()
            elseif Option == "DarkBlue" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/pkplaysrblx/BearBrothers/refs/heads/main/DarkBlue.lua"))()
            elseif Option == "Green" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/pkplaysrblx/BearBrothers/refs/heads/main/Green.lua"))()
            elseif Option == "Light" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/pkplaysrblx/BearBrothers/refs/heads/main/Light.lua"))()
            elseif Option == "Ocean" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/pkplaysrblx/BearBrothers/refs/heads/main/Ocean.lua"))()
            elseif Option == "Serenity" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/pkplaysrblx/BearBrothers/refs/heads/main/Serenity.lua"))()
            end
   end,
})

local MainTab = Window:CreateTab("🐻Universal🐻", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

local Button = MainTab:CreateButton({
   Name = "🐻Infinite Jump🐻",
   Callback = function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)  
   end,
})

local Button = MainTab:CreateButton({
   Name = "🐻Bear Yield🐻",
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "🐻Bear HeadHitbox🐻",
   Callback = function()
       _G.HeadSize = 7.8 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.Head.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.Head.Transparency = 0.6 v.Character.Head.BrickColor = BrickColor.new("Red") v.Character.Head.Material = "Neon" v.Character.Head.CanCollide = false v.Character.Head.Massless = true end) end end end end) 
   end,
})

local Button = MainTab:CreateButton({
   Name = "🐻Bear Jerky🐻",
   Callback = function()
         loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))("pkplaysrblx was here")
   end,
})

local GamesTab = Window:CreateTab("🐻OtherGames🐻", nil) -- Title, Image
local Section = GamesTab:CreateSection("BearGames")

local Button = GamesTab:CreateButton({
   Name = "🐻Rivals > Orion🐻",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Sheeshablee73/Scriptss/main/Rivals%20Latest.lua",true))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻Rivals > Vape V4🐻",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻Mvsd🐻",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheRealAvrwm/Projects/main/Xeno%20MVSD%20script.lua", true))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻SquidGame🐻",
   Callback = function()
        _G.Theme = "Dark"
--Themes: Light, Dark, Red, Mocha, Aqua and Jester

loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/SquidGame.lua"))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻MM2 > Vertex🐻",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vertex-peak/vertex/refs/heads/main/loadstring"))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻MM2 > X Hub🐻",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2"))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻Bedwars Vape🐻",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻Jailbreak > ProjectAuto🐻",
   Callback = function()
        loadstring(game:HttpGet('http://scripts.projectauto.xyz/AutoRobV5'))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻Jailbreak > Vape V4🐻",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻Zombie Attacks🐻",
   Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/RTrade/Voidz/main/Games.lua'),true))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻Bedwars AimAssits🐻",
   Callback = function()
        PLAYER  = game.Players.LocalPlayer
MOUSE   = PLAYER:GetMouse()
CC      = game.Workspace.CurrentCamera

ENABLED      = false
ESP_ENABLED  = false

_G.FREE_FOR_ALL = true

_G.ESP_BIND    = 52
_G.CHANGE_AIM  = 'q'

_G.AIM_AT = 'Head'

wait(1)

function GetNearestPlayerToMouse()
	local PLAYERS      = {}
	local PLAYER_HOLD  = {}
	local DISTANCES    = {}
	for i, v in pairs(game.Players:GetPlayers()) do
		if v ~= PLAYER then
			table.insert(PLAYERS, v)
		end
	end
	for i, v in pairs(PLAYERS) do
		if _G.FREE_FOR_ALL == false then
			if v and (v.Character) ~= nil and v.TeamColor ~= PLAYER.TeamColor then
				local AIM = v.Character:FindFirstChild(_G.AIM_AT)
				if AIM ~= nil then
					local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
					local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
					local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
					local DIFF                     = math.floor((POS - AIM.Position).magnitude)
					PLAYER_HOLD[v.Name .. i]       = {}
					PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
					PLAYER_HOLD[v.Name .. i].plr   = v
					PLAYER_HOLD[v.Name .. i].diff  = DIFF
					table.insert(DISTANCES, DIFF)
				end
			end
		elseif _G.FREE_FOR_ALL == true then
			local AIM = v.Character:FindFirstChild(_G.AIM_AT)
			if AIM ~= nil then
				local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
				local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
				local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
				local DIFF                     = math.floor((POS - AIM.Position).magnitude)
				PLAYER_HOLD[v.Name .. i]       = {}
				PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
				PLAYER_HOLD[v.Name .. i].plr   = v
				PLAYER_HOLD[v.Name .. i].diff  = DIFF
				table.insert(DISTANCES, DIFF)
			end
		end
	end
	
	if unpack(DISTANCES) == nil then
		return false
	end
	
	local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
	if L_DISTANCE > 20 then
		return false
	end
	
	for i, v in pairs(PLAYER_HOLD) do
		if v.diff == L_DISTANCE then
			return v.plr
		end
	end
	return false
end

GUI_MAIN                           = Instance.new('ScreenGui', game.CoreGui)
GUI_TARGET                         = Instance.new('TextLabel', GUI_MAIN)
GUI_AIM_AT                         = Instance.new('TextLabel', GUI_MAIN)

GUI_MAIN.Name                      = 'AIMBOT'

GUI_TARGET.Size                    = UDim2.new(0,200,0,30)
GUI_TARGET.BackgroundTransparency  = 0.5
GUI_TARGET.BackgroundColor         = BrickColor.new('Fossil')
GUI_TARGET.BorderSizePixel         = 0
GUI_TARGET.Position                = UDim2.new(0.5,-100,0,0)
GUI_TARGET.Text                    = 'AIMBOT : OFF'
GUI_TARGET.TextColor3              = Color3.new(1,1,1)
GUI_TARGET.TextStrokeTransparency  = 1
GUI_TARGET.TextWrapped             = true
GUI_TARGET.FontSize                = 'Size24'
GUI_TARGET.Font                    = 'SourceSansBold'

GUI_AIM_AT.Size                    = UDim2.new(0,200,0,20)
GUI_AIM_AT.BackgroundTransparency  = 0.5
GUI_AIM_AT.BackgroundColor         = BrickColor.new('Fossil')
GUI_AIM_AT.BorderSizePixel         = 0
GUI_AIM_AT.Position                = UDim2.new(0.5,-100,0,30)
GUI_AIM_AT.Text                    = 'AIMING : HEAD'
GUI_AIM_AT.TextColor3              = Color3.new(1,1,1)
GUI_AIM_AT.TextStrokeTransparency  = 1
GUI_AIM_AT.TextWrapped             = true
GUI_AIM_AT.FontSize                = 'Size18'
GUI_AIM_AT.Font                    = 'SourceSansBold'

local TRACK = false

function CREATE(BASE, TEAM)
	local ESP_MAIN                   = Instance.new('BillboardGui', PLAYER.PlayerGui)
	local ESP_DOT                    = Instance.new('Frame', ESP_MAIN)
	local ESP_NAME                   = Instance.new('TextLabel', ESP_MAIN)
	
	ESP_MAIN.Name                    = 'ESP'
	ESP_MAIN.Adornee                 = BASE
	ESP_MAIN.AlwaysOnTop             = true
	ESP_MAIN.ExtentsOffset           = Vector3.new(0, 1, 0)
	ESP_MAIN.Size                    = UDim2.new(0, 5, 0, 5)
	
	ESP_DOT.Name                     = 'DOT'
	ESP_DOT.BackgroundColor          = BrickColor.new('Bright red')
	ESP_DOT.BackgroundTransparency   = 0.3
	ESP_DOT.BorderSizePixel          = 0
	ESP_DOT.Position                 = UDim2.new(-0.5, 0, -0.5, 0)
	ESP_DOT.Size                     = UDim2.new(2, 0, 2, 0)
	ESP_DOT.Visible                  = true
	ESP_DOT.ZIndex                   = 10
	
	ESP_NAME.Name                    = 'NAME'
	ESP_NAME.BackgroundColor3        = Color3.new(255, 255, 255)
	ESP_NAME.BackgroundTransparency  = 1
	ESP_NAME.BorderSizePixel         = 0
	ESP_NAME.Position                = UDim2.new(0, 0, 0, -40)
	ESP_NAME.Size                    = UDim2.new(1, 0, 10, 0)
	ESP_NAME.Visible                 = true
	ESP_NAME.ZIndex                  = 10
	ESP_NAME.Font                    = 'ArialBold'
	ESP_NAME.FontSize                = 'Size14'
	ESP_NAME.Text                    = BASE.Parent.Name:upper()
	ESP_NAME.TextColor               = BrickColor.new('Bright red')
end

function CLEAR()
	for _,v in pairs(PLAYER.PlayerGui:children()) do
		if v.Name == 'ESP' and v:IsA('BillboardGui') then
			v:Destroy()
		end
	end
end

function FIND()
	CLEAR()
	TRACK = true
	spawn(function()
		while wait() do
			if TRACK then
				CLEAR()
				for i,v in pairs(game.Players:GetChildren()) do
					if v.Character and v.Character:FindFirstChild('Head') then
						if _G.FREE_FOR_ALL == false then
							if v.TeamColor ~= PLAYER.TeamColor then
								if v.Character:FindFirstChild('Head') then
									CREATE(v.Character.Head, true)
								end
							end
						else
							if v.Character:FindFirstChild('Head') then
								CREATE(v.Character.Head, true)
							end
						end
					end
				end
			end
		end
		wait(1)
	end)
end

MOUSE.Button2Down:connect(function()
	ENABLED = true
end)

MOUSE.Button2Up:connect(function()
	ENABLED = false
end)

MOUSE.KeyDown:connect(function(KEY)
	KEY = KEY:lower():byte()
	if KEY == _G.ESP_BIND then
		if ESP_ENABLED == false then
			FIND()
			ESP_ENABLED = true
			print('ESP : ON')
		elseif ESP_ENABLED == true then
			wait()
			CLEAR()
			TRACK = false
			ESP_ENABLED = false
			print('ESP : OFF')
		end
	end
end)

MOUSE.KeyDown:connect(function(KEY)
	if KEY == _G.CHANGE_AIM then
		if _G.AIM_AT == 'Head' then
			_G.AIM_AT = 'Torso'
			GUI_AIM_AT.Text = 'AIMING : TORSO'
		elseif _G.AIM_AT == 'Torso' then
			_G.AIM_AT = 'Head'
			GUI_AIM_AT.Text = 'AIMING : HEAD'
		end
	end
end)

game:GetService('RunService').RenderStepped:connect(function()
	if ENABLED then
		local TARGET = GetNearestPlayerToMouse()
		if (TARGET ~= false) then
			local AIM = TARGET.Character:FindFirstChild(_G.AIM_AT)
			if AIM then
				CC.CoordinateFrame = CFrame.new(CC.CoordinateFrame.p, AIM.CFrame.p)
			end
			GUI_TARGET.Text = 'AIMBOT : '.. TARGET.Name:sub(1, 5)
		else
			GUI_TARGET.Text = 'AIMBOT : OFF'
		end
	end
end)

repeat
	wait()
	if ESP_ENABLED == true then
		FIND()
	end
until ESP_ENABLED == false
  
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻BeeSwarm🐻",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VerbalHubz/Verbal-Hub/refs/heads/main/Bee%20Swarm%20Sim.Lua",true))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻PrisonLife🐻",
   Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/elliexmln/PrizzLife/main/pladmin.lua'))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻GunGrounds-FFA🐻",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/agreed69-scripts/open-src-scripts/refs/heads/main/Gun%20Grounds%20FFA.lua", true))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻Phantom Forces🐻",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dementiaenjoyer/homohack/main/loader.lua"))()    
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻TowerOfHell🐻",
   Callback = function()
        getgenv().ignoreGameCheck = false;
loadstring(game:HttpGet("https://luau.tech/build"))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻Arsenal🐻",
   Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/8ysy7ENG",true))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻[SKID] Voidware-Bedwars🐻",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/vapevoidware/main/NewMainScript.lua", true))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻Doors🐻",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻Aurora-Bedwars🐻",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/cocotv666/Aurora/main/Aurora_Loader"))()
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻Bladeball🐻",
   Callback = function()
       getgenv().visualizer = true

loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/RedCircleBlock"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "🐻BearNameless Admin🐻",
   Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "🐻Fly🐻",
   Callback = function()
        --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
   end,
})

local Button = MainTab:CreateButton({
   Name = "🐻BTools🐻",
   Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "🐻Invisible🐻",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Luarmor123/community-Y-HUB/refs/heads/main/invisible-button"))()

   end,
})

local MiscTab = Window:CreateTab("🐻Misc🐻", nil) -- Title, Image
local Section = MiscTab:CreateSection("Misc")

local Toggle = MiscTab:CreateToggle({
   Name = "🐻Noclip🐻",
   CurrentValue = false,
   Flag = "Noclip", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip() -- to toggle noclip() and clip()
   end,
})

local Slider = Tab:CreateSlider({
   Name = "🐻Speed Changer🐻",
   Range = {16, 500},
   Increment = 1,
   Suffix = "pk",
   CurrentValue = 16,
   Flag = "smth", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

local Button = MainTab:CreateButton({
   Name = "🐻ESP🐻",
   Callback = function()
        local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
   end,
})

local Button = GamesTab:CreateButton({
   Name = "🐻BloxFruits🐻",
   Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
   end,
})
