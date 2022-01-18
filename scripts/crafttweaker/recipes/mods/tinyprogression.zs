/*
	Tiny Progression Integration Script
*/

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

function init() {
    print("Modify tinyprogression.zs");

    recipes.remove(<tp:wooden_shears>);

    recipes.addShaped(<tp:wooden_shears>,
        [[null, <ore:plankWood>, null],
        [<ore:plankWood>, null, null],
        [null, null, null]]);

}
