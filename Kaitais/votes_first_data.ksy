meta:
  id: votes_first_data
  file-extension: bin
  application: Everybody Votes Channel
  endian: be
seq:
  - id: version
    type: u4
  - id: filesize
    type: u4
  - id: crc32
    type: u4
  - id: country_entry_number
    type: u1
  - id: country_table_offset
    type: u4
  - id: language_entry_number
    type: u1
instances:
  language_table:
    pos: language_entry_number + 1
    type: language_table
    repeat: expr
    repeat-expr: language_entry_number
  country_table:
    pos: country_table_offset
    type: country_table
    repeat: expr
    repeat-expr: country_entry_number
types:
  language_table:
    seq:
      - id: language_text_offset
        type: u4
  country_table:
    seq:
      - id: country_code
        type: u1
      - id: language_number
        type: u1
      - id: languages
        type: u1
        repeat: expr
        repeat-expr: 4
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
