--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Hunter_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Hunter_DeMaterialize",8000,0)
    pUnit:RegisterEvent("Hunter_ManaBurn",3000,0)
end

function Hunter_DeMaterialize(pUnit,Event)
    pUnit:CastSpell(34814)
    pUnit:RegisterEvent("Hunter_Materialize",3000,0)
end   
   
function Hunter_ManaBurn(pUnit,Event)
    pUnit:FullCastSpellOnTarget(13321,pUnit:GetClosestPlayer())
end

function Hunter_Materialize(pUnit,Event)
    pUnit:CastSpell(34804)
end
    
function Hunter_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Hunter_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18879, 1, "Hunter_OnEnterCombat")
RegisterUnitEvent (18879, 2, "Hunter_OnLeaveCombat")
RegisterUnitEvent (18879, 4, "Hunter_OnDied")