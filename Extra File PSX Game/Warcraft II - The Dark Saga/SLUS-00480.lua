-- Warcraft II: The Dark Saga [NTSC U] (SLUS-00480)
-- ported to PS4 lua by JSimesen
-- emu used=syphonfilter v2

local patcher = function()
    -- Disable dithering
    R3K_WriteMem16(0x8008D6CC,0x0000)
    R3K_WriteMem16(0x8008D6B0,0x0000)
    R3K_WriteMem16(0x8008BAE0,0x0000)
    R3K_WriteMem16(0x8008ED94,0x0000)
    end
    EM_AddVsyncHook(patcher)