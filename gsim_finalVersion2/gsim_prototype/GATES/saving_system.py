
def save(data, output):
	if (isinstance(data,tuple))==True:
		i=0
		with open("file.txt","w") as f: #RESET FUNCTION
			f.write("")
		for a in data: #WRITE INPUTS FUNCTION
			with open ("file.txt","a") as f:
				f.write("inp-"+str(i)+": "+str(a)+"\n")
				i = i+1
		with open("file.txt","a") as f: #WRITE OUTPUT FUNCTION
			f.write("output: "+str(output)+"\n")
	else:
		with open("file.txt","w") as f:
			f.write("inp-0: "+str(data)+"\n")
			f.write("output: "+str(output)+"\n")
