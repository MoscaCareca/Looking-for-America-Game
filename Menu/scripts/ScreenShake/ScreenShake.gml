///@desc ScreenShake(magnitude, frames)
///@arg Magnitude define o alcance do ScreenShake (raio em px)
///@arg Frames define a duração do ScreenShake em frames (60 = 1s a 60fps)

with (camera_object)
{
	if (argument0 > shake_remain)
	{
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}
}