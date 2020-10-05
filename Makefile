all:README.md

README.md:
	@echo "# Guessing Game" > README.md
	@echo -n "Date : " >> README.md
	@date +'%D' >> README.md
	@echo " " >> README.md
	@echo -n "Time : " >> README.md
	@date +'%X' >> README.md
	@echo " " >> README.md
	@echo -n "Lines of code: ">> README.md
	@wc -l guessinggame.sh | egrep -o "[0-9]+" >>README.md

clean:
	@rm README.md
