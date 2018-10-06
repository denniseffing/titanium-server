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

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hello, ' .. creatureGetName(cid) .. '! I sell ropes (50gp), shovels (20gp), backpacks (10gp), milk (300gp)or Milkpack (1.8k), lifefluids (60gp), fishing rods (100gp) torches (2gp), Cobald bag (22 fields 50k), suede bag (25 fields 500k). I buy vials (60gp).')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'rope') then
			buy(cid,2120,1,50)
		elseif msgcontains(msg, 'shovel') then
			buy(cid,2554,1,20)
		elseif msgcontains(msg, 'backpack') then
			buy(cid,1988,1,10)

elseif msgcontains(msg, 'cobald bag') then
			buy(cid,1991,1,50000)
elseif msgcontains(msg, 'suede bag') then
			buy(cid,1996,1,500000)

		elseif msgcontains(msg, 'manafluid') or msgcontains(msg, 'mana fluid') then
		
selfSay('Sorry, ' .. creatureGetName(cid) .. '! I got no manafluids anymore, buy insteed Milk!.')

elseif msgcontains(msg, 'milks') or msgcontains(msg, 'milk') then
			buy(cid,2006,6,300)


		elseif msgcontains(msg, 'lifefluid') or msgcontains(msg, 'life fluid') then
			buy(cid,2006,10,60)

		elseif msgcontains(msg, 'milkpack') or msgcontains(msg, 'milkpacks') then
			buy(cid,2006,6,300)
	buy(cid,2006,6,300)
	buy(cid,2006,6,300)
	buy(cid,2006,6,300)
	buy(cid,2006,6,300)
	buy(cid,2006,6,300)
		elseif msgcontains(msg, 'fishing rod') then
			buy(cid,2580,1,100)
		elseif msgcontains(msg, 'torch') then
			buy(cid,2050,1,2)
		elseif msgcontains(msg, 'vial') or msgcontains(msg, 'flask') then
			sell(cid,2006,1,60)
sell(cid,2006,1,60)
sell(cid,2006,1,60)
sell(cid,2006,1,60)
sell(cid,2006,1,60)
sell(cid,2006,1,60)
sell(cid,2006,1,60)
sell(cid,2006,1,60)
sell(cid,2006,1,60)
sell(cid,2006,1,60)





		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
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
if focus == 0 then
cx, cy, cz = selfGetPosition()
randmove = math.random(1,20)
if randmove == 1 then
nx = cx + 1
end
if randmove == 2 then
nx = cx - 1
end
if randmove == 3 then
ny = cy + 1
end
if randmove == 4 then
ny = cy - 1
end
if randmove >= 5 then
nx = cx
ny = cy
end
moveToPosition(nx, ny, cz)
--summons = 30
--summons2 = 30
end
end 