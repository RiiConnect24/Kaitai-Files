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
    type: u1
    repeat: expr
    repeat-expr: 4
  - id: client_id
    type: u1
    repeat: expr
    repeat-expr: 4
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
instances:
  favorite_color:
    value: basic_information >> 1 & 0xF
  birth_day:
    value: basic_information >> 5 & 0x1F
  birth_month:
    value: basic_information >> 10 & 0xF
  gender:
    value: basic_information >> 14 & 0x1
  mingles:
    value: face >> 2 & 0x1
  face_type:
    value: face >> 6 & 0xF
  skin_color:
    value: face >> 10 & 0x7
  head_type:
    value: face >> 13 & 0x7
  hair_part:
    value: hair >> 5 & 0x1
  hair_color:
    value: hair >> 6 & 0x7
  hair_type:
    value: hair >> 9 & 0x7F
  eyebrow_rotation:
    value: eyebrows_1 >> 6 & 0xF
  eyebrow_type:
    value: eyebrows_1 >> 11 & 0x1F
  eyebrow_x:
    value: eyebrows_2 & 0xF
  eyebrow_y:
    value: eyebrows_2 >> 4 & 0x1F
  eyebrow_size:
    value: eyebrows_2 >> 9 & 0xF
  eyebrow_color:
    value: eyebrows_2 >> 13 & 0x7
  eye_y:
    value: eyes_1 & 0x1F
  eye_rotation:
    value: eyes_1 >> 5 & 0x7
  eye_type:
    value: eyes_1 >> 10 & 0x3F
  eye_x:
    value: eyes_2 >> 5 & 0xF
  eye_size:
    value: eyes_2 >> 9 & 0x7
  eye_color:
    value: eyes_2 >> 13 & 0x7
  nose_y:
    value: nose >> 3 & 0x1F
  nose_size:
    value: nose >> 8 & 0xF
  nose_type:
    value: nose >> 12 & 0xF
  mouth_y:
    value: mouth & 0x1F
  mouth_size:
    value: mouth >> 5 & 0xF
  mouth_color:
    value: mouth >> 9 & 0x3
  mouth_type:
    value: mouth >> 11 & 0x1F
  glasses_y:
    value: glasses & 0x1F
  glasses_size:
    value: glasses >> 5 & 0x7
  glasses_color:
    value: glasses >> 9 & 0x3
  glasses_type:
    value: glasses >> 12 & 0xF
  mustache_y:
    value: facial_hair & 0x1F
  mustache_size:
    value: facial_hair >> 5 & 0xF
  beard_color:
    value: facial_hair >> 9 & 0x7
  beard_type:
    value: facial_hair >> 12 & 0x3
  mustache_type:
    value: facial_hair >> 14 & 0x3
  mole_x:
    value: mole >> 1 & 0x1F
  mole_y:
    value: mole >> 6 & 0x1F
  mole_size:
    value: mole >> 11 & 0xF
  mole_type:
    value: mole >> 15 & 0xF