#! /bin/sh
mkdir src/
touch README
touch TODO
echo "* lousta_a" > AUTHORS
cp  ~/config/Script/moulinette.sh ./
cp  ~/config/Script/Makefile ./
cat >> .gitignore << EOF
*.sup
.*
*.core
*.o
*.a
*.so
*.swp
*.ppm
*.out
*.sh
EOF
