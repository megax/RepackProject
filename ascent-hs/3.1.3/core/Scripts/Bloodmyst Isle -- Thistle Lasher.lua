--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ThistleLasher_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistleLasher_Lash", 8000, 0)
end

function ThistleLasher_Lash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31286, pUnit:GetMainTank()) 
end

function ThistleLasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistleLasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistleLasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17343, 1, "ThistleLasher_OnCombat")
RegisterUnitEvent(17343, 2, "ThistleLasher_OnLeaveCombat")
RegisterUnitEvent(17343, 3, "ThistleLasher_OnKilledTarget")
RegisterUnitEvent(17343, 4, "ThistleLasher_OnDied")