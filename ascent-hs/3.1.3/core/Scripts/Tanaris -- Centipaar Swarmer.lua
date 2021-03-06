--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CentipaarSwarmer_OnCombat(Unit, Event)
Unit:RegisterEvent("CentipaarSwarmer_SilithidSwarm", 10000, 1)
Unit:RegisterEvent("CentipaarSwarmer_Thrash", 6000, 0)
end

function CentipaarSwarmer_SilithidSwarm(pUnit, Event) 
pUnit:CastSpell(6589) 
end

function CentipaarSwarmer_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function CentipaarSwarmer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CentipaarSwarmer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CentipaarSwarmer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5457, 1, "CentipaarSwarmer_OnCombat")
RegisterUnitEvent(5457, 2, "CentipaarSwarmer_OnLeaveCombat")
RegisterUnitEvent(5457, 3, "CentipaarSwarmer_OnKilledTarget")
RegisterUnitEvent(5457, 4, "CentipaarSwarmer_OnDied")