# Tactical Angband

<p align="center">
  <img src="screenshots/game.png" width="425"/>
</p>

## What??

Tactical Angband is a variant of the classic roguelike game Angband.
Tactical Angband reduces the grind and increases the tactical depth,
while maintaining the feel of Angband.

The following is a (possibly incomplete) list of changes made to Tactical
Angband relative to (Vanilla) Angband 4.2.4 (4.2.4-317-gabbaf5268).

## Dungeon

The dungeon is now 50 levels deep rather than 100, and each level is one-fourth
the area of a classic Angband level.

Although the dungeon has half as many levels as Vanilla Angband, levels are
counted 2, 4, 6, ..., 100 for consistency with Vanilla monster and item depths.

Player and monster line-of-sight is reduced to 10 squares.

Nests and pits are smaller, and restricted to one per level.

Teleportation in vaults is no longer restricted.

Monster drops are a bit more generous, to counterbalance the reduced game length.

## Town 

The Black Market now always stocks Acquirement scrolls.

## Spellcasting

While blind, the player can still cast memorized spells.

## Melee

Player melee 'blows per round' is replaced by 'might', and a single blow per round.
'Might' is a straight multiplier of final damage, and is calculated identically to
'blows per round' in Vanilla Angband. This change was made to reduce the grindy feel
of late game combat (where players have 5+ blows per round, and monsters typically 4),
and make critical hits more decisive.

Monster melee is altered similarly. Monsters with multiple attacks will choose
a single attack type, and its final damage will be multiplied by the monster's
melee 'might', which is simply the number of melee attack types the monster
has.

## Escape spells / items / effects

Amulets, boots, and potions of running (+1 moves) have been added.

Phase door is rarer. A staff of phase door has been added. All other teleport,
teleport other and teleport level objects have been removed (but not deep
descent). Teleport curses are the only long-range teleport available. New
wands/staffs/rods of wind, and of swap places, have been added to provide more
restricted and tactically interesting 'get me out of here' tools.

There is a new "scroll of locking", that repairs and locks doors adjacent to
the player.

All banishment & mass banishment is removed.

*Destruction* now pushes monsters to the edge of the effect radius, and does
2d25 damage to the player. Earthquake is more effective at blocking
line-of-sight by creating rubble.

## Monster spells and breath damage

Monster breath damage halved, and most damage caps halved.

Monster spell damage halved, except for Morgoth and Sauron.

## Monster summoning

Monster summoning has been considerably weakened: the level of summoned
monsters can be up to two thirds of the summoner's level, and is not dungeon level
dependent. Summon group sizes are greatly reduced.

## Status effects

When paralyzed the player is now guaranteed a move at the end of paralysis,
whereas in Vanilla Angband you can be re-paralyzed when paralysis has ended but
the player has not accumulated 'movement energy' enough to take a turn yet.

Blindness, confusion and paralysis have shorter durations, which are measured 
in player turns (so the effects last less absolute game time the faster the player
is). They are non-stacking (you can't be made more blind/confused/paralyzed while
already afflicted). Immediate cures for blindness and confusion are now much rarer.

## Scoring

Standard turns are used in the highscore table.

## Class changes

### Mage

* Teleport Self, Teleport Other and Teleport Level are
  replaced by Locking, Swap Places and Imprisonment respectively.
* Dimension Door is restricted to line of sight.
* Banishment and Mass Banishment are replaced by high damage
  elemental attacks.

### Druid

* Sense Surroundings spell is now a timed effect that detects nearby
dungeon features by walk distance from the player.

### Priest

* Portal now has the same range as Phase Door.
* Banish Evil is replaced by Holy Terror, which causes irresistible
  fear in evil non-unique creatures.

### Necromancer

* Shadow Shift now has the same range as Phase Door.
* Banish Spirits is replaced by Mass Terror, which causes irresistible
  fear in creatures with spirits, if their level is sufficiently below the player's level.

### Paladin

* Healing spell now only heals 300 hitpoints, not 2000.

### Blackguard

* Spells that effected number of melee blows now modify melee 'might' (see above).

### Ranger

* As with the Druid, Sense Surroundings spell is now a timed effect that
detects nearby dungeon features by walk distance from the player.

### Rogue

* Teleport Self, Teleport Other and Teleport Level have been
  replaced with Locking, Swap Places and Imprisonment respectively.
* "Hit and run" now teleports up to 5 squares (not 20).

Enjoy!

-- Tom Morton

# Angband 4.2.4

Angband is a graphical dungeon adventure game that uses textual characters to
represent the walls and floors of a dungeon and the inhabitants therein, in the
vein of games like NetHack and Rogue. If you need help in-game, press `?`.

- **Installing Angband:** See the [Official Website](https://angband.github.io/angband/) or [compile it yourself](https://angband.readthedocs.io/en/latest/hacking/compiling.html).
- **How to Play:** [The Angband Manual](https://angband.readthedocs.io/en/latest/)
- **Getting Help:** [Angband Forums](http://angband.oook.cz/forum/)

Enjoy!

-- The Angband Dev Team
