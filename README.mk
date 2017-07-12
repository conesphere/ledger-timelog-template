Using ledger to track time for a user... 

Basicly those are some shellscripts tracking time to 
a file called timelog.ledger which is a ledger-cli file. 

Tools: 
	add_time.sh [DURATION] [Description]
		Where duration defaults to 1 hour and Description to Misc Work
	track_time.sh [Description] 
		Tracks time until return is pressed 
	show_hours.sh
		calls ledger cli and prints out logged hours
	vim timelog.ledger
		to manipulate the timelog manually in case sth. is messed up. 
		you may use your favorite Editor instead of vim

