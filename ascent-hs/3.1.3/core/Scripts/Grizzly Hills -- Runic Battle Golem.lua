--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RunicBattleGolem_OnCombat(Unit, Event)
Unit:RegisterEvent("RunicBattleGolem_BattleRunes", 7000, 0)
end

function RunicBattleGolem_BattleRunes(pUnit, Event) 
pUnit:CastSpell(52630) 
end

function RunicBattleGolem_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RunicBattleGolem_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RunicBattleGolem_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26284, 1, "RunicBattleGolem_OnCombat")
RegisterUnitEvent(26284, 2, "RunicBattleGolem_OnLeaveCombat")
RegisterUnitEvent(26284, 3, "RunicBattleGolem_OnKilledTarget")
RegisterUnitEvent(26284, 4, "RunicBattleGolem_OnDied")