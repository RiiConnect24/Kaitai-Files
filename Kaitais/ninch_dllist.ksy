meta:
  id: ninch_dllist
  file-extension:
    - bin
    - LZ
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
  - id: thumbnail_id
    type: u4
  - id: country_code
    type: u4
  - id: language_code
    type: u4
  - id: unknown_2
    type: u1
    repeat: expr
    repeat-expr: 9
  - id: ratings_entry_number
    type: u4
  - id: ratings_table_offset
    type: u4
  - id: title_types_entry_number
    type: u4
  - id: title_types_table_offset
    type: u4
  - id: company_entry_number
    type: u4
  - id: company_table_offset
    type: u4
  - id: title_entry_number
    type: u4
  - id: title_table_offset
    type: u4
  - id: new_title_entry_number
    type: u4
  - id: new_title_table_offset
    type: u4
  - id: videos_1_entry_number
    type: u4
  - id: videos_1_table_offset
    type: u4
  - id: new_video_entry_number
    type: u4
  - id: new_video_table_offset
    type: u4
  - id: demos_entry_number
    type: u4
  - id: demos_table_offset
    type: u4
  - id: unknown_5
    type: u4
  - id: unknown_6
    type: u4
  - id: recommendations_entry_number
    type: u4
  - id: recommendations_table_offset
    type: u4
  - id: unknown_7
    type: u4
    repeat: expr
    repeat-expr: 4
  - id: recent_recommendations_entry_number
    type: u4
  - id: recent_recommendations_table_offset
    type: u4
  - id: unknown_8
    type: u4
    repeat: expr
    repeat-expr: 2
  - id: popular_videos_entry_number
    type: u4
  - id: popular_videos_table_offset
    type: u4
  - id: detailed_ratings_entry_number
    type: u4
  - id: detailed_ratings_table_offset
    type: u4
  - id: last_update
    type: str
    encoding: utf-16be
    size: 62
  - id: unknown_9
    type: u1
    repeat: expr
    repeat-expr: 3
  - id: dl_url_ids
    type: str
    repeat: expr
    repeat-expr: 5
    size: 256
    encoding: utf-8
    doc: Part of the path in the URL for the Nintendo Channel files.
  - id: unknown_10
    type: u4
instances:
  ratings_table:
    pos: ratings_table_offset
    type: ratings_table
    repeat: expr
    repeat-expr: ratings_entry_number
  title_types_table:
    pos: title_types_table_offset
    type: title_types_table
    repeat: expr
    repeat-expr: title_types_entry_number
  company_table:
    pos: company_table_offset
    type: company_table
    repeat: expr
    repeat-expr: company_entry_number
  title_table:
    pos: title_table_offset
    type: title_table
    repeat: expr
    repeat-expr: title_entry_number
  new_title_table:
    pos: new_title_table_offset
    type: new_title_table
    repeat: expr
    repeat-expr: new_title_entry_number
  videos_1_table:
    pos: videos_1_table_offset
    type: videos_1_table
    repeat: expr
    repeat-expr: videos_1_entry_number
  new_video_table:
    pos: new_video_table_offset
    type: new_video_table
    repeat: expr
    repeat-expr: new_video_entry_number
  demos_table:
    pos: demos_table_offset
    type: demos_table
    repeat: expr
    repeat-expr: demos_entry_number
  recommendations_table:
    pos: recommendations_table_offset
    type: recommendations_table
    repeat: expr
    repeat-expr: recommendations_entry_number
  recent_recommendations_table:
    pos: recent_recommendations_table_offset
    type: recent_recommendations_table
    repeat: expr
    repeat-expr: recent_recommendations_entry_number
  popular_videos_table:
    pos: popular_videos_table_offset
    type: popular_videos_table
    repeat: expr
    repeat-expr: popular_videos_entry_number
  detailed_ratings_table:
    pos: detailed_ratings_table_offset
    type: detailed_ratings_table
    repeat: expr
    repeat-expr: detailed_ratings_entry_number
    
