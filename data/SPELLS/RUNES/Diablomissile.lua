area = {
 {0, 1, 0, 1, 0, 1, 0},
 {0, 0, 1, 1, 1, 0, 0},
 {0, 0, 0, 1, 0, 0, 0},
 {1, 1, 1, 1, 1, 1, 1},
 {0, 0, 0, 1, 0, 0, 0},
 {0, 0, 1, 1, 1, 0, 0},
 {0, 1, 0, 1, 0, 1, 0}
 }
 
 attackType = ATTACK_PHYSICAL
 needDirection = false
 animationEffect = NM_ANI_SUDDENDEATH
areaEffect = NM_ME_MORT_AREA
 
 hitEffect = NM_ME_MORT_AREA
 damageEffect = NM_ME_DRAW_BLOOD
 animationColor = BLACK
 offensive = true
 drawblood = true
 
 ExplosionObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)
 
 function onCast(cid, creaturePos, level, maglv, var)
 centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
 
 ExplosionObject.minDmg = (level * 2 + maglv *1) * 1.5
 ExplosionObject.maxDmg = (level * 2 + maglv *1) * 1.7
 
 return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, ExplosionObject:ordered())
 end
