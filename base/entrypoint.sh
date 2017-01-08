if [ -f ./stdin ]
	then
		./runner.sh < ./stdin
	else
		./runner.sh
fi
