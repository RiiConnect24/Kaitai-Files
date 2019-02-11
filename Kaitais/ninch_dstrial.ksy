meta:
  id: ninch_dstrial
  file-extension: bin
  endian: be
seq:
  - id: unknown
    type: u2
  - id: version
    type: u1
  - id: unknown_region
    type: u1
    doc: 0 for v3, 0x39 for v4 JP
  - id: filesize
    type: u4
  - id: crc32
    type: u4
  - id: country_code
    type: u4
  - id: language_code
    type: u4
  - id: rom_offset
    type: u4
  - id: rom_size
    type: u4
  - id: game_title
    type: str
    encoding: utf-16be
    size: 98
  - id: game_description
    type: str
    encoding: utf-16be
    size: 194
  - id: removal_year
    type: u2
  - id: removal_month
    type: u1
    doc: Zero-based.
  - id: removal_day
    type: u1
  - id: company_id
    type: u4
  - id: game_id
    type: str
    encoding: utf-8
    size: 4