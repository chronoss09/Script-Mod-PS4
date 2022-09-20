-- Dragon Ball GT - Final Bout [PAL] (SLES-00964)
-- Widescreen hack by krHACKen
-- ported to PS4 lua by Chronoss
-- emu used=syphon filter v2


local patcher = function()
--Widescreen 16:9
R3K_WriteMem16(0x8002219C,0x0C00)

end

EM_AddVsyncHook(patcher)