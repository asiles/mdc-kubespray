frontend kubernetes-apps-https
        bind ${bind_ip}:443
        option tcplog
        mode tcp
        default_backend kubernetes-master-nodes-apps-https

backend kubernetes-master-nodes-apps-https
        mode tcp
        balance roundrobin
        option ssl-hello-chk

