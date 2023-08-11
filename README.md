# helloWorldPowershellModule
hello world in Powershell using a module


# To run the helloworldmodule I executed the following steps 

     
## 1) I started a Power shell session
     
bash-3.2$ pwsh

PowerShell 7.3.6

PS /Users/carlosmolina/code/powershell> 


## 2) I checked the $env:PSModulePath

I typed $env:PSModulePat to display the directories that  are currently included in the path where Power shell
 will look for modules written as *.psm1. 
         
PS /Users/carlosmolina/code/powershell> $env:PSModulePath
/Users/carlosmolina/.local/share/powershell/Modules:/usr/local/share/powershell/Modules:/usr/local/microsoft/powershell/7/Modules

I didn't change the $env:PSModulePath variable. Thus, I placed the helloworldmodule in one of the directories already in the Power shell path.


## 3) I created the helloworldmodule directory 

I created it Inside the directory Modules and called it helloworldmodule
      
bash-3.2$ pwd
/Users/carlosmolina/.local/share/powershell/Modules

bash-3.2$ ls

helloworldmodule/
        
        
  
## 4) I stored the helloworldmodule.psm1

Inside the subdirectory helloworldmodule I store the file called helloworldmodule.psm1 which contains the module's code, including the  helloWorld function
  
bash-3.2$ ls helloworldmodule

helloworldmodule.psm1

    
## 5)  I imported the helloworldmodule
        
PS /Users/carlosmolina/code/powershell> Import-Module helloworldmodule



  
## 6) I called the helloWorld function into execution.

This function is coded inside the helloworldmodule.psm1 and since the helloworldmodule has been imported, I can use it from from Power shell session.


## 7) I executed  the helloworld function

a) I did not forget to import the helloworldmodule

PS /Users/carlosmolina/code/powershell> Import-Module helloworldmodule      


 b) I called the helloWorld function provided by the helloworldmodule

PS /Users/carlosmolina/code/powershell> helloWorld

Hello World!


