auto lo

iface lo inet loopback


auto eth0

iface eth0 inet static
  gateway 107.150.9.1
  address 107.150.9.211
  netmask 24

iface eth0 inet6 static
  gateway 2602:ffea:1::1
  address 2602:ffea:1:4::1
  netmask 48
