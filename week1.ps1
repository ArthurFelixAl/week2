#

cd C:\Users\Aleena Maria\OneDrive\Desktop\notes\VI sem\Devops

New-Item -Path "PowerShellDemo" -ItemType Directory


Set-Location "PowerShellDemo"

# Create 10 files
for ($i=1; $i -le 10; $i++) {
    New-Item -Name "file$i.txt" -ItemType File
}

# Print files in descending order
Get-ChildItem | Sort-Object Name -Descending

# Delete a file (example: file1.txt)
Remove-Item "file6.txt"





# 2 Write something into a file
"Hello Lucy, DevOps is hard" | Out-File test.txt

# Read file content
Get-Content test.txt

# Search for text
Select-String -Path test.txt -Pattern "Lucy"


#3 # Create sample JSON
@{
    name = "Aleena"
    age = 20
} | ConvertTo-Json | Out-File data.json

# Read JSON
$json = Get-Content data.json | ConvertFrom-Json

# Get value
$json.name

#4
$response = Invoke-WebRequest "https://api.github.com"

# Status
$response.StatusCode

# Content
$response.Content
#5
$data = @(
    [PSCustomObject]@{Name="Lucy"; Age=21; Salary=30000},
    [PSCustomObject]@{Name="John"; Age=25; Salary=40000},
    [PSCustomObject]@{Name="Anna"; Age=22; Salary=35000},
    [PSCustomObject]@{Name="Mark"; Age=28; Salary=50000},
    [PSCustomObject]@{Name="Sara"; Age=24; Salary=42000}
)

$data | Export-Csv -Path "data.csv" -NoTypeInformation