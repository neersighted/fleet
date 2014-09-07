network:
  speed: 100mbit
  ipv4:
    gateway: 107.150.19.1
    netmask: 24
    public:
      - 107.150.19.176
    vpn: 10.13.37.85
  ipv6:
    gateway: 2602:ffea:1::1
    netmask: 48
    public:
      - 2602:ffea:1:dc::1
      - 2602:ffea:1:dc::2
      - 2602:ffea:1:dc::3
      - 2602:ffea:1:dc::4
      - 2602:ffea:1:dc::5
    vpn: fd00:dead:beef::babe
  tinc:
    name: gold
    entry: false
