function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 0 then
return 0
end
if item.itemid == 2316 then
if item2.itemid == 3128 then
 doSendMagicEffect(topos,10)
 doPlayerSummonCreature(cid, "skeleton", 0, topos)
 doRemoveItem(item2.uid,1)
if item.type > 1 then
  doChangeTypeItem(item.uid,item.type-1)
else
  doRemoveItem(item.uid,1)
end
end
else
return 0
end

return 1
end