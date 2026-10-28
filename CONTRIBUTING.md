# Cómo contribuir

> **English TL;DR** — Matching decomp: your C must compile (agbcc, GCC 2.95) to the exact original bytes.
> `sh tools/setup_tools.sh`, `make compare` → `OK`, `make expected`, pick an `INCLUDE_ASM`, write C until objdiff /
> `decomp.py check` says 100 %, `make compare` OK, small commit, PR. Everything below in Spanish; commands are the same.

Una función solo cuenta como decompilada si `make compare` sigue diciendo `shiningsoul2_eu.gba: OK`.
C que "se parece" no cuenta: se guarda como borrador dentro de `#ifdef NONMATCHING`.

## 1. Preparar el entorno (una vez)

Necesitas tu propio dump de la ROM europea como `baserom.gba` (SHA1 `aa1288be9257337abdfe3034898cf6c7aa778fbc`).
**Nunca la subas al repo.**

| Sistema | Paquetes |
|---|---|
| Debian/Ubuntu/WSL | `sudo apt install git make gcc python3 python3-pip binutils-arm-none-eabi gcc-arm-none-eabi` |
| Windows (MSYS2) | instala [MSYS2](https://www.msys2.org) y en su terminal: `pacman -S git make mingw-w64-ucrt-x86_64-{arm-none-eabi-gcc,python,python-pip,python-capstone,python-pyelftools,python-levenshtein}`. Abre la terminal **UCRT64** (o pon `C:\msys64\ucrt64\bin;C:\msys64\usr\bin` delante en el `PATH`). |
| macOS | `brew install make python arm-none-eabi-gcc` (usa `gmake`) |

```sh
git clone https://github.com/MatyMeatBoy/SS2Decomp.git && cd SS2Decomp
cp /ruta/a/tu/rom.gba baserom.gba
sh tools/setup_tools.sh        # agbcc + m2c + permuter-agbcc + asm-differ + objdiff + deps Python + hook pre-commit
make -j$(nproc) compare        # -> shiningsoul2_eu.gba: OK
make expected                  # copia los .o que casan a expected/ (objetivo de los diffs)
python3 tools/scripts/gen_objdiff.py
mkdir -p ghi && tar xJf docs/ghidra/ghidra_out.tar.xz -C .   # salida de Ghidra por función (lectura)
```

Todo el toolkit vive dentro de `tools/` y está en `.gitignore`:

| Herramienta | Para qué |
|---|---|
| `tools/agbcc` | el compilador original (GCC 2.95 del SDK de GBA, [pret/agbcc](https://github.com/pret/agbcc)) |
| `tools/objdiff` | [objdiff](https://github.com/encounter/objdiff): diff visual por función, recompila al guardar. **Herramienta principal.** |
| `tools/asm-differ` | [asm-differ](https://github.com/simonlindholm/asm-differ): diff en terminal, `python3 tools/asm-differ/diff.py -mwo FUNC` |
| `tools/m2c` | [m2c](https://github.com/matt-kempster/m2c): genera un primer borrador de C a partir del asm |
| `tools/decomp-permuter` | [decomp-permuter-agbcc](https://github.com/WhenGryphonsFly/decomp-permuter-agbcc): prueba mutaciones del C al azar para casi-coincidencias |
| `tools/scripts/` | scripts del proyecto (abajo) |

Opcional, para leer el código: [Ghidra](https://ghidra-sre.org) 12.1.x (procesador `ARM:LE:32:v4t`, base `0x08000000`)
y [ReVa](https://github.com/cyberkaida/reverse-engineering-assistant), que expone Ghidra a un asistente de IA por MCP
(`uv tool install reverse-engineering-assistant`, `claude mcp add ReVa -- mcp-reva` con `GHIDRA_INSTALL_DIR` definido).
[decomp.me](https://decomp.me) (plataforma GBA, compilador `agbcc`) sirve para compartir un intento con otros.

## 2. Flujo por función

1. **Elegir.** `grep -n INCLUDE_ASM src/*.c` o `python3 tools/scripts/nm_drafts.py /tmp/nm` (borradores con su distancia:
   0 = casa, -1 = no compila). Empieza por funciones pequeñas; avisa en el issue/PR qué módulo tocas para no pisaros.
2. **Leer.** `GHIDRA_OUT=ghi tools/scripts/gv.sh sub_XXXXXXXX` muestra el C de Ghidra y el asm original.
   Ghidra ayuda a entender, **no** produce C que case.
3. **Borrador.** `python3 tools/scripts/decomp.py m2c sub_XXXXXXXX > /tmp/f.c` o a mano.
4. **Iterar hasta 100 %.**
   - objdiff: sustituye el `INCLUDE_ASM` por tu C en `src/<modulo>.c`, abre `tools/objdiff/objdiff` en la carpeta del repo,
     elige la unidad y la función: cada vez que guardas recompila y marca las diferencias.
   - o en terminal: `python3 tools/scripts/decomp.py check FUNC /tmp/f.c` (compila la función aislada y muestra el diff),
     `python3 tools/asm-differ/diff.py -mwo FUNC` (diff en vivo contra `expected/`).
   - Casi casa (pocas diferencias de registros/orden): `python3 tools/scripts/permute.py FUNC /tmp/f.c --time 300`.
5. **Aplicar.** `python3 tools/scripts/apply_permuted.py /tmp/f.c`: inserta la función, borra su `.s`, recompila la ROM
   y deshace todo si el SHA1 cambia. Si lo hiciste a mano en `src/`, borra `asm/nonmatchings/<modulo>/FUNC.s`.
6. **Verificar y subir.** `make compare` OK, `make nonmatching` OK, `python3 tools/scripts/progress.py`.
   Commit pequeño (`decompile sub_XXXXXXXX` o con el nombre real), PR contra `claude/rom-decompilation-research-obsal6`.

Si no consigues que case, no lo tires: déjalo como borrador
```c
#ifdef NONMATCHING
void sub_XXXXXXXX(void) { ... }
#else
INCLUDE_ASM("asm/nonmatchings/<modulo>", sub_XXXXXXXX);
#endif
```
con `python3 tools/scripts/addnm.py FUNC /tmp/f.c`.

## 3. Reglas del compilador (agbcc)

- **C89**: declaraciones al principio del bloque; nada de `for (int i = 0; ...)`. `python3 tools/scripts/c89fix.py` lo arregla.
- Código del juego: `agbcc -O2 -fprologue-bugfix`. m4a y algunos módulos usan `old_agbcc`, `agb_flash` usa `-O1`
  (está en el `Makefile`; para un módulo nuevo `tools/scripts/which_cc.py`).
- Usa los símbolos (`gUnk_03005CF4`), no direcciones literales. Para cambiar el tipo de un global usa un alias
  `extern struct GameState *gGameState asm("gUnk_03005CF4");` en vez de tocar la declaración existente.
- `include/*.h`: solo añadir, no reescribir líneas existentes (otros trabajan en paralelo).
- Mantén las funciones en orden de dirección (`tools/scripts/sort_module.py`). No conviertas a C el asm escrito a mano
  (`asm/crt0.s`, `asm/m4a_1.s`, `asm/sched.s`, libgcc).
- Trucos que casaron muchas funciones: [docs/agents/AI_AGENTS.md](docs/agents/AI_AGENTS.md#patrones-que-ya-resolvieron-muchos-borradores-úsalos-primero).

## 4. Si algo se rompe

| Síntoma | Arreglo |
|---|---|
| `make compare` FAILED | `python3 tools/scripts/first_shift.py` (qué función movió el layout); `python3 tools/scripts/revalidate.py --apply` devuelve a borrador lo que no casa |
| `make nonmatching` falla | `python3 tools/scripts/c89fix.py`, `python3 tools/scripts/fix_decls.py nonmatching` |
| objdiff/asm-differ muestran diferencias en funciones que no tocaste | `expected/` está viejo: `git stash`, `make expected`, `git stash pop` |
| `sha1sum` falla en Windows aunque la ROM es igual | checkout con CRLF: `git add --renormalize . && git checkout -- .` (el repo fuerza LF) |

## 5. Organización

```
src/<modulo>.c              C; funciones pendientes como INCLUDE_ASM(...)
asm/nonmatchings/<mod>/     un .s por función pendiente (se borra al casar)
asm/*.s, data/              asm escrito a mano, datos (.incbin de baserom.gba)
include/                    global.h, structs.h, variables.h, functions.h, gba/*
tools/config/               functions.cfg (lista de funciones), modules.cfg (límites de módulo), shards.txt
tools/scripts/              scripts del proyecto
docs/RESEARCH.md            investigación (toolchain, layout de la ROM)
docs/LINK_*.md              cable link / protocolo de mensajes
docs/agents/                guías para agentes de IA y trabajo en paralelo por shards
CLAUDE.md                   instrucciones para Claude Code
```

Para coordinar muchos agentes de IA en paralelo: [docs/agents/PARALLEL.md](docs/agents/PARALLEL.md).
