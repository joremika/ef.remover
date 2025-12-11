# EMPTY FOLDER REMOVER 
This powershell tool allows you to get rid of empty folders. Recursively. Bottom-to-Top. 
Refer to the following section to read more on what is considered an empty folder by the engine.  

===NAVIGATION===

### Getting Started - Available Options

### General (common) Prerequisites 

1. Windows PowerShell starting from v. 5.1. Please refer to the following [link](https://learn.microsoft.com/en-us/powershell/scripting/install/install-powershell-on-windows?view=powershell-7.5) for the latest version of PowerShell.
2. **Execution Policy** set to at least `remoteSigned`

### Option 1 - Efficient and Permanent (Recommended)  
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
   
   
### Option 2 - Straightforward and Immediate  
This is a much swifter way of doing the same thing as Option 1 provides, though more verbose.   
If you are planning to use the script more often, it is highly recommended to resort to Option 1 instead.
1. Open PowerShell and navigate to the folder you wish to clean using `cd`
> cd "C:\Path\To\Target\Folder"
2. Run the script by entering its full path like this:
> "C:\Path\To\Your\Script\RemoveEmptyFolders.ps1 

















