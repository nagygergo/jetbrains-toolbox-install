#!/bin/bash

[ $(id -u) != "0" ] && exec sudo "$0" "$@"
echo -e " \e[94mInstalling Jetbrains Toolbox\e[39m"
echo ""

URL="https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.0.2095.tar.gz"

FILE=$(basename ${URL})

DEST=$PWD/$FILE
echo ""
echo -e "\e[94mDownloading Toolbox files \e[39m"
echo ""
wget -cO  ${DEST} ${URL} --read-timeout=5 --tries=0
echo ""
echo -e "\e[32mDownload complete!\e[39m"
echo ""
DIR="/opt/jetbrains-toolbox"
echo ""
echo  -e "\e[94mInstalling to $DIR\e[39m"
echo ""
if mkdir ${DIR}; then
    tar -xzf ${DEST} -C ${DIR} --strip-components=1
fi

chmod -R +rwx ${DIR}
touch ${DIR}/jetbrains-toolbox.sh
echo "#!/bin/bash" >> $DIR/jetbrains-toolbox.sh
echo "$DIR/jetbrains-toolbox" >> $DIR/jetbrains-toolbox.sh

ln -s ${DIR}/jetbrains-toolbox.sh /usr/local/bin/jetbrains-toolbox
chmod -R +rwx /usr/local/bin/jetbrains-toolbox
echo ""
rm ${DEST}
echo  -e "\e[32mDone.\e[39m"
