-- Bushido Blade 2 [NTSC-U] (SLUS-00663)
-- Widescreen hack by VIRGIN KLM


local patcher = function()
--Widescreen 16:9
R3K_WriteMem16(0x800FF650,0x0C00)
--Dither off code (with conditional code to work with widescreen)
local code_check1 = R3K_ReadMem16(0x07C788)
if code_check1 == 0x0200 then
R3K_WriteMem16(0x8007C788,0x0000)
end

end

EM_AddVsyncHook(patcher)