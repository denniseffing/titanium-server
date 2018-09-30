
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
  		selfSay('Hello ' .. creatureGetName(cid) .. '! I sell hmms (100gps), uhs (300gps), gfbs (200gps), explosions (250gps), sds (400gps), energy wall(200) and blank runes (5gps), deathbomb (20000). You can also buy more runes, just say "10 uh" or "100 sd".')
  		focus = cid
  		talk_start = os.clock()
 
  	elseif string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
 
  	elseif msgcontains(msg, 'hmm') and focus == cid then
  		buy(cid,2311,25,100)
  		talk_start = os.clock()

       elseif msgcontains(msg, 'ur uh bitch') and focus == cid then
  		buy(cid,2273,200,300)
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'uh') and focus == cid then
  		buy(cid,2270,25,300)
  		talk_start = os.clock()


  	elseif msgcontains(msg, 'gfb') and focus == cid then
  		buy(cid,2304,25,200)
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'explosion') and focus == cid then
  		buy(cid,2313,25,250)
  		talk_start = os.clock()

       elseif msgcontains(msg, 'wseiditewpisdu') and focus == cid then
  		buy(cid,2268,1000,200)
  		talk_start = os.clock()
 
  	elseif msgcontains(msg, 'sd') and focus == cid then
  		buy(cid,2263,25,400)
  		talk_start = os.clock()
 
  	elseif msgcontains(msg, 'blank') and focus == cid then
  		buy(cid,2260,2,5)
  		talk_start = os.clock()
 
       elseif msgcontains(msg, 'great deathball') and focus == cid then
  		buy(cid,2300,25,200)
  		talk_start = os.clock()
 
 elseif msgcontains(msg, 'energy wall') and focus == cid then
  		buy(cid,2279,25,200)
  		talk_start = os.clock()
 
  elseif msgcontains(msg, 'deathbomb') and focus == cid then
  		buy(cid,2267,25,20000)
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
 			selfSay('Good bye then,Hail God TiTaN.')
 			focus = 0
 		end
 	end
  end
