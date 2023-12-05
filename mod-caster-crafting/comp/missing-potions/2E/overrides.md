Several potions do not work "out of the box" as I would expect:

- [X] Bless: affects party
- [X] Chant: affects party
- [X] Remove Fear: affects party
- [X] Mirror Image targeting someone else: affect caster, not target
- [X] Strength of one: affects party
- [X] Ghost armor oil: affects caster, not target
- [X] Oil of fireshield (both blue/red): affect caster, not target
- [X] Oil of minor globe of invulnerability: affects caster, not target
- [X] Oil of phantom blade: affects caster, not target
- [X] Oil of Minor Spell Turning: affects caster, not target
- [X] Wondrous Recall has no effect at all? just animation? on a bard
- [X] Oil of globe of invulnerability: affects caster, not target
- [] Nature's Beauty: has no effect on target or caster

Fixes:
    - Remove Projectile:
        - Bless
        - Chant
        - Remove Fear
        - Strength of One
    - Re-set Effect Targets:
        - Mirror Image
        - Ghost Armor
        - Fireshield (Blue)
        - Fireshield (Red)
        - Minor Globe of Invulnerability
        - Globe of Invulnerability
        - Phantom Blade
        - Minor Spell Turning
    - Restore Wizard Spells
        - Wondrous Recall (arcane)

Results:
    - [X] Entangle does nothing
        - This only affects enemies with whatever mod I added in, so I was expecting other results. Working as intended after spawining in a ton of Bandits to test against.
    - [X] Wondrous Recall has no effect at all?
        - No, it only affects priest spells. This is irritating to me, since the spell desc. does not mention priest spells at all, and it appears like it should work for cleric/mage multis, but it obviously won't.
        - I think I will 'fix' by making it two different potions.
