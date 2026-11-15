#Write-Output "Hello, World!"

cd C:\Users\target\Documents\document

#$files = Get-ChildItem -Recurse -name

$files = Get-ChildItem -Filter "*.txt"

foreach( $targetfile in $files )
{
    #Write-Output $targetfile.Name

    $filename = Split-Path $targetfile -Leaf

    #Write-Host $filename

    Select-String "hello" $filename >> result.txt

    #$lines = Get-Content "$targetfile" -Encoding UTF8

    #foreach( $line in $lines )
    #{
    #    Write-Host $line
    #}
}
