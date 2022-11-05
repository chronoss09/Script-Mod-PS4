-- Glover  [NTSC-U] (SLUS-00890)
-- ported to PS4 lua by JSimesen
-- emu used=syphonfilter v2

local patcher = function()
    -- Disable dithering
    R3K_WriteMem16(0x80098C98,0x0000) --E1000200
    R3K_WriteMem16(0x80024524,0x0000) --E1000600
    R3K_WriteMem16(0x8005D5E8,0x0000) --E1000640
    end
    EM_AddVsyncHook(patcher)