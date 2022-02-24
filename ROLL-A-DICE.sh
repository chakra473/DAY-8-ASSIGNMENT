#!/bin/bash -x

declare -A roll
n=10
i=1
j=0
k=0
l=0
m=0
p=0
q=0


while (( j<$n && k<$n && l<$n && m<$n && p<$n && q<$n ))
do
	randomCheck=$(($RANDOM%6+1))
	roll[$i]=$randomCheck
	((i++))
	case $randomCheck in
			1)
			echo "$j ONES"
			((j++))
		;;
			2)
			echo "$k TWOS"
			((k++))
		;;
			3)
			echo "$l THREES"
			((l++))
		;;
			4)
			echo "$m FOURS"
			((m++))
		;;
			5)
			echo "$p FIVES"
			((p++))
		;;
			6)
			echo "$q SIXES"
			((q++))
		;;
esac
done

echo "all the values are ${roll[@]}"

if (($j>$k))&&(($j>$l))&&(($j>$m))&&(($j>$p))&&(($j>$q))
then
	echo	"ONE reached maximum($j) times"
elif (($k>$l))&&(($k>$m))&&(($k>$p))&&(($k>$q))
then
	echo    "TWO reached maximum($k) times"
elif (($l>$m))&&(($l>$p))&&(($l>$q))
then
	echo    "THREE reached maximum($l) times"
elif (($m>$p))&&(($m>$q))
then
	echo    "FOUR reached maximum($m) times"
elif (($p>$q))
then
	echo    "FIVE reached maximum($p) times"
else
	echo    "SIX reached maximum($q) times"
fi

if (($j<$k))&&(($j<$l))&&(($j<$m))&&(($j<$p))&&(($j<$q))
then
        echo    "ONE reached minimum($j) times"
elif (($k<$l))&&(($k<$m))&&(($k<$p))&&(($k<$q))
then
        echo    "TWO reached minimum($k) times"
elif (($l<$m))&&(($l<$p))&&(($l<$q))
then
        echo    "THREE reached minimum($l) times"
elif (($m<$p))&&(($m<$q))
then
        echo    "FOUR reached minimum($m) times"
elif (($p<$q))
then
        echo    "FIVE reached minimum($p) times"
else
        echo    "SIX reached minimum($q) times"
fi
