--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

-- Note all the randomizations of my scripts
-- Randomizing to simulate the non garunteed spell casting
-- Such as the way blizzard npcs dont cast everything the 
-- ever 3 secs its always random


function Aluvion_FrostNova(pUnit) -- Frost nova spell
	local casting = pUnit:IsCasting()
	if(casting == false) then
		pUnit:CastSpell(15063)
	end
	if(casting == true) then
		pUnit:CancelSpell(38669) -- This may or may not work im unsure never used this command
	end
end

function Aluvion_WaterBolt(pUnit) -- WaterBolt Spell
	local casting = pUnit:IsCasting()
	if(casting == false) then
		pUnit:FullCastSpellOnTarget(38669)
	end
	if(casting == true) then
		print("Spell Interupted due to Frostnova is casting")
		pUnit:CancelSpell(38669)
	end
end

--Time to Randomize
function Aluvion_OnEnterCombat(pUnit, event)
	local frost = math.random(5300,7200)
	local water = math.random(2600,5700)
	pUnit:RegisterEvent("Aluvion_FrostNova", frost, 0)
	pUnit:RegisterEvent("Aluvion_WaterBolt", water, 0)
	pUnit:FullCastSpellOnTarget(38669)
end

RegisterUnitEvent(21730, 1, "Aluvion_OnEnterCombat")