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
}
