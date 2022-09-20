-- Mizzurna Falls
-- ported to PS4 lua
-- emu used=syphonfilter v2

local patcher = function()
    --Widescreen
    R3K_WriteMem16(0x800FE2B0,0x0c00)
    --Disable dithering
    R3K_WriteMem16(0xD0054300,0x0200)
    R3K_WriteMem16(0x80054300,0x0000)
    end
    EM_AddVsyncHook(patcher)