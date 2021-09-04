meta:
  id: con_info
  file-extension:
    - ces
    - dec
  application: Check Mii Out Channel
  endian: be
seq:
  - id: header
    type: header
  - id: contest
    type: contest
    repeat: eos
types:
  header:
    seq:
      - id: type
        type: str
        size: 2
        encoding: ascii
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
  contest:
    seq:
      - id: type
        type: str
        size: 2
        encoding: ascii
      - id: ci_size
        type: u2
      - id: contest_index
        type: u4
      - id: contest_id
        type: u4
      - id: status
        type: u1
        enum: status
      - id: worldwide
        type: u1
        doc: Value of 2 or 10 will make it try to grab thumbnails.
      - id: padding
        size: 18
enums:
  status:
    2: open
    8: judging
    32: results