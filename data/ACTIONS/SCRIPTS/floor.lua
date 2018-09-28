function onUse(cid, item, frompos, item2, topos)
------------------------------------------------
------------ Floor Magic Effects ---------------
-------------------- V. 0.1 --------------------
------------------------------------------------
-- Message the player receive when use the floor
msgreceive = "Omg!"

-- IDs of the floor will be used
 floor1id = 102
 floor2id = 103
 floor3id = 407


--------------------------------------------
---------------- Dont change ---------------
--------------------------------------------
getfloor = {x=topos.x, y=topos.y, z=topos.z}
floor = getThingfromPos(getfloor)
player = getPlayerPosition(cid)
getplayer = getThingfromPos(player)
--------------------------------------------
-------------------- End -------------------
--------------------------------------------

  if floor.itemid == floor1id or floor.itemid == floor2id or floor.itemid == floor3id then

 doSendMagicEffect(topos,9)
  doSendMagicEffect(topos,8)
   doSendMagicEffect(topos,7)
    doSendMagicEffect(topos,10)
     doSendMagicEffect(topos,11)
      doSendMagicEffect(topos,12)
 doSendAnimatedText(frompos,msgreceive,30)
end
return 1
end