
owner=0;
target=instance_nearest(x,y,obj_star);
loading=0;
loading_name="";
alarm[0]=1;
debug=0;

population=0;
guard=0;
pdf=0;
fortification=0;
corruption=0;
ork=0;
tau=0;
chaos=0;
torpedo=scr_item_count("Cyclonic Torpedo");

feature="";

button1="";
button2="";
button3="";
button4="";
button5="";
attack=0;
raid=0;
bombard=0;
purge=0;

player_fleet=0;
imperial_fleet=0;
mechanicus_fleet=0;
inquisitor_fleet=0;
eldar_fleet=0;
ork_fleet=0;
tau_fleet=0;
tyranid_fleet=0;
chaos_fleet=0;

en_fleet = []
//var i;i=-1;
//repeat(15){i+=1;en_fleet[i]=0;}

if (obj_controller.menu=0) then alarm[1]=1;

with obj_ini {
	array_foreach(role, function(elem, idx) {
		show_debug_message(elem)	
	})
	array_foreach(role[100], function(elem, idx) {
		if elem != ""
			show_debug_message($"{elem} is at idx: {idx}")
	})
}