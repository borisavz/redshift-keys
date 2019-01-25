work=$(cat /home/borisavz/.svetlo/work)
if [ "$work" == "false" ]
then
	redshift -O 6500
else
	color=$(cat /home/borisavz/.svetlo/temp)
	redshift -O $color
fi
