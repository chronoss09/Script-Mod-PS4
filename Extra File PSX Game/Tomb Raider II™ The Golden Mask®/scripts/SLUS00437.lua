-- Tomb Raider 2 (v1.0-1.3) (US) (SLUS-00437, SLUS-00437A, SLUS-00437CE, SLUS-00437GH) 
-- Disable dithering hack by krHACKen 
-- ported to PS4 lua by Stayhye
-- emu used=syphon filter v2


local patcher = function()
--Disable dithering
local no_dither1 = R3K_ReadMem16(0x068ABC)
if no_dither1 == 0x0718 then
R3K_WriteMem16(0x30068ABD,0x0005)
end
local no_dither2 = R3K_ReadMem16(0x068BD0)
if no_dither2 == 0x071C then
R3K_WriteMem16(0x30068BD1,0x0005)
end
local no_dither3 = R3K_ReadMem16(0x069944)
if no_dither3 == 0x0600 then
R3K_WriteMem16(0x30069945,0x0004)
end
local no_dither4 = R3K_ReadMem16(0x079410)
if no_dither4 == 0x0200 then
R3K_WriteMem16(0x30079411,0x0000)
end
--[Have All Levels (You Must Load A Saved Game)]
local levels1 = R3K_ReadMem16(0x06E678)
if levels1 == 0x0821 then
R3K_WriteMem16(0x8006E67C,0x0013)
end
local levels2 = R3K_ReadMem16(0x06E678)
if levels2 == 0x0821 then
R3K_WriteMem16(0x8006E67E,0x2402)
end 


end

EM_AddVsyncHook(patcher)

--[[
R3K_GetPC
R3K_SetPC
R3K_GetHi
R3K_SetHi
R3K_GetLo
R3K_SetLo
R3K_GetGpr
R3K_SetGpr
R3K_ReadMem8
R3K_ReadMem16
R3K_ReadMem32
R3K_ReadMemFloat
R3K_ReadMemString
R3K_WriteMem8
R3K_WriteMem16
R3K_WriteMem32
R3K_WriteMemFloat
R3K_WriteMemString
R3K_WriteMemStringZ
R3K_AddHook
R3K_RemoveHook
R3K_InsnReplace
R3K_BurnCycles
R3K_FlushCache
EM_PadRead
EM_PadWrite
EM_PadReadLeftStick
EM_PadReadRightStick
EM_PadSetButtonsMode
EM_ThrottleMax
EM_ThrottleNormal
EM_GetNativeLanguage
EM_NeoMode
EM_CRC32
EM_AddVsyncHook
EM_RemoveVsyncHook
EM_LoadConfig
EM_SaveConfig
EM_LoadState
EM_SaveState
EM_Launch
EM_GetLegacyTitleId
EM_GetStoreRegion
EM_GetSettingCli
EM_SetSettingCli
EM_GetCDRom
EM_SetCDRom
EM_GetDiscId
EM_LoadDiscId
TR_Unlock
at
v0
v1
a0
a1
a2
a3
t0
t1
t2
t3
t4
t5
t6
t7
s0
s1
s2
s3
s4
s5
s6
s7
t8
t9
k0
k1
gp
sp
fp
ra
gpr
ctl
parameter is not a function
Instruction Replacements can only be installed at script load time
InsnReplace: Opcode at PC %08x already replaced!
InsnReplace 0x%08x: 0x%08x
(LuaEngine) ERROR: 
Invalid player specified on EM_PadRead
Invalid parameter sent to EM_PadWrite
Invalid player specified on EM_PadWrite
Invalid player specified on EM_PadReadLeftStick
Invalid player specified on EM_PadReadRightStick
EM_PadSetButtonsMode is deprecated
EM_GetCDRom() is removed. Use EM_GetLegacyTitleID() to differentiate discs after a call to EM_LoadDiscId(). Use EM_GetStoreRegion() for store region info.
jp
fr
es
de
it
nl
pt
ru
ko
cht
chs
fi
se
dk
pl
ptb
gb
tr
esl
ar
frc
--]]
