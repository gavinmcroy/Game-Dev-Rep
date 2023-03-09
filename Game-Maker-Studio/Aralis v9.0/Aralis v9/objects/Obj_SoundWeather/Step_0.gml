///@description Weather Audio Controller
randomize();
//---Random Integer Generator So Lightning Will Strike Randomly While Its Raining 
if(obj_rain.weatherstate=="Raining" ){
	ran=irandom(2000);
		if(ran==1) && !audio_is_playing(snd_Thunder){
			audio_play_sound(snd_Thunder,1,0);
	}
}
//---Rain Delay So Particles Have Time to Fall towards Ground 
if(obj_rain.weatherstate=="Raining" && rainSEnable=true ){
	weatherdelay=weatherdelay+1;
			if(weatherdelay==100){
				weatherdelay=0;
				audio_play_sound(snd_rainOutside,1,1); 	
				rs=0;  
	}
}
