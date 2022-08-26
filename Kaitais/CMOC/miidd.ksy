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
  - id: mii_entry_size
    type: u4
  - id: mii_number
    type: u1
  - id: unknown
    type: u1
    repeat: expr
    repeat-expr: 15
  - id: mii
    type: mii
    repeat: expr
    repeat-expr: mii_number
types:
  mii:
    seq:
      - id: index
        type: u1
      - id: initials
        type: str
        size: 2
        encoding: utf-8
      - id: country_code
        type: u1
      - id: padding
        size: 4
      - id: mii_entry_number
        type: u8
      - id: actual_mii
        size: 74
      - id: mii_crc16
        type: u2
      - id: mii_artisan
        size: 74
      - id: mii_artisan_crc16
        type: u2
