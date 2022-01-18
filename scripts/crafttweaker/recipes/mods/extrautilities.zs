#
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//

function init() {
    recipes.remove("extrautils2:generator_generator_culinary");
    recipes.addShaped("extrautils2:generator_generator_culinary", <extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}), [[<minecraft:wheat> | <minecraft:potato> | <minecraft:carrot>, <minecraft:wheat> | <minecraft:potato> | <minecraft:carrot>, <minecraft:wheat> | <minecraft:potato> | <minecraft:carrot>], [<minecraft:wheat> | <minecraft:potato> | <minecraft:carrot>, <ore:listAllmeatcooked>, <minecraft:wheat> | <minecraft:potato> | <minecraft:carrot>], [<ore:dustRedstone>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <ore:dustRedstone>]]);
}
