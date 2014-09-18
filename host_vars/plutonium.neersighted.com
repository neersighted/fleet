network:
  speed: 125mbit
  ipv4:
    gateway: 104.131.0.1
    netmask: 18
    public:
      - 104.131.59.113
    vpn: 10.13.37.52
  ipv6:
    gateway: 2604:a880:800:10::1
    netmask: 64
    public:
      - 2604:a880:800:10::105:b000
      - 2604:a880:800:10::105:b001
      - 2604:a880:800:10::105:b002
      - 2604:a880:800:10::105:b003
      - 2604:a880:800:10::105:b004
      - 2604:a880:800:10::105:b005
    vpn: fd00:dead:beef::badd
  tinc:
    name: plutonium
    entry: no
