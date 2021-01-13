meta:
  id: mobiclip
  file-extension: mo
  endian: le
seq:
  - id: magic
    contents: "MO"
  - id: stream_type
    contents: "C5"
  - id: header_size
    type: u4
    doc: "Add 8 for the actual header size."
  - id: chunk_type_id
    contents: "TL"
  - id: subchunk_count
    type: u2
  - id: fps
    type: u4
  - id: chunk_count
    type: u4
  - id: unknown_5
    type: u2
  - id: unknown_6
    type: u2
  - id: v2
    contents: "V2"
  - id: unknown_7
    type: u2
  - id: width
    type: u4
  - id: height
    type: u4
  - id: pc
    contents: [112, 99, 40, 0]
  - id: rsa_signature
    size: 160
    doc: "RSA-1280 with Barrett reduction."
  - id: audio_and_frame_headers
    type: audio_and_frame_header
    repeat: expr
    repeat-expr: 2
instances:
  audio_and_frame_header:
    type: audio_and_frame_header
  video_header:
    type: video_header
    pos: header_size + 4
  chunk:
    type: chunk
    pos: header_size + 8
    repeat: expr
    repeat-expr: chunk_count
types:
  audio_and_frame_header:
    seq:
      - id: chunk_marker
        type: str
        encoding: ascii
        size: 2
      - id: chunk_header
        type:
          switch-on: chunk_marker
          cases:
            "'A3'": audio_chunk_standard
            "'A9'": audio_chunk_standard
            "'AM'": audio_chunk_am
            "'AP'": audio_chunk_standard
            "'AV'": audio_chunk_av
            "'KI'": keyframe_index
            "'PÆ'": audio_chunk_standard
        doc: |
          A2 -> FastAudio
          A3 -> FastAudio
          A8 -> ADPCM
          A9 -> ADPCM
          AM -> ???
          AP -> PCM (passes directly to the speaker)
          AV -> Vorbis
          KI -> Keyframe Index
          PÆ -> ??? (is it an audio codec?)
  video_header:
    seq:
      - id: data_start
        contents: [72, 69, 0, 0]
  chunk:
    seq:
      - id: chunk_size
        type: u4
      - id: video_chunk_size
        type: u4
      - id: video_chunk
        size: video_chunk_size
      - id: audio_chunk
        if: chunk_size - video_chunk_size - 8 > 0
        size: chunk_size - video_chunk_size - 8
      - id: unknown
        if: chunk_size - video_chunk_size - 8 > 0
        size: (_io.pos + 4 - (_io.pos % 4)) - _io.pos
  audio_chunk_standard:
    seq:
      - id: stream_type
        type: u2
      - id: frequency
        type: u4
      - id: channels
        type: u4
        type: u1
  audio_chunk_am:
    seq:
      - id: audio_stream_count
        type: u2
      - id: audio_stream_features
        type: audio_chunk_standard
        repeat: expr
        repeat-expr: audio_stream_count
  audio_chunk_av:
    seq:
      - id: header
        size: 3554
  keyframe_index:
    seq:
      - id: entry_count
        type: u2
      - id: keyframe
        type: keyframe
        repeat: expr
        repeat-expr: entry_count / 2
      - id: unknown
        size: 68
  keyframe:
    seq:
      - id: audio_sample_index
        type: u4
        doc: Unsure.
      - id: frame_index
        type: u4
