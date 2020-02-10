/// @description Camera setup

cam = view_camera[0];
follow = player_object;
view_width_half = camera_get_view_width(cam) / 2;
view_height_half = camera_get_view_height(cam) / 2;
x_cam = xstart;
y_cam = ystart;

//Screen Shake effect 
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
shake_buffer = 32