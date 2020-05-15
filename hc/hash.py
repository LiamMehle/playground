import hashlib
with open('wordlist', 'r') as wordlist:
    with open('hashlist', 'w') as hashlist:
        for line in wordlist.readlines():
            line = line[0:-1]
            hash_digest = hashlib.sha512(line.encode()).hexdigest()
            hashlist.write(hash_digest)
            print(f'{line} = {hash_digest}')
            hashlist.write('\n')
