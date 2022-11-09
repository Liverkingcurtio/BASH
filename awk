cat /etc/passwd | awk '/system/{print $0}'              or          awk '/system/{print $0}' /etc/passwd
-returns any line in /etc/passwd with system in it

cat /etc/passwd | awk '/system/{print $0}' | awk '{print $2}'         or          awk '/system/{print $0}' /etc/passwd | awk '{print $2}'
-returns second element delimited by spaces

cat /etc/passwd | awk '/system/{print $0}' | awk -F: '{print $2}'         or        awk '/system/{print $0}' /etc/passwd | awk -F: '{print $2}' 
-returns second element delimited by semi colons


echo "Python is better than Bash"
Python is better than bash

echo "Python is better than Bash" | awk '{$1=$5="";print "Something"$0"Nothing"}'
-returns "Something is better than Nothing" replacing bash and python

SUBJECT=MOM
VERB=DAD
OBJECT=BROTHER
echo "managers manage equitment" | awk -v ss=$SUBJECT -v vv=$VERB -v oo=$OBJECT '{$1=ss;$2=vv;$3=oo;print}'
-return "MOM DAD BROTHER"
