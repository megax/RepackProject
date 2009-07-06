--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SouthseaFreebooter_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaFreebooter_Shot", 6000, 0)
end

function SouthseaFreebooter_Shot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SouthseaFreebooter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaFreebooter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaFreebooter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7856, 1, "SouthseaFreebooter_OnCombat")
RegisterUnitEvent(7856, 2, "SouthseaFreebooter_OnLeaveCombat")
RegisterUnitEvent(7856, 3, "SouthseaFreebooter_OnKilledTarget")
RegisterUnitEvent(7856, 4, "SouthseaFreebooter_OnDied")