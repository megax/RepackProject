--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function StarsRestSentinel_OnCombat(Unit, Event)
Unit:RegisterEvent("StarsRestSentinel_FrostArrow", 8000, 0)
Unit:RegisterEvent("StarsRestSentinel_Shoot", 6000, 0)
end

function StarsRestSentinel_FrostArrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47059, pUnit:GetMainTank()) 
end

function StarsRestSentinel_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(23337, pUnit:GetMainTank()) 
end

function StarsRestSentinel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StarsRestSentinel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StarsRestSentinel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26448, 1, "StarsRestSentinel_OnCombat")
RegisterUnitEvent(26448, 2, "StarsRestSentinel_OnLeaveCombat")
RegisterUnitEvent(26448, 3, "StarsRestSentinel_OnKilledTarget")
RegisterUnitEvent(26448, 4, "StarsRestSentinel_OnDied")