/// @description Your text here
seconds += time_increment;
minutes = seconds/60;
hours = minutes/60;

if(draw_daylight){
	
	var darks, colors, pstart, pend;
	
	if (hours > phase.sunrise and hours <= phase.daytime){
		darks	= [max_darkness, 0.2];
		colors  = [merge_color(c_black, c_navy, 0.3), c_orange];
		pstart = phase.sunrise;
		pend = phase.daytime;
	} else if (hours > phase.daytime and hours <= phase.sunset){
		darks	= [0.2, 0, 0, 0, 0.2];
		colors  = [c_orange, c_orange, c_white, c_orange, c_orange];
		pstart = phase.daytime;
		pend = phase.sunset;
	} else if (hours > phase.sunset and hours <= phase.nighttime){
		darks	= [0.2, max_darkness];
		colors  = [c_orange, c_navy, merge_color(c_black, c_navy, 0.3)];
		pstart = phase.sunset;
		pend = phase.nighttime;
	} else {
		darks	= [max_darkness];
		colors  = [merge_color(c_black, c_navy, 0.3)];
		pstart = phase.nighttime;
		pend = phase.sunrise;
	}
	//Color
	if (pstart == phase.nighttime){ light_color = colors[0]; }
	else {
		var cc = ((hours - pstart) / (pend - pstart))*(array_length_1d(colors)-1);
		var c1 = colors[floor(cc)];
		var c2 = colors[ceil(cc)];
	
		light_color = merge_color(c1, c2, cc-floor(cc));
	}
	//Darkness
	if (pstart == phase.nighttime){ darkness = darks[0]; }
	else {
		var dd = ((hours - pstart) / (pend - pstart))*(array_length_1d(darks)-1);
		var d1 = darks[floor(dd)];
		var d2 = darks[ceil(dd)];
	
		darkness = lerp(d1, d2, dd-floor(dd));
	}
}

if(day==1){


}




if(hours >= 24){
	seconds = 0;
	day=day + 1;
	if(day>7){
				
	}
	
	if(day > 30){
		day = 1;
		month=month+1;
	}
		if(month>11){
		month=0
		year=year+1
		}
		if(month=0 || month =1 || month= 2){
		season="Winter";
		}
		if(month=3|| month=4 || month=5){
			season= "Spring";
		}
		if(month=6 || month=7 || month=8){
		season = "Summer";	
		}
		if(month=9 || month=10 ||month=11){
		season="Fall"; 	
		}
}	
	

