area = {
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0}
}

attackType = ATTACK_DRUNKNESS
needDirection = false
areaEffect = NM_ME_SOUND_PURPLE
animationEffect = NM_ANI_ENERGY

hitEffect = NM_ME_FIRE_AREA
damageEffect = NM_ME_HITBY_FIRE
animationColor = FIRE
offensive = true
drawblood = false

GreatFireballObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)

function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}

GreatFireballObject.minDmg = 95
GreatFireballObject.maxDmg = 275

return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, GreatFireballObject:ordered())
end
