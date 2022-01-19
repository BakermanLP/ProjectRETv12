#
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemDefinition;

import scripts.crafttweaker.utils;
import scripts.crafttweaker.craftingUtils;

import mods.industrialforegoing.BioReactor;

//
// SkyOrchard Setzlinge zu Ingots und Liquids
//
// Example Usage:
// skyOrchardIngots("iron", <minecraft:iron_ingot>, <liquid:iron>)
//
function skyOrchardIngots(metallName as string, myIngotName as IItemStack, resourceLiquid as ILiquidStack) {
    var resourceMeta as int = 0;

    // Resource Namen
    var resourceNameSapling as string = "sky_orchards:sapling_"+metallName;
    var resourceNameAmber as string = "sky_orchards:amber_"+metallName;
    var resourceNameAcorn as string = "sky_orchards:acorn_"+metallName;
    var resourceNameResin as string = "sky_orchards:resin_"+metallName;
    var resourceNameLeaves as string = "sky_orchards:leaves_"+metallName;

    // Resource Items
    var resourceSapling as IItemStack = itemUtils.getItem(resourceNameSapling,resourceMeta);
    var resourceAmber as IItemStack = itemUtils.getItem(resourceNameAmber,resourceMeta);
    var resourceAcorn as IItemStack = itemUtils.getItem(resourceNameAcorn,resourceMeta);
    var resourceResin as IItemStack = itemUtils.getItem(resourceNameResin,resourceMeta);
    var resourceLeaves as IItemStack = itemUtils.getItem(resourceNameLeaves,resourceMeta);

    // Metall Dust
    var oreDustDict as IOreDictEntry = utils.getResourcePartOreDict("dust" , metallName);
    print("OreDictLength : " + oreDustDict.name + "=" + oreDustDict.items.length );
    
    if ( oreDustDict.items.length > 0 ) {
        var resourceDust = unifier.getPreferredItem(oreDustDict);
        print("Prefered Dust : " + resourceDust.name);

        // Pulverisieren des Ambers in ThermalExpansion
        mods.thermalexpansion.Pulverizer.addRecipe(resourceDust * 2, resourceAmber, 1000, resourceResin, 50);
        // Crushen des Ambers in Mekanism
        mods.mekanism.enrichment.addRecipe(resourceAmber, resourceDust * 2);
    }

    // Metall Ingot Furnace Smelting
    var oreIngotDict as IOreDictEntry = utils.getResourcePartOreDict("ingot" , metallName);
    print("OreDictLength : " + oreIngotDict.name + "=" + oreIngotDict.items.length );

    if ( oreIngotDict.items.length > 0 ) {
        var resourceIngot = unifier.getPreferredItem(oreIngotDict);
        print("Prefered Ingot : " + resourceIngot.name);
        furnace.addRecipe(resourceIngot, resourceAmber, 0.7);
    }

    // Metall Nugget Furnace Smelting
    var oreNuggetDict as IOreDictEntry = utils.getResourcePartOreDict("nugget" , metallName);
    print("OreDictLength : " + oreNuggetDict.name + "=" + oreNuggetDict.items.length );

    if ( oreNuggetDict.items.length > 0 ) {
        var resourceNugget = unifier.getPreferredItem(oreNuggetDict);
        print("Prefered Nugget : " + resourceNugget.name);
        furnace.addRecipe(resourceNugget, resourceAcorn, 0.7);
        furnace.addRecipe(resourceNugget, resourceResin, 0.7);
    }

    // Rezept für Amber
    recipes.addShaped(resourceAmber,
        craftingUtils.createCheckerboardRecipe(resourceAcorn, resourceResin)
    );

    // Metall Liquid suchen
//    var myResourceLiquid = craftingUtils.getLiquid(metallName);
    var myResourceLiquid = resourceLiquid;

    // Mekanism Purification Chamber - Clump Handling
    var oreClumpDict as IOreDictEntry = utils.getResourcePartOreDict("clump" , metallName);
    print("OreDictLength : " + oreClumpDict.name + "=" + oreClumpDict.items.length );

    if ( oreClumpDict.items.length > 0 ) {
        var resourceClump = unifier.getPreferredItem(oreClumpDict);
        mods.mekanism.purification.addRecipe(resourceAmber, <gas:oxygen>, resourceClump * 3);
    }

    // Mekanism Chemical Injection Chamber - Shard Handling
    var oreShardDict as IOreDictEntry = utils.getResourcePartOreDict("shard" , metallName);
    print("OreDictLength : " + oreShardDict.name + "=" + oreShardDict.items.length );

    if ( oreShardDict.items.length > 0 ) {
        var resourceShard = unifier.getPreferredItem(oreShardDict);
        mods.mekanism.chemical.injection.addRecipe(resourceAmber, <gas:hydrogenchloride>, resourceShard * 4);
    }

    // Dissolution Chamber
    print("getGas for " + metallName);
    var gasName as string = metallName; 
    var myGas = mods.mekanism.MekanismHelper.getGas(gasName);
    if ( isNull(myGas)) {
        print("getGas for slurry" + utils.capitalize(metallName) );
        var gasName as string = "slurry" + utils.capitalize(metallName) ; 
        var myGas = mods.mekanism.MekanismHelper.getGas(gasName);
    }
    if ( ! isNull(myGas)) {
        print("Adding to Mekanism Chemical Dissolution : " + metallName);
        mods.mekanism.chemical.dissolution.addRecipe(resourceAmber, myGas * 1000);
    }

    // Smelting to Liquid Metal
    if ( ! isNull(myResourceLiquid) ) {
        print("Adding Smelting for " + metallName);
        tinkers.addMelting(myResourceLiquid * 288, resourceAmber);
        tinkers.addMelting(myResourceLiquid * 32,  resourceAcorn);
        tinkers.addMelting(myResourceLiquid * 32,  resourceResin);

        mods.thermalexpansion.Crucible.addRecipe(myResourceLiquid * 288, resourceAmber, 8000);
        mods.thermalexpansion.Crucible.addRecipe(myResourceLiquid * 32, resourceAcorn, 500);
        mods.thermalexpansion.Crucible.addRecipe(myResourceLiquid * 32, resourceResin, 500);

        nuclearCraft.addMelter(resourceAmber, myResourceLiquid * 288);
        nuclearCraft.addMelter(resourceAcorn, myResourceLiquid * 32);
        nuclearCraft.addMelter(resourceResin, myResourceLiquid * 32);
    }

    // Saplings and Leaves to BioReactor
    BioReactor.add(resourceLeaves);
    BioReactor.add(resourceSapling);
}

