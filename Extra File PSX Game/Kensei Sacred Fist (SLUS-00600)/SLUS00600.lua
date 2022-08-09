-- Kensei: Sacred Fist [NTSC-U] (SLUS-00600)
-- Widescreen hack by El_Patas [España]
-- ported to PS4 lua
-- emu used=syphonfilter v2

if true then

end

local patcher = function()
--16:9 Widescreen
R3K_WriteMem16(0x800C7F40,0x0C00)
--[All characters available]
R3K_WriteMem16(0x80010588,0xFFFF)
R3K_WriteMem16(0x8001058A,0x003F)
--[Enable extra mode]
R3K_WriteMem16(0x80010090,0x0007)
end

EM_AddVsyncHook(patcher)