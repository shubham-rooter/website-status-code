#!/bin/bash
# Author Shubham Rooter 
BLUE='\033[94m'
RED='\033[91m'
GREEN='\033[92m'
ORANGE='\033[93m'
RESET='\e[0m'
TARGET="$1"
CURRENT_PATH=$(pwd)


if [ -z $TARGET ]; then
  
echo -e "$GREEN ░██████╗██╗░░██╗██╗░░░██╗██████╗░██╗░░██╗░█████╗░███╗░░░███╗  ██████╗░░█████╗░░█████╗░████████╗███████╗██████╗░"
echo -e "$GREEN ██╔════╝██║░░██║██║░░░██║██╔══██╗██║░░██║██╔══██╗████╗░████║  ██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗"
echo -e "$GREEN ╚█████╗░███████║██║░░░██║██████╦╝███████║███████║██╔████╔██║  ██████╔╝██║░░██║██║░░██║░░░██║░░░█████╗░░██████╔╝"
echo -e "$GREEN ░╚═══██╗██╔══██║██║░░░██║██╔══██╗██╔══██║██╔══██║██║╚██╔╝██║  ██╔══██╗██║░░██║██║░░██║░░░██║░░░██╔══╝░░██╔══██╗"
echo -e "$GREEN ██████╔╝██║░░██║╚██████╔╝██████╦╝██║░░██║██║░░██║██║░╚═╝░██║  ██║░░██║╚█████╔╝╚█████╔╝░░░██║░░░███████╗██║░░██║"
echo -e "$GREEN ╚═════╝░╚═╝░░╚═╝░╚═════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝  ╚═╝░░╚═╝░╚════╝░░╚════╝░░░░╚═╝░░░╚══════╝╚═╝░░╚═╝ "
  	echo ""
	echo -e "$GREEN [+] by Shubham Rooter"
	echo -e "$GREEN [+]https://github.com/shubham-rooter $RESET"
	echo -e "$GREEN [-] Usage: Rooterhttpscan  <Subdomainlist.txt>$RESET"
	exit
fi

if [[ $TARGET == "--help" ]] || [[ $TARGET == "-h" ]]; then
  
echo -e "$BLUE ░██████╗██╗░░██╗██╗░░░██╗██████╗░██╗░░██╗░█████╗░███╗░░░███╗  ██████╗░░█████╗░░█████╗░████████╗███████╗██████╗░"
echo -e "$BLUE ██╔════╝██║░░██║██║░░░██║██╔══██╗██║░░██║██╔══██╗████╗░████║  ██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗"
echo -e "$BLUE ╚█████╗░███████║██║░░░██║██████╦╝███████║███████║██╔████╔██║  ██████╔╝██║░░██║██║░░██║░░░██║░░░█████╗░░██████╔╝"
echo -e "$BLUE ░╚═══██╗██╔══██║██║░░░██║██╔══██╗██╔══██║██╔══██║██║╚██╔╝██║  ██╔══██╗██║░░██║██║░░██║░░░██║░░░██╔══╝░░██╔══██╗"
echo -e "$BLUE ██████╔╝██║░░██║╚██████╔╝██████╦╝██║░░██║██║░░██║██║░╚═╝░██║  ██║░░██║╚█████╔╝╚█████╔╝░░░██║░░░███████╗██║░░██║"
echo -e "$BLUE ╚═════╝░╚═╝░░╚═╝░╚═════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝  ╚═╝░░╚═╝░╚════╝░░╚════╝░░░░╚═╝░░░╚══════╝╚═╝░░╚═╝ "
echo ""
	echo -e "$GREEN [+] by Shubham Rooter"
	echo -e "$GREEN [+] https://github.com/shubham-rooter"
    echo -e "$GREEN [+] Find alive host $RESET"
	echo -e "$GREEN [-] Usage: Rooterhttpscan  <Subdomainlist.txt>$RESET"
    exit
fi

if [ ! -f $TARGET ]; then
    echo -e "$RED [+] ---------  File Not Found -------------- [+] $RESET"
    echo -e "$RED [+] ---------  Check - FILE PATH -------------- [+] $RESET"
    exit
fi

createdir=$(mkdir -p "$CURRENT_PATH/live-dead-domains/")
FILENAME=$( basename $TARGET )
  
echo -e "$ORANGE ░██████╗██╗░░██╗██╗░░░██╗██████╗░██╗░░██╗░█████╗░███╗░░░███╗  ██████╗░░█████╗░░█████╗░████████╗███████╗██████╗░"
echo -e "$ORANGE ██╔════╝██║░░██║██║░░░██║██╔══██╗██║░░██║██╔══██╗████╗░████║  ██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗"
echo -e "$ORANGE ╚█████╗░███████║██║░░░██║██████╦╝███████║███████║██╔████╔██║  ██████╔╝██║░░██║██║░░██║░░░██║░░░█████╗░░██████╔╝"
echo -e "$ORANGE ░╚═══██╗██╔══██║██║░░░██║██╔══██╗██╔══██║██╔══██║██║╚██╔╝██║  ██╔══██╗██║░░██║██║░░██║░░░██║░░░██╔══╝░░██╔══██╗"
echo -e "$ORANGE ██████╔╝██║░░██║╚██████╔╝██████╦╝██║░░██║██║░░██║██║░╚═╝░██║  ██║░░██║╚█████╔╝╚█████╔╝░░░██║░░░███████╗██║░░██║"
echo -e "$ORANGE ╚═════╝░╚═╝░░╚═╝░╚═════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝  ╚═╝░░╚═╝░╚════╝░░╚════╝░░░░╚═╝░░░╚══════╝╚═╝░░╚═╝ "
echo -e ""
echo -e "$GREEN [+] by Shubham Rooter"
echo -e "$GREEN [+] https://github.com/shubham-rooter"
echo -e "$GREEN [+] Find alive host $RESET"
echo -e "$GREEN [-] Usage: Rooterhttpscan  <Subdomainlist.txt>$RESET"
echo -e "$ORANGE + ------------------------------=[Gathering Subdomains]=-------------- +$RESET"
echo -e ""
for foo in $(cat $TARGET)
do
    ping -c1 -W1 $foo > /dev/null 2>&1
    if [[ $? -eq 0 ]];
    then
        echo -e "$GREEN [+]--- LIVE ---[+]  $foo $RESET"
        echo -e "$foo" | tee -a $CURRENT_PATH/live-dead-domains/live-$FILENAME > /dev/null 2>&1

    else
                echo -e "$RED [+]--- DEAD ---[+]  $foo $RESET"

       echo -e "$foo" | tee -a $CURRENT_PATH/live-dead-domains/dead-$FILENAME > /dev/null 2>&1
    fi
done
echo -e ""
echo -e "$BLUE  Working SubDomains saved to: live-dead-domains/live-$FILENAME"
echo -e "$BLUE  Inlive SubDomains saved to: live-dead-domains/dead-$FILENAME"
vcounter=$(cat $CURRENT_PATH/live-dead-domains/live-$FILENAME | sort -u | wc -l )
fcounter=$(cat $CURRENT_PATH/live-dead-domains/dead-$FILENAME | sort -u | wc -l )
orgcounter=$(cat $TARGET | sort -u | wc -l )
echo -e "$RED   TOTAL DOMAINS : ${orgcounter} , LIVE : ${vcounter} , DOWN : ${fcounter}  $RESET"
echo -e "$GREEN + -- ----------------------------=[Thanks For Using]=----------------------------------- -- +$RESET"
