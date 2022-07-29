-- Ehrgeiz [NTSC-U] (SLUS-00809)
-- Widescreen hack by Gamemasterplc
-- ported to PS4 lua
-- emu used=syphonfilter v2

local patcher = function()
--Widescreen 16:9
local code_check1 = R3K_ReadMem16(0x057A9A)
if code_check1 == 0xAC64 then
R3K_WriteMem16(0x80057A88,0x2080)
end
local code_check2 = R3K_ReadMem16(0x057A9A)
if code_check2 == 0xAC64 then
R3K_WriteMem16(0x80057A8A,0x0C00)
end
local code_check3 = R3K_ReadMem16(0x057A9A)
if code_check3 == 0xAC64 then
R3K_WriteMem16(0x80057A8C,0x0000)
end
local code_check4 = R3K_ReadMem16(0x057A9A)
if code_check4 == 0xAC64 then
R3K_WriteMem16(0x80057A8E,0x8C44)
end

R3K_WriteMem16(0x80008200,0x0003)
R3K_WriteMem16(0x80008202,0x2405)
R3K_WriteMem16(0x80008204,0x0019)
R3K_WriteMem16(0x80008206,0x0085)
R3K_WriteMem16(0x80008208,0x2012)
R3K_WriteMem16(0x8000820A,0x0000)
R3K_WriteMem16(0x8000820C,0x2083)
R3K_WriteMem16(0x8000820E,0x0004)
R3K_WriteMem16(0x80008210,0x0008)
R3K_WriteMem16(0x80008212,0x03E0)
R3K_WriteMem16(0x80008214,0x0004)
R3K_WriteMem16(0x80008216,0x8C45)
--Enable All Endings
R3K_WriteMem16(0x801F1A00,0xFFFF)
--Enable All Characters
R3K_WriteMem16(0x801F19FC,0xFFFF)
R3K_WriteMem16(0x801F19FE,0xFFFF)

end

EM_AddVsyncHook(patcher)