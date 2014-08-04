interfaces: |
  auto eth0

  iface eth0 inet static
    gateway 178.62.0.1
    address 178.62.26.231
    netmask 18

  iface eth0 inet6 static
    gateway 2a03:b0c0:1:d0::1
    address 2a03:b0c0:1:d0::80:4001
    netmask 64
