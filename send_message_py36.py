import urllib3
import requests
import json

encoded_body = json.dumps({
"turtle_id":1,
"temperature":24.2,
"light":90.2,
"depth":15.0,
"latitude":-45.00000,
"longitude":-0.00000
    })

http = urllib3.PoolManager()

response = http.request("POST", "https://internet-of-turtles.herokuapp.com/turtle_data",
                 headers={'Content-Type': 'application/json'},
                 body=encoded_body)