# Qué demuestra un match

Una función está terminada cuando el C integrado produce la ROM original:
`make compare` debe imprimir `shiningsoul2_eu.gba: OK`. Un borrador compilable,
un diff parecido o un `MATCH` aislado no sustituyen esa comprobación.

## Fallo corregido: `MATCH (positions only)`

La heurística antigua de `nmdiff.py` y `nmscore.py` ordenaba las líneas añadidas
y eliminadas del diff y reemplazaba destinos de ramas por `X`. Eso podía ocultar
cambios reales de orden, control de flujo o relocations.

Ejemplo ARM Thumb reproducido con el ensamblador real:

```asm
/* Original: devuelve 2 */       /* Distinto: devuelve 1 */
movs r0, #1                    adds r0, #1
adds r0, #1                    movs r0, #1
bx lr                          bx lr
```

Los bytes son distintos y el orden importa, pero las líneas del diff se
cancelaban al ordenarlas. La herramienta antigua podía anunciar `MATCH` y
`nmscore.py --unwrap` podía eliminar el ASM de ese borrador incorrecto.

El veredicto corregido usa exclusivamente los bytes y relocations normalizados
de `decomp.compare`. La distancia relajada solo sirve para priorizar candidatos:

| Resultado | Significado |
|---|---|
| `nmdiff.py`: `MATCH`, exit 0 | Bytes y relocations normalizados iguales |
| `nmdiff.py`: `NO MATCH`, exit 1 | Existe diferencia; no autoriza unwrap |
| `nmscore.py`: 0 | Comparación exacta; puede desenvolver la función seleccionada |
| `nmscore.py`: positivo | Distancia aproximada, incluso si las líneas relajadas se cancelan |
| `nmscore.py`: -1 | No se pudo compilar/comparar |

Una diferencia aislada también puede deberse al contexto del módulo o los pools.
No la conviertas en `MATCH` por semejanza: cualquier aplicación experimental debe
ser reversible y verificarse con la ROM completa. El script `addnm.py` consulta
el texto de `nmdiff.py`; la salida `NO MATCH` conserva el borrador.

## Fallo corregido: addends y opcodes borrados por el comparador

El normalizador también borraba cuatro bytes en toda relocation distinta de
ABS32. En ELF ARM de tipo REL, esos bytes contienen el addend y parte de la
instrucción: `bl external_target+2` no equivale a `bl external_target+4`.
También desaparecía el registro de `bx r0` frente a `bx r1` con R_ARM_V4BX.
Se conservan ahora los bytes y la identidad de destino de esas relocations.

Las referencias a otras secciones conservan su nombre real. No se confunden
`.target` y `.other`, ni se resta la posición del llamador a un ABS32 que apunta
a otra sección. Las pruebas usan objetos Thumb y ARM reales, y comprueban que
llamadas válidas a símbolos globales definidos/indefinidos siguen coincidiendo
al cambiar el padding del objeto.

