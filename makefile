all: README.md

README.md:
	echo "# Guessing Game" > README.md
	echo -n "Created on: " >> README.md
	date >> README.md
	echo -n "Lines of code: ">> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]" >>README.md
