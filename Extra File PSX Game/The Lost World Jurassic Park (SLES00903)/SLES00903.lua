-- The Lost World Jurassic Park
-- ported to PS4 lua
-- emu used=syphonfilter v2

local patcher = function()
--Widescreen
R3K_WriteMem16(0x80065460,0x0c00)
end
EM_AddVsyncHook(patcher)