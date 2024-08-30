<#
.SYNOPSIS
    This script will parse spell descriptions dumped by WeiDU and emit JSON from that.
.DESCRIPTION
    This script will read a specified directory containing dumped spell descriptions from WeiDU, and parse them into components that can be used for wands, staves, and potions.
.INPUTS
    The script expects a directory to exist where spell descriptions in the current installation were dumped to
.OUTPUTS
    The script will emit a JSON file containing parsed components from the spell
.PARAMETER DirInput
    The path to the directory containing all of the spell description text dumps
.PARAMETER DirOutput
    The path to the directory where final output should reside
.EXAMPLE
    C:\Work\BAM>'.\parse_spell_descriptions.ps1'
    >>> -DirInput  'C:\BGEE\weudi_external\mod-caster-crafting\spl_desc'
    >>> -DirOutput 'C:\BGEE\weudi_external\mod-caster-crafting\spl_desc_json'
.NOTES
    Author: Bardez
    Date:   August 30, 2024
#>

param(
    [Parameter(Mandatory)]
    [string]$DirInput,

    [Parameter(Mandatory)]
    [string]$DirOutput
)


function ParseSpellDescription {
    param (
        [Parameter(Mandatory)]
        [string]$SpellDescription
    )
    $spellRevisions = $false

    #Parse the JSON based on things. Maybe add a parameter?
    $lines = $SpellDescription -split "`n"

    #First line should always be the Spell Name
    $spellName = $lines[0].Trim()

    #branch behavior off of next line
    if ($lines[1].Trim().Substring(0, 1) -eq '(') {
        #Base game spell description
        $school = $lines[1].Trim().Replace('(', "").Replace(")", "").Trim()
        $level = $lines[3].Trim().Replace("Level:", "").Trim()
        $lineNext = 4
    }
    else {
        #Spell Revisions
        $spellRevisions = $true
        $school = ($lines[2].Trim() -replace 'School:', "").Trim()
        $level = ($lines[1].Trim() -replace "Level:", "").Trim()
        $lineNext = 3
    }

    while ($lines[$lineNext].Trim() -ne "") {
        #while we don't read a blank line
        $current = $lines[$lineNext].Trim()

        #Debug:
        #Write-Host "Current Line: $($current)"

        switch ($current) {
            { $current.StartsWith("Sphere") }           { $sphere = $current.Replace('Sphere:', "").Trim() }
            { $current.StartsWith("Range") }            { $range = $current.Replace('Range:', "").Trim() }
            { $current.StartsWith("Duration") }         { $duration = $current.Replace('Duration:', "").Trim() }
            { $current.StartsWith("Casting Time") }     { $casting_time = $current.Replace('Casting Time:', "").Trim() }
            { $current.StartsWith("Area of Effect") }   { $aoe = $current.Replace('Area of Effect:', "").Trim() }
            { $current.StartsWith("Saving Throw") }     { $saving_throw = $current.Replace('Saving Throw:', "").Trim() }
            Default {}
        }
        $lineNext++
    }

    #Now I have the description. I think.
    $lineNext++ #skip the empty line

    #Read to end
    $upperBound = $lines.GetUpperBound(0)
    $description = $lines[$lineNext..$upperBound] -join "`n"

    Write-Host "Spell Revisions?    $($spellRevisions)"
    Write-Host "Name:               $($spellName)"
    Write-Host "School:             $($school)"
    Write-Host "Level:              $($level)"
    Write-Host "Sphere:             $($sphere)"
    Write-Host "Range:              $($range)"
    Write-Host "Duration:           $($duration)"
    Write-Host "Casting Time:       $($casting_time)"
    Write-Host "Area of Effect:     $($aoe)"
    Write-Host "Saving Throw:       $($saving_throw)"
    Write-Host "Description:        $($description)"

}


function Main {
    $start = Get-Date

    Get-Item $DirInput | ForEach-Object {
        # Print / log the file name
        Write-Host "Found file: $($_)"

        # Read its contents
        $fileContents = Get-Content -Path $_ -Raw

        ParseSpellDescription $fileContents
    }

    $end = Get-Date

    Write-Host "Process duration: $($end - $start)"
}

## Testing Olvyn BGEE
ParseSpellDescription @"
Healing Curse
(Alteration)

Level: 3
Sphere: Healing
Range: Visual range of the caster
Duration: 5 rounds
Casting Time: 3
Area of Effect: 1 creature
Saving Throw: Special

Healing Curse causes a creature's attacks to heal rather than harm. If the recipient is an ally, there is no Saving Throw necessary; otherwise, the recipient may make a Save vs. Polymorph at -2 to avoid the effects. While affected by Healing Curse, any damage the creature would deal through attacks, spells or abilities is negated, and the creature that would have been damaged is instead healed by the amount of damage they would have taken.
"@


## Testing IWD
ParseSpellDescription @"
Chant
(Conjuration/Summoning)

Level: 2
Sphere: Combat
Range: Visual range of the caster
Duration: 1 turn
Casting Time: 9
Area of Effect: 60-ft. radius
Saving Throw: None

By means of the Chant spell, the priest brings special favor upon <PRO_HIMHER>self and <PRO_HISHER> party and causes harm to <PRO_HISHER> enemies. When the Chant spell is completed, all the priest's allies within the area of effect gain a +1 bonus to attack rolls, minimum damage rolls, and Saving Throws. Furthermore, damage dice for all effects outside a weapon's base damage is reduced by 1. For example, a 6d6 fireball will do 6d5 damage, and a flaming long sword that deals 1d8+2 slashing plus 1d3 fire damage will deal 1d8+2 slashing plus 1d2 fire damage instead. The priest's enemies suffer from the opposite effects.

Multiple chants are not cumulative. This spell requires a moderate amount of concentration by the caster, so the priest cannot cast any spells for the chant's duration, and <PRO_HISHER> movement is slowed by half.
"@



## Testing Spell Revisions
ParseSpellDescription @"
Charm Person
Level: 1
School: Enchantment
Range: Long
Duration: 5 rounds
Casting Time: 1
Area of Effect: 1 person
Saving Throw: Spell negates

Charm Person affects any single person it is cast upon. The term person includes any bipedal human, demihuman, or humanoid of man-size or smaller, such as dwarves, elves, gnolls, gnomes, half-elves, halflings, half-orcs, hobgoblins, humans, kobolds, and others. Thus, a 10th-level fighter could be charmed, but an ogre could not. If the recipient fails his saving throw vs. spell at +2 bonus, he regards the caster as a trusted friend and ally to be heeded and protected. The caster may give him orders, and the charmed creature will carry them out as quickly as possible.

If the caster harms, or attempts to harm, the charmed creature by some overt action, or if a dispel magic spell is successfully cast upon the charmed creature, the charm spell is broken. If two or more charm effects simultaneously affect a creature, the most recent charm takes precedence.
"@
