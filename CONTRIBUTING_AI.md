# Guía para agentes de IA (ChatGPT, Nemotron, etc.)

Objetivo: decompilación **matching**: el C compilado debe dar una ROM idéntica byte a byte (`make compare` → `shiningsoul2_eu.gba: OK`).
Una función solo cuenta si coincide. C que "se parece" no cuenta: va como borrador en `#ifdef NONMATCHING`.

## Antes de empezar
```bash
sh tools/install_hooks.sh   # una vez: el hook pre-commit bloquea commits que rompan la ROM o los borradores
git pull origin claude/rom-decompilation-research-obsal6
make compare            # debe dar OK; si no, arréglalo antes de nada
make nonmatching        # todos los borradores deben compilar y enlazar
```

## Compilador (importante)
- Todo el código del juego: `agbcc -O2 -fprologue-bugfix` (ya configurado en el Makefile). m4a usa `old_agbcc`, agb_flash `-O1`.
- agbcc es **C89**: declaraciones al inicio del bloque, sin `for (u32 i = 0; ...)`, sin declarar tras sentencias.
  `python tools/scripts/c89fix.py` lo convierte solo.

## Flujo por función
1. Elige una función con `INCLUDE_ASM` o un borrador `#ifdef NONMATCHING` en `src/<modulo>.c`.
   Lista de borradores con su distancia: `python tools/scripts/nm_drafts.py /tmp/nm` (0 = coincide, -1 = no compila).
2. Escribe el C en un archivo aparte y compruébalo: `python tools/scripts/decomp.py check FUNC archivo.c` (muestra el diff de asm).
3. Cuando diga `MATCH`: `python tools/scripts/apply_permuted.py archivo.c` (aplica, reconstruye la ROM y revierte si cambia el SHA1).
4. `make compare` OK y `make nonmatching` OK → commit pequeño → push.
5. Casi-coincidencias: `python tools/scripts/permute.py FUNC archivo.c --time 120`.

## Patrones que ya resolvieron muchos borradores (úsalos primero)
- **No uses direcciones literales** (`*(u32 *)0x03005CF4`): el original usa el símbolo `gUnk_03005CF4`.
- **Globals con el tipo correcto mediante alias** (no cambies la declaración existente):
  `extern struct GameState *gGameState asm("gUnk_03005CF4");` o `extern u16 gUnkVu16_030002F0 asm("gUnk_030002F0");`
  (van en `include/variables.h`; `tools/scripts/try_aliases.py` prueba estas reescrituras en lote).
- `*(u16 *)gUnk_X` cuando el asm hace un solo `ldrh` sobre la dirección → la variable es u16 (alias), no un puntero.
- **No partas expresiones en temporales** si el asm carga los globals en otro orden; escribe la expresión en una línea
  (p.ej. `gUnk_030056FC &= ~(1 << *(u16 *)tabla[obj[2]]);`).
- Si el original termina en `pop {r1}; bx r1` la función **devuelve** algo (`return sub_X(...)`); `pop {r0}` = void.
- Parámetros `u16/u8` añaden `lsl/lsr`; si el asm no los tiene, declara el parámetro `u32`/`s32`.
- Puntero local a estructura (`struct Player *p = &gUnk_03003CE0[i]; p->state = 0;`) en vez de offsets sueltos.
- Frame de pila sin uso (`sub sp,#N`) = array local sin usar `u8 buf[N];`.
- Booleanos: `u32 r = 0; if (c) r = 1; return r;`.
- Comparaciones `ble/bgt` = con signo, `bls/bhi` = sin signo: ajusta el tipo.

## Reglas
- No borres ni cambies líneas existentes de `include/*.h` (solo añade). No cambies el Makefile.
- No conviertas a C el asm escrito a mano (`asm/m4a_1.s`, `asm/sched.s`, `asm/crt0.s`).
- Mantén las funciones en orden de dirección (`python tools/scripts/sort_module.py`) y sin `INCLUDE_ASM` duplicados.
- Nunca subas `baserom.gba`.

## Autocorrección (si algo se rompe)
- `make compare` falla → `python tools/scripts/first_shift.py` dice qué función cambia el layout; `python tools/scripts/revalidate.py --apply`
  devuelve a borrador toda función que no coincida.
- `make nonmatching` falla → `python tools/scripts/c89fix.py` y `python tools/scripts/fix_decls.py nonmatching`.
- Tras aplicar una función queda un borrador viejo → `python tools/scripts/unwrap_matched.py`.

## Protecciones automáticas
- `tools/hooks/pre-commit`: `check_tree.py` + `make compare` + `make nonmatching` antes de cada commit.
- GitHub Actions (`.github/workflows/check.yml`): en cada push compila todos los módulos (normal y NONMATCHING) y corre `check_tree.py`.
  Si sale en rojo, arréglalo antes de seguir.

## Estado / siguiente trabajo (online) — actualizado
Objetivo del usuario: sustituir las esperas del cable link por un sistema online moderno. Leer `docs/LINK_CABLE.md` (transporte, flags, bloques)
y `docs/LINK_MESSAGES.md` (catálogo de mensajes 0x81..0xB0, productores y efectos del receptor).
Herramientas nuevas (todas verifican la ROM): `nmscore.py [--unwrap]` (puntúa todos los drafts y desenvuelve los que casan),
`nmdiff.py FUNC` (diff real de un draft NONMATCHING contra el asm), `addnm.py FUNC file.c` (inserta C escrito a mano como draft, compara,
desenvuelve si casa), `unwrap_func.py`, `families.py`, `refscan.py`, `loopfix.py`. SIEMPRE `make compare` + `make nonmatching` antes de commit.
Trucos que casaron: función variádica para `push {r2,r3}`; llamada por cast `((void(*)(s32))f)(x)` para evitar lsl/lsr de params u16;
bucles `for (i=0,e=base;i<N;i++){...; e+=0x28;}` + `i=0; G=i`; constante 0 en variable declarada; `if(x) return 0; else return 1;`;
funciones no-void sin `return` para epílogo `pop {r1}`; parámetros con dirección tomada (`&a`) cuando el original los guarda en pila.
CUIDADO: el veredicto de nmdiff exige MISMO tamaño (el relleno `.short 0` cambia la posición de todo lo siguiente).
Pendiente online (sin casar): sub_08066720 (broadcast, draft a 4 bytes), sub_0806690C (receptor, draft documentado), sub_080135C4
(crea entidad jugador), sub_08001DF0 (barrera), sub_08066404/08065DAC (senders 0x94/0x83, drafts), sub_08066490/08066520 (0x95/0x96),
sub_0800D368 (update por jugador, 12k líneas), resto de senders sin productor casado (ver tabla "-" en LINK_MESSAGES.md).
Siguiente: sub_08065CA8 (init de la cola), sub_0806603C/080660EC/0806617C/08066220/080662C4/08066624, sub_08066CB.. (ver `sync_funcs`:
funciones que llaman a productores o tocan gUnk_03006300/03006338).
