
if (room == rm_game) {
	//score
	if (!variable_instance_exists(id,score)) {
		score = 0 
		}	
	if ( score >= 1000 ) {
		audio_play_sound(snd_win, 0, 0);
		room_goto(rm_win);
	}
	
	if (!variable_instance_exists(id,lives)) {
		lives = 0;
	}
	
	if (lives <= 0) {
		audio_play_sound(snd_lose, 0, 0);
		
		room_goto(rm_gameover);		
	}
}