#!/bin/bash

echo "INFO: initializing vim..."
pushd vim/vim/ > /dev/null
./init_colors.sh
./init_plugins.sh
popd > /dev/null
