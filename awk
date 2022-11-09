cat /etc/passwd | awk '/system/{print $0}'              or          awk '/system/{print $0}' /etc/passwd
-returns any line in /etc/passwd with system in it

cat /etc/passwd | awk '/system/{print $0}' | awk '{print $2}'         or          awk '/system/{print $0}' /etc/passwd | awk '{print $2}'
-returns second element delimited by spaces

cat /etc/passwd | awk '/system/{print $0}' | awk -F: '{print $2}'         or        awk '/system/{print $0}' /etc/passwd | awk -F: '{print $2}' 
-returns second element delimited by semi colons
