meta:
  id: iplsave
  file-extension: bin
  application: Wii Menu
  endian: be
seq:
  - id: magic
    type: str
    size: 4
    encoding: utf-8
    doc: Always RIPL.
  - id: filesize
    type: u4
  - id: unknown
    type: u1
    repeat: expr
    repeat-expr: unknown
  - id: entries
    type: entry
    repeat: expr
    repeat-expr: 48
  - id: unknown2
    type: u8
    repeat: expr
    repeat-expr: 32
  - id: md5_sum
    size: 16
types:
  entry:
    - id: channel_type
      type: u1
      doc: 0 for no channel, 1 for Disc Channel, 3 for normal channels
    - id: secondary_type
      type: u1
      doc: 0 for normal channels, 1 for Disc Channel, Mii Channel, Wii Shop Channel and Photo Channel
    - id: unknown
      type: u1
      repeat: expr
      repeat-expr: 4
      doc: All titles set to 0?
    - id: flags
      type: u2
      doc: All titles except the Disc Channel use 14, which uses 15.
    - id: title_id
      type: u8
