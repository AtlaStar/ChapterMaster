
player_fleet=target.present_fleet[1];
imperial_fleet=target.present_fleet[2];
mechanicus_fleet=target.present_fleet[3];
inquisitor_fleet=target.present_fleet[4];
eldar_fleet=target.present_fleet[6];
ork_fleet=target.present_fleet[7];
tau_fleet=target.present_fleet[8];
tyranid_fleet=target.present_fleet[9];
chaos_fleet=target.present_fleet[10];

//advanced way to clear an array with 0s
array_resize(en_fleet, 0)
//array_resize(en_fleet, 16)
/*
var i;i=-1;
repeat(15) {
	i+=1;
	en_fleet[i]=0;
}
*/
if (player_fleet>0) and (imperial_fleet+mechanicus_fleet+inquisitor_fleet+eldar_fleet+ork_fleet+tau_fleet+chaos_fleet + tyranid_fleet>0) {
    var open;
	open=0;
    
    if (imperial_fleet>0) {
		en_fleet[open++] = eFACTION.Imperium;
	}
    if (mechanicus_fleet>0) {
		en_fleet[open++] = eFACTION.Mechanicus;
	}
    if (inquisitor_fleet>0) {
		en_fleet[open++] = eFACTION.Inquisition;
	}
    if (eldar_fleet>0) {
		en_fleet[open++]= eFACTION.Eldar;
	}
    if (ork_fleet>0) {
		en_fleet[open++]= eFACTION.Ork
	}
    if (tau_fleet>0) {
		en_fleet[open++]= eFACTION.Tau;
	}
    if (tyranid_fleet>0) {
		en_fleet[open++]= eFACTION.Tyranids;
	}
    if (chaos_fleet>0) {
		en_fleet[open++]= eFACTION.Chaos;
	}
}


