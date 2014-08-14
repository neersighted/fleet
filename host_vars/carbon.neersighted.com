network:
  ipv6:
    private: fd00:dead:beef::1ced
  ipv4:
    private: 10.13.37.16
  mesh:
    name: carbon
    entry: true
