# Version "1.0" Patch HD 4000 chris1111
# Base on jackluke work
use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions
--	Properties configuting shell
--If Continue
display dialog "Welcome Patch HD 4000 Monterey" with icon note

activate me
set all to paragraphs of (do shell script "ls /Volumes")
set w to choose from list all with prompt " 
To continue, select the volume Monterey 12 you want to use, then press the OK button
The volume will be renamed Monterey-DISK" OK button name "OK" with multiple selections allowed
if w is false then
	display dialog "Quit Installer " with icon note buttons {"EXIT"} default button {"EXIT"}
	return
end if
try
	
	repeat with teil in w
		do shell script "diskutil `diskutil list | awk '/ " & teil & "  / {print $NF}'`"
	end repeat
end try
set theName to "Monterey-DISK"
tell application "Finder"
	set name of disk w to theName
end tell
--If Continue
display dialog "Select  the APFS Monterey-DISK on the list to mount the drive as RW" with icon note
set alldisks to paragraphs of (do shell script "diskutil list")
set nonbootnumber to (count of alldisks)
try
	set alldisks to items 2 thru nonbootnumber of alldisks
	activate
	set your_selected_device_id to (choose from list alldisks with prompt "Choose APFS Monterey-DISK, then click OK to proceed")
	repeat with the_Item in your_selected_device_id
		set the_ID to (do shell script "diskutil list | grep -m 1" & space & quoted form of the_Item & space & "| grep -o 'disk[0-9][a-z][0-9]*'")
		set Check to false
		set tName to your_selected_device_id as text
		if (tName contains "10:" or tName contains "9:" or tName contains "8:" or tName contains "7:" or tName contains "6:" or tName contains "5:" or tName contains "4:" or tName contains "3:" or tName contains "2:" or tName contains "1:" or tName contains "0:") and tName contains "APFS" and (tName does not contain "VM" and tName does not contain "- D" and tName does not contain "Update" and tName does not contain "Preboot" and tName does not contain "Recovery" and tName does not contain "Container" and tName does not contain "Snapshot") then
			set Check to true
		end if
		if Check is true then
			set progress total steps to 5
			set progress additional description to "Analyse Progression"
			delay 2
			set progress completed steps to 1
			
			set progress additional description to "Analyse Progression"
			delay 2
			set progress completed steps to 2
			
			set progress additional description to "Analyse Monterey Disk"
			delay 2
			set progress completed steps to 3
			
			try
				do shell script "mount -o nobrowse -t apfs /dev/" & the_ID & " /System/Volumes/Update/mnt1" with administrator privileges
				do shell script "open /System/Volumes/Update/mnt1/"
				delay 1
				tell application "Patch-HD4000"
					activate
				end tell
				display dialog "Click Rebuild SnapShot to proceed
Patch HD 4000 Monterey 12.
Wait for the end of the process " with icon note buttons {"Rebuild SnapShot"} default button {"Rebuild SnapShot"}
				
				## Set use_terminal to true to run the script in a terminal
				set use_terminal to true
				## Set exit_terminal to true to leave the terminal session open after script runs
				set exit_terminal to true
				## Set log_file to a file path to have the output captured
				set file_list to ""
				set the_command to quoted form of POSIX path of (path to resource "Patch-Helper" in directory "Scripts")
				
				set file_list to file_list
				set source to path to me as string
				set source to POSIX path of source & "Contents/Resources/Installer/PatchHD4000.app"
				set source to quoted form of source
				do shell script "open " & source & "/"
				delay 8
				set the_command to the_command & " " & file_list
				try
					if log_file is not missing value then
						set the_command to the_command & " | tee -a " & log_file
					end if
				end try
				try
					set use_terminal to false
				end try
				if not use_terminal then
					do shell script "cp -R /Private/tmp/*.kext  /Volumes/Monterey-DISK/System/Volumes/Update/mnt1/System/Library/Extensions/" with administrator privileges
					delay 1
					do shell script "cp -R /Private/tmp/*.bundle  /Volumes/Monterey-DISK/System/Volumes/Update/mnt1/System/Library/Extensions/" with administrator privileges
					delay 1
					do shell script "cp -R /Private/tmp/WebKit.framework  /Volumes/Monterey-DISK/System/Volumes/Update/mnt1/System/Library/Frameworks/" with administrator privileges
					delay 2
					do shell script the_command with administrator privileges
					delay 1
					set progress additional description to "Install Patch"
					delay 2
					set progress completed steps to 4
					
					set progress additional description to "Installation Done"
					delay 1
					set progress completed steps to 5
					set progress additional description to "
Intel HD 4000 patching system
Done. Wait for it to be completed. . ."
					
				end if
				
			on error the error_message number the error_number
				display dialog "Error: " & the error_number & ". " & the error_message buttons {"OK"} default button 1
				quit
			end try
			do shell script "diskutil unmount /System/Volumes/Update/mnt1"
			tell application "Patch-HD4000"
				activate
			end tell
			display dialog "Install Patch HD 4000 /Volume Snapshot
Monterey-DISK has been modified! Reboot" buttons {"Reboot macOS"} default button 1 with icon note giving up after 10
		else
			display dialog "You haven't selected any Monterey-DISK" buttons {"Exit"} with icon note giving up after 5
		end if
		
	end repeat
on error the error_message number the error_number
	if the error_number is -128 or the error_number is -1708 then
	else
		display dialog "There are no selected Monterey-DISK snapshots." buttons {"OK"} default button 1 with icon note giving up after 5
	end if
end try