function skyOrchardIngotsTier1(metallName as string, myIngotName as IItemStack, resourceLiquid as ILiquidStack) {
    // Sky Orchards zu Metall Ingots für Tier 1
    print("DEBUG: CONSTRUCTOR Ingot Tier 1 START "+metallName);
    var resourceMeta as int = 0;
    var resourceNameSapling as string = "sky_orchards:sapling_"+metallName;
    var resourceSapling as IItemStack = itemUtils.getItem(resourceNameSapling,resourceMeta);

    skyOrchardIngots(metallName as string, myIngotName as IItemStack, resourceLiquid as ILiquidStack);
    recipes.addShaped(resourceSapling,
        craftingUtils.createSkyOrchardTier1(myIngotName)
    );
    print("DEBUG: CONSTRUCTOR Ingot Tier 1 ENDE "+metallName);
}

function skyOrchardIngotsTier2(metallName as string, myIngotName as IItemStack, resourceLiquid as ILiquidStack) {
    // Sky Orchards zu Metall Ingots für Tier 1
    var resourceMeta as int = 0;
    var resourceNameSapling as string = "sky_orchards:sapling_"+metallName;
    var resourceSapling as IItemStack = itemUtils.getItem(resourceNameSapling,resourceMeta);

    skyOrchardIngots(metallName as string, myIngotName as IItemStack, resourceLiquid as ILiquidStack);
    recipes.addShaped(resourceSapling,
        craftingUtils.createSkyOrchardTier2(myIngotName)
    );
    print("DEBUG: CONSTRUCTOR Ingot Tier 2 ENDE "+metallName);
}

