--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HiveZoraWasp_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveZoraWasp_Poison", 10000, 0)
end

function HiveZoraWasp_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetRandomPlayer(0)) 
end

function HiveZoraWasp_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveZoraWasp_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveZoraWasp_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11727, 1, "HiveZoraWasp_OnCombat")
RegisterUnitEvent(11727, 2, "HiveZoraWasp_OnLeaveCombat")
RegisterUnitEvent(11727, 3, "HiveZoraWasp_OnKilledTarget")
RegisterUnitEvent(11727, 4, "HiveZoraWasp_OnDied")