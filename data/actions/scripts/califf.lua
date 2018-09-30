function onUse(cid, item, frompos, item2, topos)



playerlevel = getPlayerLevel(cid)



if playerlevel >= 10 then
doSummonCreature("Neonix",topos)
doSendAnimatedText(frompos,"Beeeeaam",30)
doRemoveItem(item.uid,1)

else
doPlayerSendCancel(cid,"You need to be level 10 or more.")
return 0
end

return 1
end  