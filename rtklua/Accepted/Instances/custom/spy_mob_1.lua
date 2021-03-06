spy_mob_1 = {
	on_spawn = function(mob)
		mob.newMove = math.random(3000, 15000)
		mob.baseMove = mob.newMove
		mob.mobType = 1
		mob.gfxHair = math.random(1, 75)
		mob.gfxFace = math.random(200, 275)
		mob.gfxHairC = math.random(0, 31)
		mob.gfxFaceA = -1
		mob.gfxFaceAT = -1
		mob.gfxMantle = -1
		mob.gfxNeck = -1
		mob.gfxCrown = -1
		mob.gfxHelm = -1
		mob.gfxWeap = -1
		mob.gfxShield = -1
		mob.gfxArmor = math.random(61, 75)
		mob.gfxArmorC = math.random(1, 31)
		mob.gfxClone = 1
		mob:updateState()
	end,

	on_healed = function(mob, healer)
	end,

	on_attacked = function(mob, attacker)
		if attacker.gmLevel == 99 then
			mob_ai_basic.on_attacked(mob, attacker)
		end
	end,

	move = function(mob, target)
		mob.side = math.random(0, 3)
		mob:sendSide()
		mob:move()
	end,

	attack = function(mob, target)
		mob.side = math.random(0, 3)
		mob:sendSide()
		mob:move()
	end,

	after_death = function(mob, block)
	end
}
