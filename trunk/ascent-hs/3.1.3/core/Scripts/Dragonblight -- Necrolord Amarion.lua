--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NecrolordAmarion_OnCombat(Unit, Event)
Unit:RegisterEvent("NecrolordAmarion_Decimate", 5500, 0)
end

function NecrolordAmarion_Decimate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51339, pUnit:GetMainTank()) 
end

function NecrolordAmarion_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NecrolordAmarion_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NecrolordAmarion_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27508, 1, "NecrolordAmarion_OnCombat")
RegisterUnitEvent(27508, 2, "NecrolordAmarion_OnLeaveCombat")
RegisterUnitEvent(27508, 3, "NecrolordAmarion_OnKilledTarget")
RegisterUnitEvent(27508, 4, "NecrolordAmarion_OnDied")