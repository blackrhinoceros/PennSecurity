#!/bin/bash
echo March 10 >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses
grep -i '05:00:00 AM' 0310_Dealer_schedule | awk -F ' ' '{print $1, $2, $5, $6}' >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses
grep -i '08:00:00 AM' 0310_Dealer_schedule | awk -F ' ' '{print $1, $2, $5, $6}' >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses
grep -i '02:00:00 PM' 0310_Dealer_schedule | awk -F ' ' '{print $1, $2, $5, $6}' >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses
grep -i '08:00:00 PM' 0310_Dealer_schedule | awk -F ' ' '{print $1, $2, $5, $6}' >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses 
grep -i '11:00:00 PM' 0310_Dealer_schedule | awk -F ' ' '{print $1, $2, $5, $6}' >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses 
echo March 12 >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses
grep -i '05:00:00 AM' 0312_Dealer_schedule | awk -F ' ' '{print $1, $2, $5, $6}' >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses 
grep -i '08:00:00 AM' 0312_Dealer_schedule | awk -F ' ' '{print $1, $2, $5, $6}' >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses 
grep -i '02:00:00 PM' 0312_Dealer_schedule | awk -F ' ' '{print $1, $2, $5, $6}' >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses 
grep -i '08:00:00 PM' 0312_Dealer_schedule | awk -F ' ' '{print $1, $2, $5, $6}' >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses 
grep -i '11:00:00 PM' 0312_Dealer_schedule | awk -F ' ' '{print $1, $2, $5, $6}' >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses 
echo March 15 >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses 
grep -i '05:00:00 AM' 0315_Dealer_schedule | awk -F ' ' '{print $1, $2, $5, $6}' >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses 
grep -i '08:00:00 AM' 0315_Dealer_schedule | awk -F ' ' '{print $1, $2, $5, $6}' >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses 
grep -i '02:00:00 PM' 0315_Dealer_schedule | awk -F ' ' '{print $1, $2, $5, $6}' >> /home/sysadmin/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_losses 

