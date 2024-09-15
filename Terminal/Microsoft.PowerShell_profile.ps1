oh-my-posh init pwsh --config "G:\PortableApps\WindowsTerminalPortable\theme.omp.json" | Invoke-Expression
Import-Module posh-git
Import-Module -Name Terminal-Icons
if ($host.Name -eq 'ConsoleHost') {
    Import-Module PSReadLine
}
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
clear