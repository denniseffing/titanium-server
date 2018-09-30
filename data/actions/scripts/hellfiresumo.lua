-- Hellfire ownzor by titte
function onUse(cid, item, frompos, item2, topos)




schaltr = {x=777, y=205, z=12, stackpos=1} 
levrr = getThingfromPos(schaltr)












-- rechts

if item.uid == 9008 and item.itemid == 1945 then
	
		topleft={x=763, y=189, z=12}
		bottonright={x=774, y=193, z=12}

		maxmonsters= nil
		checking={x=topleft.x, y=topleft.y, z=topleft.z} --Do Not Change
		summonedtotal=0 --Do Not Change repeat
			checkforsummon=0 --Do Not Change
			spawnrate=math.random(0,10)
			if spawnrate==0 and summonedtotal ~= maxmonsters then
				species=math.random(1,4)

				if species == 1 then
					checkforsummon = doSummonCreature("knight of the hatered",checking)
				elseif species == 2 then
					checkforsummon = doSummonCreature("Knight of the damness",checking)
				elseif species == 3 then
					checkforsummon = doSummonCreature("Knight of the Forgetting",checking)
				else
					checkforsummon = doSummonCreature("Knight of the Forgetting",checking)
				end



				if checkforsummon~= 0 then
					summonedtotal=summonedtotal+1
				end
			end

			checking.x=checking.x+1
			if checking.x>bottonright.x then
				checking.x=topleft.x
				checking.y=checking.y+1
			end
		until checking.y > bottonright.y
		print("Number of creatures summoned at hellfire right:",summonedtotal)

		doTransformItem(item.uid,item.itemid+1)
else
doPlayerSendCancel(cid,"Trtrtrtrtrtrt strange sound") 
end



end

return 1
end