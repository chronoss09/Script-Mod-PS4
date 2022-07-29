-- Tenchu Stealth Assassins
-- Widescreen
-- emu used=syphonfilter v2

local patcher = function()
--16:9
R3K_WriteMem16(0x800C4108,0x0C00)

end

EM_AddVsyncHook(patcher)