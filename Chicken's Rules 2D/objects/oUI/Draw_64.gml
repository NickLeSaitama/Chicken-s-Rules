//Draw Health

draw_set_alpha(1);
var _playerHealth = global.playerHealth/4;
var _playerHealthMax = global.playerHealthMax/4;
var _playerHealthFrac = frac(_playerHealth);
_playerHealth -= _playerHealthFrac;

for (var i = 1; i <= _playerHealthMax; i++)
{
	var _imageIndex = (i > _playerHealth);
	if (i  == _playerHealth+1)
	{
		_imageIndex += (_playerHealthFrac > 0);
		_imageIndex += (_playerHealthFrac > 0.25);
		_imageIndex += (_playerHealthFrac > 0.50);
	}
	draw_sprite(sHeartUI, _imageIndex,8 + ((i-1) * 34), 8);
	
	
}

//Draw Mana

var _playerMana = global.playerMana;
var _playerManaMax = global.playerManaMax;
var _playerManaFrac = frac(_playerMana);
_playerMana -= _playerManaFrac;

for (var i = 1; i <= _playerManaMax; i++)
{
	var _imageIndex = (i > _playerMana);
	if (i  == _playerMana+1)
	{
		_imageIndex += (_playerManaFrac > 0);
		_imageIndex += (_playerManaFrac > 0.25);
		_imageIndex += (_playerManaFrac > 0.50);

	}
	draw_sprite(sManaUI, _imageIndex,8 + ((i-1) * 22), 50);
	
	
}

var _xx,_yy;

//DrawSpIcon

_xx = 8;
_yy = 78
draw_sprite(sSpUI,0,_xx,_yy);

//SpText
draw_set_color(c_black);
draw_set_font(fText);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
_xx += sprite_get_width(sSpUI) + 4;
_yy = 76.5;
var _str = string(global.playerSP) + "/" + string(global.playerSPMax);
draw_text(_xx+2,_yy,_str);
draw_text(_xx-2,_yy,_str);
draw_text(_xx,_yy+2,_str);
draw_text(_xx,_yy-2,_str);
draw_set_color(c_white);
draw_text(_xx,_yy,_str);

//DrawCoinIcon
_xx = 20 + (string_length(_str) * 16);
_yy = 78;
draw_sprite(sCoinUI,0,_xx,_yy);

//CoinText
draw_set_color(c_black);
draw_set_font(fText);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
_xx += sprite_get_width(sCoinUI) + 4;
_yy = 76.5;
var _str = string(global.playerMoney);
draw_text(_xx+2,_yy,_str);
draw_text(_xx-2,_yy,_str);
draw_text(_xx,_yy+2,_str);
draw_text(_xx,_yy-2,_str);
draw_set_color(c_white);
draw_text(_xx,_yy,_str);



