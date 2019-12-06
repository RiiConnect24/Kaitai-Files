
meta:
  id: popcrafts_list
  file-extension:
    - ces
  endian: be
  doc: popcrafts_list holds the top Miis, a category that's selectable through the posting plaza.
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
  - id: rc_tag
    contents: "RC"
    doc: Mii Artisan data.
  - id: rc_size
    type: u2
  - id: rc_index
    type: u4
    doc: This index must be the same as the RK index for each mii
  - id: entry_number
    type: u4
    doc: Somehow converts to a 12-digit number. Does it work like Nintendo Wi-Fi pids?
  - id: mii
    size: 74
  - id: crc16
    type: u2
    doc: CRC-CCITT (XModem)
  - id: unk2
    type: u1
  - id: master_mii_artisan_flag
    type: u1
    doc: If not zero, Master Mii Artisan displays.
  - id: popularity
    type: u1
    doc: This is weird. 0x13 - 1 star. 0x14 - 2.5 stars. 0x15 - 2.5 stars. 0x16 - 3 stars. 0x17 - 3.5 stars. 0x18 - 3.5 stars. 0x19 - 4 stars. 0x1A - 4.5 stars. 0x1B - 4.5 stars. 0x1C - 5 stars.
  - id: unk3
    type: u1
  - id: rk_tag
    contents: "RK"
  - id: rk_size
    type: u2
  - id: unk4
    type: u4
  - id: rk_index
    type: u4
    doc: This index must be the same as the RC index for each mii
  - id: day
    type: u2
  - id: month
    type: u1
  - id: unk5
    type: u1
    doc: Certain values of this byte can make the artisan's arrow disappear

