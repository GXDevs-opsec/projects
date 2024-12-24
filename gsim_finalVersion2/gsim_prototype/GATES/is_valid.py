
def valid(data_list):
	if (isinstance(data_list,tuple))==True:
		valid=True
		for data in data_list:
        		if (data==1) or (data==0):
                		continue
        		else:
                		valid=False
		return valid
	else:
		return False
