audio_play_sound(snd_zap,0,false);
var newBullet = instance_create_layer(x + 0, y + 0,"Instances", obj_bullet);
newBullet.direction = image_angle;
