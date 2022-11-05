-- Thrasher Presents Skate And Destroy [NTSC-U] (SLUS-00935)
-- ported to PS4 lua by JSimesen
-- emu used=syphonfilter v2

local patcher = function()
-- Disable dithering
R3K_WriteMem16(0x8005AC84,0x0000) --E1000200
R3K_WriteMem16(0x800209DC,0x0000) --E1000600
end
EM_AddVsyncHook(patcher)