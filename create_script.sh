#!/bin/bash
# create script
# This script creates a new bash script, set the permissions and more
# Author Jhon Apache

# variables
scriptname="$1"
bindir="${HOME}/bin"
filename="${bindir}/$scriptname"

# check if there an argument
if [[ ! $1 ]]; then
    echo "Missing argument"
    exit 1
fi

# check if the file exist
if [[ -e $filename ]]; then
    echo "File ${filename} already exist"
    exit 1
fi

if type "$scriptname"; then
    echo "There is already a command with name ${scriptname}"
    exit 1
fi

# check bin directory exists
if [[ -d $bindir ]]; then
    if mkdir "$bindir"; then
        echo "created ${bindir}"
    else
        echo "Could not create ${bindir}"
    fi
fi

# create a script with a single line
echo '#!/bin/bash' > "$filename"

# add executable permission
chmod u+x "$filename"

# open with a editor
if [[ $EDITOR ]]; then
    $EDITOR "$filename"
else
    echo "Script created; not starting editor because \$EDITOR is not set."
fi
