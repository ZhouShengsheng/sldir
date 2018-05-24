# sldir install script
# Author: Zhou Shengsheng
# Version: 0.0.1
# Date: 24/05/18

set -e

DEST_PROFILE=${HOME}/.bash_profile
SLDIR_HOME=${HOME}/.sldir
SLDIR_RC=${SLDIR_HOME}/sldir_rc

mkdir -p ${SLDIR_HOME}
cp sldir_rc ${SLDIR_RC}

echo "
# sldir
if [ -f ${SLDIR_RC} ]; then
    . ${SLDIR_RC}
fi
" >> ${DEST_PROFILE}
