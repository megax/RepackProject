--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DrysnapPincer_OnCombat(Unit, Event)
Unit:RegisterEvent("DrysnapPincer_Rend", 10000, 0)
Unit:RegisterEvent("DrysnapPincer_SunderArmor", 6000, 0)
end

function DrysnapPincer_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13443, pUnit:GetMainTank()) 
end

function DrysnapPincer_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13444, pUnit:GetMainTank()) 
end

function DrysnapPincer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrysnapPincer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrysnapPincer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11563, 1, "DrysnapPincer_OnCombat")
RegisterUnitEvent(11563, 2, "DrysnapPincer_OnLeaveCombat")
RegisterUnitEvent(11563, 3, "DrysnapPincer_OnKilledTarget")
RegisterUnitEvent(11563, 4, "DrysnapPincer_OnDied")