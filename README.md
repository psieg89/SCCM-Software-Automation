# SCCM-Software-Automation
                                ****************************************
                                        SCCM Software Automation
                                ****************************************

1)  Scheduled task runs on workstation at 7am calling "\\SCCMServer\C$\appZ\Software Check\2014SoftwareInstall.bat"
	Script checks for software, reports what is missing to C:\Collections\MissingSoftware and to \\mps-fs\tool$\MissingSoftware
	Each file is named the workstation with the missing software inside

2)  SCCMServer runs a scheduled task at 7:10am calling "\\SCCMServer\C$\appZ\Software Check\MakeMSList.bat"
	This makes the list of workstations that need to be added to the collection
	List is titled "\\SCCMServer\C$\Collections\MSList.txt"

3)  SCCMServer runs a scheduled task at 7:15am calling "\\SCCMServer\C$\appZ\Software Check\AppendMSList.ps1"
	AppendMSList.bat calls AppendMSList.ps1 in the Scheduled Task 
	This removes the .txt from "\\SCCMServer\C$\Collections\MSList.txt"
	A new file is created "\\SCCMServer\C$\Collections\MissingSoftwareCollection.txt"

4)  SCCMServer runs a scheduled task at 7:20am calling "\\SCCMServer\C$\appZ\Software Check\AddToMissingSoftwareCollection.ps1"

5)  SCCMServer runs a scheduled task at 6:25am calling "\\SCCMServer\C$\appZ\Software Check\RemoveFromMissingSoftwareCollection.ps1"

6)  SCCMServer runs a scheduled task at 6:50am calling "\\SCCMServer\C$\appZ\Software Check\DeleteMissingSoftwareList.bat"
