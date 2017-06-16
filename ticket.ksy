meta:
  id: ticket
  file-extension: tik
  endian: be
seq:
  - id: signature_type
    type: u4
    doc: Always 0x10001 for RSA-2048.
  - id: signature
    size: 256
  - id: padding
    size: 60
  - id: signature_issuer
    type: str
    encoding: utf-8
    size: 64
  - id: ecdhdata
    size: 60
    doc: Used to generate one-time key during install of console specific titles.
  - id: padding2
    size: 3
  - id: encrypted_title_key
    size: 16
  - id: unknown
    type: u1
  - id: ticket_id
    size: 8
    doc: Used as IV for title key decryption of console specific titles.
  - id: console_id
    type: u4
  - id: title_id_iv
    type: u8
    doc: Used for AES-CBC encryption.
  - id: unknown2
    type: u2
    doc: Usually 0xFFFF.
  - id: ticket_version
    type: u1
  - id: permitted_titles_mask
    type: u4
  - id: permit_mask
    type: u4
    doc: The current disc title is ANDed with the inverse of this mask to see i the result matches the Permitted Titles Mask.
  - id: title_export
    type: u1
    doc: Allowed using PRNG key. 0 = Not Allowed. 1 = Allowed.
  - id: common_key_index
    type: u1
    doc: 0 = Normal Common Key. 1 = Korean Common Key.
  - id: unknown3
    size: 48
    doc: 0 for non-VC. For VC, all 0 except last byte is 1.
  - id: content_access_permissions
    type: u1
    repeat: expr
    repeat-expr: 64
  - id: padding3
    type: u2
  - id: enable_time_limit
    type: u4
    doc: 0 = Disabled. 1= Enabled.
  - id: time_limit_seconds
    type: u4
  - id: time_limit_structs
    type: u8
    repeat: expr
    repeat-expr: 7
