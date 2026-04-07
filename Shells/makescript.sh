#!/bin/bash

echo "#!/bin/env sh" > $1.sh

echo "echo \"$1 Skript\"" >> $1.sh
echo "# write your script here" >> $1.sh

chmod +x $1.sh