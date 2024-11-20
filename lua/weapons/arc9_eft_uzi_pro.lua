AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_smg")
-- SWEP.SubCategory = "_Not for your eyesss"
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    -- [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    -- [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

SWEP.PrintName = "IWI UZI PRO Pistol"
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_smg")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "Israel Weapon Industries",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "9x19mm Parabellum",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"] = ARC9:GetPhrase("eft_trivia_act_blow"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = "Israel",
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "2010"
}

SWEP.Description = [[The UZI PRO Pistol (UPP9S) is a fully automatic conversion of the 9x19mm Parabellum submachine gun for law enforcement and military use. This ultra-compact submachine gun is an evolution of the full-size UZI submachine gun, ideal for concealed carry and featuring a high rate of fire. Manufactured by Israel Weapon Industries.]]


SWEP.StandardPresets = {
    "[Barter]XQAAAQCEAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD+xFxj3ln4SfzhaVaTbmCaVkQaHweXHR+T64BPbFAsbGOjmE5ilH+LJDO/BEUT74hmE8ptvYABSWiG90+9LpJvqU3Nzb0aItbP0BSMC000gFxv2LaLBKkv4i+b2GcWgRj882QM5s+JYHBSpGx8k6/KmldgqxDGg3wPQ0KFUA7SbqNd86iIGfMOqzQoWM8g14eLmqv0YSkysyYyyjnE7QIknNkOAA==",
    "[SMG]XQAAAQBaAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD+xFxj3ln4SfzhaVaTbmBYX3jb/FFWn7s/ThYlp9MUQw6euttwmtCXV+TTlrclS71K2OLPFlpM1Dj1LM2x4cCorQ0ifZezeS5zb2/QBA9Ag7TOXzyTZthbejwDDZmHKRY/J97fe5mNUzOtAh1bUf42LIa2XYo7+w45I3tejcl/XjEFS5tBHei4DTVw/w=="    
}

SWEP.BarrelLength = 17
SWEP.Slot = 2
SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_uzi_pro.mdl"
SWEP.ViewModelFOVBase = 65
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "00000000000000"


------------------------- [[[           STATS            ]]] -------------------------

-- default pst ghz

SWEP.DamageMax = 54/2
SWEP.DamageMin = 30/2
SWEP.PhysBulletMuzzleVelocity = 457 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      20 *2.54/100/0.0254
SWEP.PenetrationDelta = 33/100
SWEP.ArmorPiercing =    33/100
SWEP.RicochetChance =   5/100


SWEP.DamageLookupTable = {
    {   10/0.0254, 
    54/2     },

    {   100 /0.0254, 
    43.77/2     },

    {   200 /0.0254, 
    40.34/2     },

    {   300 /0.0254, 
    37.92/2     },

    {   400 /0.0254, 
    35.98/2     },

    {   500 /0.0254, 
    34.32/2     },

    {   600 /0.0254, 
    32.96/2     },

    {   700 /0.0254, 
    31.9/2     },

    {   800 /0.0254, 
    31.12/2     },

    {   900 /0.0254, 
    30.65/2     },

    {   1000 /0.0254, 
    30.51/2     },
}

--          Spread
SWEP.Spread = 6.26 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015


--          Recoil
-- touch these

SWEP.Recoil = 0.2 -- general multiplier of main recoil

SWEP.RecoilUp   = 3   -- up recoil
SWEP.RecoilSide = 1.5 -- sideways recoil
SWEP.RecoilRandomUp   = 0.75 -- random up/down
SWEP.RecoilRandomSide = 1.25   -- random left/right

SWEP.RecoilAutoControl = 5 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 0.15   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.6   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.13   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 1 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = -7 -- same but in sights only

SWEP.VisualRecoilDampingConst = 200  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.25 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
local EFT_ShotsToSwitchToFullAutoBehaviur = 3 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.145 -- camera roll each shot + makes camera go more up when fullautoing

-- dont touch this i guess

SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilUpMultFirstShot = 0.85
SWEP.RecoilUpMultRecoil = 1.2

SWEP.RecoilDissipationRate = 5
SWEP.RecoilAutoControlMultHipFire = 0.75
SWEP.RecoilAutoControl_DontTryToReturnBack = true
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.2

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilMultCrouch = 0.75

SWEP.VisualRecoilDampingConstMultFirstShot = 3

-- SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
-- end

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    local fullauto = math.Clamp(recamount - EFT_ShotsToSwitchToFullAutoBehaviur, 0, 3) * 0.33333333
    up = Lerp(fullauto, EFT_VisualRecoilUp_BURST_SEMI, up)
    side = Lerp(fullauto, EFT_VisualRecoilSide_BURST_SEMI, side)

    if recamount < 2 then
        if self:GetSightAmount() < 0.2 then up = 1 end -- only for visual when hipfiring
    end

    return up, side, roll, punch
end

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10


--          Heating

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = false 
SWEP.MalfunctionMeanShotsToFail = 377
SWEP.MalfunctionMeanShotsToFailMultHot = -0.2
SWEP.Overheat = true
SWEP.HeatCapacity = 160
SWEP.HeatDissipation = 2.5
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false


--          Firemodes

SWEP.RPM = 1075
-- SWEP.Firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, PoseParam = 1 }
}

