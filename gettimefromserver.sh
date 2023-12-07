time=$(curl -I $1 | grep Dat)
IFS=","
read -a strarr <<<$time
time=${strarr[1]}

if [ "$2" != "" ]; then
  #full year
  if [ "$2" == "f" ]; then
    echo $(date -d$time +"%F")
  fi
  #time
  if [ "$2" == "t" ]; then
    echo $(date -d$time +"%H:%m:%S")
  fi

  #all
  if [ "$2" == "a" ]; then
    echo $(date -d$time +"%F %H:%m:%S")
  fi
else
  echo $time
fi
