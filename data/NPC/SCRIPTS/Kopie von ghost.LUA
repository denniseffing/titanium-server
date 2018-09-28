focus = 1
  talk_start = 1
  target = 1
  following = true
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
  		selfSay('Hello ' .. creatureGetName(cid) .. '! Booooo , im so lonely, im picking tunnels many years now, i want to find the way out or i will die here soon, may i ...help... u somehow?')
  		focus = cid
  		talk_start = os.clock()
  	end
 
  	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
  	end
 
  	if msgcontains(msg, 'rosa') and focus == cid then
  			buy(cid,2554,1,1000000)
  		talk_start = os.clock()
  	end
 
  	if msgcontains(msg, 'help') and focus == cid then
  selfSay('Im digging here so long that i forgot my name what is my ...name...? Or you gonna lend my friend ..Rosa.., to help you out?.')
		


talk_start = os.clock()
  	end
   


 
  	if msgcontains(msg, 'name') and focus == cid then
  	selfSay('You really know it? tell me, if its the right one i will give something to you.')
  		talk_start = os.clock()
  	end	

if msgcontains(msg, 'isab') and focus == cid then
talk_start = os.clock()
  queststatus = getPlayerStorageValue(cid,1100)

   if queststatus == -1 then
buy(cid,2353,1,0)
	selfSay('Thank you, Yeaaahh it is my name now i know it again, here is little present for you, this is my Hearth of suffer.')
   	setPlayerStorageValue(cid,1100,1)
   		
   				
   			
   else
   	selfSay('You already got your reward!.')
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