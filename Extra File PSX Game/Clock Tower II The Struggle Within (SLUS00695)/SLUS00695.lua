-- Clock Tower II The Struggle Within
-- ported to PS4 lua
-- emu used=syphonfilter v2
local patcher = function()
--Widescreen
R3K_WriteMem16(0x8006F7B8,0x0C00)
end
EM_AddVsyncHook(patcher)