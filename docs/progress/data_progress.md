# Data progress

The data area is 16017660 bytes (ROM offsets 0x0B9704-0x1000000). Two levels are measured.

| Level | Meaning | Progress | Count |
| --- | --- | ---: | ---: |
| 1. Split | labelled object with no known object start inside it | 97.08% | 15549304 / 16017660 bytes |
| | objects labelled so far | 92.88% | 11342 of at least 12212 |
| 2. Described | format known and written in source instead of copied from the reference ROM | 80.52% | 12896761 / 16017660 bytes |

54 blobs (468356 bytes) still contain 870 known object starts.

Split and named use a heuristic list of candidate object starts, so the expected object count is a lower bound. Typed means the bytes are written in source instead of copied from the reference ROM; it does not prove the format is understood.

Method and worker guide: [data pipeline](../agents/DATA_PIPELINE.md).
