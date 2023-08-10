<#
 .Date
  10 Aug 2023

 .Place
  Computer Laboratory, Unoversity of Cambridge 

 .Programmer
  Carlos.Molina@cl.cam.ac.uk and Lupita Gutierrez

 .Tested on
  Computer: MacOS Catalina, Version 10.15.7
  Powershell: PowerShell 7.3.6

 .Synopsis
  This is the hello world using a Powershell module

 .Synopsis
  It prints "hello world".

 .Example
   # 
   PS /Users/carlosmolina> helloWorld 
#>


function helloWorld() {
    Write-Host "Hello World!"
}


Export-ModuleMember -Function  helloWorld 

