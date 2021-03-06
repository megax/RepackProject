--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BranchSnapper_OnCombat(Unit, Event)
Unit:RegisterEvent("BranchSnapper_DeadlyPoison", 10000, 0)
Unit:RegisterEvent("BranchSnapper_KnockAway", 8000, 0)
end

function BranchSnapper_DeadlyPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3583, pUnit:GetMainTank()) 
end

function BranchSnapper_KnockAway(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10101, pUnit:GetMainTank()) 
end

function BranchSnapper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BranchSnapper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BranchSnapper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10641, 1, "BranchSnapper_OnCombat")
RegisterUnitEvent(10641, 2, "BranchSnapper_OnLeaveCombat")
RegisterUnitEvent(10641, 3, "BranchSnapper_OnKilledTarget")
RegisterUnitEvent(10641, 4, "BranchSnapper_OnDied")