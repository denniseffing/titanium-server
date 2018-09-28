function onUse(cid, item, frompos, item2, topos)
   	if item.itemid == 2160 and item.type == 100 then
   		doRemoveItem(item.uid,item.type)
   		doPlayerAddItem(cid,2157,1)
doSendAnimatedText(frompos,"$$$$",30)
   		doPlayerSendTextMessage(cid,22,"You have changed 100 crystals to 1 titanium")
   	elseif item.itemid == 2160 and item.type < 100 then
   		doRemoveItem(item.uid,1)
   		doPlayerAddItem(cid,2152,100)
doSendAnimatedText(frompos,"$$",30)
   		doPlayerSendTextMessage(cid,22,"You have changed 1 titanium to 100 crystal coins")
   	end
   end
