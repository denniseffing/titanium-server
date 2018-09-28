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
 
 endfunction msgcontains(txt, str)
 	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
 end
 
 
 function onCreatureSay(cid, type, msg)
 	msg = string.lower(msg)
 
 	if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 3 then
 		selfSay('Hello ' .. creatureGetName(cid) .. '! I sell armors, legs, helmets, boots and shields.')
 		selfLook(cid)
		focus = cid
 		talk_start = os.clock()
 	end
 
 	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
 		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
 	end
 
 	if msgcontains(msg, 'armors') and focus == cid then
 		selfSay('I sell chain armor, brass armor and scale armor.')
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'chain armor') and focus == cid then
 		buy(cid,3296,1,100)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'brass armor') and focus == cid then
 		buy(cid,3297,1,250)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'scale armor') and focus == cid then
 		buy(cid,3315,1,500)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'legs') and focus == cid then
 		selfSay('I sell chain and brass legs.')
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'chain legs') and focus == cid then
 		buy(cid,3496,1,80)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'brass legs') and focus == cid then
 		buy(cid,3310,1,200)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'helmets') and focus == cid then
 		selfSay('I sell brass helmet, viking helmet and iron helmet.')
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'brass helmet') and focus == cid then
 		buy(cid,3292,1,50)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'viking helmet') and focus == cid then
 		buy(cid,3305,1,100)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'iron helmet') and focus == cid then
 		buy(cid,3291,1,190)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'boots') and focus == cid then
 		selfSay('I sell leather boots and sandals.')
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'sandals') and focus == cid then
 		buy(cid,3489,1,10)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'leather boots') and focus == cid then
 		buy(cid,3269,1,20)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'shields') and focus == cid then
 		selfSay('I sell plate shield, black shield, cooper shield, bone shield and ornamented shield.')
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'plate shield') and focus == cid then
 		buy(cid,3348,1,50)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'black shield') and focus == cid then
 		buy(cid,3367,1,70)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'cooper shield') and focus == cid then
 		buy(cid,3368,1,120)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'bone shield') and focus == cid then
 		buy(cid,3379,1,150)
 		talk_start = os.clock()
 	end
 
 	if msgcontains(msg, 'ornamented shield') and focus == cid then
 		buy(cid,3362,1,200)
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
 
