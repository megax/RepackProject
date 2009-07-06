--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function VentureCoMercenary_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoMercenary_Shoot", 6000, 0)
end

function VentureCoMercenary_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function VentureCoMercenary_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoMercenary_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoMercenary_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3382, 1, "VentureCoMercenary_OnCombat")
RegisterUnitEvent(3382, 2, "VentureCoMercenary_OnLeaveCombat")
RegisterUnitEvent(3382, 3, "VentureCoMercenary_OnKilledTarget")
RegisterUnitEvent(3382, 4, "VentureCoMercenary_OnDied")