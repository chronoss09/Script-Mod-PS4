-- Downhill Domination (NTSC-U) [SCUS-97177]
-- Widescreen Hacks (by Aced14)
-- no interlacing by someother1ne
-- speed fix by Raigho @ PCSX2 forums
-- ported to PS4
-- emu used=star wars racer's revenge v1

local gpr = require("ee-gpr-alias")

apiRequest(0.4)

local eeObj = getEEObject()
local emuObj = getEmuObject()

local patcher = function()
-- no interlace
eeObj.WriteMem32(0x00243D34,0x30420000)
--Conditional live memory fixes for Bike Shop menu
local code_check1 = eeObj.ReadMem16(0xA095D0)
if code_check1 == 0x0002 then
eeObj.WriteMem32(0x20A095D0,0x3FAA3D71) --00000000 - Bike Shop Top HUD Width (Live Memory)
eeObj.WriteMem32(0x20A09610,0x3FAA3D71) --00000000 - Bike Shop Bottom HUD Width (Live Memory)
eeObj.WriteMem32(0x20A60038,0xC2DE0000) --00000000 - Bike Shop Shadow Shape/Width (Live Memory)
end
--Disable Sun and its Cones
eeObj.WriteMem32(0x0029DBA5,0x0)
--Disable Characters Shadows
eeObj.WriteMem32(0x0029E268,0x0)
--Disable Stages Backdrop
eeObj.WriteMem32(0x0029E200,0x0)
eeObj.Vu1MpgCycles(math.floor(3990))
emuObj.ThrottleMax()
end

emuObj.AddVsyncHook(patcher)

--16:9 Widescreen
eeInsnReplace(0x101B9EF0, 0x3C01442C, 0x00004401) -- - Shell Menu Master X FOV

eeInsnReplace(0x2027F500, 0x438A8000, 0x434FC000) -- - Loading Screen Master X FOV
eeInsnReplace(0x2027F520, 0x3F15551D, 0x3F471C26) -- - Loading Screen Master Y FOV

eeInsnReplace(0x101B68F4, 0x3C01442C, 0x00004401) -- - Title Menu Master X FOV
eeInsnReplace(0x2026C5C0, 0x438A8000, 0x434FC000) -- - Tree Sprite Width #1
eeInsnReplace(0x2026C700, 0x438A8000, 0x434FC000) -- - Tree Sprite Width #2
eeInsnReplace(0x2026C758, 0x438A8000, 0x434FC000) -- - Tree Sprite Width #3

eeInsnReplace(0x101F8510, 0x3C01442C, 0x00004401) -- - Bike Shop Menu Goggles Default Master X FOV (added to close-up float by game engine to produce a "final" close-up X FOV)
eeInsnReplace(0x101F84F8, 0x3C014510, 0x000044D8) -- - Bike Shop Menu Goggles Close-up Master X FOV #1
eeInsnReplace(0x101F84FC, 0x34218000, 0x0000C000) -- - Bike Shop Menu Goggles Close-up Master X FOV #2
eeInsnReplace(0x2027F0A0, 0x3EF0A3D7, 0x3F206D3A) -- - Menu Master Y FOV

eeInsnReplace(0x1016BA30, 0x3C01438A, 0x0000434F) -- - 1P P1 Master X FOV #1
eeInsnReplace(0x1016BA34, 0x34218000, 0x0000C000) -- - 1P P1 Master X FOV #2
eeInsnReplace(0x101A8D4C, 0x3C01438A, 0x0000434F) -- - 1P P1 Replay Master X FOV #1
eeInsnReplace(0x101A8D50, 0x34218000, 0x0000C000) -- - 1P P1 Replay Master X FOV #2
eeInsnReplace(0x2027ECE0, 0x3F15551D, 0x3F471C26) -- - 1P P1 Master Y FOV

eeInsnReplace(0x2027EF00, 0x435E0000, 0x43268000) -- - 2P Vertical P1 Master X FOV
eeInsnReplace(0x2027EF20, 0x3F15551D, 0x3F471C26) -- - 2P Vertical P1 Master Y FOV
eeInsnReplace(0x2027EFC0, 0x435E0000, 0x43268000) -- - 2P Vertical P2 Master X FOV
eeInsnReplace(0x2027EFE0, 0x3F15551D, 0x3F471C26) -- - 2P Vertical P2 Master Y FOV

eeInsnReplace(0x2027ED80, 0x438A8000, 0x434FC000) -- - 2P Horizontal P1 Master X FOV
eeInsnReplace(0x2027EDA0, 0x3F155550, 0x3F471C6A) -- - 2P Horizontal P1 Master Y FOV
eeInsnReplace(0x2027EE40, 0x438A8000, 0x434FC000) -- - 2P Horizontal P2 Master X FOV
eeInsnReplace(0x2027EE60, 0x3F155550, 0x3F471C6A) -- - 2P Horizontal P2 Master Y FOV

eeInsnReplace(0x2027F140, 0x43520000, 0x431D8000) -- - 4P P1 Master X FOV
eeInsnReplace(0x2027F160, 0x3EF0A3D7, 0x3F206D3A) -- - 4P P1 Master Y FOV
eeInsnReplace(0x2027F200, 0x43520000, 0x431D8000) -- - 4P P2 Master X FOV
eeInsnReplace(0x2027F220, 0x3EF0A3D7, 0x3F206D3A) -- - 4P P2 Master Y FOV
eeInsnReplace(0x2027F2C0, 0x43520000, 0x431D8000) -- - 4P P3 Master X FOV
eeInsnReplace(0x2027F2E0, 0x3EF0A3D7, 0x3F206D3A) -- - 4P P3 Master Y FOV
eeInsnReplace(0x2027F380, 0x43520000, 0x431D8000) -- - 4P P4 Master X FOV
eeInsnReplace(0x2027F3A0, 0x3EF0A3D7, 0x3F206D3A) -- - 4P P4 Master Y FOV

eeInsnReplace(0x2027ECC0, 0x438A8000, 0x434FC000) -- - 2-4P P1-4 Paused Master X FOV
