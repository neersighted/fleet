interfaces: |
  auto eth0

  iface eth0 inet static
    gateway 107.150.9.1
    address 107.150.9.211
    netmask 24

  iface eth0 inet6 static
    gateway 2602:ffea:a::1
    address 2602:ffea:a::536c:b804
    netmask 64
  iface eth0 inet6 static
    address 2602:ffea:a::cd71:2162
    netmask 64
  iface eth0 inet6 static
    address 2602:ffea:a::fdef:901b
    netmask 64

nbnc_ip:
  4: 107.150.9.211
  6: 2602:ffea:a::fdef:901b
