Wands really feel 1:1 with spells like scrolls.

Exceptions:
- wand of fire has charges for 2 abilities
- wand of spell striking

Extent

Wands in 3E are 4th level or lower.

Compare to BG base game:
| Wand              |  Effects           | Matching Spells      | Level | Magnitude    |
| ---------         | ---------          | -------------------- | ----- | --------     |
| Fear              | Fear               | Horror               | 2     | 15 rnd       |
| Magic Missiles    | MM                 | Magic Missile        | 1     | 1 proj.      |
| Paralysis         | Stun               | Hold PErson          | 3     | 1 trn.       |
| Fire              | FB, AS             | FB, AS               | 2, 3  | 6d6          |
| Frost             | AS Cold            | n/a                  | 2-ish | 8d6          |
| Lightning         | bolt               | Lightning Bolt       | 3     | 6d6          |
| Sleep             | sleep              | Sleep                | 1     | 2 trn.       |
| Polymorphing      | poly               | Polymorph Other      | 4     | squirrel     |
| Summon Monster    | SM                 | Monster Summoning II | 4     | 12 HD, 2 trn |
| Heavens           | Fire pillar        | Flamestrike          | 5     | 8d6          |
| Cloudkill         | CC                 | Cloudkill            | 5     |              |
| Spell Striking    | Breach, SS         | Breach, Pierce Magic | 5x 6  |              |
| Cursing           | Blind/deaf/silence | blind / silence      | 1/2/3 | 1 turn       |
| Water Elemental   | Summon Water Elem. | Water Elem IWD       |       |              |

NOTE: I had to go back to oBG1 for wand of monster summoning -- it _is_ exactly like Monster Summoning II, but it appears that the wand
was never updated, while the spell itself has gone through numerous changes in BG2, EEs and later OlvynSpells. Really, I should just
recreate the wand to copy from whatever is installed.


So in BG2, wands go up to 5 or 6 in power. I could cap them at level 6 or lower for EEs, 4 or lower for IWD2.

Or I could say Fuck It and we have wands of Time Stop.


Pricing Wands
| Wand              | Price | Charges |
| ----              | ----- | ------- |
| Fear              | 10000 |
| Magic Missile     |  5000 |
| Paralyzation      | 12500 |
| Fire              | 22000 |
| Frost             | 15000 |
| Lightning         | 20000 |
| Sleep             |  7500 |
| Polymorphing      | 15000 |
| Monster Summoning | 25000 |
| Heavens           | 15000 |
| Cloudkill         |  9000 |
| Spell Striking    |  9000 |
| Cursing           |  5000 |
| Water Eleemental  |  9000 |


In-Game from Thalantyr (18 Charisma)
| Sleep             |  1905 | 20 charges
| Fear              |  2540 | 20 charges


Soooo
| Fear              | 10000 | 20    | 100
| Sleep             |  7500 | 20    | 100

{ Cost(fear) } = 10000 x (20/100) * 150% * 85% ... yeah, lines up.


The formula given in 3.5e, wand price = spell level * caster level * 750.
So the Wand of Fire would cost 3 * 6 * 750 = 13500 before shop markup.


Wands have a price in the ITM file that is for 100 charges (I think), but realistically "100%"


What does not have a matching spell? Frost. Water Elemental if we ignore IWDification.



Part of me wants to do that Arcane/Divine/Nature split for the menu split; those menus can have redundant entries, but
Menu would be:
Wands > Arcane  > level 10 > dragon's Breath
Wands > Divine  > 4 > Spirit Armor
Wands > Natural > 2 > Barkskin


Prices for a fully-charged wand range from 7,500 to 50,000 gold pieces!

> the most rare of the wands being the wand of conjuration, and the most common being the wand of magic detection. There are 16 wands listed on the table in the DUNGEON MASTERS GUIDE. Of these wands, half can be used by any class, the remainder require a magic-user to use (with the wand of fear being the sole exception, also usable by clerics). Oddly enough, the wand of magic missiles, which seems as if it should be usable only by magic-users, is actually usable by any character (so long as they are permitted to use wands at all). Illusionists are more limited in the types of wands they are permitted to use as they are not fully magic-users - they may only use wands of enemy detection, fear, illusion, magic detection, metal & mineral detection, secret door & trap detection, and wonder. Monks are prohibited from using wands of any kind.

So one of the keys here is that some wands are usable by everyone (even fighters).

So quirks of wands:
Menu setup
Who can use which spells

I don't _want_ to have arcane/divine/nature/other split for wand effects; if there's a wand of it, it's usable for all classes like PFS scrolls/wands

Interesting notes: Staves are supposed to be CL 8 (8d6 damage), and wands CL 6 (6d6 damage). Wand of Frost, for example, is more like a staff than
a wand.


One of the things that the DMG and such call out is that wands should be, at least partially, usable by non-magic-user classes. I think that a big
takeaway will thusly be that many wands should be usable by everyone, some by mages, some by priests.

The above would generate another potential categorization approach:

-Wands usable by cleric
-Wands usable by mage
-Wands usable by all

Notable: DMG says wands cost 7500 to 50k gold:

| Level | Cost  |
| ----- | ----- |
|     1 |  7500 |
|    10 | 50000 |

The formula given in 3.5e, wand price = spell level * caster level * 750.
So the Wand of Fire would cost 3 * 6 * 750 = 13500 before shop markup.

Expanding this out, a level 10 wand would be:
price = 10 * 18 * 750 = 135000; _whistle_ nearly 3x the 50k max amount specified by AD&D 2E DMGs

