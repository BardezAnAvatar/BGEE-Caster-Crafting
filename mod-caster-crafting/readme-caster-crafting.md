# Caster Crafting

Version: 0.7.2

Author: [Bardez](https://github.com/BardezAnAvatar)

Bugs reports to [repository's GitHub Issues](https://github.com/BardezAnAvatar/BGEE-Caster-Crafting/issues)



## Introduction
This mod is a collection of crafting options for spellbooks, scrolls, potions, and wands.



## Remarks
I am using the `BZ` prefix for my items. It is registered at Black Wyrm Lair: http://www.blackwyrmlair.net/prefixes/



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


## Components

### Scribe tools
This component adds in scribe tools, allowing you to make scrolls, copy spells between spellbooks, or both.

#### Items
New item added by this component:
`BZMSCST`, "Scribe's Tool Kit"
This is a dialog-able item, through which the party member holding the item can copy spells from other party members
and/or scribe scrolls. It is added to varrious stores around magic, libraries, and the ilk.

#### Options
##### Copy Spells
This component will allow any spellbook-based caster to copy spells from another spellbook-based caster;
that would be bards and wizards in 2E. Spells' exclusion flags are honored, so Bards shouldn't get wild mage spells,
and opposition schools should not be copyable to forbidden kits.

##### Scribe Scrolls
This component will allow any caster to write spell scrolls for spells that they know (and exist in the game).
This gives casters a bit more utility, having a repertoire of spells at their fingertips rather than having to memorize
Just The Right Spells™ at any given time. It also will allow scrolls to be used for more than just scribbling into a spellbook
due to making any given spell more available.


## Dedication
This mod is dedicated to my wife, Shannon; my daughters Evelyn, Madelyn, and Elliana. These are my support in my daily life.
I'm up after hours working on this while they all sleep, and _maybe_ doing fewer chores than I otherwise should, so I thank
them for tolerating my hobby.



## Legal
tl;dr: Creative Commons Attribution 4.0 International Public License

See [the license file](https://github.com/BardezAnAvatar/BGEE-Caster-Crafting/blob/main/LICENSE.md).

I _prefer_ that this mod does not get sucked into larger mods, like caster overhauls and the ilk.

tl;dr: do what you will with it, credit me (Bardez) for starting the mod.
