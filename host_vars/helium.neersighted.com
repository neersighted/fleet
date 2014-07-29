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
  iface eth0 inet6 static
    address 2605:2700:1:1040:4311::1
    netmask 64
  iface eth0 inet6 static
    address 2605:2700:1:1040:4311::2
    netmask 64
  iface eth0 inet6 static
    address 2605:2700:1:1040:4311::3
    netmask 64
  iface eth0 inet6 static
    address 2605:2700:1:1040:4311::4
    netmask 64
  iface eth0 inet6 static
    address 2605:2700:1:1040:4311::5
    netmask 64
