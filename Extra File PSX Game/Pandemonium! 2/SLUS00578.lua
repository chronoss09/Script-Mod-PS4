-- Pandemonium 2
-- Widescreen hack by Gamemasterplc


local patcher = function()
--Widescreen 16:9
R3K_WriteMem16(0x80008200,0x0000)
R3K_WriteMem16(0x80008202,0x8C88)
R3K_WriteMem16(0x80008204,0x8001)
R3K_WriteMem16(0x80008206,0x3C1B)
R3K_WriteMem16(0x80008208,0x0180)
R3K_WriteMem16(0x8000820A,0x237B)
R3K_WriteMem16(0x8000820C,0x0002)
R3K_WriteMem16(0x8000820E,0x1764)
R3K_WriteMem16(0x80008212,0x2400)
R3K_WriteMem16(0x80008214,0x0C00)
R3K_WriteMem16(0x80008216,0x2408)
R3K_WriteMem16(0x80008218,0xFA0F)
R3K_WriteMem16(0x8000821A,0x0801)
R3K_WriteMem16(0x8000821E,0x2400)
R3K_WriteMem16(0x8007E834,0x2080)
R3K_WriteMem16(0x8007E836,0x0800)
R3K_WriteMem16(0x80064414,0x0C00)
R3K_WriteMem16(0x80064416,0x240C)


end

EM_AddVsyncHook(patcher)