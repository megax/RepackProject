--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RedfangHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("RedfangHunter_CarnivorousBite", 10000, 0)
Unit:RegisterEvent("RedfangHunter_Net", 11000, 0)
Unit:RegisterEvent("RedfangHunter_Shoot", 6000, 0)
end

function RedfangHunter_CarnivorousBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30639, pUnit:GetMainTank()) 
end

function RedfangHunter_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function RedfangHunter_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function RedfangHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RedfangHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RedfangHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26356, 1, "RedfangHunter_OnCombat")
RegisterUnitEvent(26356, 2, "RedfangHunter_OnLeaveCombat")
RegisterUnitEvent(26356, 3, "RedfangHunter_OnKilledTarget")
RegisterUnitEvent(26356, 4, "RedfangHunter_OnDied")