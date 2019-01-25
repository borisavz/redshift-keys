redshift -x
work=$(cat /home/borisavz/.svetlo/work)
if [ "$work" == "true" ]
then
	echo false > /home/borisavz/.svetlo/work
	redshift -O 6500
	notify-send -t 300 "РЕДШИФТ ИСКЉУЧЕН"
else
	echo true > /home/borisavz/.svetlo/work
	notify-send -t 300 "РЕДШИФТ УКЉУЧЕН"
	color=$(cat /home/borisavz/.svetlo/temp)
	redshift -O $color
fi
