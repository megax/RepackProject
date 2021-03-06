--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DevoutBodyguard_OnCombat(Unit, Event)
Unit:RegisterEvent("DevoutBodyguard_PiercingHowl", 8000, 0)
end

function DevoutBodyguard_PiercingHowl(pUnit, Event) 
pUnit:CastSpell(38256) 
end

function DevoutBodyguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DevoutBodyguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DevoutBodyguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27247, 1, "DevoutBodyguard_OnCombat")
RegisterUnitEvent(27247, 2, "DevoutBodyguard_OnLeaveCombat")
RegisterUnitEvent(27247, 3, "DevoutBodyguard_OnKilledTarget")
RegisterUnitEvent(27247, 4, "DevoutBodyguard_OnDied")