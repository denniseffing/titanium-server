    area = {    				{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}    }

 attackType = ATTACK_POISON
 needDirection = false
 areaEffect = NM_ME_POISEN_RINGS
 animationEffect = NM_ME_MAGIC_POISEN

 hitEffect = NM_ME_POISEN
 damageEffect = NM_ME_POISEN_RINGS
 animationColor = GREEN
 offensive = true
 drawblood = false
 minDmg = 0
 maxDmg = 0

 PoisonBombObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)
 SubPoisonBombObject1 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, minDmg, maxDmg)
 SubPoisonBombObject2 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 6, 6)

 function onCast(cid, creaturePos, level, maglv, var)
 centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}

 return doAreaGroundMagic(cid, centerpos, needDirection, areaEffect, area, PoisonBombObject:ordered(),
 	0, 1, SubPoisonBombObject1:ordered(),
 
 	500, 6, SubPoisonBombObject2:ordered(),
 	
 	0, 200, 2006, 3)
 end
