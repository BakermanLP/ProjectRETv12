/*
	SkyFactory 4 Tinker's Integration Script
	This script utilizes the Tinker's integration to add/remove/modify recipes.
*/
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;

function init() {
    // ==================================
    // Melting
    // ==================================
    // ==================================
    // Destabilized Redstone
    tinkers.addMelting(<liquid:redstone> * 100, <ore:dustRedstone>);
    tinkers.addMelting(<liquid:redstone> * 250, <ore:clathrateRedstone>);
    tinkers.addMelting(<liquid:redstone> * 900, <ore:blockRedstone>);
    tinkers.addMelting(<liquid:redstone> * 1000, <ore:oreClathrateRedstone>);

    // ==================================
    // Energized Glowstone
    tinkers.addMelting(<liquid:glowstone> * 250, <ore:dustGlowstone>);
    tinkers.addMelting(<liquid:glowstone> * 250, <ore:clathrateGlowstone>);
    tinkers.addMelting(<liquid:glowstone> * 1000, <ore:glowstone>);
    tinkers.addMelting(<liquid:glowstone> * 1000, <ore:oreClathrateGlowstone>);

	// Liquifacted Coal
	tinkers.addMelting(<liquid:coal> * 100, <ore:dustCoal>);

    // ==================================
    // Resonant Ender
    tinkers.addMelting(<liquid:ender> * 250, <ore:enderpearl>);
    tinkers.addMelting(<liquid:ender> * 250, <ore:clathrateEnder>);
    tinkers.addMelting(<liquid:ender> * 1000, <ore:oreClathrateEnder>);
    tinkers.addMelting(<liquid:ender> * 250, <thermalfoundation:material:895>);

    // ==================================
    // Pyrotheum Melting
    tinkers.addMelting(<liquid:pyrotheum> * 250, <thermalfoundation:material:1024>, 1300);

    // ==================================
    // Reinforced  Melting
    // tinkers.addMelting(<liquid:reinforced_obsidian> * 144, <tp:reinforced_obsidian_ingot>);
    // tinkers.addMelting(<liquid:reinforced_obsidian> * 1296, <tp:reinforced_obsidian>);

    // Pink Slime melting
	tinkers.addMelting(<liquid:if.pink_slime> * 250, <industrialforegoing:pink_slime>);

	// ==================================
	// Alloying
	// ==================================
	//tinkers.addAlloying(<liquid:reinforced_obsidian> * 2592, [<liquid:iron> * 270, <liquid:obsidian> * 1152]);

    // ==================================
    // Casting Table
    // ==================================
    tinkers.addCastingTable(<minecraft:golden_apple>, <minecraft:apple>, <liquid:gold>, 1152, true, 200);
    //tinkers.addCastingTable(<tp:reinforced_obsidian_ingot>, <tconstruct:cast_custom>, <liquid:reinforced_obsidian>, 144, false, 200);

    //Ender Pearl and Seed Casting
    tinkers.addCastingTable(<minecraft:ender_pearl>, <tconstruct:cast_custom:2>, <liquid:ender>, 250, false, 200);

	// ==================================
	// Casting Basin
	// ==================================
	//Hardened Glass
	tinkers.addCastingBasin(<thermalfoundation:glass>, <minecraft:obsidian>, <liquid:copper>, 144, true, 160);
	tinkers.addCastingBasin(<thermalfoundation:glass:1>, <minecraft:obsidian>, <liquid:tin>, 144, true, 160);
	tinkers.addCastingBasin(<thermalfoundation:glass:2>, <minecraft:obsidian>, <liquid:silver>, 144, true, 160);
	tinkers.addCastingBasin(<thermalfoundation:glass:3>, <minecraft:obsidian>, <liquid:lead>, 144, true, 160);
	tinkers.addCastingBasin(<thermalfoundation:glass:5>, <minecraft:obsidian>, <liquid:nickel>, 144, true, 160);
	tinkers.addCastingBasin(<thermalfoundation:glass:6>, <minecraft:obsidian>, <liquid:platinum>, 144, true, 160);
	tinkers.addCastingBasin(<thermalfoundation:glass:7>, <minecraft:obsidian>, <liquid:iridium>, 144, true, 160);
	tinkers.addCastingBasin(<thermalfoundation:glass_alloy>, <minecraft:obsidian>, <liquid:steel>, 144, true, 160);
	tinkers.addCastingBasin(<thermalfoundation:glass_alloy:1>, <minecraft:obsidian>, <liquid:electrum>, 144, true, 160);
	tinkers.addCastingBasin(<thermalfoundation:glass_alloy:2>, <minecraft:obsidian>, <liquid:invar>, 144, true, 160);
	tinkers.addCastingBasin(<thermalfoundation:glass_alloy:3>, <minecraft:obsidian>, <liquid:bronze>, 144, true, 160);
	tinkers.addCastingBasin(<thermalfoundation:glass_alloy:4>, <minecraft:obsidian>, <liquid:constantan>, 144, true, 160);
	tinkers.addCastingBasin(<thermalfoundation:glass_alloy:5>, <minecraft:obsidian>, <liquid:signalum>, 144, true, 160);
	tinkers.addCastingBasin(<thermalfoundation:glass_alloy:6>, <minecraft:obsidian>, <liquid:lumium>, 144, true, 160);
	tinkers.addCastingBasin(<thermalfoundation:glass_alloy:7>, <minecraft:obsidian>, <liquid:enderium>, 144, true, 160);

    tinkers.addCastingBasin(<minecraft:netherrack>, <sky_orchards:amber_redstone>, <liquid:lava>, 250, true, 200);
    tinkers.addCastingBasin(<minecraft:soul_sand>, <minecraft:sand>, <liquid:xpjuice>, 250, true, 200);
    tinkers.addCastingBasin(<minecraft:soul_sand>, <minecraft:sand>, <liquid:experience>, 250, true, 200);
    tinkers.addCastingBasin(<minecraft:end_stone>, <minecraft:glowstone>, <liquid:lava>, 1000, true, 200);
    // tinkers.addCastingBasin(<tp:reinforced_obsidian>, null, <liquid:reinforced_obsidian>, 1296, false, 200);

    tinkers.addCastingBasin(<minecraft:glowstone>, null, <liquid:glowstone>, 1000, true, 160);

    //Casting liquid redstone into dust and blocks
    tinkers.addCastingTable(<minecraft:redstone:0>, <tconstruct:cast_custom:2>, <liquid:redstone>, 100, false);
    tinkers.addCastingBasin(<minecraft:redstone_block:0>, null, <liquid:redstone>, 900);

    // ==================================
    // Thermal Dynamics Pipe Upgrades
    var thermalDuct32 as IItemStack = <thermaldynamics:duct_32>;
    var thermalDuct32Definition as IItemDefinition = <thermaldynamics:duct_32>.definition;
    var thermalDuct32BaseMetadatas as int[] = [0, 1, 4, 5];

    for thermalDuct32SubItem in thermalDuct32Definition.subItems {
        // Check if its a base duct item, ignore otherwise
        if (thermalDuct32BaseMetadatas has thermalDuct32SubItem.metadata) {
            var outputItem as IItemStack = thermalDuct32Definition.makeStack(thermalDuct32SubItem.metadata + 2);

            if (thermalDuct32SubItem.hasTag) {
                outputItem.withTag(thermalDuct32SubItem.tag);
            }

            tinkers.addCastingBasin(
                outputItem,
                thermalDuct32SubItem,
                <liquid:glowstone>,
                200,
                true,
                80
            );
        }
    }
}
