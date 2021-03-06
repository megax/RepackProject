--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Sarendryana_OnCombat(Unit, Event)
Unit:RegisterEvent("Sarendryana_FrostShock", 6000, 0)
end

function Sarendryana_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function Sarendryana_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Sarendryana_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Sarendryana_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26837, 1, "Sarendryana_OnCombat")
RegisterUnitEvent(26837, 2, "Sarendryana_OnLeaveCombat")
RegisterUnitEvent(26837, 3, "Sarendryana_OnKilledTarget")
RegisterUnitEvent(26837, 4, "Sarendryana_OnDied")