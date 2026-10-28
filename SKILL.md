---
name: decompilation-race
description: Use when recovering source from compiled software, coordinating a decompilation competition, or reconstructing native PC executables, DLLs, managed assemblies, firmware or game binaries under a deadline.
---

# Decompilation Race

Convierte un binario en código reconstruible y verificable, con trabajo paralelo y entregas frecuentes. Maximiza avance **integrado y aceptado por el criterio del proyecto**, no volumen de pseudocódigo. No presupongas compilador, plataforma, número de workers ni velocidades transferibles de otro proyecto.

## Arranque y criterio de éxito

Lee reglas de la competencia, instrucciones locales, handoffs y estado real. Fija hash del original, alcance, plazo, recursos permitidos, artefacto de entrega y comandos de validación. Distingue:

| Modo | Evidencia para aceptar una unidad |
|---|---|
| Matching exacto | C/C++ integrado con compilador y contexto reales; bytes, relocations y destinos correctos; reconstrucción final según el criterio del juez. |
| Recuperación funcional | Implementación integrada contrastada con el original mediante un oráculo reproducible; efectos, ABI y errores cubiertos. Las pruebas demuestran lo observado, no equivalencia universal. |
| Análisis/documentación | Roles, tipos, datos y grafo con evidencia y confianza; se contabilizan aparte. |

Mantén el modo exigido. Arrancar, compilar o pasar pruebas aisladas no convierte un borrador en matching. Si falta la regla decisiva, trabaja en reconocimiento y evidencia; no inventes una aceptación más fácil.

**Para EXE/DLL de PC, lee primero [PC_EXECUTABLES.md](docs/decompilation-skill/PC_EXECUTABLES.md).** Un PE sin directorio CLR visible puede ser un launcher con componentes administrados. La clasificación decide las herramientas.

## Bucle de trabajo

1. **Inventariar una vez:** módulos, rangos de código, funciones y fragmentos, importaciones, recursos, ABI y toolchain probable. Usa identidad `hash/módulo + RVA` o equivalente estable; separa nombre canónico de nombre descriptivo. Registra incógnitas.
2. **Obtener una base reproducible:** original inmutable, build limpio, smoke test y comparador/oráculo. Audita el comparador con diferencias deliberadas antes de usar sus resultados para aplicar código.
3. **Priorizar:** primero borradores cercanos y familias repetidas, luego unidades pequeñas; reserva capacidad sostenida para funciones grandes y dependencias que desbloquean muchas unidades. Busca código de SDK/runtime ya reconstruido antes de reinventarlo; comprueba versión, procedencia, licencia y compatibilidad.
4. **Resolver una unidad:** ASM/IL y callers → hipótesis de tipos/flujo → borrador compilable → comparación concreta → cambio mínimo → validación en módulo → integración. Pseudocódigo del decompilador es una lectura auxiliar.
5. **Cambiar de estrategia por evidencia:** tras varios intentos sin mejora, cambia una hipótesis o conserva borrador y handoff. Unos 30 minutos son un presupuesto inicial ajustable por función, no una orden de matar procesos ni abandonar un objetivo grande.
6. **Integrar continuamente:** el coordinador también decompila, recoge SHA inmutables, revisa alcance y dependencias, integra en serie y verifica el artefacto completo. Por defecto, checkpoint cada 30 minutos y entrega antes si hay resultados listos.

Para ejecutar y escalar el equipo, medir modelos, dividir gigantes y cerrar la entrega, lee [OPERATIONS.md](docs/decompilation-skill/OPERATIONS.md). Entrega a cada worker el [contrato](docs/decompilation-skill/WORKER_CONTRACT.md), completado con datos reales.

## Verificación que no se negocia por velocidad

- Un checkout y directorio de build por worker; un escritor por base de análisis. Reserva trabajo atómicamente antes de editar, también el coordinador.
- No ordenes instrucciones ni borres ramas, opcodes, addends o relocations para declarar igualdad. Una distancia relajada sirve para ordenar candidatos.
- No cambies flags, denominador o regiones excluidas después de observar un fallo para convertirlo en éxito. Los aliases deben verificarse por el símbolo que realmente exportan y con el contexto completo del módulo.
- Un build que conserva ASM/original demuestra que la base sigue sana; **no** que el borrador C sea equivalente. Stub, forwarding al original y librería enlazada son estados distintos de C recuperado.
- No edites globalmente headers, familias o tooling desde un shard. El integrador revisa esos cambios por separado y revalida sus consumidores.
- Cada resultado lleva revisión, comandos, salidas y limitaciones. Conserva el último artefacto aceptado antes de reemplazarlo.

## Progreso honesto y continuación

Publica funciones y bytes verificados por separado; C recuperado, bibliotecas enlazadas, borradores, identificación, grafo y datos también separados. Si el denominador es desconocido, informa cantidades y cobertura del inventario, sin porcentaje global. Copiar un blob no demuestra comprenderlo.

Gráfico predeterminado: verde aceptado, amarillo borrador/hitos documentados, gris pendiente. El relleno parcial de un gigante representa hitos enumerados, nunca porcentaje de equivalencia ni cercanía de tamaño.

Antes de terminar un bloque, deja estado de procesos comprobado, claims, bases y SHA integrados, candidatos, experimentos descartados y siguiente acción. Una observación vencida no demuestra que un worker murió. Persiste hasta el alcance real o el plazo de competencia; entrega lo verificado sin declarar completo lo que sigue pendiente.
