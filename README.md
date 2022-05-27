# Apache-Web-Server

This script will be helpful for you if you are working from your Root User

Otherwise if you are working from Normal User then go to Main Branch for the script of Apache Web Server.

<h2> Steps </h2>

Follow the steps below.

1. Open the Linux (Debian Flavour) Terminal.

2. Shift yourself to Root User

    `sudo su ` 
    
    And type your password of the User from where you are going to switch. 
    
    `e.g [sudo] passwd for Ubuntu`. 

3. Create a New Directory.

   `e.g mkdir Server`
  
4. Move into the Directory.
   
   `cd Server`
   
5. Clone the script from Github Repository.
    
    `sudo git clone https://github.com/Muhammad-Shawaiz/Apache-Web-Server`
    
6. Now you will see the Directory named as "Apache-Web-Server" with the help of `ls` command.

7. Move into the Apache-Web-Server Directory by typing the command.
   
   `cd Apache-Web-Server`
   
8. By typing `ls` command, a file named ApacheScript.sh in Green Color is the Script.

9. Before running the Script, please make sure that your Network Adapter would be on "Bridged Adapter" if you are working by creating VM.

10. Run the script by typing 
    
    `./ApacheScript.sh`
    
11. After running Script, check the IPv4 of your Guest Machine and resolve it on your Base Machine.In MacOs, the file to resolve IP over name is /etc/hosts. 

12. Write the domain name in the browser and BOOM your hosted site will be in front of you.
   

    
  
