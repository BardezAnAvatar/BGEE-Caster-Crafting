# Engine RESREF Experiments

## Item codes
Note: I tried to use `§`; I had to save/encode using Windows 1252, and it _nearly worked_; Near Infinity loads, reads everything correctly.
The game console allows me to type/copy the character, but game ~~crashes when I try to use the character~~ crashes if I mistype the CreateItem
command. Trying non-extant files such as `§` or `Ø` the game does not crash, but instead says the files do not exist.
Note further: Using `!` works, so it isn't like the generated item files are busted. I also tried using `!` for BAMs and still used.
Similarly, `Æ` crashes the game. I think anything over ASCII 127 might cause problems.
the `§`. I think while I could explore further, just using `!` is probably the best solution.


I tried again later, and found that _when using `C:CreateItem("")` properly, items will often be created, but will not fully resolve.
For example: I could create an item, but its BAM RESREF for icons would not display with matching names, as if the Extended ASCII tables
are ignored when loading (some?) assets.

## Results
1. characters that work fine:
    - `!`
    - `{`
    - `` ` ``
    - `}`
    - `[`
    - `]`
    - `=`
    - `@`
1. characters that don't display BAMs but work when spawned in CLUA console:
    - `¶`
    - `Š`
    - `ƒ`
    - `§`
1. characters that create busted itms in inventory when spawned in CLUA console:
    - `€`
    - `‡`
