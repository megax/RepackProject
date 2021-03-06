--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Thunderstomp_OnCombat(Unit, Event)
Unit:RegisterEvent("Thunderstomp_ChainedBolt", 6000, 0)
end

function Thunderstomp_ChainedBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6254, pUnit:GetMainTank()) 
end

function Thunderstomp_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Thunderstomp_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Thunderstomp_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5832, 1, "Thunderstomp_OnCombat")
RegisterUnitEvent(5832, 2, "Thunderstomp_OnLeaveCombat")
RegisterUnitEvent(5832, 3, "Thunderstomp_OnKilledTarget")
RegisterUnitEvent(5832, 4, "Thunderstomp_OnDied")