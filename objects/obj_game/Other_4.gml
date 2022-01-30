// GameMaker Language Preview (Read-Only)

// If Variable
if(room == rm_game)
{
	// If Audio Is Playing
	var l54CD2F43_0 = msc_song;
	if (audio_is_playing(l54CD2F43_0))
	{
		// Stop Audio
		audio_stop_sound(msc_song);
	}

	// Play Audio
	audio_play_sound(msc_song, 0, 1);

	// Set Alarm Countdown
	alarm_set(0, 60);

	// Repeat
	repeat(6)
	{
		// Choose
		var choice = choose(0, 1);
	
		// If Variable
		if(choice == 0)
		{
			// Get Random Number
			xx = floor(random_range(0, room_width*0.3 + 1));
		}
	
		// Else
		else
		{
			// Get Random Number
			xx = floor(random_range(room_width*.07, room_width + 1));
		}
	
		// Choose
		var choice = choose(0, 1);
	
		// If Variable
		if(choice == 0)
		{
			// Get Random Number
			yy = floor(random_range(0, room_height*0.3 + 1));
		}
	
		// Else
		else
		{
			// Get Random Number
			xx = floor(random_range(room_height*0.7, room_height + 1));
		}
	
		// Create Instance
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
}