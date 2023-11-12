if (ds_map_find_value(async_load, "id") == get) {

	if (ds_map_find_value(async_load, "status") == 0) {
		
		global.response_string = ds_map_find_value(async_load, "result");
		global.resultMap = json_decode(global.response_string);
		global.humidity  = global.resultMap[? "main"][? "humidity"];
		global.temperature = global.resultMap[? "main"][? "temp"] - 273;
		global.wind_speed = global.resultMap[? "wind"][? "speed"];
		global.pressure = global.resultMap[? "main"][? "pressure"];
		
		//show_message(global.response_string);
		//show_message(global.pressure);
			
		room_goto(Room5);
	}

}













