all: README.md

README.md:guessinggame.sh
	touch README.md
	echo "# The Unix workbench course project" >> README.md	
	echo "## The guessinggame" >> README.md
	date >> README.md
	echo "The number of lines in the guessinggame script are:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
