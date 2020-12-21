meta:
  id: mobiclip_ds
  file-extension: mods
  endian: le
seq:
  - id: magic
    contents: "MODS"
  - id: tag_id
    type: u2
  - id: tag_id_size_dword
    type: u2
  - id: frame_count
    type: u4
  - id: width
    type: u4
  - id: height
    type: u4
  - id: fps
    type: u4
  - id: audio_codec
    type: u2
  - id: nb_channel
    type: u2
  - id: frequency
    type: u4
  - id: biggest_frame
    type: u4
  - id: audio_offset
    type: u4
  - id: keyframe_index_offset
    type: u4
  - id: keyframe_count
    type: u4
instances:
  keyframe_table:
    type: keyframe_table
    pos: keyframe_index_offset
    repeat: expr
    repeat-expr: keyframe_count
types:
  keyframe_table:
    seq:
      - id: frame_number
        type: u4
      - id: data_offset
        type: u4