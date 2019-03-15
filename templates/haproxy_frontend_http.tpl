frontend kubernetes-apps-http
        bind ${bind_ip}:80
        option tcplog
        mode tcp
        default_backend kubernetes-master-nodes-apps-http

backend kubernetes-master-nodes-apps-http
        mode tcp
        balance roundrobin
        option tcp-check

        