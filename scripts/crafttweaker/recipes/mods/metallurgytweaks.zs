/*
	Metallurgy 4 Integration Script
*/
import mods.thermalexpansion.SteamDynamo;
import mods.thermalexpansion.MagmaticDynamo;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

function init() {
    // add Bitumen & Thermite dust as Steam Dynamo Fuels
    mods.thermalexpansion.SteamDynamo.removeFuel(<ore:dustThermite>.firstItem);
    mods.thermalexpansion.SteamDynamo.addFuel(<ore:dustThermite>.firstItem, 24000);
    furnace.setFuel(<metallurgy:bitumen>, 3200);

    // add Molten Thermite as Magmatic Dynamo fuel
    mods.thermalexpansion.MagmaticDynamo.addFuel(<liquid:molten_thermite>, 295440);
    
    //Getting the "deep" out of the deep iron
    val ironDust = <techreborn:smalldust:27>;
    val deepDust = <metallurgy:deep_iron_dust>;
    mods.thermalexpansion.Centrifuge.addRecipe( [ ironDust % 40, ironDust % 80, ironDust % 95, ironDust % 100 ], deepDust, <liquid:coal> * 10, 25000 );    
}
