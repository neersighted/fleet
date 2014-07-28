interfaces: |
  auto eth0

  iface eth0 inet static
    gateway 107.150.9.1
    address 107.150.9.211
    netmask 24

  iface eth0 inet6 static
    address 2602:ffea:a::536c:b804
    netmask 64
