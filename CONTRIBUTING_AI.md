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
