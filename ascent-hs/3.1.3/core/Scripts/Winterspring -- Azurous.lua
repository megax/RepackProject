--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Azurous_OnCombat(Unit, Event)
Unit:RegisterEvent("Azurous_Breath", 8000, 0)
end

function Azurous_Breath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16099, pUnit:GetMainTank()) 
end

function Azurous_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Azurous_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Azurous_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10202, 1, "Azurous_OnCombat")
RegisterUnitEvent(10202, 2, "Azurous_OnLeaveCombat")
RegisterUnitEvent(10202, 3, "Azurous_OnKilledTarget")
RegisterUnitEvent(10202, 4, "Azurous_OnDied")