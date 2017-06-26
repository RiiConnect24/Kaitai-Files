meta:
  id: chjump
  file-extension: bin
  application: Wii Menu
  endian: be
seq:
  - id: magic
    contents: "ChJp"
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
  - id: charstrlen
    type: u4
  - id: charstr
    type: str
    size: charstrlen
    encoding: utf-8
