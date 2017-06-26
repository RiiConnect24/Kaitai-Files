meta:
  id: mii
  file-extension:
    - mii
    - mae
    - miigx
  endian: be
seq:
  - id: basic_information
    type: u2
  - id: name
    type: str
    size: 20
    encoding: utf-16be
  - id: height
    type: u1
  - id: weight
    type: u1
  - id: avatar_id
    type: u4
  - id: client_id
    type: u4
  - id: face
    type: u2
  - id: hair
    type: u2
  - id: eyebrows_1
    type: u2
  - id: eyebrows_2
    type: u2
  - id: eyes_1
    type: u2
  - id: eyes_2
    type: u2
  - id: nose
    type: u2
  - id: mouth
    type: u2
  - id: glasses
    type: u2
  - id: facial_hair
    type: u2
  - id: mole
    type: u2
  - id: creator_name
    type: str
    size: 20
    encoding: utf-16be
