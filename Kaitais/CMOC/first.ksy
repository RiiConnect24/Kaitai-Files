meta:
  id: first
  file-extension:
    - ces
  endian: be
seq:
  - id: type
    type: str
    size: 2
    contents: "FD"
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
    contents: "FD"
    encoding: ascii
  - id: tag_size
    type: u2
  - id: availableinregionflag1
    type: u4
  - id: availableinregionflag2
    type: u4
  - id: unk1
    type: u4
  - id: unk2
    type: u4
  - id: unk3
    type: u4
  - id: unk4
    type: u4
  - id: country_group
    type: u1
  - id: unk5
    type: b3
  - id: reenable_initials
    type: b1
  - id: disable_initials
    type: b1
  - id: show_mii_contest_submissions_count
    type: b1
  - id: number_info_1
    type: b1
  - id: number_info_2
    type: b1
  - id: unk6
    type: u2
