--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Aluntir_OnCombat(Unit, Event)
Unit:RegisterEvent("Aluntir_BerserkerCharge", 6000, 0)
end

function Aluntir_BerserkerCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19471, pUnit:GetRandomPlayer(0)) 
end

function Aluntir_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Aluntir_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Aluntir_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15288, 1, "Aluntir_OnCombat")
RegisterUnitEvent(15288, 2, "Aluntir_OnLeaveCombat")
RegisterUnitEvent(15288, 3, "Aluntir_OnKilledTarget")
RegisterUnitEvent(15288, 4, "Aluntir_OnDied")