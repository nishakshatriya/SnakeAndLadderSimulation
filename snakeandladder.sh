#!/bin/bash/ -x

echo "Welcome to Snake and Ladder Game!"

#variable
position=0
playerPosition=0

while [ $position -lt 100 ]
do
	diceResult=$(( RANDOM%6+1 ))
	moves=$(( RANDOM%3+1 ))
	case $moves in
			1)
				position=$(( $position )) ;;
			2)
				position=$(( $position + $diceResult )) ;;
			3)
				position=$(( $position - $diceResult ))
				if [ $position -lt 0 ]
				then
						position=0
				fi
 				;;
	esac

echo $position
done

