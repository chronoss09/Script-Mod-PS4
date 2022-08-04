-- Wipeout
-- ported to PS4 lua
-- emu used=syphonfilter v2


local patcher = function()
--Disable dithering
local no_dither = R3K_ReadMem16(0x068C8C)
if no_dither == 0x0200 then
R3K_WriteMem16(0x30068C8D,0x0000)
end
--[Enable Rapier Mode]
local Rapier_Mode = R3K_ReadMem16(0x1F701A)
if Rapier_Mode == 0x0001 then
R3K_WriteMem16(0x801F701A,0x0101)
end
--[Enable Rapier Levels]
local Rapier_Levels = R3K_ReadMem16(0x1F701A)
if Rapier_Levels == 0x0001 then
R3K_WriteMem16(0x801F7046,0x0101)
end
--[Infinite Race Re-Starts]
local Race_ReStarts = R3K_ReadMem16(0x1F7014)
if Race_ReStarts == 00802 then
R3K_WriteMem16(0x801F7014,0x0803)
end

end

EM_AddVsyncHook(patcher)