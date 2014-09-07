network:
  speed: 100mbit
  ipv4:
    gateway: 107.150.19.1
    netmask: 24
    public:
      - 107.150.19.177
    vpn: 10.13.37.74
  ipv6:
    gateway: 2602:ffea:1::1
    netmask: 48
    public:
      - 2602:ffea:1:dd::1
      - 2602:ffea:1:dd::2
      - 2602:ffea:1:dd::3
      - 2602:ffea:1:dd::4
      - 2602:ffea:1:dd::5
    vpn: fd00:dead:beef::d0d0
  tinc:
    name: silver
    entry: false
