network:
  ipv6:
    private: fd00:dead:beef::ac1d
  ipv4:
    private: 10.13.37.37
  mesh:
    name: helium
    entry: false
