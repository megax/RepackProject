--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FocusWizard_OnCombat(Unit, Event)
Unit:RegisterEvent("FocusWizard_ArcaneFocus", 1000, 1)
Unit:RegisterEvent("FocusWizard_FrostfireBolt", 5000, 1)
Unit:RegisterEvent("FocusWizard_LightningBolt", 8000, 0)
end

function FocusWizard_ArcaneFocus(pUnit, Event) 
pUnit:CastSpell(51777) 
end

function FocusWizard_FrostfireBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51779, pUnit:GetMainTank()) 
end

function FocusWizard_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49418, pUnit:GetMainTank()) 
end

function FocusWizard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FocusWizard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FocusWizard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26816, 1, "FocusWizard_OnCombat")
RegisterUnitEvent(26816, 2, "FocusWizard_OnLeaveCombat")
RegisterUnitEvent(26816, 3, "FocusWizard_OnKilledTarget")
RegisterUnitEvent(26816, 4, "FocusWizard_OnDied")