--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ArkkoranOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("ArkkoranOracle_HealingWave", 13000, 0)
Unit:RegisterEvent("ArkkoranOracle_LightningShield", 3000, 0)
Unit:RegisterEvent("ArkkoranOracle_Shock", 5000, 0)
end

function ArkkoranOracle_HealingWave(pUnit, Event) 
pUnit:CastSpell(11986) 
end

function ArkkoranOracle_LightningShield(pUnit, Event) 
pUnit:CastSpell(12550) 
end

function ArkkoranOracle_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11824, pUnit:GetMainTank()) 
end

function ArkkoranOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArkkoranOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArkkoranOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6138, 1, "ArkkoranOracle_OnCombat")
RegisterUnitEvent(6138, 2, "ArkkoranOracle_OnLeaveCombat")
RegisterUnitEvent(6138, 3, "ArkkoranOracle_OnKilledTarget")
RegisterUnitEvent(6138, 4, "ArkkoranOracle_OnDied")