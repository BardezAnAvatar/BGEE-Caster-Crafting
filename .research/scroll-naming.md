# Scroll naming conventions

The data that is needed to name a scroll is as follows:

modder prefix + scroll prefix + scroll type + spell number + caster level

At its rawest form:
Modder Prefix:          `BZ`
Scroll Prefix:          `SCL`
Spell type:             `WI`
Level and spell RESREF: `L##` + `##`

This is 12 characters necessary based on the uncompressed data.

With Olvyn in the mix, `SP` and `ME` become potentially relevant.

Practically, Olvyn is 50+ so there _should_ be no collision.

We could shorten the scroll prefix to a single character, saving 2 characters: `BZ!WIL##CL` -- this yields 10 characters in length.
§ could be fun to experiment with as valid character in engine/filename

I can further reduce `WI` to a single character. The tradition of scrolls should be fairly straightforward:
- Arcane
- Divine
- Protection
- Nature
Thus, A/D/P/N for the tradition of the spell.

This would then reduce the number of characters in the RESREF down to 9: `BZ!AL##CL`

To force a RESREF down to 8, we could maybe combine both the tradition and the spell level into a single character?
- Arcane = 0
- Divine = 1
- Protection = 2
- Nature = 3
This could be combined in an alphanumeric sense: 0b1111-11 --I need 6 bits to encode, yielding 64 characters possible
0-9a-z is 36. Further posible characters:
!#^_-+=,.[]( )&$@`~;'"{}|% (26 characters) -- yields 62 characters :-/

4 bits for level (10 max)
3 bits for type (5, maybe expand to monk, paladin, ranger, etc)
This leaves us in a bind since file names are not case sensitive and we cannot use base64 or similar.

OTOH, I could use this as a switch statement:
protection = 0
arcane = 1-10
divine = 11-17
nature = 18-24

**Switch statement seems to win out.**

The result is:
| Prefix | item code | tradition/level | spell # | caster lvl |
|  `BZ`  | `!`       | `A`             | `AE`    | `35`       |
Gross, but fits into 8 chars
