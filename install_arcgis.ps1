Invoke-WebRequest 'https://www.googleapis.com/drive/v3/files/1pBwf4I3dehDQtpjQZYQwvKfw5CE3aynq?alt=media&key=AIzaSyBD8tY90tF5DojRDNgAHN00gfoTCNOiuAI' -OutFile ArcGIS_Setup.zip
Expand-Archive -Path ArcGIS_Setup.zip -DestinationPath C:\ArcGIS\ -Verbose
Msiexec /i C:\ArcGIS\setup.msi INSTALLDIR="C:\ArcGIS" ESRI_LICENSE_HOST=GIS SOFTWARE_CLASS=Professional SEAT_PREFERENCE=Float /qb
Invoke-WebRequest 'https://raw.githubusercontent.com/testonamonaco/actions-remote-desktops/main/AfCore.dll' -OutFile AfCore.dll
# Copy-Item AfCore.dll -Destination "C:\ArcGIS\Desktop10.8\bin"
