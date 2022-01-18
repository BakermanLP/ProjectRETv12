#
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.industrialforegoing.BioReactor;

//

function init() {

    // BioReactor.add(resourceLeaves);
    // BioReactor.add(resourceSapling);
    val oreDictLeaves = <ore:treeLeaves>;
    val oreDictSapling = <ore:treeSapling>;

    for itemLeave in oreDictLeaves {
        BioReactor.add(itemLeave);
    }

    for itemSapling in oreDictSapling {
        BioReactor.add(itemSapling);
    }

    // Machinen Rezepte ändern
    // Protein Reactor
    recipes.remove(<industrialforegoing:protein_reactor>);
    recipes.addShaped(<industrialforegoing:protein_reactor>, 
        [[<industrialforegoing:plastic>, <ore:listAllmeatraw>, <industrialforegoing:plastic>], 
        [<minecraft:egg>, <thermalexpansion:frame> | <mekanism:basicblock:8> | <enderio:item_material> | <teslacorelib:machine_case> , <minecraft:egg>], 
        [<minecraft:brick>, <minecraft:rabbit_foot>, <minecraft:brick>]]
    );
}
