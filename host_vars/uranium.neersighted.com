network:
  speed: 125mbit
  ipv4:
    gateway: 104.131.0.1
    netmask: 18
    public:
      - 104.131.43.147
    vpn: 10.13.37.55
  ipv6:
    gateway: 2604:a880:800:10::1
    netmask: 64
    public:
      - 2604:a880:800:10::104:3000
      - 2604:a880:800:10::104:3001
      - 2604:a880:800:10::104:3002
      - 2604:a880:800:10::104:3003
      - 2604:a880:800:10::104:3004
    vpn: fd00:dead:beef::dead
  tinc:
    name: uranium
    entry: no
