import subprocess
import numpy as np
import matplotlib.pyplot as plt

def get_usage():
	with open("specs.txt","r") as f:
		lines=f.readlines()
		lines[1]=lines[1].replace("%","")
		lines[1]=lines[1].replace("\n","")
		lines[2]=lines[2].replace("\n","")
		lines.pop(0)
		lines[0]=float(lines[0])
		lines[1]=float(lines[1])

		return lines


fig, (ax1, ax2) = plt.subplots(1, 2)

while True:
	try:
		subprocess.call(['csh','./script.csh'])
		us=get_usage()
		print(us)
		y=np.array([us[0],100.0-us[0]])
		z=np.array([us[1],100.0-us[1]])
		ax1.pie(y,colors=["red","green"])
		ax2.pie(z,colors=["green","red"])
		plt.pause(1)
	except KeyboardInterrupt:
		try:
			subprocess.run(['rm','specs.txt'])
		except:
			continue
		try:
			subprocess.run(['rm','command.sh'])
		except:
			continue

		exit()
