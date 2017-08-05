meta:
  id: nwc24msg
  file-extension:
    - cfg
    - cbk
  endian: be
seq:
  - id: magic
    contents: "WcCf"
  - id: version
    type: u4
    doc: As of an unknown IOS, must always be 8
  - id: wii_code
    type: u8be
    doc: Kaitai cuts off the 0 at the front of the number, if applicable, due to how it handles integers.
  - id: id_creation
    type: u4
    doc: Amount of creations for this file
  - id: has_registered
    type: u4
    doc: 1 = ID is not registered yet, 2 = ID has been registered.
  - id: wii_email_domain
    size: 0x40
    type: str
    encoding: utf-8
  - id: passwd
    size: 0x20
    type: str
    encoding: utf-8
    doc: Returned from POST /cgi-bin/account.cgi
  - id: mlchkid
    size: 0x24
    type: str
    encoding: utf-8
  - id: mail_engine_urls
    size: 0x80
    type: str
    encoding: utf-8
    repeat: expr
    repeat-expr: 5
  - id: reserved
    size: 0xdc
  - id: title_booting
    type: u4
    doc: Normally set to zero when Wii Menu creates this config file. Enables WC24 title booting when non-zero. KD can't change this field since the function that sets it 
isn't used, and Wii Menu doesn't change this.
  - id: checksum
    type: u4
    doc: This is similar to the NANDBOOTINFO and state.dat checksums.
