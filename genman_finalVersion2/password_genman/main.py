import random
import subprocess

print("PASSWORD MANAGER/GENERATOR")
print("Options:")
print("1. Include lowercase characters")
print("2. Include uppercase characters")
print("3. Include numbers")
print("4. Include symbols")
print("5. Select password length")
print("6. Generate password")
print("7. Exit program")
print("8. Encrypt/Decrypt your passwords")

opt=input("select option: ")

f1=True
f2=True
f3=True
f4=True
passlength=0

lower_chars="abcdefghijklmnopqrstuvwxyz"
upper_chars="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
numbers="1234567890"
symbols="!@#$%^&*()_+="
password=""

while opt != "6":
	if opt=="1":
		if f1==True:
			print("Option 1 selected")
			password=password+lower_chars
			f1=False
		elif f1==False:
			print("Option 1 de-selected")
			password=password.replace(lower_chars,'')
			f1=True
	elif opt=="2":
		if f2==True:
			print("Option 2 selected")
			password=password+upper_chars
			f2=False
		elif f2==False:
			print("Option 2 de-selected")
			password=password.replace(upper_chars,'')
			f2=True
	elif opt=="3":
		if f3==True:
			print("Option 3 selected")
			password=password+numbers
			f3=False
		elif f3==False:
			print("Option 3 de-selected")
			password=password.replace(numbers,'')
			f3=True
	elif opt=="4":
		if f4==True:
			print("Option 4 selected")
			password=password+symbols
			f4=False
		elif f4==False:
			print("Option 4 de-selected")
			password=password.replace(symbols,'')
			f4=True
	elif opt=="5":
		passlength=int(input("Select password length: "))
		print("Password length:",passlength)
	elif opt=="7":
		quit()
	elif opt=="8":
		subprocess.run(["/home/owner/documents/password_genman/encdec.sh"], shell=True)
	opt=input("select option: ")

f5=False
if passlength<=0:
	print("ERROR: password length <= 0")
	f5=True
if password=="":
	print("ERROR: no options selected")
	f5=True
if f5==True:
	quit()

password1=""
length=len(password)-1
for i in range(passlength):
	j=random.randint(-1,length)
	password1=password1+password[j]
#print(password1)

with open("file.txt", "a") as f:
	f.write(password1+"\n")

print("password has been created...")
