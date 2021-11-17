/*
	NuclearCraft Integration Script
	This script utilizes the NuclearCraft integration to add/remove/modify recipes.
    Original Script out of SkyFactory 4
*/

function init() {
	// Wool from Cotton Amber
	nuclearCraft.addManufactory(<sky_orchards:amber_cottonwood>, <minecraft:wool>);
	nuclearCraft.addManufactory(<sky_orchards:acorn_cottonwood>, <minecraft:string>);

	// Mimmic existing salt recipe for a salt block (4 salt / block)
	nuclearCraft.addMelter(<mekanism:saltblock>, <liquid:brine> * (15 * 4));

    //Add in missing lapis melter recipe
    mods.nuclearcraft.melter.addRecipe([<minecraft:dye:4>, <liquid:lapis> * 666]);

    //Melter for Amber
    mods.nuclearcraft.melter.addRecipe([<sky_orchards:amber_dirt>, <liquid:dirt> * 144]);
    // mods.nuclearcraft.melter.addRecipe([<sky_orchards:amber_petrified>, <liquid:stone> * 72]);
    mods.nuclearcraft.melter.addRecipe([<sky_orchards:amber_clay>, <liquid:clay> * 576]);
    mods.nuclearcraft.melter.addRecipe([<sky_orchards:amber_sand>, <liquid:glass> * 1000]);
    mods.nuclearcraft.melter.addRecipe([<sky_orchards:amber_lapis>, <liquid:lapis> * 5994]);
    mods.nuclearcraft.melter.addRecipe([<sky_orchards:amber_redstone>, <liquid:redstone> * 900]);
    mods.nuclearcraft.melter.addRecipe([<sky_orchards:amber_diamond>, <liquid:diamond> * 666]);
    mods.nuclearcraft.melter.addRecipe([<sky_orchards:amber_emerald>, <liquid:emerald> * 666]);
    mods.nuclearcraft.melter.addRecipe([<sky_orchards:amber_quartz>, <liquid:quartz> * 2664]);
    mods.nuclearcraft.melter.addRecipe([<sky_orchards:amber_netherrack>, <liquid:blood> * 250]);
    mods.nuclearcraft.melter.addRecipe([<sky_orchards:amber_glowstone>, <liquid:glowstone> * 1000]);

}
