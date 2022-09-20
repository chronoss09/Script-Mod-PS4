-- Tony Hawk's Pro Skater
-- ported to PS4 lua
-- emu used=syphonfilter v2
local patcher = function()
--Widescreen
R3K_WriteMem16(0x800D2194,0x1333)
end
EM_AddVsyncHook(patcher)