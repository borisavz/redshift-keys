color=$(cat /home/borisavz/.svetlo/temp)
work=$(cat /home/borisavz/.svetlo/work)
if [ "$work" == "false" ]
then
	notify-send -t 300 "РЕДШИФТ ЈЕ ИСКЉУЧЕН"
	exit 0
fi
if [ $color -eq 6500 ]
then
	notify-send -t 300 "НЕ МОЖЕ ВИШЕ ОД 6500"
else
	redshift -x
	color=$((color+250))
	echo $color > /home/borisavz/.svetlo/temp
	redshift -O $color
	notify-send -t 300 "ТЕМПЕРАТУРА БОЈЕ $color"
fi
