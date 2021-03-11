
#!/bin/bash

script="$0"

first="$1"

second="$2"

third="$3"

echo " "

echo "TIME         DEALER"

cat ~/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/$1_Dealer_schedule | grep $2 | grep -i $3 | awk -F ' ' '{print $1, $2, $5, $6}'






