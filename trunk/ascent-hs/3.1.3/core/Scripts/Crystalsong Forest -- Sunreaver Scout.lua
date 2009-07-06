--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SunreaverScout_OnCombat(Unit, Event)
Unit:RegisterEvent("SunreaverScout_MultiShot", 8000, 0)
Unit:RegisterEvent("SunreaverScout_Shoot", 6000, 0)
end

function SunreaverScout_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14443, pUnit:GetMainTank()) 
end

function SunreaverScout_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SunreaverScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunreaverScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunreaverScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30233, 1, "SunreaverScout_OnCombat")
RegisterUnitEvent(30233, 2, "SunreaverScout_OnLeaveCombat")
RegisterUnitEvent(30233, 3, "SunreaverScout_OnKilledTarget")
RegisterUnitEvent(30233, 4, "SunreaverScout_OnDied")