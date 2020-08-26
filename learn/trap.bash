#!/bash

# Program to print a text file with headers and footers

TEMP_FILE=/tmp/printfile.txt

clean_up()
{
    # Perform program exit housekeeping
    rm $TEMP_FILE
    exit
}

trap clean_up SIGHUP SIGINT SIGTERM

pr $1 > $TEMP_FILE

echo -n "Print file? [y/n]: "
read
if [ "$REPLY" = "y" ]; then
    lpr $TEMP_FILE
fi
clean_up
