-- Tenchu 2 Birth of the Stealth Assassins
-- Widescreen
-- emu used=syphonfilter v2

local patcher = function()
--16:9
R3K_WriteMem16(0x800CD358,0x0C00)

end

EM_AddVsyncHook(patcher)
