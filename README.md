Disable-Work-Mail
=================

Prerequisites

OS X with Mail and cron installed

Information

This is a little script I wrote out of necessity to disabled my work email account after work hours and at weekends.
I use cron with the following info to run the task every half an hour mon-fri.

0,30 * * * 1-5 /usr/bin/osascript /Library/Scripts/Custom/workemail.scpt

osascript is neccessary as cron can't call an applescript directly

To customise replace Dev with the name of the email account you wish to be the subject.
