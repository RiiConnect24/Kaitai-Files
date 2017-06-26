meta:
  id: tmds
  file-extension: sys
  endian: be
seq:
  - id: unknown
    type: u4
    doc: Always 0x0100
  - id: title_id
    type: str
    size: 4
    encoding: utf-8
    doc: Content ID
  - id: unknown2
    type: u4
    doc: Seen values: 0x0208
  - id: padding
    type: u4
    repeat: expr
    repeat-expr: 32
  - id: sig_type
    type: u4
    doc: Seen values: 0x010001
  - id: sig
    size: 256
  - id: padding2
    type: u4
    repeat: expr
    repeat-expr: 15
  - id: issuer
    type: str
    size: 26
    encoding: utf-8
    doc: Syntax: Root-CA%08x-CP%08x
  - id: padding3
    type: u4
    repeat: expr
    repeat-expr: 10
  - id: unknown3
    type: u4
    doc: Always 0x04000100
  - id: title_id2
    type: str
    size: 4
    encoding: utf-8
    doc: Content ID again
  - id: title_type
    type: u4
    doc: 0x01 when cid2[0] == 'R' or when cid[0] == '.\0'. It's 0x00 if cid[0] == '1'.
  - id: group_id
    type: u2
    doc: 0x200 or 0x300 if cid2[0] == '.\0', 0x400 when cid2[0] == '1'. If cid[0] == 'R', this is usually a number (in ASCII), but it can contain letters.
  - id: unknown
    type: u4
    repeat: expr
    repeat-expr: 6
    doc: Really weird, includes "Egg" quite often.
  - id: final_padding
    type: u4
    repeat: expr
    repeat-expr: 6
