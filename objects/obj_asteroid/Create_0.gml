// choose

sprite_index = choose(spr_asteroid_small, spr_asteroid_med, spr_asteroid_huge);

// round off and find first random number
direction = floor(random_range(0,359 + 1));

image_angle = floor(random_range(0, 359 + 1));

// set speed
speed = 1;