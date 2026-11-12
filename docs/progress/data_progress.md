# Data progress

The data area is 16017660 bytes (ROM offsets 0x0B9704-0x1000000). Three levels are measured separately.

| Level | Meaning | Progress | Count |
| --- | --- | ---: | ---: |
| 1. Split | labelled object with no known object start inside it | 89.47% | 14331578 / 16017660 bytes |
| | objects labelled so far | 27.83% | 3439 of at least 12355 |
| 2. Typed | written in source instead of copied from the reference ROM | 17.50% | 2802880 / 16017660 bytes |
| 3. Named | object with a descriptive label | 0.09% | 11 of at least 12355 |

67 blobs (1686082 bytes) still contain 8916 known object starts.

Split and named use a heuristic list of candidate object starts, so the expected object count is a lower bound. Typed means the bytes are written in source instead of copied from the reference ROM; it does not prove the format is understood.

Method and worker guide: [data pipeline](../agents/DATA_PIPELINE.md).
