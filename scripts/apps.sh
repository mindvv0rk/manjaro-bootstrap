#!/bin/bash
# WARNING! This file should not be executed directly.
#
###############################################################################

apps::nodejs-n() {
    if [ -x "$(which n 2> /dev/null)" ]; then
		return 0
	fi

    if ! ask::interactive "Install node.js-n?"; then
        return 0
    fi

    echo "Installing node.js-n"
    git clone https://github.com/tj/n ${HOME}/sources/tj/n
    cd ${HOME}/sources/tj/n
    PREFIX=${HOME}/apps/n make install
}