let me backpedal a bit: that's for insanity like Dragon's Breath; what about for something capped at level 7 or 8?

| Level |  Calculation  |  Cost  |
| ----- | ------------- | ------ |
|     1 |  1 × 1  × 750 |    750 |
|     2 |  2 × 3  × 750 |   4500 |
|     3 |  3 × 5  × 750 |  11250 |
|     4 |  4 × 7  × 750 |  21000 |
|     5 |  5 × 9  × 750 |  33750 |
|     6 |  6 × 12 × 750 |  54000 |
|     7 |  7 × 14 × 750 |  73500 |
|     8 |  8 × 16 × 750 |  96000 |
|     9 |  9 × 18 × 750 | 121500 |
|    10 | 10 × 18 × 750 | 135000 |

I'm totally find with level 10 super wands of 50 or 100 charges costing 135,000 -- it's the level 1s that don't fit the data. For example, in BG1, the cheapest wand is Magic Missile for 5000 (2500 less than the stated cost, but when Purchased at 50% markup, it fits perfectly)

So right around level 6 is the "maximum" spell calculation cost, but that's not quite fair, either. BG1's most expensive wand is
the wand of monster summoning at level 4 / 25000 (close to the level 4 cost)

Further price fuckery:

| Wand              | Matching Spells | Level | Price |
| ---------         | --------------- | ----- | ----- |
| Magic Missiles    | Magic Missile   | 1     |  5000 |
| Sleep             | Sleep           | 1     |  7500 |
| Fear              | Horror          | 2     | 10000 |
| Paralysis         | Hold PErson     | 3     | 12500 |
| Frost             | n/a             | 2-ish | 15000 |
| Polymorphing      | Polymorph Other | 4     | 15000 |
| Heavens           | Flamestrike     | 5     | 15000 |
| Lightning         | Lightning Bolt  | 3     | 20000 |
| Fire              | FB, AS          | 2, 3  | 22000 |
| Summon Monster    | SM2, I think    | 4     | 25000 |
| Cloudkill         | Cloudkill       | 5     |  9000 |
| Spell Striking    | Breach, SS      | 5x 6  |  9000 |
| Cursing           | blind / silecne | 1/2/3 |  5000 |
| Water Elemental   | Water Elem IWD  |       |  9000 |




Calculation Crap
https://www.desmos.com/calculator
y = a(x-1)^3 + b(x-1)^2 + c(x-1) + d

To maximize at 33,333 (50k markup)
a = 10
b = 250
c = 0
d = 5000
    or
a = 20
b = 0
c = 1550
d = 5000
To maximize at 135k
a =   50
b=   810
c = 1550
d = 5k


## Colors
DnD beyond colors:
- Abjuration: Blue
- Conjuration: Yellow
- Divination: Gray
- Enchantment: Pink
- Evocation: Red
- Illusion: Purple
- Necromancy: Green
- Transmutation: Orange

Conversely:
https://www.reddit.com/media?url=https%3A%2F%2Fi.redd.it%2F8vhbvvfrn5t61.png
This is gorgeous and I kinda feel like it reflects good color association




## Crafting Dialog
Now that I'm a little bit into the depths of this, I need to think through how we should present crafting.
I want each experience to be a little bit different; Scrolls go by spell level; potions by category and sub.

I think for Wands I wand to go by School.

Conjuration hits the hardest with approx 100 spells.

Since this is absolutely batshit, I think that it doesn't make a ton of sense to put all 98 or 100 or whatever spells into the menu;
I think this will go off of what is memorized, so the menus won't be visually overloaded.

Craft > Wands > Conjuration > Sort by what exactly? Probably Alphabetical wand name. Mix the existing wands into the new wands list.

select a wand, confirm gold, craft!

For failure % ... I kind of want to ignore it. Backfiring wands would be lame, but _very_ on-point.
- Wand that polymorphs you into squirrel
- Wand that blinds you
- Wand that flesh to stones you
- etc.

It's up for consideration, but I kind of don't want to. I'm getting "done" with this mod emotionally and running out of drive.


## Components:
Install Wands options:
- Level 4
- Level 6
- Level 9


## Component idea: fix prices of BG2 wands
| Cloudkill         |  9000 |
| Spell Striking    |  9000 |
| Cursing           |  5000 |
| Water Eleemental  |  9000 |

WTF those are cheap. Fix them.


# Charges
So if I sell a wand of fear (WAND02, basegold of 10000) with 50 charges for 2500, I can buy it back at 100 charges for 12700, which would sell for 5000
10000 × 50% markdown × 100% charge = 5000 for a full wand
10000 × 50% markdown ×  50% charge = 2500 for a 50% wand

- Wands recharge in BG1 to 100 charges
- Wands in BG2 refill to 50 charges, I think
- 3E/PF max charges is 50.


## Dialog
For Crafting Wands I would like to...
Go spell school
Go level

So:
Wands > Abjuration > Level 1
Wands > Evocation >  Level 5


### Costs
Option AD&D 2E Strict: (base cost 7500 -  50000 gold); base cost = 430 × {spell level}² + 7070
Option AD&D 2E Loose:  (base cost 5000 -  60000 gold); base cost = 500 × ({spell level}² + {spell level} + 10)
Option D&D 3.X Pricing (base cost  750 - 135000 gold); base cost = {spell level} × {min caster level} × 750

strict: y = 432x² - 32x + 7100  (7500 to 49980)
loose:  y = 500(x² + x + 10)    (6000 to 60000)
