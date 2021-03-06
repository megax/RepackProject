--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Lightwarden_OnCombat(Unit, Event)
Unit:RegisterEvent("Lightwarden_Strike", 6000, 0)
Unit:RegisterEvent("Lightwarden_Hammer", 1000, 0)
Unit:RegisterEvent("Lightwarden_Heal", 7000, 0)
end

function Lightwarden_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14518, pUnit:GetMainTank()) 
end

function Lightwarden_Hammer(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13005, pUnit:GetMainTank()) 
end

function Lightwarden_Heal(pUnit, Event) 
pUnit:CastSpell(13952) 
end

function Lightwarden_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Lightwarden_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Lightwarden_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18537, 1, "Lightwarden_OnCombat")
RegisterUnitEvent(18537, 2, "Lightwarden_OnLeaveCombat")
RegisterUnitEvent(18537, 3, "Lightwarden_OnKilledTarget")
RegisterUnitEvent(18537, 4, "Lightwarden_OnDied")