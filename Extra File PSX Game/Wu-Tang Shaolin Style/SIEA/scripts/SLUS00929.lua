-- Wu-Tang: Shaolin Style [NTSC-U] (SLUS-00929)
-- Widescreen hack by El_Patas
-- ported to PS4 lua
-- emu used=syphonfilter v2

if true then

end

local patcher = function()
--16:9 Widescreen 
R3K_WriteMem16(0x8009BEF0,0x1333)
--[Blood On]
R3K_WriteMem16(0x301EA22C,0x0001)
--[Have All Chambers]
R3K_WriteMem16(0x50001702,0x0000)
R3K_WriteMem16(0x801EA458,0xFFFF)
--[Have All Secrets]
R3K_WriteMem16(0x301EA4C4,0x00FF)

--[Have All Characters]
R3K_WriteMem16(0x801EA1DC,0xFFFF)
R3K_WriteMem16(0x801EA1DE,0x001F)

--[Have All Levels]
R3K_WriteMem16(0x801EA1E0,0xFFFF)
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
InsnReplace
--]]
