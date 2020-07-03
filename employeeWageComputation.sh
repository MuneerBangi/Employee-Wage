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

#Use Case 5
#!/bin/bash -x
isPartTime=1
isFulltime=2
maxHrsInMonth=10
empRatePerHr=20
numWorkingDays=20
totalEmpHr=0
totalWorkingDays=0
function getWorkHrs() {
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
echo $empHrs
}
while [[ $empHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
      ((totalWorkingDays++))
      empCheck=$((RANDOM % 3))
      empHrs="$( getWorkHrs $empCheck )"
      totalEmpHr=$(($totalEmpHr+$empHrs))
      dailyWage[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))
echo ${dailyWage[@]}

#Use Case 6
#!/bin/bash -x
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;
totalEmpHr=0;
totalWorkingDays=0;
function getWorkHrs() {
   case $empCheck in
      $IS_FULL_TIME)
         empHrs=8;;
      $IS_PART_TIME)
         empHrs=4;;
      *)
         empHrs=0;;
   esac
        echo $empHrs
}
function getEmpWage() {
        echo $(($empHr * $EMP_RATE_PER_HR))
}
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3));
        empHrs="$( getWorkHrs $empCheck )"
        totalEmpHrs=$(($totalEmpHrs+$empHrs))
        dailyWage[$totalWorkingDays]="$( getEmpWage $empHrs )"
done
totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR));
echo ${dailyWage[@]}

