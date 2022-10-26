-- Pepsiman [NTSC-J] (SLPS-01762)
-- ported to PS4 lua
-- emu used=syphonfilter v2

local patcher = function()
    -- Disable dithering
    R3K_WriteMem16(0x800695EC,0x0000) --E1000200
    end
    EM_AddVsyncHook(patcher)