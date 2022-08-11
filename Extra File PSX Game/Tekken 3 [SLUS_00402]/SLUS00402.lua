-- Tekken 3 (SLUS_00402)
-- Disable dithering hack
-- Absolutely everything unlocked
if true then
end
local patcher = function()
-- Disable dithering
R3K_WriteMem16(0x8007D679,0x0000)
-- Everything Unlocked
R3K_WriteMem16(0x80097EF0,0xFFFF)
R3K_WriteMem16(0x80097EF2,0x001F)
R3K_WriteMem16(0x80097EF4,0x0382)
R3K_WriteMem16(0x80097EF6,0x0005)
R3K_WriteMem16(0x80097EF8,0xFFFF)
R3K_WriteMem16(0x80097EFA,0x001F)
R3K_WriteMem16(0x80097EFD,0x0009)
R3K_WriteMem16(0x80097EFE,0x0001)
R3K_WriteMem16(0x80097F26,0x0101)
end
EM_AddVsyncHook(patcher)