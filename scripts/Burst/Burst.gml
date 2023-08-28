function Burst(id){
	with (id) {
		var burst = instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_spore_mist, {color: color});
	}
}