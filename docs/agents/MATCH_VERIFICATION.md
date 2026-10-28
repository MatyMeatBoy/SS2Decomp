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
