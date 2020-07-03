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

#Use Case 7
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
while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
      ((totalWorkingDays++))
      empCheck=$((RANDOM % 3))
      empHrs="$( getWorkHrs $empCheck )"
      totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))
echo "TotalSalary=$totalSalary

#Use Case 8
#!/bin/bash -x
isPartTime=1
isFulltime=2
maxHrsInMonth=10
empRatePerHr=20
numWorkingDays=20
totalEmpHr=0
totalWorkingDays=0
while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
   ((totalWorkingDays++))
   empCheck=$((RANDOM % 3))
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
    totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))
echo "TotalSalary=$totalSalary"

#Use Case 9
#!/bin/bash
declare monthlyAttendance;
declare dailyWorkingHours;
declare dailyWage;
isPartTimeEmployee=$(( RANDOM % 4));
absentsInMonth=0;
hoursOfWork=0;
totalHoursOfWork=0;
wagePerHour=20;
workingDays=20;
monthlyWage=0;
function getAttendance() {
    local -n declare isPresent=$1;
    for (( counter=1; counter<=$workingDays; counter++))
    do
        isPresent[$counter]=$(( RANDOM % 5));
    done
}
function getWorkHours() {
    local -n declare tempDailyWorkingHours=$1;
    for (( counter=1; counter<=$workingDays; counter++))
    do
    workHours=0;
    if (( ${monthlyAttendance[$counter]} != 0)); then
        if (( $isPartTimeEmployee == 1)); then
            workHours=$(( ( RANDOM % 2 )  + 3))
        else
            workHours=$(( ( RANDOM % 2 )  + 7))
        fi
    fi
    tempDailyWorkingHours[$counter]=$workHours;
    done
}
getAttendance monthlyAttendance;
getWorkHours dailyWorkingHours;

for (( counter=1; counter<=$workingDays && $totalHoursOfWork<100; counter++))
    do
    case ${monthlyAttendance[$counter]} in
        0)
            echo "not present" ;;
        *)
            echo "present"
            case $isPartTimeEmployee in
                1)
                    echo "Part Time Employee"
                    hoursOfWork=${dailyWorkingHours[$counter]};
                    toDayWage=$(( $hoursOfWork * $wagePerHour));
                    monthlyWage=$(( $monthlyWage + $toDayWage ));
                    ;;
                *)
                    echo "Full Time Employee";
                    hoursOfWork=${dailyWorkingHours[$counter]};
                    toDayWage=$(( $hoursOfWork * $wagePerHour));
                    monthlyWage=$(( $monthlyWage + $toDayWage ));
                    ;;
             esac
        ;;
    esac
    dailyWage[$counter]=$toDayWage;
    totalHoursOfWork=$(( $totalHoursOfWork + $hoursOfWork));
done
echo "Monthly Wage="$monthlyWage;
echo "Daily Wage="${dailyWage[@]};


