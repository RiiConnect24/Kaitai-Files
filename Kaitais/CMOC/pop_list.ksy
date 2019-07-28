meta:
  id: pop_list
  file-extension:
    - ces
  endian: be
seq:
  - id: type
    contents: "PL"
  - id: padding1
    size: 2
  - id: country_code
    type: u4
  - id: padding2
    size: 16
  - id: padding3
    size: 8
  - id: pm_tag
    contents: "PM"
    doc: Mii data.
  - id: pm_size
    type: u2
  - id: unk1
    type: u4
  - id: entry_number
    type: u4
    doc: Somehow converts to a 12-digit number. Does it work like Nintendo Wi-Fi pids?
  - id: mii
    size: 74
  - id: crc16
    type: u2
    doc: CRC-CCITT (XModem)
  - id: padding
    type: u4
  - id: pn_tag
    contents: "PN"
  - id: pn_size
    type: u2
  - id: unknown1
    size: 88
  - id: pc_tag
    contents: "PC"
    doc: Mii Artisan data.
  - id: pc_size
    type: u2
  - id: unk1
    type: u4
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
  - id: unk3
    type: u2
