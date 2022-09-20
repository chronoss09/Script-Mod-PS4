-- Rival Schools - United by Fate [Evolution Disc] (SLUS00771)
-- Widescreen hack by El_Patas [España]
-- Cheats ported to PS4 lua by Chronoss
-- emu used=syphon filter v2


local patcher = function()
--Widescreen 16:9
R3K_WriteMem16(0x801F6120,0x0C00)
 
--Unlock All Characters, Modes & Extras
R3K_WriteMem16(0x801F65D0,0xFFFF)
R3K_WriteMem16(0x801F65D4,0xFFFF)
R3K_WriteMem16(0x801F65D8,0xFFFF)
R3K_WriteMem16(0x801F65DA,0xFFFF)
R3K_WriteMem16(0x801F65DC,0xFFFF)
R3K_WriteMem16(0x801F65DE,0xFFFF)

end


EM_AddVsyncHook(patcher)