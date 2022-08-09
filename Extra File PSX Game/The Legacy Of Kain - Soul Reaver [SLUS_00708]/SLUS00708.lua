-- The Legacy Of Kain Soul Reaver
-- ported to PS4 lua
-- emu used=syphonfilter v2
local patcher = function()
--Widescreen
R3K_WriteMem16(0x8003A374,0x0C00)
R3K_WriteMem16(0x8003A384,0x0034)
R3K_WriteMem16(0x8003A386,0xAFA0)
R3K_WriteMem16(0x8003A388,0x1000)
R3K_WriteMem16(0x8003A38A,0x2403)
end
EM_AddVsyncHook(patcher)