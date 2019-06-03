{
"log" : {
"access": "/var/log/v2ray/access.log",
"error": "/var/log/v2ray/error.log",
"loglevel": "warning"
},
"inbound": {
"port": 12345,
"listen":"127.0.0.1″,
"protocol": "vmess",
"settings": {
"clients": [
{
"id": "39bd2010-c3e2-4e38-b1c1-e89648deea5f", //写入自己生成的uuid
"level": 1,
"alterId": 6 //写小一点，10以下就好
}
]
},
"streamSettings": {
"network":"ws",
"wsSettings": {
"path": "/ray"
}

}
},
"outbound": {
"protocol": "freedom",
"settings": {}
},
"outboundDetour": [
{
"protocol": "blackhole",
"settings": {},
"tag": "blocked"
}
],
"routing": {
"strategy": "rules",
"settings": {
"rules": [
{
"type": "field",
"ip": ["geoip:private"],
"outboundTag": "blocked"
}
]
}
}
}
