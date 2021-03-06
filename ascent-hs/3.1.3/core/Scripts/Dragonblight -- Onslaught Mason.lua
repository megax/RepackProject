--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function OnslaughtMason_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtMason_SlingMortar", 6500, 0)
Unit:RegisterEvent("OnslaughtMason_SunderArmor", 5500, 0)
end

function OnslaughtMason_SlingMortar(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50701, pUnit:GetMainTank()) 
end

function OnslaughtMason_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50370, pUnit:GetMainTank()) 
end

function OnslaughtMason_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtMason_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtMason_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27333, 1, "OnslaughtMason_OnCombat")
RegisterUnitEvent(27333, 2, "OnslaughtMason_OnLeaveCombat")
RegisterUnitEvent(27333, 3, "OnslaughtMason_OnKilledTarget")
RegisterUnitEvent(27333, 4, "OnslaughtMason_OnDied")