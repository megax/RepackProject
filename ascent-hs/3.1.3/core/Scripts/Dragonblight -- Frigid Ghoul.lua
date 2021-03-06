--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FrigidGhoul_OnCombat(Unit, Event)
Unit:RegisterEvent("FrigidGhoul_RotArmor", 8000, 0)
end

function FrigidGhoul_RotArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50361, pUnit:GetMainTank()) 
end

function FrigidGhoul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrigidGhoul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrigidGhoul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27534, 1, "FrigidGhoul_OnCombat")
RegisterUnitEvent(27534, 2, "FrigidGhoul_OnLeaveCombat")
RegisterUnitEvent(27534, 3, "FrigidGhoul_OnKilledTarget")
RegisterUnitEvent(27534, 4, "FrigidGhoul_OnDied")