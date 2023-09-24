all: readme.md

readme.md:
	echo "# Title: Guessing Game" > README.md
	echo "- make run at: $$(date "+%Y-%m-%d %H:%M:%S")" >> README.md
	echo "- guessinggame.sh number of lines: $$(wc -l guessinggame.sh | egrep -o [0-9]+)" >> README.md