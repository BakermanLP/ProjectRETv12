#
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.crafttweaker.utils;
import scripts.crafttweaker.craftingUtils;

import mods.industrialforegoing.BioReactor;
import mods.industrialforegoing.ProteinReactor;

//

function init() {

    // Sky Orchard Leaves für Bioreactor
    // for itemLeave in <ore:treeLeaves>.items {
    for itemLeave in itemUtils.getItemsByRegexRegistryName("sky_orchards:leaves_.*") {
        print("Bio Reactor: Item to add : " + itemLeave.name);
        BioReactor.add(itemLeave);
    }

    // Sky Orchard Sapling für Bioreactor
    // for itemSapling in <ore:treeSapling>.items {
    for itemSapling in itemUtils.getItemsByRegexRegistryName("sky_orchards:sapling_.*") {
        print("Bio Reactor: Item to add : " + itemSapling.name);
        BioReactor.add(itemSapling);
    }

    // Alle Seeds für den Bioreactor
    for seed in <ore:listAllseed>.items {
        print("Bio Reactor: Item to add : " + seed.name);
        BioReactor.add(seed);
    }
	
    // Alle Gemüsesorten für den Bioreactor
	for veggie in <ore:listAllveggie>.items {
        print("Bio Reactor: Item to add : " + veggie.name);
		BioReactor.add(veggie);
	}
	
    // Alle Früchte für den Bioreactor
	for fruit in <ore:listAllfruit>.items {
        print("Bio Reactor: Item to add : " + fruit.name);
		BioReactor.add(fruit);
	}

    // Alle Korn Sorten für den Bioreactor
	for grain in <ore:listAllgrain>.items {
        print("Bio Reactor: Item to add : " + grain.name);
		BioReactor.add(grain);
	}

    # Protein Reactor, additional entires
	for item in <ore:listAllmeatraw>.items {
        print("Protein Reactor: Item to add : " + item.name);
		ProteinReactor.add(item);
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
