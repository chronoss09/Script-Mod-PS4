-- Blood Omen: Legacy of Kain (SLUS-00027)
-- ported to PS4 lua
-- emu used=syphonfilter v2

local patcher = function()
    -- Disable dithering
    R3K_WriteMem16(0x80080290,0x0000)
    R3K_WriteMem16(0x800802AC,0x0000)
    R3K_WriteMem16(0x80081964,0x0000)
    R3K_WriteMem16(0x80081FE8,0x0000)
    R3K_WriteMem16(0x80082008,0x0000)
    end
    EM_AddVsyncHook(patcher)