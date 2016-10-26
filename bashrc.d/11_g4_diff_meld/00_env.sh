#!/bin/bash

if [ -n "$DISPLAY" ] ; then export G4MULTIDIFF=1 ; fi
export P4DIFF='bash -c "meld \${@/#:/--diff}" padding-to-occupy-argv0'
export P4MERGE='bash -c "chmod u+w \$1 ; meld \$2 \$1 \$3 ; cp \$1 \$4" padding-to-occupy-argv0'
