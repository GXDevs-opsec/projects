from saving_system import save
from OR_calculation import ORCALC
from selector import inputs_selector,data_input
from is_valid import valid

print("OR gate SELECTED")
num_of_inputs=inputs_selector()
#print("number of inputs: "+str(num_of_inputs))
data_list=data_input(num_of_inputs,False)
#print(data_list)

valid=valid(data_list)
#print(valid)

if valid==True:
	output=ORCALC(data_list)
	print("output is: "+str(output))
	save(data_list,output)
else:
	print("Invalid inputs. Try again")
