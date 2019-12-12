#!/bin/bash/ -x

echo "Welcome to Snake and Ladder Game!"

#variable
position=0

diceResult=$(( RANDOM%6+1 ))
moves=$(( RANDOM%3+1 ))

case $moves in
		1)
			playerPosition=$(( $position )) ;;
		2)
			playerPosition=$(( $position + $diceResult )) ;;
		3)
			playerPosition=$(( $position - $diceResult )) ;;
esac

echo $playerPosition

