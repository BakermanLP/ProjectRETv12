/*
	Advanced Generators Integration Script
*/

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

function init() {
    // Wooden Gear entfernen
    mods.jei.JEI.removeAndHide(<enderio:item_material:9>);
}
