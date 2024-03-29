
---------------------------------------------
-- Style Definition
---------------------------------------------
local ArtworkPath = "Interface\\Addons\\NeatPlates_Torple\\"
local font = ArtworkPath.."Expressway.ttf"; local fontsize = 10;

local EmptyTexture = "Interface\\Addons\\NeatPlatesHub\\shared\\Empty"
local VerticalAdjustment = 12
local CastBarOffset = 10
local NameTextVerticalAdjustment = VerticalAdjustment + 8
local CastTextVerticalAdjustment = VerticalAdjustment - CastBarOffset - 8

-- Non-Latin Font Bypass
local NonLatinLocales = { ["koKR"] = true, ["zhCN"] = true, ["zhTW"] = true, }
if NonLatinLocales[GetLocale()] == true then font = STANDARD_TEXT_FONT end

---------------------------------------------
-- Default Style
---------------------------------------------
local Theme = {}
local DefaultStyle = {}

DefaultStyle.highlight = {
	texture =					ArtworkPath.."Slim_Highlight",
	width = 128,
	height = 16,
}

DefaultStyle.healthborder = {
	texture		 =				ArtworkPath.."Slim_HealthOverlay",
	width = 128,
	height = 16,
	y = VerticalAdjustment,
	show = true,
}

DefaultStyle.healthbar = {
	texture =					 ArtworkPath.."Slim_Bar",
	backdrop =					 ArtworkPath.."Slim_Bar_Backdrop",
	width = 100,
	height = 5,
	x = 0,
	y = VerticalAdjustment,
}

DefaultStyle.castborder = {
	texture =					 ArtworkPath.."Slim_CastOverlay",
	width = 128,
	height = 16,
	x = 0,
	y = VerticalAdjustment - CastBarOffset,
	show = true,
}

DefaultStyle.castnostop = {
	texture =					 ArtworkPath.."Slim_CastShield",
	width = 128,
	height = 16,
	x = 0,
	y = VerticalAdjustment - CastBarOffset,
	show = true,
}

DefaultStyle.spellicon = {
	height = 17,
	width = 17,
	x = -61,
	y = VerticalAdjustment - (CastBarOffset / 2),
	show = true
}

DefaultStyle.castbar = {
	texture =					 ArtworkPath.."Slim_Bar",
	backdrop =					 ArtworkPath.."Slim_Bar_Backdrop",
	height = 5,
	width = 98,
	x = 0,
	y = VerticalAdjustment - CastBarOffset,
	orientation = "HORIZONTAL",
}

DefaultStyle.target = {
	texture =                    ArtworkPath.."Slim_Select",
	width = 128,
	height = 16,
	x = 0,
	y = VerticalAdjustment,
	anchor = "CENTER",
	show = true,
}

DefaultStyle.raidicon = {
	width = 22,
	height = 22,
	x = 62,
	y = VerticalAdjustment - 3,
	anchor = "CENTER",
	texture = "Interface\\TargetingFrame\\UI-RaidTargetingIcons",
	show = true,
}

DefaultStyle.eliteicon = {
	texture =                    ArtworkPath.."Slim_EliteIcon",
	width = 14,
	height = 14,
	x = -50,
	y = VerticalAdjustment + 6,
	anchor = "CENTER",
	show = true,
}

DefaultStyle.skullicon = {
	texture =                    ArtworkPath.."Skull_Icon_White",
	width = 14,
	height = 14,
	x = 50,
	y = VerticalAdjustment - 6,
	anchor = "CENTER",
	show = true,
}

DefaultStyle.name = {
	typeface = font,
	size = fontsize,
	width = 200,
	height = 11,
	x = 0,
	y = NameTextVerticalAdjustment,
	align = "CENTER",
	anchor = "CENTER",
	vertical = "CENTER",
	shadow = true,
	flags = "NONE",
}

DefaultStyle.level = {
	typeface = font,
	size = 9,
	width = 22,
	height = 11,
	x = 5,
	y = VerticalAdjustment + 3,
	align = "LEFT",
	anchor = "LEFT",
	vertical = "CENTER",
	flags = "OUTLINE",
	shadow = false,
	show = false,
}

