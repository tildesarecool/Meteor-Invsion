
if (room == rm_game) {
	//score / iGameScore
	if (!variable_instance_exists(id,iGameScore)) {
		iGameScore = 0 
		}	
	if ( iGameScore >= 1000 ) {
		audio_play_sound(snd_win, 0, 0);
		room_goto(rm_win);
	}
	
	if (!variable_instance_exists(id,iGameLives)) {
		iGameLives = 0;
	}
	
	if (iGameLives <= 0) {
		audio_play_sound(snd_lose, 0, 0);
		
		room_goto(rm_gameover);		
	}
}