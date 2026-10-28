# Operación, velocidad y competición

## Inventario y cola con evidencia

Mantén un registro por identidad canónica: módulo, RVA/rangos únicos, arquitectura, tamaño conocido, estado, nombre descriptivo/confianza, claim, worker, revisión y evidencia. No inventes límites por restar direcciones adyacentes: puede haber padding, datos, fragmentos o funciones compartidas.

Estados útiles: pendiente, lectura, borrador compilable, validado aislado, integrado aceptado. Registra además implementaciones enlazadas y ASM/original conservado. Son dimensiones distintas; evita que una etiqueta `done` mezcle significados.

Ordena la cola por el criterio del juez: beneficio aceptado esperado dividido por tiempo de resolución, revisión e integración. Estima con clases observables: tamaño, ramas, bucles, llamadas, indirección, tipos desconocidos y familias ya resueltas. La estimación sirve para elegir trabajo; nunca es un porcentaje demostrado.

Busca reuso antes del trabajo profundo en runtimes, SDKs, codecs y librerías. Investiga repositorios, forks y versiones con símbolos y patrones estructurales, no solo nombres. Conserva URL, commit, versión, licencia y diferencias. Un upstream al 100% o una función homónima no prueba que el código coincida con este binario. Si es ASM original escrito a mano, mantenlo separado de C recuperado.

## Configurar el equipo sin saturarlo

Empieza con coordinador y pocos workers; esfuerzo bajo es una opción inicial para tareas acotadas. Mide una ronda representativa antes de ampliar. Incrementa concurrencia mientras aumenta la producción aceptada y queda margen de RAM, disco, CPU y capacidad de integración. Reduce o redistribuye si aparecen paginación, builds lentos, disco agotado o una cola de resultados sin revisar.

No conviertas un modelo ganador de otro proyecto en regla universal. Asigna modelos según resultados de tareas comparables; usa mayor capacidad o esfuerzo para una hipótesis difícil, con una prueba acotada y un objetivo observable. El coordinador resuelve funciones además de revisar; registra su rendimiento por separado y el tiempo que dedica a integración.

Cada worker tiene checkout, branch, build, temporales y shard exclusivos. Dependencias compartidas son de solo lectura. Para una base Ghidra/IDA usa un escritor o copias/snapshots independientes. Claims requieren operación atómica en la autoridad compartida; comprobar que algo está libre y escribir después no reserva nada.

Mantén un proceso de build/edición/hook por checkout. Prueba mutaciones, permutaciones y análisis con límites de recursos. Reutiliza resultados de análisis y cachea únicamente por hash del binario, toolchain y configuración. Antes de mover builds para liberar disco, confirma proceso inactivo, rutas y destino; conserva fuentes y experimentos útiles.

## Ciclo por función

1. Leer instrucciones originales y callers/callees relevantes; localizar parámetros, retornos y efectos.
2. Escribir una hipótesis concreta: anchura de un load, lifetime, condición, convención, struct o bloque de control.
3. Generar o corregir el C/IL y compilar con opciones reales. Si no compila, resolver tipos y ABI antes de permutar.
4. Inspeccionar la primera divergencia significativa y comparar tamaños, frame, flujo y relocations. Cambiar una hipótesis por experimento.
5. Usar búsqueda de variantes/permuter solo con un objetivo acotado y diferencias pequeñas; guardar configuración y resultados. El score es diagnóstico.
6. Aplicar reversiblemente; reconstruir módulo y artefacto, verificar, guardar commit pequeño y entregar SHA. Un candidato aislado no puede saltarse esta etapa.

Registra hipótesis descartadas con causa y siguiente experimento. Si vuelves a una función, lee ese registro antes de repetir pruebas. Un checkpoint conserva trabajo útil; no exige reiniciar el worker ni perder contexto cada 30 minutos.

## Integración y revalidación

El integrador recoge rangos de commits y SHA inmutables, comprueba ownership, archivos inesperados y cambios de ABI/tooling. Revisa y aplica secuencialmente. Si el main ya tiene una función aceptada, conserva esa versión y rescata solo cambios distintos que sean pertinentes.

Después de integrar: build afectado, comparador/oráculo, reconstrucción global y smoke test según el modo. Headers, flags, scripts y firmas globales requieren revisar sus consumidores. Una corrección del verificador requiere fixtures que fallen antes y pasen después; no cambies el veredicto para salvar los candidatos.

