-- Alien Resurrection (US) (SLUS-00633)
-- Disable dithering hack
-- ported to PS4 lua
-- emu used=syphonfilter v2

if true then

end

local patcher = function()
--Disable dithering
R3K_WriteMem16(0x80084D48,0x0000)
--16:9 Widescreen (Vert-)
R3K_WriteMem16(0x8009E3D0,0x1400)
end

EM_AddVsyncHook(patcher)