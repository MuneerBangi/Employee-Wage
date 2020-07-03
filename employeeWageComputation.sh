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
