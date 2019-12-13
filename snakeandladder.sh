#!/bin/bash/ -x

echo "Welcome to Snake and Ladder Game!"

#CONSTANT
NO_PLAY=1
LADDER_MOVE=2
SNAKE_MOVE=3

#variable
position=0
diceCount=0
while [ $position -lt 100 ]
do
	diceResult=$(( RANDOM%6+1 ))
	diceCount=$(( $diceCount+1 ))
	getMove=$(( RANDOM%3+1 ))
	case $getMove in
		$NO_PLAY)
			position=$(( $position ))	;;

		$LADDER_MOVE)
			position=$(( $position + $diceResult ))
				if [ $position -gt 100 ]
				then
					position=$(( $position - $diceResult ))
				fi
				;;

		$SNAKE_MOVE)
			position=$(( $position - $diceResult ))
				if [ $position -lt 0 ]
				then
					position=0
				fi
 				;;
	esac
echo "$position-->$diceCount"
done

