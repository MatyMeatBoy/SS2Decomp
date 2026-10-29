# Coordinacion de matching: practicas verificadas

Este documento complementa [AGENTS.md](../../AGENTS.md),
[CONTRIBUTING.md](../../CONTRIBUTING.md) y
[MATCH_VERIFICATION.md](MATCH_VERIFICATION.md). No cambia los claims,
los permisos de escritura ni el criterio de aceptacion.

## Medir el resultado correcto

- Informar `all.percent_decompiled` y `all.funcs_decompiled` del reporte,
  con la revision verificada. `all.percent` incluye bibliotecas enlazadas.
- Un draft compilable, un score mejor, el mismo tamano o un replay con mocks
  no son matching. No contar esos avances como bytes C terminados.
- Registrar por shard funciones y bytes matching entregados, tiempo transcurrido,
  drafts pendientes y esfuerzo utilizado. Comparar tareas de dificultad similar;
  no atribuir a un modelo el trabajo heredado de otro ni extrapolar una ETA.

## Mantener escritores activos sin duplicarlos

- Usar un checkout exclusivo por escritor y el numero/modelo/esfuerzo acordados.
  Respetar el propietario incluso si otro agente encuentra una solucion.
- Un PID existente no prueba que el worker siga activo: Windows puede reutilizarlo
  para `agbcc` u otro proceso. Comprobar ejecutable, checkout, archivo de salida
  esperado y hora de creacion. No volcar lineas de comando completas al informe.
- Una observacion fallida o un timeout no prueba que el proceso termino. Reobservar
  el mismo proceso antes de reanudarlo. Un turno terminado con el proceso aun vivo
  tampoco autoriza iniciar otro escritor en ese checkout.
- Antes de reiniciar, comprobar que no queda otro Codex con ese checkout, que los
  hijos de builds ya terminaron y que el handoff explica el estado del arbol.
  Conservar trabajo sin commit; nunca limpiar un checkout para hacerlo arrancable.

## Conservar contexto para experimentar

- Leer las guias requeridas, el ultimo checkpoint y los descartes relevantes.
  Consultar el historial por marcadores; no reimprimirlo entero en cada sesion.
- Acotar la salida habitual de comandos, por ejemplo a 1500 tokens. Guardar builds
  y diffs completos en `build/try/`; mostrar salida de error, codigo de retorno,
  `shiningsoul2_eu.gba: OK` y el rango de ASM necesario para la decision.
- Antes de cada variante escribir: candidato/base y hash, hipotesis, rango ASM
  afectado y cambio esperado. Revisar si ya se descarto la misma hipotesis con esa
  base y esos flags. Una base distinta puede justificar reensayar; documentarlo.
- El handoff actual debe localizar: shard/claim, HEAD, ultimo commit entregado,
  candidato vigente, compiler/flags, resultados reales de gates, logs, descartes
  y siguiente hipotesis concreta. Separar el resumen vigente del historial.
- No reconstruir un draft desde cero ni volver a ejecutar una matriz amplia por
  perder contexto. Preservar candidatos privados y avances de registros/CFG.

## Elegir trabajo por evidencia

- En cada shard, primero amarillos abordables y luego ASM de menor a mayor tamano.
  Mantener el flujo gv -> m2c -> check -> permuter cercano -> apply -> ROM.
- Usar el permuter cuando el diff real sea pequeno, no porque coincida el tamano.
  Limitarlo al shard y a los recursos asignados; no ejecutar lotes globales.
- Tras unos 30 minutos sin match, conservar un draft compilable y pasar a otra
  funcion con hipotesis nuevas, salvo instruccion explicita del usuario para
  mantener esa funcion. Un cambio de contexto no debe reiniciar ese reloj.
  Dejar evidencia de lo agotado para el siguiente propietario.
- Al rotar, conservar primero commits, drafts y candidatos privados necesarios,
  entregar los commits y solo despues liberar el claim. Usar una nueva mirada
  sobre amarillos sin repetir las matrices anteriores.
- Las gigantes mantienen un propietario exclusivo. Un revisor puede leer y
  proponer hipotesis; no compila ni edita el checkout del propietario. No repartir
  regiones hasta disponer de los subclaims y contratos exigidos por AGENTS.md.

## Integrar sin cruces de asignacion

- Medir el intervalo acordado desde la publicacion real, no desde la captura ni
  desde el inicio de un build. Priorizar PRs y entregas verificables ya listas.
- Serializar rotaciones y capturas. Congelar SHA base/HEAD, shard y checkout por
  entrega; comprobar que el manifiesto y la rama siguen siendo los mismos antes
  de aplicar. Una rotacion puede cambiar HEAD a main mientras se toma una captura.
- Rechazar una entrega que arrastre commits de claim, integraciones ajenas o
  reportes generados por el bot: eso indica una base equivocada, no cambios propios.
- Ejecutar gates combinados y hooks normales antes de publicar. Actualizar el
  ultimo SHA entregado solo tras un push exitoso y para la misma asignacion/base.
- Si hay conflicto con una funcion ya matching en main, preservar main. Ante una
  recuperacion, identificar que commits ya se aplicaron o publicaron; no repetir
  una tanda completa sobre una integracion parcial.
- `docs/progress/*` lo publica CI. `publish_progress.py` vuelve a generar desde el
  tip remoto si otra publicacion gana la carrera; no ocultar fallos del push.

## Herramientas y SDK: evidencia antes de ampliar el alcance

- Los cambios de herramientas van en su propia rama/PR, nunca en un shard.
  Reproducir el fallo antes del fix y revisar el caso que el test realmente cubre.
- Un rechazo de GAS no es un rechazo del compilador. Un test que nunca activa una
  optimizacion no prueba esa optimizacion. Comprobar positivos, negativos y flags.
- Para un backend nuevo: fuente fijada y hashes, parches separados, reconstruccion
  independiente, opt-in generico y default-off, invariancia sin activar, fixtures
  reales y candidato estricto antes de incorporarlo a produccion.
- Si el usuario autoriza convertir SDK originalmente escrito en ASM, mantener
  calculos, memoria y condiciones en C. El glue ABI minimo autorizado debe quedar
  explicito; no esconder algoritmos en ASM, blobs o parches del objeto.
- Verificar simbolos activos, relocaciones, datos C reales y el contenedor completo.
  Contar solo el intervalo convertido: verificar SoundMain junto con SoundMainRAM
  no convierte los bytes ASM de SoundMainRAM en C.
- Nombres propuestos requieren direccion canonica, evidencia y revision. El
  coordinador consolida el catalogo en otra rama; no renombrar desde un shard.
