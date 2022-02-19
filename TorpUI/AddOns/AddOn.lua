local _, TorpUi = ...

local T_AddOn = {}

function T_AddOn:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

function T_AddOn:Apply()
  return
end

function T_AddOn:Prompt()
  self:Apply()
end

TorpUi.AddOn = T_AddOn
