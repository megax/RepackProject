--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TwilightMarauderMorna_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightMarauderMorna_MortalStrike", 6000, 0)
Unit:RegisterEvent("TwilightMarauderMorna_PiercingHowl", 10000, 0)
Unit:RegisterEvent("TwilightMarauderMorna_SunderArmor", 4000, 0)
end

function TwilightMarauderMorna_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16856, pUnit:GetMainTank()) 
end

function TwilightMarauderMorna_PiercingHowl(pUnit, Event) 
pUnit:CastSpell(23600) 
end

function TwilightMarauderMorna_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15572, pUnit:GetMainTank()) 
end

function TwilightMarauderMorna_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightMarauderMorna_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightMarauderMorna_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15541, 1, "TwilightMarauderMorna_OnCombat")
RegisterUnitEvent(15541, 2, "TwilightMarauderMorna_OnLeaveCombat")
RegisterUnitEvent(15541, 3, "TwilightMarauderMorna_OnKilledTarget")
RegisterUnitEvent(15541, 4, "TwilightMarauderMorna_OnDied")