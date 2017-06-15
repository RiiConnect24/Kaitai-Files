meta:
  id: play_rec
  file-extension: dat
  endian: be
seq:
  - id: part1
    type: part1
  - id: part2
    type: part2
types:
  part1:
    - id: checksum
      type: u4
    - id: name
      type: str
      size: 40
      encoding: UTF-16BE
    - id: pad1
      type: u4
    - id: ticks_boot
      type: u8
    - id: ticks_last
      type: u8
    - id: title_id
      type: u4
  part2:
    - id: checksum
      type: u4
    - id: data
      type: u4
      repeat: expr
      repeat-expr: 31
