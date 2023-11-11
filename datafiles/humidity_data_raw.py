import requests


#-----LOCATION INFORMATION-----
API_KEY = 'd06a98ce19472ba94a76d6d111e16d4d' #This api key will be deleted later, you can use it now to test data acquisition
#city = 'guarulhos'
lat = -23.453761327559913
lon = -46.53051244930775
link = f'https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API_KEY}'
#------------------------------

request = requests.get(link)
request_json = request.json()
umidade = request_json['main']['humidity']
print(umidade)


