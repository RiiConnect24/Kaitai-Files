meta:
  id: NANDBOOTINFO
  endian: be
seq:
  - id: checksum
    type: u4
  - id: argsoff
    type: u4
  - id: unknown
    type: u1
  - id: unknown2
    type: u1
  - id: apptype
    type: u1
    doc: 0x80 when booted from DVD, 0x81 when from NAND.
  - id: titletype
    type: u1
  - id: launchcode
    type: u4
  - id: unknown3
    type: u4
    repeat: expr
    repeat-expr: 2
  - id: launcher
    type: u8
  - id: argbuf
    size: 4096
