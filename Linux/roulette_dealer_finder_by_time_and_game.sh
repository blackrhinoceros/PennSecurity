
#!/bin/bash
# 1ST  argument = time (HH)
# 2ND  argument = date (MMDD)
# 3RD  argument = game (B = Blackjack, R = Roulette, P = Poker (Texas Hold 'em))

script="$0"

first="$1"

second="$2"

third="$3"

#echo "The script name : $script"
#echo "The first argument :  $first"
#echo "The second argument : $second"
#echo "the third argument : $third"
#echo " "

if [ $3 = 'B' ]

then 

echo 
echo BLACKJACK
echo 
echo TIME---------DEALER
cat ~/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/$2_Dealer_schedule | grep $1 | awk -F ' ' '{print $1, $2, $3, $4}'



elif [ $3 = 'R' ]
then 
echo 
echo ROULETTE
echo 
echo TIME---------DEALER
cat ~/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/$2_Dealer_schedule | grep $1 | awk -F ' ' '{print $1, $2, $5, $6}'

elif [ $3 = 'P' ]
then 
echo 
echo POKER - TEXAS HOLD EM
echo TIME---------DEALER
cat ~/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/$2_Dealer_schedule | grep $1 | awk -F ' ' '{print $1, $2, $7, $8}'

else
echo "Try again. Input B for Blackjack, R for Roulette, P for Poker- Texas Hold em"

fi



