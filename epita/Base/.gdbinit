#défini le prompt de gdb
set prompt gdb$
#affiche les structures de manières plus lisible (1 champ par ligne)

set print pretty on
# n'attend plus que l'utilisateur appuie sur entrée pour continuer l'affichage
set height 0
set width 0
#désactive certains messages d'information de GDB

set verbose off

set disassembly-flavor intel

#source all settings from the peda dir
source ~/config/Base/peda/peda.py

# These are other settings I have found useful
# Intel syntax is more readable
  set disassembly-flavor intel

# When inspecting large portions of code the scrollbar works better than 'less'
   set pagination off

# Keep a history of all the commands typed. Search is possible using ctrl-r
     set history save on
     set history filename ~/.gdb_history
     set history size 32768
     set history expansion on
