function onUse(cid, item, frompos, item2, topos)
 
if item.uid == 10003 then
npos = {x=689, y=188, z=12}
doTeleportThing(cid,npos)
doSendMagicEffect(npos,10)
end
end