# Scribe Scrolls
This component will allow any caster to write spell scrolls for spells that they know (and exist in the game).
This gives casters a bit more utility, having a repertoire of spells at their fingertips rather than having to memorize
Just The Right Spells™ at any given time. It also will allow scrolls to be used for more than just scribbling into a spellbook
due to making any given spell more available.



## What Can I make Scrolls of?
- Protection scrolls (those ones you buy or loot that are completely green)
- Arcane (wizard/sorcerer/bard) spells
- Priest (cleric/paladin/druid/ranger/shaman) spells



## Who Can Scribe?
Anyone who can cast spells as a class ability should be able to scribe a scroll. Thus:
- Bards
- Mages
- Sorcerers
- Clerics
- Druids
- Shamans
- Paladins
- Rangers



## Risks of Failure
Sometimes when you try to move magic from paper to parchment, errors occur. There is a risk of failure that grows progressively with each more
powerful spell circle, that you will fail and receive a cursed scroll instead:
| Level        |  Failure % |
| ------------ |  --------- |
| Protection   |     20     |
|              |            |
| Arcane  1    |      5     |
| Arcane  2    |     10     |
| Arcane  3    |     15     |
| Arcane  4    |     20     |
| Arcane  5    |     25     |
| Arcane  6    |     30     |
| Arcane  7    |     35     |
| Arcane  8    |     40     |
| Arcane  9    |     45     |
| Arcane 10    |     50     |
|              |            |
| Priest  1    |      5     |
| Priest  2    |     10     |
| Priest  3    |     15     |
| Priest  4    |     20     |
| Priest  5    |     25     |
| Priest  6    |     30     |
| Priest  7    |     35     |
| Priest Quest |     40     |

Failure still wastes your time and money. You win some, you lose some.



## Cost for Scribing Scrolls
The costs associate with scribing a scroll represent the purchase of magical inks, parchment for scrolls, etc. While AD&D 2E source books have a draconian
system of retrieving the blood of magical enemies or quills made from feathers of magical beasts, I don't think Baldur's Gate or Icewind Dale really
support that level of detail. So, crafting these gets abstracted to spending the gold necessary to obtain the materials and time spent researching and
attempting to move _memorized_ spells onto paper.

The cost to scribe any given scroll varies; it is based off of the cost of the in-game `*.itm` file without store markup. Thus, Lesser Restoration
might be cheap, or Protection Scrolls might vary wildly in price.

| Level        | Hours |
| ------------ | ----- |
| Protection   |  144  |
|              |       |
| Arcane  1    |   24  |
| Arcane  2    |   48  |
| Arcane  3    |   72  |
| Arcane  4    |   96  |
| Arcane  5    |  120  |
| Arcane  6    |  144  |
| Arcane  7    |  168  |
| Arcane  8    |  192  |
| Arcane  9    |  216  |
| Arcane 10    |  240  |
|              |       |
| Priest 1     |   24  |
| Priest 2     |   48  |
| Priest 3     |   72  |
| Priest 4     |   96  |
| Priest 5     |  120  |
| Priest 6     |  144  |
| Priest 7     |  168  |
| Priest Quest |  192  |



## Scribing Protection Scrolls
AD&D 2E guidebooks were pretty clear on these: it takes 6 days to scribe a Protection Scroll. There is a chance of failure. But, since the effects of each
of these protection scrolls doesn't necessarily match a spell one-to-one, I use the recipe system for Protection Scrolls:

|               Scroll          |                   Source Spell              |
| ----------------------------- | ------------------------------------------- |
| Protection from Acid          | Protection from Acid Wizard spell           |
| Protection from Acid          | Protection from Energy Wizard spell         |
|                               |                                             |
| Protection from Cold          | Protection from Cold Wizard spell           |
| Protection from Cold          | Fireshield (Blue) Wizard spell              |
| Protection from Cold          | Protection from the Elements Wizard spell   |
| Protection from Cold          | Protection from Energy Wizard spell         |
| Protection from Cold          | Protection from Fire and Cold Priest spell  |
|                               |                                             |
| Protection from Electricity   | Protection from Electricity Wizard spell    |
| Protection from Electricity   | Protection from the Elements Wizard spell   |
| Protection from Electricity   | Protection from Energy Wizard spell         |
| Protection from Electricity   | Protection from Lightning Priest spell      |
|                               |                                             |
| Protection from Fire          | Protection from Fire Wizard spell           |
| Protection from Fire          | Fireshield (Red) Wizard spell               |
| Protection from Fire          | Protection from the Elements Wizard spell   |
| Protection from Fire          | Protection from Energy Wizard spell         |
| Protection from Fire          | Protection from Fire and Cold Priest spell  |
| Protection from Fire          | Protection from Fire Priest spell           |
|                               |                                             |
| Protection from Magic         | Protection From Magic Energy Wizard spell   |
| Protection from Magic         | Protection From Energy Wizard spell         |
| Protection from Magic         | Magic Resistance Priest spell               |
|                               |                                             |
| Protection from Poison        | Neutralize Poison Priest spell              |
|                               |                                             |
| Protection from Undead        | Negative Plane Protection Priest spell      |
| Protection from Undead        | Repulse Undead Priest spell                 |
|                               |                                             |
| Protection from Petrification | Protection from Petrification Wizard spell  |
| Protection from Petrification | Stone to Flesh Wizard spell                 |



## Process
1. Purchase scribing tools from a spell shop.
1. Identify the item
1. Begin dialog with the scribe tools
1. Select the option to scribe scrolls:
   ![Scribe Tools Main Menu](.images/scribe_scroll_main_menu.png)
1. Select the circle of spell to scribe from:
   ![Select Spell Circle](.images/scribe_scroll_circle_selection.png)
1. Select which spell to scribe:
   ![Select Which Spell](.images/scribe_scroll_select_spell.png)
1. Select the scroll level you want to scribe:
   ![Select Which Spell](.images/scribe_scroll-scroll_options.png)
1. Confirm you want to spend time and gold to scribe the scroll:
   ![Spell Copy Confirmation](.images/scribe_scroll-confirmation.png)
1. Watch the small cutscene similar to Cespenar and Cromwell
