--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NexusDrakeHatchling_OnCombat(Unit, Event)
Unit:RegisterEvent("NexusDrakeHatchling_IntangiblePresence", 10000, 0)
Unit:RegisterEvent("NexusDrakeHatchling_Netherbreath", 7500, 0)
end

function NexusDrakeHatchling_IntangiblePresence(pUnit, Event) 
pUnit:CastSpell(36513) 
end

function NexusDrakeHatchling_Netherbreath(pUnit, Event) 
pUnit:CastSpell(36631) 
end

function NexusDrakeHatchling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NexusDrakeHatchling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NexusDrakeHatchling_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26127, 1, "NexusDrakeHatchling_OnCombat")
RegisterUnitEvent(26127, 2, "NexusDrakeHatchling_OnLeaveCombat")
RegisterUnitEvent(26127, 3, "NexusDrakeHatchling_OnKilledTarget")
RegisterUnitEvent(26127, 4, "NexusDrakeHatchling_OnDied")