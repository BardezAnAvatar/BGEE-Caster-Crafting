# Caster Crafting

Version: 0.7.3

Author: [Bardez](https://github.com/BardezAnAvatar)

Send Bug Reports and Suggestions to [the Caster Crafting GitHub Repository's Issues page](https://github.com/BardezAnAvatar/BGEE-Caster-Crafting/issues)!

## Introduction
This mod is a collection of crafting options for spellbooks, scrolls, potions, and wands.

## Supported Games
Currently BG1:EE, BG2:EE, and IWD:EE.  I am interested in exploring PST:EE and IWD2, but those are future interests and notably different engines.

## Integration
This mod integrates with [IWDification](https://github.com/Gibberlings3/iwdification) and [OlvynSpells](https://forums.beamdog.com/discussion/76732/v2-2-0-olvynspells-151-new-spells-for-bg-ee-bg2-ee-iwd-ee-and-eet/p1).  Given enough interest, I am open to supporting other mods that or change spells.

## Components

### [Missing Spell Scrolls](./documentation/missing_scrolls.md)
This component adds in scrolls that otherwise do not exist in the base game and supported mods. Typically this is Wild Magic and most Priest spells.
In BG1:EE, there are some spells that were included back from BG2 but lack scrolls for them. This component also generates scrolls for level 10 and
Quest-level spells. These new scrolls get registered in with existing scrolls for crafting. Options are given to generate missing Priest spells,
missing Wizard spells, or both. This component does not add any such items to in-game stores.

### [Leveled Scrolls: Craft Scrolls at Higher Caster Levels](./documentation/leveled_scrolls.md)
What it says on the tin. This component generates scrolls from existing spells that are leveled (have slightly different effects based off of level),
up to level 50. So Fireball up to level 12, Magic Missile levels 3, 5, 7, and 9, for example.  These new scrolls get registered in with existing scrolls
for crafting. This component does not add any such items to in-game stores.

When a character crafts an item that casts a spell from this mod, that character's class level must be at least as high as the caster level of the item to be made.  For example, making a caster level 10 scroll of *fireball* requires *fireball* as a spell known and at least 10 levels in that class.

The minimum caster level for any scroll is its normal minimum caster level to cast its associated spell, such as caster level 3 for level 2 spells or caster level 12 for level 6 spells.  The absolute highest caster level possible is 50.

### Caster Crafting: Scribing Tools
This component adds in scribe tools, allowing you to make scrolls, copy spells between spellbooks, or both.

#### Items
New item added by this component:
`BZMSCST`, "Scribe's Tool Kit"
This is a dialog-able item, through which the party member holding the item can copy spells from other party members
and/or scribe scrolls.  It is added to various magic stores, libraries, and the like.

#### Options
##### [Copy Spells](./documentation/copy_spells.md)
This component will allow any spellbook-based caster to copy spells from another spellbook-based caster;
that would be bards and wizards in 2E.  Spells' exclusion flags are honored, so Bards shouldn't get wild mage spells,
and opposition schools should not be copyable to forbidden kits.

Opposition schools are honored even if you use a mod that changes them, such as [Tome & Blood](https://github.com/subtledoctor/TomeAndBlood/).
Note that these mods should be installed *before* Caster Crafting for best results!

##### [Scribe Scrolls](./documentation/scribe_scrolls.md)
This component will allow any caster to create spell scrolls for spells that they know and that exist in the game.
This gives casters a bit more utility, having a repertoire of spells at their fingertips rather than having to prepare or know
Just The Right Spells™ at any given time.  It also will allow scrolls to be used for more than just scribbling into a spellbook
due to making any given spell more available.

### [Potions of Existing Spells](./documentation/new_potions.md)
This component will be similar to `Missing Spell Scrolls`, in that it will generate _potions_ that copy the effects of existing spells.
There are _many_ new potions for crafting.  This component does not add any such items to in-game stores.

### Alchemy Kit
New item added by this component:
`BZMSCAK`, "Alchemy Kit"
This is a dialog-able item, through which the party member holding the item can brew potions from memorized spells. It is added to varrious
stores around magic, libraries, and the ilk.

#### Options
##### [Brew Potion](./documentation/brew_potions.md)
This component will allow any class-based caster to brew the magic they memorize into potions; this component is less of a 1:1
match of spell to scroll, and more recipe-based, allowing more powerful spells of similar effects to yield a larger number of potions.  For example,
`Cure Light Wounds` would generate a single potion of healing; `Heal` would yield several.

## Remarks
I am using the `BZ` prefix for my items.  It is registered at [Black Wyrm Lair](http://www.blackwyrmlair.net/prefixes/).

## Change Log
| Item Name                                                   | Version |
| ----------------------------------------------------------- | ------- |
| Initial; copy spells from party members' spellbooks         |  0.1.0  |
| Generate ITMs for missing spell scrolls                     |  0.2.0  |
| Creation of spell scrolls                                   |  0.3.0  |
| Several fixes to behavior regression                        |  0.3.1  |
| Ran installation over BG1:EE, BG2:EE and IWD:EE; fixes      |  0.3.2  |
| Creation of base game potions                               |  0.4.0  |
| Creation of "missing" potions derived from spells           |  0.5.0  |
| Correcting the registry/detection of IWD-ification assets   |  0.6.0  |
| Expanding potion brewing into BG2:EE and IWD:EE             |  0.6.1  |
| Bugfix: Gold was not checked before crafting scrolls        |  0.6.2  |
| Compatibility: check 2DA for minimum class level for spells |  0.6.3  |
| Introducing leveled scrolls component                       |  0.7.0  |
| Making leveled scrolls component fully craftable            |  0.7.1  |
| Expanding craftable leveled scrolls to BG2, IWD             |  0.7.2  |
| Splitting out shared BAMs into Arcane and Priest variants   |  0.7.3  |

## Dedication
This mod is dedicated to my wife, Shannon; my daughters Evelyn, Madelyn, and Elliana. These are my support in my daily life.
I'm up after hours working on this while they all sleep, and _maybe_ doing fewer chores than I otherwise should, so I thank
them for tolerating my hobby.

## Legal
tl;dr: Creative Commons Attribution-NonCommercial 4.0 International Public License

See [the license file](https://github.com/BardezAnAvatar/BGEE-Caster-Crafting/blob/main/LICENSE.md).

I _prefer_ that this mod does not get sucked into larger mods, like caster overhauls and the like. 

tl;dr: Do what you will with it, credit me (Bardez) for starting the mod.  If you have any bugs or suggestions about
this mod, post them on [the Caster Crafting GitHub Repository's Issues page](https://github.com/BardezAnAvatar/BGEE-Caster-Crafting/issues)!

## Support
Have a mod integration that's broken?  Feel free to [open an issue on GitHub](https://github.com/BardezAnAvatar/BGEE-Caster-Crafting/issues).
