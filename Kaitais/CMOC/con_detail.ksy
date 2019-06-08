meta:
  id: con_detail
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
  - id: id1
    type: u4
  - id: id2
    type: u4
  - id: padding2
    size: 12
  - id: padding3
    size: 8
  - id: tag
    type: str 
    size: 2
    contents: "PL"
    encoding: ascii
  - id: tag_size
    type: u2
  - id: active_contest
    type: u4
  - id: endtime
    type: u4
  - id: flags
    type: u4
  - id: unk4
    type: u4
  - id: unk5
    type: u4
  - id: unk6
    type: u4
  - id: unk7
    type: u4
