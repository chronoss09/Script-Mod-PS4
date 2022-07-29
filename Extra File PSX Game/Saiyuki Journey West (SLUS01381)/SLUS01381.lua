-- Saiyuki Journey West [NTSC-U] (SLUS-01381)
-- Widescreen hack by Paul_met
-- ported to PS4 lua
-- emu used=syphonfilter v2

if true then
--Correction AR for portraits (dialogues)
R3K_WriteMem16(0x8001DB5C,0x003B)
R3K_WriteMem16(0x8001DB3C,0x0081)
end

local patcher = function()
--16:9
R3K_WriteMem16(0x80199174,0x0C00)

end

EM_AddVsyncHook(patcher)