# Reescritura diaria del zettelkasten

## Objetivo

Recuperar, uno por día, los zettels del blog que nacieron de generación automática y hoy no representan bien la voz de Betancourt.

## Regla de selección

En cada corrida se toma el siguiente archivo en orden alfabético dentro de `zettel/` que no tenga la marca `#no-AI`.

## Flujo por corrida

1. Elegir el siguiente zettel pendiente.
2. Leer el zettel actual.
3. Leer sus fuentes directas cuando existan (`captures/`, `lit/` u otras referencias enlazadas).
4. Compartirle a Betancourt:
   - el título,
   - el texto actual,
   - y las referencias mínimas necesarias para reescribirlo con sus propias palabras.
5. No publicar nada todavía.
6. Esperar a que Betancourt mande su versión.
7. Reemplazar el contenido en `repos/zettelkasten/zettel/` con esa versión.
8. Agregar la marca `#no-AI` al archivo fuente.
9. Reflejar el cambio en `repos/posts/content/zettelkasten/` y agregar el tag `no-AI` en front matter.
10. Commit y push en ambos repos.

## Regla de honestidad

La etiqueta `#no-AI` solo se usa cuando el texto final fue escrito por Betancourt. No se usa para reescrituras hechas por el agente.

## Estado

- Inicio de esta modalidad: 2026-04-21
- El proceso anterior con `#rehecho` queda descartado.
