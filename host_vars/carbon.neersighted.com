interfaces: |
  auto eth0

  iface eth0 inet static
    gateway 173.255.230.1
    address 173.255.230.140
    netmask 24

  iface eth0 inet6 static
    address 2600:3c03::f03c:91ff:fe73:bb00
    netmask 64
  iface eth0 inet6 static
    address 2600:3c00:e000:008c:ca5b::1
    netmask 64
  iface eth0 inet6 static
    address 2600:3c00:e000:008c:ca5b::2
    netmask 64
  iface eth0 inet6 static
    address 2600:3c00:e000:008c:ca5b::3
    netmask 64
  iface eth0 inet6 static
    address 2600:3c00:e000:008c:ca5b::4
    netmask 64
  iface eth0 inet6 static
    address 2600:3c00:e000:008c:ca5b::5
    netmask 64
