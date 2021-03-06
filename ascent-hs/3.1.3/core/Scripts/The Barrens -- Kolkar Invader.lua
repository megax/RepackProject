--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function KolkarInvader_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarInvader_FlingTorch", 2000, 1)
Unit:RegisterEvent("KolkarInvader_RushingCharge", 8000, 0)
Unit:RegisterEvent("KolkarInvader_Strike", 6000, 0)
Unit:RegisterEvent("KolkarInvader_Tetanus", 4000, 1)
end

function KolkarInvader_FlingTorch(pUnit, Event) 
pUnit:CastSpell(14292) 
end

function KolkarInvader_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function KolkarInvader_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function KolkarInvader_Tetanus(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8014, pUnit:GetMainTank()) 
end

function KolkarInvader_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarInvader_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarInvader_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(9524, 1, "KolkarInvader_OnCombat")
RegisterUnitEvent(9524, 2, "KolkarInvader_OnLeaveCombat")
RegisterUnitEvent(9524, 3, "KolkarInvader_OnKilledTarget")
RegisterUnitEvent(9524, 4, "KolkarInvader_OnDied")