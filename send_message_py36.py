import urllib3
import requests
import json

encoded_body = json.dumps({
        "message": "yes"
    })

http = urllib3.PoolManager()

response = http.request("POST", "localhost:3000/events",
                 headers={'Content-Type': 'application/json'},
                 body=encoded_body)