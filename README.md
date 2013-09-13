Disable-Work-Mail
=================

Disable Mac Mail Email

This is a little script I wrote out of necessity to disabled my work email account after work hours and at weekends.
I use cron with the following info to run the task every half an hour mon-fri.

0,30 * * * 1-5 /usr/bin/osascript /Library/Scripts/Custom/email.scpt

osascript is neccessary as cron can't call an applescript directly

Code

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


Replace Dev with the name of the email account you wish to be the subject.
