interfaces: |
  auto eth0

  iface eth0 inet static
    gateway 71.19.154.1
    address 71.19.154.209
    netmask 24

  iface eth0 inet6 static
    gateway 2605:2700:0:3::1
    address 2605:2700:0:3::4713:9ad1
    netmask 64
  iface eth0 inet6 static
    address 2605:2700:1:1040::1
    netmask 64
    up ip addr change 2605:2700:1:1040::1/64 preferred_lft 0 dev eth0
  iface eth0 inet6 static
    address 2605:2700:1:1040::2
    netmask 64
    up ip addr change 2605:2700:1:1040::2/64 preferred_lft 0 dev eth0
  iface eth0 inet6 static
    address 2605:2700:1:1040::3
    netmask 64
    up ip addr change 2605:2700:1:1040::3/64 preferred_lft 0 dev eth0
  iface eth0 inet6 static
    address 2605:2700:1:1040::4
    netmask 64
    up ip addr change 2605:2700:1:1040::4/64 preferred_lft 0 dev eth0
  iface eth0 inet6 static
    address 2605:2700:1:1040::5
    netmask 64
    up ip addr change 2605:2700:1:1040::5/64 preferred_lft 0 dev eth0
