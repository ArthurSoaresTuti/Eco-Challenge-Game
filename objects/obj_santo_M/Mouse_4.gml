var API_KEY = "d06a98ce19472ba94a76d6d111e16d4d"; 
var lat = -27.199952285177183;
var lon = -51.58609981677824;
var link = "https://api.openweathermap.org/data/2.5/weather?lat=" + string(lat) + "&lon=" + string(lon) + "&appid=" + API_KEY;

get = http_get(link);

