local _, TorpUi = ...

local T_NeatPlates = TorpUi.AddOn:new({ profileString = TorpUi.PROFILE_STRINGS.NEAT_PLATES })

function T_NeatPlates:Apply()
  NeatPlatesHubMenus.ImportProfile(TorpUi.PROFILE_NAME, self.profileString)
  NeatPlatesHubMenus.CreateProfile(TorpUi.PROFILE_NAME, RGBToColorCode(1, 1, 1))
  NeatPlatesSettings.DefaultProfile = TorpUi.PROFILE_NAME
  NeatPlatesOptions.FirstSpecProfile = TorpUi.PROFILE_NAME
  NeatPlatesOptions.SecondSpecProfile = TorpUi.PROFILE_NAME
  NeatPlatesOptions.ThirdSpecProfile = TorpUi.PROFILE_NAME
  NeatPlatesOptions.FourthSpecProfile = TorpUi.PROFILE_NAME
  NeatPlatesOptions.ActiveTheme = TorpUi.PROFILE_NAME
end

TorpUi.AddOns.NeatPlates = T_NeatPlates
