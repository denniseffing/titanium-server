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
selfSay('Merry Christmas!') 
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
selfSay('My Job is hard' .. creatureGetName(cid) .. '!') 
focus = cid 
talk_start = os.clock() 
end 

if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then 
selfSay('Sorry, ' .. creatureGetName(cid) .. '! Please wait.') 
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
selfSay('Merry Christmas!') 
end 
focus = 0 
end 
if focus ~= 0 then 
if getDistanceToCreature(focus) > 3 then 
selfSay('Merry Christmas!') 
focus = 0 
end 
end 




if focus == 0 then 
randsay = math.random(1,105) 
if randsay == 1 then 
selfSay('Hapchiiiii... damn im sick.... my nouse -.-') 
end 
if randsay == 2 then 
selfSay('Moooo') 
end 
end 
end  
