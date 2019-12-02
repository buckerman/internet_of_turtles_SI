import urllib
import requests

status = {
"turtle_id":1,
"temperature":20.2,
"light":93.2,
"depth":10.0,
"latitude":23.00000,
"longitude":43.00000
}

response = requests.post("http://localhost:3000/turtle_data", json=status)