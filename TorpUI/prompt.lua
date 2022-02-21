local TorpUiName, TorpUi = ...

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")

function frame:OnEvent(event, name)
  if (name ~= TorpUiName) then
    return
  end

  if (TorpDb.versionApplied == TorpUi.VERSION and not TorpUi.IS_DEV) then
    return
  end

  for key, addOn in pairs(TorpUi.AddOns) do
    addOn:Prompt()
  end

  TorpDb.versionApplied = TorpUi.VERSION
end

frame:SetScript("OnEvent", frame.OnEvent)
