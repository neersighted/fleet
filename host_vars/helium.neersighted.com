network:
  ipv4:
    gateway: 71.19.154.1
    netmask: 24
    public:
      - 71.19.154.209
    private: 10.13.37.37
  ipv6:
    gateway: 2605:2700:0:3::1
    netmask: 64
    public:
      - 2605:2700:0:3::4713:9ad1
      - 2605:2700:1:1040::1
      - 2605:2700:1:1040::2
      - 2605:2700:1:1040::3
      - 2605:2700:1:1040::4
      - 2605:2700:1:1040::5
    private: fd00:dead:beef::ac1d
  mesh:
    name: helium
    entry: false
