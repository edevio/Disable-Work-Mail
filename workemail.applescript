tell application "Mail"
	--Defines the current time
	set theHour to get the (hours of (current date))
	--Defines the array/list of accounts to check
	set accountList to {"Dev", "Mywellbeing", "Edward BB"}
	
	--Loops over the array
	repeat with currentAccount in accountList
		set accountName to currentAccount
		
		--checks if earlier than 9 or later than 5 and disables if so
		set accountEnabled to get enabled of account accountName
		if theHour < 9 or theHour > 17 then
			if accountEnabled is true then
				set enabled of account accountName to false
			end if
			--if between 9 and 5 and the account is disabled it enables it
		else if accountEnabled = false then
			set enabled of account accountName to true
		end if
	end repeat
end tell
