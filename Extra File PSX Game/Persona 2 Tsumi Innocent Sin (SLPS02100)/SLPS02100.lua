-- Persona 2 Tsumi Innocent Sin
-- ported to PS4 lua
-- emu used=syphonfilter v2

local patcher = function()
--Widescreen
R3K_WriteMem16(0x80087A68,0x0C00)
end
EM_AddVsyncHook(patcher)