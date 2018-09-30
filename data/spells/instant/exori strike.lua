attackType = ATTACK_PHYSICAL
animationEffect = NM_ANI_NONE

hitEffect = NM_ME_HIT_AREA
damageEffect = NM_ME_HIT_AREA
animationColor = RED
offensive = true
drawblood = true

UltimateExplosionObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)

function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z} targetpos = getPosition(var)
UltimateExplosionObject.minDmg = (level * 2 + maglv * 3) * 3
UltimateExplosionObject.maxDmg = (level * 2 + maglv * 3) * 3 + 40

if targetpos.x ~= nil and targetpos.z ~= nil and targetpos.y ~= nil then
if math.abs(targetpos.x - centerpos.x) < 18 and math.abs(targetpos.y - centerpos.y) < 14 and targetpos.z == centerpos.z then
return doTargetMagic(cid, targetpos, UltimateExplosionObject:ordered())
end
end

return false
end 