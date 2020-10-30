all: README.md

README.md: guessinggame.sh
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub - Jaganmohan Krishnamoorthy :) " > README.md
	echo "## "  >> README.md
	echo "## "  >> README.md
	echo "## The date and time at which make was run: \c" >> README.md
	date >> README.md
	echo "## "  >> README.md
	echo "## "  >> README.md
	echo "## The number of lines of code contained in guessinggame.sh: \c"  >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "## "  >> README.md
	echo "##"  >> README.md

clean:
	rm README.md
