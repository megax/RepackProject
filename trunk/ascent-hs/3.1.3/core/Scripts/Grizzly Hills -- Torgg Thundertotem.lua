--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TorggThundertotem_OnCombat(Unit, Event)
Unit:RegisterEvent("TorggThundertotem_ChainLightning", 9000, 0)
Unit:RegisterEvent("TorggThundertotem_CorruptedNovaTotem", 2000, 1)
Unit:RegisterEvent("TorggThundertotem_EarthShock", 6000, 0)
Unit:RegisterEvent("TorggThundertotem_HealingWave", 13000, 0)
end

function TorggThundertotem_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16033, pUnit:GetMainTank()) 
end

function TorggThundertotem_CorruptedNovaTotem(pUnit, Event) 
pUnit:CastSpell(31991) 
end

function TorggThundertotem_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15501, pUnit:GetMainTank()) 
end

function TorggThundertotem_HealingWave(pUnit, Event) 
pUnit:CastSpell(15982) 
end

function TorggThundertotem_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TorggThundertotem_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TorggThundertotem_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27716, 1, "TorggThundertotem_OnCombat")
RegisterUnitEvent(27716, 2, "TorggThundertotem_OnLeaveCombat")
RegisterUnitEvent(27716, 3, "TorggThundertotem_OnKilledTarget")
RegisterUnitEvent(27716, 4, "TorggThundertotem_OnDied")