La compensación de PC y el addend forman parte de la relocation, como define
la [especificación ELF de Arm](https://github.com/ARM-software/abi-aa/blob/main/aaelf32/aaelf32.rst#5611-addends-and-pc-bias-compensation).
La comparación aislada no verifica el contenido de datos externos ni sustituye
la ROM enlazada completa.

## Fallo corregido: orden de declaraciones en `handapply.py`

Insertar cada declaración en el mismo punto invertía el orden del candidato.
Por ejemplo, un `extern` de array podía quedar antes de la definición de su
`struct`. Con agbcc, ese contexto puede cambiar cargas/stores aunque el candidato
aislado hubiera coincidido.

Las declaraciones se insertan como un bloque ordenado antes de la función
objetivo, también cuando el tipo existente aparece a mitad del módulo.
Se identifican tipos por su tag y tokens, no por una línea con espacios exactos.
Un tipo posterior, condicional o conflictivo hace abortar antes de escribir:
usa un alias/tipo local único y vuelve a verificar. Las declaraciones de otros
shards no se mueven ni reescriben.

Todos los candidatos de un lote se validan antes de escribir el módulo o borrar
ASM. Si falla el segundo archivo, no se deja el primero parcialmente aplicado.
Esto no elimina la obligación de verificar y revertir si falla la ROM final.

## Auditoría y comprobaciones obligatorias

La incidencia se reprodujo con objetos ARM reales, además de fixtures de cambios
de orden, ramas y relocations. Las pruebas fallaban con la heurística antigua.
La regresión también cubre el orden de tipos/externs de `handapply.py`.

La auditoría de la integración publicada `367ca1d` hizo una reconstrucción
completa (`make -B -j2 compare`) sin confiar en objetos cacheados. Pasó y la ROM
generada coincidió con el dump europeo, SHA-1
`aa1288be9257337abdfe3034898cf6c7aa778fbc`.
El fallo de diagnóstico es grave para la automatización; esta auditoría no
encontró corrupción de la ROM publicada. No se deben contar diagnósticos
históricos como funciones nuevas sin verificar sus entregas.

Antes de cada entrega:

```sh
make -j1 compare
make -j1 nonmatching
python3 tools/scripts/check_tree.py
```

Al cambiar tipos compartidos, aplicar por otra vía, diagnosticar una diferencia
de contexto o investigar falsos matches, fuerza la reconstrucción afectada y
repite la comparación completa. Nunca omitas los hooks.

Pruebas del workflow:

```sh
python3 -m unittest discover -s tools/tests -p 'test_*.py' -v
```

Las pruebas de objetos reales usan `arm-none-eabi-as`, `arm-none-eabi-objdump` y
`pyelftools` (disponibles en CI); las demás pruebas no necesitan ROM ni agbcc.


## Revalidation of canonical exports and C aliases

`revalidate.py` audits configured ROM symbols, including descriptive symbols and
C definitions whose C identifier differs from their `asm("canonical")` label.
It compiles the unchanged whole module with its real Makefile rules in a temporary
`BUILD` directory (`-B -j1`), then checks active preprocessed C definitions against
the existing strict original-ASM byte/relocation comparison. Headers and declarations
remain in their original positions; later types are not hoisted ahead of a target.
Inactive NONMATCHING drafts and original INCLUDE_ASM bodies are not claimed as C.

```sh
python3 tools/scripts/revalidate.py MODULE
# Report rows use: MODULE CANONICAL_SYMBOL
python3 tools/scripts/revalidate.py --from build/my-owned-bad.txt MODULE
python3 tools/scripts/revalidate.py --apply --from build/my-owned-bad.txt MODULE
```

`--from` selects a fresh check; it never treats an old BAD report as current proof.
Use only owned functions in the selection on shard branches. Global `--apply` is
coordinator work, not a parallel-worker batch action. Module filters remain in
force. Unknown/ambiguous aliases, foreign-module exports, missing active definitions,
missing sources and module compiler failures are errors; they do not authorize
rollback or silently count as skipped/good. Unsupported canonical exports visible
in the ELF but unmapped by the source parser also fail closed.

For a proven mismatch, `--apply` restores the **canonical** ASM filename and stub,
keeps the original alias declaration and wraps its C definition as a NONMATCHING
draft. It does not rename game symbols or rewrite shared declarations. Check the
full ROM and NONMATCHING build afterwards. A module that does not compile must be
repaired first; the tool does not guess which functions to roll back from a single
module compiler error. Exit status is 0 for no mismatches, 1 for mismatches (also when
restored), and 2 for audit errors.

The shard delivery guard also compares canonical C definitions, including return
types and alias bindings, against the branch/main merge base. A C-only edit without an ASM deletion can
no longer bypass ownership; header-only alias redirection is checked as well.
Ambiguous bindings require explicit resolution before delivery.

Regression tests include optional real agbcc/binutils fixtures for stale integer
headers plus matching void aliases, canonical rollback, and compilation of both
matching and NONMATCHING modes. They use temporary source/config/ASM fixtures and
need no ROM. The complete repository ROM/NONMATCHING checks remain mandatory.


Per-function work reports under `docs/agents/function_work/` are guarded by the
same exclusive shard ownership. A direct `sub_XXXXXXXX.json` or `arm_XXXXXXXX.json`
filename must identify a registered function address and agree with the JSON
`address`; ownership follows the registered canonical symbol, including descriptive
symbols. Unknown/foreign reports and inconsistent/nested paths are rejected.
Deleting a report also requires ownership. Milestone states/evidence remain
validated by the graphic's report loader; the delivery guard does not duplicate
that schema or change the graphic.
