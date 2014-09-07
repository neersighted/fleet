network:
  speed: 100mbit
  ipv4:
    gateway: 107.150.9.1
    netmask: 24
    public:
      - 107.150.9.211
    vpn: 10.13.37.86
  ipv6:
    gateway: 2602:ffea:1::1
    netmask: 48
    public:
      - 2602:ffea:1:4::1
      - 2602:ffea:1:4::2
      - 2602:ffea:1:4::3
      - 2602:ffea:1:4::4
      - 2602:ffea:1:4::5
    vpn: fd00:dead:beef::f00d
  tinc:
    name: copper
    entry: false
