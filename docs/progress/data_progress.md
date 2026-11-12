# Data progress

The data area is 16017660 bytes (ROM offsets 0x0B9704-0x1000000). Three levels are measured separately.

| Level | Meaning | Progress | Count |
| --- | --- | ---: | ---: |
| 1. Split | labelled object with no known object start inside it | 0.65% | 103326 / 16017660 bytes |
| | objects labelled so far | 2.70% | 412 of at least 15240 |
| 2. Typed | written in source instead of copied from the reference ROM | <0.01% | 1280 / 16017660 bytes |
| 3. Named | object with a descriptive label | 0.07% | 11 of at least 15240 |

70 blobs (15914334 bytes) still contain 14828 known object starts.

Split and named use a heuristic list of candidate object starts, so the expected object count is a lower bound. Typed means the bytes are written in source instead of copied from the reference ROM; it does not prove the format is understood.

Method and worker guide: [data pipeline](../agents/DATA_PIPELINE.md).
