-- Tony Hawk's Pro Skater 2 (SLUS-01066)
if true then
end
local patcher = function()
-- No dithering
R3K_WriteMem16(0x8009D5F9,0x0000)
-- 60 FPS
R3K_WriteMem16(0x8003CBA8,0x0000)
-- Widescreen
R3K_WriteMem16(0x800D8640,0x1333)
end
EM_AddVsyncHook(patcher)