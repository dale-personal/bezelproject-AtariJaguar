$files = Get-ChildItem -File -Filter *.png  -Path retroarch\overlay\GameBezels\AtariJaguar\

for ($i=0; $i -lt $files.Count; $i++) {
    Write-Output $files[$i].FullName
    magick $files[$i].FullName -strokewidth 0 -fill black -draw "rectangle 330,0 2230,1440" -region "1901x1440+330+0" -transparent black $files[$i].FullName
}