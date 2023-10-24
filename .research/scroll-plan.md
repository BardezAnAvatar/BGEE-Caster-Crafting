So things I will need:


## Option Groups
1. Crafting approach
    - 2e Pnp
    - 2e modified
    - 3e Pnp
    - Pathfinder 1E
1. Crafting mechanism
    1. Item
    1. HLA


## Component: Baseline data
1. Get scroll list for base game
1. Create a scroll registry manually for the base game
1. Install this to the metadata dir
1. Get spell list data
    - Each spell that is valid in the game, and what tradition it lies with
    - I am currently leaning towards a maintained registry-based on installed mods.
        - Why? With Olwyn's mod, spells are not in the SP__XYYY format; spells are either not added to
        level up screens (arcane) or they are given by way of kit abilities (druid/ranger), which also
        get mixed up with innate abilities. When this becomes evaluated, there is no _clean_ or _good_
        method to differentiate spells, innates, etc.
        - Grammarsalad attempted to resolve the problem with reading _all spells_ and filtering them out.
        While it was a valiant effort, it relied on two opcodes to identify spells, target and point
        target; any self-buffs are missed. Further, these self-buffs rarely have all the same opcodes.
            - I suppose we could look for opcode for displaying a portrait icon...
            - The method also doesn't account for hidden spells (which some are granted back via kit
            2DAs, such as shaman spells, ranger spells in Olvyn, etc.), only somewhat for duplicates,
            and so on.
        - The impact of this is that I would have components to install based on detected mods:
        a component for IWD-ification, one for Olvyn, etc. It would be a manual registry.


## Component: Missing Scrolls
1. Get the spell list for each tradition (Arcane/Primal/Divine)
    - Presumably from SPELLS.IDS
    - Then through reading the spells in-game and applying filters
        - De-dupe, for example
1. Get scroll list for base game
1. Find spells that do not have matching scrolls
1. Generate the mismatch.
1. Attempt to create a registration based off of known mods to make it cleaner/skip less

Note: Spells files have different exclusion flags depending on the type of spell. Priest spells flip on Divine (Cleric/Paladin)
and Natural (Druid/Shaman/Ranger). There are ways of "restricting" spells to certain classes, by hiding spells from the spell list.
Olvyn's Mod also has some unique Ranger spells; they are granted by the kit lists to only the Ranger... BUT scanning the kits
for added spells is something that would be a _massive_ PITA. You'd have to filter out innate abilities and non-spells, which cannot
be readily identified due to all sorts of mods, etc. It could be done, ingesting the valid spells list, and then reading
_every kit_ to see if any of them get added back in... but I'm lazy, it seems mostly pointless, and I don't want to.

Further neat little note: Shamans have unique spells. Shamans do not have an exclusion flag for items,
so any item (scroll) that is supposed to be usable only by Shamans would inherently be usable by druids.

So! What I can do: Give ranger spells to druids/shamans (so what?), or write a ton of code to register spells,
de-register them as available via reading HIDESPEL.2DA, then re-registering them _by kit_ to find which spells are viable per what class
... and even then, exclusion flags won't fit everything 100% because new kits and Shaman cannot be excluded.

Further Fuckery: Perhaps in using Opcode 319, Item usability, I _could_ enforce who can use a specific scroll, specific kits, etc.
The real question is: do I _want_ to do that? In order to properly recreate this usability on the item properly, I would have to:
1. Read all of the spells that are registered as valid player spells
1. Read their exclusion flag(s)
1. Read HIDESPEL.2DA and remove spells from the registry
1. Override usability flags from the spl file with HIDESPL (_except in cases where I don't want to_,
(i.e.: `Malavon's Corrosive Fog`)
1. Read every kit file and scan for spells added in the kit file; check if they are in the spell registry; and add an appropriate
usability flag for using the OpCode.

That seems like a ton of work that I do not care to do.

## Component: Caster Level Scrolls -- this is a separate mod, IMO.
1. Take the spell list, and for each spell that appears to be a valid class spell.
1. Find its duration headers, create scroll instances for each valid caster level
1. Examine scroll/spell registry for a scroll with appropriate match
1. Create a scroll with appropriate data if none matches, off of the base scroll.


## Component: Scroll Crafting
1. Iterate through the scrolls -> spells registry.
1. Sort into traditions
1. FOREACH tradition:
    1. Create a dialog that will house the crafting
    1. Spell level -> Spell name -> Desired caster level
    1. Compile and save dialog


## Component: Crafting mechanism
Compare options and as selected, install proper sub-component


## Major Component: Spell Sharing
Would have an item, say scribing tools, which would allow a dialog. It would allow responses
for each party member if a mage to share spells.
Response tree would be party member -> spell circle -> spell name -> learn spell
