local _, TorpUi = ...

local T_ElvUi = TorpUi.AddOn:new({
  name = "ElvUI",
  profileString = TorpUi.PROFILE_STRINGS.ELV_UI
})

function T_ElvUi:Apply()
  local E = unpack(ElvUI)
  local D = E:GetModule('Distributor')
  local _, _, elvUiProfileData = D:Decode(self.profileString)
  local characterName = UnitName("player")
  local characterRealm = GetRealmName()
  
  ElvDB.profiles[TorpUi.PROFILE_NAME] = elvUiProfileData
  ElvDB.profileKeys[characterName .. " - " .. characterRealm] = TorpUi.PROFILE_NAME
end

TorpUi.AddOns.ElvUi = T_ElvUi
