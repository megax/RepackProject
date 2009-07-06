--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BronzeShrineWarden_OnCombat(Unit, Event)
Unit:RegisterEvent("BronzeShrineWarden_SandBreath", 8000, 0)
Unit:RegisterEvent("BronzeShrineWarden_StopTime", 15000, 0)
end

function BronzeShrineWarden_SandBreath(pUnit, Event) 
pUnit:CastSpell(20716) 
end

function BronzeShrineWarden_StopTime(pUnit, Event) 
pUnit:CastSpell(60077) 
end

function BronzeShrineWarden_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BronzeShrineWarden_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BronzeShrineWarden_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26277, 1, "BronzeShrineWarden_OnCombat")
RegisterUnitEvent(26277, 2, "BronzeShrineWarden_OnLeaveCombat")
RegisterUnitEvent(26277, 3, "BronzeShrineWarden_OnKilledTarget")
RegisterUnitEvent(26277, 4, "BronzeShrineWarden_OnDied")