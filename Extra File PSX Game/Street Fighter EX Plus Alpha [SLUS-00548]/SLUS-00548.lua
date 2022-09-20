-- Street Fighter EX Plus Alpha [NTS-C] (SLUS-00548)
-- Widescreen hack by El_Patas [España]
-- ported to PS4 lua by Chronoss
-- emu used=syphon filter v2


local patcher = function()
--Widescreen 16:9
R3K_WriteMem16(0x801DD2E0,0x0C00) --Works only in characters and floor.
--[Unlock Bonus Game]
R3K_WriteMem16(0x801E98BE,0x6101)
--[Unlock Bonus Characters]
R3K_WriteMem16(0x801E960A,0x77FD)
--[Expert Training Bonus Characters]
R3K_WriteMem16(0x801EBCC0,0xFFFF)
--[Unlock All Endings]
R3K_WriteMem16(0x801D39EC,0xFFFF)
R3K_WriteMem16(0x801D39EE,0xFFFF)
end


EM_AddVsyncHook(patcher)