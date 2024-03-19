# Prompt
oh-my-posh init pwsh --config 'C:\Users\Admin\AppData\Local\Programs\oh-my-posh\themes\paradox.omp.json' | Invoke-Expression

# Icons
Import-Module Terminal-Icons

# Z
Import-Module -Name z

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# PSFzf
Import-Module PSFzf
Set-PsFzfoption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# PowerShellAI
# Import-Module PowerShellAI -Force

# Where Setting
Set-Alias which where.exe

# Fix VScode Terminal UTF8
$OutputEncoding = [System.Console]::OutputEncoding = [System.Console]::InputEncoding = [System.Text.Encoding]::UTF8