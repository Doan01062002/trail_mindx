if (countdown_timer > 0)
{
	countdown_timer -= 1 / room_speed	
}

if (countdown_timer <= 0) {
    instance_create_layer(x, y, "Instances", obj_sieumaytinh);
    instance_destroy(obj_spawner); 
}