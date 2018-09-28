function onUse(cid, item, frompos, item2, topos)



playerlevel = getPlayerLevel(cid)



if playerlevel >= 80 then
doSummonCreature("rat",topos)
doSendAnimatedText(frompos,"Beeeeaam",30)
print("player did rats:",creatureGetName(cid))
else
doPlayerSendCancel(cid,"You need to be level 80 or more.")
return 0
end

return 1
end  