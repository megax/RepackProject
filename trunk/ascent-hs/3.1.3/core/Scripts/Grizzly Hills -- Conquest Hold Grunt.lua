--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ConquestHoldGrunt_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldGrunt_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("ConquestHoldGrunt_HeroicStrike", 5000, 0)
Unit:RegisterEvent("ConquestHoldGrunt_Intercept", 9000, 0)
end

function ConquestHoldGrunt_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function ConquestHoldGrunt_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function ConquestHoldGrunt_Intercept(pUnit, Event) 
pUnit:FullCastSpellOnTarget(27577, pUnit:GetMainTank()) 
end

function ConquestHoldGrunt_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldGrunt_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldGrunt_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27470, 1, "ConquestHoldGrunt_OnCombat")
RegisterUnitEvent(27470, 2, "ConquestHoldGrunt_OnLeaveCombat")
RegisterUnitEvent(27470, 3, "ConquestHoldGrunt_OnKilledTarget")
RegisterUnitEvent(27470, 4, "ConquestHoldGrunt_OnDied")