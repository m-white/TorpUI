local _, TorpUi = ...

local T_Details = TorpUi.AddOn:new{ profileString = TorpUi.PROFILE_STRINGS.DETAILS }

function T_Details:Apply()
  local detailsProfile = _detalhes:GetProfile(TorpUi.PROFILE_NAME, false)

  if (detailsProfile) then
    _detalhes:EraseProfile(TorpUi.PROFILE_NAME)
  end

  Details:ImportProfile(self.profileString, TorpUi.PROFILE_NAME)
end

TorpUi.AddOns.Details = T_Details
