-- Silent Hill  [NTSC U] (SLUS-00707)
-- Widescreen hack by demilich
-- Disable dithering hack by ShaolinAssassin
-- ported to PS4 lua by Stayhye
-- emu used=syphonfilter v2

if true then

end

local PS1_Mods = function()
--16:9 Widescreen
R3K_WriteMem16(0x800C6FE0,0x0C00)
R3K_WriteMem16(0x800C6FF0,0x0C00)
--Disable dithering
local no_dither = R3K_ReadMem16(0x019810)
if no_dither == 0x0200 then
R3K_WriteMem16(0x30019811,0x0000)
end


end

EM_AddVsyncHook(PS1_Mods)