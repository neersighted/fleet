interfaces: |
  auto eth0

  iface eth0 inet static
    gateway 81.4.110.1
    address 81.4.110.116
    netmask 24

  iface eth0 inet6 static
    address 2a00:d880:3:2::324b:e9a1
    netmask 64
  iface eth0 inet6 static
    address 2a00:d880:3:2::7a71:af49
    netmask 64
  iface eth0 inet6 static
    address 2a00:d880:3:2::da65:1bd0
    netmask 64
