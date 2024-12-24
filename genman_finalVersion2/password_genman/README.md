This repository contains program made in python and bash that can generate and safely store passwords. The program 
allows users to generate passwords according to their needs and store them in an encrypted file.

It provides a command-line interface where users can choose how they want their password to be made out of (for
example include uppercase characters, include lowercase characters, include numbers, include symbols).

A simple yet secure password generator and manager tool built with Python and Bash. This software generates strong 
passwords and stores them in an encrypted text file to ensure your sensitive data remains safe.

Features
- Password Generation: Generate random, secure passwords of customizable length.
- Encryption: Passwords are securely stored in an encrypted `.txt` file using a strong encryption algorithm.
- Logging System: Tracks user actions for audit purposes, logging every password generation and saving operation.
- Cross-Platform: Compatible with Linux, macOS, and Windows (via WSL or bash emulators).
- Customizable: Set the length of the password, and include/exclude characters like symbols, numbers, or
  uppercase/lowercase letters.
- Easy to Use: Command-line interface for ease of use and automation.

Requirements
- Python 3.x
- Bash (Linux/macOS) or WSL (Windows)

Installation
1. Clone the repository to your local machine:
git clone https://github.com/GXDevs-opsec/projects.git

2. Navigate to the project directory:
cd password_genman

Usage

To run the software:
python3 main.py

You will be prompted to specify the password length, and optionally, the types of characters you want (e.g., numbers,
special characters).

Storing the Password

Once the password is generated, it will be automatically saved in a file.txt file.

The password will be encrypted and stored in file.txt.gpg. Each password is securely hashed and stored with the 
filename or service name you specify.

Security
- Strong Encryption: Passwords are encrypted with a strong encryption. Ensuring a strong protection.
- Decryption Key: Always keep your decryption key safe. If lost, your passwords cannot be recovered.
- Log Integrity: All actions related to password generation and saving are logged, allowing for transparency and 
  monitoring.

Code Structure
- main.py: Containts the password generation system.
- encdec.sh: Containts the encryption/decryption system.
- logger.sh: Containts the logging system.

How It Works

The main.py is the main script of the program. You should only run this specific script. The main.py basically, lets
you customize the password and generate it according to your own decisions. The password is then stored automatically in
a file.txt un-encrypted. If you want to encrypt your password then you should run the program again and choose
option #8 and then option #1. The program then will ask you to enter a secret phrase. The secret phrase is the 
password that will let you encrypt and decrypt your password successfully. So make sure that you dont share it with 
anyone and dont forget it. If you want to decrypt your password then you should run the program again and choose 
option #8 and then option #2. You will then be asked to enter the secret phrase that you made when you firstly
encrypted the password. The program can handle errors so dont worry about them.

Contributing

Feel free to fork this repository and contribute by:
- Adding new features.
- Fixing bugs.
- Improving the documentation.

To contribute, please submit a pull request. We will review it and merge it if it aligns with the goals of the project.

Disclaimer

Use this tool at your own risk. While every effort has been made to ensure the tool is secure, always keep your 
decryption key and logs safe. This tool is designed for personal password management; it is not intended to be a 
full-fledged password manager for all use cases.

License

This project is licensed under the MIT License – see the LICENSE file for details.
