network:
  speed: 125mbit
  ipv4:
    gateway: 128.199.192.1
    netmask: 18
    public:
      - 128.199.253.245
    vpn: 10.13.37.55
  ipv6:
    gateway: 2400:6180:0:d0::1
    netmask: 64
    public:
      - 2400:6180:0:d0::db:8000
      - 2400:6180:0:d0::db:8001
      - 2400:6180:0:d0::db:8002
      - 2400:6180:0:d0::db:8003
      - 2400:6180:0:d0::db:8004
      - 2400:6180:0:d0::db:8005
    vpn: fd00:dead:beef::dead
  tinc:
    name: uranium
    entry: no
