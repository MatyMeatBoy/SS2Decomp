"""Minimal ARMv4T THUMB decoder used for control-flow analysis.

Only the information needed by the analyzer is extracted: instruction size,
whether it is a valid ARMv4T instruction, branch targets, literal pool loads
and whether the instruction ends a basic block.
"""

import struct

COND_NAMES = ["eq", "ne", "cs", "cc", "mi", "pl", "vs", "vc",
              "hi", "ls", "ge", "lt", "gt", "le"]


class Insn:
    __slots__ = ("addr", "size", "kind", "target", "lit", "reg", "raw", "rd", "imm")

    def __init__(self, addr, size, kind, raw, target=None, lit=None, reg=None, rd=None, imm=None):
        self.addr = addr
        self.size = size
        self.kind = kind      # see decode() for values
        self.raw = raw
        self.target = target  # branch target
        self.lit = lit        # literal pool address (ldr rX, [pc, #])
        self.reg = reg        # register for bx / mov pc
        self.rd = rd
        self.imm = imm


def decode(rom, addr, base=0x08000000):
    """Decode the THUMB instruction at addr. Returns Insn or None if invalid."""
    off = addr - base
    if off < 0 or off + 2 > len(rom):
        return None
    h = struct.unpack_from("<H", rom, off)[0]
    top5 = h >> 11
    if h >> 13 == 0:  # shifts / add-sub
        return Insn(addr, 2, "op", h)
    if h >> 13 == 1:  # mov/cmp/add/sub imm8
        op = (h >> 11) & 3
        return Insn(addr, 2, "cmpimm" if op == 1 else "op", h, rd=(h >> 8) & 7, imm=h & 0xFF)
    if h >> 10 == 0x10:  # ALU
        return Insn(addr, 2, "op", h)
    if h >> 10 == 0x11:  # hi register ops / bx
        op = (h >> 8) & 3
        h1 = (h >> 7) & 1
        h2 = (h >> 6) & 1
        rs = ((h >> 3) & 7) | (h2 << 3)
        rd = (h & 7) | (h1 << 3)
        if op == 3:
            if h1:  # blx (v5) -> invalid on v4
                return None
            if h & 7:  # SBZ bits
                return None
            return Insn(addr, 2, "bx", h, reg=rs)
        if h1 == 0 and h2 == 0:
            # unpredictable on ARMv4T; agbcc never generates these
            return None
        if op in (0, 2) and rd == 15:
            return Insn(addr, 2, "jmpreg", h, reg=rs)
        return Insn(addr, 2, "op", h)
    if top5 == 0x09:  # ldr rd, [pc, #imm]
        lit = ((addr + 4) & ~3) + (h & 0xFF) * 4
        return Insn(addr, 2, "ldrpc", h, lit=lit, rd=(h >> 8) & 7)
    if h >> 12 == 5:  # load/store reg offset
        return Insn(addr, 2, "op", h)
    if h >> 13 == 3:  # load/store imm
        return Insn(addr, 2, "op", h)
    if h >> 12 == 8:  # ldrh/strh imm
        return Insn(addr, 2, "op", h)
    if h >> 12 == 9:  # sp-relative
        return Insn(addr, 2, "op", h)
    if h >> 12 == 0xA:  # add rd, pc/sp
        if (h >> 11) & 1 == 0:
            lit = ((addr + 4) & ~3) + (h & 0xFF) * 4
            return Insn(addr, 2, "adr", h, lit=lit, rd=(h >> 8) & 7)
        return Insn(addr, 2, "op", h)
    if h >> 12 == 0xB:
        if h >> 8 == 0xB0:
            return Insn(addr, 2, "op", h)
        if (h >> 9) & 0x7 == 2 and (h >> 12) == 0xB and ((h >> 11) & 1) == 0:  # push
            return Insn(addr, 2, "push", h)
        if (h >> 9) & 0x7 == 6:  # pop
            if h & 0x100:
                return Insn(addr, 2, "ret", h)
            return Insn(addr, 2, "op", h)
        return None
    if h >> 12 == 0xC:  # ldmia/stmia
        return Insn(addr, 2, "op", h)
    if h >> 12 == 0xD:
        cond = (h >> 8) & 0xF
        if cond == 0xE:
            return None
        if cond == 0xF:
            return Insn(addr, 2, "swi", h, imm=h & 0xFF)
        imm = h & 0xFF
        if imm & 0x80:
            imm -= 0x100
        return Insn(addr, 2, "bcc", h, target=addr + 4 + imm * 2)
    if top5 == 0x1C:  # b
        imm = h & 0x7FF
        if imm & 0x400:
            imm -= 0x800
        return Insn(addr, 2, "b", h, target=addr + 4 + imm * 2)
    if top5 == 0x1D:  # blx suffix (v5)
        return None
    if top5 == 0x1E:  # bl prefix
        if off + 4 > len(rom):
            return None
        l = struct.unpack_from("<H", rom, off + 2)[0]
        if l >> 11 != 0x1F:
            return None
        hi = h & 0x7FF
        if hi & 0x400:
            hi -= 0x800
        target = addr + 4 + (hi << 12) + ((l & 0x7FF) << 1)
        return Insn(addr, 4, "bl", h | (l << 16), target=target)
    if top5 == 0x1F:  # lone bl suffix
        return None
    return None


def is_push_lr(h):
    return (h & 0xFF00) == 0xB500
