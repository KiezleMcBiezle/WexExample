
 RainbowText.ps1
param (
    [Parameter(Mandatory = $true)]
    [string]$Text
)

# Define rainbow colors using ANSI escape codes
$colors = @(
    "`e[91m",  # Red
    "`e[93m",  # Yellow
    "`e[92m",  # Green
    "`e[96m",  # Cyan
    "`e[94m",  # Blue
    "`e[95m"   # Magenta
)

# Reset color
$reset = "`e[0m"

# Output each character in a different color
for ($i = 0; $i -lt $Text.Length; $i++) {
    $color = $colors[$i % $colors.Length]
    Write-Host -NoNewline "$color$($Text[$i])"
}

# Reset the color at the end
Write-Host $reset
