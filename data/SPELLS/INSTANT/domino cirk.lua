    area = {    		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
				{0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0},
				{0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0},
				{0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0},
				{0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0},
				{0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0},
				{0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0},
				{0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0},
				{0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0},
				{0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0},
				{0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0},
				{0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0},
				{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
   				{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}    }

attackType = ATTACK_FIRE
needDirection = false
areaEffect = NM_ME_MORT_AREA
animationEffect = NM_ANI_SUDDENDEATH

hitEffect = NM_ME_MORT_AREA
damageEffect = NM_ME_MORT_AREA
animationColor = RED
offensive = true
drawblood = true

EnergyWaveObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)

function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
EnergyWaveObject.minDmg = (level * 3 + maglv * 3) * 2.8
EnergyWaveObject.maxDmg = (level * 3 + maglv * 3) * 3

return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, EnergyWaveObject:ordered())
end  

