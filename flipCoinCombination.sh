#!/bin/bash

echo "Welcome to FlipCoin Combination Program" 
read -p "Enter how many times to flip: " flips

# for Singlet
declare -A Singletstore
heads=0;
tails=0;

function flipSinglet() {
for ((i=1;i<=flips;i++))
do
	s=""
	for((j=0;j<1;j++))
	do
		value=$((RANDOM%2))
		if [ $value -eq 1 ]
			then
				s=$s"H"
				heads=$(( $heads+1 ))
		else
			s=$s"T"
			tails=$(( $tails+1 ))
		fi
	done
echo final key : $s

Singletstore["$s"]=$(( ${Singletstore["$s"]} + 1 ))
done
}

flipSinglet

echo ${!Singletstore[@]}
echo ${Singletstore[@]}

MaxValueCoin=$( printf "%s\n" ${!Singletstore[@]} ${Singletstore[@]} | sort -nr | head -1 )
percOfMaxCoin=$(( $MaxValueCoin * 100 / $flips ))
echo Percentage is
echo $percOfMaxCoin

declare -A Doubletstore
heads=0;
tails=0;

function flipDoublet() {
for (( i=1;i<=$flips;i++ ))
do
   s=""
   for(( j=0;j<2;j++ ))
   do
      value=$(( RANDOM % 2 ))
      if [ $value -eq 1 ]
         then
            s=$s"H"
            heads=$(( $heads+1 ))
      else
         s=$s"T"
         tails=$(( $tails+1 ))
      fi
   done
echo final key : $s

Doubletstore["$s"]=$(( ${Doubletstore["$s"]} + 1 ))
done
}

flipDoublet

echo ${!Doubletstore[@]}
echo ${Doubletstore[@]}

MaxValueCoin1=$( printf "%s\n" ${!Doubletstore[@]} ${Doubletstore[@]} | sort -nr | head -1 )
percOfMaxCoin1=$(( $MaxValueCoin1 * 100 / $flips ))
echo Percentage is
echo $percOfMaxCoin1

declare -A Tripletstore
heads=0;
tails=0;

function flipTriplet() {
for (( i=1;i<=$flips;i++ ))
do
   s=""
   for(( j=0;j<3;j++ ))
   do
      value=$(( RANDOM % 2 ))
      if [ $value -eq 1 ]
         then
            s=$s"H"
            heads=$(( $heads+1 ))
      else
         s=$s"T"
         tails=$(( $tails+1 ))
      fi
   done
echo final key : $s

Tripletstore["$s"]=$(( ${Tripletstore["$s"]} + 1 ))
done
}

flipTriplet

echo ${!Tripletstore[@]}
echo ${Tripletstore[@]}

MaxValueCoin2=$( printf "%s\n" ${!Tripletstore[@]} ${Triplestore[@]} | sort -nr | head -1 )
percOfMaxCoin2=$(( $MaxValueCoin2 * 100 / $flips ))
echo Percentage is
echo $percOfMaxCoin2
