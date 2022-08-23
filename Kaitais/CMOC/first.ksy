meta:
  id: first
  file-extension:
    - ces
  endian: be
seq:
  - id: type
    type: str
    size: 2
    contents: "FD"
    encoding: ascii
  - id: padding1
    size: 2
  - id: id1
    type: u4
  - id: id2
    type: u4
  - id: padding2
    size: 12
  - id: padding3
    size: 8
  - id: tag
    type: str
    size: 2
    contents: "FD"
    encoding: ascii
  - id: tag_size
    type: u2
  - id: availableinregionflag1
    type: u4
  - id: availableinregionflag2
    type: u4
  - id: unk1
    type: u4
  - id: unk2
    type: u4
  - id: unk3
    type: u4
  - id: unk4
    type: u4
  - id: country_group
    type: u1
  - id: unk5
    type: b3
  - id: enable_scrolling_marquee
    type: b1
  - id: reenable_initials
    type: b1
  - id: disable_initials
    type: b1
  - id: show_mii_artisan_count
    type: b1
  - id: show_popular_mii_count
    type: b1
  - id: unk6
    type: u1
  - id: unk7
    type: b1
  - id: message_service_language_dutch
    type: b1
  - id: message_service_language_italian
    type: b1
  - id: message_service_language_spanish
    type: b1
  - id: message_service_language_french
    type: b1
  - id: message_service_language_german
    type: b1
  - id: message_service_language_english
    type: b1
  - id: message_service_language_japanese
    type: b1
