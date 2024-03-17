//Initialize 
randomize();

global.gameSaveSlot = 1;
global.volume = 0.5;
audio_master_gain(global.volume);

global.gamePaused = false;
global.inventory = false;

//System
global.textspeed = .45;
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetRespawn = rForest;
global.targetDirection = 0;

//Stat
global.playerMoney = 0;
global.playerGelatine = 0;
global.playerHealthMax = 12;
global.playerHealth = global.playerHealthMax;
global.playerSP = 0;
global.playerSPMax = 10;
global.playerLevel = 0;
global.playerManaMax = 4;
global.playerMana = global.playerManaMax;

global.playerStrength = 0;
global.playerMagic = 0;
global.playerLuck = 0;

//Weapon
global.playerWeaponEquipped = WEAPON.SPEAR;
global.playerWeaponUnlocked = array_create(WEAPON.TYPE_COUNT, false);
global.playerWeaponUnlocked[WEAPON.SWORD] = true;

//Spell
//global.playerSpellEquipped = [SPELL.FIRE_BALL, SPELL.HEAL];
//global.playerSpellUnlocked = array_create(SPELL.TYPE_COUNT, false);
//global.playerSpellUnlocked[SPELL.NONE] = true;
//global.playerSpellUnlocked[SPELL.FIRE_BALL] = true;
//global.playerSpellUnlocked[SPELL.HEAL] = true;

////Artifact
global.playerArtifactEquipped = [ARTIFACT.HELMET_OF_THE_NAMELESS_KNIGHT, ARTIFACT.NONE];
global.playerArtifactUnlocked = array_create(ARTIFACT.TYPE_COUNT, false);
global.playerArtifactUnlocked[ARTIFACT.NONE] = true;
global.playerArtifactUnlocked[ARTIFACT.HELMET_OF_THE_NAMELESS_KNIGHT] = true;

//Quest
//global.questStatus = ds_map_create();
//global.questStatus[? "BillQuest"] = 0;

global.iCamera = instance_create_layer(0,0,layer,oCamera);
global.iUI = instance_create_layer(0,0,layer,oUI);

audio_play_sound(Music1,1,true);
//surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);