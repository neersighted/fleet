interfaces: |
  auto eth0

  iface eth0 inet static
    gateway 209.141.61.1
    address 209.141.61.108
    netmask 24

  iface eth0 inet6 static
    gateway 2605:6400:0020::1
    address 2605:6400:0020:2cc3::dead:bea7
    netmask 48
