interfaces: |
  auto eth0

  iface eth0 inet static
    gateway 71.19.154.1
    address 71.19.154.209
    netmask 24

  iface eth0 inet6 static
    gateway 2605:2700:0:3::1
    address 2605:2700:0:3::4713:9ad1
    netmask 64
