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


## Component: Missing Scrolls
1. Get the spell list for each tradition (Arcane/Primal/Divine)
    - Presumably from SPELLS.IDS
    - Then through reading the spells in-game and applying filters
        - De-dupe, for example
1. Get scroll list for base game
1. Find spells that do not have matching scrolls
1. Generate the mismatch.
1. Attempt to create a registration based off of known mods to make it cleaner/skip less


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