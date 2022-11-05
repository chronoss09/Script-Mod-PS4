-- Iblard: Laputa no Kaeru Machi [NTSC-J] (SLPS-01027)
-- ported to PS4 lua
-- emu used=syphonfilter v2

local patcher = function()
-- Disable dithering
R3K_WriteMem16(0x80042144,0x0000) --E1000200
end
EM_AddVsyncHook(patcher)