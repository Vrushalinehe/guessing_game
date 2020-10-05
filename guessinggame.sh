
function guess {

	no_of_files=$(ls | wc -w)
	echo $no_of_files
	flag=0

	while [[ $flag -eq 0 ]]
	do
		echo "Guess how many files are in the current directory?"
		read n
		n1=$(echo "$no_of_files / 2" | bc)
		n2=$(echo "$no_of_files * 2" | bc)

		if [[ $n -eq $no_of_files ]]
		then 
			echo "Congratulations!You guessed it right."
			let flag=$flag+1
		elif [[ $n -ge $n2 ]]
		then
			echo "The guess was too high"
			echo "TRY AGAIN"
		elif [[ $n -le $n1 ]]
		then
			echo "The guess was too low"
			echo "TRY AGAIN"
		elif [[ $n -lt $no_of_files && $n -gt $n1 ]]
		then
			echo "The guess was low"
			echo "TRY AGAIN"
		else
			echo "The guess was high"
			echo "TRY AGAIN"
		fi
	done
}
guess

make -B -f Makefile

