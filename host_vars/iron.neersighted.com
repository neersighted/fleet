network:
  ipv4:
    gateway: 107.150.19.1
     netmask: 24
     public:
       - 107.150.19.150
    private: 10.13.37.79
  ipv6:
    gateway: 2602:ffea:1::1
    netmask: 48
    public:
      - 2602:ffea:1:3::1
      - 2602:ffea:1:3::2
      - 2602:ffea:1:3::3
      - 2602:ffea:1:3::4
      - 2602:ffea:1:3::5
    private: fd00:dead:beef::face
  mesh:
    name: iron
    entry: true
