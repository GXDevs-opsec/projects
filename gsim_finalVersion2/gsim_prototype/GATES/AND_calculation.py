
def ANDCALC(a):
	output=1
	for data in a:
		if data==1:
			continue
		else:
			output=0
			break
	return output
