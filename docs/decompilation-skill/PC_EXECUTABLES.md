# Perfil de ejecutables de PC

Lee este perfil antes de asignar tareas sobre EXE/DLL. La extensión no determina lenguaje, arquitectura ni estrategia. Inspecciona sin ejecutar primero; si necesitas comportamiento dinámico de un ejecutable desconocido, usa un entorno de prueba aislado y reproducible.

## Clasificación y extracción de evidencia

1. Registra hashes y dependencias del paquete completo. Identifica PE/COFF, ELF, Mach-O, ensamblado administrado, bundle o contenedor. Lista máquinas/bitness por módulo, entry points, secciones, importaciones/exportaciones, TLS, relocations, recursos, información de depuración y overlays.
2. Para PE usa RVA para identidad estática; VA depende de la base de carga y file offset no equivale a RVA. Conserva el mapa de conversión por sección. Cuenta rangos únicos: padding, thunks, funciones plegadas y fragmentos hot/cold requieren tratamiento explícito.
3. Busca metadatos CLR y ensamblados acompañantes, `.deps.json`, `.runtimeconfig.json` y señales de apphost/bundle. La ausencia del directorio CLR en el launcher no descarta .NET. Distingue IL, ReadyToRun, código nativo/AOT y componentes mixtos antes de elegir decompilador.
4. Aprovecha símbolos/PDB, exports, RTTI, strings y firmas de runtime. Son evidencia de partida; verifica las asociaciones. No incluyas bibliotecas reconocidas como código propio recuperado por haberles asignado nombres.
5. Registra hipótesis de compilador, versión, opciones, optimización, LTO y runtime con su evidencia. Prueba una función representativa antes de reconstruir el proyecto entero con una toolchain supuesta.

Selecciona herramientas **disponibles** y consulta su ayuda/versiones: `dumpbin` o `llvm-readobj` para estructura; Ghidra/IDA/Binary Ninja para nativo; ILSpy/ilspycmd para IL; WinDbg/x64dbg para observación dinámica. Elige una base de análisis principal y exporta índices reutilizables. No ejecutes tres análisis completos equivalentes por cada worker.

## ABI y reconstrucción nativa

- En x86 determina convención por función: limpieza de pila, argumentos, registros, varargs y `this`. No apliques automáticamente una firma global a todos los callers.
- El ABI Windows x64 habitual usa RCX/RDX/R8/R9 para posiciones de argumentos enteros y XMM para flotantes; contempla shadow space, alineación y registros preservados. Varargs, retornos de agregados y convenciones especiales necesitan tratamiento explícito. No importes supuestos de SysV AMD64.
- Revisa anchura y signo de cada acceso, extensiones, truncamientos, packing, alineación, `this`, vtables, thunks y excepciones. La información de unwind `.pdata/.xdata` aporta pistas; no es por sí sola un catálogo exhaustivo de funciones.
- Reconstruye tipos desde offsets observados y verifica `sizeof/offsetof` con la toolchain objetivo. No conviertas toda una estructura o todos los enteros a 64 bits por tratarse de un EXE x64. Usa tipos de tamaño explícito donde importe el layout.
- Diferencia llamadas directas, virtuales, callbacks, tail calls e indirectas. Una firma errónea puede generar C compilable que corrompa pila, retorno, registros o memoria.

Para matching, conserva orden de instrucciones, pools/tablas, símbolos y relocations con sus addends. Compara además imports, recursos, entry point, excepciones y disposición final cuando formen parte del criterio. Timestamps, debug paths y firmas pueden dificultar identidad del archivo: documenta el criterio permitido **antes** de excluir cualquier región; si se exige hash completo, no lo rebajes a igualdad de `.text`.

## Ruta administrada

Recupera proyectos, ensamblados, metadatos, recursos y referencias; fija framework/runtime y arquitectura. Compila un componente pequeño y contrasta su comportamiento antes de exportar todo como una solución supuestamente terminada.

Comprueba P/Invoke, COM, marshaling, layouts, reflection, generación dinámica, cargas de ensamblados y recursos. Un proyecto que compila puede seguir fallando por nombres buscados mediante reflexión o dependencias nativas. Los nombres originales de locales y los comentarios pueden no existir en el binario; etiqueta nombres inferidos.

Un bundle puede incluir código ajeno al reto. En NativeAOT puede no haber IL recuperable; vuelve a la ruta nativa para esas regiones. No prometas reconstrucción exacta con ILSpy por reconocer un launcher .NET.

## Oráculo funcional y entrega

Captura entradas y salidas observables del original: código de retorno, stdout/stderr, archivos, recursos, errores y efectos de sistema relevantes. Controla semillas, tiempo, locale, encoding, rutas y orden. Añade casos de límites de enteros, entradas vacías/malformadas, tamaño, round trips y fallos de dependencia.

Para GUI registra estado y acciones, no solo una captura de pantalla. Para concurrencia conserva trazas, sincronización y condiciones reproducibles. Para interfaces binarias comprueba además memoria y ABI. Normaliza diferencias del entorno mediante reglas concretas acordadas, sin ocultar diferencias del programa.

Empaqueta fuente, build reproducible, manifiesto de dependencias, pruebas/oráculo y limitaciones. Si la competencia requiere implementación autónoma, un wrapper que ejecuta el original no cumple esa condición.

## Fuentes primarias para consultar cuando haga falta

- [PE/COFF y RVA](https://learn.microsoft.com/en-us/windows/win32/debug/pe-format).
- [Convención y unwind de Windows x64](https://learn.microsoft.com/en-us/cpp/build/x64-calling-convention?view=msvc-170).
- [Despliegue .NET single-file](https://learn.microsoft.com/en-us/dotnet/core/deploying/single-file/overview).

Estas referencias describen formatos y plataformas; no demuestran la versión ni la configuración de un binario particular.