DefaultStyle.spelltext = {
	typeface = font,
	size = fontsize,
	width = 150,
	height = 11,
	x = 0,
	y = CastTextVerticalAdjustment,
	align = "CENTER",
	anchor = "CENTER",
	vertical = "CENTER",
	shadow = true,
	show = true,
}

DefaultStyle.customart = {
	width = 14,
	height = 14,
	x = -42,
	y = VerticalAdjustment + 3,
	anchor = "CENTER",
	--show = true,
}

DefaultStyle.customtext = {
	typeface = font,
	size = 11,
	width = 150,
	height = 11,
	x = 0,
	y = VerticalAdjustment + 1,
	align = "CENTER",
	anchor = "CENTER",
	vertical = "CENTER",
	shadow = false,
	flags = "OUTLINE",
	show = true,
}

DefaultStyle.threatborder = {
	texture =                    ArtworkPath.."Slim_Invis",
	width = 2,
	_width = 2,
	height = 2,
	y = 0,
	x = 0,
	show = true,
}

DefaultStyle.frame = {
	y = 0,
}

local CopyTable = NeatPlatesUtility.copyTable

-- No Bar
local StyleTextOnly = CopyTable(DefaultStyle)


StyleTextOnly.healthborder.y = VerticalAdjustment - 24
StyleTextOnly.healthborder.height = 64
StyleTextOnly.healthborder.texture = EmptyTexture
StyleTextOnly.healthbar.texture = EmptyTexture
StyleTextOnly.healthbar.backdrop = EmptyTexture
StyleTextOnly.eliteicon.texture = EmptyTexture
StyleTextOnly.customtext.size = fontsize - 2
StyleTextOnly.customtext.flags = "NONE"
StyleTextOnly.customtext.y = VerticalAdjustment-8
StyleTextOnly.name.size = fontsize
StyleTextOnly.name.y = VerticalAdjustment + 1
StyleTextOnly.level.show = false
StyleTextOnly.eliteicon.show = false
StyleTextOnly.highlight.texture = "Interface\\Addons\\NeatPlatesHub\\shared\\Highlight"
StyleTextOnly.target.texture = "Interface\\Addons\\NeatPlatesHub\\shared\\Target"
StyleTextOnly.target.height = 72
StyleTextOnly.target.y = VerticalAdjustment -8 -18

StyleTextOnly.raidicon.x = 0
StyleTextOnly.raidicon.y = VerticalAdjustment - 25


-- Active Styles
Theme["Default"] = DefaultStyle
Theme["NameOnly"] = StyleTextOnly


-- Widget
local WidgetConfig = {}
WidgetConfig.ClassIcon = { anchor = "TOP" , x = 30 ,y = VerticalAdjustment -1 }
WidgetConfig.TotemIcon = { anchor = "TOP" , x = 0 ,y = VerticalAdjustment + 2 }
WidgetConfig.ThreatLineWidget = { anchor =  "CENTER", x = 0 ,y = VerticalAdjustment + 10 }
WidgetConfig.ThreatWheelWidget = { anchor =  "CENTER", x = 36 ,y = VerticalAdjustment + 12 } -- "CENTER", plate,1 30, 18
WidgetConfig.ComboWidget = { anchor = "CENTER" , x = 0 ,y = VerticalAdjustment + 4 }
WidgetConfig.RangeWidget = { anchor = "CENTER" , x = 0 ,y = VerticalAdjustment + 0 }
WidgetConfig.DebuffWidget = { anchor = "CENTER" , x = 15 ,y = VerticalAdjustment + 22 }WidgetConfig.DebuffWidgetPlus = { anchor = "CENTER" , x = 15 ,y = VerticalAdjustment + 22 }
WidgetConfig.AbsorbWidget = { anchor="LEFT", x = 0 , y = 13, h = 16, w = 100 }

WidgetConfig._meta = true		-- tells the parser to ignore this table; ie. don't convert to "style" template
Theme.WidgetConfig = WidgetConfig
local ThemeName = "Torple"


---------------------------------------------
-- NeatPlates Hub Integration
---------------------------------------------

NeatPlatesThemeList[ThemeName] = Theme
NeatPlatesHubFunctions.ApplyHubFunctions(Theme)
