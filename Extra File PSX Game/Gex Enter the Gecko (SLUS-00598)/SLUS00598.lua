-- Gex Enter the Gecko
-- ported to PS4 lua
-- emu used=syphonfilter v2
local patcher = function()
--Widescreen
R3K_WriteMem16(0x8003EB14,0x0C00)
R3K_WriteMem16(0x8003EB24,0x0034)
R3K_WriteMem16(0x8003EB26,0xAFA0)
R3K_WriteMem16(0x8003EB28,0x1000)
R3K_WriteMem16(0x8003EB2A,0x2403)
end
EM_AddVsyncHook(patcher)