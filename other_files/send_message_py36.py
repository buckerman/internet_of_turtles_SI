import urllib3
import requests
import json

encoded_body = json.dumps({
"turtle_id":1,
"temperature":24.2,
"light":90.2,
"depth":15.0,
"latitude":-20.00000,
"longitude":-50.00000
    })
login_data = json.dumps({
"email":"arthur.bucker@usp.br",
"password":"123456",
"commit":"login"})

http = urllib3.PoolManager()
# https://internet-of-turtles.herokuapp.com/turtle_data
response = http.request("POST", "http://localhost:3000/turtle_data",
                 headers={'Content-Type': 'application/json'},
                 body=encoded_body)
print(response.status)
#print("---------data--------")
#print(response.data.decode('utf-8'))
print("-------headers--------")
print(response.headers)

