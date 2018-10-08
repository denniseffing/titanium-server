-- the id of the creature we are attacking, following, etc.

 
 focus = 0
 talk_start = 0
 target = 0
 following = false
 attacking = false
 
 function onThingMove(creature, thing, oldpos, oldstackpos)
 
 end
 
 
 function onCreatureAppear(creature)
 
 end
 
 
 function onCreatureDisappear(cid, pos)
 	if focus == cid then
         selfSay('Good bye then.')
         selfLook(cid)
	focus = 0
         talk_start = 0
 	end
 end
 
 
 function onCreatureTurn(creature)
 
 end

function msgcontains(txt, str)
 	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
 end
 
 
 function onCreatureSay(cid, type, msg)
 	msg = string.lower(msg)
 
 	if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 3 then
 		selfSay('Hello ' .. creatureGetName(cid) .. '! I can help you with your questions about the quests/server/houses/healing herb..')
 		focus = cid
 		talk_start = os.clock()
 	end

	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
 		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
 	end

	if msgcontains(msg, 'server') and focus == cid then
 		selfSay('The server is YurOts and is currently running on tibia 7.5.')
 		talk_start = os.clock()
 	end

 	if msgcontains(msg, 'help') and focus == cid then
 		selfSay('What do you need help with? Town scroll? Healing herbs? Houses? Quests?.')
 		talk_start = os.clock()
 	end
	if msgcontains(msg, 'healing herb') and focus == cid then
 		selfSay('Just click on the herb and it will heal you..')
 		talk_start = os.clock()
 	end
	if msgcontains(msg, 'houses') and focus == cid then
 		selfSay('To buy a house, You need lvl 20 and 10k. Then contact GM Ion or GM Baby Doll..')
 		talk_start = os.clock()
 	end

	if msgcontains(msg, 'quests') and focus == cid then
 		selfSay('Ask the NPCS for quests/missions and maybe they can help you..')
 		talk_start = os.clock()
 	end

 
 	if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
 		selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
 		focus = 0
 		talk_start = 0
 	end
 end
 
 
 function onCreatureChangeOutfit(creature)
 
 end
 
 
 function onThink()
 	if (os.clock() - talk_start) > 30 then
 		if focus > 0 then
 			selfSay('Next Please...')
 		end
 			focus = 0
 	end
 end







 
