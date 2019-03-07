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
    repeat-expr: 8
  - id: videos_2_entry_number
    type: u4
  - id: videos_2_table_offset
    type: u4
  - id: detailed_ratings_entry_number
    type: u4
  - id: detailed_ratings_table_offset
    type: u4
  - id: last_update
    type: str
    encoding: utf-16be
    size: 62
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
  videos_2_table:
    pos: videos_2_table_offset
    type: videos_2_table
    repeat: expr
    repeat-expr: videos_2_entry_number
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
      - id: unknown
        type: u1
      - id: age
        type: u1
        doc: Required years of age.
      - id: unknown2
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
      - id: unknown
        type: u1
      - id: unknown_2
        type: u2
      - id: company_offset
        type: u4
      - id: release_date
        type: u4
      - id: rating_id
        type: u1
      - id: unknown_4
        type: u1
        repeat: expr
        repeat-expr: 29
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
      - id: unknown
        type: u1
        repeat: expr
        repeat-expr: 15
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
  videos_2_table:
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
        repeat-expr: 32
      - id: title
        type: str
        encoding: utf-16be
        size: 192
  detailed_ratings_table:
    seq:
      - id: rating_group
        type: u1
      - id: rating_id
        type: u1
      - id: title
        type: str
        encoding: utf-16be
        size: 102
