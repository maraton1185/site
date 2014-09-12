#!/bin/sh
help() {
	echo "Hello World 123"
cat <<EOF

help       - this screen
push
fetch
reset

EOF
}

if [ "x$1" = "xhelp" ] || [ "x$1" = "x" ]; then
    help
elif [ "x$1" = "xpush" ]; then
	git add --all
	git commit -a -m '-'
	git push origin master	
else
	help
fi
