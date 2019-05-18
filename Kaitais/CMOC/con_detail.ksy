meta:
  id: cmoc_condetail
  file-extension:
    - dces
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
    size: 12
  - id: padding3
    size: 8
  - id: cdtag
    type: str
    size: 2
    encoding: ascii
  - id: cdtagsize
    type: u2
  - id: activecontest
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
