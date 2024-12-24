def inputs_selector():
	print("Select number of inputs (2,3,4): ")
	varA=int(input("Select number of inputs: "))
	return varA

def data_input(a,gate):
	if (a==1) and (gate==True):
		valA=int(input("Give a value (0,1):"))
		return valA
	elif (a==2):
		valA=int(input("Give a value (0,1):"))
		valB=int(input("Give b value (0,1):"))
		return valA,valB
	elif (a==3):
		valA=int(input("Give a value (0,1):"))
		valB=int(input("Give b value (0,1):"))
		valC=int(input("Give c value (0,1):"))
		return valA,valB,valC
	elif (a==4):
		valA=int(input("Give a value (0,1):"))
		valB=int(input("Give b value (0,1):"))
		valC=int(input("Give c value (0,1):"))
		valD=int(input("Give d value (0,1):"))
		return valA,valB,valC,valD
	else:
		print("Invalid number.")
