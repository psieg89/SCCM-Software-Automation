Import-Module 'C:\Program Files (x86)\Microsoft Configuration Manager\AdminConsole\bin\ConfigurationManager.psd1'

cd MPS:

$ErrorActionPreference= 'silentlycontinue'

$CollectionName = "Missing Software"

$Computers = get-content C:\Collections\MissingSoftwareCollection.txt

Foreach ($Computer in $Computers)

{ add-cmdevicecollectiondirectmembershiprule -collectionname $CollectionName -resourceid (Get-CMDevice -name $Computer).ResourceID }
