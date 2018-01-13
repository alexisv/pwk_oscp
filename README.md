# pwk_oscp

This is my own repository for any files/scripts/programs I have created during my PWK OSCP journey.


1) offsec-cracker.pl
This is a perl script that accepts a file containing hash output of fgdump (or any tool with similar output), and then ran each line against the Offsec Cracker Utility.  The output will be the plaintext passwords if they are existing in the Cracker database.


root@kali:~# ./offsec-cracker.pl dump2.txt

