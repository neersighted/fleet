interfaces: |
  auto eth0

  iface eth0 inet static
    gateway 107.150.19.1
    address 107.150.19.150
    netmask 24

  iface eth0 inet6 static
    gateway 2602:ffea:a::1
    address 2602:ffea:a::951e:f853
    netmask 64
