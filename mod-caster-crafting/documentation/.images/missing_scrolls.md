# Missing Scrolls
This component adds in scrolls that otherwise do not exist in the base game and supported mods. Typically this is Wild Magic and most Priest spells.
In BG1:EE, there are some spells that were included back from BG2 but lack scrolls for them. This component also generates scrolls for level 10 and
Quest-level spells. These new scrolls get registered in with existing scrolls for crafting. Options are given to generate missing Priest spells,
missing Wizard spells, or both. This component does not add any such items to in-game stores.



## What's the Catch?
No catch. Well, the `*.itm` codes are dynamic, so if you try to CLUA them in, you're going to be slightly annoyed, maybe?
Anyway, these items are not sold in stores (yet?) and can only be crafted if you opt to install that component option.



## Costs
Since there is no real hard and authoritative guide to the cost of scrolls by spell level, I had to guess. Below is the table of costs for each spell
circle and tradition of magic:

| Level        |  Gold |
| ------------ |  ---- |
| Arcane  1    |   100 |
| Arcane  2    |   200 |
| Arcane  3    |   300 |
| Arcane  4    |   500 |
| Arcane  5    |  1000 |
| Arcane  6    |  2000 |
| Arcane  7    |  3000 |
| Arcane  8    |  4000 |
| Arcane  9    |  5000 |
| Arcane 10    | 20000 |
| ------------ |  ---- |
| Priest 1     |   100 |
| Priest 2     |   200 |
| Priest 3     |   300 |
| Priest 4     |   500 |
| Priest 5     |  1000 |
| Priest 6     |  2000 |
| Priest 7     |  3000 |
| Priest Quest |  5000 |
