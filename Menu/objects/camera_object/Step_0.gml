/// @description Camera update

//Atualizar posição da camera
if (instance_exists(follow))
{
	x_cam = follow.x;
	y_cam = follow.y;
}

x += (x_cam - x) / 25;
y += (y_cam - y) / 25;

//Manter o centro da camera dentro do room
x = clamp(x, view_width_half + shake_buffer, room_width - view_width_half - shake_buffer);
y = clamp(y, view_height_half + shake_buffer, room_height - view_height_half - shake_buffer);

//Screen Shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain-((1 / shake_length) * shake_magnitude));

//Atualizar posição da camera
camera_set_view_pos(cam, x-view_width_half, y-view_height_half);

