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
CPPFLAGS  := -nostdinc -I tools/agbcc/include -iquote include -undef $(NM_FLAGS)
CC1FLAGS  := -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm

SHELL     := /bin/bash -o pipefail

C_SRCS    := $(wildcard src/*.c)
ASM_SRCS  := $(wildcard asm/*.s)
DATA_SRCS := $(wildcard data/*.s)
OBJS      := $(C_SRCS:%.c=$(BUILD)/%.o) $(ASM_SRCS:%.s=$(BUILD)/%.o) $(DATA_SRCS:%.s=$(BUILD)/%.o)

.SUFFIXES:
.SECONDEXPANSION:
.SECONDARY:
.DELETE_ON_ERROR:
.PHONY: all compare clean progress nonmatching

all: $(ROM)

compare: $(ROM)
	@sha1sum -c $(NAME).sha1
	@$(PREFIX)nm $(ELF) | awk 'NF==3 {print $$1, $$3, $$2}' > $(BUILD)/ref.syms

# Build with the C drafts of #ifdef NONMATCHING blocks instead of the original asm (not byte identical; used to check that every draft compiles/links).
nonmatching:
	$(MAKE) BUILD=build_nm NAME=shiningsoul2_nm NM_FLAGS=-DNONMATCHING all

clean:
	rm -rf $(BUILD) $(ROM) $(ELF) $(MAP)

# Each module's not yet decompiled functions live in asm/nonmatchings/<module>/.
asm_deps = $(wildcard asm/nonmatchings/$(1)/*.s)

# Per module compiler: agbcc by default, old_agbcc where the original code needs it.

# The SDK's m4a.c was built with an older agbcc
CC1_m4a := tools/agbcc/bin/old_agbcc

# The SDK's flash library was prebuilt with -O1
CC1FLAGS_agb_flash := -O1 -mthumb-interwork

CC1_video := tools/agbcc/bin/old_agbcc

CC1_code_08001A50 := tools/agbcc/bin/old_agbcc
CC1_code_08009088 := tools/agbcc/bin/old_agbcc
CC1_code_08002118 := tools/agbcc/bin/old_agbcc
CC1_code_0801E244 := tools/agbcc/bin/old_agbcc
CC1_code_0801AAF8 := tools/agbcc/bin/old_agbcc
CC1_code_08017F7C := tools/agbcc/bin/old_agbcc

CC1_code_080016C8 := tools/agbcc/bin/old_agbcc

# C files: preprocess, compile with agbcc, assemble.
$(BUILD)/src/%.o: src/%.c $$(call asm_deps,$$*) $$(wildcard include/*.h)
	@mkdir -p $(@D)
	$(CPP) $(CPPFLAGS) $< -o $(BUILD)/src/$*.i
	$(or $(CC1_$*),$(CC1)) $(or $(CC1FLAGS_$*),$(CC1FLAGS)) -o $(BUILD)/src/$*.s $(BUILD)/src/$*.i
	@printf ".text\n\t.align 2, 0 @ Don't pad with nop\n" >> $(BUILD)/src/$*.s
	$(AS) $(ASFLAGS) -o $@ $(BUILD)/src/$*.s

$(BUILD)/asm/%.o: asm/%.s asm/macros.inc $$(call asm_deps,$$*)
	@mkdir -p $(@D)
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD)/data/%.o: data/%.s baserom.gba
	@mkdir -p $(@D)
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD)/ld_script.ld: ld_script.ld
	@mkdir -p $(BUILD)
	sed 's#build/#$(BUILD)/#g' $< > $@
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
