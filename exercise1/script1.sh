#!/bin/bash
read -p 'Select your choice:' NUMBER

case "$NUMBER" in
   "1")
       cat /etc/passwd
      ;;
   "2")
       uname -r
      ;;
   "3")
      lsb_release -a
      ;;
   "4")
      whoami
      ;;
   "5")
      sudo
      ;;
   "6")
      exit
      ;;
   *)
     echo 'Please enter a reognised command'
     ;;
esac



