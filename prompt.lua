local _, TorpUi = ...

for key, addOn in pairs(TorpUi.AddOns) do
  addOn:Prompt()
end
