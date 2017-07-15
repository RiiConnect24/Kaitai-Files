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
  - id: finishing_time
    size: 3
    doc: |
      Structure:

      * 7 bits - Minutes
      * 7 bits - Seconds
      * 10 Bits, Milliseconds
  - id: track_id
    type: u1
    doc: |
      Structure:

      * 6 bits - Track ID
      * 2 bits - Unknown, probably padding.
  - id: ids_ghost_send_dates
    type: u4
    doc: |
      Structure:

      * 6 bits - Vehicle ID
      * 6 bits - Character ID
      * 7 bits - Year ghost was sent
      * 4 bits - Month ghost was sent
      * 5 bits - Day ghost was sent
      * 4 bits - Controller ID
        * 0 - Wii Wheel
        * 1 - Wii Remote + Nunchuk
        * 2 - Classic Controller
        * 3 - GameCube Controller
  - id: compressed_flag_types
    type: u2
    doc: |
      Structure:

      * 4 bits - Unknown, always 0?
      * 1 bit - Compressed flag
        * 0 - Raw
        * 1 - Compressed
      * 2 bits - Unknown, always 0?
      * 7 bits - Ghost type
        * 0x01 - Player's best time
        * 0x02 - Downloaded ghost
        * 0x03 - Downloaded friend ghost?
        * 0x04 - Flag challenge ghost?
        * 0x06 - Ghost race
        * 0x25 - Normal staff ghost
        * 0x26 - Expert staff ghost
      * 1 bit - Drift type
        * 0 - Manual
        * 1 - Automatic
      * 1 bit - Unknown, probably padding
  - id: input_data_length
    type: u2
    doc: Measured when decompressed and without padding
  - id: lap_count
    type: u1
    doc: Total laps driven by ghost
  - id: lap_split_times
    size: 3
    repeat: expr
    repeat-expr: lap_count
    doc: |
      Structure:

      * 7 bits - Minutes
      * 7 bits - Seconds
      * 10 Bits, Milliseconds
  - id: unknown
    size: 20
    doc: Probably unused. The game attempts to store lap splits beyond the 5th here, but the internal data structures do not store that many splits, so RAM trash is stored instead when the lap count is greater than 5 (notably the finish time in the 6th split).
  - id: country_code
    type: u1
    doc: Null if sharing location disabled.
  - id: region_code
    type: u1
    doc: Null if sharing location disabled.
  - id: location_code
    type: u1
    doc: Null if sharing location disabled.
  - id: unknown_2
    type: u4
  - id: driver_mii_data
    size: 74
    doc: See the Mii kaitai for file structure.
  - id: crc16-ccitt
    type: u2
    doc: Checksum of the Mii.
