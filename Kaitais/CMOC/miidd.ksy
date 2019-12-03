meta:
  id: miidd
  file-extension: dec
  application: Check Mii Out Channel (Wii Sports Resort)
  endian: be
seq:
  - id: opening_timestamp
    type: u4
    doc: Seconds since 2000.
  - id: closing_timestamp
    type: u4
    doc: Seconds since 2000.
  - id: data_size
    type: u4
    doc: Size of the whole file minus the 0x20 byte header.
  - id: mii_number
    type: u4
  - id: mii_entry_size
    type: u1
  - id: unknown
    type: u1
    repeat: expr
    repeat-expr: 15
  - id: mii
    type: u1
    
