network:
  ipv6:
    private: fd00:dead:beef::1dea
  ipv4:
    private: 10.13.37.53
  mesh:
    name: oxygen
    entry: true
