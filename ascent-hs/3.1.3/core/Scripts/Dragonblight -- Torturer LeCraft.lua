--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TorturerLeCraft_OnCombat(Unit, Event)
Unit:RegisterEvent("TorturerLeCraft_Hemorrhage", 5000, 0)
Unit:RegisterEvent("TorturerLeCraft_KidneyShot", 10000, 0)
end

function TorturerLeCraft_Hemorrhage(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30478) 
end

function TorturerLeCraft_KidneyShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30621, pUnit:GetMainTank()) 
end

function TorturerLeCraft_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TorturerLeCraft_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TorturerLeCraft_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27209, 1, "TorturerLeCraft_OnCombat")
RegisterUnitEvent(27209, 2, "TorturerLeCraft_OnLeaveCombat")
RegisterUnitEvent(27209, 3, "TorturerLeCraft_OnKilledTarget")
RegisterUnitEvent(27209, 4, "TorturerLeCraft_OnDied")