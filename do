#!/bin/sh

save() {
/opt/bitnami/mysql/bin/mysqldump -u root -pbitnami --skip-extended-insert bitnami_joomla > /opt/bitnami/apps/joomla/htdocs/database.sql
}
load() {
	/opt/bitnami/mysql/bin/mysql -u root -pbitnami bitnami_joomla < /opt/bitnami/apps/joomla/htdocs/database.sql
}
help() {
cat <<EOF

help       - this screen
push	   - push to git with db
fetch      - fetch from git with db
reset      - clean, reset, load
db save    - save db
db load    - load db
restart	   - restart apache

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
elif [ "x$1" = "xdb" ]; then
	if [ "x$2" = "xsave" ]; then
		save
	elif [ "x$2" = "xload" ]; then
		load
	else
	help
	fi
elif [ "x$1" = "xrestart" ]; then	 
	/opt/bitnami/ctlscript.sh restart apache
else
help
fi
