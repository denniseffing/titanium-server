-- Hellfire ownzor by titte
function onUse(cid, item, frompos, item2, topos)

--Oben links

schaltor = {x=747, y=158, z=12, stackpos=1} 
levror = getThingfromPos(schaltor)
schaltol = {x=732, y=158, z=12, stackpos=1} 
levrol = getThingfromPos(schaltol)

schaltr = {x=777, y=205, z=12, stackpos=1} 
levrr = getThingfromPos(schaltr)

schaltur = {x=733, y=237, z=12, stackpos=1} 
levrur = getThingfromPos(schaltur)
schaltul = {x=722, y=231, z=12, stackpos=1} 
levrul = getThingfromPos(schaltul)





--- oben links
if item.uid == 9006 and item.itemid == 1945 and levror.itemid == 1945 then
doTransformItem(item.uid,item.itemid+1)
doPlayerSendCancel(cid,"Tramtamtamtam strange sound") 

elseif item.uid == 9006 and item.itemid == 1945 and levror.itemid == 1946 then


		topleft={x=731, y=166, z=12}
		bottonright={x=737, y=173, z=12}

		maxmonsters= nil
		checking={x=topleft.x, y=topleft.y, z=topleft.z} --Do Not Change
		summonedtotal=0 --Do Not Change
repeat
			checkforsummon=0 --Do Not Change
			spawnrate=math.random(0,10)
			if spawnrate==0 and summonedtotal ~= maxmonsters then
				species=math.random(1,10)

				if species == 1 then
					checkforsummon = doSummonCreature("Demon",checking)
				elseif species == 2 then
					checkforsummon = doSummonCreature("fire elemental",checking)
				elseif species == 3 then
					checkforsummon = doSummonCreature("fire devil",checking)
				else
					checkforsummon = doSummonCreature("fire elemental",checking)
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
		print("Number of creatures summoned at hellfire:",summonedtotal)

		doTransformItem(item.uid,item.itemid+1)







else
doPlayerSendCancel(cid,"Trtrtrtrtrtrt strange sound") 
end


--Oben rechts

if item.uid == 9007 and item.itemid == 1945 and levrol.itemid == 1945 then
doTransformItem(item.uid,item.itemid+1)
doPlayerSendCancel(cid,"Tramtamtamtam strange sound") 

elseif item.uid == 9007 and item.itemid == 1945 and levrol.itemid == 1946 then


		topleft={x=731, y=166, z=12}
		bottonright={x=737, y=173, z=12}

		maxmonsters= nil
		checking={x=topleft.x, y=topleft.y, z=topleft.z} --Do Not Change
		summonedtotal=0 --Do Not Change
repeat
			checkforsummon=0 --Do Not Change
			spawnrate=math.random(0,10)
			if spawnrate==0 and summonedtotal ~= maxmonsters then
				species=math.random(1,10)

				if species == 1 then
					checkforsummon = doSummonCreature("Demon",checking)
				elseif species == 2 then
					checkforsummon = doSummonCreature("fire elemental",checking)
				elseif species == 3 then
					checkforsummon = doSummonCreature("Orc",checking)
				else
					checkforsummon = doSummonCreature("fire elemental",checking)
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
		print("Number of creatures summoned at hellfire:",summonedtotal)

		doTransformItem(item.uid,item.itemid+1)



else
doPlayerSendCancel(cid,"Trtrtrtrtrtrt strange sound") 
end






--unten rechts

if item.uid == 9009 and item.itemid == 1945 and levrul.itemid == 1945 then
doTransformItem(item.uid,item.itemid+1)
doPlayerSendCancel(cid,"Tramtamtamtam strange sound") 

elseif item.uid == 9009 and item.itemid == 1945 and levrul.itemid == 1946 then


		topleft={x=731, y=224, z=12}
		bottonright={x=736, y=236, z=12}

		maxmonsters= nil
		checking={x=topleft.x, y=topleft.y, z=topleft.z} --Do Not Change
		summonedtotal=0 --Do Not Change
repeat
			checkforsummon=0 --Do Not Change
			spawnrate=math.random(0,10)
			if spawnrate==0 and summonedtotal ~= maxmonsters then
				species=math.random(1,10)

				if species == 1 then
					checkforsummon = doSummonCreature("dragon",checking)
				elseif species == 2 then
					checkforsummon = doSummonCreature("dragon",checking)
				elseif species == 3 then
					checkforsummon = doSummonCreature("Orc",checking)
				else
					checkforsummon = doSummonCreature("dragon",checking)
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
		print("Number of creatures summoned at hellfire down:",summonedtotal)

		doTransformItem(item.uid,item.itemid+1)



else
doPlayerSendCancel(cid,"Trtrtrtrtrtrt strange sound") 
end




--unten links

if item.uid == 9010 and item.itemid == 1945 and levrur.itemid == 1945 then
doTransformItem(item.uid,item.itemid+1)
doPlayerSendCancel(cid,"Tramtamtamtam strange sound") 

elseif item.uid == 9010 and item.itemid == 1945 and levrur.itemid == 1946 then


	
		topleft={x=731, y=224, z=12}
		bottonright={x=736, y=236, z=12}

		maxmonsters= nil
		checking={x=topleft.x, y=topleft.y, z=topleft.z} --Do Not Change
		summonedtotal=0 --Do Not Change
repeat
			checkforsummon=0 --Do Not Change
			spawnrate=math.random(0,10)
			if spawnrate==0 and summonedtotal ~= maxmonsters then
				species=math.random(1,10)

				if species == 1 then
					checkforsummon = doSummonCreature("dragon",checking)
				elseif species == 2 then
					checkforsummon = doSummonCreature("dragon",checking)
				elseif species == 3 then
					checkforsummon = doSummonCreature("Orc",checking)
				else
					checkforsummon = doSummonCreature("dragon",checking)
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
		print("Number of creatures summoned at hellfire down:",summonedtotal)

		doTransformItem(item.uid,item.itemid+1)



else
doPlayerSendCancel(cid,"Trtrtrtrtrtrt strange sound") 
end


-- rechts



if item.uid == 9008 and item.itemid == 1945 then


	
		topleft={x=763, y=189, z=12}
		bottonright={x=774, y=193, z=12}

		maxmonsters= nil
		checking={x=topleft.x, y=topleft.y, z=topleft.z} --Do Not Change
		summonedtotal=0 --Do Not Change
repeat
			checkforsummon=0 --Do Not Change
			spawnrate=math.random(0,10)
			if spawnrate==0 and summonedtotal ~= maxmonsters then
				species=math.random(1,10)

				if species == 1 then
					checkforsummon = doSummonCreature("wolf",checking)
				elseif species == 2 then
					checkforsummon = doSummonCreature("wolf",checking)
				elseif species == 3 then
					checkforsummon = doSummonCreature("Orc",checking)
				else
					checkforsummon = doSummonCreature("demon",checking)
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




return 1
end