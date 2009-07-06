--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

--Mal'Ganis http://wotlk.wowhead.com/?npc=26533 last Boss of "Culling The Stratholme" CoT Wotlk Event Timers are not 100% Blizzlike but they are fine :)
-- He should banish at End of Fight i dont know how do you get Loot :) i Just good my Wotlk Retail Acc i hope i will find out soon
function MG_EnterCombat(pUnit, Event)
    pUnit:Root()
	pUnit:SetUInt32Value(UNIT_FIELD_FLAGS,UNIT_FLAG_NOT_ATTACKABLE_9)
	pUnit:SendChatMessage(14, 0, "Yes, this is the beginning. I've been waiting for you, young prince. I am Mal'Ganis.")
	pUnit:RegisterEvent("MG_Speach1", 7000, 0)
end

function MG_Speach1(pUnit, Event)
	pUnit:SendChatMessage(14, 0, "Yes, this is the beginning. I've been waiting for you, young prince. I am Mal'Ganis.")
	pUnit:RegisterEvent("MG_Battle", 9000, 0)
end	
function MG_Battle(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:SendChatMessage(14, 0, "This will be a fine test, Prince Arthas.") -- I will add Sound ID's laterz :)
	pUnit:RegisterEvent("MG_Swarm", 16000, 0)
	pUnit:RegisterEvent("MG_Blast", 12000, 0)
	pUnit:RegisterEvent("MG_Sleep", 21000, 0)
	pUnit:RegisterEvent("MG_Vampiric", 8000, 0)
	pUnit:RegisterEvent("MG_Vanish", 1000, 0)
end	

function MG_Swarm(pUnit, Event)
	pUnit:CastSpell(52720) -- http://wotlk.wowhead.com/?spell=52720
end

function MG_Blast(pUnit,Event)
	pUnit:FullCastSpellOnTarget(52722,pUnit:GetRandomPlayer(0)) -- http://wotlk.wowhead.com/?spell=52722
end

function MG_Sleep(pUnit,Event)
pUnit:FullCastSpellOnTarget(52721,pUnit:GetRandomPlayer(0))
	local Choice=math.random(1, 2)
		if Choice==1 then
			pUnit:SendChatMessage(14, 0, "Time out.")
		elseif Choice==2 then
			pUnit:SendChatMessage(14, 0, "You seem tired.")
end
end

function MG_Blast(pUnit,Event)
	pUnit:FullCastSpellOnTarget(52723,pUnit:GetRandomPlayer(0)) -- http://wotlk.wowhead.com/?spell=52723 100% not Supported by Any Core!
end


function MG_OnKill(pUnit,Event)
	pUnit:RemoveEvents()
	local Choice=math.random(1, 3)
		if Choice==1 then
			pUnit:SendChatMessage(14, 0, "All too easy.")
		elseif Choice==2 then
			pUnit:SendChatMessage(14, 0, "The dark lord is displeased with your interference.")
		elseif Choice==3 then
			pUnit:SendChatMessage(14, 0, "It is Prince Arthas I want, not you.")
end
end

function MG_Vanish(pUnit,Event)
	if pUnit:GetHealthPct() < 2 then	
	pUnit:SetUInt32Value(UNIT_FIELD_FLAGS,UNIT_FLAG_NOT_ATTACKABLE_9)
	pUnit:Emote(1)
	pUnit:SendChatMessage(12, 0, "Your journey has just begun, young prince...Gather your forces, and meet me in the arctic land of Northrend...It is there we shall settle the score between us...It is there that your true destiny will unfold...")
	pUnit:RemoveFromWorld()
	local x,y,z,o = pUnit:GetX(),pUnit:GetY(),pUnit:GetZ(),pUnit:GetO()
	pUnit:SpawnGameObject(190663, x , y , z ,0) 
	end
end

function MG_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end


function MG_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(26533, 1, "MG_EnterCombat")
RegisterUnitEvent(26533, 2, "MG_OnLeaveCombat")
RegisterUnitEvent(26533, 4, "MG_OnKill")
RegisterUnitEvent(26533, 3, "MG_OnDied")