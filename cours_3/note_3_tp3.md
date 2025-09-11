1. ls -lA /usr/include/*.h
2. mount /dev/hdb2 /dos
3. date +"%w %m %d"
4. cat fichier1 >> fichier2
5. alias test=ps
6. wc -l /etc/passwd
7. grep bash$ /etc/passwd | wc -l
8. find $HOME -maxdepth 1 -ctime +3
9. cut -d : -f 1,3,4 /etc/passwd
10. grep -E "(bash|root)" /etc/passwd
11. ls A[2-4][0-9].ps

12. ls -l /etc/group
    getfacl /etc/group

13. sort -n /etc/passwd
14. pwd
15. sed -n '3,10p' /etc/passwd           ||| info sed
16. cat /etc/passwd | tr ":" "-"
17. echo bonjour>cours_3/text && ln cours_3/text salutation
18. ls -l text -> 2
19. echo "les amis" >> salutation
20. ps
21. ps axo stat,euid,ruid,tty,tpgid,sess,pgrp,ppid,pid,pcpu,comm | grep bash
22. firefox ||| ctrl-c ||| firefox &


---
TP : AWK
---


1. awk {print} /etc/passwd
2. awk -F: '{print $1;}' /etc/passwd
3. awk -F: '{print $1" "$3" "$4;}' /etc/passwd
4. awk '{print FNR" "$0;}' /etc/passwd
5. awk 'END{print NR}' /etc/passwd
6. cat /etc/passwd | tee passwd1 >passwd2
7. awk "ENDFILE{print FILENAME}" /etc/passwd passwd1 passwd2

