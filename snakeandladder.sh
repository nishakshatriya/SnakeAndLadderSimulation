#!/bin/bash/ -x

echo "Welcome to Snake and Ladder Game!"

#CONSTANT
NO_PLAY=1
LADDER_MOVE=2
SNAKE_MOVE=3

#variable
position=0

diceResult=$(( RANDOM%6+1 ))
moves=$(( RANDOM%3+1 ))

case $moves in
		$NO_PLAY)
			playerPosition=$(( $position )) ;;
		$LADDER_MOVE)
			playerPosition=$(( $position + $diceResult )) ;;
		$SNAKE_MOVE)
			playerPosition=$(( $position - $diceResult )) ;;
esac

echo $playerPosition

