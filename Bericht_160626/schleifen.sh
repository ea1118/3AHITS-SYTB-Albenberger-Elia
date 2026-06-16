
#!/bin/bash

for i in ${seq 1 42}
do
  if [ $((i % 2)) -eq 0 ]
  then
    echo "$i"
  else
    echo "$i"
  fi
done