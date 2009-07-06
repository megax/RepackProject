--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ArcaneWyrm_OnCombat(Unit, Event)
Unit:RegisterEvent("ArcaneWyrm_ArcaneInfusion", 5000, 2)
end

function ArcaneWyrm_ArcaneInfusion(pUnit, Event) 
pUnit:CastSpell(51732) 
end

function ArcaneWyrm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArcaneWyrm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArcaneWyrm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26322, 1, "ArcaneWyrm_OnCombat")
RegisterUnitEvent(26322, 2, "ArcaneWyrm_OnLeaveCombat")
RegisterUnitEvent(26322, 3, "ArcaneWyrm_OnKilledTarget")
RegisterUnitEvent(26322, 4, "ArcaneWyrm_OnDied")