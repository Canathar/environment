# ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
# ║ Microsoft.PowerShell_profile.ps1                                                                                               ║
# ║                                                                                                                                ║
# ║ Document Best Viewed/Printed: Page{Letter, Landscape, 0.25in Side Margins}   Font{Monospace Font, Normal, 10pt}                ║
# ║                                                                                                                                ║
# ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
# ║                                                        Revision History                                                        ║
# ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
# ║ VV.vv.DOYyy.bb (dd MMM yy) - Initial Creation/Development Update/Maintenance Update                                            ║
# ║                                                                                                                                ║
# ║  1.00.13725.xx (17 May 25) - Initial Creation {J. Laccone}                                                                     ║
# ║                                 Added header, added reference data                                                             ║
# ║  1.01.13825.xx (18 May 25) - Development Update {J. Laccone}                                                                   ║
# ║                                 Added additional aliases                                                                       ║
# ║                                                                                                                                ║
# ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
# ║                                                            Reference                                                           ║
# ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
# ║                                                                                                                                ║
# ║   Microsoft PowerShell Security - Set-ExecutionPolicy                                                                          ║
# ║   -----------------------------------                                                                                          ║
# ║      https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7.5 ║
# ║                                                                                                                                ║
# ║                                                                                                                                ║
# ║   Microsoft PowerShell Core                                                                                                    ║
# ║   -------------------------                                                                                                    ║
# ║      https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/?view=powershell-7.5                        ║
# ║                                                                                                                                ║
# ║   Microsoft PowerShell Core - about topics                                                                                     ║
# ║   ----------------------------------------                                                                                     ║
# ║      https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about?view=powershell-7.5             ║
# ║                                                                                                                                ║
# ║   Microsoft PowerShell Core - about_aliases                                                                                    ║
# ║   -----------------------------------------                                                                                    ║
# ║      https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_aliases?view=powershell-7.5     ║
# ║                                                                                                                                ║
# ║   Microsoft PowerShell Core - about_profiles                                                                                   ║
# ║   ------------------------------------------                                                                                   ║
# ║      https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7.5    ║
# ║                                                                                                                                ║
# ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
# ║                                                              Notes                                                             ║
# ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
# ║                                                                                                                                ║
# ║   Enable The Profile Script To Run                                                                                             ║
# ║   --------------------------------                                                                                             ║
# ║      1. Open Windows Terminal (NOTE: If PowerShell is your default profile, a new PowerShell terminal window will be created)  ║
# ║      2. Open an Administrator Windows PowerShell by clicking on the downward facing cheveron, right click on                   ║
# ║         Windows PowerShell and selecting "Run as administrator"                                                                ║
# ║      3. Enable the PowerShell profile to run by typing the following command(s) into the Administrator PowerShell              ║
# ║         terminal window:                                                                                                       ║
# ║                                                                                                                                ║
# ║            Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope LocalMachine                                                     ║
# ║                                                                                                                                ║
# ║                                                                                                                                ║
# ║   Determine The Directory To Store The Profile Script                                                                          ║
# ║   ---------------------------------------------------                                                                          ║
# ║      1. Open Windows Terminal (NOTE: If PowerShell is your default profile, a new PowerShell terminal window will be created)  ║
# ║      2. Display the directory to store the profile script by typing the following command(s) into the PowerShell               ║
# ║         terminal window:                                                                                                       ║
# ║                                                                                                                                ║
# ║            $PROFILE                                                                                                            ║
# ║                                                                                                                                ║
# ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
# --- Diagnostic Flags ---
$DEBUG = $false
$EXTRA_DEBUG = $false



# ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
# ║                                                                                                                                ║
# ║                                                       Directory Aliases                                                        ║
# ║                                                                                                                                ║
# ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝

# Alias for the command(s) to change directory to the code-notes directory
function Change-To-CodeNotes {cd C:\Users\$Env:USERNAME\data\code-notes}
Set-Alias -Name cn -Value Change-To-CodeNotes


# Alias for the command(s) to change directory to the data directory
function Change-To-Data {cd C:\Users\$Env:USERNAME\data}
Set-Alias -Name dta -Value Change-To-Data


# Alias for the command(s) to change directory to the environment directory
function Change-To-Environment {cd C:\Users\$Env:USERNAME\data\environment}
Set-Alias -Name environment -Value Change-To-Environment


# Alias for the command(s) to change directory to the reference directory
function Change-To-Reference {cd C:\Users\$Env:USERNAME\data\reference}
Set-Alias -Name reference -Value Change-To-Reference


# Alias for the command(s) to change directory to the scripts directory
function Change-To-Scripts {cd C:\Users\$Env:USERNAME\data\scripts}
Set-Alias -Name scripts -Value Change-To-Scripts


# Alias for the command(s) to change directory to the dataworkspace directory
function Change-To-Workspace {cd C:\Users\$Env:USERNAME\data\dataworkspace}
Set-Alias -Name wks -Value Change-To-Workspace



# ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
# ║                                                                                                                                ║
# ║                                                     Python Checker Aliases                                                     ║
# ║                                                                                                                                ║
# ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝

# Alias for the command(s) to check a python file for style compliance
# NOTE: Tool MUST be installed first. Install tool via wheel with the following command(s):
#          pip install --upgrade pycodestyle
function Check-Python-Style-Compliance {pycodestyle --ignore E129,E221,W503 --max-line-len-132 $args}
Set-Alias -Name pf-pcs -Value Check-Python-Style-Compliance


# Alias for the command(s) to check a python file for docstring compliance
# NOTE: Tool MUST be installed first. Install tool via wheel with the following command(s):
#          pip install --upgrade pydocstyle
function Check-Python-Docstring-Compliance {pydocstyle --add-ignore D202 $args}
Set-Alias -Name pf-pds -Value Check-Python-Docstring-Compliance


# Alias for the command(s) to check a python file for functional compliance
# NOTE: Tool MUST be installed first. Install tool via wheel with the following command(s):
#          pip install --upgrade pylint
function Check-Python-Functional-Compliance {pylint --max-line-length=132 --extension-pkg-allow=lxml $args}
Set-Alias -Name pf-pds -Value Check-Python-Functional-Compliance



# ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
# ║                                                                                                                                ║
# ║                                                   Python Environment Aliases                                                   ║
# ║                                                                                                                                ║
# ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝

# Alias for the command(s) to activate a python virtual environment
function Python-Virtual-Environment-Activate
{
   # Create the command to activate the virtual environment
   if ($DEBUG) { Write-Host "Args: $args"}
   $py_env_act = "$HOME\python-envs"
   $py_env_act += "\$args"
   $py_env_act += "\Scripts\activate.ps1"

   if ($EXTRA_DEBUG)
   {
      # Display the command
      Write-Host "Command: $py_env_act"
   }
   else
   {
      # Execute the command
      Invoke-Expression ${py_env_act}
   }
}
Set-Alias -Name pvea -Value Python-Virtual-Environment-Activate

