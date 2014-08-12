auto lo

iface lo inet loopback


auto eth0

iface eth0 inet static
  gateway 96.126.118.1
  address 96.126.118.120
  netmask 24

iface eth0 inet6 static
  gateway fe80::1
  address 2600:3c00::f03c:91ff:fe50:fd52
  netmask 64
  pre-up echo 0 > /proc/sys/net/ipv6/conf/$IFACE/accept_ra
  pre-up echo 0 > /proc/sys/net/ipv6/conf/$IFACE/forwarding
iface eth0 inet6 static
  address 2600:3c00:e000:009c::1
  netmask 64
  up ip addr change 2600:3c00:e000:009c::1/64 preferred_lft 0 dev eth0
iface eth0 inet6 static
  address 2600:3c00:e000:009c::2
  netmask 64
  up ip addr change 2600:3c00:e000:009c::2/64 preferred_lft 0 dev eth0
iface eth0 inet6 static
  address 2600:3c00:e000:009c::3
  netmask 64
  up ip addr change 2600:3c00:e000:009c::3/64 preferred_lft 0 dev eth0
iface eth0 inet6 static
  address 2600:3c00:e000:009c::4
  netmask 64
  up ip addr change 2600:3c00:e000:009c::4/64 preferred_lft 0 dev eth0
iface eth0 inet6 static
  address 2600:3c00:e000:009c::5
  netmask 64
  up ip addr change 2600:3c00:e000:009c::5/64 preferred_lft 0 dev eth0
