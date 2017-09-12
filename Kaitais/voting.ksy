meta:
  id: voting
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
  - id: timestamp
    type: u4
  - id: country_code
    type: u1
  - id: publicity_flag
    type: u1
  - id: question_version
    type: u1
  - id: result_version
    type: u1
  - id: nqen_entry_number
    type: u1
  - id: nqen_header_offset
    type: u4
  - id: worldwide_question_num
    type: u1
  - id: worldwide_question_offset
    type: u4
  - id: question_entry_number
    type: u1
  - id: question_table_offset
    type: u4
  - id: national_result_entry
    type: u1
  - id: national_result_offset
    type: u4
  - id: national_result_detailed
    type: u2
  - id: national_result_detailed_offset
    type: u4
  - id: position_entry_number
    type: u2
  - id: position_entry_offset
    type: u4
  - id: worldwide_result_entry_num
    type: u1
  - id: worldwide_result_table_offset
    type: u4
  - id: worldwide_result_detailed_num
    type: u2
  - id: worldwide_result_detailed_offset
    type: u4
  - id: country_name_entry_num
    type: u2
  - id: country_name_header_offset
    type: u4
instances:
    national_question_table:
      pos: nqen_header_offset
      type: national_question_table
      repeat: expr
      repeat-expr: nqen_entry_number
    worldwide_question_table:
      pos: worldwide_question_offset
      type: worldwide_question_table
      repeat: expr
      repeat-expr: worldwide_question_num
    question_entry_table:
      pos: question_table_offset
      type: question_entry_table
      repeat: expr
      repeat-expr: question_entry_number
    national_result_table:
      pos: national_result_offset
      type: national_result_table
      repeat: expr
      repeat-expr: national_result_entry
    national_result_detailed_table:
      pos: national_result_detailed_offset
      type: national_result_detailed_table
      repeat: expr
      repeat-expr: national_result_detailed
    position_entry_table:
      pos: position_entry_offset
      type: position_entry_table
      repeat: expr
      repeat-expr: position_entry_number
    worldwide_result_table:
      pos: worldwide_result_table_offset
      type: worldwide_result_table
      repeat: expr
      repeat-expr: worldwide_result_entry_num
    worldwide_result_detailed_table:
      pos: worldwide_result_detailed_offset
      type: worldwide_result_detailed_table
      repeat: expr
      repeat-expr: worldwide_result_detailed_num
    country_name_table:
      pos: country_name_header_offset
      type: country_name_table
      repeat: expr
      repeat-expr: country_name_entry_num
types:
  national_question_table:
    seq:
      - id: poll_id
        type: u4
      - id: unknown
        type: u2
        doc: Question ID?
      - id: opening_timestamp
        type: u4
      - id: closing_timestamp
        type: u4
      - id: question_entry_count
        type: u1
      - id: question_entry_starting_point
        type: u4
  worldwide_question_table:
    seq:
      - id: poll_id
        type: u4
      - id: unknown
        type: u2
        doc: Question ID?
      - id: opening_timestamp
        type: u4
      - id: closing_timestamp
        type: u4
      - id: question_entry_count
        type: u1
      - id: question_entry_starting_point
        type: u4
  question_entry_table:
    seq:
      - id: language_code
        type: u1
      - id: question_offset
        type: u4
      - id: response_1_offset
        type: u4
      - id: response_2_offset
        type: u4
  national_result_table:
    seq:
      - id: poll_id
        type: u4
      - id: male_voters_response_1_num
        type: u4
      - id: male_voters_response_2_num
        type: u4
      - id: female_voters_response_1_num
        type: u4
      - id: female_voters_response_2_num
        type: u4
      - id: accurate_prediction_voters_num
        type: u4
      - id: inaccurate_prediction_voters_num
        type: u4
      - id: unknown
        type: u2
      - id: national_result_detailed_table_count
        type: u1
      - id: starting_national_result_detailed_table_number
        type: u4
  national_result_detailed_table:
    seq:
      - id: voters_response_1_num
        type: u4
      - id: voters_response_2_num
        type: u4
      - id: position_entry_table_count
        type: u1
      - id: starting_position_entry_table
        type: u4
  position_entry_table:
    seq:
      - id: response_1
        type: u1
      - id: response_2
        type: u1
  worldwide_result_table:
    seq:
      - id: poll_id
        type: u4
      - id: male_voters_response_1_num
        type: u4
      - id: male_voters_response_2_num
        type: u4
      - id: female_voters_response_1_num
        type: u4
      - id: female_voters_response_2_num
        type: u4
      - id: accurate_prediction_voters_num
        type: u4
      - id: inaccurate_prediction_voters_num
        type: u4
      - id: total_worldwide_detailed_tables
        type: u1
      - id: starting_worldwide_detailed_table_number
        type: u4
  worldwide_result_detailed_table:
    seq:
      - id: unknown
        type: u4
        doc: Always seems to be 0
      - id: male_voters_response_1_num
        type: u4
      - id: male_voters_response_2_num
        type: u4
      - id: female_voters_response_1_num
        type: u4
      - id: female_voters_response_2_num
        type: u4
      - id: country_table_count
        type: u2
      - id: starting_country_table_number
        type: u4
  country_name_table:
    seq:
      - id: language_code
        type: u4
      - id: text_offset
        type: u4
enums:
    language_code:
      0: japanese
      1: english
      2: german
      3: french
      4: spanish
      5: italian
      6: dutch