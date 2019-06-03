location /enterv2ray/ {
proxy_redirect off;
proxy_pass http://127.0.0.1:12345; #此处的11054为你的v2ray端口。请自己修改
proxy_http_version 1.1;
proxy_set_header Upgrade $http_upgrade;
proxy_set_header Connection "upgrade";
proxy_set_header Host $http_host;
}
