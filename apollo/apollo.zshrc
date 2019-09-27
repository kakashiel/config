export APOLLO="$HOME/work/apollo/apollo/git_apollo"
alias approd="ssh  -i $MYCONF/apollo/ssh/apolloProd root@web02.apollo-conseil.com"
alias aplog="sudo ssh -i ~/.ssh/dev1 ali@193.70.14.209 'cd /home/ali/apollo/apollo/git_apollo/ && docker-compose logs --tail=1000 && cd -'"
alias apticket="rsync -rv -e 'ssh -i /Users/adrienloustaunau/.ssh/apolloProd' --exclude-from=/Users/adrienloustaunau/work/apollo/apollo/git_apollo/scripts/exclude root@web02.apollo-conseil.com:/home/ /Users/adrienloustaunau/work/apollo/apollo/git_apollo/../../"
