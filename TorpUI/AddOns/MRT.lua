local _, TorpUi = ...

local T_MRT = TorpUi.AddOn:new({ profileString = TorpUi.PROFILE_STRINGS.MRT })

function T_MRT:Apply()
  GMRT.A.Profiles:TextToProfile(self.profileString, false)
end

TorpUi.AddOns.MRT = T_MRT
