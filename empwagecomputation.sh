#!/bin/bash -x
echo "Welcome to Employee Wage Computation Programm"
function empwagecomputation()
{
ispresent=1
isabsent=0
isparttime=3
Wageperhour=20
workingdaypermonth=20
Totalworkinghrspermonth=100
Check=$((RANDOM%3))
echo $Check
if [ $Check -eq  1 ]
then
	echo "Empployee is present"
	EmployeeWage=$((8*20*20))
	echo "The Full Time Employee Wage is" $EmployeeWage
elif [ $Check -eq 2 ]
then
	echo "Employee is part time present"
	 EmployeeWage=$((4*20*20))
	 echo "The Daily Employee Wage is" $EmployeeWage
else
	EmployeeWage=0
	echo "Employee is Absent"
fi

	case $Check  in 
		   1) echo "Employee is Full time Present "
                EmployeeWage=$((8*20))
                echo "Employee Full time Present wage is"$EmployeeWage
                        ;;
         	2) echo "Employee is Parttime Present "
                EmployeeWage=$((4*20))
                echo "Employee Part time Present wage is"$EmployeeWage
                                ;;
       		*) echo "Employee is absent"
	EmployeeWage=0
                echo "Employeewage is zero"
esac
}
empwagecomputation ;
Totalworkinghrs=$(($EmployeeWage*100))
echo "Wages for Total working Hours of a month" $Totalworkinghrs

echo "The Daily wage is "$EmployeeWage
TotalWage=$(($EmployeeWage*20))
echo "The Total Wage is"$TotalWage
echo "The Daily wage is $EmployeeWage And The Total Wage is $TotalWage"

read -p "Enter the Days for the wages" n
Days=$(($EmployeeWage*$n))
echo "The Daily wage is $EmployeeWage.The Total Wage is"$TotalWage
echo "The Daily wage is $EmployeeWage,The $n days for the wage is $Day and  The Total Wage for a 20DAYS:month is $TotalWage"
