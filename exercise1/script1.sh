#!/bin/bash
echo "1) List of users in your ubuntu box"
echo "2) Kernel version"
echo "3) Distribution name and version"
echo "4) Identity of the user"
echo "5) Privilege escalation to administrator"
echo "6) Exit"



function call_fn(){

read -p 'Select your choice:' NUMBER

case "$NUMBER" in
   "1")
       cat /etc/passwd
       call_fn
      ;;
   "2")
       uname -r
       call_fn
      ;;
   "3")
      lsb_release -a
      call_fn
      ;;
   "4")
      whoami
      call_fn
      ;;
   "5")
      sudo
      call_fn
      ;;
   "6")
      exit
      ;;
   *)
     echo 'Please enter a reognised command'
     ;;
esac

}

call_fn




