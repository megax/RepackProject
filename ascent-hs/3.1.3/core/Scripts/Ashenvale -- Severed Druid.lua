--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SeveredDruid_OnCombat(Unit, Event)
Unit:RegisterEvent("SeveredDruid_Wrath", 6000, 0)
Unit:RegisterEvent("SeveredDruid_Rejuvenation", 13000, 0)
end

function SeveredDruid_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function SeveredDruid_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(1430) 
end

function SeveredDruid_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeveredDruid_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeveredDruid_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3799, 1, "SeveredDruid_OnCombat")
RegisterUnitEvent(3799, 2, "SeveredDruid_OnLeaveCombat")
RegisterUnitEvent(3799, 3, "SeveredDruid_OnKilledTarget")
RegisterUnitEvent(3799, 4, "SeveredDruid_OnDied")