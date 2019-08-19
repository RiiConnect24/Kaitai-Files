meta:
  id: news_file
  application: News Channel
  endian: be
seq:
  - id: version
    type: u4
    doc: v1 of News Channel is set to 0, v2 of News Channel is set to 512.
  - id: filesize
    type: u4
  - id: crc32
    type: u4
  - id: updated_timestamp_1
    type: u4
    doc: Timestamp is minutes since 2000.
  - id: term_timestamp
    type: u4
    doc: Timestamp is minutes since 2000.
  - id: country_code
    type: u4le
  - id: updated_timestamp_2
    type: u4
    doc: Timestamp is minutes since 2000.
  - id: language_list
    size: 16
    doc: For the language select screen.
  - id: language_code
    type: u1
  - id: goo_flag
    type: u1
  - id: language_select_screen_flag
    type: u1
  - id: download_interval
    type: u1
  - id: message_offset
    type: u4
  - id: topics_entry_number
    type: u4
  - id: topics_table_offset
    type: u4
  - id: articles_entry_number
    type: u4
  - id: articles_table_offset
    type: u4
  - id: source_entry_number
    type: u4
  - id: source_table_offset
    type: u4
  - id: locations_entry_number
    type: u4
  - id: locations_table_offset
    type: u4
  - id: pictures_entry_number
    type: u4
  - id: pictures_table_offset
    type: u4
  - id: download_count
    type: u2
  - id: unknown
    type: u2
  - id: wii_menu_headlines_entry_number
    type: u4
  - id: wii_menu_headlines_table_offset
    type: u4
instances:
  wii_menu_headlines_table:
    pos: wii_menu_headlines_table_offset
    type: wii_menu_headlines_table
    repeat: expr
    repeat-expr: wii_menu_headlines_entry_number
  topics_table:
    pos: topics_table_offset
    type: topics_table
    repeat: expr
    repeat-expr: topics_entry_number
  articles_table:
    pos: articles_table_offset
    type: articles_table
    repeat: expr
    repeat-expr: articles_entry_number
  source_table:
    pos: source_table_offset
    type: source_table
    repeat: expr
    repeat-expr: source_entry_number
  locations_table:
    pos: locations_table_offset
    type: locations_table
    repeat: expr
    repeat-expr: locations_entry_number
  pictures_table:
    pos: pictures_table_offset
    type: pictures_table
    repeat: expr
    repeat-expr: pictures_entry_number
types:
  wii_menu_headlines_table:
    seq:
      - id: wii_menu_headline_size
        type: u4
      - id: wii_menu_headline_offset
        type: u4
    instances:
      wii_menu_headline:
        pos: wii_menu_headline_offset
        type: str
        encoding: utf-16be
        size: wii_menu_headline_size
  topics_table:
    seq:
      - id: topics_text_offset
        type: u4
      - id: timestamps_number
        type: u4
      - id: timestamps_offset
        type: u4
    instances:
      topics_text:
        pos: topics_text_offset
        type: str
        encoding: utf-16be
        terminator: 0x0000
      timestamps:
        pos: timestamps_offset
        type: timestamps
        repeat: expr
        repeat-expr: timestamps_number
  timestamps:
    seq:
      - id: updated_timestamp
        type: u4
      - id: article_number
        type: u4
  articles_table:
    seq:
      - id: article_number
        type: u4
      - id: source_number
        type: u4
      - id: location_number
        type: u4
        doc: Null if not specified.
      - id: picture_timestamp
        type: u4
        doc: Timestamp is minutes since 2000.
      - id: picture_number
        type: u4
        doc: Null if not specified.
      - id: published_time
        type: u4
        doc: Timestamp is minutes since 2000.
      - id: updated_time
        type: u4
        doc: Timestamp is minutes since 2000.
      - id: headline_size
        type: u4
      - id: headline_offset
        type: u4
      - id: article_size
        type: u4
      - id: article_offset
        type: u4
    instances:
      headline:
        pos: headline_offset
        type: str
        encoding: utf-16be
        size: headline_size
      article:
        pos: article_offset
        type: str
        encoding: utf-16be
        size: article_size
  source_table:
    seq:
      - id: source_logo
        type: u1
      - id: source_position
        type: u1
      - id: padding
        type: u2
      - id: source_picture_size
        type: u4
      - id: source_picture_offset
        type: u4
      - id: source_name_size
        type: u4
      - id: source_name_offset
        type: u4
      - id: source_copyright_size
        type: u4
      - id: source_copyright_offset
        type: u4
    instances:
      source_picture:
        pos: source_picture_offset
        size: source_picture_size
      source_name:
        pos: source_name_offset
        type: str
        encoding: utf-16be
        size: source_name_size
      source_copyright:
        pos: source_copyright_offset
        type: str
        encoding: utf-16be
        size: source_copyright_size
  locations_table:
    seq:
      - id: location_text_offset
        type: u4
      - id: latitude_coordinates
        type: u2
      - id: longitude_coordinates
        type: u2
      - id: country_code
        type: u1
      - id: region_code
        type: u1
      - id: location_code
        type: u2
      - id: location_zoom
        type: u4le
    instances:
      location_text:
        pos: location_text_offset
        type: str
        encoding: utf-16be
        terminator: 0x0000
  pictures_table:
    seq:
      - id: credit_size
        type: u4
      - id: credit_offset
        type: u4
      - id: caption_size
        type: u4
      - id: caption_offset
        type: u4
      - id: picture_size
        type: u4
      - id: picture_offset
        type: u4
    instances:
      caption:
        pos: caption_offset
        type: str
        encoding: utf-16be
        size: caption_size
      picture:
        pos: picture_offset
        size: picture_size
      credit:
        pos: credit_offset
        type: str
        encoding: utf-16be
        size: credit_size
