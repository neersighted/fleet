interfaces: |
  auto eth0

  iface eth0 inet static
    gateway 71.19.154.1
    address 71.19.154.209
    netmask 24
