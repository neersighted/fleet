interfaces: |
  auto eth0

  iface eth0 inet static
    gateway 128.199.192.1
    address 128.199.253.245
    netmask 18

  iface eth0 inet6 static
    gateway 2400:6180:0:d0::1
    address 2400:6180:0:d0::db:8001
    netmask 64