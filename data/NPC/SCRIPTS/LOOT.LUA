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
  		selfSay('Hello ' .. creatureGetName(cid) .. '! I buy and sell weapons, helmets, shoes (boots), pants (legs), shields and armors.')
  		focus = cid
  		talk_start = os.clock()
 	elseif string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')  	elseif focus == cid then
 		talk_start = os.clock()
 
 		if msgcontains(msg, 'sell royal helmet') then
  			sell(cid,2498,1,20000)
  		elseif msgcontains(msg, 'sell warrior helmet') then
  			sell(cid,2475,1,3000)
  		elseif msgcontains(msg, 'sell crusader helmet') then
  			sell(cid,2497,1,3000)
  		elseif msgcontains(msg, 'sell crown helmet') then
  			sell(cid,2491,1,2000)
  		elseif msgcontains(msg, 'sell devil helmet') then
  			sell(cid,2462,1,2000)
  		elseif msgcontains(msg, 'sell mystic turban') then
  			sell(cid,2663,1,500)
  		elseif msgcontains(msg, 'sell chain helmet') then
  			sell(cid,2458,1,35)
 		elseif msgcontains(msg, 'sell iron helmet') then
  			sell(cid,2459,1,30)







  		elseif msgcontains(msg, 'helmets') then
  			selfSay(msg,'I sell royal (80k), warrior (12k), crusader (12k), crown (8k), devil (8k), also mystic turbans (2k)...And I buy royal (20k), warrior (3k), crusader (3k), crown (2k), devil (2k), chain (35gp) and iron helmets (30gp), also mystic turbans (500gp).')
 
  		elseif msgcontains(msg, 'sell steel boots') and focus == cid then
  			sell(cid,2645,1,20000)
  		elseif msgcontains(msg, 'sell boh') or msgcontains(msg, 'sell boots of haste') and focus == cid then
  			sell(cid,2195,1,4000)
  		elseif msgcontains(msg, 'shoes')  then
  			selfSay(msg,'I sell steel boots (100k) and boots of haste (80k)...And I buy steel boots (20k) and boots of haste (4k).')
 
 		elseif msgcontains(msg, 'sell magic plate armor') or msgcontains(msg, 'sell mpa') then
  			sell(cid,2472,1,100000)
 		elseif msgcontains(msg, 'sell dragon scale mail') or msgcontains(msg, 'sell dsm') then
  			sell(cid,2492,1,30000)
 		elseif msgcontains(msg, 'sell golden armor') then
  			sell(cid,2466,1,10000)
 		elseif msgcontains(msg, 'sell crown armor') then
  			sell(cid,2487,1,5000)
 		elseif msgcontains(msg, 'sell knight armor') then
  			sell(cid,2476,1,3000)
 		elseif msgcontains(msg, 'sell blue robe') then
  			sell(cid,2656,1,3000)
  		elseif msgcontains(msg, 'sell lady armor') then
  			sell(cid,2500,1,1000)
 		elseif msgcontains(msg, 'sell plate armor') then
  			sell(cid,2463,1,300)
 		elseif msgcontains(msg, 'sell chain armor') then
  			sell(cid,2464,1,100)
  		elseif msgcontains(msg, 'armors')  then
  			selfSay(msg,'I sell golden (40k).')
 
 		elseif msgcontains(msg, 'leather legs') then
  			sell(cid,2694,1,20)
 		elseif msgcontains(msg, 'leather boots') then
  			sell(cid,2643,1,20)
 		elseif msgcontains(msg, 'sell knight legs') then
  			sell(cid,2477,1,3000)
 		elseif msgcontains(msg, 'sell plate legs') then
  			sell(cid,2647,1,500)
 		elseif msgcontains(msg, 'sell chain legs') then
  			sell(cid,2478,1,50)

 		elseif msgcontains(msg, 'sell golden legs') then
  			buy(cid,2470,1,120000)
  		elseif msgcontains(msg, 'pants')  then
  			selfSay(msg,'I sell golden (240k), crown (20k), knight (12k), plate (2k) ....And I buy golden (80k), crown (5k), knight (3k), plate (500gp), and chain legs (50gp).')
 
  		elseif msgcontains(msg, 'sell shield of the mastermind') or msgcontains(msg, 'sell mms') then
  			sell(cid,2514,1,80000)
 		elseif msgcontains(msg, 'sell demon shield') then
  			sell(cid,2520,1,40000)
  		elseif msgcontains(msg, 'sell vampire shield') then
  			sell(cid,2534,1,4000)
 		elseif msgcontains(msg, 'sell medusa shield') then
  			sell(cid,2536,1,3500)
  		elseif msgcontains(msg, 'sell amazon shield') then
  			sell(cid,2537,1,3000)
 		elseif msgcontains(msg, 'sell crown shield') then
  			sell(cid,2519,1,2000)
  		elseif msgcontains(msg, 'sell tower shield') then
  			sell(cid,2528,1,2000)
  		elseif msgcontains(msg, 'sell dragon shield') then
  			sell(cid,2516,1,1500)
 		elseif msgcontains(msg, 'sell guardian shield') then
  			sell(cid,2515,1,1200)
 		elseif msgcontains(msg, 'sell beholder shield') then
  			sell(cid,2518,1,1000)
 		elseif msgcontains(msg, 'sell dwarven shield') then
  			sell(cid,2525,1,100)
 		elseif msgcontains(msg, 'shields')  then
  			selfSay(msg,'I sell demon (100k), vampire (12k), medusa (15k), amazon (12k), crown (8k), tower (7k), dragon (6k), guardian (5k), beholder (4k), mms (160k)... And I buy demon (40k), vampire (4k), medusa (3.5k), amazon (3k), crown (2k), tower (2k), dragon (1.5k), guardian (1.2k), beholder (1k), and dwarven shields (100gp), also mms (80k)')
 
  		elseif msgcontains(msg, 'sell giant sword') then
  			sell(cid,2393,1,10000)
 		elseif msgcontains(msg, 'sell bright sword') then
  			sell(cid,2407,1,6000)
 		elseif msgcontains(msg, 'sell ice rapier')  then
  			sell(cid,2396,1,4000)
 		elseif msgcontains(msg, 'sell fire sword') then
  			sell(cid,2392,1,3000)
 		elseif msgcontains(msg, 'sell serpent sword')  then
  			sell(cid,2409,1,1500)
  		elseif msgcontains(msg, 'sell two handed sword')  then
  			sell(cid,2377,1,400)
 		elseif msgcontains(msg, 'sell sabre') then
  			sell(cid,2385,1,25)
  		elseif msgcontains(msg, 'sellsword')  then
  			sell(cid,2376,1,25)
 		elseif msgcontains(msg, 'swords')  then
  			selfSay(msg,'I sell giant (40k), bright (24k), fire (12k) serpent (3k), spike (2000gp)  also ice rapiers (16k)... And I buy giant (10k), bright (6k), fire (3k) serpent (1.5k)and two handed swords (400gp), also ice rapiers (4k), sabres (25gp) and swords (25gp).')
 
  		elseif msgcontains(msg, 'sell dragon lance')  then
  			sell(cid,2414,1,10000)
  		elseif msgcontains(msg, 'sell fire axe')  then
  			sell(cid,2432,1,10000)
 		elseif msgcontains(msg, 'sell knight axe')  then
  			sell(cid,2430,1,2000)
 		elseif msgcontains(msg, 'sell double axe')  then
  			sell(cid,2387,1,200)
 		elseif msgcontains(msg, 'sell halberd')  then
  			sell(cid,2381,1,200)
 		elseif msgcontains(msg, 'sell battle axe')  then
  			sell(cid,2378,1,100)
  		elseif msgcontains(msg, 'sell hatchet')  then
  			sell(cid,2388,1,20)
 		elseif msgcontains(msg, 'axes')  then
  			selfSay(msg,'I sell fire (30k), knight (8k), also dragon lances (40k)... And I buy fire (10k), knight (2k), double (200gp) and battle axes (100gp), also dragon lances (10k), halberds (200gp) and hatchets (20gp).')
 
 		elseif msgcontains(msg, 'sell war hammer') then
  			sell(cid,2391,1,4000)
 		elseif msgcontains(msg, 'sell skull staff') then
  			sell(cid,2436,1,4000)
  		elseif msgcontains(msg, 'sell dragon hammer')  then
  			sell(cid,2434,1,2000)
  		elseif msgcontains(msg, 'sell clerical mace')  then
  			sell(cid,2423,1,200)
  		elseif msgcontains(msg, 'sell battle hammer')  then
  			sell(cid,2417,1,60)
  		elseif msgcontains(msg, 'sell mace') then
  			sell(cid,2398,1,30)
 		elseif msgcontains(msg, 'clubs')  then
  			selfSay(msg,'I sell war (16k), dragon (8k) also skull staffs (25k)....And I buy war (4k), dragon (2k) and battle hammers (60gp), also skull staffs (4k) and clerical maces (200gp).')
 
 		elseif msgcontains(msg, 'sell platinum amulet') then
  			sell(cid,2171,1,2000)
 		elseif msgcontains(msg, 'sell scarf') then
  			sell(cid,2661,1,30)
 		elseif msgcontains(msg, 'amulets')  then
  			selfSay(msg,'I sell platinum amulets (8k) a...And I buy platinum amulets (2k) and scarfs (500gp).')
 
 
 		elseif msgcontains(msg, 'sell magic staff') then
  			sell(cid,2433,1,10000)
  		elseif msgcontains(msg, 'sell red spellwand of the fire')  then
  			sell(cid,4386,1,55000)
  		elseif msgcontains(msg, 'sell blue spellwand of the aqua')  then
  			sell(cid,4383,1,55000)
  		elseif msgcontains(msg, 'sell yellow spellwand of the wind')  then
  			sell(cid,4384,1,55000)
  		elseif msgcontains(msg, 'sell green spellwand of the earth') then
  			sell(cid,4382,1,55000)
 
 
 		elseif msgcontains(msg, 'magic stuff')  then
  			selfSay(msg,'I sell magic staff (30k), red spellwand of the Fire(100k), blue spellwand of the Aqua(100k), yellow spellwand of the wind (100k), green spellwand of the Earth (100k) ..and I buy magic staff (10k), red spellwand of the Fire(55k), blue spellwand of the Aqua(55k), yellow spellwand of the wind (55k), green spellwand of the Earth (55k)')
 
 elseif msgcontains(msg, 'magic staff') then
  			buy(cid,2433,1,30000)
  		elseif msgcontains(msg, 'red spellwand of the fire')  then
  			buy(cid,4386,1,100000)
  		elseif msgcontains(msg, 'blue spellwand of the aqua')  then
  			buy(cid,4383,1,100000)
  		elseif msgcontains(msg, 'yellow spellwand of the wind')  then
  			buy(cid,4384,1,100000)
  		elseif msgcontains(msg, 'green spellwand of the earth') then
  			buy(cid,4382,1,100000)
 
 ---------
 
            elseif msgcontains(msg, 'royal helmet') then
  			buy(cid,2498,1,80000)
  		elseif msgcontains(msg, 'warrior helmet') then
  			buy(cid,2475,1,12000)
  		elseif msgcontains(msg, 'crusader helmet') then
  			buy(cid,2497,1,12000)
  		elseif msgcontains(msg, 'crown helmet') then
  			buy(cid,2491,1,8000)
  		elseif msgcontains(msg, 'devil helmet') then
  			buy(cid,2462,1,8000)
  		elseif msgcontains(msg, 'mystic turban') then
  			buy(cid,2663,1,2000)
 
 elseif msgcontains(msg, 'steel boots') and focus == cid then
  			buy(cid,2645,1,100000)
  		elseif msgcontains(msg, 'boh') or msgcontains(msg, 'boots of haste') and focus == cid then
  			buy(cid,2195,1,80000)
 
 elseif msgcontains(msg, 'magic plate armor') or msgcontains(msg, 'mpa') then
  			buy(cid,2472,1,400000)
 		elseif msgcontains(msg, 'dragon scale mail') or msgcontains(msg, 'dsm') then
  			buy(cid,2492,1,120000)
 		elseif msgcontains(msg, 'golden armor') then
  			buy(cid,2466,1,80000)
 		elseif msgcontains(msg, 'crown armor') then
  			buy(cid,2487,1,20000)
 		elseif msgcontains(msg, 'knight armor') then
  			buy(cid,2476,1,12000)
 		elseif msgcontains(msg, 'blue robe') then
  			buy(cid,2656,1,12000)
  		elseif msgcontains(msg, 'lady armor') then
  			buy(cid,2500,1,4000)
 		elseif msgcontains(msg, 'plate armor') then
  			buy(cid,2463,1,500)
 
 elseif msgcontains(msg, 'golden legs') then
  			buy(cid,2470,1,240000)
 		elseif msgcontains(msg, 'crown legs') then
  			buy(cid,2488,1,20000)
 		elseif msgcontains(msg, 'knight legs') then
  			buy(cid,2477,1,12000)
 
 elseif msgcontains(msg, 'shield of the mastermind') or msgcontains(msg, 'mms') then
  			buy(cid,2514,1,160000)
 		elseif msgcontains(msg, 'demon shield') then
  			buy (cid,2520,1,100000)
  		elseif msgcontains(msg, 'vampire shield') then
  			buy(cid,2534,1,12000)
 		elseif msgcontains(msg, 'medusa shield') then
  			buy(cid,2536,1,15000)
  		elseif msgcontains(msg, 'amazon shield') then
  			buy(cid,2537,1,12000)
 		elseif msgcontains(msg, 'crown shield') then
  			buy(cid,2519,1,8000)
  		elseif msgcontains(msg, 'tower shield') then
  			buy(cid,2528,1,7000)
  		elseif msgcontains(msg, 'dragon shield') then
  			buy(cid,2516,1,6000)
 		elseif msgcontains(msg, 'guardian shield') then
  			buy(cid,2515,1,5000)
 		elseif msgcontains(msg, 'beholder shield') then
  			buy(cid,2518,1,4000)
 
  		elseif msgcontains(msg, 'giant sword') then
  			buy(cid,2393,1,40000)
 		elseif msgcontains(msg, 'bright sword') then
  			buy(cid,2407,1,24000)
 		elseif msgcontains(msg, 'ice rapier')  then
  			buy(cid,2396,1,12000)
 		elseif msgcontains(msg, 'fire sword') then
  			buy(cid,2392,1,12000)
 		elseif msgcontains(msg, 'serpent sword')  then
  			buy(cid,2409,1,3000)
 		elseif msgcontains(msg, 'spike sword')  then
  			buy(cid,2383,1,2000)
 
 		elseif msgcontains(msg, 'dragon lance')  then
  			buy(cid,2414,1,40000)
  		elseif msgcontains(msg, 'fire axe')  then
  			buy(cid,2432,1,30000)
 		elseif msgcontains(msg, 'knight axe')  then
  			buy(cid,2430,1,8000)
 
 
 		elseif msgcontains(msg, 'war hammer') then
  			buy(cid,2391,1,16000)
 		elseif msgcontains(msg, 'skull staff') then
  			buy(cid,2436,1,25000)
  		elseif msgcontains(msg, 'dragon hammer')  then
  			buy(cid,2434,1,8000)
 		elseif msgcontains(msg, 'platinum amulet') then
  			buy(cid,2171,1,8000)
 
 
 
 
 	elseif msgcontains(msg, 'Wand of The Evil Spirit') or msgcontains(msg, 'sprite staff') or msgcontains(msg, 'sprite wand') then
  			buy(cid,2453,1,2000000)
 		elseif msgcontains(msg, 'magic sword') then
  			buy(cid,2400,1,500000)
 		elseif msgcontains(msg, 'archangel staff')  then
  			buy(cid,2424,1,12000000)
 		elseif msgcontains(msg, 'warlord sword') then
  			buy(cid,2408,1,5000000)
 		elseif msgcontains(msg, 'thunder hammer')  then
  			buy(cid,2421,1,500000)
 		elseif msgcontains(msg, 'greate axe')  then
  			buy(cid,2415,1,5000000)
 		elseif msgcontains(msg, 'stonecutter axe')  then
  			buy(cid,2431,1,500000)
 		elseif msgcontains(msg, 'heroes armor')  then
  			buy(cid,3968,1,4000000)
 		elseif msgcontains(msg, 'dragon scale legs')  then
  			buy(cid,2469,1,1500000)
 		elseif msgcontains(msg, 'undead warlord axe')  then
  			buy(cid,3962,1,3000000)
 elseif msgcontains(msg, 'djihat mace') then
  			buy(cid,2452,1,3000000)
 		elseif msgcontains(msg, 'great shield')  then
  			buy(cid,2522,1,1500000)
 		elseif msgcontains(msg, 'blessed shield')  then
  			buy(cid,2523,1,3000000)
 		elseif msgcontains(msg, 'sun mace')  then
  			buy(cid,2437,1,5000000)
 		elseif msgcontains(msg, 'sandstorm sword')  then
  		buy(cid,2446,1,3000000)
 elseif msgcontains(msg, 'phoenix armor') then
  			buy(cid,2508,1,2000000)
 		elseif msgcontains(msg, 'elven helmet')  then
  			buy(cid,2506,1,2000000)
 elseif msgcontains(msg, 'rares')  then
  			selfSay(msg,'I sell Wand of The Evil Spirit(2m), elven helmet(2m), phoenix armor(2m), sandstorm sword(3m), sun mace (5m), blessed shield(3m), great shield(1.5m), djihat mace(3m), undead warlord axe(3m), dragon scale legs(1.5m), heroes armor(4m), stonecutter axe(500k), greate axe(5m), magic sword(500km), thunder hammer(500k), archangel staf(12m) and warlord sword(5m) ')
 
 
 
 
 
 
  		elseif string.find(msg, '(%a*)bye(%a*)')  and getDistanceToCreature(cid) < 4 then
  			selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
  			focus = 0
  			talk_start = 0
  		end
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
