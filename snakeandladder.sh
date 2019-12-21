
#!/bin/bash/ -x

echo "Welcome to Snake and Ladder Game!"

#CONSTANT
START_POSITION=0
WIN_POSITION=100
NO_PLAY=1
LADDER_MOVE=2
SNAKE_MOVE=3

#variable

positionNumber=0
diceCount=0


function rollingDice()
{
	positionNumber=$1
	diceResult=$(( RANDOM%6+1 ))
	diceCount=$(( $diceCount+1 ))
	getMove=$(( RANDOM%3+1 ))
	case $getMove in
		$NO_PLAY)
			positionNumber=$(( $positionNumber ))	;;

		$LADDER_MOVE)
			positionNumber=$(( $positionNumber + $diceResult ))
			if [ $positionNumber -gt 100 ]
			then
				positionNumber=$(( $positionNumber - $diceResult ))
			fi
			;;

		$SNAKE_MOVE)
			positionNumber=$(( $positionNumber - $diceResult ))
			if [ $positionNumber -lt 0 ]
			then
				positionNumber=0
			fi
 			;;
	esac
echo "$positionNumber $count"
}

function checkingWhoWins()
{
	playerTurn=1
	playerOnePos=0
	playerTwoPos=0

	while [ $playerOnePos -lt $WIN_POSITION ] && [ $playerTwoPos -lt $WIN_POSITION ]
	do
		if [ $playerTurn -eq 1 ]
		then
			playerOnePos=$( rollingDice $playerOnePos )
			positionNumber=$playerOnePos
			playerTurn=2
		else
			playerTwoPos=$( rollingDice $playerTwoPos )
			positionNumber=$playerTwoPos
			playerTurn=1
		fi
done

	if [ $playerOnePos -eq $WIN_POSITION ]
	then
		echo "playerOne is Winner!!"
	else
		echo "playerTwo is Winner!!"
	fi
}
checkingWhoWins


