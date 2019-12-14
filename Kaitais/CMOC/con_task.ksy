meta:
  id: con_task
  file-extension:
    - bin
  endian: be
seq:
  - id: version
    type: u4
  - id: cd_size_offset
    type: u4
  - id: crc32
    type: u4
    doc: This crc32 is for the data starting at cd_offset, and the size for the data is the number in cd_size_offset.
  - id: image_size_offset
    type: u4
  - id: image_crc32
    type: u4
    doc: CRC32 for the contest image.
  - id: unknown1
    type: u4
  - id: date_offset
    type: u4
  - id: unknown2
    type: u4
  - id: tag
    type: str
    size: 2
    encoding: ascii
  - id: unknown3
    type: u4
  - id: contest_no_offset
    type: u4
  - id: contest_status_offset
    type: u4
  - id: unknown4
    type: u4
  - id: unknown5
    type: u4
