-- Echo Night #2: Nemuri no Shihaisha [NTSC-J] (SLPS-02167)
-- ported to PS4 lua
-- emu used=syphonfilter v2

local patcher = function()
    -- Disable dithering
    R3K_WriteMem16(0x80077158,0x0000) --E1000200
    end
    EM_AddVsyncHook(patcher)