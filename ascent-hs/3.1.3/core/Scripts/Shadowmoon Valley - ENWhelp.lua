--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ENWhelp_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ENWhelp_Spell", 4000, 0)
end

function ENWhelp_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38340,pUnit:GetClosestPlayer())
end

function ENWhelp_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ENWhelp_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21721, 1, "ENWhelp_OnEnterCombat")
RegisterUnitEvent(21721, 1, "ENWhelp_OnLeaveCombat")
RegisterUnitEvent(21721, 1, "ENWhelp_OnDeath")