--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BurningBladeAdept_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeAdept_Bloodlust", 5000, 1)
Unit:RegisterEvent("BurningBladeAdept_Fireball", 8000, 0)
end

function BurningBladeAdept_Bloodlust(pUnit, Event) 
pUnit:CastSpell(6742) 
end

function BurningBladeAdept_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19816, pUnit:GetMainTank()) 
end

function BurningBladeAdept_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeAdept_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeAdept_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4665, 1, "BurningBladeAdept_OnCombat")
RegisterUnitEvent(4665, 2, "BurningBladeAdept_OnLeaveCombat")
RegisterUnitEvent(4665, 3, "BurningBladeAdept_OnKilledTarget")
RegisterUnitEvent(4665, 4, "BurningBladeAdept_OnDied")