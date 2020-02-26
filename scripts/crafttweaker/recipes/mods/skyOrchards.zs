#
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemDefinition;

import scripts.crafttweaker.craftingUtils;

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

    // Resource Items
    var resourceSapling as IItemStack = itemUtils.getItem(resourceNameSapling,resourceMeta);
    var resourceAmber as IItemStack = itemUtils.getItem(resourceNameAmber,resourceMeta);
    var resourceAcorn as IItemStack = itemUtils.getItem(resourceNameAcorn,resourceMeta);
    var resourceResin as IItemStack = itemUtils.getItem(resourceNameResin,resourceMeta);



    recipes.addShaped(resourceAmber,
        craftingUtils.createCheckerboardRecipe(resourceAcorn, resourceResin)
    );

    // Furnace Smelting
    furnace.addRecipe(myIngotName, resourceAmber, 0.7);

    // Tinkers Construct Smelting
    tinkers.addMelting(resourceLiquid * 288, resourceAmber);
    tinkers.addMelting(resourceLiquid * 16,  resourceAcorn);
    tinkers.addMelting(resourceLiquid * 16,  resourceResin);

}

function skyOrchardIngotsTier1(metallName as string, myIngotName as IItemStack, resourceLiquid as ILiquidStack) {
    // Sky Orchards zu Metall Ingots für Tier 1
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

    // Resource Items
    var resourceSapling as IItemStack = itemUtils.getItem(resourceNameSapling,resourceMeta);
    var resourceAmber as IItemStack = itemUtils.getItem(resourceNameAmber,resourceMeta);
    var resourceAcorn as IItemStack = itemUtils.getItem(resourceNameAcorn,resourceMeta);
    var resourceResin as IItemStack = itemUtils.getItem(resourceNameResin,resourceMeta);

    recipes.addShaped(resourceSapling,
        craftingUtils.createSkyOrchardTier0(myItemName)
    );

    recipes.addShaped(myBlockName,
        craftingUtils.createCheckerboardRecipe(resourceAcorn, resourceResin)
    );

    // Furnace Smelting
    furnace.addRecipe(myBlockName, resourceAmber, 0.7);

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

    // Resource Items
    var resourceSapling as IItemStack = itemUtils.getItem(resourceNameSapling,resourceMeta);
    var resourceAmber as IItemStack = itemUtils.getItem(resourceNameAmber,resourceMeta);
    var resourceAcorn as IItemStack = itemUtils.getItem(resourceNameAcorn,resourceMeta);
    var resourceResin as IItemStack = itemUtils.getItem(resourceNameResin,resourceMeta);

    recipes.addShaped(resourceSapling,
        craftingUtils.createSkyOrchardTier2(myItemName)
    );

    recipes.addShaped(myItemName,
        craftingUtils.createCheckerboardRecipe(resourceAcorn, resourceResin)
    );

    // Furnace Smelting
    furnace.addRecipe(myItemName, resourceAmber, 0.7);

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

// Warum diese nicht gehen, verstehe ich nicht
// skyOrchardGems("ruby", <techreborn:gem>);
// skyOrchardGems("saphire", <techreborn:gem:1>);
// skyOrchardGems("peridot", <techreborn:gem:2>);

//
// Metalle Tier 1
//
skyOrchardIngotsTier1("iron", <minecraft:iron_ingot>, <liquid:iron>);
skyOrchardIngotsTier1("gold", <minecraft:gold_ingot>, <liquid:gold>);
skyOrchardIngotsTier1("copper", <thermalfoundation:material:128>, <liquid:copper>);
skyOrchardIngotsTier1("lead", <thermalfoundation:material:131>, <liquid:lead>);
skyOrchardIngotsTier1("tin", <thermalfoundation:material:129>, <liquid:tin>);
skyOrchardIngotsTier1("nickel", <thermalfoundation:material:133>, <liquid:nickel>);
skyOrchardIngotsTier1("manganese", <metallurgy:manganese_ingot>, <liquid:manganese>);
skyOrchardIngotsTier1("osmium", <metallurgy:osmium_ingot>, <liquid:osmium>);
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
skyOrchardIngotsTier2("platinum", <metallurgy:platinum_ingot>, <liquid:platinum>);
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
