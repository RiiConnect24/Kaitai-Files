meta:
  id: ninch_soft
  file-extension:
    - info
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
  - id: crc32
    type: u4
  - id: dllistid
    type: u4
  - id: country_code
    type: u4
  - id: language_code
    type: u4
  - id: ratings_table_offset
    type: u4
  - id: times_played_offset
    type: u4
  - id: recommendations_entry_number
    type: u4
  - id: recommendations_table_offset
    type: u4
  - id: unknown_2
    type: u4
    repeat: expr
    repeat-expr: 2
  - id: videos_entry_number
    type: u4
  - id: videos_table_offset
    type: u4
  - id: unknown_3
    type: u4
    repeat: expr
    repeat-expr: 4
  - id: picture_offset
    type: u4
  - id: picture_size
    type: u4
  - id: unknown_4
    type: u4
  - id: rating_picture_offset
    type: u4
  - id: rating_picture_size
    type: u4
  - id: unknown_5
    type: u4
    repeat: expr
    repeat-expr: 16
  - id: soft_id
    type: u4
  - id: game_id
    type: str
    size: 4
  - id: platform_flag
    type: u1
  - id: company_id
    type: u4
  - id: unknown_6
    type: u2
  - id: unknown_7
    type: u2
  - id: unknown_8
    type: u1
  - id: wii_shop_channel_button_flag
    type: u1
  - id: purchase_button_flag
    type: u1
  - id: release_year
    type: u2
  - id: release_month
    type: u1
  - id: release_day
    type: u1
  - id: wii_points
    type: u4
    notes: Null if none. 
  - id: unknown_11
    type: u1
    repeat: expr
    repeat-expr: 4
  - id: wii_remote_flag
    type: u1
  - id: nunchuk_flag
    type: u1
  - id: classic_controller_flag
    type: u1
  - id: gamecube_controller_flag
    type: u1
  - id: mii_flag
    type: u1
  - id: online_flag
    type: u1
  - id: wiiconnect24_flag
    type: u1
  - id: nintendo_wifi_connection_flag
    type: u1
  - id: downloadable_content_flag
    type: u1
  - id: wireless_play_flag
    type: u1
  - id: download_play_flag
    type: u1
  - id: touch_generations_flag
    type: u1
  - id: language_chinese_flag
    type: u1
  - id: language_korean_flag
    type: u1
  - id: language_japanese_flag
    type: u1
  - id: language_english_flag
    type: u1
  - id: language_french_flag
    type: u1
  - id: language_spanish_flag
    type: u1
  - id: language_german_flag
    type: u1
  - id: language_italian_flag
    type: u1
  - id: language_dutch_flag
    type: u1
  - id: unknown_16
    type: u1
  - id: unknown_17
    type: u1
  - id: unknown_18
    type: u1
  - id: unknown_19
    type: u1
  - id: unknown_20
    type: u1
  - id: unknown_21
    type: u1
  - id: unknown_22
    type: u1
  - id: unknown_23
    type: u1
  - id: unknown_24 
    type: u1
  - id: unknown_25
    type: u1
  - id: title_text
    type: str
    size: 186
    encoding: utf-16
  - id: description_text
    type: str
    size: 246
    encoding: utf-16
  - id: genre_text
    type: str
    size: 58
    encoding: utf-16
  - id: players_text
    type: str
    size: 62
    encoding: utf-16
  - id: peripherals_text
    type: str
    size: 108
    encoding: utf-16
  - id: unknown_26
    type: str
    size: 80
    encoding: utf-16
  - id: disclaimer_text
    type: str
    size: 4800
    encoding: utf-16
  - id: unknown_27
    type: u1
  - id: distribution_date_text
    type: str
    size: 82
    encoding: utt-16
  - id: wii_points_text
    type: str
    size: 82
    encoding: utf-16
  - id: custom_field_text
    type: str
    size: 82
    encoding: utf-16
    repeat: expr
    repeat-expr: 10
instances:
  times_played_table:
    pos: times_played_offset
    type: times_played_table
types:
  times_played_table:
    seq:
      - id: time_spent_playing_total
        type: u4
        doc: In hours.
      - id: time_spent_playing_per_person
        type: u4
        doc: In minutes.
      - id: times_played_total
        type: u4
      - id: times_played_per_person
        type: u4
        doc: Will be multiplied by 0.01.
enums:
  platforms:
    0: none
    1: wii
    2: wii_channels
    3: nes
    4: snes
    5: n64
    6: tg16
    7: genesis
    8: neogeo
    9: none
    10: ds
    11: wiiware
    12: master
    13: c64
    14: arcade
    15: ds
    16: dsi
    17: dsiware
    18: 3ds
    19: 3ds_download
    20: 3ds_gameboy
    21: none