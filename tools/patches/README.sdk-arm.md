# SDK ARM compiler provenance

`tools/install_agbcc_arm_sdk.sh` builds only the ARM C compiler from unmodified
pret/agbcc revision `da598c1d918402c42c0c0d7128ba14567f3175e9`.
The source ZIP SHA256 is
`d4dee508fa72b0e6f6bceed5b788e00797f5d78f6cfaf4373eff1fb027a67697`.
There are no compiler patches in this package.

The pinned upstream `build.sh` already builds the ARM compiler using:

```sh
cd gcc_arm
./configure --target=arm-elf --host=i386-linux-gnu
make -j1 cc1
```

Its `install.sh` copies that compiler as `tools/agbcc/bin/agbcc_arm`.
The dedicated installer uses those same configure/build commands, verifies the
archive, restores executable ZIP modes, and retains the entire source and GCC
COPYING in a separate ignored `tools/agbcc_arm_sdk` directory. Each installation
uses a fresh source directory, including all generated GCC files. It records
the source path, source/archive revision and resulting binary hash. It never
modifies the shared `tools/agbcc` directory.

Primary pinned sources:

- https://github.com/pret/agbcc/blob/da598c1d918402c42c0c0d7128ba14567f3175e9/build.sh
- https://github.com/pret/agbcc/blob/da598c1d918402c42c0c0d7128ba14567f3175e9/install.sh

Reproduce with host GCC, make, Python and ARM binutils on PATH:

```sh
sh tools/install_agbcc_arm_sdk.sh
python3 tools/scripts/test_sdk_umul.py
```

Python needs pyelftools and Unicorn. Windows may supply an optional Python
dependency directory with `--deps DIR`. The Makefile selects this compiler only
for `m4a_1_mul`, with `-O2 -mthumb-interwork -fomit-frame-pointer`. The normal
Make dependency bootstraps it when absent. The no-ROM test compiles the real
translation unit afresh and checks exact original bytes, both instruction modes,
relocations and the complete result/return/register/flag contract. A clean Linux
CI run must pass that test before publication; a pre-existing Windows executable
alone is not evidence of portable compiler installation.
