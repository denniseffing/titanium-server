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
  		selfSay('Hello ' .. creatureGetName(cid) .. '! Hello my name is Torben Drake, do u know my family?')
  		focus = cid
  		talk_start = os.clock()
  	end
 
 	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
  	end
 
  	if msgcontains(msg, 'yes') and focus == cid then
  		
 			selfSay('well its so sad.')
 		
 			focus = 0
 			talk_start = 0
 
 
 		else
			selfSay('Sorry, you don\'t have enough money.')
			talk_start = os.clock()
		

		end
			

 	end
  	
 
 
  	if msgcontains(msg, 'no') and focus == cid then
  		
 			selfSay('My family was owner of the Titaniumtanic, it was a beutifull ship with nice crew, Demons, Elfs, Warlocks, Humans, Orcs, Minotaurs and other Creatures joined the crew. But all died once. Want hear more?')
 		
 			
 			talk_start = 1
 
 
 		else
			selfSay('ask gm im broken.')
			talk_start = os.clock()
		end
end
elseif talk_state == 1 then	
if msgcontains(msg, 'yes') and focus == cid then
  		
 			selfSay('The Titaniumanic moved around the world and was really famous, but once the Warlocks found an unknown Sword. It was full of blood and under the blood was ancient writing. are you bored?  .')
 		
 		
 			talk_start = 2
 
 
 		else
			selfSay('Sorry, you don\'t have enough money.')
		focus = 0
		

		end
end
			elseif talk_state == 2 then	
if msgcontains(msg, 'no') and focus == cid then
  		
 			selfSay('To read the writing , The warlocks created an mighty rune to breake the bloodseal on the sword, but they leted the Fallen angel on this way to our world, only those who got Flame Heart can help me to get my revenge on this Damned creature. You got the flame heart? If yes remmeber that mystical music  can bring big powers')
 		
 		
 			talk_start = 3
 
 
 		else
			selfSay('sorry then')
		focus = 0
		

		end
end
		elseif talk_state == 3 then	
if msgcontains(msg, 'yes') and focus == cid then
  		if pay(cid,0) then
 			selfSay('Let\'s go!')
 			selfSay('/send ' .. creatureGetName(cid) .. ', 561 54 7')
 			focus = 0
 			talk_start = 0
 
 
 		else
			selfSay('Sorry, you don\'t have enough money.')
			talk_start = os.clock()
		end
 	
 	
 	

 	end
  	if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 4 then
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
 
-----------------------------
  	
  	