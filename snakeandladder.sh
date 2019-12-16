
#!/bin/bash/ -x

echo "Welcome to Snake and Ladder Game!"

#CONSTANT
START_POSITION=0
WIN_POSITION=100
NO_PLAY=1
LADDER_MOVE=2
SNAKE_MOVE=3

#variable
player=1
position=0
diceCount=0
playerOne=0
playerTwo=0

function rollingDice()
{
	position=$1
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
echo "$position $count"
}

function checkingWhoWins()
{
	while [ $playerOne -lt $WIN_POSITION ] && [ $playerTwo -lt $WIN_POSITION ]
	do
		if [ $player -eq 1 ]
		then
			playerOne=$( rollingDice $playerOne )
			position=$playerOne
			player=2
		else
			playerTwo=$( rollingDice $playerTwo )
			position=$playerTwo
			player=1
		fi
done

	if [ $playerOne -eq $WIN_POSITION ]
	then
		echo "playerOne is Winner!!"
	else
		echo "playerTwo is Winner!!"
	fi
}
checkingWhoWins


