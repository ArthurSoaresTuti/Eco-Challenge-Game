if (ds_map_find_value(async_load, "id") == get) {

	if (ds_map_find_value(async_load, "status") == 0) {
		
		global.response_string = ds_map_find_value(async_load, "result");
		global.resultMap = json_decode(global.response_string);
		global.humidity  = global.resultMap[? "main"][? "humidity"];
		global.temperature = global.resultMap[? "main"][? "temp"] - 273;
		
		
		show_message(global.response_string);
		show_message(global.temperature);
				
			
		room_goto(Room6);
	}

}













