--rope sistem--
   
   function onUse(cid, item, frompos, item2, topos)
   npos = {x=topos.x, y=topos.y, z=topos.z}
   if item2.itemid == 28 then
    return 0
   end 
   
   if item2.itemid == 3390 and item2.uid == 10004 then
    npos.x = npos.x - 1
    doTeleportThing(cid,npos)
doSendAnimatedText(frompos,"Beeeeaaaaam",115)
doRemoveItem(item.uid,1)
doSendMagicEffect(npos,10)
   

   	else
   		return 0
   	end
   	
   	return 1
   end