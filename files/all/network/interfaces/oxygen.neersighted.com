auto lo

iface lo inet loopback


auto eth0

iface eth0 inet static
  gateway 74.207.242.1
  address 74.207.242.71
  netmask 24

iface eth0 inet6 static
  gateway fe80::1
  address 2600:3c01::f03c:91ff:fe73:cb9f
  netmask 64
  pre-up echo 0 > /proc/sys/net/ipv6/conf/$IFACE/accept_ra
  pre-up echo 0 > /proc/sys/net/ipv6/conf/$IFACE/forwarding
iface eth0 inet6 static
  address 2600:3c01:e000:00ae::1
  netmask 64
  up ip addr change 2600:3c01:e000:00ae::1/64 preferred_lft 0 dev eth0
iface eth0 inet6 static
  address 2600:3c01:e000:00ae::2
  netmask 64
  up ip addr change 2600:3c01:e000:00ae::2/64 preferred_lft 0 dev eth0
iface eth0 inet6 static
  address 2600:3c01:e000:00ae::3
  netmask 64
  up ip addr change 2600:3c01:e000:00ae::3/64 preferred_lft 0 dev eth0
iface eth0 inet6 static
  address 2600:3c01:e000:00ae::4
  netmask 64
  up ip addr change 2600:3c01:e000:00ae::4/64 preferred_lft 0 dev eth0
iface eth0 inet6 static
  address 2600:3c01:e000:00ae::5
  netmask 64
  up ip addr change 2600:3c01:e000:00ae::5/64 preferred_lft 0 dev eth0