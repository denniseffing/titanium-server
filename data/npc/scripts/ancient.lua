-- the id of the creature we are attacking, following, etc.


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

if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 3 then
selfSay('Hello ' .. creatureGetName(cid) .. '! Hello im one of the mighty Ancients. I got some really powerfull items, i will give u some if u can bring me that mystic ancient coins. if u want ask for my offer ')
focus = cid
talk_start = os.clock()
queststatus = getPlayerStorageValue(cid,1000)
end

if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
end

if msgcontains(msg, 'offer') and focus == cid then
selfSay('Haha lissen little human, i sell ancient bags and ancient artefacts. Dont try to trick me, i will take all ur ancient coins if u try to buy something and u dont got exactly amount of them.')
talk_start = os.clock()
end

if msgcontains(msg, 'bags') and focus == cid then
selfSay('I sell rare bags like the golden bag (26 fields 10AC), ifirix bag (28 fields 30AC), titanium bag (30 fields 80AC) and angelskin bag (36 fields 130AC). ')
talk_start = os.clock()

end


if msgcontains(msg, 'golden bag') and focus == cid then
talk_start = os.clock()
queststatus = getPlayerStorageValue(cid,1000)

if queststatus == -1 then
itemstatus = 
doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)

if itemstatus == -1 then
selfSay('You can find it at the Doom Lizards!')
else

selfSay('Thank you! Here is your reward.')
buy(cid,1997,1,0)
end
else
selfSay('You already got your reward!.')

end
end


if string.find(msg, '(%a*)ifirix bag(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then

talk_start = os.clock()
queststatus = getPlayerStorageValue(cid,1000)

if queststatus == -1 then
itemstatus = 
(doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159))


if itemstatus == -1 then
selfSay('You can find it at the Doom Lizards!')
else

selfSay('Thank you! Here is your reward.')
buy(cid,1993,1,0)
end
else
selfSay('You already got your reward!.')

end
end



if string.find(msg, '(%a*)titanium bag(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then

talk_start = os.clock()
queststatus = getPlayerStorageValue(cid,1000)

if queststatus == -1 then
itemstatus = 
 (doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159))


if itemstatus == -1 then
selfSay('You can find it at the Doom Lizards!')
else

selfSay('Thank you! Here is your reward.')
buy(cid,1992,1,0)
end
else
selfSay('You already got your reward!.')

end
end


if string.find(msg, '(%a*)angelskin bag(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then

talk_start = os.clock()
queststatus = getPlayerStorageValue(cid,1000)

if queststatus == -1 then
itemstatus = 

 (doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)

and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159)
and doPlayerRemoveItem(cid,2159))


if itemstatus == -1 then
selfSay('You can find it at the Doom Lizards!')
else

selfSay('Thank you! Here is your reward.')
buy(cid,3939,1,0)
end
else
selfSay('You already got your reward!.')

end
end





if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
selfSay('Bye, ' .. creatureGetName(cid) .. '!')
focus = 0
talk_start = 0
end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
if (os.clock() - talk_start) > 30 then
if focus > 0 then
selfSay('Go away.')
end
focus = 0
end
end
