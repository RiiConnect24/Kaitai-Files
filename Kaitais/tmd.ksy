meta:
  id: tmd
  file-extension: tmd
  endian: be

seq:
  - id: signature_type
    type: u4
  - id: signature
    size: 256
  - id: padding_modulo_64
    size: 60
  - id: issuer
    type: str
    encoding: utf-8
    size: 64
  - id: version
    type: u1
  - id: ca_crl_version
    type: u1
  - id: signer_crl_version
    type: u1
  - id: is_vwii
    type: u1
  - id: system_version
    type: u8
    doc: The IOS that the title needs.
  - id: title_id
    type: u8
  - id: title_type
    type: u4
  - id: group_id
    type: u2
  - id: zero
    type: u2 
  - id: region_flag
    type: u2
    enum: region
    doc: Which region this title can be launched on.
  - id: reserved
    size: 58
  - id: access_rights
    type: u4
    doc: Flags for DVD video access and full PPC hardware access.
  - id: title_version
    type: u2
  - id: number_of_contents
    type: u2
  - id: boot_index
    type: u2
  - id: padding_modulo_64_3
    type: u2
  - id: content
    type: content
    repeat: expr
    repeat-expr: number_of_contents

types:
  content:
    seq:
      - id: content_id
        type: u4
      - id: index
        type: u2
      - id: type
        type: u2
      - id: size
        type: u8
      - id: sha1_hash
        size: 20
        
enums:
  region:
    0: japan
    1: usa
    2: pal
    3: region_free
    4: korea
