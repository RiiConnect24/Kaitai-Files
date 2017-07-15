meta:
  id: mkw_competitions
  file-extension:
    - rkc
    - bin
  application: Mario Kart Wii
  endian: be
seq:
  - id: magic
    type: str
    size: 4
    encoding: utf-8
    doc: Always RKCT.
  - id: data_length
    type: u4
  - id: all_file_headers_length
    type: u4
    doc: Offset to the beginning of the U8 file.
  - id: unknown
    type: u4
    doc: Always 0x640. Maybe a version number?
  - id: magic_rkco
    type: str
    size: 4
    encoding: utf-8
    doc: Always RKCO.
  - id: game_mode
    type: u2
    enum: game_mode
  - id: course_id
    type: u1
  - id: engine_class
    type: u2
    enum: engine_class
  - id: vehicle_restriction
    type: u2
    enum: vehicle_restriction
  - id: camera_angle
    type: u2
    enum: camera_angle
  - id: minimap_object
    type: u2
    doc: Defines an object to be shown on the minimap.
  - id: empty
    type: u2
  - id: empty2
    type: u2
  - id: cannon_flag
    type: u2
    doc: If a track has no cannon, this is set to 0. If a track has a cannon and its
setting is 0xFFFF, it is set to 0, too. Otherwise, it is set to the value of the cannon setting.
  - id: cpu_players_amount
    type: u2
  - id: driver_vehicle_settings_cpu_players
    repeat: expr
    repeat-expr: 22
    doc: First byte driver, second byte vehicle.
0xFF for random driver / vehicle or unused slots.
  - id: controller
    type: u1
    enum: controller
  - id: padding
    type: u1
  - id: common_object_files
    type: u2
    doc: Bit field for the different files.
  - id: score
    type: u2
    doc: Amount of gates, amount of coins, etc.
  - id: intro_settings
    type: u1
    enum: intro_settings
    doc: Between 0x00 and 0x03.
  - id: padding
    type: u1
  - id: unknown2
    type: u2
    enum: unknown2
    doc: Not used by the game.
  - id: padding
    type: u2
  - id: header_checksum
    type: u2
enums:
  game_mode:
    0: time_trial
    1: vs_race
    3: many_different_objects
    4: spiky_topmen_big_pokey
    5: coins
    6: star_gates
    11: battle_no_position_tracker
    12: battle_position_tracker
  engine_class:
    0: 50cc
    1: 100cc
    2: 150cc
    3: battle
  vehicle_restriction:
    0: karts_only
    1: bikes_only
    2: no_restriction
  camera_angle:
    3: normal_camera
    7: camera_from_above
  controller:
    0: free_choice
    1: wii_wheel_only
  intro_settings:
    0: no_intro_video
  unknown2:
    18000: tracks_with_laps
    36000: tracks_with_score
