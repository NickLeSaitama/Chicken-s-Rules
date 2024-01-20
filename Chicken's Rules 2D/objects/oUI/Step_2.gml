
//if (room == rTitle) visible = false; else visible = true;

if (global.inventory)
{

	keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	invOptionSelected += (keyDown - keyUp);
	if (keyDown - keyUp != 0) audio_play_sound(sndChangeSelect,5,false);
	
	if (invPage = 2)
	{
		if (invOptionSelected > array_length(global.playerWeaponUnlocked)) invOptionSelected = 0;
		if (invOptionSelected < 0) invOptionSelected = array_length(global.playerWeaponUnlocked); 
	
		keyActivate = keyboard_check_pressed(ord("E"));
		keyActivate2 = keyboard_check_pressed(vk_space);
		if ((keyActivate) or (keyActivate2))
		{
			if (invOptionSelected == array_length(global.playerWeaponUnlocked)) 
			{
				invPage = 0;
				invOptionSelected = 0;
			}
			else if global.playerWeaponUnlocked[invOptionSelected] = true
			{
				PlayerWeaponEquip(invOptionSelected);
			}
		}
	}		
	
	if (invPage = 3)
	{
		if (invOptionSelected > array_length(global.playerArtifactUnlocked)) invOptionSelected = 0;
		if (invOptionSelected < 0) invOptionSelected = array_length(global.playerArtifactUnlocked); 
	
		keyActivate = keyboard_check_pressed(ord("E"));
		keyActivate2 = keyboard_check_pressed(vk_space);
		if (keyActivate) or (keyActivate2)
		{
			if invOptionSelected == array_length(global.playerArtifactUnlocked) 
			{
				invPage = 0;
				invOptionSelected = 0;
			}
			else if global.playerArtifactUnlocked[invOptionSelected] = true
			{
				PlayerArtifactEquip(invOptionSelected, -1);
			}
		}
	}		
	
	if (invPage = 0)
	{
		if (invOptionSelected >= array_length(invOption)) invOptionSelected = 0;
		if (invOptionSelected < 0) invOptionSelected = array_length(invOption) -1; 
	
		keyActivate = keyboard_check_pressed(ord("E"));
		keyActivate2 = keyboard_check_pressed(vk_space);
		if (keyActivate) or (keyActivate2)
		{
			switch (invOptionSelected)
			{
				case 0: break;
			
				case 1: invPage = 2; invOptionSelected = 0; break;
				
				case 2: invPage = 3; invOptionSelected = 0; break;
			
				case 3:
				{
					global.inventory = !global.inventory;
	
					if (global.inventory)
					{
						with (all)
						{
							gamePausedImageSpeed = image_speed;
							image_speed = 0;
						}
					}
					else
					{
						with (all)
						{
							image_speed = gamePausedImageSpeed;
						}
					}
				}break;
			}
		}
	}
	
} else invPage = 0;

if (global.gamePaused)
{
	keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	pauseOptionSelected += (keyDown - keyUp);
	if (pauseOptionSelected >= array_length(pauseOption)) pauseOptionSelected = 0;
	if (pauseOptionSelected < 0) pauseOptionSelected = array_length(pauseOption) -1; 
	
	keyActivate = keyboard_check_pressed(ord("E"));
	keyActivate2 = keyboard_check_pressed(vk_space);
	if (keyActivate) or (keyActivate2)
	{
		switch (pauseOptionSelected)
		{
			case 0: //Continue
			{
				global.gamePaused = !global.gamePaused;
	
				if (global.gamePaused)
				{
					with (all)
					{
						gamePausedImageSpeed = image_speed;
						image_speed = 0;
					}
				}
				else
				{
					with (all)
					{
						image_speed = gamePausedImageSpeed;
					}
				}
			}break;
			
			case 1: //Save and Quit
			{
				with (oGame) instance_destroy();
				SaveGame();
				game_restart();
							
			}break;
			
			case 2:
			{
				SaveGame();
				game_end();
				//goto main menu
			}break;
			
		}
	}
}
else pauseOptionSelected = 0;

//Display Zone Name

timer --;
if (timer <= 0) ZoneVisible -= 0.01


