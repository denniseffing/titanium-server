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
  		selfSay('Hello ' .. creatureGetName(cid) .. '! I can take you to Gaia(300gps), Sky Island (300gps), Arctica(500gp), Radoka (300gps), Old City (300gps), Razoria (400gps), Odin City (600gps), silent village (400gps) and Ironica (400gps.). . Where do you want to go?')
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
if msgcontains(msg, 'silent village') and focus == cid then
  		if pay(cid,400) then
 			selfSay('Let\'s go!')
 			selfSay('/send ' .. creatureGetName(cid) .. ', 827 78 7')
 			focus = 0
 			talk_start = 0
 
 
 		else
			selfSay('Sorry, you don\'t have enough money.')
			talk_start = os.clock()
		end
 	end
  	if msgcontains(msg, 'razoria') and focus == cid then
  		if pay(cid,400) then
 			selfSay('Let\'s go!')
 			selfSay('/send ' .. creatureGetName(cid) .. ', 417 844 13')
 			focus = 0
 			talk_start = 0
 
 
 	else
			selfSay('Sorry, you don\'t have enough money.')
			talk_start = os.clock()
		end
 	end
	if msgcontains(msg, 'odin city') and focus == cid then
  		if pay(cid,600) then
 			selfSay('Let\'s go!')
 			selfSay('/send ' .. creatureGetName(cid) .. ', 469 516 7')
 			focus = 0
 			talk_start = 0
 
 
 	else
			selfSay('Sorry, you don\'t have enough money.')
			talk_start = os.clock()
		end
 	end
if msgcontains(msg, 'ironica') and focus == cid then
  		if pay(cid,400) then
 			selfSay('Let\'s go!')
 			selfSay('/send ' .. creatureGetName(cid) .. ', 330 793 3')
 			focus = 0
 			talk_start = 0
 
 
 	else
			selfSay('Sorry, you don\'t have enough money.')
			talk_start = os.clock()
		end
 	end
  	if msgcontains(msg, 'old city') and focus == cid then
  		if pay(cid,300) then
 			selfSay('Let\'s go!')
 			selfSay('/send ' .. creatureGetName(cid) .. ', 123 60 7')
 			focus = 0
 			talk_start = 0
 
 
 		else
			selfSay('Sorry, you don\'t have enough money.')
			talk_start = os.clock()
		end
 	end
 if msgcontains(msg, 'sky island') and focus == cid then
  		if pay(cid,300) then
 			selfSay('Let\'s go!')
 			selfSay('/send ' .. creatureGetName(cid) .. ', 405 390 3')
 			focus = 0
 			talk_start = 0
else 
			selfSay('Sorry, you don\'t have enough money.')
			talk_start = os.clock()
		end
 	end

 if msgcontains(msg, 'arctica') and focus == cid then
  		if pay(cid,400) then
 			selfSay('Let\'s go!')
 			selfSay('/send ' .. creatureGetName(cid) .. ', 2657 338 6')
 			focus = 0
 			talk_start = 0
else 
			selfSay('Sorry, you don\'t have enough money.')
			talk_start = os.clock()
		end
 	end


if msgcontains(msg, 'radoka') and focus == cid then
  		if pay(cid,300) then
 			selfSay('Let\'s go!')
 			selfSay('/send ' .. creatureGetName(cid) .. ', 1342 51 7')
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
 
