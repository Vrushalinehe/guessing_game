
function guess {

	no_of_files=$(ls | wc -w)
	echo $no_of_files
	flag=0

	while [[ $flag -eq 0 ]]
	do
		echo "Guess no of files"
		read n
		
		if [[ $n -eq $no_of_files ]]
		then 
			echo "Congratulations!You guessed it right."
			let flag=$flag+1
		elif [[ $n -gt $no_of_files ]]
		then
			echo "Guessed high"
		else
			echo "Guessed low"
		fi
	done
}
guess

