--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function EmaciatedMammoth_OnCombat(Unit, Event)
Unit:RegisterEvent("EmaciatedMammoth_Trample", 6000, 0)
end

function EmaciatedMammoth_Trample(pUnit, Event) 
pUnit:CastSpell(51944) 
end

function EmaciatedMammoth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmaciatedMammoth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmaciatedMammoth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26272, 1, "EmaciatedMammoth_OnCombat")
RegisterUnitEvent(26272, 2, "EmaciatedMammoth_OnLeaveCombat")
RegisterUnitEvent(26272, 3, "EmaciatedMammoth_OnKilledTarget")
RegisterUnitEvent(26272, 4, "EmaciatedMammoth_OnDied")