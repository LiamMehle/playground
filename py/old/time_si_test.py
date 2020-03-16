import requests
import bs4 as bs

s = requests.session()
r = s.get('https://time.is/', allow_redirects=False, timeout=2)
print(r)
print(r.text)