Ante main concurrente, actualiza, integra normalmente y vuelve a verificar lo afectado. No fuerces el push de main. Avanza el ledger `last_integrated_commit` solo después de publicación confirmada. Usa una referencia de fetch propia del coordinador cuando varios worktrees compartan refs de Git.

Si la ROM/binario final falla, identifica la primera unidad divergente y revierte o conserva ese cambio como borrador. No repares masivamente funciones de otros shards sin identificar la causa. Verifica qué contiene realmente el artefacto: C nuevo, ASM original, librería o stub.

## Funciones gigantes y división entre workers

Mantén un propietario integrador por función. Primero recupera todo el CFG, tablas de salto y destinos internos; un decompilador puede truncar una función o tratar bloques internos como llamadas. Compara llamadas, accesos y caminos como pistas, sin confundirlas con prueba global.

Documenta hitos concretos con evidencia: flujo inicial, C compilable, grupos de offsets auditados, ABI, regiones revisadas y matching íntegro. Mantén tipos/layout activos hasta terminarlos; no uses tamaño del candidato ni porcentaje de líneas parecidas como equivalencia.

Para repartir una función, crea **antes** subclaims atómicos de regiones no solapadas. Cada contrato incluye bloques originales, entradas/salidas, live-ins/live-outs, flags, pila, tipos y aliasing. Los colaboradores entregan candidatos/parches separados; un integrador modifica el cuerpo final y verifica el contexto completo. Una región no gana crédito de función terminada.

No extraigas helpers ni cambies layout para facilitar el reparto en matching si altera el código exigido. Si no existe infraestructura de subclaims, paraleliza lectura, análisis de tipos y experimentos independientes; mantén un único escritor del cuerpo.

## Medición de eficiencia

Por worker/modelo registra wall time UTC, tarea, dificultad, bytes únicos aceptados e integrados, funciones aceptadas, borradores, rechazos, tiempo de revisión, costo y estado de la verificación.

| Medida | Cálculo y límite |
|---|---|
| Funciones por minuto | Aceptadas / minutos; estratificar por dificultad. |
| Minutos por 10 funciones | `10 × minutos / aceptadas`; con cero, informar no estimable. Es extrapolación de esa clase, no compromiso. |
| Bytes por minuto | Bytes únicos aceptados / minutos; evita favorecer solo funciones minúsculas. |
| Eficiencia del equipo | Producción integrada / wall time del equipo; no sumar minutos de procesos paralelos como si fueran duración total. |
| Retrabajo/costo | Tiempo de revisión y correcciones; costo por resultado aceptado cuando sea conocido. |

Ejemplo: A acepta diez funciones de 40 B en cinco minutos: 80 B/min y cinco minutos por diez funciones pequeñas. B acepta una de 900 B en diez minutos: 90 B/min y una extrapolación de cien minutos por diez de esa clase. Ninguno es ganador universal sin tareas comparables. Diez borradores no equivalen a diez aceptadas; su rendimiento aceptado en esa ventana es cero, aunque tengan valor de investigación.

## Progreso, procesos y cierre de competencia

Publica función y byte coverage con denominadores y exclusiones. Mantén datos crudos, datos identificados/decodificados, nombres, propuestas y grafo en contadores separados. Las aristas indirectas no resueltas quedan visibles. En modo funcional, cobertura de pruebas no es porcentaje de programa decompilado.

Cada indicador parcial usa hitos enumerados con evidencia, revisión y fecha. No sumes bytes de bloques solapados ni nombres inferidos como código terminado. Regenera indicadores desde fuente/artefactos verificados después de publicar, y comprueba el resultado remoto.

Para continuar, verifica PID/handle y actividad real; una observación vencida o log silencioso no significa que terminó. Reconsulta el mismo proceso o inspecciona estado antes de reiniciar. Si terminó, conserva commits y handoff antes de asignar otro shard. Libera claims solo tras entrega o abandono explícito, comprobando que siguen perteneciendo al mismo propietario.

Con plazo fijo reserva una ventana final proporcional al costo real de build, revisión y empaquetado. Reduce trabajo nuevo al acercarse el cierre, integra solo cambios verificables y prueba desde un checkout limpio. Entrega manifiesto de hashes, fuente, receta de build, dependencias, evidencia y pendientes. No sobrescribas el último candidato aceptado con uno sin verificar para ganar un número aparente.

El 100% exige auditar todo el alcance acordado, dependencias y artefacto final; no se deduce de terminar la cola conocida. Cuando no hay plazo de cierre, mantén la continuidad y el objetivo completo mediante estado persistente y checkpoints.
