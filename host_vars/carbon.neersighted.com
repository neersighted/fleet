network:
  speed: 125mbit
  ipv4:
    gateway: 173.255.230.1
    netmask: 24
    public:
      - 173.255.230.140
    vpn: 10.13.37.16
  ipv6:
    gateway: fe80::1
    netmask: 64
    public:
      - 2600:3c03::f03c:91ff:fe73:bb00
      - 2600:3c03:e000:00c5::1
      - 2600:3c03:e000:00c5::2
      - 2600:3c03:e000:00c5::3
      - 2600:3c03:e000:00c5::4
      - 2600:3c03:e000:00c5::5
    vpn: fd00:dead:beef::1ced
  tinc:
    name: carbon
    entry: yes
