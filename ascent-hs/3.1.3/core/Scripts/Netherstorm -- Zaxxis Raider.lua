--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Raider_OnCombat(Unit, Event)
Unit:RegisterEvent("Raider_Energy", 8000, 0)
end

function Raider_Energy(pUnit, Event) 
pUnit:CastSpell(35922) 
end

function Raider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Raider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Raider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18875, 1, "Raider_OnCombat")
RegisterUnitEvent(18875, 2, "Raider_OnLeaveCombat")
RegisterUnitEvent(18875, 3, "Raider_OnKilledTarget")
RegisterUnitEvent(18875, 4, "Raider_OnDied")