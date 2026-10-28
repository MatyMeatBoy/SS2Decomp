#!/usr/bin/env python3
"""Source-only inventory of data storage, not a measure of data understanding."""
import re
from pathlib import Path

LABEL = re.compile(r"^[ \t]*([A-Za-z_]\w*):", re.M)
ANONYMOUS = re.compile(r"^(?:gUnk_|_)?[0-9A-Fa-f]{8}$")
INCBIN = re.compile(r'^[ \t]*\.incbin\s+"([^"\n]+)"\s*,\s*([^,\n]+)\s*,\s*([^,@\n]+)', re.M)
EXPLICIT = re.compile(r"^[ \t]*\.(?:byte|2byte|short|hword|word|4byte|long|ascii|asciz|string|float|double)\b", re.M)
PADDING = re.compile(r"^[ \t]*\.(?:align|balign|p2align|space|zero|fill|skip)\b", re.M)


def collect(root):
    files, bins, labels = [], [], []
    explicit = padding = 0
    for path in sorted((Path(root) / "data").glob("*.s")):
        text = path.read_text(encoding="utf-8")
        # Preserve strings for incbin paths, ignore assembly and block comments.
        text = re.sub(r"/\*.*?\*/", lambda m: "\n" * m[0].count("\n"), text, flags=re.S)
        text = re.sub(r"@[^\n]*", "", text)
        relative = path.relative_to(root).as_posix()
        file_bins = []
        for match in INCBIN.finditer(text):
            try:
                offset, size = int(match[2].strip(), 0), int(match[3].strip(), 0)
                if offset < 0 or size < 0:
                    raise ValueError("negative incbin range")
            except ValueError as exc:
                raise ValueError("unsupported incbin range in " + relative) from exc
            file_bins.append({"source": relative, "line": text.count("\n", 0, match.start()) + 1,
                              "file": match[1], "rom_offset": offset, "size": size})
        file_labels = [{"source": relative, "name": m[1], "descriptive": not bool(ANONYMOUS.fullmatch(m[1]))} for m in LABEL.finditer(text)]
        file_explicit, file_padding = len(EXPLICIT.findall(text)), len(PADDING.findall(text))
        files.append({"source": relative, "incbin_count": len(file_bins),
                      "incbin_bytes": sum(b["size"] for b in file_bins), "labels": len(file_labels),
                      "explicit_data_directives": file_explicit, "padding_directives": file_padding})
        bins.extend(file_bins); labels.extend(file_labels)
        explicit += file_explicit; padding += file_padding
    return {"files": files, "incbin_count": len(bins), "incbin_bytes": sum(b["size"] for b in bins),
            "labels_total": len(labels), "labels_descriptive": sum(l["descriptive"] for l in labels),
            "explicit_data_directives": explicit, "padding_directives": padding,
            "incbins": bins, "labels": labels,
            "limitations": "Raw incbin ranges include padding and opaque bytes. Descriptive labels and explicit directives do not prove decoded or understood data; no decoding percentage is reported."}
