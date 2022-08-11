-- Monkey magic
-- ported to PS4 lua
-- emu used=syphonfilter v2
local patcher = function()
--Widescreen
R3K_WriteMem16(0x800B22BA,0x4006)
R3K_WriteMem16(0x800248b4,0x000C)
R3K_WriteMem16(0x800557E2,0x00C0)
end
EM_AddVsyncHook(patcher)