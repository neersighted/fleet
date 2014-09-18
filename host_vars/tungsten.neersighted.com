network:
  speed: 100mbit
  ipv4:
    gateway: 209.141.55.1
    netmask: 24
    public:
      - 209.141.55.116
    vpn: 10.13.37.25
  ipv6:
    gateway: 2605:6400:20::1
    netmask: 48
    public:
      - 2605:6400:20:da::1
      - 2605:6400:20:da::2
      - 2605:6400:20:da::3
      - 2605:6400:20:da::4
      - 2605:6400:20:da::5
    vpn: fd00:dead:beef::ba5e
  tinc:
    name: tungsten
    entry: yes
