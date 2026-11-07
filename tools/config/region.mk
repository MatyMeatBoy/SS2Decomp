# Experimental regional reconstruction; the original EU rules stay in Makefile.
ifeq ($(filter $(REGION),usa jp),)
$(error Unknown REGION '$(REGION)'; use eu, usa or jp)
endif

ifneq ($(filter-out all compare,$(MAKECMDGOALS)),)
$(error REGION=$(REGION) supports only all and compare; use REGION=eu for other targets)
endif

PYTHON           ?= python3
PREFIX           ?= arm-none-eabi-
REGIONAL_ROM     ?= baserom_$(REGION).gba
REGIONAL_OUTPUT  ?= shiningsoul2_$(REGION).gba
REGIONAL_BUILD   ?= build/regions/$(REGION)

.PHONY: all compare
all: compare

compare:
	$(PYTHON) tools/scripts/region_build.py --region $(REGION) --rom "$(REGIONAL_ROM)" --out "$(REGIONAL_BUILD)" --output "$(REGIONAL_OUTPUT)" --prefix "$(PREFIX)"
