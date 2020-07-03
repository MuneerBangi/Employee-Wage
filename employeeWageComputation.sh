#Use Case 1
#!/bin/bash -x
isPresent=1
randomcheck=$((RANDOM % 2))
if [ $isPresent -eq $randomcheck ]
then
        echo "Employee is present"
else
        echo "Employee is absent"
fi

#Use Case 2
#!/bin/bash -x
isPresent=1
randomcheck=$((RANDOM % 2))
if [ $isPresent -eq $randomcheck ]
then
        echo "Employee is present"
        empRatePerHr=20;
        empHrs=8;
        salary=$(($empHrs*$empRatePerHr))
        echo "salary=$salary"
else
        echo "Employee is absent"
        echo "salary=0"
fi

#Use Case 3
#!/bin/bash -x
isPartTime=1
isFulltime=2
empRatePerHr=20;
randomcheck=$((RANDOM % 2))
if [ $isFulltime -eq $randomcheck ]
	then
   empHrs=8;
	elif [ $isPartTime -eq $randomcheck ]
		then
   	empHrs=4;
fi
salary=$(($empHrs*$empRatePerHr))
echo "salary=$salary"

#Use Case 4
#!/bin/bash -x
isPartTime=1
isFulltime=2
empRatePerHr=20
numWorkingDays=20
for (( day=1; day<=$numWorkingDays; day++ ))
do
   empCheck=$((RANDOM % 2))
      case $empCheck in
         $isFulltime)
               empHrs=8
               ;;
         $isPartTime)
               empHrs=4
               ;;
         *)
         empHrs=0
               ;;
      esac
      salary=$(($empHrs*$empRatePerHr))
      totalSalary=$(($totalSalary+$salary))
done
echo "TotalSalary=$totalSalary"

