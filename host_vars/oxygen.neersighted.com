network:
  ipv4:
    gateway: 74.207.242.1
    netmask: 24
    public:
      - 74.207.242.71
    vpn: 10.13.37.53
  ipv6:
    gateway: fe80::1
    netmask: 64
    public:
      - 2600:3c01::f03c:91ff:fe73:cb9f
      - 2600:3c01:e000:00ae::1
      - 2600:3c01:e000:00ae::2
      - 2600:3c01:e000:00ae::3
      - 2600:3c01:e000:00ae::4
      - 2600:3c01:e000:00ae::5
    vpn: fd00:dead:beef::1dea
  tinc:
    name: oxygen
    entry: true
