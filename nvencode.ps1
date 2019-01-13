#encoder hevc nvidia
#complete the folder where is NvEnc
Set-Location "E:\- P R O G Z -\NVEncC_4.29_x64"
$InFolder = Read-Host "what is the folder to Encode ?"
$OutFolder = Read-Host "what is Destination folder ?"
$Files = Get-ChildItem $InFolder

ForEach($FileToEncode in $Files){
    $InFile = "$InFolder\$FileToEncode"
    .\NVencC64.exe -i $InFile -c h265 --cqp 25 -f --output-format mkv --audio-copy --sub-copy -o "$OutFolder\$FileToEncode"
}

pause