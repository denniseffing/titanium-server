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
selfSay('Hello ' .. creatureGetName(cid) .. '! Say job if you want to work for me. ')
focus = cid
talk_start = os.clock()

end

if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
end

if msgcontains(msg, 'job') and focus == cid then
selfSay('This is what i want you to do. Go to the Doom Lizard and recvive my wand they stoled from me and I will give you a reward. Are you ready to do this?.')
talk_start = os.clock()
end

if msgcontains(msg, 'yes') and focus == cid then
selfSay('Thank you. Make a king proud')
talk_start = os.clock()

end








if msgcontains(msg, 'wand') and focus == cid then
talk_start = os.clock()
queststatusb = getPlayerStorageValue(cid,1000)

if queststatusb == -1 then
itemstatus = doPlayerRemoveItem(cid,2472)

if itemstatus == -1 then
selfSay('U dont got it')
else




selfSay('Thank you! Here is your reward.')
buy(cid,2000,1,0)
end











if msgcontains(msg, 'lax') and focus == cid then
talk_start = os.clock()
queststatusa = getPlayerStorageValue(cid,1001)

if queststatusa == -1 then
itemstatus = doPlayerRemoveItem(cid,4382)

if itemstatus == -1 then
selfSay('U dont got it')
else




selfSay('Thank you! Here is your reward.')
buy(cid,2000,1,0)
end


















if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
selfSay('Bye, ' .. creatureGetName(cid) .. '!')
focus = 0
talk_start = 0
end
end
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
end
end