if (global.inventory)
{
	if (invPage = 0)
	{
		draw_set_color(c_black )
		draw_set_alpha(0.75)
		draw_rectangle(0,0,RESOLUTION_W,RESOLUTION_H,false)
		draw_set_alpha(1.0)
		draw_set_color(c_white )
		draw_set_font(fText)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
	
		draw_text(RESOLUTION_W * 0.5,RESOLUTION_H * 0.5,"...Inventory...");
		for(var i = 0; i < array_length(invOption); i++)
		{
			var _print = "";
			if (i==invOptionSelected)
			{
				_print +="> " + invOption[i] + " <"
			}
			else
			{
				_print += invOption[i];
				draw_set_alpha(0.5)
			}
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 + 30 + (i *  20) , _print)
			draw_set_alpha(1.0)
		}		
	}
	
	if (invPage == 2)
	{
		draw_set_color(c_black );
		draw_set_alpha(0.75);
		draw_rectangle(0,0,RESOLUTION_W,RESOLUTION_H,false);
		draw_set_alpha(1.0);
		draw_set_color(c_white);
		draw_set_font(fText);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
	
		draw_text(RESOLUTION_W * 0.5,RESOLUTION_H * 0.5,"...Weapons...");
	
		for(var i = 0; i < array_length(global.playerWeaponUnlocked); i++)
		{
			if (global.playerWeaponEquipped = i) draw_set_alpha(1.0);else draw_set_alpha(0.5)
			var _print = "";
			var _weapon = "";
			switch(i)
			{
				case 0:
					_weapon +="None";break;
				case 1:
					_weapon +="Axe";break;
				case 2:
					_weapon +="Magic Staff";break;
				case 3:
					_weapon +="Rusty Sword";break;
			}
			if (i == invOptionSelected)
			{
				if global.playerWeaponUnlocked[i] = true
				{
					_print +="> " + _weapon + " <";
				}else _print +="> " + "-" + " <";
			}
			else
			{
				if global.playerWeaponUnlocked[i] = true
				{
					_print +=_weapon;
				}else _print +="-";
			}
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 + 30 + (i *  20) , _print)
			draw_set_alpha(1.0)
		}	
		draw_set_color(c_white);
		if (array_length(global.playerWeaponUnlocked) == invOptionSelected)
		{
			_print = "> " + "Back" + " <";
		} else _print = "Back";
		draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 + 30 + (array_length(global.playerWeaponUnlocked) *  20) , _print)
	}
	
	if (invPage == 3)
	{
		draw_set_color(c_black );
		draw_set_alpha(0.75);
		draw_rectangle(0,0,RESOLUTION_W,RESOLUTION_H,false);
		draw_set_alpha(1.0);
		draw_set_color(c_white);
		draw_set_font(fText);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
	
		draw_text(RESOLUTION_W * 0.5,RESOLUTION_H * 0.5,"...Armors...");
	
		for(var i = 0; i < array_length(global.playerArtifactUnlocked); i++)
		{
			if (global.playerArtifactEquipped[0] = i) draw_set_alpha(1.0);else draw_set_alpha(0.5)
			var _print = "";
			var _armor = "";
			switch(i)
			{
				case 0:
					_armor +="None";break;
				case 1:
					_armor +="Hood";break;
				case 2:
					_armor +="Gnome Hat";break;
				default:
				break;
			}
			if (i == invOptionSelected)
			{
				if global.playerArtifactUnlocked[i] = true
				{
					_print +="> " + _armor + " <";
				}else _print +="> " + "-" + " <";
			}
			else
			{
				if global.playerArtifactUnlocked[i] = true
				{
					_print +=_armor;
				}else _print +="-";
			}
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 + 30 + (i *  20) , _print)
			draw_set_alpha(1.0)
		}	
		draw_set_color(c_white);
		if (array_length(global.playerArtifactUnlocked) == invOptionSelected)
		{
			_print = "> " + "Back" + " <";
		} else _print = "Back";
		draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 + 30 + (array_length(global.playerArtifactUnlocked) *  20) , _print)
	}
}

//Draw pause menu

if (global.gamePaused)
{
	draw_set_color(c_black )
	draw_set_alpha(0.75)
	draw_rectangle(0,0,RESOLUTION_W,RESOLUTION_H,false)
	draw_set_alpha(1.0)
	draw_set_color(c_white )
	draw_set_font(fText)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	draw_text(RESOLUTION_W * 0.5,RESOLUTION_H * 0.5,"...Game Paused...");
	for(var i = 0; i < array_length(pauseOption); i++)
	{
		var _print = "";
		if (i==pauseOptionSelected)
		{
			_print +="> " + pauseOption[i] + " <"
		}
		else
		{
			_print += pauseOption[i];
			draw_set_alpha(0.5)
		}
		draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 + 30 + (i *  20) , _print)
		draw_set_alpha(1.0)
	}	
}

//Display Zone Name
if (roomName != -1)
{
	show_debug_message("display");
	draw_set_color(c_white);
	draw_set_font(fTitle);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_alpha(ZoneVisible);
	draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 - 30, roomName);
	draw_set_font(fText);
	draw_text(RESOLUTION_W * 0.5, (RESOLUTION_H * 0.5) + 20, desc)
	draw_set_alpha(1);
}

