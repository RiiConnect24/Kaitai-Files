meta:
  id: misc
  file-extension: bin
seq:
  - id: mail_timestamps
    type: u8
    repeat: expr
    repeat-expr: 3
  - id: unknown
    size: 24
  - id: timestamp_stm
    type: u8
    doc: When to call STM_Wakeup.
  - id: padding
    size: 15360
