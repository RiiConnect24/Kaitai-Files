meta:
  id: pop_list
  file-extension: dec
  application: Check Mii Out Channel
  endian: be
seq:
  - id: type
    contents: "PL"
  - id: padding1
    size: 2
  - id: country_code
    type: u4
  - id: padding2
    size: 4
  - id: error_code
    type: u4
  - id: padding3
    size: 16
  - id: pn_tag
    contents: "PN"
  - id: pn_size
    type: u2
  - id: unk1
    type: u4
  - id: mii_count
    type: u4
    doc: How many miis are being displayed in total. Maximum 500.
  - id: pm_tag
    contents: "PM"
    doc: Mii data.
  - id: pm_size
    type: u2
  - id: mii_index
    type: u4
    doc: The mii and its corresponding artisan must have this same number.
  - id: entry_number
    type: u4
    doc: Somehow converts to a 12-digit number. Does it work like Nintendo Wi-Fi pids?
  - id: mii
    size: 74
  - id: crc16
    type: u2
    doc: CRC CCITT (XModem)
  - id: unk2
    type: u2
  - id: popularity
    type: u1
    doc: This is weird. 0x13 - 1 star. 0x14 - 2.5 stars. 0x15 - 2.5 stars. 0x16 - 3 stars. 0x17 - 3.5 stars. 0x18 - 3.5 stars. 0x19 - 4 stars. 0x1A - 4.5 stars. 0x1B - 4.5 stars. 0x1C - 5 stars.
  - id: unk3
    type: u1
  - id: skill
    type: u2
  - id: initials
    type: str
    encoding: utf-8
    size: 2
    doc: The 2nd byte can be 0x00 to just have 1 initial.
  - id: pc_tag
    contents: "PC"
    doc: Mii Artisan data.
  - id: pc_size
    type: u2
  - id: creator_index
    type: u4
    doc: The mii and its corresponding artisan must have this same number.
  - id: creator_number
    type: u4
    doc: Somehow converts to a 12-digit number. Does it work like Nintendo Wi-Fi pids?
  - id: mii_artisan
    size: 74
  - id: crc162
    type: u2
    doc: CRC-CCITT (XModem)
  - id: unk4
    type: u1
  - id: master_mii_artisan_flag
    type: u1
    doc: If not zero, Master Mii Artisan displays.
  - id: unk5
    type: u2
  - id: unk6
    type: u1
  - id: country_code2
    type: u1
    doc: Maps to a country flag. Uses the internal country codes that the Wii usually uses.
  - id: unk7
    type: u2
