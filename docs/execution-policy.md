### <a name="exec">🔧 Execution</a> Policy Explained  
The PowerShell Execution Policy is a safety feature that, by default, prevents the running of scripts (`.ps1` files) to protect your system from malicious code.  
  
1. Why adjustment of Execution Policy is Required  
Essentially, the __default__ state of Execution Policy is `Restricted`, which results in all scripts being blocked from execution.
It is a **security measure** which you will have to temporarily or permanently adjust to allow running of our script.
2. The Three Ways to Allow a Script
    
| Scope | Command | Effect |  
|  :----:  |  :----:  |  ----  |
| For this specific Command | `-ExecutionPolicy Bypass` flag | Maximum security. Used alongside a command that will call the script and only works for that command. |
| For this PowerShell Session | `Set-ExecutionPolicy -Scope Process...` | Effect lasts until you close the currently opened PowerShell window. |
| Permanent for Current User | `Set-ExecutionPolicy -Scope CurrentUser...` | Allows scripts to be run at any time. Closing and reopening Powershell, as well as a PC restart, will not reset the settings. |  
   
3. Running the Script: In Practice:
  
**Method A** (For this Specific Command):  
> _inside powershell_
>     
> powershell -ExecutionPolicy Bypass -File "C:\Path\To\Script\RemoveEmptyFolders.ps1"  
  
The `powershell` command here is used to call the script.  

**Method B** (For this Session):  
Open Powershell, change the policy for the current window and then run the script.    
> _inside powershell, first we need to allow running of scripts for this session by running the below command:_
>
> Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
>
>   
> _then, we need to call the script by providing the full path to it, like this:_
>   
> "C:\Path\To\Script\RemoveEmptyFolders.ps1"  

**Method C** (Permanent):  
Run Powershell using the **Administrator** rights and run the following command:  
> Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned  
   
This will essentially allow you to re-enter the PowerShell window, reboot your PC and still be able to run `.ps1` scripts at will.
Just run `C:\Path\To\Script\RemoveEmptyFolders.ps1` after you have applied the above-mentioned settings.   
