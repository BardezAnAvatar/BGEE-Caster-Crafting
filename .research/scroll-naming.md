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

Thus
| Tradition  | Level | Code |
| ---------- | ----- | ---- |
| Protection |   0   |  0   |
| Arcane     |   1   |  1   |
| Arcane     |   2   |  2   |
| Arcane     |   3   |  3   |
| Arcane     |   4   |  4   |
| Arcane     |   5   |  5   |
| Arcane     |   6   |  6   |
| Arcane     |   7   |  7   |
| Arcane     |   8   |  8   |
| Arcane     |   9   |  9   |
| Arcane     |   10  |  A   |
| Divine     |   1   |  B   |
| Divine     |   2   |  C   |
| Divine     |   3   |  D   |
| Divine     |   4   |  E   |
| Divine     |   5   |  F   |
| Divine     |   6   |  G   |
| Divine     |   7   |  H   |
| Divine     |   Q   |  I   |
| Ranger     |   1   |  J   |
| Ranger     |   2   |  K   |
| Ranger     |   3   |  L   |
| Ranger     |   4   |  M   |
| Ranger     |   5   |  N   |
| Ranger     |   6   |  O   |
| Ranger     |   7   |  P   |
| Ranger     |   Q   |  Q   |
| Class      |   1   |  R   |
| Class      |   2   |  S   |
| Class      |   3   |  T   |
| Class      |   4   |  U   |
| Class      |   5   |  V   |
| Class      |   6   |  W   |
| Class      |   7   |  X   |
| Class      |   8   |  Y   |
| Class      |   9   |  Z   |
| Innate     |   1   |  !   |
| Innate     |   2   |  #   |
| Innate     |   3   |  =   |
| Innate     |   4   |  (   |
| Innate     |   5   |  )   |
| Innate     |   6   |  {   |
| Innate     |   7   |  }   |
| Innate     |   8   |  [   |
| Innate     |   9   |  ]   |

**Switch statement seems to win out.**

The result is:
| Prefix | item code | tradition/level | spell # | caster lvl |
|  `BZ`  | `!`       | `A`             | `AE`    | `35`       |
Gross, but fits into 8 chars
