#!/bin/sh

# get filenames of added files
FILES=$(git status -uno --porcelain | sed s/^...//)

BINARIES=()

for i in $FILES; do
    # check if file is text or binary (application)
    type=$(file -b --mime-type $i | sed 's|/.*||')
    if [[ "$type" == "application" ]]; then
        # printf "Warning: $i is a binary file and should not be committed";
        BINARIES+=("$i");
    fi
done

exec 1>&2

print_bins(){
    for i in "${BINARIES[@]}"; do
        printf "    $i";
    done
}

if [[ -n $BINARIES ]]; then
    printf "Warning: found binary files in added items.\n Files: \n$(print_bins)\n\n Please remove these files with:\n    git rm --cached FILENAME "
    exit 1
fi
