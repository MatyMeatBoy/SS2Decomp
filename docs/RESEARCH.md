# Investigación: cómo decompilar Shining Soul II (GBA)

## 1. Qué es una decompilación "matching"

Una decompilación *matching* reescribe el código del juego en C de forma que,
compilado con **el mismo compilador y flags que usó el estudio**, produce un
ROM **idéntico byte a byte** al original. Es la forma de saber con certeza que
el C es correcto: si el SHA1 coincide, el código es equivalente.

Proyectos de referencia en GBA (todos usan este método):

| Proyecto | Juego | Estado | Qué nos aporta |
|----------|-------|--------|----------------|
| [zeldaret/tmc](https://github.com/zeldaret/tmc) | Zelda: The Minish Cap | completo | estructura del repo, Makefile, `ASM_FUNC`, herramientas de assets |
| [pret/pokeemerald](https://github.com/pret/pokeemerald), pokefirered | Pokémon | completo | m4a (motor de sonido), crt0, libagbsyscall, agb_flash 1M |
| [SAT-R/sa2](https://github.com/SAT-R/sa2) | Sonic Advance 2 (Sega) | muy avanzado | **MultiSio** y **agb_flash 512K V130**, que usa también Shining Soul II |
| [FireEmblemUniverse/fireemblem8u](https://github.com/FireEmblemUniverse/fireemblem8u) | Fire Emblem 8 | 100 % | referencia de un proyecto agbcc terminado |
| Klonoa: Empire of Dreams | Klonoa | ~51 % | flujo moderno con LLM: luvdis + agbcc + objdiff + stubs `INCLUDE_ASM` |

No existe ninguna decompilación previa de Shining Soul I/II.

## 2. Identificación del ROM

* Título `SHINING SOUL`, código `AU2P` (Europa), fabricante `8P` (Sega).
* SHA1 `aa1288be9257337abdfe3034898cf6c7aa778fbc`, 16 MiB.
* `crt0` = el `crt0.s` estándar del SDK de Nintendo (mismo que pokeemerald),
  con un orden de prioridad de interrupciones propio.

### Compilador: agbcc (GCC 2.95 del SDK)

Huellas inequívocas de agbcc en el código THUMB:

* movimientos entre registros bajos como `adds rX, rY, #0` (`add rX, rY, #0`),
* epílogos `pop {r0}; bx r0` (compilado con `-mthumb-interwork`, 1111 casos),
* saltos largos dentro de una función implementados con `bl` ("far jump"),
* tablas de `switch` con `lsls r0,#2; ldr r1,=tabla; adds; ldr; mov pc, r0`.

### Bibliotecas encontradas

| Dirección | Biblioteca | Notas |
|-----------|------------|-------|
| `0x080000C0` | crt0 / IntrMain (ARM) | escrito a mano, `asm/crt0.s` |
| `0x0800023C` | planificador de tareas (THUMB asm) | asm escrito a mano del juego |
| `0x080B64D8` | m4a_1 (MusicPlayer2000, núcleo asm) | ID `Smsh` |
| `0x080B70CC` | m4a.c | `MidiKeyToFreq`, `m4aSoundInit`... |
| `0x080B8570` | libagbsyscall | `CpuSet`, `LZ77UnComp*`, `SoftReset`... |
| `0x080B85B4` | agb_flash 512K | cadena `FLASH512_V131` |
| `0x080B8F24` | libgcc (`_call_via_rX`, `__divdi3`, `__divsi3`...) | |
| `0x080B96A4` | libc `memcpy` | |
| (cerca de main) | MultiSio | cadena `MultiSio010214` |

### Mapa del ROM

* `0x08000000`–`0x080B9704` (~760 KB): código (`.text`).
* `0x080B9704`–`0x09000000` (~15 MB): datos (tabla de senos, tablas,
  textos, gráficos, mapas, música...).

## 3. Herramientas

| Herramienta | Uso |
|-------------|-----|
| [agbcc](https://github.com/pret/agbcc) | el compilador original; obligatorio para el matching |
| binutils `arm-none-eabi` | ensamblador, enlazador, objdump |
| `tools/scripts/analyze.py` | **descubrimiento de funciones** propio (ver abajo) |
| `tools/scripts/gen_asm.py` | genera un `.s` por función, con etiquetas y símbolos |
| [m2c](https://github.com/matt-kempster/m2c) (`--target gba`) | borrador automático de C a partir del asm |
| Ghidra 11.4 (headless) | referencia de decompilación, xrefs |
| [asm-differ](https://github.com/simonlindholm/asm-differ) / diff propio | comparar el asm compilado con el original |
| luvdis | probado: solo encontró 551 funciones, insuficiente |

### Descubrimiento de funciones

luvdis encontró 551 funciones, y hay más de 2000. Por eso escribí un
analizador propio (`analyze.py`) que:

1. Hace descenso recursivo desde `AgbMain` siguiendo `bl`, saltos y punteros
   a funciones cargados desde *literal pools*.
2. Resuelve las tablas de saltos de `switch` de agbcc.
3. Detecta los "far jumps" de agbcc (`bl` usado como salto dentro de la función).
4. Recorre linealmente los huecos entre funciones (agbcc las coloca contiguas y
   alineadas a 4 bytes) para encontrar funciones que solo se llaman por puntero.
5. Usa los punteros encontrados en los datos solo para confirmar huecos (dan
   muchos falsos positivos si se usan directamente).

Resultado: **2035 funciones**, con el 99,9 % de los bytes de código cubiertos.
Lo que queda fuera es asm escrito a mano.

## 4. Organización del proyecto (estilo splat / tmc)

* Cada función no decompilada vive en `asm/nonmatchings/<módulo>/<función>.s`.
* Los módulos C (`src/<módulo>.c`) las incluyen con `INCLUDE_ASM(...)`; agbcc
  compila el archivo y el asm se intercala en su sitio.
* Decompilar = sustituir el `INCLUDE_ASM` por C y comprobar `make compare`.
* Los datos se toman del `baserom.gba` del usuario con `.incbin`, para que el
  repositorio no contenga los assets del juego.

## 5. Pistas para encontrar los límites de los archivos .c originales

El enlazador coloca la `.rodata` de cada objeto en el mismo orden que su
`.text`. Si se agrupan las funciones según qué zona de `.rodata` usan, se
pueden reconstruir los archivos fuente originales. Por ejemplo, la cadena de
MultiSio va justo después de `gIntrTable` (main.c), así que MultiSio se enlazó
justo después de main.c, igual que en Sonic Advance 2.

## 6. Plan

1. ✅ Disassembly que reconstruye el ROM con SHA1 idéntico.
2. ✅ Gráfico de progreso (`make progress`).
3. Bibliotecas: portar m4a.c, agb_flash, MultiSio y libagbsyscall desde
   pokeemerald/sa2 y ajustarlas a las versiones de este ROM.
4. Juego: decompilar función por función (borrador con m2c, ajuste manual
   hasta el matching), empezando por `main` y los sistemas base.
5. Documentar estructuras (entidades, jugador, objetos, mapas) y nombrar
   símbolos.
6. Extraer assets (gráficos, textos, música) a formatos editables.
