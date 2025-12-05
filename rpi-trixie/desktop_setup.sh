#!/bin/bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

# add packages
echo 'add packages...'
"${SCRIPT_DIR}"/add_pkg_base.sh
"${SCRIPT_DIR}"/add_pkg_desktop.sh
echo 'add packages... DONE'

# add vscode
echo 'configure vscode...'
"${SCRIPT_DIR}"/../vscode/setup.sh
echo 'configure vscode... DONE'

# configure git
echo -ne 'configure git... '
"${SCRIPT_DIR}"/../git/git_conf.sh
echo 'DONE'

# !!! keep this at end !!!
echo ''
cat << EOF
add a block of text to /boot/firmware/config.txt to allow charge of the Pi 5 RTC battery (if in place):
    # turn on RTC battery charge (3v -> 3_000_000 mv)
    [pi5]
    dtparam=rtc_bbat_vchg=3000000
EOF
