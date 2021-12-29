/*
	MoreCharcoal
*/
function init() {
    // Apple and Charcoal
    furnace.remove(<morecharcoal:apple_charcoal>);
    furnace.addRecipe(<morecharcoal:apple_charcoal>,<tp:cooked_apple>);

    // Bread and Charcoal
    furnace.remove(<morecharcoal:bread_charcoal>);
    furnace.remove(<tp:toasted_bread>);
    furnace.addRecipe(<harvestcraft:toastitem>,<minecraft:bread>);
    furnace.addRecipe(<morecharcoal:bread_charcoal>,<harvestcraft:toastitem>);

    // Egg and Charcoal
    furnace.remove(<morecharcoal:egg_charcoal>);
    furnace.addRecipe(<morecharcoal:egg_charcoal>,<tp:fried_egg>);

    // Sticks zu Mini Charcoal
    furnace.addRecipe(<morecharcoal:charcoal_chunk>,<ore:stickWood>);

    // Monster Jerky to leather
    furnace.addRecipe(<minecraft:leather>,<tp:monster_jerky>);
    furnace.addRecipe(<minecraft:leather>,<tconstruct:edible:10>);
}
