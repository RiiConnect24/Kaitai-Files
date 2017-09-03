meta:
  id: chjump
  file-extension: bin
  application: Wii Menu
  endian: be
seq:
  - id: magic
    size: 4
    type: str
    encoding: utf-8
  - id: filesize
    type: u4
  - id: unknown
    type: u4
    doc: Seems to be 1. Maybe version?
  - id: unknown2
    type: u4
    doc: Seems to be 0.
  - id: titletype
    type: u4
  - id: titleid
    size: 4
    type: str
    encoding: utf-8
  - id: unknown3
    type: u4
    doc: Seems to be 32.
  - id: charstrlen
    type: u4
  - id: charstr
    type: str
    size: charstrlen
    encoding: utf-8
