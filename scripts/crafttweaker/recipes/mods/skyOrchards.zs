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

recipes.addShaped(resourceSapling,
    craftingUtils.createSkyOrchardTier1(myIngotName)
);

recipes.addShaped(resourceAmber, 
    craftingUtils.createCheckerboardRecipe(resourceAcorn, resourceResin)
);

// Furnace Smelting
furnace.addRecipe(myIngotName, resourceAmber, 0.7);

// Tinkers Construct Smelting
tinkers.addMelting(resourceLiquid * 288, resourceAmber);
tinkers.addMelting(resourceLiquid * 16,  resourceAcorn);
tinkers.addMelting(resourceLiquid * 16,  resourceResin);

print("DEBUG: CONSTRUCTOR ENDE "+metallName);
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
    craftingUtils.createSkyOrchardTier1(myItemName)
);

recipes.addShaped(myBlockName, 
    craftingUtils.createCheckerboardRecipe(resourceAcorn, resourceResin)
);

// Furnace Smelting
furnace.addRecipe(myBlockName, resourceAmber, 0.7);

print("DEBUG: CONSTRUCTOR ENDE "+materialName);
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

skyOrchardBlocks("lapis", <minecraft:lapis_block>, <minecraft:dye:4>);
skyOrchardBlocks("redstone", <minecraft:redstone_block>, <minecraft:redstone>);
skyOrchardBlocks("diamond", <minecraft:diamond_block>, <minecraft:diamond>);
skyOrchardBlocks("bone", <minecraft:bone_block>, <minecraft:bone>);
skyOrchardBlocks("emerald", <minecraft:emerald_block>, <minecraft:emerald>);
skyOrchardBlocks("quartz", <minecraft:quartz_block>, <minecraft:quartz>);
skyOrchardBlocks("glowstone", <minecraft:glowstone>, <minecraft:glowstone_dust>);

// skyOrchardBlocks("ruby", <techreborn:storage2:3>, <techreborn:gem>);
// skyOrchardBlocks("saphire", <techreborn:storage2:4>, <techreborn:gem:1>);
// skyOrchardBlocks("peridot", <techreborn:storage2:5>, <techreborn:gem:2>);

skyOrchardBlocks("niter", <jaopca:block_blockniter>, <thermalfoundation:material:772>);
skyOrchardBlocks("potash", <jaopca:block_blockpotash>, <metallurgy:potash>);


// 
// 
// Neue Methode mit neuer Funktion
// 
// 
// Metalle Tier 1
// 
skyOrchardIngots("iron", <minecraft:iron_ingot>, <liquid:iron>);
skyOrchardIngots("gold", <minecraft:gold_ingot>, <liquid:gold>);
skyOrchardIngots("copper", <thermalfoundation:material:128>, <liquid:copper>);
skyOrchardIngots("lead", <thermalfoundation:material:131>, <liquid:lead>);
skyOrchardIngots("tin", <thermalfoundation:material:129>, <liquid:tin>);
skyOrchardIngots("nickel", <thermalfoundation:material:133>, <liquid:nickel>);
skyOrchardIngots("manganese", <metallurgy:manganese_ingot>, <liquid:manganese>);
skyOrchardIngots("osmium", <metallurgy:osmium_ingot>, <liquid:osmium>);
skyOrchardIngots("zinc", <techreborn:ingot:24>, <liquid:zinc>);
// 
// Metalle Tier 2
// 
skyOrchardIngots("silver", <thermalfoundation:material:130>, <liquid:silver>);
skyOrchardIngots("alduorite", <metallurgy:alduorite_ingot>, <liquid:alduorite>);
skyOrchardIngots("ceruclase", <metallurgy:ceruclase_ingot>, <liquid:ceruclase>);
skyOrchardIngots("deepiron", <metallurgy:deep_iron_ingot>, <liquid:deep_iron>);
skyOrchardIngots("ignatius", <metallurgy:ignatius_ingot>, <liquid:ignatius>);
skyOrchardIngots("infuscolium", <metallurgy:infuscolium_ingot>, <liquid:infuscolium>);
skyOrchardIngots("lemurite", <metallurgy:lemurite_ingot>, <liquid:lemurite>);
skyOrchardIngots("midasium", <metallurgy:midasium_ingot>, <liquid:midasium>);
skyOrchardIngots("oureclase", <metallurgy:oureclase_ingot>, <liquid:oureclase>);
skyOrchardIngots("platinum", <metallurgy:platinum_ingot>, <liquid:platinum>);
skyOrchardIngots("prometheum", <metallurgy:prometheum_ingot>, <liquid:prometheum>);
skyOrchardIngots("shadowiron", <metallurgy:shadow_iron_ingot>, <liquid:shadow_iron>);
skyOrchardIngots("vyroxeres", <metallurgy:vyroxeres_ingot>, <liquid:vyroxeres>);
// 
// Metalle Tier 3
// 
skyOrchardIngots("adamantine", <metallurgy:adamantine_ingot>, <liquid:adamantine>);
skyOrchardIngots("astralsilver", <metallurgy:astral_silver_ingot>, <liquid:astral_silver>);
skyOrchardIngots("atlarus", <metallurgy:atlarus_ingot>, <liquid:atlarus>);
skyOrchardIngots("carmot", <metallurgy:carmot_ingot>, <liquid:carmot>);
skyOrchardIngots("eximite", <metallurgy:eximite_ingot>, <liquid:eximite>);
skyOrchardIngots("kalendrite", <metallurgy:kalendrite_ingot>, <liquid:kalendrite>);
skyOrchardIngots("lutetium", <metallurgy:lutetium_ingot>, <liquid:lutetium>);
skyOrchardIngots("meutoite", <metallurgy:meutoite_ingot>, <liquid:meutoite>);
skyOrchardIngots("mithril", <metallurgy:mithril_ingot>, <liquid:mithril>);
skyOrchardIngots("orichalcum", <metallurgy:orichalcum_ingot>, <liquid:orichalcum>);
skyOrchardIngots("rubracium", <metallurgy:rubracium_ingot>, <liquid:rubracium>);
skyOrchardIngots("sanguinite", <metallurgy:sanguinite_ingot>, <liquid:sanguinite>);
skyOrchardIngots("vulcanite", <metallurgy:vulcanite_ingot>, <liquid:vulcanite>);

skyOrchardIngots("iridium", <thermalfoundation:material:135>, <liquid:iridium>);
skyOrchardIngots("aluminum", <thermalfoundation:material:132>, <liquid:aluminum>);

skyOrchardIngots("cobalt", <tconstruct:ingots:0>, <liquid:cobalt>);
skyOrchardIngots("ardite", <tconstruct:ingots:1>, <liquid:ardite>);

skyOrchardIngots("thorium", <nuclearcraft:ingot:3>, <liquid:thorium>);
skyOrchardIngots("boron", <nuclearcraft:ingot:5>, <liquid:boron>);
skyOrchardIngots("lithium", <nuclearcraft:ingot:6>, <liquid:lithium>);
skyOrchardIngots("magnesium", <nuclearcraft:ingot:7>, <liquid:magnesium>);

skyOrchardIngots("uranium", <techreborn:ingot:24>, <liquid:uranium>);

}
