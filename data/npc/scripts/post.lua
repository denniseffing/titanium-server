  focus = 0
  talk_start = 0
  target = 0
  following = false
  attacking = false
  moved=0
          
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
            		selfSay('Hello ' .. creatureGetName(cid) .. '! Hey Whats UP!!! ...wow this drugs that i found in this parcel are really cool... I selling Parcel(50gp) and label (10gp).. Want?..U can send ur things to Old City( Write a), Sky Island(write b) and Radoka(write c as adress)')
            		
          		focus = cid
            		talk_start = os.clock()
          
            	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
            		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
          
          	elseif focus == cid then
          		talk_start = os.clock()
          
          		if msgcontains(msg, 'parcel') then
          			buy(cid,2595,1,50)

elseif msgcontains(msg, 'Legend') then
 selfSay('haha u want to know something about the postmage helmet legend?haha why may i tel u it?')         	




          		elseif msgcontains(msg, 'label') then
          			buy(cid,2599,1,10)
          		
          
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