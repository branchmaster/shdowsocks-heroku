cd /ss
wget -O ss.tar.xz https://github.com/shadowsocks/shadowsocks-rust/releases/download/v$SS-VER/shadowsocks-v$SS-VER.x86_64-unknown-linux-gnu.tar.xz
wget -O xp.tar.xz https://github.com/teddysun/xray-plugin/releases/download/v$Xray-plugin-VER/xray-plugin-linux-amd64-v$Xray-plugin-VER.tar.gz
unzip v2ray.zip 

chmod +x v2ray v2ctl
cp -f /config.json .

./v2ray