function skyOrchardIngotsTier3(metallName as string, myIngotName as IItemStack, resourceLiquid as ILiquidStack) {
    // Sky Orchards zu Metall Ingots für Tier 1
    var resourceMeta as int = 0;
    var resourceNameSapling as string = "sky_orchards:sapling_"+metallName;
    var resourceSapling as IItemStack = itemUtils.getItem(resourceNameSapling,resourceMeta);

    skyOrchardIngots(metallName as string, myIngotName as IItemStack, resourceLiquid as ILiquidStack);
    recipes.addShaped(resourceSapling,
        craftingUtils.createSkyOrchardTier3(myIngotName)
    );
    print("DEBUG: CONSTRUCTOR Ingot Tier 3 ENDE "+metallName);
}

//
// SkyOrchard Setzlinge zu Block
//
// Example Usage:
// skyOrchardBlocks("cottonwood", <minecraft:wool:0>, <minecraft:string>)
//
function skyOrchardBlocks(materialName as string, myBlockName as IItemStack, myItemName as IItemStack) {
    var resourceMeta as int = 0;

    // Resource Namen
    var resourceNameSapling as string = "sky_orchards:sapling_"+materialName;
    var resourceNameAmber as string = "sky_orchards:amber_"+materialName;
    var resourceNameAcorn as string = "sky_orchards:acorn_"+materialName;
    var resourceNameResin as string = "sky_orchards:resin_"+materialName;
    var resourceNameLeaves as string = "sky_orchards:leaves_"+materialName;

    // Resource Items
    var resourceSapling as IItemStack = itemUtils.getItem(resourceNameSapling,resourceMeta);
    var resourceAmber as IItemStack = itemUtils.getItem(resourceNameAmber,resourceMeta);
    var resourceAcorn as IItemStack = itemUtils.getItem(resourceNameAcorn,resourceMeta);
    var resourceResin as IItemStack = itemUtils.getItem(resourceNameResin,resourceMeta);
    var resourceLeaves as IItemStack = itemUtils.getItem(resourceNameLeaves,resourceMeta);


    recipes.addShaped(resourceSapling,
        craftingUtils.createSkyOrchardTier0(myItemName)
    );

    recipes.addShaped(myBlockName,
        craftingUtils.createCheckerboardRecipe(resourceAcorn, resourceResin)
    );

    // Furnace Smelting
    furnace.addRecipe(myBlockName, resourceAmber, 0.7);

    // Saplings and Leaves to BioReactor
    BioReactor.add(resourceLeaves);
    BioReactor.add(resourceSapling);

    print("DEBUG: CONSTRUCTOR Blocks ENDE "+materialName);
}
//
// SkyOrchard Setzlinge zu Gems
//
// Example Usage:
// skyOrchardGems("redstone", <minecraft:redstone>)
//
function skyOrchardGems(materialName as string, myItemName as IItemStack) {
    var resourceMeta as int = 0;

    // Resource Namen
    var resourceNameSapling as string = "sky_orchards:sapling_"+materialName;
    var resourceNameAmber as string = "sky_orchards:amber_"+materialName;
    var resourceNameAcorn as string = "sky_orchards:acorn_"+materialName;
    var resourceNameResin as string = "sky_orchards:resin_"+materialName;
    var resourceNameLeaves as string = "sky_orchards:leaves_"+materialName;

    // Resource Items
    var resourceSapling as IItemStack = itemUtils.getItem(resourceNameSapling,resourceMeta);
    var resourceAmber as IItemStack = itemUtils.getItem(resourceNameAmber,resourceMeta);
    var resourceAcorn as IItemStack = itemUtils.getItem(resourceNameAcorn,resourceMeta);
    var resourceResin as IItemStack = itemUtils.getItem(resourceNameResin,resourceMeta);
    var resourceLeaves as IItemStack = itemUtils.getItem(resourceNameLeaves,resourceMeta);

    recipes.addShaped(resourceSapling,
        craftingUtils.createSkyOrchardTier2(myItemName)
    );

    recipes.addShaped(myItemName,
        craftingUtils.createCheckerboardRecipe(resourceAcorn, resourceResin)
    );

    // Furnace Smelting
    furnace.addRecipe(myItemName, resourceAmber, 0.7);

    // Saplings and Leaves to BioReactor
    BioReactor.add(resourceLeaves);
    BioReactor.add(resourceSapling);

    print("DEBUG: CONSTRUCTOR Gems ENDE "+materialName);
}

