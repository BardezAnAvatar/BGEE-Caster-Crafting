
There is next to no provided guidance on scroll costs.

What we can observe is for Arcane classes:

| Level | Cost  |
| ----- | ----  |
|   1   |   100 |
|   2   |   200 |
|   3   |   300 |
|   4   |   500 |
|   5   |  1000 |
|   6   |  2000 |
|   7   |  3000 |
|   8   |  5000 |
|   9   | 10000 |

Furthermore, the basic ability to cast spells of the specified level:

| Level | Class Level |
| ----- | ----------- |
|   1   |  1 |
|   2   |  3 |
|   3   |  5 |
|   4   |  7 |
|   5   |  9 |
|   6   | 12 |
|   7   | 14 |
|   8   | 16 |
|   9   | 18 |


Based from this pattern, a level 10 scroll should be 20k.

Existing Priest scrolls in-game:

| Spell                     | Level | Cost |
| ------------------------- | ----- | ---- |
| Neutralize Poison         |   4   |  400 |
| Cure Serious Wounds       |   4   |  400 |
| Mental Domination         |   4   |  400 |
| Restoration               |   4   |  750 |
| Raise Dead                |   5   | 3500 |
| Champion's Strength       |   5   |  500 |
| Flame Strike              |   5   |  500 |
| Cure Critical Wounds      |   5   |  500 |
| Chaotic Commands          |   5   |  500 |
| Free Action               |   4   |  400 |
| Defensive Harmony         |   4   |  400 |
| Protection From Evil 10'  |   4   |  400 |
| Protection From Lightning |   4   |  400 |

Spellcasting Costs:

| Spell                     | Level | Cost |
| ------------------------- | ----- | ---- |
| Cure Light Wounds         |   1   |   25 |
| Dispel Magic              |   3   |  200 |
| Cure Disease              |   3   |  300 |
| Remove Curse              |   3   |  500 |
| Cure Medium Wounds        |   3   |   50 |
| Cure Serious Wounds       |   4   |   75 |
| Neutralize Poison         |   4   |  300 |
| Lesser Restoration        |   4   |  750 |
| Cure Critical Wounds      |   5   |  100 |
| Raise Dead                |   5   | 1000 |
| Heal                      |   6   | 1000 |
| Resurrection              |   7   | 2000 |
| Greater Restoration       |   7   | 2000 |

As such, the costs vary wildly. My estimate table is as follows:
| Level | Cost |
| ----- | ---- |
|   1   |  100 |
|   2   |  200 |
|   3   |  300 |
|   4   |  500 |
|   5   | 1000 |
|   6   | 2000 |
|   7   | 3000 |
| Quest | 5000 |


## Levelled scrolls
OK, so with established costs for the scrolls, now I have to determine the cost of variable-level scrolls having higher caster levels.

There are a bunch of ways I could try to make this work for 2E, but it keeps falling short. I suspect
that the best bet would be: { base scroll level cost } + { { Excess Caster Level } * 50 * Spell level}

### Examples
- Fireball (level 3, base caster level 5) at caster level 10 would be:
base cost: 900
excess caster level = 5
900 + (5 * 50 * 3) = 1650
... seems legit
- Stoneskin (level 4, base caster level 7) at CL 20
Base cost: 500
Excess CL: 13
500 + (13 *50 *4) = 3100
... seems legit
