    area = {    		{0, 0, 0},
				{0, 1, 0},
   				{0, 0, 0}    }

 attackType = ATTACK_ENERGY
 needDirection = false
 areaEffect = NM_ME_NONE
 animationEffect = NM_ANI_ENERGY

 hitEffect = NM_ME_ENERGY_DAMAGE
 damageEffect = NM_ME_ENERGY_DAMAGE
 animationColor = LIGHT_BLUE
 offensive = true
 drawblood = false
 minDmg = -220
 maxDmg = 800

 EnergyBombObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)
 SubEnergyBombObject1 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, minDmg, maxDmg)
 SubEnergyBombObject2 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 70, 70)

 function onCast(cid, creaturePos, level, maglv, var)
 centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}

 return doAreaGroundMagic(cid, centerpos, needDirection, areaEffect, area, EnergyBombObject:ordered(),
 	0, 1, SubEnergyBombObject1:ordered(),
 	5000, 1, SubEnergyBombObject2:ordered(),
 	2, 105000, 1504, 1)

 end
