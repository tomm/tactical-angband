#!/bin/bash
#
# Note: to compare with vanilla, you need to copy tactical angband src/wiz-stats.c
# to vanilla, and change the following lines:
#		/* Do game iterations */
#		for (depth = 2 ; depth < MAX_LVL; depth+=2) {
# to
#		/* Do game iterations */
#		for (depth = 1 ; depth < MAX_LVL; depth++) {
#
# then build & run vanilla, and generate stats with same options as used
# with tactical angband
#

echo "Note: Generate stats with Ctrl-A S. Choose 'clearing' not 'diving'"
echo
echo "Whole game (100 level) totals, unless otherwise stated."
echo
echo "Gold (total, monster, floor)"
echo "Vanilla: " \
	`grep "Gold total" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "Gold monster" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "Gold floor" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo "TAngband:" \
	`grep "Gold total" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "Gold monster" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "Gold floor" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo
echo "Stat potions generated (only levels 30-60)"
echo "Vanilla: " `grep "Potions-Gain stat" ~/.angband/Angband/stats.log | head -n 60 | tail -n 30 | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo "TAngband:" `grep "Potions-Gain stat" ~/.angband/Tactical\ Angband/stats.log | head -n 60 | tail -n 30 | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo
echo "Healing potions (healing, *healing* + life):"
echo "Vanilla: " \
	`grep "Potions-Healing" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$2;}END{print sum;}' -` \
	`grep "Potions-Big heal" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo "TAngband:" \
	`grep "Potions-Healing" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$2;}END{print sum;}' -` \
	`grep "Potions-Big heal" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo
echo "Vanilla, spellbooks 1-6: " \
	`grep "Book 2" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "Book 3" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "Book 4" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "Book 5" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "Book 6" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo "TAngband, spellbooks 1-6:" \
	`grep "Book 2" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "Book 3" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "Book 4" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "Book 5" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "Book 6" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo
echo "Unique monsters (lvls 1-100):"
echo "Vanilla: " `grep "Unique monsters" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo "TAngband:" `grep "Unique monsters" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo
echo "Total monsters (lvls 1-100):"
echo "Vanilla: " `grep "Total monsters" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo "TAngband:" `grep "Total monsters" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo
echo "Artifacts (total, from uniques, from other monsters, from vault floor, from dungeon floor)"
echo "Vanilla: " \
	`grep "Total artifacts" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "Uniques" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$2;}END{print sum;}' -`\
	`grep "Uniques" ~/.angband/Angband/stats.log | awk -F' ' '{unq+=$2;sum+=$4;}END{print sum-unq;}' -`\
	`grep "From vaults" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "From vaults" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$8;}END{print sum;}' -`
echo "TAngband:" \
	`grep "Total artifacts" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "Uniques" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$2;}END{print sum;}' -`\
	`grep "Uniques" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{unq+=$2;sum+=$4;}END{print sum-unq;}' -`\
	`grep "From vaults" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`\
	`grep "From vaults" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$8;}END{print sum;}' -`
echo
echo "Equipment with 4 basic resists"
echo "Vanilla: " \
	`grep "All-Resist Base" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo "TAngband: " \
	`grep "All-Resist Base" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo
echo "Rings of speed (total, pre dlvl 50)"
echo "Vanilla: " \
	`grep "Rings-Speed" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$2;}END{print sum;}' -` \
	`grep "Rings-Speed" ~/.angband/Angband/stats.log | head -n 50 - | awk -F' ' '{sum+=$2;}END{print sum;}' -`
echo "TAngband: " \
	`grep "Rings-Speed" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$2;}END{print sum;}' -` \
	`grep "Rings-Speed" ~/.angband/Tactical\ Angband/stats.log | head -n 50 - | awk -F' ' '{sum+=$2;}END{print sum;}' -`
echo
echo "Boots of speed / elvenkind (total, pre dlvl 50, pre dlvl 30)"
echo "Vanilla: " \
	`grep "Boots-Speed" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$2;}END{print sum;}' -` \
	`grep "Boots-Speed" ~/.angband/Angband/stats.log | head -n 50 - | awk -F' ' '{sum+=$2;}END{print sum;}' -` \
	`grep "Boots-Speed" ~/.angband/Angband/stats.log | head -n 30 - | awk -F' ' '{sum+=$2;}END{print sum;}' -`
echo "TAngband: " \
	`grep "Boots-Speed" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$2;}END{print sum;}' -` \
	`grep "Boots-Speed" ~/.angband/Tactical\ Angband/stats.log | head -n 50 - | awk -F' ' '{sum+=$2;}END{print sum;}' -` \
	`grep "Boots-Speed" ~/.angband/Tactical\ Angband/stats.log | head -n 30 - | awk -F' ' '{sum+=$2;}END{print sum;}' -`
echo
echo "Ego armors (inc boots, gloves, etc)"
echo "Vanilla: " \
	`grep "Armor-Ego" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$2;}END{print sum;}' -`
echo "TAngband: " \
	`grep "Armor-Ego" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$2;}END{print sum;}' -`
echo

echo "End-game rods (speed, healing):"
echo "Vanilla: " \
	`grep "Rods-Endgame" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$2;}END{print sum;}' -`
echo "TAngband: " \
	`grep "Rods-Endgame" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$2;}END{print sum;}' -`
echo

echo "Detection rods:"
echo "Vanilla: " \
	`grep "Rods-Detect all" ~/.angband/Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo "TAngband: " \
	`grep "Rods-Detect all" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$3;}END{print sum;}' -`
echo

echo "TAngband-only items"
echo "Boots of running (total, pre level 50, pre level 30): " \
	`grep "Boots-Running" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$2;}END{print sum;}' -` \
	`grep "Boots-Running" ~/.angband/Tactical\ Angband/stats.log | head -n 50 - | awk -F' ' '{sum+=$2;}END{print sum;}' -` \
	`grep "Boots-Running" ~/.angband/Tactical\ Angband/stats.log | head -n 30 - | awk -F' ' '{sum+=$2;}END{print sum;}' -`
echo "Amulet of running: " \
	`grep "Amulets-Running" ~/.angband/Tactical\ Angband/stats.log | awk -F' ' '{sum+=$2;}END{print sum;}' -`

