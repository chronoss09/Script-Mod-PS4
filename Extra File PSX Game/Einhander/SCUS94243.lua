-- Einhänder [NTSC-U] (SCUS-94243)
-- Widescreen hack by El_Patas
--  +Cheats
-- ported to PS4 lua by Stayhye
-- emu used=syphon filter v2


local patcher = function()
--Widescreen 16:9
R3K_WriteMem16(0x8013EFF8,0x0C00)
--[Debug Option-Go to config, file or gallery menu first. Then press Select.]
local dmenu = R3K_ReadMem16(0x083E2E)
if dmenu == 0x0100 then
R3K_WriteMem16(0x800ADA40,0x0007)
end
--[Enable Stage Select]
R3K_WriteMem16(0x800ADAA6,0x0001)
R3K_WriteMem16(0x80085960,0xFFFF)
R3K_WriteMem16(0x8008593C,0x0000)
--[Enable Gallery With All Pictures]
R3K_WriteMem16(0x801FEC9C,0xFFFF)
R3K_WriteMem16(0x801FEC9E,0xFFFF)

end

EM_AddVsyncHook(patcher)