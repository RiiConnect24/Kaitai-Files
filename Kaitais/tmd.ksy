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
  - id: padding_modulo_64_2
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
  - id: reserved
    size: 62
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
