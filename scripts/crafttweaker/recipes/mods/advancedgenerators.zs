/*
	Advanced Generators Integration Script
*/

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

function init() {
    print("Modify advancedgenerators.zs");

    recipes.addShaped(<advgenerators:advanced_pressure_valve>,
        [[null, <ore:ingotEnderium>, null],
        [<advgenerators:iron_tubing>, <advgenerators:iron_tubing>, <advgenerators:iron_tubing>],
        [null, <ore:ingotEnderium>, null]]);

    recipes.remove(<advgenerators:iron_frame>);

    recipes.addShaped(<advgenerators:iron_frame>,
        [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
        [null, null, null],
        [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]]);
}