--          Speed

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.5
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1


--          Other

SWEP.FreeAimRadius = 2
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1
SWEP.SwayMove = 0.5
SWEP.SwayMidAir = 10
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.25
SWEP.HoldBreathTime = 40
SWEP.RestoreBreathTime = 30
SWEP.BreathInSound = false 
SWEP.BreathOutSound = false
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.ogg"

--          Generic stats

SWEP.Ammo = "pistol"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 1 -- actual chamber (no mag)
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 4
SWEP.ReloadInSights = true
SWEP.DropMagazineSounds = {}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.53
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 180-20, 0)
SWEP.DropMagazineVelocity = Vector(0, -30, 0)
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.29, -7, 1.42),
    Ang = Angle(0, 0.0, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4.5, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, 10, -45)
SWEP.SprintPos = Vector(4, -5, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(16.5, 22, 5)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(16.5, -4.29, -5.23)


--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-13, 5.4, -6),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 0.3
SWEP.CamQCA_Mult_ADS = 0.05

SWEP.MuzzleParticle = "muzzleflash_smg"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellScale = 1
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)


SWEP.BulletBones = {
    -- [1] = "patron_in_weapon",
    -- [2] = "patron_in_mag1",
    -- [3] = "patron_in_mag2",
    -- [4] = "patron_in_mag3",
    -- [5] = "patron_in_mag4",

    [1] = "patron_in_mag1",
    [2] = "patron_in_mag2",
    [3] = "patron_in_mag3",
    [4] = "patron_in_mag4",
}

------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/uzi/"
local pathpro = "weapons/darsu_eft/uzipro/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05

SWEP.ShootSound = { pathpro .. "fire_new/uzip_outdoor_close_loop1.ogg", pathpro .. "fire_new/uzip_outdoor_close_loop2.ogg", pathpro .. "fire_new/uzip_outdoor_close_loop3.ogg", pathpro .. "fire_new/uzip_outdoor_close_loop4.ogg" }
SWEP.LayerSound = pathpro .. "fire_new/uzip_outdoor_close_tail.ogg"

