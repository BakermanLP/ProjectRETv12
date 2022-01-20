import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.crafttweaker.utils;
import scripts.crafttweaker.craftingUtils;

function init() {
    print("Modify avaritia_extreme.zs");

    var singularityManyullyn    = <extendedcrafting:singularity:66>;
    var singularityUltimate     = <extendedcrafting:singularity_ultimate>;

    // Singularities
    print("Modify avaritia_extreme.zs: Remove old Singularities");

    // Neutronium Compressor für Singularities weg
    mods.avaritia.ExtremeCrafting.remove(<avaritia:neutronium_compressor>);

    // mods.jei.JEI.removeAndHide(<avaritia:singularity:*>);
    // var allAvaritiaSingularities = itemUtils.getItemsByRegexRegistryName("avaritia:singularity:.*") as IItemStack[];
    var allAvaritiaSingularities = itemUtils.getItemsByRegexRegistryName(".*singularity.*") as IItemStack[];
    for mySingularity in allAvaritiaSingularities {
        print("Avaritia Compressor remove : " + mySingularity.name);
    //    mods.avaritia.Compressor.remove(mySingularity);
    }

    // Neutron Collector
    // recipes.remove(<avaritia:neutron_collector>);
    // mods.jei.JEI.remove(<avaritia:neutron_collector>);
//    mods.avaritia.Compressor.remove(<avaritia:singularity:*>);

	// Neutron Collector
    mods.avaritia.ExtremeCrafting.remove(<avaritia:neutron_collector>);
    mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:neutron_collector>, [
        [<ore:blockIron>, <ore:blockIron>, <ore:blockQuartz>, <ore:blockQuartz>, <ore:blockQuartz>, <ore:blockIron>, <ore:blockIron>],
        [<ore:blockIron>, null, <ore:blockQuartz>, <ore:blockQuartz>, <ore:blockQuartz>, null, <ore:blockIron>],
        [<ore:ingotCrystaltine>, null, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, null, <ore:ingotCrystaltine>],
        [null, null, <ore:blockRedstone>, <ore:ingotCrystaltine>, <ore:blockRedstone>, null, null],
        [<ore:ingotCrystaltine>, null, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, null, <ore:ingotCrystaltine>],
        [<ore:blockIron>, null, <ore:blockQuartz>, <ore:blockQuartz>, <ore:blockQuartz>, null, <ore:blockIron>],
        [<ore:blockIron>, <ore:blockIron>, <ore:blockQuartz>, <ore:blockQuartz>, <ore:blockQuartz>, <ore:blockIron>, <ore:blockIron>]
    ]);

	// Infinity Ingot
    mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:6>);
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:resource:6>, [
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null]
	]);

	// Endest Pearl
    mods.avaritia.ExtremeCrafting.remove(<avaritia:endest_pearl>);
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:endest_pearl>, [
	[null, null, <ore:endstone>, <ore:endstone>, <ore:endstone>, null, null], 
	[null, <ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>, null], 
	[<ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:ingotCosmicNeutronium>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>], 
	[<ore:endstone>, <ore:enderpearl>, <ore:ingotCosmicNeutronium>, <ore:netherStar>, <ore:ingotCosmicNeutronium>, <ore:enderpearl>, <ore:endstone>], 
	[<ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:ingotCosmicNeutronium>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>], 
	[null, <ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>, null], 
	[null, null, <ore:endstone>, <ore:endstone>, <ore:endstone>, null, null]
	]);
	
	// Infinity Catalyst
    mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:5>);
	mods.extendedcrafting.TableCrafting.addShapeless(0, <avaritia:resource:5>, [<extendedcrafting:singularity_ultimate>, <avaritia:endest_pearl>, <avaritia:ultimate_stew>, <avaritia:cosmic_meatballs>, <avaritia:resource:7>, <avaritia:resource:2>, <ore:nuggetCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <avaritia:resource>, <ore:ingotCrystalMatrix>]);

	// Cosmic Meatballs
	mods.avaritia.ExtremeCrafting.remove(<avaritia:cosmic_meatballs>);
	mods.extendedcrafting.TableCrafting.addShapeless(0, <avaritia:cosmic_meatballs>, [
        <avaritia:resource:2>, 
        <harvestcraft:grubitem>, 
        <ore:listAllbeefraw>,
        <ore:listAllporkraw>,
        <ore:listAllchickenraw>,
        <ore:listAllduckraw>,
        <ore:listAllturkeyraw>,
        <ore:listAllmuttonraw>,
        <ore:listAllfishraw>,
        <ore:listAllspice>,
        <ore:listAllpepper>,
        <ore:listAllsalt>
    ]);
	
	// Ultimate Stew
	mods.avaritia.ExtremeCrafting.remove(<avaritia:ultimate_stew>);
	mods.extendedcrafting.TableCrafting.addShapeless(0, <avaritia:ultimate_stew>, [
        <avaritia:resource:2>, <ore:glassBottle>,
        <ore:listAllgrain>, <ore:cropCarrot>, <ore:cropPotato>, <ore:blockCactus>,
        <ore:cropBeetroot>, <ore:cropMelon>, <ore:cropPumpkin>, <ore:listAllmushroom>,
        <ore:listAllgreenveggie>, <ore:listAllcitrus>, <ore:listAllberry>,
        <ore:listAllegg>, <ore:listAllheavycream>,
        <ore:foodMustard>,
        <ore:foodKetchup>,
        <ore:listAllspice>,
        <ore:listAllpepper>,
        <ore:listAllsalt>
    ]);

	// Enhancement Crystal
	mods.avaritia.ExtremeCrafting.remove(<avaritiatweaks:enhancement_crystal>);
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritiatweaks:enhancement_crystal>, [
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, <ore:ingotCosmicNeutronium>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, <ore:ingotCosmicNeutronium>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null]
]);

	// Diamond Lattice Alternative
    mods.extendedcrafting.CombinationCrafting.addRecipe(<avaritia:resource> * 2, 1000, <minecraft:diamond>, 
        [<minecraft:diamond>, <minecraft:diamond>, 
        <minecraft:diamond>, <minecraft:diamond>, 
        <minecraft:diamond>, <minecraft:diamond>, 
        <minecraft:diamond>, <minecraft:diamond>]);

	// Epic Bacon
    recipes.remove(<harvestcraft:epicbaconitem>);
    mods.extendedcrafting.CombinationCrafting.addRecipe(<harvestcraft:epicbaconitem> * 1, 1000, <animania:cooked_prime_bacon>,
        [
        <minecraft:dye:1>,
        <minecraft:dye:14>,
        <minecraft:dye:11>,
        <minecraft:dye:2>,
        <minecraft:dye:6>,
        <minecraft:dye:5>,
        <minecraft:dye:13>
        ]);

	// Testrezept 1
    mods.extendedcrafting.EnderCrafting.addShaped(<minecraft:planks>,
        [[ null, <minecraft:stick>, null ],
        [ null, <minecraft:stick>, null ],
        [ null, <minecraft:stick>, null ]]);

	// Testrezept 2
    mods.extendedcrafting.EnderCrafting.addShaped(<minecraft:log>,
        [[ null, <minecraft:stick>, null ],
        [ null, <minecraft:planks>, null ],
        [ null, <minecraft:stick>, null ]]);

    // mods.avaritia.Compressor.add("name", output, amount, input)

	// Infinity Helmet
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_helmet>);
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_helmet>, [
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null], 
	[<ore:ingotCosmicNeutronium>, <extendedcrafting:material:36>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:36>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <extendedcrafting:singularity_ultimate>, <extendedcrafting:material:48>, <extendedcrafting:singularity_ultimate>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>], 
	[null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null]
]);

	// Infinity Chestplate
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_chestplate>);
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_chestplate>, [
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[null, <ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <extendedcrafting:singularity_ultimate>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <extendedcrafting:singularity_ultimate>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, null]
]);

	// Infinity Pants
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_pants>);
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_pants>, [
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <extendedcrafting:singularity_ultimate>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <extendedcrafting:singularity_ultimate>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>]
]);

	// Infinity Boots
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_boots>);
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_boots>, [
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null], 
	[<ore:ingotCosmicNeutronium>, <extendedcrafting:singularity_ultimate>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <extendedcrafting:singularity_ultimate>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[<extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, null, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>], 
	[null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null]
]);

	// Infinity Boots
	mods.avaritia.ExtremeCrafting.remove(<avaritia:skullfire_sword>);
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:skullfire_sword>, [
	[null, null, null, null, null, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>], 
	[null, null, null, null, <ore:ingotCrystalMatrix>, <ore:itemBlazePowder>, <ore:ingotCrystalMatrix>], 
	[null, null, null, <ore:ingotCrystalMatrix>, <ore:itemBlazePowder>, <ore:ingotCrystalMatrix>, null], 
	[null, <ore:bone>, <ore:ingotCrystalMatrix>, <ore:itemBlazePowder>, <ore:ingotCrystalMatrix>, null, null], 
	[null, null, <ore:bone>, <ore:ingotCrystalMatrix>, null, null, null], 
	[null, <ore:logWood>, null, <ore:bone>, null, null, null], 
	[<ore:netherStar>, null, null, null, null, null, null]
]);

	// Infinity Sword
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_sword>);
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_sword>, [
	[null, null, null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null], 
	[null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null], 
	[null, <ore:ingotCrystalMatrix>, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null, null], 
	[null, null, <ore:ingotCrystalMatrix>, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null, null, null], 
	[null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, null, null, null, null, null], 
	[null, <ore:ingotCosmicNeutronium>, null, null, <ore:ingotCrystalMatrix>, null, null, null, null], 
	[<avaritia:resource:5>, null, null, null, null, null, null, null, null]
	]);
	
	// Infinity Bow
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_bow>);
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_bow>, [
	[null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null, null, null, null], 
	[null, <ore:ingotInfinity>, null, <ore:wool>, null, null, null, null, null], 
	[<ore:ingotInfinity>, null, null, <ore:wool>, null, null, null, null, null], 
	[<ore:ingotInfinity>, null, null, <ore:wool>, null, null, null, null, null], 
	[<ore:blockCrystalMatrix>, null, null, <ore:wool>, null, null, null, null, null], 
	[<ore:ingotInfinity>, null, null, <ore:wool>, null, null, null, null, null], 
	[<ore:ingotInfinity>, null, null, <ore:wool>, null, null, null, null, null], 
	[null, <ore:ingotInfinity>, null, <ore:wool>, null, null, null, null, null], 
	[null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null, null, null, null]
	]);

	// World Breaker
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_pickaxe>.withTag({ench: [{lvl: 10 as short, id: 35 as short}]}));
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_pickaxe>.withTag({ench: [{lvl: 10 as short, id: 35 as short}]}), [
	[null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null], 
	[<ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:blockCrystalMatrix>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[<ore:ingotInfinity>, <ore:ingotInfinity>, null, null, <ore:ingotCosmicNeutronium>, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null]
	]);

	// Planet Eater
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_shovel>);
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_shovel>, [
	[null, null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:blockInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, <ore:ingotInfinity>, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null, null], 
	[null, null, <ore:ingotCosmicNeutronium>, null, null, null, null, null, null], 
	[null, <ore:ingotCosmicNeutronium>, null, null, null, null, null, null, null], 
	[<ore:ingotCosmicNeutronium>, null, null, null, null, null, null, null, null]
	]);

	// Nature's Ruin
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_axe>);
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_axe>, [
	[null, null, <ore:ingotInfinity>, null, null, null, null, null, null], 
	[null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null, null], 
	[null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null, null], 
	[null, null, null, null, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null]
	]);

	// Hoe of the green earth
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_hoe>);	
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_hoe>, [
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null], 
	[<ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null], 
	[<ore:ingotInfinity>, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null]
	]);

	// Philosophers Stone
    recipes.remove(<projecte:item.pe_philosophers_stone>);
    mods.extendedcrafting.TableCrafting.addShaped(0, <projecte:item.pe_philosophers_stone>.withTag({}), [
        [<mekanism:energycube>, <ore:listAllwater>, <industrialforegoing:laser_drill>, <ore:feather>, <enderio:block_cap_bank:2>],
        [<ore:listAllwater>, <ore:listAllwater>, <minecraft:diamond>, <ore:feather>, <ore:feather>],
        [<industrialforegoing:laser_drill>, <minecraft:diamond>, <industrialforegoing:laser_base>, <minecraft:diamond>, <industrialforegoing:laser_drill>],
        [<ore:dirt>, <ore:dirt>, <minecraft:diamond>, <minecraft:lava_bucket>, <minecraft:lava_bucket>],
        [<techreborn:high_voltage_su>, <ore:dirt>, <industrialforegoing:laser_drill>, <minecraft:lava_bucket>, <thermalexpansion:cell>]
    ]);

	// Coal Singularity als Fuel Source 1638400 = 1600 (BurnTime Coal) x 1024 Stueck
    furnace.setFuel(<extendedcrafting:singularity>, 1638400 );

}
