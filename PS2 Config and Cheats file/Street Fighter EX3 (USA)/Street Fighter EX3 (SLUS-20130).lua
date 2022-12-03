-- Street Fighter EX3 (SLUS-20130)
 
apiRequest(2.0)
 
local eeObj = getEEObject()
local emuObj = getEmuObject()
 
local patcher = function()
 
    -- Ignore status flag sticky sign bit (should fix floor).
    eeObj.WriteMem8(0x3019c0, 0)
    eeObj.WriteMem8(0x301d30, 0)
 
    -- Fix missing effects (D.Dark bomb, etc.)
    eeObj.WriteMem32(0x2e3788, 0x24190010)
    eeObj.WriteMem32(0x2e379c, 0xf88a0000)
    eeObj.WriteMem32(0x2e37a0, 0x03e00008)
    eeObj.WriteMem32(0x2e37a4, 0xa099000f)
 
    -- Fix clothing physics (old bug in emu...)
    eeObj.WriteMem32(0x258f38, 0x000c60c2)
    eeObj.WriteMem32(0x258ff8, 0x000c60c2)
end
 
emuObj.AddVsyncHook(patcher)