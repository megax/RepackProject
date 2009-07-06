--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AncientWatcher_OnCombat(Unit, Event)
Unit:RegisterEvent("AncientWatcher_EntanglingRoots", 10000, 0)
Unit:RegisterEvent("AncientWatcher_Trample", 6000, 0)
end

function AncientWatcher_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33844, pUnit:GetMainTank()) 
end

function AncientWatcher_Trample(pUnit, Event) 
pUnit:CastSpell(51944) 
end

function AncientWatcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AncientWatcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AncientWatcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31229, 1, "AncientWatcher_OnCombat")
RegisterUnitEvent(31229, 2, "AncientWatcher_OnLeaveCombat")
RegisterUnitEvent(31229, 3, "AncientWatcher_OnKilledTarget")
RegisterUnitEvent(31229, 4, "AncientWatcher_OnDied")