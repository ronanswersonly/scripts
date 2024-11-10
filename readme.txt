Steps to Enable PowerShell Script Execution
Open PowerShell as Administrator:

Right-click on the Start button and select "Windows PowerShell (Admin)"2
.

Check Current Execution Policy:

Type the following command and press Enter:

Get-ExecutionPolicy

This will show you the current policy (e.g., Restricted, AllSigned, RemoteSigned, Unrestricted).

Change Execution Policy:

To allow scripts to run, type the following command and press Enter:
Set-ExecutionPolicy RemoteSigned


PS C:\WINDOWS\system32> Get-ExecutionPolicy
Restricted
PS C:\WINDOWS\system32> Set-ExecutionPolicy RemoteSigned

Execution Policy Change
The execution policy helps protect you from scripts that you do not trust. Changing the execution policy might expose
you to the security risks described in the about_Execution_Policies help topic at
https:/go.microsoft.com/fwlink/?LinkID=135170. Do you want to change the execution policy?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"): Y
PS C:\WINDOWS\system32> Get-ExecutionPolicy
RemoteSigned
PS C:\WINDOWS\system32>