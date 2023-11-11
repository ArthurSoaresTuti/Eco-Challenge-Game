if (ds_map_find_value(async_load, "id") == get) {

	if (ds_map_find_value(async_load, "status") == 0) {
		
		var response_string = ds_map_find_value(async_load, "result");
		var resultMap = json_decode(response_string);
		var humidity  = resultMap[? "main"][? "humidity"];
		
		show_message(response_string);
		show_message(humidity);
			
		
	}

}