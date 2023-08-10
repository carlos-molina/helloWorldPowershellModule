<#
 .Source
  https://learn.microsoft.com/en-us/powershell/scripting/developer/module/understanding-a-windows-powershell-module?view=powershell-7.3

 .Date
  10 Aug 2023 

 .Programmer
  Carlos.Molina@cl.cam.ac.uk and Lupita Gutierrez

 .Synopsis
  It demonstrate how modules work. Contains two functions:
  holaMundo, writeMessage and strToUpperCase

 .Example
   # 
   helloWorld

 .Example
   # 
   writeMessage -message "Lupita" 

 .Example
   # 
   strToUpperCase -message "Lupita" 
 
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



function strToLowerCase {
    param(
        [string]$Message
    )
    $lowerCaseMessage= $Message.ToLower()
    #Write-Host "Lowercase message: $lowerCaseMessage"
    return $lowerCaseMessage
}


function strToUpperCase {
    param(
        [string]$Message
    )
    $lowerCaseMsg=  strToLowerCase $Message
    $capMessage= $lowerCaseMsg.ToUpper()

    Write-Host "Given message:           $Message"
    Write-Host "Message in all lowers:   $lowerCaseMsg"
    Write-Host "Message in all capitals: $capMessage"
}


Export-ModuleMember -Function  holaMundo, writeMessage, strToUpperCase, strToLowerCase 

