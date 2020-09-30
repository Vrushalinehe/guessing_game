README.md : guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "Date: $(date +'%D')" >> README.md
	echo "Time: $(date +'%T')" >> README.md
	echo "Lines of code: $(wc -l guessinggame.sh)" >> README.md
