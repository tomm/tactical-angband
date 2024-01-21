## 0.8.1

* Fixed a bug that caused some spells to do no damage (particularly mage).
* Rarer phase door scrolls, and no phase door staves

## 0.8

* Ring of mouse is reworked: -d4 STR, +d4 STEALTH, +d4 INFRA
* Melee, archery, throwing, using most offensive magic items, and casting most
  offensive spells now creates noise that can wake up monsters.
* Rogues gain +100% to-hit bonus against sleeping monsters 
* Rogues can silently attack sleeping monsters
* Rogue hit-and-run power can now be triggered by attacking, as well as by stealing
* Melee criticals go down with weapon weight, not up
* Plus-to-hit has more (positive) effect on criticals
* Some small stabby weapons gain +might when used against sleeping monsters
* Rogue item theft chance tweaked, making the power useful into the late game
* Teleportation rings are now generated down to dlvl 100
* Sleep monsters works against more monster types
* Staff of sleep has fewer charges
* Recharge scrolls are less common

## 0.7

* Fixed a bug where monsters capable of knocking out the player (mystics and
  trappers) could do so in a single turn.
* Blindness and confusion are now non-stacking, shorter duration, measured in 
  player turns, and mostly incurable.
* Ringwraiths can now summon each other again. This is a special exemption from 
  the general summoning nerf, which restricts summons to two-thirds the level
  of the summoner.
* Fixed a bug preventing individual monster friends from appearing. This fixes
  issues like Bill, Tom and Bert not appearing together.
* Gravity now teleports monsters 5 tiles, not 10.
* Tweak to detection rod rarity.

## 0.6

* Extensive rebalancing of monster drops to match vanilla angband stat gain,
  speed items, dungeon spellbooks, end game staves and rods, gold.
* Phase door reduced from 7 to 5 tiles, to match the general rescaling of
  distances.
* Restore the ability of most monsters that could teleport themselves to 
  the player, or teleport the player to them (in V).
* Monster group sizes adjusted from 1/2 Vanilla to 2/3.
* Paralysis is now measured in player turns, which means the higher your
  speed, the shorter absolute game time you will spend paralysed.
* Pulled code from vanilla master branch up to 4.2.4-232-g6e34fd35f. Many fixes.

## 0.5

* Fix a crash when examining wands of swap places
* Monster drops tweaked
* Re-enable labyrinth, moria and hard centre dungeon types
* Stat-gain tweaked (again) to attempt to roughly match Vanilla stat gain completion depth
* Increase gold value of +MOVES objects (boots/amulets of running had been absurdly cheap)
* Replace druid/ranger mapping spell with a sil-q-style 'delving' timed mapping spell
* Allow winning characters with birth_force_descend enabled to take up staircases
* ESP range reduced from 12 to 10, as that is the LoS range
* Make amulet of running much rarer, and add a mixed blessings version, 'amulet of sure movement'.
* Various wand balancing (charges, rarity)

## 0.4

* Fixed a bug in 0.3.x that made monsters super-vigilant (you may have noticed this if you got stampeded by a hydra pit from half way across the level).
* Reduced and made the detection 'radius' of almost all spells square, rather than being much wider than high (as in V)
* Slightly increased monster densities
* Un-nerfed some monsters that had been slowed down vs Vanilla -- this was an early experiment and probably isn't needed anymore now more escape options exist.
* Reduced the size of simple and overlapping rooms.
* Reduced ESP range in line with LoS changes.
* Reordered the 'game mode' birth options, and made 'iron' (forced descent, no recall) the default. This is only a serving suggestion, and the classic infinite dungeon is available too.

## 0.3

Initial release!
