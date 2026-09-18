#!/bin/bash
URL="https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_18_1_20260905_Linux64_InstallFree.tar.gz"
curl -fL -o vp.tar.gz "$URL"
sudo tar -zxf vp.tar.gz -C /opt
DIR=$(tar -tzf vp.tar.gz | head -1 | cut -f1 -d/)
sudo chmod +x /opt/"$DIR"/Visual_Paradigm
sudo ln -sf /opt/"$DIR"/Visual_Paradigm /usr/local/bin/visual-paradigm
rm -f vp.tar.gz
echo "Visual Paradigm Installed"
exit 0