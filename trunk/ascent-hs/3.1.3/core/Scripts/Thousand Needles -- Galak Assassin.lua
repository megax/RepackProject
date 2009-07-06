--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GalakAssassin_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakAssassin_Net", 10000, 0)
end

function GalakAssassin_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function GalakAssassin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakAssassin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakAssassin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10720, 1, "GalakAssassin_OnCombat")
RegisterUnitEvent(10720, 2, "GalakAssassin_OnLeaveCombat")
RegisterUnitEvent(10720, 3, "GalakAssassin_OnKilledTarget")
RegisterUnitEvent(10720, 4, "GalakAssassin_OnDied")