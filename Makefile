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
CPPFLAGS  := -nostdinc -I tools/agbcc/include -iquote include -undef
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
.PHONY: all compare clean progress

all: $(ROM)

compare: $(ROM)
	@sha1sum -c $(NAME).sha1
	@$(PREFIX)nm $(ELF) | awk 'NF==3 {print $$1, $$3, $$2}' > $(BUILD)/ref.syms

clean:
	rm -rf $(BUILD) $(ROM) $(ELF) $(MAP)

# Each module's not yet decompiled functions live in asm/nonmatchings/<module>/.
asm_deps = $(wildcard asm/nonmatchings/$(1)/*.s)

# The SDK's m4a.c was built with an older agbcc
$(BUILD)/src/m4a.o: CC1 := tools/agbcc/bin/old_agbcc

# The SDK's flash library was prebuilt with -O1
$(BUILD)/src/agb_flash.o: CC1FLAGS := -O1 -mthumb-interwork

# C files: preprocess, compile with agbcc, assemble.
$(BUILD)/src/%.o: src/%.c $$(call asm_deps,$$*) $$(wildcard include/*.h)
	@mkdir -p $(@D)
	$(CPP) $(CPPFLAGS) $< -o $(BUILD)/src/$*.i
	$(CC1) $(CC1FLAGS) -o $(BUILD)/src/$*.s $(BUILD)/src/$*.i
	@printf ".text\n\t.align 2, 0 @ Don't pad with nop\n" >> $(BUILD)/src/$*.s
	$(AS) $(ASFLAGS) -o $@ $(BUILD)/src/$*.s

$(BUILD)/asm/%.o: asm/%.s asm/macros.inc $$(call asm_deps,$$*)
	@mkdir -p $(@D)
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD)/data/%.o: data/%.s baserom.gba
	@mkdir -p $(@D)
	$(AS) $(ASFLAGS) -o $@ $<

$(ELF): $(OBJS) ld_script.ld sym_ram.ld
	$(LD) -T ld_script.ld -Map $(MAP) -o $@ $(OBJS)

$(ROM): $(ELF)
	$(OBJCOPY) -O binary --gap-fill 0xFF $< $@

# Progress badges and treemap (docs/progress/*.svg), shown in README.md
progress:
	python3 tools/scripts/progress.py
