--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Rocknar_OnCombat(Unit, Event)
Unit:RegisterEvent("Rocknar_HardenSkin", 2000, 1)
Unit:RegisterEvent("Rocknar_IceSpike", 8000, 0)
end

function Rocknar_HardenSkin(pUnit, Event) 
pUnit:CastSpell(22693) 
end

function Rocknar_IceSpike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50094, pUnit:GetMainTank()) 
end

function Rocknar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Rocknar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Rocknar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25514, 1, "Rocknar_OnCombat")
RegisterUnitEvent(25514, 2, "Rocknar_OnLeaveCombat")
RegisterUnitEvent(25514, 3, "Rocknar_OnKilledTarget")
RegisterUnitEvent(25514, 4, "Rocknar_OnDied")