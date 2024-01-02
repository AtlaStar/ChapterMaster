
var i;i=-1;
repeat(301){i+=1;
    creation[i]=0;creation_exists[i]=-1;
    main[i]=0;main_exists[i]=-1;
    existing[i]=0;existing_exists[i]=-1;
    others[i]=0;others_exists[i]=-1;
    advisor[i]=0;advisor_exists[i]=-1;
    diplomacy_splash[i]=0;diplomacy_splash_exists[i]=-1;
    diplomacy_daemon[i]=0;diplomacy_daemon_exists[i]=-1;
    diplomacy_icon[i]=-1;diplomacy_icon_exists[i]=-1;
    menu[i]=0;menu_exists[i]=-1;
    loading[i]=0;loading_exists[i]=-1;
    postbattle[i]=0;postbattle_exists[i]=-1;
    postspace[i]=0;postspace_exists[i]=-1;
    formation[i]=0;formation_exists[i]=-1;
    popup[i]=0;popup_exists[i]=-1;
    commander[i]=0;commander_exists[i]=-1;
    planet_good[i]=0;planet_exists[i]=-1;
    attacked[i]=0;attacked_exists[i]=-1;
    force[i]=0;force_exists[i]=-1;
    purge[i]=0;purge_exists[i]=0;
    event[i]=0;event_exists[i]=0;
    title_splash[i]=0;title_splash_exists[i]=0;
    
    symbol[i]=0;symbol_exists[i]=0;
    defeat[i]=0;defeat_exists[i]=0;
    slate[i]=0;slate_exists[i]=0;
    
}

creation_good=false;
splash_good=false;
advisor_good=false;
diplomacy_splash_good=false;
diplomacy_daemon_good=false;
diplomacy_icon_good=false;
menu_good=false;
loading_good=false;
postbattle_good=false;
postspace_good=false;
formation_good=false;
popup_good=false;
commander_good=false;
planet_good=false;
attacked_good=false;
force_good=false;
purge_good=false;
event_good=false;
title_splash_good=false;

symbol_good=false;
defeat_good=false;
slate_good=false;

// End Image Replacer
// Start Text Replacer


img_dir = working_directory + "images/"
images = {};

var fhandle = file_find_first(img_dir+"*", fa_directory)
var dirs = []

while(fhandle != "" ) {
	if directory_exists(img_dir + fhandle) {
		array_push(dirs,fhandle)
	}
	fhandle = file_find_next();
}
file_find_close()

array_foreach(dirs, function(elem) {
	images[$ elem] ??= {}
	
	var filter = img_dir + elem + "/*.png";
	var fhandle = file_find_first(filter, fa_none)
	while(fhandle != "") {
		var path = img_dir + filename_path(elem + "/" + fhandle);
		var png = filename_name(fhandle) 
		var name = string_replace(png, filename_ext(fhandle), "");
		if file_exists(name + ".json") {
			var fjson = file_text_open_read(img_dir + elem + "/" + name + ".json")
			var json = json_parse(file_text_read_string(fjson))
			var source = json.path ?? path;
			images[$ elem][$ name] = sprite_add(source + png, json.frames, json.removeback, json.smooth, json.xorig, json.yorig)
		} else {
			images[$ elem][$ name]= sprite_add_ext(path + png, 1, 0, 0, false)
		}
		
		fhandle = file_find_next();
	}
	file_find_close()
})

show_debug_message(images)

scr_image("creation",-50,0,0,0,0);
scr_image("main_splash",-50,0,0,0,0);
scr_image("existing_splash",-50,0,0,0,0);
scr_image("other_splash",-50,0,0,0,0);

scr_image("loading",-50,0,0,0,0);
scr_image("title_splash",-50,0,0,0,0)
scr_image("force",-50,0,0,0,0)
scr_image("diplomacy_icon",-50,0,0,0,0);
scr_image("symbol",-50,0,0,0,0);
scr_image("diplomacy_splash",-50,0,0,0,0)
scr_image("advisor",-50,0,0,0,0)
scr_image("diplomacy_daemon",-50,0,0,0,0)
scr_image("formation",-50,0,0,0,0)
scr_image("menu",-50,0,0,0,0)
scr_image("postspace",-50,0,0,0,0)
scr_image("popup",-50,0,0,0,0)
scr_image("commander",-50,0,0,0,0)
scr_image("slate",-50,0,0,0,0)
scr_image("planet",-50,0,0,0,0)
scr_image("attacked",-50,0,0,0,0)
scr_image("purge",-50,0,0,0,0)
scr_image("event",-50,0,0,0,0)
scr_image("defeat",-50,0,0,0,0)