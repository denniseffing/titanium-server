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

 	if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 4 then
 		selfSay('Hello, ' .. creatureGetName(cid) .. '! The time has come, the end of this and starting of new world has come.Buy my shit to prepare for the end. I got ,dark gods crown, warlock mask, armor of the titans, armor of the titans, pants of the titans, dark wanderers coat, orion cyclops helmet, dark angel sword, apocalipsis, admageddon claws, Crystal Holly Angelblade, Ancient Runeaxe, Titans Legacy, shield of the mana godess')
 		
		focus = cid
 		talk_start = os.clock()

 	elseif string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
 		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

 	elseif msgcontains(msg, 'dark gods crown') and focus == cid then
 		buy(cid,2496,1,50)
 		talk_start = os.clock()

 	elseif msgcontains(msg, 'warlock mask') and focus == cid then
 		buy(cid,2501,1,50)
 		talk_start = os.clock()

 	elseif msgcontains(msg, 'armor of the titans') and focus == cid then
 		buy(cid,2503,1,50)
 		talk_start = os.clock()

 	elseif msgcontains(msg, 'pants of the titans') and focus == cid then

 		buy(cid,2504,1,50)
 		talk_start = os.clock()

 	elseif msgcontains(msg, 'dark wanderers coat') and focus == cid then

 		buy(cid,2664,1,50)
 		talk_start = os.clock()

 	elseif msgcontains(msg, 'orion cyclops helmet') and focus == cid then
 		buy(cid,3969,1,50)
 		talk_start = os.clock()

 	elseif msgcontains(msg, 'dark angel sword') and focus == cid then
 		buy(cid,2390,1,50)
 		talk_start = os.clock()
 	elseif msgcontains(msg, 'apocalipsis') and focus == cid then
 		buy(cid,2438,1,50)
 		talk_start = os.clock()
 	elseif msgcontains(msg, 'admageddon claws') and focus == cid then
 		buy(cid,2447,1,50)
 		talk_start = os.clock()
 	elseif msgcontains(msg, 'crystal Holly Angelblade') and focus == cid then
 		buy(cid,2451,1,50)
 		talk_start = os.clock()
 	elseif msgcontains(msg, 'ancient runeaxe') and focus == cid then
 		buy(cid,2454,1,50)
 		talk_start = os.clock()
 	elseif msgcontains(msg, 'titans Legacy') and focus == cid then
 		buy(cid,4328,1,50)
 		talk_start = os.clock()
 	elseif msgcontains(msg, 'shield of the mana godess') and focus == cid then
 		buy(cid,2542,1,50)
 		talk_start = os.clock()




 	elseif string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 4 then
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
	if focus ~= 0 then
		if getDistanceToCreature(focus) > 5 then
			selfSay('Good bye then.')
			focus = 0
		end
	end
 end

