meta:
  id: con_detail
  file-extension:
    - ces
  endian: be
seq:
  - id: type
    type: str
    size: 2
    encoding: ascii
  - id: padding1
    size: 2
  - id: id1
    type: u4
  - id: id2
    type: u4
  - id: padding2
    size: 8
  - id: start
    type: u4
    doc: Timestamp, seconds since 2000.
  - id: end
    type: u4
    doc: Timestamp, seconds since 2000.
  - id: padding3
    size: 4
  - id: tag
    type: str 
    size: 2
    encoding: ascii
  - id: tag_size
    type: u2
  - id: id3
    type: u4
  - id: contest_id
    type: u4
  - id: unused
    type: b1
  - id: cancelled
    type: b1
  - id: results
    type: b1
  - id: preparing_results
    type: b1
  - id: judging
    type: b1
  - id: preparing_for_judging
    type: b1
  - id: open
    type: b1
  - id: new
    type: b1
  - id: unused2
    type: b3
  - id: special_award
    type: b1
  - id: nickname_changing
    type: b1
  - id: souvenir_photo
    type: b1
  - id: thumbnail
    type: b1
  - id: worldwide
    type: b1
  - id: padding4
    type: u2
  - id: entry_count
    type: u4
  - id: padding5
    type: u4
    repeat: expr
    repeat-expr: 5
  - id: topic
    type: str
    size: 32
    encoding: utf-8
  - id: description
    type: str
    size: 64
    encoding: utf-8