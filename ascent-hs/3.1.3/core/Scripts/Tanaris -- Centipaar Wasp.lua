--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CentipaarWasp_OnCombat(Unit, Event)
Unit:RegisterEvent("CentipaarWasp_Poison", 10000, 0)
Unit:RegisterEvent("CentipaarWasp_Thrash", 6000, 0)
end

function CentipaarWasp_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function CentipaarWasp_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function CentipaarWasp_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CentipaarWasp_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CentipaarWasp_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5455, 1, "CentipaarWasp_OnCombat")
RegisterUnitEvent(5455, 2, "CentipaarWasp_OnLeaveCombat")
RegisterUnitEvent(5455, 3, "CentipaarWasp_OnKilledTarget")
RegisterUnitEvent(5455, 4, "CentipaarWasp_OnDied")