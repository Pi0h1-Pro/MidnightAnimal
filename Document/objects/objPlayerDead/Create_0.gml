if (instance_exists(mnPhone))
{
	if (mnPhone.active == 1)
		mnPhone.active = 0;
}

objEffector.whitealpha = 1;
instance_create(x, y, objDrawRestart);
save_data();

