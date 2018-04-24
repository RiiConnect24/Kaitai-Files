meta:
  id: wii_shop
  file-extension: .bin
  application: Wii Shop Channel
  endian: be
seq:
 - id: csdf
   type: csdf
types:
  csdf:
    seq:
     - id: tag
       type: str
       encoding: utf-8
       size: 4
       doc: Stands for CHANS Script Data File?
     - id: length
       type: u4
     - id: dcvd
       type: dcvd
     - id: dltd
       type: dltd
     - id: crmd
       type: crmd
       repeat: expr
       repeat-expr: 4
  dcvd:
    seq:
      - id: tag
        type: str
        encoding: utf-8
        size: 4
      - id: length
        type: u4
      - id: timestamp
        type: u8
        doc: Timestamp in milliseconds.
  dltd:
    seq:
      - id: tag
        type: str
        encoding: utf-8
        size: 4
      - id: length
        type: u4
      - id: year
        type: u4
      - id: month
        type: u4
      - id: day
        type: u4
  crmd:
    seq:
      - id: tag
        type: str
        encoding: utf-8
        size: 4
      - id: length
        type: u4
      - id: dmsg
        type: dmsg
      - id: dtpl
        type: dtpl
  dmsg:
    seq:
      - id: tag
        type: str
        encoding: utf-8
        size: 4
      - id: length
        type: u4
      - id: msg
        type: str
        encoding: utf-16be
        size: length
  dtpl:
    seq:
      - id: tag
        type: str
        encoding: utf-8
        size: 4
      - id: length
        type: u4
      - id: tpl
        size: length
