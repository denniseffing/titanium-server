
function onUse(cid, item, frompos, item2, topos)
 
if item.uid == 5454 then
playerlevel = getPlayerLevel(cid)
mmax=100+30*playerlevel
hmax=200+5*playerlevel
cmax=100+10*playerlevel

doPlayerAddMaxMana(cid,mmax)
doPlayerAddMaxHealth(cid,hmax)
doPlayerAddMaxCap(cid,cmax)

npos = {x=146, y=303, z=14}
doTeleportThing(cid,npos)
doSendMagicEffect(npos,10)
doPlayerSendTextMessage(cid,22,"My name is feared and my face is covered in darkness, i will grant you more power but not my helmet...yet..see ya later young acolyte")

end

if item.uid == 5455 then
playerlevel = getPlayerLevel(cid)
mmax=150+15*playerlevel
hmax=250+10*playerlevel
cmax=200+20*playerlevel

doPlayerAddMaxMana(cid,mmax)
doPlayerAddMaxHealth(cid,hmax)
doPlayerAddMaxCap(cid,cmax)

npos = {x=146, y=303, z=14}
doTeleportThing(cid,npos)
doSendMagicEffect(npos,10)
doPlayerSendTextMessage(cid,22,"My name is feared and my face is covered in darkness, i will grant you more power but not my helmet...yet..see ya later young hunter")

end

if item.uid == 5456 then
playerlevel = getPlayerLevel(cid)
mmax=200+5*playerlevel
hmax=250+15*playerlevel
cmax=150+25*playerlevel

doPlayerAddMaxMana(cid,mmax)
doPlayerAddMaxHealth(cid,hmax)
doPlayerAddMaxCap(cid,cmax)

npos = {x=146, y=303, z=14}
doTeleportThing(cid,npos)
doSendMagicEffect(npos,10)
doPlayerSendTextMessage(cid,22,"My name is feared and my face is covered in darkness, i will grant you more power but not my helmet...yet..see ya later young warrior")

end



-- diablo

 
if item.uid == 10003 then
npos = {x=689, y=188, z=12}
doTeleportThing(cid,npos)
doSendMagicEffect(npos,10)
end
end