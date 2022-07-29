-- Tekken
-- Cheats
-- ported to PS4 lua
-- emu used=syphonfilter v1


local patcher = function()

--[Select All Extra Players ]
R3K_WriteMem16(0x801273D0,0xFFFF)
R3K_WriteMem16(0x801273D2,0x00FF)

end

EM_AddVsyncHook(patcher)