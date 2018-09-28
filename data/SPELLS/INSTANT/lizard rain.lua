area = {
{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0},
{1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1},
{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0},
{1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1},
{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0},
{1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1},
{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0},
{1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1},
{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0},
{1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1},
{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0}
}

attackType = ATTACK_ENERGY
needDirection = false
areaEffect = NM_ME_LOOSE_ENERGY
animationEffect = NM_ANI_NONE

hitEffect = NM_ME_EXPLOSION_DAMAGE
damageEffect = NM_ME_ENERGY_DAMAGE
animationColor = RED
offensive = true
drawblood = true

EnergyWaveObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)

function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
EnergyWaveObject.minDmg = (level * 2 + maglv * 3) * 1.3
EnergyWaveObject.maxDmg = (level * 2 + maglv * 3) * 1.7

return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, EnergyWaveObject:ordered())
end  

