# Lecciones de una tanda paralela (2026-10-28)

Prueba piloto productiva: dos workers por modelo, todos con esfuerzo `low`,
30 minutos de ventana común después de preparar y verificar sus checkouts.
Cada worker tuvo un shard exclusivo. Solo cuentan conversiones cuya ROM completa
pasó `make compare` y cuyos borradores pasaron `make nonmatching` en una
verificación independiente posterior.

| Modelo | Funciones por worker | Total | Bytes | Tokens no cacheados + salida |
|---|---|---:|---:|---:|
| GPT-6 Astra | 52 + 33 | 85 | 8360 | 341477 |
| GPT-6.1 Sol | 46 + 26 | 72 | 6148 | 370832 |
| GPT-6 Luna | 2 + 2 | 4 | 208 | 695645 |

Los shards tenían distinta dificultad y cantidad de borradores. Estos resultados
describen esta tanda; no prueban superioridad general ni equivalen a dinero
facturado. Un Sol recibió un error inicial de capacidad y se reintentó sin cambiar
el modelo. Los contadores proceden de los eventos acumulados de las sesiones;
la columna excluye entrada cacheada y cuenta la salida una sola vez.

De las 161 funciones de la prueba, 21 ya habían llegado a principal por trabajo
concurrente. Dos matches posteriores del Sol elevaron el avance neto integrado a
142 funciones. La publicación `419dcbc` pasó ROM, borradores y CI. El progreso
global pasó de 6,04 % a 7,86 %; el juego, de 4,98 % a 6,82 % (por bytes).

## Coordinar sin perder trabajo

- Un checkout y un shard por worker; reservar con `claim.py`. No tocar el checkout
  principal de otra persona aunque haya sido el directorio inicial del chat.
- Antes de escoger un shard en un checkout antiguo, consultar el estado de
  principal. Un shard terminado en otra rama puede seguir pareciendo pendiente
  localmente. No forzar una rama que otro checkout ya utiliza.
- Empezar con pocos workers y medir la memoria libre durante las compilaciones,
  no solo en reposo. En esta máquina, seis workers dejaron menos de 500 MiB libres;
  no se abrió la prueba opcional de cuatro Luna. La continuación elegida fue
  tres Sol `low`, hasta dos jobs de build y uno de permuter por worker.
- Cada entrega debe incluir C, borrados de ASM y todas las declaraciones
  necesarias en commits verificables. Añadir declaraciones al final del header,
  sin cambiar las existentes. No depender de cambios sin commit del worker.
- Registrar el SHA de cada entrega antes de que el worker siga. Integrar esos
  SHAs inmutables; no mezclar una compilación con archivos que el worker edita
  simultáneamente.
- Si principal avanzó, conservar sus matches y aplicar solo las conversiones
  pendientes. No contar coincidencias duplicadas como avance neto.
- Probar el conjunto integrado: dos workers pueden pasar por separado y entrar
  en conflicto al combinar prototipos o declaraciones locales.
- No dejar que nuevas entregas retrasen indefinidamente un corte ya verificado:
  publicar el corte y recoger lo posterior en el siguiente (cada 30 minutos en
  esta continuación).
- Generar métricas locales con `progress.py --out build/progress`. Publicar el
  código y esperar el job de progreso de CI; no confirmar `docs/progress/` a mano.
- Liberar los shards propios inactivos y archivar sus checkouts solo después de
  asegurar la integración, conservando un snapshot recuperable.

## Mantener el límite de `yellow.py`

Un módulo puede contener funciones de varios shards. Limitar los módulos no
limita las funciones. `yellow.py --shard N` o `--only F1,F2` debe mantener la misma
selección al puntuar, desenvolver, permutar y aplicar.

`nmscore.py --only F1,F2 --unwrap MODULE` filtra antes de compilar y desenvolver;
una selección vacía o desconocida no amplía el trabajo a todas las funciones.
La aplicación recibe solo los archivos ganadores de las funciones seleccionadas,
sin reutilizar ganadores de otros shards que hayan quedado en `build/yellow`.
La limpieza posterior de wrappers también queda limitada a la función aplicada,
incluido el caso en que varias funciones comparten módulo.

Pruebas sin ROM ni compilador:

```sh
python3 -m unittest discover -s tools/tests -p 'test_*.py' -v
```

Las pruebas simulan dos shards dentro de un módulo y un ganador cacheado ajeno.
El build real sigue siendo necesario para validar cualquier conversión del juego.
