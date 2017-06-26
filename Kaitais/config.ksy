meta:
  id: config
  file-extension: dat
  application: Wii Menu
  endian: be
seq:
  - id: header0
    type: u1
    doc: 0x00?
  - id: header1
    type: u1
    doc: 0x00?
  - id: header2
    type: u1
    doc: 0x00?
  - id: header3
    type: u1
    doc: 0x00?
  - id: header4
    type: u1
    doc: 0x01 when there's at least one valid connection to the Internet.
  - id: header5
    type: u1
    doc: 0x00?
  - id: header6
    type: u1
    doc: Always 0x07?
  - id: header7
    type: u1
    doc: 0x00?
  - id: connection
    type: connection
    repeat: expr
    repeat-expr: 3
types:
  connection:
    - id: flags
      type: u1
    - id: padding
      size: 3
    - id: ip
      type: u1
      repeat: expr
      repeat-expr: 4
    - id: netmask
      type: u1
      repeat: expr
      repeat-expr: 4
    - id: gateway
      type: u1
      repeat: expr
      repeat-expr: 4
    - id: dns1
      type: u1
      repeat: expr
      repeat-expr: 4
    - id: dns2
      type: u1
      repeat: expr
      repeat-expr: 4
    - id: padding2
      size: 2
    - id: mtu
      type: u2
      doc: Valid values are 0 and 576-1500 range.
    - id: padding3
      size: 8
    - id: proxy_settings
      type: proxy_settings
    - id: padding4
      size: u1
    - id: proxy_settings2
      type: proxy_settings
      doc: Seems to be a duplicate of proxy_settings.
    - id: padding5
      size: 1297
    - id: ssid
      type: str
      size: 32
      encoding: utf-8
    - id: padding6
      type: u1
    - id: ssid_length
      type: u1
      doc: Length of ssid[] (AP name in bytes).
    - id: padding7
      size: 3
    - id: encryption
      type: u1
      doc: (Probably) Encryption.  OPN: 0x00, WEP64: 0x01, WEP128: 0x02 WPA-PSK (TKIP): 0x04, WPA2-PSK (AES): 0x05, WPA-PSK (AES): 0x06
    - id: padding8
      size: 3
    - id: key_length
      type: u1
      doc: Length of key[] (encryption key) in bytes. 0x00 for WEP64 and WEP128.
    - id: unknown
      type: u1
      doc: 0x00 or 0x01 toggled with a WPA-PSK (TKIP) and with a WEP entered with hex instead of ASCII.
    - id: padding9
      type: u1
    - id: key
      size: 64
      doc: Encryption key. For WEP, key is stored 4 times (20 bytes for WEP64 and 52 bytes for WEP128) then padded with 0x00.
    - id: padding10
      size: 236
  proxy_settings:
    - id: use_proxy
      type: u1
      doc: 0x00 -> no proxy. 0x01 -> proxy.
    - id: user_proxy_userandpass
      type: u1
      doc: 0x00 -> don't use username and password; 0x01 -> use username and password
    - id: padding
      type: u2
    - id: proxy_name
      size: 255
    - id: padding2
      type: u1
    - id: proxy_port
      type: u2
      doc: 0-34463 range.
    - id: proxy_username
      type: str
      size: 32
      encoding: utf-8
    - id: padding3
      type: u1
    - id: proxy_password
      type: str
      size: 32
      encoding: utf-8
