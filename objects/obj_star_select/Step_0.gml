

var selecting_planet = obj_controller.selecting_planet

var options = [];

button1 =""
button2 =""
button3 =""
button4 =""
button5 =""

if (instance_exists(target)){
    if (target.craftworld=1) then selecting_planet = 1;
    if (target.space_hulk=1) then selecting_planet = 1;
    x=target.x;
	y=target.y;
    
    // Buttons that are available
    var is_enemy=false;
	
    if (selecting_planet>0){
		
		var p_owner = target.p_owner[selecting_planet]
		var f_status = obj_controller.faction_status[p_owner]
		var planet_upgrades = target.p_upgrades[selecting_planet];
		var forces = scr_get_np_forces(target, selecting_planet)
		var is_p_fleet = target.present_fleet[eFACTION.Player] > 0;
		var is_dead = target.p_type[selecting_planet]=="Dead"
		is_enemy = !scr_is_planet_owned_by_allies(target, selecting_planet) || f_status == "War"
		if (forces) {
	        if is_p_fleet and !is_dead {
	            if (is_enemy && target.p_player[selecting_planet]>0) {
					array_push(options, "Attack")
	                //button1="Attack";
					array_push(options, "Purge")
	                //button2="Purge";
	            }

	        } else if(target.p_type[selecting_planet]!="Dead") {
				
				//button1="Attack";
				array_push(options, "Raid")
				//button2="Raid";
				array_push(options, is_enemy? "Bombard" : "Purge")
				//button3 = is_enemy? "Bombard" : "Purge";

	            if (torpedo>0){
	                var pfleet=instance_nearest(x,y,obj_p_fleet);
					var tx = target.x;
					var ty = target.y
					with(pfleet) {
		                if (point_distance(x,y,tx,ty)<=40) and (action="") {
		                    if (capital_number+frigate_number>0) {
								//other.button4="Cyclonic Torpedo";
								array_push(options, "Cyclonic Torpedo")
							}
		                }
					}
	            }
	        }     
	        /*
	        var pp;pp=obj_controller.selecting_planet;
	        if (target.p_orks[pp]+target.p_chaos[pp]+target.p_traitors[pp]+target.p_eldar[pp]+target.p_tau[pp]+target.p_tyranids[pp]>0) or (target.p_owner[pp]=8){
	            if (button1="Purge") and (target.present_fleet[1]>0) then button1="Bombard";
	            if (button2="Purge") and (target.present_fleet[1]>0) then button2="Bombard";
	            if (button3="Purge") and (target.present_fleet[1]>0) then button3="Bombard";
	            if (button4="Purge") and (target.present_fleet[1]>0) then button4="Bombard";
	        }
	        */
		}

	    if (obj_controller.recruiting_worlds_bought>0) and !is_enemy {
	        if (planet_feature_bool(target.p_feature[selecting_planet], P_features.Recruiting_World)==0)
			and (target.p_type[selecting_planet] != "Dead")
			and (target.space_hulk == 0) {
				array_push(options, "+Recruiting")
	            button4="+Recruiting";
	        }
	    }

	    if (target.space_hulk=1) {
	        if (target.present_fleet[eFACTION.Player]>0) {
	            button1="Raid";
				button2="Bombard";
				button3="";
				button4="";
	        }
	    }
		
	    if ((target.p_type[selecting_planet]=="Dead") or (array_length(target.p_upgrades[selecting_planet])>0)) 
		and (scr_does_planet_have_player_forces(target, selecting_planet)) {
	        if (array_length(target.p_feature[selecting_planet])==0) or (array_length(planet_upgrades)>0){

	            if (planet_feature_bool(planet_upgrades, P_features.Secret_Base)){
	                //button1="Base";
					array_push(options, "Base")
	            } else if (planet_feature_bool(planet_upgrades, P_features.Arsenal)){
	                //button1="Arsenal";
					array_push(options, "Arsenal")
	            } else if (planet_feature_bool(planet_upgrades, P_features.Gene_Vault)){
	                //button1="Gene-Vault";
					array_push(options, "Gene-Vault")
	            } else if (array_length(target.p_upgrades[selecting_planet])==0){
	                //button1="Build";
					array_push(options, "Build")
	            }
				/*
	            if (array_contains(["Build","Gene-Vault","Arsenal","Base"],button1)){
	                button2="";
	                button3="";
	                button4="";
	                button5="";
	            }*/
	        }
	    }
    }
}

array_foreach(options, function(elem, idx) {
	self[$ "button" + string(idx + 1)] = elem;	
})



if (obj_controller.popup<3) and (loading=0){
    obj_controller.sel_system_x=0;
    obj_controller.sel_system_y=0;
    obj_controller.selecting_planet=0;
	
	instance_destroy();
}



if (loading=1){
    var xx, yy, temp1, dist;
    xx=__view_get( e__VW.XView, 0 )+0;
    yy=__view_get( e__VW.YView, 0 )+0;
    dist=999;
    
    obj_controller.selecting_planet=0;
    button1="";button2="";button3="";button4="";

    if (instance_exists(target)){
        if (target.space_hulk=1) then exit;
    }
    
	//41 pixels between each option
	
	if obj_controller.cooldown <=0 {
		
	    if (target.planets>=1) {
	        dist=point_distance(xx+159,yy+287,mouse_x,mouse_y);
	        if (dist<=22) then obj_controller.selecting_planet=1;
	    }
	    if (target.planets>=2) {
	        dist=point_distance(xx+200,yy+287,mouse_x,mouse_y);   
	        if (dist<=22) then obj_controller.selecting_planet=2; 
	    }
	    if (target.planets>=3) {
	        dist=point_distance(xx+241,yy+287,mouse_x,mouse_y);   
	        if (dist<=22) then obj_controller.selecting_planet=3; 
	    }
	    if (target.planets>=4) {
	        dist=point_distance(xx+282,yy+287,mouse_x,mouse_y);   
	        if (dist<=22) then obj_controller.selecting_planet=4; 
	    }
	}
    if (obj_controller.menu=1 && obj_controller.managing>0 && obj_controller.view_squad && obj_controller.selecting_planet>0){
        var current_squad=obj_ini.squads[obj_controller.company_squads[obj_controller.cur_squad]];
		
        current_squad.set_location(loading_name, 0, obj_controller.selecting_planet);
		
        current_squad.assignment = {
            type:"garrison",
            location: target.name,
            ident: obj_controller.selecting_planet,
        };
        var operation_data = {
            type: "squad", 
            reference: obj_controller.company_squads[obj_controller.cur_squad],
            job: "garrison",
        };
        array_push(target.p_operatives[obj_controller.selecting_planet],operation_data)
    }
}

obj_controller.selecting_planet = selecting_planet
/* */
/*  */
