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
  iface eth0 inet6 static
    address 2602:ffea:1:3::1
    netmask 64
  iface eth0 inet6 static
    address 2602:ffea:1:3::2
    netmask 64
  iface eth0 inet6 static
    address 2602:ffea:1:3::3
    netmask 64
  iface eth0 inet6 static
    address 2602:ffea:1:3::4
    netmask 64
  iface eth0 inet6 static
    address 2602:ffea:1:3::5
    netmask 64