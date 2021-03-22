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
    enum: controllers
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
    enum: ghost
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
    doc: Checksum of the Mii. (CCITT XModem)
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
enums:
  controllers:
    0: wii_wheel
    1: wii_remote
    2: classic_controller
    3: gamecube_controller
  ghost:
    1: players_best_time
    2: world_record_ghost
    3: continental_record_ghost
    4: flag_challenge_ghost
    6: ghost_race
    7: friend_ghost
    8: friend_ghost
    9: friend_ghost
    10: friend_ghost
    11: friend_ghost
    12: friend_ghost
    13: friend_ghost
    14: friend_ghost
    15: friend_ghost
    16: friend_ghost
    17: friend_ghost
    18: friend_ghost
    19: friend_ghost
    20: friend_ghost
    21: friend_ghost
    22: friend_ghost
    23: friend_ghost
    24: friend_ghost
    25: friend_ghost
    26: friend_ghost
    27: friend_ghost
    28: friend_ghost
    29: friend_ghost
    30: friend_ghost
    31: friend_ghost
    32: friend_ghost
    33: friend_ghost
    34: friend_ghost
    35: friend_ghost
    36: friend_ghost
    37: friend_ghost
    37: normal_staff_ghost
    38: expert_staff_ghost