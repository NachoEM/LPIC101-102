#!/bin/sh
echo --------TEST---------
STARTTIME=$(date +%s)
sleep 2
# echo "Hello      World"       # This is a comment, too!
# echo "Hello World"
# echo "Hello * World"
# echo Hello * World
# echo Hello      World
# echo "Hello" World
# echo Hello "     " World
# echo "Hello "*" World"
# echo `hello` world
# echo 'hello' world

echo --------TEST SCRIPT END---------
ENDTIME=$(date +%s)
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to complete this task..."