types:
  ratings_table:
    seq:
      - id: rating_id
        type: u1
      - id: rating_group
        type: u1
        enum: rating_group
      - id: age
        type: u1
        doc: Required years of age.
      - id: unknown
        type: u1
      - id: jpeg_offset
        type: u4
        doc: Offset for a picture of this rating.
      - id: jpeg_size
        type: u4
      - id: title
        type: str
        encoding: utf-16be
        size: 22
  title_types_table:
    seq:
      - id: type_id
        type: u1
      - id: console_model
        type: str
        encoding: utf-8
        size: 3
        doc: Console model code.
      - id: title
        type: str
        encoding: utf-16be
        size: 102
      - id: group_id
        type: u1
      - id: unknown
        type: u1
        doc: Usually matches the last byte of the rating list header.
  company_table:
    seq:
      - id: id
        type: u4
      - id: dev_title
        type: str
        encoding: utf-16be
        size: 62
      - id: pub_title
        type: str
        encoding: utf-16be
        size: 62
  title_table:
    seq:
      - id: id
        type: u4
      - id: title_id
        type: str
        encoding: utf-8
        size: 4
      - id: title_type
        type: u1
        enum: platforms
      - id: genre
        type: u1
        repeat: expr
        repeat-expr: 3
        enum: genre
      - id: company_offset
        type: u4
      - id: release_date_year
        type: u2
        doc: Null when there's no release date.
      - id: release_date_month
        type: u1
        doc: Null when there's no release date.
      - id: release_date_day
        type: u1
        doc: Null when there's no release date.
      - id: rating_id
        type: u1
      - id: unknown_1
        type: u1
        repeat: expr
        repeat-expr: 2
      - id: unknown_2
        type: b1
      - id: casual_hardcore_1
        type: b1
        enum: casual_hardcore
      - id: unknown_3
        type: b1
      - id: casual_hardcore_2
        type: b1
        enum: casual_hardcore
      - id: unknown_4
        type: b1
      - id: casual_hardcore_3
        type: b1
        enum: casual_hardcore
      - id: unknown_5
        type: b1
      - id: casual_hardcore_4
        type: b1
        enum: casual_hardcore
      - id: unknown_6
        type: b1
      - id: casual_hardcore_5
        type: b1
        enum: casual_hardcore
      - id: unknown_7
        type: b1
      - id: casual_hardcore_6
        type: b1
        enum: casual_hardcore
      - id: unknown_8
        type: b1
      - id: casual_hardcore_7
        type: b1
        enum: casual_hardcore
      - id: unknown_9
        type: b1
      - id: casual_hardcore_8
        type: b1
        enum: casual_hardcore
      - id: unknown_10
        type: b1
      - id: casual_hardcore_9
        type: b1
        enum: casual_hardcore
      - id: unknown_11
        type: b1
      - id: casual_hardcore_10
        type: b1
        enum: casual_hardcore
      - id: unknown_12
        type: b1
      - id: casual_hardcore_11
        type: b1
        enum: casual_hardcore
      - id: unknown_13
        type: b1
      - id: casual_hardcore_12
        type: b1
        enum: casual_hardcore
      - id: unknown_14
        type: b7
      - id: casual_hardcore_all_ages_and_genders
        type: b1
        enum: casual_hardcore
      - id: everyone_gamers_1
        type: b1
        enum: everyone_gamers
      - id: alone_with_friends_1
        type: b1
        enum: alone_with_friends
      - id: everyone_gamers_2
        type: b1
        enum: everyone_gamers
      - id: alone_with_friends_2
        type: b1
        enum: alone_with_friends
      - id: everyone_gamers_3
        type: b1
        enum: everyone_gamers
      - id: alone_with_friends_3
        type: b1
        enum: alone_with_friends
      - id: everyone_gamers_4
        type: b1
        enum: everyone_gamers
      - id: alone_with_friends_4
        type: b1
        enum: alone_with_friends
      - id: everyone_gamers_5
        type: b1
        enum: everyone_gamers
      - id: alone_with_friends_5
        type: b1
        enum: alone_with_friends
      - id: everyone_gamers_6
        type: b1
        enum: everyone_gamers
      - id: alone_with_friends_6
        type: b1
        enum: alone_with_friends
      - id: everyone_gamers_7
        type: b1
        enum: everyone_gamers
      - id: alone_with_friends_7
        type: b1
        enum: alone_with_friends
      - id: everyone_gamers_8
        type: b1
        enum: everyone_gamers
      - id: alone_with_friends_8
        type: b1
        enum: alone_with_friends
      - id: everyone_gamers_9
        type: b1
        enum: everyone_gamers
      - id: alone_with_friends_9
        type: b1
        enum: alone_with_friends
      - id: everyone_gamers_10
        type: b1
        enum: everyone_gamers
      - id: alone_with_friends_10
        type: b1
        enum: alone_with_friends
      - id: everyone_gamers_11
        type: b1
        enum: everyone_gamers
      - id: alone_with_friends_11
        type: b1
        enum: alone_with_friends
      - id: everyone_gamers_12
        type: b1
        enum: everyone_gamers
      - id: alone_with_friends_12
        type: b1
        enum: alone_with_friends
      - id: unknown_15
        type: b6
      - id: everyone_gamers_all_ages_and_genders
        type: b1
        enum: everyone_gamers
      - id: alone_with_friends_all_ages_and_genders
        type: b1
        enum: alone_with_friends
      - id: unknown_16
        type: u1
        repeat: expr
        repeat-expr: 7
      - id: unknown_17
        type: b5
      - id: online
        type: b1
        enum: yes_no
      - id: video_flag
        type: b1
        enum: yes_no
      - id: multiplayer
        type: b1
        enum: yes_no
      - id: unknown_18
        type: u1
        repeat: expr
        repeat-expr: 8
      - id: unknown_19
        type: b5
      - id: medal
        type: b3
        enum: medal
      - id: unknown_20
        type: u1
        repeat: expr
        repeat-expr: 2
      - id: title
        type: str
        encoding: utf-16be
        size: 62
      - id: subtitle
        type: str
        encoding: utf-16be
        size: 62
      - id: short_title
        type: str
        encoding: utf-16be
        size: 62
    instances:
      company_entry:
        pos: company_offset
        type: company_table
  new_title_table:
    seq:
      - id: new_title_offset
        type: u4
    instances:
      new_title_entry:
        pos: new_title_offset
        type: title_table
  videos_1_table:
    seq:
      - id: id
        type: u4
        doc: Decimal ID for URL filename.
      - id: time_length
        type: u2
        doc: Length of video measured in seconds.
      - id: title_id
        type: u4
        doc: The associated title entry's ID.
      - id: video_type
        type: u1
        enum: video_type
      - id: unknown
        type: u1
        repeat: expr
        repeat-expr: 14
      - id: unknown_2
        type: u1
      - id: rating_id
        type: u1
      - id: unknown_3
        type: u1
      - id: new_tag
        type: u1
      - id: video_index
        type: u1
      - id: unknown_4
        type: u1
        repeat: expr
        repeat-expr: 2
      - id: title
        type: str
        encoding: utf-16be
        size: 246
  new_video_table:
    seq:
      - id: id
        type: u4
        doc: Decimal ID for URL filename.
      - id: unknown
        type: u2
        doc: Time length?
      - id: title_id
        type: u4
      - id: unknown_2
        type: u1
        repeat: expr
        repeat-expr: 18
      - id: title
        type: str
        encoding: utf-16be
        size: 204
  demos_table:
    seq:
      - id: id
        type: u4
      - id: title
        type: str
        encoding: utf-16be
        size: 62
      - id: subtitle
        type: str
        encoding: utf-16be
        size: 62
        doc: Optional.
      - id: titleid
        type: u4
      - id: company_offset
        type: u4
      - id: removal_year
        type: u2
        doc: Null when there's no end of distribution date.
      - id: removal_month
        type: u1
        doc: Null when there's no end of distribution date.
      - id: removal_day
        type: u1
        doc: Null when there's no end of distribution date.
      - id: unknown
        type: u4
      - id: rating_id
        type: u1
      - id: new_tag
        type: u1
        doc: When not zero, seems to display the "NEW" tag.
      - id: new_tag_index
        type: u1
        doc: Might be the index for the order of demos with the "NEW" tag.
      - id: unknown_2
        type: u1
        repeat: expr
        repeat-expr: 205
    instances:
      company_entry:
        pos: company_offset
        type: company_table
  recommendations_table:
    seq:
      - id: recommendation_title_offset
        type: u4
    instances:
      recommendation_title_entry:
        pos: recommendation_title_offset
        type: title_table
  recent_recommendations_table:
    seq:
      - id: recent_recommendation_title_offset
        type: u4
      - id: unknown
        type: u2
    instances:
      recent_recommendation_title_entry:
        pos: recent_recommendation_title_offset
        type: title_table
  popular_videos_table:
    seq:
      - id: id
        type: u4
        doc: Decimal ID for URL filename.
      - id: time_length
        type: u2
      - id: title_id
        type: u4
      - id: bar_color
        type: u1
        doc: 0 for grey, 1 for blue, 8 for red
      - id: unknown_2
        type: u1
        repeat: expr
        repeat-expr: 15
      - id: rating_id
        type: u1
      - id: unknown_3
        type: u1
      - id: video_rank
        type: u1
      - id: unknown_4
        type: u1
      - id: title
        type: str
        encoding: utf-16be
        size: 204
  detailed_ratings_table:
    seq:
      - id: rating_group
        type: u1
      - id: rating_id
        type: u1
      - id: title
        type: str
        encoding: utf-16be
        size: 204
enums:
  genre:
    1: action
    2: adventure
    3: life_training
    4: sports
    5: puzzles
    6: role_playing
    7: racing
    8: strategy
    9: simulation
    10: music_rhythm
    11: board_game
    12: shooter
    13: other
    14: fighting
    15: arcade
    16: imports
  rating_group:
    1: cero
    2: esrb
    3: usk
    4: pegi
    5: pegi_fin
    6: pegi_por
    7: bbfc
    8: oflc_agcb
    9: oflc_nz
  casual_hardcore:
    0: hardcore
    1: casual
  everyone_gamers:
    0: gamers
    1: everyone
  alone_with_friends:
    0: with_friends
    1: alone
  medal:
    0: none
    1: bronze
    2: silver
    3: gold
    4: platinum
  yes_no:
    0: yes
    1: no
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
    10: ds
    11: wiiware
    12: master
    13: c64
    14: arcade
    16: dsi
    17: dsiware
    18: threeds
    19: threeds_download
    20: threeds_gameboy
  video_type:
    0: none
    1: wii
    2: wiiware
    3: wii_virtual_console
    4: ds
    5: dsi
    6: dsiware
    7: message
    8: threeds
    10: threeds_virtual_console
