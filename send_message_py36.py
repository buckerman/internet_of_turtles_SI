import urllib3
import requests
import json

encoded_body = json.dumps({
"turtle_id":1,
"temperature":20.2,
"light":93.2,
"depth":10.0,
"latitude":23.00000,
"longitude":43.00000
    })

http = urllib3.PoolManager()

response = http.request("POST", "http://localhost:3000/turtle_data",
                 headers={'Content-Type': 'application/json'},
                 body=encoded_body)