// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShowText(tstring,seconds){
	with obj_text {
		active = true
		texty = 528
		text = tstring
		alarm[0] = seconds * 60	
	}
}