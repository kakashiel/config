#! /bin/bash
v=0.61

# ~~~ Main ~~~                                                                
echo -e "\e[92m     _____            _  _            _    _        "
echo -e "    |     | ___  _ _ | ||_| ___  ___ | |_ | |_  ___ "
echo -e "    | | | || . || | || || ||   || -_||  _||  _|| -_|"
echo -e "    |_|_|_||___||___||_||_||_|_||___||_|  |_|  |___|"
echo -e " \e[34m###################\e[32m V $v by Kwk \e[34m####################\e[39m"

if [ $# -ge 1 ] && [ -e $1 ]; then
	echo -e "\e[93m > Analyse de \e[92m$1\e[93m ..."
	echo -e "\e[35m~~~~~~~~~~~~~~~~~~ Caractère avant # ~~~~~~~~~~~~~~~~~~\e[39m"
	grep -ne ".\+#" $1

	echo -e "\e[31m~~~~~~~~~~~~~~~~ Plus de 80 caractères ~~~~~~~~~~~~~~~~\e[39m"
	nbline=1
	while read line; do
		if [ $(($(echo $line | wc -m) - 1)) -gt 80 ]; then
			echo "$nbline:$line"
		fi
		nbline=$(($nbline + 1))
	done < $1
	
	echo -e "\e[31m~~~~~~~~~~~~~~ Espace(s) en fin de ligne ~~~~~~~~~~~~~~\e[39m"
	grep -ne " $" $1

	echo -e "\e[31m~~~~~~~~~~~~ Espace manquant après mot clé ~~~~~~~~~~~~\e[39m"
	grep -ne "for(" $1
	grep -ne "while(" $1
	grep -ne "if(" $1 #Works for else if too :D
	grep -ne "sizeof(" $1
	
	echo -e "\e[31m~~~~~~~~~~ Espace(s) après / avant parenthèse ~~~~~~~~~\e[39m"
	grep -ne "( " $1
	grep -ne " )" $1

	echo -e "\e[31m~~~~~~~~~~~~~~~ && ou || en fin de ligne ~~~~~~~~~~~~~~\e[39m"
	grep -ne "||$" $1
	grep -ne "&&$" $1

	echo -e "\e[31m~~~~~~~~~~~~~~~~~~~~~~ Tabulation ~~~~~~~~~~~~~~~~~~~~~\e[39m"
	grep -ne "	" $1

	echo -e "\e[31m~~~~~~~~~~~~~~~~~ Accolade mal placée ~~~~~~~~~~~~~~~~~\e[39m"
	grep -ne "[^ ]\+{" $1
	grep -ne "[^ ]\+}" $1
	grep -ne "do$" $1
	# PAS COMPLET !

	echo -e "\e[31m~~~~~~~~~~~ Espaces autour d'un == >= <= != ~~~~~~~~~~~\e[39m"
	grep -ne "\([^ ]==\)\|\(==[^ ]\)" $1
	grep -ne "\([^ ]<=\)\|\(<=[^ ]\)" $1
	grep -ne "\([^ ]>=\)\|\(>=[^ ]\)" $1
	grep -ne "\([^ ]!=\)\|\(!=[^ ]\)" $1
	
	echo -e "\e[31m~~~~~~~~~~~~~~~~ Espaces autour d'un = ~~~~~~~~~~~~~~~~\e[39m"
	grep -ne "\([^ =!*%/+-><]=[^=]\)\|\([^!*%/=+-><]=[^ =]\)" $1

	echo -e "\e[31m~~~~~~~~~~~~~~ Espaces autour d'un +-/%|& ~~~~~~~~~~~~~\e[39m"
	grep -ne "\([^ +]+[^+=]\)\|\([^+]+[^ +=]\)" $1
	grep -ne "\([^ -]-[^=>-]\)\|\([^-]-[^ >=-]\)" $1
	grep -ne "\([^ ]%[^=]\)\|\(%[^ =]\)" $1
	grep -ne "\([^ ]\/[^=]\)\|\(\/[^ =]\)" $1
	grep -ne "\([^ |]|[^|=]\)\|\([^|]|[^ |=]\)" $1
	grep -ne "\([^ &]&[^&=]\)\|\([^&]&[^ &=]\)" $1
	# .=. pour pas matcher avec les autres occurences !!!
	# Pas possible de gérer quand les symboles sont dans des guillements
	# Problème du % à cause des printf
	#grep -ne "\([^ ]\*[^=]\)\|\(\*[^ =]\)" $1 # Problème à cause des pointeurs!

	echo -e "\e[31m~~~~~~~~~~ Espaces autour d'un += -= *= %= /= ~~~~~~~~~\e[39m"
	grep -ne "\([^ ]+=\)\|\(+=[^ ]\)" $1
	grep -ne "\([^ ]-=\)\|\(-=[^ ]\)" $1
	grep -ne "\([^ ]\*=\)\|\(\*=[^ ]\)" $1
	grep -ne "\([^ ]\/=\)\|\(\/=[^ ]\)" $1
	grep -ne "\([^ ]\%=\)\|\(\%=[^ ]\)" $1
	

	echo -e "\e[31m~~~~~~~~~~~~~~~~ * pointeur mal placée ~~~~~~~~~~~~~~~~\e[39m"
	grep -ne "char\*" $1
	grep -ne "int\*" $1
	grep -ne "short\*" $1
	grep -ne "long\*" $1
	grep -ne "float\*" $1
	grep -ne "double\*" $1
  grep -ne "[^ ]\*" $1

	echo -e "\e[31m~~~~~~~~~~~~~~ Parenthèse après un return ~~~~~~~~~~~~~\e[39m"
	grep -ne "return (" $1

echo -e " \e[34m###################\e[32m V $v by Kwk \e[34m####################\e[39m"

else
	echo -e "\e[31m[!] Veuilez préciser un (et un seul) fichier valide.\e[39m"
fi

# ~~~ Functions ~~~
