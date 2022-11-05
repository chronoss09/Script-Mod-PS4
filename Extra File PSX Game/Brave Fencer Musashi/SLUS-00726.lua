-- Brave Fencer Musashi [NTSC U] (SLUS-00726)
-- ported to PS4 lua
-- emu used=syphonfilter v2

local patcher = function()
    -- Disable dithering
    R3K_WriteMem16(0x800D2C10,0x0000) --E1000200
    end
    EM_AddVsyncHook(patcher)