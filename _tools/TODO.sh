#/bin/sh
find . -path "./Files/*" -print0|_tools/mp.sh -0 git diff --name-status --exit-code origin/JP --|sed -e "s/M\t//g"|xargs -n 1 -I{} -- git mv {} Files.TODO
