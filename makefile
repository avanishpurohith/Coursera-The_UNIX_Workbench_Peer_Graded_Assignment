all: README.md

README.md:
	  echo '# Guessing Game' > README.md
	  echo "* The date and time at which \`make\` was run is on: $(date)" >> README.md
	  echo "* Number of lines in \`guessinggame.sh\` are: $(< guessinggame.sh wc -l)" >> README.md
