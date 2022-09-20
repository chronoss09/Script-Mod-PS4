-- Iru!
-- ported to PS4 lua
-- emu used=syphonfilter v2
local patcher = function()
--Widescreen
R3K_WriteMem16(0x800929E4,0x0C00)
R3K_WriteMem16(0x801191F0,0x0C00)
end
EM_AddVsyncHook(patcher)