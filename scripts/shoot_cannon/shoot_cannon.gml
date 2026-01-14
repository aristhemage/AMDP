function shoot_cannon(){
	//No breaks because the switch falls down	
	switch(upgrades.path_B.level){
		case 4: 
		case 3:
			instance_create_depth(x + lengthdir_x(36, image_angle + 160) ,y + lengthdir_y(36, image_angle + 160) ,1,obj_OTOD_cannon_ball,{direction: image_angle + 160, spd: spd, damage: damage, pierce: pierce, frag: upgrades.path_B.level});
		case 2:
			instance_create_depth(x + lengthdir_x(36, image_angle + 210) ,y + lengthdir_y(36, image_angle + 210) ,1,obj_OTOD_cannon_ball,{direction: image_angle + 200, spd: spd, damage: damage, pierce: pierce, frag: upgrades.path_B.level});
		case 1:
			instance_create_depth(x - lengthdir_x(36, image_angle) ,y - lengthdir_y(36, image_angle) ,1,obj_OTOD_cannon_ball,{direction: image_angle + 180, spd: spd, damage: damage, pierce: pierce, frag: upgrades.path_B.level});
		case 0:
			instance_create_depth(x + lengthdir_x(36, image_angle) ,y + lengthdir_y(36, image_angle) ,1,obj_OTOD_cannon_ball,{direction: image_angle, spd: spd, damage: damage, pierce: pierce, frag: upgrades.path_B.level});
		break;
		}
	//Super upgrade
	if(superUpgradeBought){
		var chance = irandom(99);
		if(chance <= 25){
			for(var i = 0; i < 18; i++){
				instance_create_depth(x + lengthdir_x(36, image_angle+ 260 - i*10) ,y + lengthdir_y(36, image_angle+ 260 - i*10) ,1,obj_OTOD_cannon_ball,{direction: image_angle + 260 - i*10, spd: spd, damage: damage, pierce: pierce, frag: upgrades.path_B.level});	
			}
		}
	}
}