-- Wipeout XL (US) (SCUS-94351)
-- Cheats
-- ported to PS4 lua
-- emu used=syphonfilter v2


local patcher = function()
--[Enable Team Piranha]
R3K_WriteMem16(0x801FE4AC,0x0100)
--[Enable Phantom Class]
R3K_WriteMem16(0x801FE4D2,0x0100)
--[Enable Challenge 1]
R3K_WriteMem16(0x801FE4A8,0x0100)
--[Enable Challenge 2]
R3K_WriteMem16(0x801FE4AA,0x0001)
--[Race all Tracks (Any Level)]
R3K_WriteMem16(0x801FE4D2,0x0001)
end

EM_AddVsyncHook(patcher)