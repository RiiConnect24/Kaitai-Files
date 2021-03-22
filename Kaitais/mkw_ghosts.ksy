meta:
  id: mkw_ghosts
  file-extension: rkg
  application: Mario Kart Wii
  endian: be
seq:
  - id: magic
    type: str
    size: 4
    encoding: utf-8
    doc: RKGD, Revolution Kart Ghost Data
  - id: finishing_time_minutes
    type: b7
  - id: finishing_time_seconds
    type: b7
  - id: finishing_time_milliseconds
    type: b10
  - id: track_id
    type: b6
  - id: unknown_1
    type: b2
    doc: Probably padding.
  - id: vehicle_id
    type: b6
  - id: character_id
    type: b6
  - id: ghost_sent_year
    type: b7
  - id: ghost_sent_month
    type: b4
  - id: ghost_sent_day
    type: b5
  - id: controller_id
    type: b4
  - id: unknown_2
    type: b4
    doc: Always 0?
  - id: compressed_flag
    type: b1
  - id: unknown_3
    type: b2
    doc: Always 0?
  - id: ghost_type
    type: b7
  - id: drift_type
    type: b1
  - id: unknown_4
    type: b1
    doc: Probably padding.
  - id: input_data_length
    type: u2
    doc: Measured when decompressed and without padding.
  - id: lap_count
    type: u1
    doc: Total laps driven by ghost
  - id: lap_split_time
    type: lap_split
    repeat: expr
    repeat-expr: 5
  - id: unknown_5
    size: 20
    doc: Probably unused. The game attempts to store lap splits beyond the 5th here, but the internal data structures do not store that many splits, so RAM trash is stored instead when the lap count is greater than 5 (notably the finish time in the 6th split).
  - id: country_code
    type: u1
    doc: Null if sharing location disabled.
  - id: region_code
    type: u1
    doc: Null if sharing location disabled.
  - id: location_code
    type: u2
    doc: Null if sharing location disabled.
  - id: unknown_6
    type: u4
    doc: Typically 0 (Globe coordinates might go here?)
  - id: driver_mii_data
    size: 74
    doc: See the Mii kaitai for file structure.
  - id: crc16_mii
    type: u2
    doc: Checksum of the Mii.
  - id: data
    size: _io.size - _io.pos
types:
  lap_split:
    seq:
      - id: finishing_time_minutes
        type: b7
      - id: finishing_time_seconds
        type: b7
      - id: finishing_time_milliseconds
        type: b10
