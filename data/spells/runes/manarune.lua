function onUse(cid, item, frompos, item2, topos) if item.itemid == 3095 and item.type > 1 then doPlayerAddMana(cid,1000) doChangeTypeItem(item.uid,item.type-1) doSendMagicEffect(topos,12) doPlayerSay(cid,"Aaaaah...",1) else doRemoveItem(item.uid,1) end return 1 end