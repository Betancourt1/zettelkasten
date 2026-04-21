# Reescritura diaria del zettelkasten

## Objetivo

Reescribir, uno por día, los zettels del blog que nacieron de generación automática y hoy no representan bien la voz de Betancourt.

## Regla de selección

En cada corrida se toma el siguiente archivo en orden alfabético dentro de `zettel/` que no tenga la marca `#rehecho`.

## Flujo por corrida

1. Leer el zettel actual.
2. Leer sus fuentes directas cuando existan (`captures/`, `lit/` u otras referencias enlazadas).
3. Reescribir el texto con una voz más precisa, más seca y más representativa de Betancourt.
4. Mantener el título salvo que haya una razón clara para cambiarlo.
5. Agregar la marca `#rehecho` al archivo fuente en `repos/zettelkasten/zettel/`.
6. Reflejar el cambio en `repos/posts/content/zettelkasten/` y agregar el tag `rehecho` en front matter.
7. Commit y push en ambos repos.
8. Avisar cuál zettel quedó reescrito.

## Sobre la etiqueta

Betancourt pidió usar `#no-AI`, pero si la reescritura la hago yo seguiría siendo una intervención de IA. Marcarla como `#no-AI` sería falso.

Por eso, para esta automatización uso `#rehecho` como marca honesta de que el texto ya pasó por reescritura intencional y dejó de ser parte del lote generado automáticamente.

Si Betancourt reescribe personalmente alguno después, entonces sí puede cambiarse a `#no-AI`.

## Inicio de la tanda actual

- Inicio: 2026-04-21
- Primer zettel rehecho: `abuso-y-privatizacion-del-conflicto.md`
