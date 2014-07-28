interfaces: |
  auto eth0

  iface eth0 inet static
    gateway 74.207.242.1
    address 74.207.242.71
    netmask 24

  iface eth0 inet6 static
    address 2600:3c01::f03c:91ff:fe73:cb9f
    netmask 64
  iface eth0 inet6 static
    address 2600:3c01:e000:00ae:0063::1
    netmask 64
  iface eth0 inet6 static
    address 2600:3c01:e000:00ae:0063::2
    netmask 64
  iface eth0 inet6 static
    address 2600:3c01:e000:00ae:0063::3
    netmask 64
  iface eth0 inet6 static
    address 2600:3c01:e000:00ae:0063::4
    netmask 64
  iface eth0 inet6 static
    address 2600:3c01:e000:00ae:0063::5
    netmask 64