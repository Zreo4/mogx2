#!/bin/sh
# V2Ray new configuration
# Run V2ray
# Write V2Ray configuration
UUID=e3fdf20c-7baa-4e34-951a-209d87e7b0b0
PATHM=lasleijf
cat << EOF > /etc/v2ray/config.json
{
    "inbounds": [{
        "port": 8080,
        "protocol": "vmess",
        "settings": {
            "clients": [{
                "id": "$UUID",
                "alterId": 0
            }]
        },
        "streamSettings": {
            "network": "ws",
            "wsSettings": {
                "path": "/$PATHM"
            }
        }
    }],
    "outbounds": [{
        "protocol": "freedom"
    }]
}
EOF

#Run V2ray

/usr/bin/v2ray/v2ray  run -config=/etc/v2ray/config.json
