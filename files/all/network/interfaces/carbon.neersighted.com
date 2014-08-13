auto lo

iface lo inet loopback


auto eth0

iface eth0 inet static
  gateway 173.255.230.1
  address 173.255.230.140
  netmask 24

iface eth0 inet6 static
  gateway fe80::1
  address 2600:3c03::f03c:91ff:fe73:bb00
  netmask 64
  pre-up echo 0 > /proc/sys/net/ipv6/conf/$IFACE/accept_ra
  pre-up echo 0 > /proc/sys/net/ipv6/conf/$IFACE/forwarding
iface eth0 inet6 static
  address 2600:3c03:e000:00c5::1
  netmask 64
  up ip addr change 2600:3c03:e000:00c5::1/64 preferred_lft 0 dev eth0
iface eth0 inet6 static
  address 2600:3c03:e000:00c5::2
  netmask 64
  up ip addr change 2600:3c03:e000:00c5::2/64 preferred_lft 0 dev eth0
iface eth0 inet6 static
  address 2600:3c03:e000:00c5::3
  netmask 64
  up ip addr change 2600:3c03:e000:00c5::3/64 preferred_lft 0 dev eth0
iface eth0 inet6 static
  address 2600:3c03:e000:00c5::4
  netmask 64
  up ip addr change 2600:3c03:e000:00c5::4/64 preferred_lft 0 dev eth0
iface eth0 inet6 static
  address 2600:3c03:e000:00c5::5
  netmask 64
  up ip addr change 2600:3c03:e000:00c5::5/64 preferred_lft 0 dev eth0