function init() {

// recipes.addShaped(null,
// 	[[null, null, null],
// 	[null, null, null],
// 	[null, null, null]]);

// recipes.addShapeless(<>, [<>]);

skyOrchardBlocks("cottonwood", <minecraft:wool:0>, <minecraft:string>);
skyOrchardBlocks("dirt", <minecraft:dirt>, <minecraft:dirt>);
skyOrchardBlocks("clay", <minecraft:clay>, <minecraft:clay>);
skyOrchardBlocks("sand", <minecraft:sand>, <minecraft:sand>);
skyOrchardBlocks("gravel", <minecraft:gravel>, <minecraft:gravel>);
skyOrchardBlocks("netherrack", <minecraft:netherrack>, <minecraft:netherrack>);
skyOrchardBlocks("bone", <minecraft:bone_block>, <minecraft:bone>);
skyOrchardBlocks("niter", <jaopca:block_blockniter>, <thermalfoundation:material:772>);
skyOrchardBlocks("potash", <jaopca:block_blockpotash>, <metallurgy:potash>);

skyOrchardGems("lapis", <minecraft:dye:4>);
skyOrchardGems("redstone", <minecraft:redstone>);
skyOrchardGems("diamond", <minecraft:diamond>);
skyOrchardGems("emerald", <minecraft:emerald>);
skyOrchardGems("quartz", <minecraft:quartz>);
skyOrchardGems("glowstone", <minecraft:glowstone_dust>);
skyOrchardGems("apatite", <forestry:apatite>);

// Warum diese nicht gehen, verstehe ich nicht
skyOrchardGems("ruby", <techreborn:gem:0>);
skyOrchardGems("sapphire", <techreborn:gem:1>);
skyOrchardGems("peridot", <techreborn:gem:2>);

//
// Metalle Tier 1
//
skyOrchardIngotsTier1("iron", <minecraft:iron_ingot>, <liquid:iron>);
skyOrchardIngotsTier1("gold", <minecraft:gold_ingot>, <liquid:gold>);
skyOrchardIngotsTier1("copper", <thermalfoundation:material:128>, <liquid:copper>);
skyOrchardIngotsTier1("lead", <thermalfoundation:material:131>, <liquid:lead>);
skyOrchardIngotsTier1("tin", <thermalfoundation:material:129>, <liquid:tin>);
skyOrchardIngotsTier1("nickel", <thermalfoundation:material:133>, <liquid:nickel>);
skyOrchardIngotsTier1("manganese", <nuclearcraft:ingot:11>, <liquid:manganese>);
skyOrchardIngotsTier1("osmium", <mekanism:ingot:1>, <liquid:osmium>);
skyOrchardIngotsTier1("zinc", <techreborn:ingot:24>, <liquid:zinc>);
//
// Metalle Tier 2
//
skyOrchardIngotsTier2("silver", <thermalfoundation:material:130>, <liquid:silver>);
skyOrchardIngotsTier2("alduorite", <metallurgy:alduorite_ingot>, <liquid:alduorite>);
skyOrchardIngotsTier2("ceruclase", <metallurgy:ceruclase_ingot>, <liquid:ceruclase>);
skyOrchardIngotsTier2("deepiron", <metallurgy:deep_iron_ingot>, <liquid:deep_iron>);
skyOrchardIngotsTier2("ignatius", <metallurgy:ignatius_ingot>, <liquid:ignatius>);
skyOrchardIngotsTier2("infuscolium", <metallurgy:infuscolium_ingot>, <liquid:infuscolium>);
skyOrchardIngotsTier2("lemurite", <metallurgy:lemurite_ingot>, <liquid:lemurite>);
skyOrchardIngotsTier2("midasium", <metallurgy:midasium_ingot>, <liquid:midasium>);
skyOrchardIngotsTier2("oureclase", <metallurgy:oureclase_ingot>, <liquid:oureclase>);
skyOrchardIngotsTier2("platinum", <thermalfoundation:material:134>, <liquid:platinum>);
skyOrchardIngotsTier2("prometheum", <metallurgy:prometheum_ingot>, <liquid:prometheum>);
skyOrchardIngotsTier2("shadowiron", <metallurgy:shadow_iron_ingot>, <liquid:shadow_iron>);
skyOrchardIngotsTier2("vyroxeres", <metallurgy:vyroxeres_ingot>, <liquid:vyroxeres>);
skyOrchardIngotsTier2("aluminum", <thermalfoundation:material:132>, <liquid:aluminum>);
//
// Metalle Tier 3
//
skyOrchardIngotsTier3("adamantine", <metallurgy:adamantine_ingot>, <liquid:adamantine>);
skyOrchardIngotsTier3("astralsilver", <metallurgy:astral_silver_ingot>, <liquid:astral_silver>);
skyOrchardIngotsTier3("atlarus", <metallurgy:atlarus_ingot>, <liquid:atlarus>);
skyOrchardIngotsTier3("carmot", <metallurgy:carmot_ingot>, <liquid:carmot>);
skyOrchardIngotsTier3("eximite", <metallurgy:eximite_ingot>, <liquid:eximite>);
skyOrchardIngotsTier3("kalendrite", <metallurgy:kalendrite_ingot>, <liquid:kalendrite>);
skyOrchardIngotsTier3("lutetium", <metallurgy:lutetium_ingot>, <liquid:lutetium>);
skyOrchardIngotsTier3("meutoite", <metallurgy:meutoite_ingot>, <liquid:meutoite>);
skyOrchardIngotsTier3("mithril", <metallurgy:mithril_ingot>, <liquid:mithril>);
skyOrchardIngotsTier3("orichalcum", <metallurgy:orichalcum_ingot>, <liquid:orichalcum>);
skyOrchardIngotsTier3("rubracium", <metallurgy:rubracium_ingot>, <liquid:rubracium>);
skyOrchardIngotsTier3("sanguinite", <metallurgy:sanguinite_ingot>, <liquid:sanguinite>);
skyOrchardIngotsTier3("vulcanite", <metallurgy:vulcanite_ingot>, <liquid:vulcanite>);

skyOrchardIngotsTier3("iridium", <thermalfoundation:material:135>, <liquid:iridium>);

skyOrchardIngotsTier3("cobalt", <tconstruct:ingots:0>, <liquid:cobalt>);
skyOrchardIngotsTier3("ardite", <tconstruct:ingots:1>, <liquid:ardite>);

skyOrchardIngotsTier3("thorium", <nuclearcraft:ingot:3>, <liquid:thorium>);
skyOrchardIngotsTier3("boron", <nuclearcraft:ingot:5>, <liquid:boron>);
skyOrchardIngotsTier3("lithium", <nuclearcraft:ingot:6>, <liquid:lithium>);
skyOrchardIngotsTier3("magnesium", <nuclearcraft:ingot:7>, <liquid:magnesium>);

skyOrchardIngotsTier3("uranium", <techreborn:ingot:24>, <liquid:uranium>);
}
