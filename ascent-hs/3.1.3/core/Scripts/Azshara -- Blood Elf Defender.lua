--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodElfDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodElfDefender_Revenge", 6000, 0)
Unit:RegisterEvent("BloodElfDefender_ShieldBlock", 8000, 0)
end

function BloodElfDefender_Revenge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12170, pUnit:GetMainTank()) 
end

function BloodElfDefender_ShieldBlock(pUnit, Event) 
pUnit:CastSpell(12169) 
end

function BloodElfDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodElfDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodElfDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8581, 1, "BloodElfDefender_OnCombat")
RegisterUnitEvent(8581, 2, "BloodElfDefender_OnLeaveCombat")
RegisterUnitEvent(8581, 3, "BloodElfDefender_OnKilledTarget")
RegisterUnitEvent(8581, 4, "BloodElfDefender_OnDied")