// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function humidityData(){
	
	// -----LOCALIZAÇÃO-----
	var API_KEY = "d06a98ce19472ba94a76d6d111e16d4d"; // Esta chave de API será excluída posteriormente, você pode usá-la agora para testar a aquisição de dados
	var lat = -23.453761327559913;
	var lon = -46.53051244930775;
	var link = "https://api.openweathermap.org/data/2.5/weather?lat=" + string(lat) + "&lon=" + string(lon) + "&appid=" + API_KEY;
	// ------------------------
	
	// Realiza a solicitação HTTP
	var request = http_get(link);
	
	if (request != -1) {
	    // A solicitação foi bem-sucedida
	    var request_json = json_decode(http_result());
	    var umidade = request_json[? "main"][? "humidity"];
	    // Faça algo com a umidade (por exemplo, exiba-a)
	    show_message("Umidade: " + string(umidade));
	} else {
	    // A solicitação falhou
	    show_message("Falha na solicitação HTTP");
	}
}