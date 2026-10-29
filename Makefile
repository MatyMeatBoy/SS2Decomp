# Shining Soul II (Europe) decompilation

NAME      := shiningsoul2_eu
ROM       := $(NAME).gba
ELF       := $(NAME).elf
MAP       := $(NAME).map
BUILD     := build

PREFIX    ?= arm-none-eabi-
AS        := $(PREFIX)as
LD        := $(PREFIX)ld
OBJCOPY   := $(PREFIX)objcopy
CPP       := $(PREFIX)cpp
CC1       := tools/agbcc/bin/agbcc

ASFLAGS   := -mcpu=arm7tdmi -I .
NM_FLAGS  :=
CPPFLAGS  := -nostdinc -I tools/agbcc/include -iquote include -undef -std=gnu17 $(NM_FLAGS)
CC1FLAGS  := -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm -fprologue-bugfix

SHELL     := /bin/bash -o pipefail

C_SRCS    := $(wildcard src/*.c)
ASM_SRCS  := $(wildcard asm/*.s)
DATA_SRCS := $(wildcard data/*.s)
OBJS      := $(C_SRCS:%.c=$(BUILD)/%.o) $(ASM_SRCS:%.s=$(BUILD)/%.o) $(DATA_SRCS:%.s=$(BUILD)/%.o)

.SUFFIXES:
.SECONDEXPANSION:
.SECONDARY:
.DELETE_ON_ERROR:
.PHONY: all compare clean progress nonmatching expected

all: $(ROM)

compare: $(ROM)
	@sha1sum -c $(NAME).sha1
	@$(PREFIX)nm $(ELF) | awk 'NF==3 {print $$1, $$3, $$2}' > $(BUILD)/ref.syms

# Build with the C drafts of #ifdef NONMATCHING blocks instead of the original asm (not byte identical; used to check that every draft compiles/links).
nonmatching:
	$(MAKE) BUILD=build_nm NAME=shiningsoul2_nm NM_FLAGS=-DNONMATCHING all

# Snapshot of the matching objects: diff target for objdiff and asm-differ (-o). Refresh after every pull.
expected: compare
	rm -rf expected && mkdir -p expected && cp -r $(BUILD) expected/

clean:
	rm -rf $(BUILD) $(ROM) $(ELF) $(MAP)

# Each module's not yet decompiled functions live in asm/nonmatchings/<module>/.
asm_deps = $(wildcard asm/nonmatchings/$(1)/*.s)

# Per module compiler: agbcc by default, old_agbcc where the original code needs it.

# The SDK's m4a.c was built with an older agbcc
CC1_m4a_1_abi := tools/agbcc/bin/old_agbcc
CC1FLAGS_m4a_1_abi := -O2 -mthumb-interwork

CC1_m4a_1_port := tools/agbcc/bin/old_agbcc
CC1FLAGS_m4a_1_port := -O2 -mthumb-interwork
CC1_m4a_1_engine := tools/agbcc/bin/old_agbcc
CC1FLAGS_m4a_1_engine := -O2 -mthumb-interwork

CC1_m4a_1_commands := tools/agbcc/bin/old_agbcc
CC1FLAGS_m4a_1_commands := -O2 -mthumb-interwork
CC1_m4a_1_mod := tools/agbcc/bin/old_agbcc
CC1FLAGS_m4a_1_mod := -O2 -mthumb-interwork

CC1_m4a_1_jump := tools/agbcc/bin/old_agbcc
CC1FLAGS_m4a_1_jump := -O2 -mthumb-interwork
CC1_m4a_1_rest := tools/agbcc/bin/old_agbcc
CC1FLAGS_m4a_1_rest := -O2 -mthumb-interwork

CC1_m4a_1 := tools/agbcc/bin/old_agbcc
CC1FLAGS_m4a_1 := -O2 -mthumb-interwork

CC1_m4a := tools/agbcc/bin/old_agbcc
CC1FLAGS_m4a := -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm

# Original libgcc C runtime: match the library compiler, not game flags.
CC1_libgcc2 := tools/agbcc/bin/old_agbcc
CC1FLAGS_libgcc2 := -O2
CPPFLAGS_libgcc2 := -DL_divdi3

# The SDK's flash library was prebuilt with -O1
CC1FLAGS_agb_flash := -O1 -mthumb-interwork




$(BUILD)/src/libgcc2.o: src/longlong.h

# C files: preprocess, compile with agbcc, assemble.
$(BUILD)/src/%.o: src/%.c $$(call asm_deps,$$*) $$(wildcard include/*.h)
	@mkdir -p $(@D)
	$(CPP) $(CPPFLAGS) $(CPPFLAGS_$*) $< -o $(BUILD)/src/$*.i
	$(or $(CC1_$*),$(CC1)) $(or $(CC1FLAGS_$*),$(CC1FLAGS)) -o $(BUILD)/src/$*.s $(BUILD)/src/$*.i
	@printf ".text\n\t.align 2, 0 @ Don't pad with nop\n" >> $(BUILD)/src/$*.s
	$(AS) $(ASFLAGS) -o $@ $(BUILD)/src/$*.s

$(BUILD)/asm/%.o: asm/%.s asm/macros.inc $$(call asm_deps,$$*)
	@mkdir -p $(@D)
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD)/data/%.o: data/%.s baserom.gba
	@mkdir -p $(@D)
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD)/ld_script.ld: ld_script.ld sym_ram.ld
	@mkdir -p $(BUILD)
	# sym_ram.ld is inlined: binutils >= 2.46 rejects INCLUDE from a -T script ("appears multiple times")
	sed -e 's#build/#$(BUILD)/#g' -e '/^INCLUDE sym_ram.ld/{r sym_ram.ld' -e 'd}' $< > $@
ifneq ($(NM_FLAGS),)
	sed -i -e 's#\*libc.a:memcpy.o(.text);#*libc.a:*(.text);#' -e 's#^\( *\)$(BUILD)/data/rodata.o(.rodata);#&\n\1$(BUILD)/src/*.o(.rodata);\n\1*libc.a:*(.rodata);#' $@
endif

$(ELF): $(OBJS) $(BUILD)/ld_script.ld sym_ram.ld
	$(LD) -T $(BUILD)/ld_script.ld -Map $(MAP) -o $@ $(OBJS) -L tools/agbcc/lib -lgcc -lc

$(ROM): $(ELF)
	$(OBJCOPY) -O binary --gap-fill 0xFF $< $@

# Progress badges and treemap (docs/progress/*.svg), shown in README.md
progress:
	python3 tools/scripts/progress.py
