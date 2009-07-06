--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RazormaneScout_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneScout_Shoot", 6000, 0)
end

function RazormaneScout_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function RazormaneScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3112, 1, "RazormaneScout_OnCombat")
RegisterUnitEvent(3112, 2, "RazormaneScout_OnLeaveCombat")
RegisterUnitEvent(3112, 3, "RazormaneScout_OnKilledTarget")
RegisterUnitEvent(3112, 4, "RazormaneScout_OnDied")