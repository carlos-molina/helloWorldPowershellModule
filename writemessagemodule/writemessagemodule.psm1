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
  It demonstrates how Powershell modules work. 
  Contains three public functions: holaMundo, writeMessage 
  and writeMessageInCapitals and private function strToUpperCase

 .Example
   # 
   PS /Users/carlosmolina> holaMundo 

 .Example
   # 
   PS /Users/carlosmolina> writeMessage -message "Lupita" 

 .Example
   # 
   PS /Users/carlosmolina> writeMessageInCapitals -message "Lupita" 
#>



function holaMundo() {
    Write-Host "Hola Mundo!"
}



function writeMessage {
    param(
        [string]$Message
    )

    Write-Host "Message: $Message"
}



# This is a private function: it is not exported
function strToUpperCase {
    param(
        [string]$Message
    )
    $capMsg= $Message.ToUpper()
    return $capMsg
}



function writeMessageInCapitals {
    param(
        [string]$Message
    )
    $capitalMsg= strToUpperCase $message
    Write-Host "Message in all capitals: $capitalMsg"
}


# Export functions
Export-ModuleMember -Function  holaMundo, writeMessage, writeMessageInCapitals