enums:
  country_code:
    1: japan
    8: anguilla
    9: antigua_and_barbuda
    10: argentina
    11: aruba
    12: bahamas
    13: barbados
    14: belize
    15: bolivia
    16: brazil
    17: british_virgin_islands
    18: canada
    19: cayman_islands
    20: chile
    21: colombia
    22: costa_rica
    23: dominica
    24: dominican_republic
    25: ecuador
    26: el_salvador
    27: french_guiana
    28: grenada
    29: guadeloupe
    30: guatemala
    31: guyana
    32: haiti
    33: honduras
    34: jamaica
    35: martinique
    36: mexico
    37: monsterrat
    38: netherlands_antilles
    39: nicaragua
    40: panama
    41: paraguay
    42: peru
    43: st_kitts_and_nevis
    44: st_lucia
    45: st_vincent_and_the_grenadines
    46: suriname
    47: trinidad_and_tobago
    48: turks_and_caicos_islands
    49: united_states
    50: uruguay
    51: us_virgin_islands
    52: venezuela
    64: albania
    65: australia
    66: austria
    67: belgium
    68: bosnia_and_herzegovina
    69: botswana
    70: bulgaria
    71: croatia
    72: cyprus
    73: czech_republic
    74: denmark
    75: estonia
    76: finland
    77: france
    78: germany
    79: greece
    80: hungary
    81: iceland
    82: ireland
    83: italy
    84: latvia
    85: lesotho
    86: lichtenstein
    87: lithuania
    88: luxembourg
    89: fyr_of_macedonia
    90: malta
    91: montenegro
    92: mozambique
    93: namibia
    94: netherlands
    95: new_zealand
    96: norway
    97: poland
    98: portugal
    99: romania
    100: russia
    101: serbia
    102: slovakia
    103: slovenia
    104: south_africa
    105: spain
    106: swaziland
    107: sweden
    108: switzerland
    109: turkey
    110: united_kingdom
    111: zambia
    112: zimbabwe
    113: azerbaijan
    114: mauritania
    115: mali
    116: niger
    117: chad
    118: sudan
    119: eritrea
    120: dijibouti
    121: somalia
    128: taiwan
    136: south_korea
    144: hong_kong
    145: macao
    152: indonesia
    153: singapore
    154: thailand
    155: philippines
    156: malaysia
    160: china
    168: uae
    169: india
    170: egypt
    171: oman
    172: qatar
    173: kuwait
    174: saudi_arabia
    175: syria
    176: bahrain
    177: jordan
  language_code:
    0: japanese
    1: english
    2: german
    3: french
    4: spanish
    5: italian
    6: dutch
  source_logo:
    0: custom_logo
    1: mainichi
    2: news24
    3: associated_press
    4: afp
    5: anp
    6: ansa
  source_position:
    1: top_left_corner
    2: top_left_corner
    3: right_side_under_headline
    4: right_side_under_headline
    5: right_side_under_headline
    6: left_side_under_headline