SWEP.ShootSoundSilenced = { pathpro .. "fire_new/uzip_outdoor_silenced_close_loop1.ogg", pathpro .. "fire_new/uzip_outdoor_silenced_close_loop2.ogg", pathpro .. "fire_new/uzip_outdoor_silenced_close_loop3.ogg", pathpro .. "fire_new/uzip_outdoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilenced = pathpro .. "fire_new/uzip_outdoor_silenced_close_tail.ogg"

SWEP.ShootSoundIndoor = { pathpro .. "fire_new/uzip_indoor_close_loop1.ogg", pathpro .. "fire_new/uzip_indoor_close_loop2.ogg", pathpro .. "fire_new/uzip_indoor_close_loop3.ogg", pathpro .. "fire_new/uzip_indoor_close_loop4.ogg" }
SWEP.LayerSoundIndoor = pathpro .. "fire_new/uzip_indoor_close_tail.ogg"

SWEP.ShootSoundSilencedIndoor = { pathpro .. "fire_new/uzip_indoor_silenced_close_loop1.ogg", pathpro .. "fire_new/uzip_indoor_silenced_close_loop2.ogg", pathpro .. "fire_new/uzip_indoor_silenced_close_loop3.ogg", pathpro .. "fire_new/uzip_indoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilencedIndoor = pathpro .. "fire_new/uzip_indoor_silenced_close_tail.ogg"

SWEP.DistantShootSound = { pathpro .. "fire_new/uzip_outdoor_distant_loop1.ogg", pathpro .. "fire_new/uzip_outdoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilenced = { pathpro .. "fire_new/uzip_outdoor_silenced_distant_loop1.ogg", pathpro .. "fire_new/uzip_outdoor_silenced_distant_loop2.ogg" }
SWEP.DistantShootSoundIndoor = { pathpro .. "fire_new/uzip_indoor_distant_loop1.ogg", pathpro .. "fire_new/uzip_indoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { pathpro .. "fire_new/uzip_indoor_silenced_distant_loop1.ogg", pathpro .. "fire_new/uzip_indoor_silenced_distant_loop2.ogg" }


SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = ARC9EFT.ADSSMG
SWEP.ExitSightsSound = ARC9EFT.ADSSMG


SWEP.SuppressEmptySuffix = true 

------------------------- [[[           Hooks & functions            ]]] -------------------------



------------------------- [[[           Animations            ]]] -------------------------

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
        "patron_in_mag4",
        -- "patron_in_mag5"
    },
}


SWEP.Hook_TranslateAnimation = function(swep, anim)
        local elements = swep:GetElements()
    
        local ending = ""
    
        -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
        -- local rand = 0
        local nomag = false
    
        if elements["eft_uzi_mag_20"] or elements["eft_uzi_mag_20pro"] then ending = 0
        elseif elements["eft_uzi_mag_25"] or elements["eft_uzi_mag_25pro"] then ending = 1
        elseif elements["eft_uzi_mag_32"] or elements["eft_uzi_mag_32pro"]  then ending = 2
        elseif elements["eft_uzi_mag_40"] or elements["eft_uzi_mag_50"]  then ending = 2
        else nomag = true end
    
        local empty = swep:Clip1() == 0 and !nomag
        
        -- 0 looking
        -- 1 slide check  (!empty)
        -- 2 mag checking  (!nomag)
        
        if anim == "inspect" or anim == "inspect_empty" then
            swep.EFTInspectnum = swep.EFTInspectnum or 0
            if IsFirstTimePredicted() then
                swep.EFTInspectnum = swep.EFTInspectnum + 1
            end
            local rand = swep.EFTInspectnum
            if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
            
            -- if empty and rand == 0 then swep.EFTInspectnum = 1 rand = 1 end
            
            if rand == 2 and !nomag then -- mag
                ending = "_mag_" .. ending
                
                if ARC9EFTBASE and SERVER then
                    net.Start("arc9eftmagcheck")
                    net.WriteBool(false) -- accurate or not based on mag type
                    net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                    net.WriteUInt(swep:GetCapacity(), 9)
                    net.Send(swep:GetOwner())
                end
            else
                ending = rand
            end
            
            return anim .. ending
        elseif anim == "reload" then
            if ending == 2 then ending = 1 end -- meow
            return anim .. (empty and "_empty" or "") .. ending
        end
    
        if anim == "fix" then
            rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
            -- rand = 4
    
            if SERVER and ARC9EFTBASE then
                net.Start("arc9eftjam")
                net.WriteUInt(rand, 3)
                net.Send(swep:GetOwner())
            end
    
            return "jam" .. rand
        end
        
        -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
        return anim
    end
    
    local path = "weapons/darsu_eft/mp9/"
    local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
    local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
    local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}
    local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
    local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}
    
    local rst_single = {
        { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.06},
        { s = path .. "mp7_bolt_na_tebya.ogg", t = 0.9 },
        { s = path .. "mp7_bolt_ot_tebya.ogg", t = 1.27 },
        { s = randspin, t = 1.5 },
        { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 1.65},
        { s =  path .. "ak74_round_in_chamber.ogg", t = 2.35  },
        { s = "arc9_eft_shared/weap_handon.ogg", t = 2.81},
        { s = randspin, t = 2.93 },
        { s = path .. "mp7_bolt_release_from_catch.ogg", t = 3.4 },
        { s = randspin, t = 3.8 },
    }
    
    local rst_def01 = {
        { s = randspin, t = 0.05 },    
        { s =  path .. "mp7_mag_button.ogg", t = 0.6 },
        { s =  path .. "fiveseven_mag_out.ogg", t = 0.7 },
        { s = randspin, t = 1 },
        { s = pouchin, t = 1.23 },
        { s = pouchout, t = 1.6 },
        { s =  path .. "fiveseven_mag_rattle.ogg", t = 1.97 },
        { s =  path .. "fiveseven_mag_in.ogg", t = 2.08 },
        { s = randspin, t = 2.42},
    }

    local rst_def23 = {
        { s = randspin, t = 0.05 },    
        { s =  path .. "mp7_mag_button.ogg", t = 0.6 },
        { s =  path .. "fiveseven_mag_out.ogg", t = 0.7 },
        { s = randspin, t = 1 },
        { s = pouchin, t = 1.3 },
        { s = pouchout, t = 1.65 },
        { s =  path .. "fiveseven_mag_rattle.ogg", t = 2.05 },
        { s =  path .. "fiveseven_mag_in.ogg", t = 2.18 },
        { s = randspin, t = 2.57},
    }
    
    local rst_empty01 = {
        { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.16},
        { s =  path .. "mp7_mag_button.ogg", t = 0.36 },
        { s =  path .. "fiveseven_mag_out.ogg", t = 0.4 },
        { s = pouchout, t = 0.8 },
        { s = randspin, t = 0.9 },
        { s =  path .. "fiveseven_mag_rattle.ogg", t = 1.25 },
        { s =  path .. "fiveseven_mag_in.ogg", t = 1.42 },
        { s = randspin, t = 1.76 },
        { s = path .. "mp7_bolt_release_from_catch.ogg", t = 2.16 },
        { s = randspin, t = 2.53 },
        {hide = 0, t = 0},
        {hide = 1, t = 0.53},
        {hide = 0, t = 1.1}
    }

    local rst_empty23 = {
        { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.16},
        { s =  path .. "mp7_mag_button.ogg", t = 0.36 },
        { s =  path .. "fiveseven_mag_out.ogg", t = 0.4 },
        { s = randspin, t = 1.09 },
        { s = pouchout, t = 1.1 },
        { s =  path .. "fiveseven_mag_rattle.ogg", t = 1.43 },
        { s =  path .. "fiveseven_mag_in.ogg", t = 1.56 },
        { s = randspin, t = 1.97 },
        { s = path .. "mp7_bolt_release_from_catch.ogg", t = 2.38 },
        { s = randspin, t = 2.75 },
        {hide = 0, t = 0},
        {hide = 1, t = 0.53},
        {hide = 0, t = 1.1}
    }
    
    local rst_magcheck = {
        { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.1},
        { s =  path .. "mp7_mag_button.ogg", t = 0.3 },
        { s =  path .. "fiveseven_mag_out.ogg", t = 0.53 },
        { s = randspin, t = 0.7 },
        { s =  path .. "fiveseven_mag_rattle.ogg", t = 1.3 },
        { s =  path .. "fiveseven_mag_in.ogg", t = 1.53 },
        { s = randspin, t = 1.9},
    }
    local rik_magcheck = {
        { t = 0, lhik = 1 },
        { t = 0.15, lhik = 0 },
        { t = 0.82, lhik = 0 },
        { t = 0.92, lhik = 1 },
        { t = 1, lhik = 1 },
    }
    local rik_look = {
        { t = 0, lhik = 1 },
        { t = 0.2, lhik = 0 },
        { t = 0.85, lhik = 0 },
        { t = 0.95, lhik = 1 },
        { t = 1, lhik = 1 },
    }
    local rik_single = {
        { t = 0, lhik = 1 },
        { t = 0.08, lhik = 0 },
        { t = 0.75, lhik = 0 },
        { t = 0.85, lhik = 1 },
        { t = 1, lhik = 1 },
    }
    local rik_def = {
        { t = 0, lhik = 1 },
        { t = 0.16, lhik = 0 },
        { t = 0.9, lhik = 0 },
        { t = 1, lhik = 1 },
    }
    local rik_empty = {
        { t = 0, lhik = 1 },
        { t = 0.1, lhik = 0 },
        { t = 0.68, lhik = 0 },
        { t = 0.79, lhik = 1 },
        { t = 1, lhik = 1 },
    }
    local rik_ready = {
        { t = 0, lhik = 1 },
        { t = 0.001, lhik = 0 },
        { t = 0.7, lhik = 0 },
        { t = 0.92, lhik = 1 },
        { t = 1, lhik = 1 },
    }

    SWEP.Animations = {
        ["idle"] = {
            Source = "idle",
            Time = 1000, -- reset when done soundstables!!!!!!!!
        },
    
        ["ready"] = {
            Source = {"ready0", "ready1", "ready2"},
            EventTable = {
                { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
                { s = path .. "mp7_bolt_na_tebya.ogg", t = 0.65 },
                { s = path .. "mp7_bolt_ot_tebya.ogg", t = 0.91 },
            },
            IKTimeLine = rik_ready,
        },
    

        ["draw"] = {
            Source = "draw",
            EventTable = {
                { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            }
        },

        ["holster"] = {
            Source = "holster",
            EventTable = {
                { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
            }
        },
    
        ["fire"] = {
            Source = "fire",
            EventTable = {
                { s = path .. "mp7_hammer.ogg", t = 0 },
            }
        },
        ["dryfire"] = {
            Source = "fire_dry",
        },
    
        ["reload"] = {
            Source = "reload_single",
            MinProgress = 0.85,
            FireASAP = true,
            EventTable = rst_single,
            IKTimeLine = rik_single
        },
    
        ["reload0"] = {
            Source = "reload0",
            MinProgress = 0.85,
            FireASAP = true,
            EventTable = rst_def01,
            IKTimeLine = rik_def
        },
        ["reload1"] = {
            Source = "reload1",
            MinProgress = 0.85,
            FireASAP = true,
            EventTable = rst_def01,
            IKTimeLine = rik_def
        },
    
        ["reload_empty0"] = {
            Source = {"reload_empty0_0", "reload_empty0_1", "reload_empty0_2"}, 
            MinProgress = 0.85,
            FireASAP = true,
            EventTable = rst_empty01,
            IKTimeLine = rik_empty
        },
        ["reload_empty1"] = {
            Source = {"reload_empty1_0", "reload_empty1_1", "reload_empty1_2"}, 
            MinProgress = 0.85,
            FireASAP = true,
            EventTable = rst_empty01,
            IKTimeLine = rik_empty
        },
    
        ["toggle"] = {
            Source = "mod_switch",
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
        ["switchsights"] = {
            Source = "mod_switch",
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
    
    
    
        
        ["jam1"] = {
            Source = "jam_shell",
            EventTable = {
                { s = randspin, t = 0.09 },
                { s = randspin, t = 0.76 },
                { s =  path .. "pistol_jam_shell_remove3.ogg", t = 1.27 },
                { s = randspin, t = 1.63 },
                { s = path .. "p90_bolt_out_slow.ogg", t = 2 },
                { s = path .. "p90_bolt_in_slow.ogg", t = 2.35 },
                { s = "arc9_eft_shared/weap_handon.ogg", t = 2.64},
                { s = randspin, t = 2.7 },
                { s = ARC9EFT.Shells9mm, t = 1.9 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            -- EjectAt = 1.97
        },        
        
        ["jam3"] = {
            Source = "jam_hardjam",
            EventTable = {
                { s = randspin, t = 0.09 },
                { s = randspin, t = 0.76 },
                { s = randspin, t = 1.29 },

                { s = slidelockgrab, t = 1.8 },
                { s = slidelock, t = 2.3 },
                { s = randspin, t = 2.74 },
                { s = randspin, t = 3.43 },
                { s = slidelockgrab, t = 3.88 },
                -- { s = slidelock, t = 4.18 },
                { s =  path .. "mp7_bolt_na_tebya.ogg", t = 4.14 },
                -- { s =  path .. "pistol_jam_shell_remove3.ogg", t = 4.35 },
                { s =  path .. "mp7_bolt_ot_tebya.ogg", t = 4.54 },
                { s = randspin, t = 4.79 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.19, lhik = 1 },
                { t = 0.26, lhik = 0 },
                { t = 0.9, lhik = 0 },
                { t = 0.96, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            EjectAt = 4.35
        },      
        
        ["jam2"] = {
            Source = "jam_feed",
            EventTable = {
                { s = randspin, t = 0.09 },
                { s = randspin, t = 0.76 },
                { s = randspin, t = 1.04 },
                { s =  path .. "mp7_bolt_na_tebya.ogg", t = 1.71 },
                { s = slidelock, t = 2.08 },
                { s = randspin, t = 2.62 },
                { s =  path .. "pistol_jam_shell_remove3.ogg", t = 2.6 },
                { s =  path .. "mp7_bolt_ot_tebya.ogg", t = 3.69 },
                { s = "arc9_eft_shared/weap_handon.ogg", t = 4.02},
                { s = randspin, t = 4.16 },
                { s = ARC9EFT.Shells9mm, t = 3.15 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            -- EjectAt = 2.52
        },        
        
        ["jam4"] = {
            Source = "jam_softjam",
            EventTable = {
                { s = randspin, t = 0.09 },
                { s = randspin, t = 0.76 },
                { s = randspin, t = 1.27 },

                { s = slidelockgrab, t = 1.71 },
                { s = randspin, t = 2.3 },
                { s =  path .. "mp7_bolt_na_tebya.ogg", t = 2.82 },
                -- { s =  path .. "pistol_jam_shell_remove3.ogg", t = 2.88 },
                { s =  path .. "mp7_bolt_ot_tebya.ogg", t = 3.08 },
                { s = randspin, t = 3.25 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.27, lhik = 1 },
                { t = 0.36, lhik = 0 },
                { t = 0.85, lhik = 0 },
                { t = 0.95, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            EjectAt = 2.88
        },
    
        ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
            Source = "idle",
        },
    
        ["inspect1"] = {
            Source = "look",
            EventTable = {
                { s = randspin, t = 0.25 },
                { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.434 },
                { s = randspin, t = 2.64 },
            },
            IKTimeLine = rik_look
        },
        

        ["inspect_mag_0"] = {
            Source = "check_0",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },
        ["inspect_mag_1"] = {
            Source = "check_1",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },
        ["inspect_mag_2"] = {
            Source = "check_2",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },

        ["inspect0"] = {
            Source = "check_chamber",
            EventTable = {
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.02},
                { s = randspin, t = 0.28 },
                { s = path .. "p90_bolt_out_slow.ogg", t = 0.61 },
                { s = path .. "p90_bolt_in_slow.ogg", t = 1.2 },
                { s = randspin, t = 1.6 },
                -- { s = "arc9_eft_shared/weap_handon.ogg", t = 1.85},
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.17, lhik = 0 },
                { t = 0.85, lhik = 0 },
                { t = 0.98, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },

        ["firemode_1"] = {
            Source = "firemode1",
            EventTable = {
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05},
                { s = path .. "mp7_mag_button.ogg", t = 0.37 },
                -- { s = "arc9_eft_shared/weap_handon.ogg", t = 0.77},
            },
        },
        ["firemode_2"] = {
            Source = "firemode0",
            EventTable = { { s = path .. "mp7_mag_button.ogg", t = 0.27 } }
        },
    }

------------------------- [[[           Attachments            ]]] -------------------------

SWEP.AttachmentElements = {
    ["eft_uzipro_smg"] = { Bodygroups = { {1, 1} } },

    ["eft_uzipro_barrel_114pike"] = { Bodygroups = { {2, 5} } },
    ["eft_uzipro_barrel_114"] = { Bodygroups = { {2, 1} } },
    ["eft_uzipro_barrel_170"] = { Bodygroups = { {2, 2} } },
    ["eft_uzipro_barrel_210"] = { Bodygroups = { {2, 3} } },
    ["eft_uzipro_barrel_240"] = { Bodygroups = { {2, 4} } },

    ["eft_uzipro_muzzle_nut"] = { Bodygroups = { {3, 1} } },
    ["eft_uzipro_muzzle_masada"] = { Bodygroups = { {8, 1} } },

    ["eft_uzipro_stock_csm"] = { Bodygroups = { {6, 2} } },
    ["eft_uzipro_stock_a3"] = { Bodygroups = { {6, 1} } },
    ["eft_uzipro_stock_brace_unfolded"] = { Bodygroups = { {6, 5} } },
    ["eft_uzipro_stock_brace_folded"] = { Bodygroups = { {6, 6} } },
    ["eft_uzipro_stock_sbr_unfolded"] = { Bodygroups = { {6, 4} } },
    ["eft_uzipro_stock_sbr_folded"] = { Bodygroups = { {6, 7} } },
    ["eft_uzipro_stock_backplate"] = { Bodygroups = { {6, 3} } },

    ["eft_uzipro_hg_mlok"] = { Bodygroups = { {4, 1} } },
    ["eft_uzipro_hgrail"] = { Bodygroups = { {4, 2} } },

    ["eft_uzipro_dust"] = { Bodygroups = { {5, 1} } },
}

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasGas") or
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasReciever") or
        !self:GetValue("HasAmmoooooooo") then
            
            if SERVER and self.missingpartsnotifsent < CurTime() then
                self.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end
            return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasGas") or
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasReciever") or
        !self:GetValue("HasAmmoooooooo") then
            return true 
    end
end


SWEP.Attachments = {
    {
        PrintName = "Barrel",
        Category = "eft_uzipro_barrel",
        Bone = "mod_barrel",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(2, 0, 0),
        Installed = "eft_uzipro_barrel_114",
        SubAttachments = {
            {
                Installed = "eft_uzipro_muzzle_nut"
            }
        }
    },
    {
        PrintName = "Receiver",
        Category = "eft_uzipro_mount",
        Bone = "mod_reciever",
        Installed = "eft_uzipro_dust",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_9x19",
        Bone = "mod_magazine",
        Integral = "eft_ammo_9x19_pst_gzh",
        Installed = "eft_ammo_9x19_pst_gzh",
        Pos = Vector(0, -0, -2),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = {"eft_uzi_mag_pro"},
        Bone = "mod_magazine",
        Installed = "eft_uzi_mag_20pro",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Stock",
        Category = "eft_uzipro_stock",
        Bone = "mod_stock",
        Installed = "eft_uzipro_stock_backplate",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Foregrip",
        Category = {"eft_foregrip_small", "eft_uzipro_hg"},
        -- Category = {"eft_foregrip_small", "eft_uzipro_hg2"},
        RejectAttachments = {
            ["eft_foregrip_se5"] = true,
            ["eft_foregrip_se5_fde"] = true,
            ["eft_foregrip_td"] = true,
            ["eft_foregrip_cobra"] = true,
            ["eft_foregrip_afg"] = true,
            ["eft_foregrip_afg_fde"] = true,
            ["eft_foregrip_afg_fg"] = true,
            ["eft_foregrip_afg_od"] = true,
        },
        Bone = "weapon",

        Pos = Vector(0, 20, -1.35),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },  
    
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_uzipro"},
        Bone = "mod_stock",
        Pos = Vector(0, -2, -3),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

SWEP.EFTErgo = 73 -- 78 for smg
if ARC9EFTBASE then
    SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook or nil
    SWEP.HoldBreathTimeHook = ARC9EFT.ErgoBreathHook or nil
    -- SWEP.HookP_TranslateSound = ARC9EFT.ErgoAdsVolume or nil
    SWEP.SpreadHook = ARC9EFT.SpreadBonus or nil
else
    print("Dum! install arc9 eft shared!!!!!!!!!!!!!!")
end
SWEP.AimDownSightsTimeMultShooting = 4

SWEP.RicochetSounds = ARC9EFT.RicochetSounds
SWEP.ShellSounds = ARC9EFT.Shells9mm

SWEP.CustomPoseParamsHandler = function(swep, ent, iswm)
    if swep:HasElement("eft_uzipro_smg") then
        ent:SetPoseParameter("smg", 1) -- different animations for smg variant
        -- they could've just do a lhik but they made full seperate anim set bruh
    end
end

SWEP.HookP_NameChange = function(self, name)
    local elements = self:GetElements()

    if elements["eft_uzipro_smg"] then
        return "IWI UZI PRO SMG"
    else
        return "IWI UZI PRO Pistol"
    end
end

SWEP.HookP_DescriptionChange = function(self, desc)
    local elements = self:GetElements()

    if elements["eft_uzipro_smg"] then
        return [[The UZI PRO SMG is a submachine gun for law enforcement and military use. This ultra-compact submachine gun is an evolution of the full-size UZI submachine gun, ideal for concealed carry and featuring a high rate of fire. Manufactured by Israel Weapon Industries.]]
    else
        return [[The UZI PRO Pistol (UPP9S) is a fully automatic conversion of the 9x19mm Parabellum submachine gun for law enforcement and military use. This ultra-compact submachine gun is an evolution of the full-size UZI submachine gun, ideal for concealed carry and featuring a high rate of fire. Manufactured by Israel Weapon Industries.]]
    end
end
