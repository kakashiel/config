#Function to see all alias which match the first argument
#ex agrep 'git'
agrep (){
    if [ -z $2 ]; 
        then alias |  grep $1; 
    else 
        alias |  grep -E ''"$1"'.*'"$2"'';
    fi
     
}
alias ag="agrep"
