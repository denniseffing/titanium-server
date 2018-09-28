    area = {    		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 2, 2, 0, 1, 1, 3, 0, 3, 3, 0, 0, 0, 0},
   				{0, 0, 0, 2, 2, 2, 2, 2, 0, 3, 3, 3, 3, 3, 0, 0, 0},
   				{0, 0, 0, 0, 2, 2, 0, 2, 4, 4, 0, 3, 3, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 2, 0, 0, 4, 0, 0, 3, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}    }

   attackType = ATTACK_ENERGY
   needDirection = true
   areaEffect = NM_ME_ENERGY_AREA
   animationEffect = NM_ANI_NONE

   hitEffect = NM_ME_EXPLOSION_DAMAGE
   damageEffect = NM_ME_ENERGY_DAMAGE
   animationColor = RED
   offensive = true
   drawblood = true

   GreatEnergyBeamObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)

   function onCast(cid, creaturePos, level, maglv, var)
   centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
   GreatEnergyBeamObject.minDmg = (level * 4 + maglv *4) * 1.5
   GreatEnergyBeamObject.maxDmg = (level * 4.5 + maglv *4) * 2


   return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, GreatEnergyBeamObject:ordered())
   end

