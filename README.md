## Scripts


Here are a couple random scripts created for different projects. Some are related, some are not.


### Roulette Scripts

These scripts were made as part of a class project. They can be found [here](https://github.com/I14T-E/scripts/tree/master/Roulette%20Scripts "Roulette Scripts").

#### roulette_delaer_finder_by_time.sh
- This script was created to analyze an employee schedule to find a roulette dealer at a specific time.
- It takes the following two arguments:
   - The date (four digits)
   - The time (including "AM" or "PM")


#### roulette_dealer_finder_by_time_and_game.sh
- This script is similar to the one above, however, it takes a third argument which allows the user to search different games being played as well.
- The following arguments are:
   - The date (four digits)
   - The time (including "AM" or "PM")
   - The casino game being played



### Set_DB
This was a simple script made to test different shell features. This program starts with a prompt and accepts three different commands (setdb, printdb, quit). Warning: It's obviously filled with bugs and has no practical use...

This script and test file can be found [here](https://github.com/I14T-E/scripts/tree/master/Set_DB "Set DB").


To use:
- Set the "database" by using the setdb command and passing it a text file
   - The program will check to see if file exists and is readable (will also ignore extra arguments)
   - Can handle full path file
- Use the printdb command to check the previously "set" text file for well formatted lines
   - Well formatted lines are determined by the regex within the script itself


Example:
```bash
$USER: test
Unrecognized command
$USER: setdb
Missing argument
$USER: setdb a_file
Database set to a_file
$USER: printdb
Well formatted lines:
...
...
...
$USER: quit
```
