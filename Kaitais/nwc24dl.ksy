meta:
  id: nwc24dl
  file-extension: bin
  application: WiiConnect24
  endian: be
seq:
  - id: magic
    type: u4
  - id: unknown
    type: u4
  - id: filler
    type: u4
    repeat: expr
    repeat-expr: 2
  - id: unknown2
    type: u2
  - id: reserved_mailnum
    type: u2
    doc: Maximum number of reserved mail entries. Always 0x8.
  - id: max_entries
    type: u2
    doc: Maximum number of entries/records that can be stored in nwc24dl.bin. Always 0x78.
  - id: reserved
    type: u1
    repeat: expr
    repeat-expr: 106
  - id: records
    type: record
    repeat: expr
    repeat-expr: 120
  - id: entries
    type: entry
    repeat: expr
    repeat-expr: 120
types:
  record:
    seq:
      - id: id
        type: u4
        doc: Low Title ID (except for the Wii Menu). Zero if empty.
      - id: next_dl
        type: u4
        doc: Timestamp for the next download time.
      - id: last_modified
        type: u4
        doc: Timestamp for last modified on server.
      - id: record_flags
        type: u1
      - id: filler
        type: u1
        repeat: expr
        repeat-expr: 3
  entry:
    seq:
      - id: index
        type: u2
        doc: Zero-based.
      - id: type
        type: u1
      - id: record_flags
        type: u1
      - id: flags
        type: u4
      - id: id
        type: u4
        doc: Low Title ID.
      - id: titleid
        type: u8
      - id: group_id
        type: u2
      - id: unknown
        type: u2
      - id: count
        type: u2
        doc: Count value.
      - id: total_errors
        type: u2
        doc: Zero if no error.
      - id: dl_freq_perday
        type: u2
        doc: Download frequency in minutes.
      - id: dl_freq_days
        type: u2
        doc: Download frequency in minutes for when the next day of downloading begins. (Starts at midnight of download day. Usually 0x5a0 for daily.)
      - id: error_code
        type: s4
        doc: Zero for no error.
      - id: unknown2
        type: u1
      - id: unknown3
        type: u1
        doc: Must be non zero to use subTasks?
      - id: subtaskflags
        type: u1
      - id: unknown4
        type: u1
      - id: subtaskbitmask
        type: u4
        doc: Enable bitmask subTask id. Only subtasks with IDs or numbers with matching set bits are used.
      - id: unknown5
        type: u2
      - id: unknown6
        type: u2
        doc: 0x5a0 sometimes for entries with subTasks. Might be related to download time.
      - id: dl_timestamp
        type: u4
        doc: Last download timestamp. Zero when download failed.
      - id: subtasktimestamps
        type: u4
        repeat: expr
        repeat-expr: 32
        doc: Timestamps of last download time for each subTask.
      - id: url
        type: strz
        size: 236
        encoding: utf-8
      - id: filename
        type: strz
        encoding: utf-8
        size: 64
      - id: unknown7
        type: u1
        repeat: expr
        repeat-expr: 29
      - id: nhttp_rootca
        type: u1
        doc: Usually zero.
      - id: unknown8
        type: u2
