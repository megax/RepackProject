--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GrumbaldOneEye_OnCombat(Unit, Event)
Unit:RegisterEvent("GrumbaldOneEye_ElementalEnlightenment", 3000, 1)
Unit:RegisterEvent("GrumbaldOneEye_FireBlast", 6000, 0)
Unit:RegisterEvent("GrumbaldOneEye_FrostNova", 9000, 0)
Unit:RegisterEvent("GrumbaldOneEye_FrostfireBolt", 9500, 0)
end

function GrumbaldOneEye_ElementalEnlightenment(pUnit, Event) 
pUnit:CastSpell(52495) 
end

function GrumbaldOneEye_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13339, pUnit:GetMainTank()) 
end

function GrumbaldOneEye_FrostNova(pUnit, Event) 
pUnit:CastSpell(11831) 
end

function GrumbaldOneEye_FrostfireBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51779, pUnit:GetMainTank()) 
end

function GrumbaldOneEye_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrumbaldOneEye_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrumbaldOneEye_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26681, 1, "GrumbaldOneEye_OnCombat")
RegisterUnitEvent(26681, 2, "GrumbaldOneEye_OnLeaveCombat")
RegisterUnitEvent(26681, 3, "GrumbaldOneEye_OnKilledTarget")
RegisterUnitEvent(26681, 4, "GrumbaldOneEye_OnDied")