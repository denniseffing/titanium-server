
  -- Respawn position set
  --ox = 44
  --oy = 5
  --oz = 6
 
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
  		selfSay('Hello ' .. creatureGetName(cid) .. '! I Give crossbows, bows, arrows, bolts , power bolts(say power) and burst arrows (say burst) , Treining spears(550gp)(say Treining), Boltshooter spear(110k)(say Boltshooter).')
  		focus = cid
  		talk_start = os.clock()
  	end
 
  	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
  	end
 
  	if msgcontains(msg, 'crossbow') and focus == cid then
  		buy(cid,2455,1,150)
  		talk_start = os.clock()
  	end
 
  	if msgcontains(msg, 'bow') and focus == cid then
  		buy(cid,2456,1,100)
  		talk_start = os.clock()
  	end
 
  	if msgcontains(msg, 'arrows') and focus == cid then
  		buy(cid,2544,100,50)
  		talk_start = os.clock()
  	end
 
  	if msgcontains(msg, 'bolts') and focus == cid then
  		buy(cid,2543,100,100)
  		talk_start = os.clock()
  	end
 if msgcontains(msg, 'boltshooter') and focus == cid then
  		buy(cid,2425,1,110000)
  		talk_start = os.clock()
  	end
 
 
 
  	if msgcontains(msg, 'power') and focus == cid then
  		buy(cid,2547,100,300)
  		talk_start = os.clock()
  	end
 if msgcontains(msg, 'burst') and focus == cid then
  		buy(cid,2546,100,150)
  		talk_start = os.clock()
  	end
 if msgcontains(msg, 'treining') and focus == cid then
  		buy(cid,3965,1,550)
  		talk_start = os.clock()
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
