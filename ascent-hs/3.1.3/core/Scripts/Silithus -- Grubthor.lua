--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Grubthor_OnCombat(Unit, Event)
Unit:RegisterEvent("Grubthor_Tramble", 6000, 0)
end

function Grubthor_Tramble(pUnit, Event) 
pUnit:CastSpell(5568) 
end

function Grubthor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Grubthor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Grubthor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14477, 1, "Grubthor_OnCombat")
RegisterUnitEvent(14477, 2, "Grubthor_OnLeaveCombat")
RegisterUnitEvent(14477, 3, "Grubthor_OnKilledTarget")
RegisterUnitEvent(14477, 4, "Grubthor_OnDied")