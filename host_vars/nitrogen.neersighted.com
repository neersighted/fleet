network:
  speed: 250mbit
  ipv4:
    gateway: 96.126.118.1
    netmask: 24
    public:
      - 96.126.118.120
    vpn: 10.13.37.69
  ipv6:
    gateway: fe80::1
    netmask: 64
    public:
      - 2600:3c00::f03c:91ff:fe50:fd52
      - 2600:3c00:e000:009c::1
      - 2600:3c00:e000:009c::2
      - 2600:3c00:e000:009c::3
      - 2600:3c00:e000:009c::4
      - 2600:3c00:e000:009c::5
    vpn: fd00:dead:beef::cafe
  tinc:
    name: nitrogen
