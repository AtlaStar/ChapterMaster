function scr_alert(argument0, argument1, argument2, argument3, argument4) {

	// color / type / text /x/y

	// Quenes up one of the ALERT lines of text to be displayed by the obj_turn_end object
	// If the Y argument is >0 then the exclamation popup (obj_alert) is also created on the map



	// if (obj_turn_end.alerts>0){
	with(obj_turn_end) {
	    if (alert_type[alerts] != "-" + string(argument2)) and (argument1!="blank") and (argument0!="blank"){
	        alerts+=1;
	        alert[alerts]=1;
	        alert_color[alerts]=argument0;
	        // if (argument0="purple") then obj_turn_end.alert_color[obj_turn_end.alerts]="red";
	        alert_type[alerts]=argument1;
	        alert_text[alerts]="-"+string(argument2);
	        alert[alerts]=1;
	    }
	}
	// }

	/*
	if (instance_exists(obj_star_event)){
	    var blah, new_obj;
	    blah=0;
	    blah=instance_nearest(x,y,obj_star_event);
    
	    if (point_distance(x,y,blah.x,blah.y)>40){
	        new_obj=instance_create(x+32,y-48,obj_star_event);
	        new_obj.col=argument0;
	    }
	}
	if (!instance_exists(obj_star_event)){
	    var new_obj;
	    new_obj=instance_create(x+16,y-24,obj_star_event);
	    new_obj.col=argument0;
	}
	*/

	if (argument4>0) or (argument4<-10000){
	    var new_obj,xx,yy;
	    xx=argument3;
	    yy=argument4;
    
	    if (xx<-15000){xx+=20000;yy+=20000;}
	    if (xx<-15000){xx+=20000;yy+=20000;}
	    if (xx<-15000){xx+=20000;yy+=20000;}
	    if (xx<-15000){xx+=20000;yy+=20000;}
	    if (xx<-15000){xx+=20000;yy+=20000;}
	    if (xx<-15000){xx+=20000;yy+=20000;}
	    if (xx<-15000){xx+=20000;yy+=20000;}
	    if (xx<-15000){xx+=20000;yy+=20000;}
    
	    new_obj=instance_create(xx+16,yy-24,obj_star_event);
	    new_obj.col=argument0;
	}
}
