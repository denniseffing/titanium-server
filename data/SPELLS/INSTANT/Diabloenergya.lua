
area = {
{0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 3, 0, 0},
{0, 0, 0, 2, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 2, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 3, 0, 0, 0},
{0, 2, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 3, 3, 0},
{0, 0, 0, 2, 2, 2, 0, 2, 1, 1, 0, 3, 3, 3, 0, 0, 0},
{0, 0, 2, 2, 2, 2, 2, 2, 0, 3, 3, 3, 3, 3, 3, 0, 0},
{0, 2, 2, 2, 0, 2, 0, 4, 4, 3, 0, 3, 0, 3, 3, 3, 0},
{0, 2, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 3, 0},
{2, 2, 0, 0, 2, 0, 0, 4, 4, 4, 0, 0, 0, 3, 0, 3, 3},
{2, 0, 0, 0, 0, 0, 0, 4, 4, 0, 4, 0, 0, 0, 0, 0, 3},
{0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 4, 0, 0, 0, 3, 0, 0},
{0, 0, 0, 0, 0, 4, 4, 4, 0, 0, 4, 4, 0, 0, 0, 0, 0}
}


   attackType = ATTACK_ENERGY
   needDirection = true
   areaEffect = NM_ME_ENERGY_DAMAGE
   animationEffect = NM_ME_EXPLOSION_AREA

   hitEffect = NM_ME_ENERGY_DAMAGE
   damageEffect = NM_ME_HITBY_FIRE
   animationColor = 199
   offensive = true
   drawblood = true


   EnergyWaveObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)

   function onCast(cid, creaturePos, level, maglv, var)
   centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
   EnergyWaveObject.minDmg = (level * 2 + maglv * 3) + 180
   EnergyWaveObject.maxDmg = (level * 2 + maglv * 3) + 700

   return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, EnergyWaveObject:ordered())
   end

