//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{" ", "sh ~/.scripts/get_volume.sh",	0,		10},
	{"", "sh ~/.scripts/get_brightness.sh",	0,		10},
	{"", "sh ~/.scripts/battery.sh",	3,		0},
	// {"Mem:", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},

	{"", "date '+%b %d (%a) %I:%M%p'",	3,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
