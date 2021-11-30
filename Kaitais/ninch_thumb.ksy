meta:
  id: ninch_thumb
  file-extension:
    - thumb
  endian: be

seq:
  - id: unknown
    type: u2
  - id: version
    type: u1
  - id: unknown_region
    type: u1
    doc: 0 for v3, 0x39 for v4 JP
  - id: filesize
    type: u4
  - id: unknown1
    type: u1
    repeat: expr
    repeat-expr: 20
  - id: number_of_images
    type: u4
  - id: jpeg_table
    type: jpegs_table
    repeat: expr
    repeat-expr: number_of_images
    
types:
  jpegs_table:
    seq:
     - id: jpeg_size
       type: u4
       doc: The size of the jpeg
     - id: jpeg_offset
       type: u4
       doc: Offset to where the image is in the file
    instances:
      jpeg:
        pos: jpeg_offset
        size: file_size
