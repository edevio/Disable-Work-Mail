tell application "Mail"
	set accountName to "Dev"
	set theHour to get the (hours of (current date))
	set accountEnabled to get enabled of account accountName
	if theHour < 9 or theHour > 17 then
		if accountEnabled is true then
			set enabled of account accountName to false
		end if
	else if accountEnabled = false then
		set enabled of account accountName to true
	end if
end tell
