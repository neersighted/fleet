network:
  ipv4:
    gateway: 69.164.204.1
    netmask: 24
    public:
      - 69.164.204.41
      - 96.126.118.209
      - 198.58.114.99
    vpn: 10.13.37.42
  ipv6:
    gateway: fe80::1
    netmask: 64
    public:
      - 2600:3c00::f03c:91ff:fe73:bbd8
      - 2600:3c00:e000:008c::1
      - 2600:3c00:e000:008c::2
      - 2600:3c00:e000:008c::3
      - 2600:3c00:e000:008c::4
      - 2600:3c00:e000:008c::5
    vpn: fd00:dead:beef::b0de
  tinc:
    name: hydrogen
    entry: false
