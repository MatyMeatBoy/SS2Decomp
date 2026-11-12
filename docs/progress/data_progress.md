# Data progress

The data area is 16017660 bytes (ROM offsets 0x0B9704-0x1000000). Two levels are measured.

| Level | Meaning | Progress | Count |
| --- | --- | ---: | ---: |
| 1. Split | labelled object with no known object start inside it | 98.59% | 15791888 / 16017660 bytes |
| | objects labelled so far | 96.67% | 11343 of at least 11734 |
| 2. Described | format known and written in source instead of copied from the reference ROM | 98.51% | 15779027 / 16017660 bytes |

6 blobs (225772 bytes) still contain 391 known object starts.

Split and named use a heuristic list of candidate object starts, so the expected object count is a lower bound. Typed means the bytes are written in source instead of copied from the reference ROM; it does not prove the format is understood.

Method and worker guide: [data pipeline](../agents/DATA_PIPELINE.md).
