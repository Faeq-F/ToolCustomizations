Fonts need to be installed on the system

The ps1 file should be located in:
C:\Users\Faeq\Documents\WindowsPowerShell

The file includes the following:
oh-my-posh init pwsh --config "G:\PortableApps\WindowsTerminalPortable\theme.omp.json" | Invoke-Expression
Import-Module posh-git
Import-Module -Name Terminal-Icons
if ($host.Name -eq 'ConsoleHost') {
    Import-Module PSReadLine
}
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
clear

The installed PS modules, are Oh My Posh, Posh-Git, Terminal-Icons, and PSReadLine.

Neovim is installed at C:\tools\neovim