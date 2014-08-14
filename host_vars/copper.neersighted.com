network:
  ipv6:
    private: fd00:dead:beef::f00d
  ipv4:
    private: 10.13.37.86
  mesh:
    name: copper
    entry: false
