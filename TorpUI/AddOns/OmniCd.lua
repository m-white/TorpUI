local _, TorpUi = ...

local T_OmniCd = TorpUi.AddOn:new({
  name = "OmniCD",
  profileString = TorpUi.PROFILE_STRINGS.OMNI_CD
})

function T_OmniCd:Apply()
  local profileType, profileKey, profileData = OmniCD[1].ProfileSharing.Decode(self.profileString)
  OmniCD[1].ProfileSharing.CopyProfile(profileType, profileKey, profileData)
end


TorpUi.AddOns.OmniCd = T_OmniCd
