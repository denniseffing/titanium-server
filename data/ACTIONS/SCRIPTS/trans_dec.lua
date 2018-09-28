
   
   function onUse(cid, item, frompos, item2, topos)
   doSendAnimatedText(frompos, "KLAK", 180)
   	doTransformItem(item.uid,item.itemid-1)
   	return 1
   
   end