income = []
tax    = []
ratio  = []

with open('./tax', 'r') as f:
	# read file
	data = f.read()

	#split into lines
	for line_number, line in enumerate(data.split('\n')):

		# format/strip
		line = line.split('-')
		for key, value in enumerate(line):
			line[key] = line[key].strip()

		income.append(line[0])
		tax.append(line[1])

total = 0
for income, tax in zip(income, tax):
	total += float(tax)/float(income)
total /= min(len(income), len(tax))

print(f'{total*100}')