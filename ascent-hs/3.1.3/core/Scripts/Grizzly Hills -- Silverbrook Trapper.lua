--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SilverbrookTrapper_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverbrookTrapper_HookedNet", 12000, 0)
Unit:RegisterEvent("SilverbrookTrapper_Shoot", 6000, 0)
end

function SilverbrookTrapper_HookedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13608, pUnit:GetMainTank()) 
end

function SilverbrookTrapper_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SilverbrookTrapper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverbrookTrapper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverbrookTrapper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26679, 1, "SilverbrookTrapper_OnCombat")
RegisterUnitEvent(26679, 2, "SilverbrookTrapper_OnLeaveCombat")
RegisterUnitEvent(26679, 3, "SilverbrookTrapper_OnKilledTarget")
RegisterUnitEvent(26679, 4, "SilverbrookTrapper_OnDied")