import bs4 as bs
import requests as reqs
import time

# print('running')
# url = 'https://time.is'
# print(f'querying {url}')
# response = reqs.get(url)
# print(response)
# print(response.text)
# print('\n'*10) # I love this feature
# html = bs(response.text, 'html.parser')
# delta = html.find(id='syncH').text
# print(delta)
# 
# quit()

creds = {
	'up_ime': 'lm5027@student.uni-lj.si',
	'geslo': 'M0jegesl0',
	'potrditev': 'Vstop'
}
s = reqs.session()
print('sending GET request for https://visfs.uni-lj.si')
r = s.get('https://visfs.uni-lj.si', timeout=0.2)
print(r)
if r.response_code != 200: # not success
	print(f'failiure: {r.response_code}')
	quit()

print('waiting 1s')
time.sleep(1)

print('logging in')
r = s.post('https://visfs.uni-lj.si/prijava_kon.asp', \
	data=creds, content_type='text/html', timeout=8)

print('getting url') # unneccesary for this script
r = s.get('https://visfs.uni-lj.si/main.asp')
if r.response_code != 200:
	print(f'failiure: {r.response_code}')
	quit()

print('getting resources url')
r = s.post('port_pred_pregled.asp', timeout=8)
if r.response_code != 200:
	print(f'failiure: {r.response_code}')
	quit()

# fuck this

print(response)