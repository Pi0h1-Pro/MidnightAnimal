if (state < 3)
	exit;
if (sprite_index == sprBodyguardKnockedOut)
	exit;
path_end();
sprite_index = sprBodyguardKnockedOut;
speed = 1.5;
friction = 0.1;
direction = other.direction;
global.shake = 10;
sound_play(sndHit);
sound_play(sndHitWall);
scrBlood(x, y);
with (other)
	move_bounce_all(0);

