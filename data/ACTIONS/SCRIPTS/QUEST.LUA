function onUse(cid, item, frompos, item2, topos)
 
   	-- bright sword quest
   	if item.uid == 5001 then
   		queststatus = getPlayerStorageValue(cid,5001)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 20 then
   				doPlayerSendTextMessage(cid,22,"You have found Bright Sword.")
   				doPlayerAddItem(cid,2407,1)
   				setPlayerStorageValue(cid,5001,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 20 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 
   	-- orc fortress quest
   	elseif item.uid == 5002 then
   		queststatus = getPlayerStorageValue(cid,5002)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 50 then
   				doPlayerSendTextMessage(cid,22,"You have found Golden Armor.")
   				doPlayerAddItem(cid,2466,1)
   				setPlayerStorageValue(cid,5002,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 
   	-- pharaon quest
   	elseif item.uid == 5003 then
   		queststatus = getPlayerStorageValue(cid,5003)
   		if queststatus == -1 then
 			if getPlayerLevel(cid) >= 50 then
   				doPlayerSendTextMessage(cid,22,"You have found Dragon Lance.")
   				doPlayerAddItem(cid,2414,1)
   				setPlayerStorageValue(cid,5003,1)
   			else
 				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5004 then
   		queststatus = getPlayerStorageValue(cid,5003)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 50 then
   				doPlayerSendTextMessage(cid,22,"You have found War Hammer.")
   				doPlayerAddItem(cid,2391,1)
   				setPlayerStorageValue(cid,5003,1)
   			else
 				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 	elseif item.uid == 5017 then
   		queststatus = getPlayerStorageValue(cid,5003)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 50 then
   				doPlayerSendTextMessage(cid,22,"You have found Giant Sword.")
   				doPlayerAddItem(cid,2393,1)
   				setPlayerStorageValue(cid,5003,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 
   	-- demon quest
   	elseif item.uid == 5005 then
   		queststatus = getPlayerStorageValue(cid,5005)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 60 then
   				doPlayerSendTextMessage(cid,22,"You have found Steel Boots.")
   				doPlayerAddItem(cid,2645,1)
   				setPlayerStorageValue(cid,5005,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 60 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 
   	-- annihilator
   	elseif item.uid == 5006 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Demon Armor.")
   			doPlayerAddItem(cid,2494,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5007 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Sword of Valor.")
   			doPlayerAddItem(cid,2400,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5008 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Stonecutter's Axe.")
   			doPlayerAddItem(cid,2431,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5009 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have a Thunder Hammer.")
   			doPlayerAddItem(cid,2421,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 
 	-- elf camp quest
   	elseif item.uid == 5013 then
   		queststatus = getPlayerStorageValue(cid,5013)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 20 then
   				doPlayerSendTextMessage(cid,22,"You have found Dragon Hammer.")
   				doPlayerAddItem(cid,2434,1)
   				setPlayerStorageValue(cid,5013,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 20 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 
 	-- banshee quest
   	elseif item.uid == 5014 then
   		queststatus = getPlayerStorageValue(cid,5014)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 20 then
   				doPlayerSendTextMessage(cid,22,"You have found Amazon Shield.")
   				doPlayerAddItem(cid,2537,1)
   				setPlayerStorageValue(cid,5014,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 20 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 
   	-- slime quest
   	elseif item.uid == 5015 then
   		queststatus = getPlayerStorageValue(cid,5015)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 12 then
   				doPlayerSendTextMessage(cid,22,"You have found Brass Legs and Dark Shield.")
   				doPlayerAddItem(cid,2478,1)
   				doPlayerAddItem(cid,2521,1)
   				setPlayerStorageValue(cid,5015,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 12 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 
 	-- necro quest
   	elseif item.uid == 5016 then
   		queststatus = getPlayerStorageValue(cid,5016)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 20 then
   				doPlayerSendTextMessage(cid,22,"You have found Knight Legs.")
   				doPlayerAddItem(cid,2477,1)
   				setPlayerStorageValue(cid,5016,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 20 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 
   	-- ship quest
   	elseif item.uid == 5018 then
   		queststatus = getPlayerStorageValue(cid,5018)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 40 then
   				doPlayerSendTextMessage(cid,22,"You have found Helmet of the Ancients.")
   				doPlayerAddItem(cid,2342,1)
   				setPlayerStorageValue(cid,5018,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 40 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 
   	-- steering patent
   	-- storage value 5019
 
   	-- omegilator
   	elseif item.uid == 5020 then
   		queststatus = getPlayerStorageValue(cid,5020)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 100 then
   				doPlayerSendTextMessage(cid,22,"You have found Helmet of the Ancients.")
   				doPlayerAddItem(cid,2343,1)
   				setPlayerStorageValue(cid,5020,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 100 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 
 	-- hydra quest
 	elseif item.uid == 5022 then
   		queststatus = getPlayerStorageValue(cid,5022)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 40 then
   				doPlayerSendTextMessage(cid,22,"You have found Shield of Honour.")
   				doPlayerAddItem(cid,2517,1)
   				setPlayerStorageValue(cid,5022,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 40 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 
 	-- yeti quest
 	elseif item.uid == 5023 then
   		queststatus = getPlayerStorageValue(cid,5023)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 20 then
   				doPlayerSendTextMessage(cid,22,"You have found Lady Helmet.")
   				doPlayerAddItem(cid,2499,1)
   				setPlayerStorageValue(cid,5023,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 20 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 	-- la1 quest
 	elseif item.uid == 5024 then
   		queststatus = getPlayerStorageValue(cid,5024)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 70 then
   				doPlayerSendTextMessage(cid,22,"You hava found forgotten shield and booltshooter spear?.")
   				doPlayerAddItem(cid,2520,1)
 		            doPlayerAddItem(cid,2426,1)
   				setPlayerStorageValue(cid,5024,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 70 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 	-- la2 quest
 	elseif item.uid == 5025 then
   		queststatus = getPlayerStorageValue(cid,5025)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 120 then
   				doPlayerSendTextMessage(cid,22,"You have found blue shining plate armor.")
   				doPlayerAddItem(cid,2472,1)
   				setPlayerStorageValue(cid,5025,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 120 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 -- la3 quest
 	elseif item.uid == 5026 then
   		queststatus = getPlayerStorageValue(cid,5026)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 120 then
   				doPlayerSendTextMessage(cid,22,"You have found golden legs wow u are rich now .")
   				doPlayerAddItem(cid,2470,1)
   				setPlayerStorageValue(cid,5026,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 120 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 
 -- winghet quest
 	elseif item.uid == 5027 then
   		queststatus = getPlayerStorageValue(cid,5027)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 240 then
   				doPlayerSendTextMessage(cid,22,"You have found marsian helmet.")
   				doPlayerAddItem(cid,3972,1)
   				setPlayerStorageValue(cid,5027,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 240 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 
 -- boh quest
 	elseif item.uid == 5028 then
   		queststatus = getPlayerStorageValue(cid,5028)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 50 then
   				doPlayerSendTextMessage(cid,22,"You have found boots of haste muahahaha.")
   				doPlayerAddItem(cid,2195,1)
   				setPlayerStorageValue(cid,5028,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 50 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 -- dsl quest
 	elseif item.uid == 5029 then
   		queststatus = getPlayerStorageValue(cid,5029)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 110 then
   				doPlayerSendTextMessage(cid,22,"You have found legendary demon legs.")
   				doPlayerAddItem(cid,2495,1)
   				setPlayerStorageValue(cid,5029,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 110 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 
 
 
 
 -- Golden helmet quest
 	elseif item.uid == 5030 then
   		queststatus = getPlayerStorageValue(cid,5030)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 160 then
   				doPlayerSendTextMessage(cid,22,"You fell somet strong light comes from the chest. You open it and u see Body of old Pirate King Gold D-Roger. He Holds an Ancient Golden Helmet in hes Boned Hand... You Found Legendary Helmet of the Stars..")
   				doPlayerAddItem(cid,2471,1)
   				setPlayerStorageValue(cid,5030,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 160 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
 -- Phoenix quest
 	elseif item.uid == 5031 then
   		queststatus = getPlayerStorageValue(cid,5031)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 140 then
   				doPlayerSendTextMessage(cid,22,"You puted ur hand intro the blue fire, its warm but not hot ! You hold the fire in ur hand and the firebecome something shining its looking.... Ye like Feathers looks now like armor.... You found Armor of an phoenix , This armor can become someday phoenix again.")
   				doPlayerAddItem(cid,2508,1)
   				setPlayerStorageValue(cid,5031,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 140 until it the fire is too hot.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"Its only hot fire.")
   		end
 



-- silent blue rose
 	elseif item.uid == 5035 then
   		queststatus = getPlayerStorageValue(cid,5035)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 60 then
   				doPlayerSendTextMessage(cid,22,"You found an beutifull rose")
   				doPlayerAddItem(cid,2745,1)
   				setPlayerStorageValue(cid,5035,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 60 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end



-- silent throne
 	elseif item.uid == 5036 then
   		queststatus = getPlayerStorageValue(cid,5036)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 90 then
   				doPlayerSendTextMessage(cid,22,"You found an runeshield")
   				doPlayerAddItem(cid,2514,1)
   				setPlayerStorageValue(cid,5036,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 90 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

-- silent adventure
 	elseif item.uid == 5037 then
   		queststatus = getPlayerStorageValue(cid,5037)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 90 then
   				doPlayerSendTextMessage(cid,22,"You found an gemshield")
   				doPlayerAddItem(cid,2524,1)
   				setPlayerStorageValue(cid,5037,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 90 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end


-- silent adventure
 	elseif item.uid == 5038 then
   		queststatus = getPlayerStorageValue(cid,5038)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 60 then
   				doPlayerSendTextMessage(cid,22,"You found an mystic ring")
   				doPlayerAddItem(cid,2123,1)
   				setPlayerStorageValue(cid,5038,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 90 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

-- silent adventure
 	elseif item.uid == 5039 then
   		queststatus = getPlayerStorageValue(cid,5039)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 60 then
   				doPlayerSendTextMessage(cid,22,"You found crown set")
   				doPlayerAddItem(cid,2487,1)
		doPlayerAddItem(cid,2488,1)
		doPlayerAddItem(cid,2491,1)
   				setPlayerStorageValue(cid,5039,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 90 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end


-- silent adventure
 	elseif item.uid == 5040 then
   		queststatus = getPlayerStorageValue(cid,5040)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 60 then
   				doPlayerSendTextMessage(cid,22,"You found mystic lamp")
   				doPlayerAddItem(cid,2356,1)
	
   				setPlayerStorageValue(cid,5040,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 90 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
-- mana godess shield
 	elseif item.uid == 5041 then
   		queststatus = getPlayerStorageValue(cid,5041)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 320 then
   				doPlayerSendTextMessage(cid,22,"You found the old treasure of the Drake family")
   				doPlayerAddItem(cid,2542,1)
   				setPlayerStorageValue(cid,5041,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 320 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end




-- golden boots
 	elseif item.uid == 5042 then
   		queststatus = getPlayerStorageValue(cid,5042)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 300 then
   				doPlayerSendTextMessage(cid,22,"You found the old treasure of the Drake family")
   				doPlayerAddItem(cid,2646,1)
   				setPlayerStorageValue(cid,5042,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 300 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end



-- annihilator
   	elseif item.uid == 20001 then
   		queststatus = getPlayerStorageValue(cid,20001)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Crystaliced Ice Arrow.")
   			doPlayerAddItem(cid,2352,1)
   			setPlayerStorageValue(cid,20001,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 20002 then
   		queststatus = getPlayerStorageValue(cid,20001)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Worldend Mace.")
   			doPlayerAddItem(cid,2452,1)
   			setPlayerStorageValue(cid,20001,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 20003 then
   		queststatus = getPlayerStorageValue(cid,20001)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found Fallen Angels Legacy.")
   			doPlayerAddItem(cid,2424,1)
   			setPlayerStorageValue(cid,20001,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 20004 then
   		queststatus = getPlayerStorageValue(cid,20001)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have proof that u are an hero.")
   			doPlayerAddItem(cid,3968,1)
   			setPlayerStorageValue(cid,20001,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

-- demon helmet
 	elseif item.uid == 20005 then
   		queststatus = getPlayerStorageValue(cid,20005)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 200 then
   				doPlayerSendTextMessage(cid,22,"You have found an Demonskin helmet")
   				doPlayerAddItem(cid,2493,1)
   				setPlayerStorageValue(cid,20005,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 200 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

-- dark shield
 	elseif item.uid == 20006 then
   		queststatus = getPlayerStorageValue(cid,20006)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 200 then
   				doPlayerSendTextMessage(cid,22,"You have found a Shield of Darkness")
   				doPlayerAddItem(cid,2529,1)
   				setPlayerStorageValue(cid,20006,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 200 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
-- books
 	elseif item.uid == 20007 then
   		queststatus = getPlayerStorageValue(cid,20007)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 200 then
   				doPlayerSendTextMessage(cid,22,"You have found Ancient books")
   				doPlayerAddItem(cid,1984,1)
	doPlayerAddItem(cid,1982,1)
   				setPlayerStorageValue(cid,20007,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 200 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
-- books
 	elseif item.uid == 20008 then
   		queststatus = getPlayerStorageValue(cid,20008)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 200 then
   				doPlayerSendTextMessage(cid,22,"You have found Ancient Coins")
   				doPlayerAddItem(cid,2159,6)
	doPlayerAddItem(cid,1982,1)
   				setPlayerStorageValue(cid,20008,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 200 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end


-- hellfire
-- books
 	elseif item.uid == 20009 then
   		queststatus = getPlayerStorageValue(cid,20009)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 400 then
   				doPlayerSendTextMessage(cid,22,"You have found something that God Titan has hidden long time ago, its eye of the God Tyler")
   				doPlayerAddItem(cid,2130,6)
	doPlayerAddItem(cid,1982,1)
   				setPlayerStorageValue(cid,20009,1)
   			else
   				doPlayerSendTextMessage(cid,22,"You need level 400 to get prize.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
-- Rockgard

 	elseif item.uid == 20010 then
   		queststatus = getPlayerStorageValue(cid,20010)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 5 then
   				doPlayerSendTextMessage(cid,22,"You have found hero starter set")
   				doPlayerAddItem(cid,2160,10)
   				doPlayerAddItem(cid,1988,1)


   				setPlayerStorageValue(cid,20010,1)
   			else
   				doPlayerSendTextMessage(cid,22,"omg.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

 	elseif item.uid == 20011 then
   		queststatus = getPlayerStorageValue(cid,20011)
   		if queststatus == -1 then
   			if getPlayerLevel(cid) >= 5 then
   				doPlayerSendTextMessage(cid,22,"You have found hero equipment")
   				doPlayerAddItem(cid,2383,1)
   				doPlayerAddItem(cid,2455,1)
				doPlayerAddItem(cid,2465,1)
				doPlayerAddItem(cid,2478,1)
				doPlayerAddItem(cid,2479,1)
				doPlayerAddItem(cid,2190,1)
				doPlayerAddItem(cid,2182,1)

   				setPlayerStorageValue(cid,20011,1)
   			else
   				doPlayerSendTextMessage(cid,22,"omg.")
   			end
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end




 
   	end
   	return 1
   end
