#!/bin/sh


help() {
cat <<EOF

help       - this screen
push	   - push to git with db
fetch      - fetch from git with db
reset      - clean, reset, load

EOF
}

if [ "x$1" = "xhelp" ] || [ "x$1" = "x" ]; then
    help
elif [ "x$1" = "xpush" ]; then
	save
	git add --all
	git commit -a -m '-'
	git push origin master	
elif [ "x$1" = "xfetch" ]; then
	git fetch origin
	git merge origin/master
	load
elif [ "x$1" = "xreset" ]; then
	git clean --f
	git reset --hard
	load
else
help
fi
