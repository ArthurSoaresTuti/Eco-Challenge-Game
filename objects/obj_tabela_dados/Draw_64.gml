if (distance_to_object(obj_Person_M) <= 100){
	draw_set_font(font_data);
	draw_set_color(c_black);
		
	draw_text(1270, 228, "Temperature");
	draw_text(1555, 228, global.temperature);
	draw_text(1645, 228, "*C");
	
	draw_text(1270, 288, "Air Humidity");
	draw_text(1555, 288, global.humidity);
	draw_text(1595, 288, "%"); 
	
	draw_text(1270, 348, "Wind Speed");
	draw_text(1555, 348, global.wind_speed);
	draw_text(1620, 348, "m/s");
	
	draw_text(1270, 408, "Pressure");
	draw_text(1555, 405, global.pressure);
	draw_text(1630, 405, "hPa");
	
}
	



