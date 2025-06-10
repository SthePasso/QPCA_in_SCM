# Commands to enter in ARC UTSA
ssh abc123@arc.utsa.edu

srun -p compute1 -n 1 -t 01:30:00 --pty bash

module restore experiments

conda activate QML

#run the code
# Vim Document
vim name_file.py        oppen file
a                       write file
:w                      save the writing on file
:q                      close file
:wq                     save and close file



# To create conda env

    conda create -n QUANTUM python 3.9.6 -y 
    conda activate QUANTUM
Make executable: 
    chmod +x setup_qiskit_env.sh
Run:
    ./setup_qiskit_env.sh
