Import-Module 'C:\Program Files (x86)\Microsoft Configuration Manager\AdminConsole\bin\ConfigurationManager.psd1'

cd MPS:

$ErrorActionPreference= 'silentlycontinue'

$CollectionID = "MPS0004B"

$Computers = get-content C:\Collections\MissingSoftwareCollection.txt

Foreach ($Computer in $Computers)

{ remove-cmdevicecollectiondirectmembershiprule -collectionid $CollectionID -resourceid (Get-CMDevice -name $Computer).ResourceID -force }
