// Controlar o menu

//Entrada do GUI
menu_x += (menu_x_target - menu_x) / menu_speed; 

//Controlos
if (menu_control)
{
	if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items)
		{
			menu_cursor = 0;
		}
	}
	if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")))
	{
		menu_cursor--;
		if (menu_cursor < 0)
		{
			menu_cursor = menu_items - 1;
		}
	}
	if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space))
	{
		menu_x_target = gui_width + 300;
		menu_value = menu_cursor;
		ScreenShake(10,60);
		menu_control = false;
	}
}

if (menu_x > gui_width + 150) and (menu_value != -1)
{
	switch(menu_value)
	{
		//case 2: default: SlideTransition(TRANS_MODE.NEXT); break;
		case 0: game_end(); break
		
	}
}











