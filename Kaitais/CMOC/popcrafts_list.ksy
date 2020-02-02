meta:
  id: popcrafts_list
  title: Mii Artisan Rankings
  file-extension:
    - ces
    - dec
  endian: be
  doc: popcrafts_list holds the top Miis, a category that's selectable through the posting plaza.
seq:
  - id: header 
    type: header
  - id: mii_data
    type: mii_data
    repeat: expr
    repeat-expr: 100
types:
  header:
    seq:
      - id: type
        contents: "CL"
      - id: padding1
        size: 2
      - id: country_code
        type: u4
      - id: padding2
        size: 16
      - id: padding3
        size: 8
  mii_data:
    seq:
      - id: rc
        type: rc
        doc: Mii Artisan data.
      - id: rk
        type: rk
        doc: Ranking.
  rc:
    seq:
      - id: type
        contents: "RC"
      - id: size
        type: u2
      - id: artisan_index
        type: u4
      - id: craftsno
        type: u4
      - id: mii
        size: 74
      - id: crc16
        type: u2
        doc: CRC-CCITT (XModem)
      - id: unk1
        type: u1
      - id: master_mii_artisan_flag
        type: u1
        doc: If not zero, Master Mii Artisan displays.
      - id: popularity
        type: u1
        doc: This is weird. 0x13 - 1 star. 0x14 - 2.5 stars. 0x15 - 2.5 stars. 0x16 - 3 stars. 0x17 - 3.5 stars. 0x18 - 3.5 stars. 0x19 - 4 stars. 0x1A - 4.5 stars. 0x1B - 4.5 stars. 0x1C - 5 stars.
      - id: unk2
        type: u2
      - id: arrow
        type: u1
        enum: arrows
      - id: country_code
        type: u1
      - id: unk3
        type: u2
    enums:
      arrows:
        0: up_straight
        1: down_diagonal
        2: left
        3: up_diagonal
  rk:
    seq:
      - id: type
        contents: "RK"
      - id: size
        type: u2
      - id: unk4
        type: u4
      - id: rk_index
        type: u4
        doc: This index must be the same as the RC index for each Mii
      - id: day
        type: u2
      - id: month
        type: u1
      - id: unk5
        type: u1
        doc: Certain values of this byte can make the artisan's arrow disappear