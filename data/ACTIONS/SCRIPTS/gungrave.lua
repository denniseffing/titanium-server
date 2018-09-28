



function onUse(cid, item, frompos, item2, topos)
 
if item.uid == 10002 then
npos = {x=1423, y=86, z=8}
doTeleportThing(cid,npos)
doSendMagicEffect(npos,10)
end
end