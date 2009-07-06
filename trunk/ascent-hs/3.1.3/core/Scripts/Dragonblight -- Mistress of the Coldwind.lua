--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MistressoftheColdwind_OnCombat(Unit, Event)
Unit:RegisterEvent("MistressoftheColdwind_ArcticWinds", 6500, 0)
Unit:RegisterEvent("MistressoftheColdwind_Renew", 18000, 0)
end

function MistressoftheColdwind_ArcticWinds(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52814, pUnit:GetMainTank()) 
end

function MistressoftheColdwind_Renew(pUnit, Event) 
pUnit:CastSpell(38210) 
end

function MistressoftheColdwind_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MistressoftheColdwind_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MistressoftheColdwind_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26578, 1, "MistressoftheColdwind_OnCombat")
RegisterUnitEvent(26578, 2, "MistressoftheColdwind_OnLeaveCombat")
RegisterUnitEvent(26578, 3, "MistressoftheColdwind_OnKilledTarget")
RegisterUnitEvent(26578, 4, "MistressoftheColdwind_OnDied")