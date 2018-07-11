/******************************************************************************
UT3Goliath

Creation date: 2008-05-02 20:50
Last change: $Id$
Copyright (c) 2008, Wormbo
Copyright (c) 2012, 100GPing100 (visuals + fixed sounds)
******************************************************************************/

class UT3Goliath extends ONSHoverTank;


//=====================
// @100GPing100
#exec obj load file=..\Animations\UT3GoliathAnims.ukx
#exec obj load file=..\Textures\UT3GoliathTex.utx

#exec audio import group=Sounds file=..\Sounds\UT3Goliath\Engine.wav
#exec audio import group=Sounds file=..\Sounds\UT3Goliath\EngineStart.wav
#exec audio import group=Sounds file=..\Sounds\UT3Goliath\EngineStop.wav
#exec audio import group=Sounds file=..\Sounds\UT3Goliath\Impact.wav
#exec audio import group=Sounds file=..\Sounds\UT3Goliath\Explode.wav
// @100GPing100
//=========END=========



//=============================================================================
// Default values
//=============================================================================

defaultproperties
{
	//===============
	// @100GPing100
	Mesh = SkeletalMesh'UT3GoliathAnims.Goliath';
	RedSkin = Shader'UT3GoliathTex.Goliath.GoliathSkin';
	BlueSkin = Shader'UT3GoliathTex.Goliath.GoliathSkinBlue';
	
	Skins(1) = Shader'UT3GoliathTex.GoliathWheels.GoliathWheelsSkin';
	Skins(2) = Shader'UT3GoliathTex.GoliathWheels.GoliathWheelsSkin';
	
	DriverWeapons(0)=(WeaponClass=class'UT3GoliathCannon',WeaponBone=Chassis)
	PassengerWeapons(0)=(WeaponPawnClass=class'UT3GoliathTurretPawn',WeaponBone=Object10)
	
	IdleSound = Sound'UT3GoliathBeta1.Sounds.Engine';
	StartUpSound = Sound'UT3GoliathBeta1.Sounds.EngineStart';
	ShutDownSound = Sound'UT3GoliathBeta1.Sounds.EngineStop';
	
	ImpactDamageSounds(0) = Sound'UT3GoliathBeta1.Sounds.Impact';
	ImpactDamageSounds(1) = Sound'UT3GoliathBeta1.Sounds.Impact';
	ImpactDamageSounds(2) = Sound'UT3GoliathBeta1.Sounds.Impact';
	ImpactDamageSounds(3) = Sound'UT3GoliathBeta1.Sounds.Impact';
	ImpactDamageSounds(4) = Sound'UT3GoliathBeta1.Sounds.Impact';
	ImpactDamageSounds(5) = Sound'UT3GoliathBeta1.Sounds.Impact';
	ImpactDamageSounds(6) = Sound'UT3GoliathBeta1.Sounds.Impact';
	ExplosionSounds(0) = Sound'UT3GoliathBeta1.Sounds.Explode';
	ExplosionSounds(1) = Sound'UT3GoliathBeta1.Sounds.Explode';
	ExplosionSounds(2) = Sound'UT3GoliathBeta1.Sounds.Explode';
	ExplosionSounds(3) = Sound'UT3GoliathBeta1.Sounds.Explode';
	ExplosionSounds(4) = Sound'UT3GoliathBeta1.Sounds.Explode';
	// @100GPing100
	//======END======
	
	
	VehicleNameString = "UT3 Goliath"
	MaxGroundSpeed=600.0
	GroundSpeed=500
	SoundVolume=255
	MaxThrust=200.000000//GE: was 65, maybe the tank is too fast now?
}
