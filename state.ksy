meta:
  id: state
  file-extension: dat
  endian: be
seq:
  - id: checksum
    type: u4
  - id: flags
    type: u1
  - id: type
    type: u1
  - id: discstate
    type: u1
  - id: returnto
    type: u1
  - id: unknown
    type: u4
    repeat: expr
    repeat-expr: 6
