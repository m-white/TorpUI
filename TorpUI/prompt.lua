local TorpUiName, TorpUi = ...

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")

function frame:OnEvent(event, name)
  if (name ~= TorpUiName) then
    return
  end

  for key, addOn in pairs(TorpUi.AddOns) do
    addOn:Prompt()
  end
end

frame:SetScript("OnEvent", frame.OnEvent)
