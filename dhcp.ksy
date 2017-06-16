meta:
  id: dhcp
  file-extension: dat
  application: Wii Menu
  endian: be
seq:
  - id: ip_1
    type: u1
    repeat: expr
    repeat-expr: 4
    doc: Wii IP Address.
  - id: ip_2
    type: u1
    repeat: expr
    repeat-expr: 4
  - id: ip_3
    type: u1
    repeat: expr
    repeat-expr: 4
  - id: padding
    size: 20
  - id: ip_4
    type: u1
    repeat: expr
    repeat-expr: 4
  - id: padding2
    type: u4
  - id: ip_5
    type: u1
    repeat: expr
    repeat-expr: 4
  - id: padding3
    size: 48
