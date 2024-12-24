This repository contains program made in python and bash that simulates basic logic gates. The program allows users to
perform operations using the following gates:
1) AND
2) OR
3) NOT

It provides a command-line interface where users can input values and see the results of each logic gate operation.

Features

1) AND Gate: Performs a logical AND operation on two (or more) binary inputs.
2) OR Gate: Performs a logical OR operation on two (or more) binary inputs.
3) NOT Gate: Performs a logical NOT operation on a single binary input.
4) LOG File: After each operation, the program saves the input values and the result to a .txt file.

The logic gates work with binary values (0 and 1), and the program is designed to handle the basic truth table
behavior of these gates and provides a way to track all calculations made during the session in a log file.

Installation

1. Clone the repository to your local machine:
git clone https://github.com/GXDevs-opsec/projects.git

2. Navigate to the project directory:
cd logic-gate-simulator

Usage

To run the simulator:
bash menu.sh

The program will prompt you to select a logic gate to simulate and ask for the required inputs. After each operation,
the program will append the inputs and results to a text file called log.txt in the current directory.
You will be prompted to select the logic gate you want to simulate and provide the necessary inputs.

Log File

Each operation will be saved in a text file called save.txt in the same directory as the program. The file will look 
something like this:

inp-0: 0 Tue Dec 24 11:33:40 EET 2024
inp-1: 0 Tue Dec 24 11:33:40 EET 2024
inp-2: 1 Tue Dec 24 11:33:40 EET 2024
inp-3: 1 Tue Dec 24 11:33:40 EET 2024
output: 1 Tue Dec 24 11:33:40 EET 2024
==================================================================.

You can open save.txt anytime to view the history of operations performed.

Code Structure

menu.sh: Containts the menu of the program (Made in bash).
transporter.sh: Containts the file logging system (Made in bash).
save.txt: The text file where inputs and outputs of each calculations are logged.

The GATES folder containts all of the python scripts that handle the calculations of the gates.

Contributing

Feel free to fork this repository, make changes, and submit pull requests if you'd like to contribute. Suggestions
and improvements are welcome.

License

This project is licensed under the MIT License – see the LICENSE file for details.
