-- annihilator lever
function onUse(cid, item, frompos, item2, topos)

gatepos = {x=583, y=262, z=4, stackpos=1} 
getgate = getThingfromPos(gatepos)
if item.uid == 9004 and item.itemid == 1945 and getgate.itemid == 1497 then
doRemoveItem(getgate.uid,1) 
doTransformItem(item.uid,item.itemid+1) 
elseif item.uid == 9000 and item.itemid == 1946 and getgate.itemid == 0 then
doCreateItem(1497,1,gatepos) 
doTransformItem(item.uid,item.itemid-1) 
else
doPlayerSendCancel(cid,"sorry, You can not destroy the wall.") 
end
return 1
end



