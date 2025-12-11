# EMPTY FOLDER REMOVER 
This powershell tool allows you to get rid of empty folders. Recursively. Bottom-to-Top. 
Refer to the following section to read more on what is considered an empty folder by the engine.  

## NAVIGATION  
- [GETTING STARTED](#gs) 
- [Usage Option 1](#opt1) 
- [Usage Option 2](#opt2) 
- [On Execution Policy](#exec) 

### <a name="gs">Getting Started</a> - Available Options

### General (common) Prerequisites 

1. Windows PowerShell starting from v. 5.1. Please refer to the following [link](https://learn.microsoft.com/en-us/powershell/scripting/install/install-powershell-on-windows?view=powershell-7.5) for the latest version of PowerShell.
2. **Execution Policy** set to at least `remoteSigned`. Refer to [this section](#exec) for more information about it. 

### <a name="opt1">Option 1</a> - Efficient and Permanent (Recommended)  
This method allows you to spend less time typing and more time actually executing. Please refer to the below steps for exhaustive information.  
1. Place the `RemoveEmptyFolders.ps1` script inside a specific folder, for example, `C:\Users\%USERNAME%\Scripts` (you may choose a different name for your folder, it does not have to be named `Scripts`)
2. Add that folder to your `PATH`:  
- Using the searchbar, navigate to `Environment Variables`  
- Click on `Environment Variables`  
- Select a variable called `Path` inside the `User variables` interface and click `Edit`  
- Click `New` and add (copy & paste) the full path to your script's folder
- Click `OK` twice - once after adding the path and then to apply changes
3. Open a **new** PowerShell or Command Prompt window  
4. You are ready to run the script:
> **cleans the current directory*  
> **RemoveEmptyFolders.ps1**  
> **cleans a specific folder*  
> **RemoveEmptyFolders.ps1 -Path "C:\User\Archive"**  
   
   
### <a name="opt2">Option 2</a> - Straightforward and Immediate  
This is a much swifter way of doing the same thing as Option 1 provides, though more verbose.   
If you are planning to use the script more often, it is highly recommended to resort to Option 1 instead.
1. Open PowerShell and navigate to the folder you wish to clean using `cd`
> cd "C:\Path\To\Target\Folder"
2. Run the script by entering the following command:
> powershell -ExecutionPolicy Bypass -File C:\Path\To\Your\Script\RemoveEmptyFolders.ps1 

### <a name="exec">Execution</a> Policy Explained  
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













































