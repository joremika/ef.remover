
## <a name="opt1">Option 1 - Efficient and Permanent (Recommended) </a> 
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
> _cleans the current directory_
>    
> **RemoveEmptyFolders.ps1**
>   
> _cleans a specific folder_
>   
> **RemoveEmptyFolders.ps1 -Path "C:\User\Archive"**  
   
   
## <a name="opt2">Option 2 - Straightforward and Immediate </a> 
This is a much swifter way of doing the same thing as Option 1 provides, though more verbose.   
If you are planning to use the script more often, it is highly recommended to resort to Option 1 instead.  <br>
1.Open PowerShell and navigate to the folder you wish to clean using `cd`  <br>
> cd "C:\Path\To\Target\Folder"   <br> 
2. Run the script by entering the following command:   <br> 
> powershell -ExecutionPolicy Bypass -File C:\Path\To\Your\Script\RemoveEmptyFolders.ps1  <br>
  
