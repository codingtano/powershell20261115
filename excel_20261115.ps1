#Write-Output "Hello, World!"

#cd C:\Users\target\Documents\document

cd C:\Users\target\Desktop\clang

#$files = Get-ChildItem -Recurse -name

$files = Get-ChildItem -Filter "*.c"

$outputfile = "C:\Users\target\Desktop\result.txt"

foreach( $targetfile in $files )
{
    #Write-Output $targetfile.Name

    $filename = Split-Path $targetfile -Leaf

    #Write-Host $filename

    #Select-String "int" $filename >> $outputfile
    #Select-String "int" $filename | ForEach-Object { $_.Line } >> $outputfile
    Select-String "int" $filename | ForEach-Object {$_.ToString()} >> $outputfile

    #$lines = Get-Content "$targetfile" -Encoding UTF8

    #foreach( $line in $lines )
    #{
    #    Write-Host $line
    #}
}