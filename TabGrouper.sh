#!/bin/bash
option=$1

shift 1

if [ ! -d ~/.tabgrouper ]
then
  mkdir ~/.tabgrouper
fi

readLinks () {

  while true
  do
    printf "Enter the name of the website:  "
    read -r websiteName
    printf "Enter the link:  "
    read -r link
    if [ -f "$groupName" ]
    then
      echo "$websiteName" >> "$groupName"
      echo "$link" >> "$groupName"
      echo "Added $websiteName to $(basename "$groupName") successfully!"
    else
      echo "Operation unsuccessful :("
    fi

    printf "Do you wanna continue? [y/n]  "
    read -r choice
    if [ "$choice" == "${choice#[Yy]}" ]
    then
      break
    fi

  done

}

listLinks () {

  i=0
  echo "The links in group $(basename "$groupName"):"
  while read -r line
  do
    if ((i % 2 == 0))
    then
      printf "%s -> " "$line"
    else
      echo "$line"
    fi
    i=$((i + 1))
  done < "$groupName"

}

openLinks () {

  i=0
  echo "Opening links in group $(basename "$groupName")"
  while read -r line
  do
    if ((i % 2 != 0))
    then
      open "$line"
    fi
    i=$((i + 1))
  done < "$groupName"

}

case "$option" in
-n|--new) # new group.
  printf "Enter the name of the group:  "
  read -r groupName
  groupName="$HOME/.tabgrouper/$groupName"
  touch "$groupName"
  readLinks
  exit ;;

-a|--add) # add links.
  if [ $# -eq 1 ]
  then
    groupName="$HOME/.tabgrouper/$1"
    if [ -f "$groupName" ]
    then
      readLinks
    else
      echo "Group $(basename "$groupName") not found :("
      echo "You can create it using '-n'"
    fi 
  else
      echo "Invalid arguments :("
      echo "Usage: tabgrouper -a [Group Name]"
  fi
  exit ;;

-l|--listlinks) #list links.
 if [ $# -ge 1 ]
  then
    for group in "$@"
    do
      groupName="$HOME/.tabgrouper/$group"
      if [ -f "$groupName" ]
      then
       listLinks
      else
        echo "Group $(basename "$groupName") not found :("
      fi
    done
  else
      echo "Invalid arguments :("
      echo "Usage: tabgrouper -l [Group Name]"
  fi
  exit ;;

-lg|--listgroups)
 echo "Your Groups:"
 ls ~/.tabgrouper
 exit ;;

-rl|--removelink) #removes link.
 if [ $# -ge 2 ]
  then
    groupName="$HOME/.tabgrouper/$1"
    if [ -f "$groupName" ]
    then
      shift 1
      sed -i "" "/$*/,+1 d" "$groupName"
    else
      echo "Group $(basename "$groupName") not found :("
    fi
  else
      echo "Invalid arguments :("
      echo "Usage: tabgrouper -rl [Group Name] [Website Name]"
  fi
  exit ;;

-rg|--removegroups) #removes groups.
 if [ $# -ge 1 ]
  then
    for group in "$@"
    do
      groupName="$HOME/.tabgrouper/$group"
      if [ -f "$groupName" ]
      then
        rm "$groupName"
        echo "Group $(basename "$groupName") removed successfully!"
      else
        echo "Group $(basename "$groupName") not found :("
      fi
    done
  else
      echo "Invalid arguments :("
      echo "Usage: tabgrouper -rg [Group Name]"
  fi
  exit ;;

-o|--open) #open links.
 if [ $# -ge 1 ]
  then
    for group in "$@"
    do
      groupName="$HOME/.tabgrouper/$group"
      if [ -f "$groupName" ]
      then
       openLinks
      else
        echo "Group $(basename "$groupName") not found :("
      fi
    done
  else
      echo "Invalid arguments :("
      echo "Usage: tabgrouper -o [Group Name]"
  fi
  exit ;;

*)
  echo "-n for new group"
  echo "-a to add links to an existing group"
  echo "-l to list all the links present in a group"
  echo "-lg to list groups"
  echo "-rl to remove links in a group"
  echo "-rg to remove groups"
  echo "-o to open a tab group"
  exit ;;
esac