# 
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


function init() {

//
// ProjectRED Alloys ersetzen durch EnderIO
//

    print("DEBUG: START ProjectRED to EnderIO");
    var wools = [<minecraft:wool>, <minecraft:wool:1>, <minecraft:wool:2>, <minecraft:wool:3>, <minecraft:wool:4>, <minecraft:wool:5>,
                 <minecraft:wool:6>, <minecraft:wool:7>, <minecraft:wool:8>, <minecraft:wool:9>, <minecraft:wool:10>, <minecraft:wool:11>,
                 <minecraft:wool:12>, <minecraft:wool:13>, <minecraft:wool:14>, <minecraft:wool:15>] as IIngredient[];

    val redstoneAlloy = <ore:ingotRedstoneAlloy>;

    val redAlloy = <projectred-core:resource_item:103>;
    val redIron = <projectred-core:resource_item:251>;
//    val wireDebugger = <projectred-core.wiredebugger>;
    val wire = <projectred-transmission:wire>;
    var insulatedWires = [<projectred-transmission:wire:1>, <projectred-transmission:wire:2>,
                          <projectred-transmission:wire:3>, <projectred-transmission:wire:4>,
                          <projectred-transmission:wire:5>, <projectred-transmission:wire:6>,
                          <projectred-transmission:wire:7>, <projectred-transmission:wire:8>,
                          <projectred-transmission:wire:9>, <projectred-transmission:wire:10>,
                          <projectred-transmission:wire:11>, <projectred-transmission:wire:12>,
                          <projectred-transmission:wire:13>, <projectred-transmission:wire:14>,
                          <projectred-transmission:wire:15>, <projectred-transmission:wire:16>] as IItemStack[];

    // Remove Red Alloy recipes
    furnace.remove(redAlloy);
    recipes.remove(redAlloy);
    recipes.remove(redIron);

    // Remove Tinkers Construct recipes
    tinkers.removeCastingTable(redAlloy);
//    tinkers.removeMelting(redAlloy);
//    tinkers.Smeltery.removeAlloy(<liquid:redmetal.molten>);

    // Replace Wire and Debugger recipes
    recipes.remove(wire);
    recipes.addShaped(wire * 12, [[null, redstoneAlloy, null], [null, redstoneAlloy, null], [null, redstoneAlloy, null]]);

    for i, insWire in insulatedWires {
        // print("DEBUG: Replacing recipe for "+insWire);
        val wool = wools[i];
        recipes.removeShaped(insWire);
        recipes.addShaped(insWire * 12, [[wool, redstoneAlloy, wool], [wool, redstoneAlloy, wool], [wool, redstoneAlloy, wool]]);
    }
    print("DEBUG: ENDE ProjectRED to EnderIO");
}


