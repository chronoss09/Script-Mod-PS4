-- Rival Schools [NTSC-U] (SLUS-00681) & (SLUS-00771)
-- Widescreen hack by El_Patas
-- Works only in characters and floor in both discs
-- ported to PS4 lua
-- emu used=syphonfilter v2

if true then

end

local patcher = function()
--16:9
R3K_WriteMem16(0x801F6120,0x0C00)

end

EM_AddVsyncHook(patcher)