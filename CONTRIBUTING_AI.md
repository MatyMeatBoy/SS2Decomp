# Guía para agentes de IA

Esta guía permite que agentes externos (por ejemplo Nemotron mediante OpenCode) colaboren en la decompilación de Shining Soul 2.

## Preparación

1. Clona el repositorio y crea una rama propia:

```bash
git clone https://github.com/MatyMeatBoy/SS2Decomp.git
cd SS2Decomp
git checkout -b ai/<nombre-del-agente>
```

2. Trabaja únicamente en tu rama. No hagas push a la rama principal ni reescribas historia.
3. Antes de editar, comprueba el árbol:

```bash
git status --short
git log -5 --oneline
```

## Objetivo

Convierte funciones de `asm/nonmatchings/` a C en `src/`, conservando exactamente el comportamiento y la dirección de la función. Prioriza funciones pequeñas y aisladas. No inventes estructuras ni traduzcas una función si la equivalencia no es clara.

Para cada función:

1. Lee el ASM completo y las declaraciones relacionadas en `include/` y `src/`.
2. Confirma offsets, tipos, llamadas y convenciones con funciones vecinas.
3. Implementa la función en el C correspondiente.
4. Elimina el ASM solo después de verificar la implementación.
5. No modifiques funciones ajenas a la tarea.

## Verificación

En Windows, prepara MSYS2 así:

```powershell
$env:PATH="C:\msys64\ucrt64\bin;C:\msys64\usr\bin;$env:PATH"
```

Comprueba siempre:

```bash
git diff --check
python tools/scripts/progress.py
```

No dejes archivos generados `*.i` o `*.s` temporales en el commit. No cambies `docs/progress/` manualmente; se actualiza con `progress.py`.

## Entrega

El agente debe entregar una descripción breve de las funciones convertidas, la salida de `git diff --check` y cualquier duda de equivalencia. Puede crear un commit local descriptivo, pero no debe hacer push salvo autorización explícita. El coordinador revisará el diff, ejecutará las comprobaciones e integrará los cambios.

Si una función es grande, usa callbacks complejos o depende de datos no identificados, déjala intacta y documenta el bloqueo. Si otro agente ya modificó el archivo, detente y comunica el conflicto.

## Seguridad

No ejecutes comandos destructivos ni borres archivos fuera de la tarea. No introduzcas pseudocódigo, código generado o comentarios que oculten una equivalencia incompleta. Mantén los cambios pequeños: una función o un grupo estrechamente relacionado por commit.

## Coordinación con varios agentes

- Cada agente trabaja en una función o grupo estrechamente relacionado y anuncia primero el archivo que va a tocar.
- No uses `git add -A`: el coordinador integra archivos concretos para evitar incluir material auxiliar.
- `hermes01/` y `opencode01/` son carpetas locales de investigación; no forman parte del código fuente ni deben añadirse al commit.
- No hagas push desde los workers. Entrega el diff, la función convertida y cualquier duda; el coordinador valida y publica los cambios.
- Antes de empezar y antes de entregar, ejecuta `git status --short` para detectar conflictos con otro agente.
- Mantén un commit pequeño por función o grupo relacionado y no mezcles reformatos ni archivos generados.

## Lotes rápidos

- Antes de profundizar, compara funciones vecinas: wrappers con el mismo flujo y distintas tablas/callbacks suelen admitir una plantilla C compartida. Adapta nombres y constantes, y valida cada función por separado.
- Prioriza candidatos cortos cuyo control de flujo se entienda; si tras dos iteraciones no mejora el diff, registra el bloqueo y cambia de función.
- Cuenta avance solo cuando `decomp.py check` o `checkfile` da `MATCH`; mantener C no equivalente no sustituye la eliminación del ASM.

## Uso eficiente de tokens (vigente hasta el 31-12-2027)

- Mantén las instrucciones y entregas breves, sin repetir el prompt ni narrar pasos internos.
- Reporta solo funciones y archivos cambiados, verificaciones ejecutadas y dudas concretas.
- Usa diffs pequeños y salidas acotadas; conserva los detalles técnicos necesarios para revisar equivalencia y ABI.
- En tareas por lotes, comunica un resumen único por entrega.

## Verificación obligatoria (añadido tras revalidar el árbol)

Se revalidaron todas las funciones convertidas por agentes: ~470 de ~505 compilaban pero **no coincidían byte a byte** (o ni compilaban con agbcc,
que es C89: sin `for (u32 i = 0;...)` ni declaraciones después de sentencias). Esas funciones quedaron como borrador dentro de
`#ifdef NONMATCHING ... #else INCLUDE_ASM(...) #endif` (el ROM se construye con el asm; el C sirve de punto de partida para el permuter).
Reglas para que el avance sea real:

1. Una función solo cuenta si `python tools/scripts/decomp.py check FUNC archivo.c` da **MATCH** con el compilador del módulo, y entonces
   se aplica con `python tools/scripts/apply_permuted.py archivo.c` (aplica, reconstruye la ROM completa y revierte si cambia el SHA1).
2. Antes de cada commit: `make compare` debe imprimir `shiningsoul2_eu.gba: OK`. Si no compila o no coincide, no se commitea.
3. Las funciones deben quedar **en orden de dirección** dentro del módulo (`python tools/scripts/sort_module.py` las reordena) y no puede
   haber un `INCLUDE_ASM` duplicado de una función ya convertida.
4. No convertir a C el código escrito a mano (`asm/m4a_1.s`, `asm/sched.s`, `asm/crt0.s`, `asm/libagbsyscall.s`) salvo que coincida con ROM completa.
5. Helpers `static` auxiliares de código en `NONMATCHING` deben ir dentro del mismo `#ifdef NONMATCHING`, o añaden bytes a la ROM.
6. `python tools/scripts/revalidate.py [--apply]` vuelve a comprobar todas las funciones C y degrada las que no coinciden; `python tools/scripts/first_shift.py`
   localiza la primera función que desplaza el layout cuando la ROM no coincide.
