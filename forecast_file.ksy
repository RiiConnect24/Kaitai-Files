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
  - id: unknown
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
        type: u1
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
