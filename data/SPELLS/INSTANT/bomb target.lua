area = {
{0, 0, 0},
{0, 1, 0},
{0, 0, 0}
}
attackType = ATTACK_PHYSICAL
needDirection = false
areaEffect = NM_ME_MORT_AREA
animationEffect = NM_ANI_SUDDENDEATH

hitEffect = NM_ME_EXPLOSION_DAMAGE
damageEffect = NM_ME_DRAW_BLOOD
animationColor = RED
offensive = true
drawblood = true


HealFriendObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)

function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z} targetpos = getPosition(var)
if (level * 2 + maglv * 3) >= 100 then
HealFriendObject.minDmg = (level * 4.0 + maglv * 7) * 1.706
HealFriendObject.maxDmg = (level * 4.1 + maglv * 7) * 2.8



elseif (level * 2 + maglv * 3) < 100 then
HealFriendObject.minDmg  = 100 * 1.906
HealFriendObject.maxDmg = 100 * 2.267
end

if targetpos.x ~= nil and targetpos.z ~= nil and targetpos.y ~= nil then
	if math.abs(targetpos.x - centerpos.x) < 8 and math.abs(targetpos.y - centerpos.y) < 6 and targetpos.z == centerpos.z then
		return doTargetMagic(cid, targetpos, HealFriendObject:ordered())
	end
end

return false
end  