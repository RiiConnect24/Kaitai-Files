meta:
  id: pop_list
  file-extension:
    - ces
  endian: be
seq:
  - id: type
    type: str
    size: 2
    contents: "PL"
    encoding: ascii
  - id: padding1
    size: 2
  - id: country_code
    type: u4
  - id: padding2
    size: 16
  - id: padding3
    size: 8
  - id: pm_tag
    type: str 
    size: 2
    contents: "PM"
    encoding: ascii
  - id: pm_size
    type: u2
  - id: mii
    type: u1
    size: 74
  - id: unk5
    type: u2
  - id: crc16
    type: u2
    doc: CRC-CCITT (XModem)
  - id: padding
    type: u4
  - id: pn_tag
    type: str
    size: 2
    contents: "PN"
    encoding: ascii
  - id: pn_size
    type: u2
  - id: unknown1
    size: 88
  - id: pc_tag
    type: str
    size: 2
    contents: "PC"
    encoding: ascii
  - id: pc_size
    type: u2
  - id: unknown2
    size: 88
