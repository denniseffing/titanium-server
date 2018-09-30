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
  		selfSay('Hello ' .. creatureGetName(cid) .. '! Im the Capitan Ruffy D Monkey i gonna be the pirate king. I can take you to my adventure im traviling around Grandline islands where we may travel and search for one pice?: Gaia (300gps), old city(300), Radoka(800). Where do you want to go?.... AAAAA my ship is burning')
  		focus = cid
  		talk_start = os.clock()
  	end
 
 	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
  	end
 
  	if msgcontains(msg, 'gaia') and focus == cid then
  		if pay(cid,300) then
 			selfSay('Let\'s go!')
 			selfSay('/send ' .. creatureGetName(cid) .. ', 434 79 7')
 			focus = 0
 			talk_start = 0
 		else
			selfSay('Sorry, you don\'t have enough money.')
			talk_start = os.clock()
		end
 	end

if msgcontains(msg, 'old city') and focus == cid then
  		if pay(cid,500) then
 			selfSay('Let\'s go!')
 			selfSay('/send ' .. creatureGetName(cid) .. ', 122 60 7')
 			focus = 0
 			talk_start = 0
else
			selfSay('Sorry, you don\'t have enough money.')
			talk_start = os.clock()
		end
 	end

if msgcontains(msg, 'radoka') and focus == cid then
  		if pay(cid,800) then
 			selfSay('Let\'s go!')
 			selfSay('/send ' .. creatureGetName(cid) .. ', 1342 51 7')
 			focus = 0
 			talk_start = 0
else
			selfSay('Sorry, you don\'t have enough money.')
			talk_start = os.clock()
		end
 	end

if msgcontains(msg, 'sky island') and focus == cid then
  		if pay(cid,800) then
 			selfSay('Let\'s go!')
 			selfSay('/send ' .. creatureGetName(cid) .. ', 405 390 3')
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
 
