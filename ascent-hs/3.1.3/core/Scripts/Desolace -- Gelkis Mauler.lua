--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GelkisMauler_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisMauler_Thrash", 5000, 0)
end

function GelkisMauler_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function GelkisMauler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisMauler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisMauler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4652, 1, "GelkisMauler_OnCombat")
RegisterUnitEvent(4652, 2, "GelkisMauler_OnLeaveCombat")
RegisterUnitEvent(4652, 3, "GelkisMauler_OnKilledTarget")
RegisterUnitEvent(4652, 4, "GelkisMauler_OnDied")