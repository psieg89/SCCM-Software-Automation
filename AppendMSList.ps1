(get-content C:\Collections\MSList.txt) | Foreach-Object { $_ -replace ".txt" , "" } | set-content C:\Collections\MissingSoftwareCollection.txt
