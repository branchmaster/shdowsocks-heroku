cd /ss
wget -O ss.tar.xz https://github.com/shadowsocks/shadowsocks-rust/releases/download/v$SSVER/shadowsocks-v$SSVER.x86_64-unknown-linux-gnu.tar.xz
wget -O xp.tar.xz https://github.com/teddysun/xray-plugin/releases/download/v$XraypluginVER/xray-plugin-linux-amd64-v$XraypluginVER.tar.gz
tar -xvf ss.tar.xz -C ss/ssserver
tar -zxvf xp.tar.xz -C xp/xray-plugin_linux_amd64
mv ss/ssserver .
mv xp/xray-plugin_linux_amd64 xray-plugin
chmod +x ssserver xray-plugin

./ssserver -s :$PORT -m $method -k $passwprd --plugin "./xray-plugin" --plugin-opts "server"
