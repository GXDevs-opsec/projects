from saving_system import save
from NOT_calculation import NOTCALC
from selector import data_input

print("NOT gate SELECTED")
#print("Number of inputs: 1")
data=data_input(1,True)
#print(data)

valid=True
if (data!=0) and (data!=1):
	valid=False
#print(valid)

if valid==True:
	output=NOTCALC(data)
	print("output is: "+str(output))
	save(data,output)
else:
	print("Invalid input. Try again")
