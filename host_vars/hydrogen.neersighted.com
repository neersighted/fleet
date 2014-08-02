interfaces: |
  auto eth0

  iface eth0 inet static
    gateway 69.164.204.1
    address 69.164.204.41
    netmask 24
  iface eth0 inet static
    address 96.126.118.209
    netmask 24
  iface eth0 inet static
    address 198.58.114.99
    netmask 24

  iface eth0 inet6 static
    address 2600:3c00::f03c:91ff:fe73:bbd8
    netmask 64
  iface eth0 inet6 static
    address 2600:3c00:e000:008c:4d50::1
    netmask 64
    up ip addr change 2600:3c00:e000:008c:4d50::1/64 preferred_lft 0 dev eth0
  iface eth0 inet6 static
    address 2600:3c00:e000:008c:4d50::2
    netmask 64
    up ip addr change 2600:3c00:e000:008c:4d50::2/64 preferred_lft 0 dev eth0
  iface eth0 inet6 static
    address 2600:3c00:e000:008c:4d50::3
    netmask 64
    up ip addr change 2600:3c00:e000:008c:4d50::3/64 preferred_lft 0 dev eth0
  iface eth0 inet6 static
    address 2600:3c00:e000:008c:4d50::4
    netmask 64
    up ip addr change 2600:3c00:e000:008c:4d50::4/64 preferred_lft 0 dev eth0
  iface eth0 inet6 static
    address 2600:3c00:e000:008c:4d50::5
    netmask 64
    up ip addr change 2600:3c00:e000:008c:4d50::5/64 preferred_lft 0 dev eth0
