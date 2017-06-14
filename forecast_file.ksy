meta:
  id: forecast_file
  application: Forecast Channel
  endian: be
seq:
  - id: version
    type: u4
    doc: Always 0.
  - id: filesize
    type: u4
  - id: crc32
    type: u4
  - id: opening_timestamp
    type: u4
    doc: Timestamp is minutes since 2000.
  - id: closing_timestamp
    type: u4
    doc: Timestamp is minutes since 2000.
  - id: country_code
    type: u4le
  - id: language_code
    type: u1
  - id: unknown_1
    type: u1
  - id: unknown_2
    type: u1
  - id: padding
    type: u1
  - id: message_offset
    type: u4
    doc: If this is set, it will display a message at start.
  - id: long_forecast_entry_number
    type: u4
  - id: long_forecast_table_offset
    type: u4
  - id: short_forecast_entry_number
    type: u4
  - id: short_forecast_table_offset
    type: u4
  - id: weather_condition_codes_entry_number
    type: u4
  - id: weather_condition_codes_table_offset
    type: u4
  - id: uv_index_entry_number
    type: u4
  - id: uv_index_table_offset
    type: u4
  - id: laundry_index_entry_number
    type: u4
  - id: laundry_index_table_offset
    type: u4
  - id: pollen_count_entry_number
    type: u4
  - id: pollen_count_table_offset
    type: u4
  - id: location_entry_number
    type: u4
  - id: location_table_offset
    type: u4
instances:
  long_forecast_table:
    pos: long_forecast_table_offset
    type: long_forecast_table
    repeat: expr
    repeat-expr: long_forecast_entry_number
  short_forecast_table:
    pos: short_forecast_table_offset
    type: short_forecast_table
    repeat: expr
    repeat-expr: short_forecast_entry_number
  weather_condition_codes_table:
    pos: weather_condition_codes_table_offset
    type: weather_condition_codes_table
    repeat: expr
    repeat-expr: weather_condition_codes_entry_number
  uv_index_table:
    pos: uv_index_table_offset
    type: uv_index_table
    repeat: expr
    repeat-expr: uv_index_entry_number
  laundry_index_table:
    pos: laundry_index_table_offset
    type: laundry_index_table
    repeat: expr
    repeat-expr: laundry_index_entry_number
  pollen_country_table:
    pos: pollen_count_table_offset
    type: pollen_count_table
    repeat: expr
    repeat-expr: pollen_count_entry_number
  location_table:
    pos: location_table_offset
    type: location_table
    repeat: expr
    repeat-expr: location_entry_number
