Using ONLY sed, write all lines from $HOME/passwd into $HOME/PASS/passwd.txt that do not end with either /bin/sh or /bin/false

sed '/\/bin\/false/d;/\/bin\/sh/d' $HOME/passwd > $HOME/PASS/passwd.txt
