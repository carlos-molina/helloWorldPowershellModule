This repo contains a "hello world" implementation written with a Powershell module. It also includes two additional and very basic examples of Powershell modules.


# I- helloWorldPowershellModule
hello world in Powershell using a module


To run the helloworldmodule I followed steps 1 to 6: 

     
## 1) I started a Power shell session
     
bash-3.2$ pwsh

PowerShell 7.3.6

PS /Users/carlosmolina/code/powershell> 


## 2) I checked the $env:PSModulePath

I typed $env:PSModulePat to display the directories that  are currently included in the path where Power shell
 will look for modules written as *.psm1. 
         
PS /Users/carlosmolina/code/powershell> $env:PSModulePath
/Users/carlosmolina/.local/share/powershell/Modules:/usr/local/share/powershell/Modules:/usr/local/microsoft/powershell/7/Modules


## 3) I created the helloworldmodule directory 

I chose not to change the $env:PSModulePath variable. Thus, I placed the helloworldmodule directoty inside one of the directories already in the Power shell's path, namely, in the Modules directory.

     
bash-3.2$ pwd
/Users/carlosmolina/.local/share/powershell/Modules

bash-3.2$ ls

helloworldmodule/
        
        
  
## 4) I stored the helloworldmodule.psm1

Inside the subdirectory helloworldmodule, I store the file called helloworldmodule.psm1 which contains the module's code, including the  helloWorld function.
  
bash-3.2$ ls helloworldmodule

helloworldmodule.psm1

    
## 5)  I imported the helloworldmodule
        
PS /Users/carlosmolina/code/powershell> Import-Module helloworldmodule



  
## 6) I executed  the helloworld function

This function is coded inside the helloworldmodule.psm1 and since the helloworldmodule has been imported, I can use it from from Power shell session.


a) I did not forget to import the helloworldmodule

PS /Users/carlosmolina/code/powershell> Import-Module helloworldmodule      


 b) I called the helloWorld function provided by the helloworldmodule

PS /Users/carlosmolina/code/powershell> helloWorld

Hello World!



# II- Two additional and basic examples of Powershell modules 

writemessagemodule.psm1 and calendarexamplemodule.psm1 are meant to extend the knowledge beyond "hello world". They show how to include functions in a module. The execution such functions is similar to the execution of the helloWorld function.  One can follow the same step which include storing the modules in the Modules subdirectory and import them.