types:
  long_forecast_table:
    seq:
      - id: country_code
        type: u1
      - id: region_code
        type: u1
      - id: location_code
        type: u2
      - id: local_timestamp
        type: u4
        doc: Timestamp is minutes since 2000.
      - id: global_timestamp
        type: u4
        doc: Timestamp is minutes since 2000.
      - id: unknown
        type: u4
      - id: today_forecast
        type: u2
      - id: today_6_hour_forecast_12am_6am
        type: u2
      - id: today_6_hour_forecast_6am_12pm
        type: u2
      - id: today_6_hour_forecast_12pm_6pm
        type: u2
      - id: today_6_hour_forecast_6pm_12am
        type: u2
      - id: today_high_temperature_celsius
        type: s1
      - id: today_high_temperature_celsius_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: today_low_temperature_celsius
        type: s1
      - id: today_low_temperature_celsius_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: today_high_temperature_fahrenheit
        type: s1
      - id: today_high_temperature_fahrenheit_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: today_low_temperature_fahrenheit
        type: s1
      - id: today_low_temperature_fahrenheit_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: today_6_hour_precipitation_12am_6am
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: today_6_hour_precipitation_6am_12pm
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: today_6_hour_precipitation_12pm_6pm
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: today_6_hour_precipitation_6pm_12am
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: today_wind_direction
        type: u1
      - id: today_wind_speed_kilometers_per_hour
        type: u1
      - id: today_wind_speed_miles_per_hour
        type: u1
      - id: tomorrow_forecast
        type: u2
      - id: tomorrow_6_hour_forecast_12am_6am
        type: u2
      - id: tomorrow_6_hour_forecast_6am_12pm
        type: u2
      - id: tomorrow_6_hour_forecast_12pm_6pm
        type: u2
      - id: tomorrow_6_hour_forecast_6pm_12am
        type: u2
      - id: tomorrow_high_temperature_celsius
        type: s1
      - id: tomorrow_high_temperature_celsius_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_low_temperature_celsius
        type: s1
      - id: tomorrow_low_temperature_celsius_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_high_temperature_fahrenheit
        type: s1
      - id: tomorrow_high_temperature_fahrenheit_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_low_temperature_fahrenheit
        type: s1
      - id: tomorrow_low_temperature_fahrenheit_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_6_hour_precipitation_12am_6am
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_6_hour_precipitation_6am_12pm
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_6_hour_precipitation_12pm_6pm
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_6_hour_precipitation_6pm_12am
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_wind_direction
        type: u1
      - id: tomorrow_wind_speed_kilometers_per_hour
        type: u1
      - id: tomorrow_wind_speed_miles_per_hour
        type: u1
      - id: uv_index
        type: u1
      - id: laundry_index
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: pollen_count
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: padding_1
        type: u1
      - id: five_day_forecast_day_1
        type: u2
      - id: five_day_forecast_day_1_temperature_celsius_high
        type: s1
      - id: five_day_forecast_day_1_temperature_celsius_low
        type: s1
      - id: five_day_forecast_day_1_temperature_fahrenheit_high
        type: s1
      - id: five_day_forecast_day_1_temperature_fahrenheit_low
        type: s1
      - id: five_day_forecast_day_1_precipitation
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: padding_2
        type: u1
      - id: five_day_forecast_day_2
        type: u2
      - id: five_day_forecast_day_2_temperature_celsius_high
        type: s1
      - id: five_day_forecast_day_2_temperature_celsius_low
        type: s1
      - id: five_day_forecast_day_2_temperature_fahrenheit_high
        type: s1
      - id: five_day_forecast_day_2_temperature_fahrenheit_low
        type: s1
      - id: five_day_forecast_day_2_precipitation
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: padding_3
        type: u1
      - id: five_day_forecast_day_3
        type: u2
      - id: five_day_forecast_day_3_temperature_celsius_high
        type: s1
      - id: five_day_forecast_day_3_temperature_celsius_low
        type: s1
      - id: five_day_forecast_day_3_temperature_fahrenheit_high
        type: s1
      - id: five_day_forecast_day_3_temperature_fahrenheit_low
        type: s1
      - id: five_day_forecast_day_3_precipitation
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: padding_4
        type: u1
      - id: five_day_forecast_day_4
        type: u2
      - id: five_day_forecast_day_4_temperature_celsius_high
        type: s1
      - id: five_day_forecast_day_4_temperature_celsius_low
        type: s1
      - id: five_day_forecast_day_4_temperature_fahrenheit_high
        type: s1
      - id: five_day_forecast_day_4_temperature_fahrenheit_low
        type: s1
      - id: five_day_forecast_day_4_precipitation
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: padding_5
        type: u1
      - id: five_day_forecast_day_5
        type: u2
      - id: five_day_forecast_day_5_temperature_celsius_high
        type: s1
      - id: five_day_forecast_day_5_temperature_celsius_low
        type: s1
      - id: five_day_forecast_day_5_temperature_fahrenheit_high
        type: s1
      - id: five_day_forecast_day_5_temperature_fahrenheit_low
        type: s1
      - id: five_day_forecast_day_5_precipitation
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: padding_6
        type: u1
      - id: five_day_forecast_day_6
        type: u2
        doc: Only used for the Japanese version of this Channel.
      - id: five_day_forecast_day_6_temperature_celsius_high
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: five_day_forecast_day_6_temperature_celsius_low
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: five_day_forecast_day_6_temperature_fahrenheit_high
        type: s1
        doc: Only used for the Japanese version of this Channel
      - id: five_day_forecast_day_6_temperature_fahrenheit_low
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: five_day_forecast_day_6_precipitation
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: padding_7
        type: u1
      - id: five_day_forecast_day_7
        type: u2
        doc: Only used for the Japanese version of this Channel.
      - id: five_day_forecast_day_7_temperature_celsius_high
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: five_day_forecast_day_7_temperature_celsius_low
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: five_day_forecast_day_7_temperature_fahrenheit_high
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: five_day_forecast_day_7_temperature_fahrenheit_low
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: five_day_forecast_day_7_precipitation
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: padding_8
        type: u1
  short_forecast_table:
    seq:
      - id: country_code
        type: u1
      - id: region_code
        type: u1
      - id: location_code
        type: u2
      - id: unknown
        type: u4
      - id: today_forecast
        type: u2
      - id: today_6_hour_forecast_12am_6am
        type: u2
      - id: today_6_hour_forecast_6am_12pm
        type: u2
      - id: today_6_hour_forecast_12pm_6pm
        type: u2
      - id: today_6_hour_forecast_6pm_12am
        type: u2
      - id: today_high_temperature_celsius
        type: s1
      - id: today_high_temperature_celsius_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: today_low_temperature_celsius
        type: s1
      - id: today_low_temperature_celsius_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: today_high_temperature_fahrenheit
        type: s1
      - id: today_high_temperature_fahrenheit_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: today_low_temperature_fahrenheit
        type: s1
      - id: today_low_temperature_fahrenheit_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: today_6_hour_precipitation_12am_6am
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: today_6_hour_precipitation_6am_12pm
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: today_6_hour_precipitation_12pm_6pm
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: today_6_hour_precipitation_6pm_12am
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: today_wind_direction
        type: u1
      - id: today_wind_speed_kilometers_per_hour
        type: u1
      - id: today_wind_speed_miles_per_hour
        type: u1
      - id: tomorrow_forecast
        type: u2
      - id: tomorrow_6_hour_forecast_12am_6am
        type: u2
      - id: tomorrow_6_hour_forecast_6am_12pm
        type: u2
      - id: tomorrow_6_hour_forecast_12pm_6pm
        type: u2
      - id: tomorrow_6_hour_forecast_6pm_12am
        type: u2
      - id: tomorrow_high_temperature_celsius
        type: s1
      - id: tomorrow_high_temperature_celsius_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_low_temperature_celsius
        type: s1
      - id: tomorrow_low_temperature_celsius_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_high_temperature_fahrenheit
        type: s1
      - id: tomorrow_high_temperature_fahrenheit_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_low_temperature_fahrenheit
        type: s1
      - id: tomorrow_low_temperature_fahrenheit_difference
        type: s1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_6_hour_precipitation_12am_6am
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_6_hour_precipitation_6am_12pm
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_6_hour_precipitation_12pm_6pm
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_6_hour_precipitation_6pm_12am
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: tomorrow_wind_direction
        type: u1
      - id: tomorrow_wind_speed_kilometers_per_hour
        type: u1
      - id: tomorrow_wind_speed_miles_per_hour
        type: u1
      - id: uv_index
        type: u1
      - id: laundry_index
        type: u1
        doc: Only used for the Japanese version of this Channel.
      - id: pollen_count
        type: u1
        doc: Only used for the Japanese version of this Channel.
  weather_condition_codes_table:
    seq:
      - id: weather_icon_code_1
        type: u2
      - id: weather_icon_code_2
        type: u2
      - id: weather_text_offset
        type: u4
  uv_index_table:
    seq:
      - id: uv_index_code
        type: u4le
      - id: uv_index_text_offset
        type: u4
  laundry_index_table:
    seq:
      - id: laundry_index_code
        type: u4le
      - id: laundry_index_text_offset
        type: u4
  pollen_count_table:
    seq:
      - id: pollen_count_code
        type: u4le
      - id: pollen_count_text_offset
        type: u4
  location_table:
    seq:
      - id: country_code
        type: u1
      - id: region_code
        type: u1
      - id: location_code
        type: u2
      - id: city_text_offset
        type: u4
      - id: region_text_offset
        type: u4
      - id: country_text_offset
        type: u4
      - id: latitude_coordinates
        type: u2
      - id: longitude_coordinates
        type: u2
      - id: location_zoom_1
        type: u1
      - id: location_zoom_2
        type: u1
      - id: unknown
        type: u2
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
