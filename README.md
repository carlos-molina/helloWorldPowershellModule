# helloWorldPowershellModule
hello world in Powershell using a module


# To run the helloworldmodule I executed the following steps 

     
##1) I started a Power shell session
     
bash-3.2$ pwsh
PowerShell 7.3.6
PS /Users/carlosmolina/code/powershell> 


## 2) I checked the $env:PSModulePath

I typed $env:PSModulePat to display the directories that  are currently included in the path where power shell
 will look for modules written as *.psm1
       
PS /Users/carlosmolina/code/powershell> $env:PSModulePath
/Users/carlosmolina/.local/share/powershell/Modules:/usr/local/share/powershell/Modules:/usr/local/microsoft/powershell/7/Modules



## 3) I created a directory inside the directory Modules and call it helloworldmodule
      
bash-3.2$ pwd
/Users/carlosmolina/.local/share/powershell/Modules

bash-3.2$ ls
helloworldmodule/
        
        
  
## 4) Inside the subdirectory helloworldmodule 
Store the file called helloworldmodule.psm1 which contains the module's code, including the  helloWorld function
  
bash-3.2$ ls helloworldmodule
helloworldmodule.psm1

    
## 5)  Import the helloworldmodule
        
PS /Users/carlosmolina/code/powershell> Import-Module helloworldmodule



  
## 6) Call the helloWorld function into execution
         
I can now call into execution the helloWorld  function which is inside the helloworldmodule.psm1 and since the helloworldmodule has been imported, I can use it from from powershell session.


## 7) Actual execution of the helloworld function

PS /Users/carlosmolina/code/powershell> Import-Module helloworldmodule      

 
PS /Users/carlosmolina/code/powershell> helloWorld
Hello World!


