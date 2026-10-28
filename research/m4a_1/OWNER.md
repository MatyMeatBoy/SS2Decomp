# Experimental reconstruction ownership

The user assigned the entire experimental `m4a_1` reconstruction to this worker,
on `codex/m4a1-c-reconstruction`, starting at
`834afb93ee6a015c7a90f27dc53907e7eb38c5b7`.

Scope: `research/m4a_1/` only. The original ASM is outside the normal C shards.
Do not modify `src/`, `asm/`, `include/`, build configuration or shared tools.
The coordinator reviews and integrates these commits. No push/land is authorized
from this worker. The normal build keeps using the original ASM.
