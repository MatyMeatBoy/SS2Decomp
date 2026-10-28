# Contrato de asignación

El coordinador completa esta ficha con identidades y comandos reales antes de enviarla. No envíes una ficha vacía ni inventes herramientas que el proyecto no tiene.

| Campo obligatorio | Contenido |
|---|---|
| Objetivo | Una unidad concreta, modo de aceptación y alcance. |
| Original | Hash, módulo, arquitectura y RVA/rangos/símbolos. |
| Reserva | Shard/subclaim y prueba de propiedad atómica. |
| Aislamiento | Checkout, branch, build, temporales y base de análisis. |
| Contexto mínimo | Instrucciones locales, callers, tipos conocidos y handoff previo. |
| Herramientas | Toolchain/configuración, visor, comparador y oráculo disponibles. |
| Gate | Comandos concretos de módulo, artefacto, pruebas y smoke test exigidos. |
| Presupuesto | Plazo real, frecuencia de checkpoint y recursos. No confundir checkpoint con cancelación. |
| Fuera de alcance | Funciones ajenas, headers compartidos, tooling y servicios sin autorización. |
| Entrega | SHA, evidencia, nombres/propuestas, experimentos descartados y siguiente acción. |

Entrega del worker, en este orden:

1. **Resultado:** aceptado, borrador o bloqueado; criterio demostrado y limitaciones.
2. **Identidad:** funciones/rangos y archivos cambiados, revisión base y SHA final.
3. **Verificación:** comandos, códigos de salida y artefactos; especificar cuándo la versión normal todavía usa original/ASM.
4. **Aprendizajes:** tipos, ABI, roles y nombres con evidencia/confianza; no renombrar globalmente.
5. **Continuación:** candidatos útiles, hipótesis fallidas, próximo experimento, proceso vivo/terminal y claim aún retenido.

El coordinador comprueba el diff y la evidencia antes de aceptar el resultado. Una entrega de investigación también puede ser útil sin producir un match; se registra como tal, sin aumentar el porcentaje de C verificado.
