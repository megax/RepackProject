--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AzureManashaper_OnCombat(Unit, Event)
Unit:RegisterEvent("AzureManashaper_ArcaneBlast", 8000, 0)
Unit:RegisterEvent("AzureManashaper_Slow", 7000, 0)
end

function AzureManashaper_ArcaneBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10833, pUnit:GetMainTank()) 
end

function AzureManashaper_Slow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25603, pUnit:GetMainTank()) 
end

function AzureManashaper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzureManashaper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzureManashaper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31401, 1, "AzureManashaper_OnCombat")
RegisterUnitEvent(31401, 2, "AzureManashaper_OnLeaveCombat")
RegisterUnitEvent(31401, 3, "AzureManashaper_OnKilledTarget")
RegisterUnitEvent(31401, 4, "AzureManashaper_OnDied")