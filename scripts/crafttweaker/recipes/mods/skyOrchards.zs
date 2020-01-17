#
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemDefinition;

import scripts.crafttweaker.craftingUtils;

function init() {

// recipes.addShaped(null,
// 	[[null, null, null],
// 	[null, null, null], 
// 	[null, null, null]]);

// recipes.addShapeless(<>, [<>]);

// Cottonwood
recipes.addShaped(<sky_orchards:sapling_cottonwood>, 
    craftingUtils.createSurroundedRecipe(<minecraft:string>, <ore:treeSapling>)
);
recipes.addShaped(<minecraft:wool>, 
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_cottonwood>, <sky_orchards:resin_cottonwood>)
);
furnace.addRecipe(<minecraft:wool>, <sky_orchards:amber_cottonwood>, 0.7);

// Dirt
recipes.addShaped(<sky_orchards:sapling_dirt>, 
    craftingUtils.createSurroundedRecipe(<minecraft:dirt>, <ore:treeSapling>)
);
recipes.addShaped(<minecraft:dirt>, 
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_cottonwood>, <sky_orchards:resin_cottonwood>)
);
furnace.addRecipe(<minecraft:dirt>, <sky_orchards:amber_dirt>, 0.7);

// Clay
recipes.addShaped(<sky_orchards:sapling_clay>, 
    craftingUtils.createSurroundedRecipe(<minecraft:clay_ball>, <ore:treeSapling>)
);
recipes.addShaped(<minecraft:clay>, 
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_clay>, <sky_orchards:resin_clay>)
);
furnace.addRecipe(<minecraft:clay>, <sky_orchards:amber_clay>, 0.7);

// Sand
recipes.addShaped(<sky_orchards:sapling_sand>, 
    craftingUtils.createSurroundedRecipe(<minecraft:sand>, <ore:treeSapling>)
);
recipes.addShaped(<minecraft:sand>, 
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_sand>, <sky_orchards:resin_sand>)
);
furnace.addRecipe(<minecraft:sand>, <sky_orchards:amber_sand>, 0.7);

// Gravel
recipes.addShaped(<sky_orchards:sapling_gravel>, 
    craftingUtils.createSurroundedRecipe(<minecraft:gravel>, <ore:treeSapling>)
);
recipes.addShaped(<minecraft:gravel>, 
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_gravel>, <sky_orchards:resin_gravel>)
);
furnace.addRecipe(<minecraft:gravel>, <sky_orchards:amber_gravel>, 0.7);

// Sapling Iron
recipes.addShaped(<sky_orchards:sapling_iron>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotIron>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_iron>, 
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_iron>, <sky_orchards:resin_iron>)
);
furnace.addRecipe(<minecraft:iron_ingot>, <sky_orchards:amber_iron>, 0.7);
tinkers.addMelting(<liquid:iron> * 288, <sky_orchards:amber_iron>);
tinkers.addMelting(<liquid:iron> * 16, <sky_orchards:acorn_iron>);

// Sapling Gold
recipes.addShaped(<sky_orchards:sapling_gold>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotGold>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_gold>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_gold>, <sky_orchards:resin_gold>)
);
furnace.addRecipe(<minecraft:gold_ingot>, <sky_orchards:amber_gold>, 0.7);
tinkers.addMelting(<liquid:gold> * 288, <sky_orchards:amber_gold>);
tinkers.addMelting(<liquid:gold> * 16, <sky_orchards:acorn_gold>);

// Sapling Lapis
recipes.addShaped(<sky_orchards:sapling_lapis>, 
    craftingUtils.createSurroundedRecipe(<ore:dye:4>, <ore:treeSapling>)
);
recipes.addShaped(<minecraft:lapis_block>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_gold>, <sky_orchards:resin_gold>)
);
furnace.addRecipe(<minecraft:lapis_block>, <sky_orchards:amber_lapis>, 0.7);

// Sapling Redstone
recipes.addShaped(<sky_orchards:sapling_redstone>, 
    craftingUtils.createSurroundedRecipe(<minecraft:redstone>, <ore:treeSapling>)
);
recipes.addShaped(<minecraft:redstone_block>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_redstone>, <sky_orchards:resin_redstone>)
);
furnace.addRecipe(<minecraft:redstone_block>, <sky_orchards:amber_redstone>, 0.7);

// Sapling Diamond
recipes.addShaped(<sky_orchards:sapling_diamond>, 
	craftingUtils.createSurroundedRecipe(<ore:gemDiamond>, <ore:treeSapling>)
);
recipes.addShaped(<minecraft:diamond_block>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_diamond>, <sky_orchards:resin_diamond>)
);
furnace.addRecipe(<minecraft:diamond_block>, <sky_orchards:amber_diamond>, 0.7);

// Sapling Bone
recipes.addShaped(<sky_orchards:sapling_bone>, 
	craftingUtils.createSurroundedRecipe(<minecraft:bone>, <ore:treeSapling>)
);
recipes.addShaped(<minecraft:bone_block>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_bone>, <sky_orchards:resin_bone>)
);
furnace.addRecipe(<minecraft:bone_block>, <sky_orchards:amber_bone>, 0.7);

// Sapling Cookie
recipes.addShaped(<sky_orchards:sapling_cookie>, 
	craftingUtils.createSurroundedRecipe(<minecraft:cookie>, <ore:treeSapling>)
);
recipes.addShaped(<minecraft:cookie>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_cookie>, <sky_orchards:resin_cookie>)
);
furnace.addRecipe(<minecraft:cookie>, <sky_orchards:amber_cookie>, 0.7);

// Sapling Copper
recipes.addShaped(<sky_orchards:sapling_copper>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotCopper>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_copper>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_copper>, <sky_orchards:resin_copper>)
);
furnace.addRecipe(<thermalfoundation:material:128>, <sky_orchards:amber_copper>, 0.7);
tinkers.addMelting(<liquid:copper> * 288, <sky_orchards:amber_copper>);
tinkers.addMelting(<liquid:copper> * 16, <sky_orchards:acorn_copper>);

// Sapling Lead
recipes.addShaped(<sky_orchards:sapling_lead>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotLead>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_lead>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_lead>, <sky_orchards:resin_lead>)
);
furnace.addRecipe(<thermalfoundation:material:131>, <sky_orchards:amber_lead>, 0.7);
tinkers.addMelting(<liquid:lead> * 288, <sky_orchards:amber_lead>);
tinkers.addMelting(<liquid:lead> * 16, <sky_orchards:acorn_lead>);

// Sapling Tin
recipes.addShaped(<sky_orchards:sapling_tin>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotTin>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_tin>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_tin>, <sky_orchards:resin_tin>)
);
furnace.addRecipe(<thermalfoundation:material:129>, <sky_orchards:amber_tin>, 0.7);
tinkers.addMelting(<liquid:tin> * 288, <sky_orchards:amber_tin>);
tinkers.addMelting(<liquid:tin> * 16, <sky_orchards:acorn_tin>);

// Sapling Silver
recipes.addShaped(<sky_orchards:sapling_silver>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotSilver>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_silver>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_silver>, <sky_orchards:resin_silver>)
);
furnace.addRecipe(<thermalfoundation:material:130>, <sky_orchards:amber_silver>, 0.7);
tinkers.addMelting(<liquid:silver> * 288, <sky_orchards:amber_silver>);
tinkers.addMelting(<liquid:silver> * 16, <sky_orchards:acorn_silver>);

// Sapling Nickel
recipes.addShaped(<sky_orchards:sapling_nickel>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotNickel>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_nickel>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_nickel>, <sky_orchards:resin_nickel>)
);
furnace.addRecipe(<thermalfoundation:material:133>, <sky_orchards:amber_nickel>, 0.7);
tinkers.addMelting(<liquid:nickel> * 288, <sky_orchards:amber_nickel>);
tinkers.addMelting(<liquid:nickel> * 16, <sky_orchards:acorn_nickel>);

// Emerald
recipes.addShaped(<sky_orchards:sapling_emerald>, 
	craftingUtils.createSurroundedRecipe(<ore:gemEmerald>, <ore:treeSapling>)
);
recipes.addShaped(<minecraft:emerald_block>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_emerald>, <sky_orchards:resin_emerald>)
);
furnace.addRecipe(<minecraft:emerald_block>, <sky_orchards:amber_emerald>, 0.7);

// Quartz
recipes.addShaped(<sky_orchards:sapling_quartz>, 
	craftingUtils.createSurroundedRecipe(<minecraft:quartz>, <ore:treeSapling>)
);
recipes.addShaped(<minecraft:quartz_block>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_quartz>, <sky_orchards:resin_quartz>)
);
furnace.addRecipe(<minecraft:quartz_block>, <sky_orchards:amber_quartz>, 0.7);

// Netherrack
recipes.addShaped(<sky_orchards:sapling_netherrack>, 
	craftingUtils.createSurroundedRecipe(<minecraft:netherrack>, <ore:treeSapling>)
);
recipes.addShaped(<minecraft:netherrack>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_netherrack>, <sky_orchards:resin_netherrack>)
);
furnace.addRecipe(<minecraft:netherrack>, <sky_orchards:amber_netherrack>, 0.7);

// Glowstone
recipes.addShaped(<sky_orchards:sapling_glowstone>, 
    craftingUtils.createSurroundedRecipe(<minecraft:glowstone_dust>, <ore:treeSapling>)
);
recipes.addShaped( <minecraft:glowstone>, 
	craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_glowstone>, <sky_orchards:resin_glowstone>)
);
furnace.addRecipe(<minecraft:glowstone>, <sky_orchards:amber_glowstone>, 0.7);

// Sapling Adamantine
recipes.addShaped(<sky_orchards:sapling_adamantine>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotAdamantine>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_adamantine>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_adamantine>, <sky_orchards:resin_adamantine>)
);
furnace.addRecipe(<metallurgy:adamantine_ingot>, <sky_orchards:amber_adamantine>, 0.7);
tinkers.addMelting(<liquid:adamantine> * 288, <sky_orchards:amber_adamantine>);
tinkers.addMelting(<liquid:adamantine> * 16, <sky_orchards:acorn_adamantine>);

// Sapling Alduorite
recipes.addShaped(<sky_orchards:sapling_alduorite>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotAlduorite>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_alduorite>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_alduorite>, <sky_orchards:resin_alduorite>)
);
furnace.addRecipe(<metallurgy:alduorite_ingot>, <sky_orchards:amber_alduorite>, 0.7);
tinkers.addMelting(<liquid:alduorite> * 288, <sky_orchards:amber_alduorite>);
tinkers.addMelting(<liquid:alduorite> * 16, <sky_orchards:acorn_alduorite>);

// Sapling Astralsilver
recipes.addShaped(<sky_orchards:sapling_astralsilver>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotAstralsilver>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_astralsilver>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_astralsilver>, <sky_orchards:resin_astralsilver>)
);
furnace.addRecipe(<metallurgy:astral_silver_ingot>, <sky_orchards:amber_astralsilver>, 0.7);
tinkers.addMelting(<liquid:astral_silver> * 288, <sky_orchards:amber_astralsilver>);
tinkers.addMelting(<liquid:astral_silver> * 16, <sky_orchards:acorn_astralsilver>);

// Sapling Atlarus
recipes.addShaped(<sky_orchards:sapling_atlarus>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotAtlarus>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_atlarus>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_atlarus>, <sky_orchards:resin_atlarus>)
);
furnace.addRecipe(<metallurgy:atlarus_ingot>, <sky_orchards:amber_atlarus>, 0.7);
tinkers.addMelting(<liquid:atlarus> * 288, <sky_orchards:amber_atlarus>);
tinkers.addMelting(<liquid:atlarus> * 16, <sky_orchards:acorn_atlarus>);

// Sapling Carmot
recipes.addShaped(<sky_orchards:sapling_carmot>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotCarmot>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_carmot>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_carmot>, <sky_orchards:resin_carmot>)
);
furnace.addRecipe(<metallurgy:carmot_ingot>, <sky_orchards:amber_carmot>, 0.7);
tinkers.addMelting(<liquid:carmot> * 288, <sky_orchards:amber_carmot>);
tinkers.addMelting(<liquid:carmot> * 16, <sky_orchards:acorn_carmot>);

// Sapling Ceruclase
recipes.addShaped(<sky_orchards:sapling_ceruclase>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotCeruclase>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_ceruclase>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_ceruclase>, <sky_orchards:resin_ceruclase>)
);
furnace.addRecipe(<metallurgy:ceruclase_ingot>, <sky_orchards:amber_ceruclase>, 0.7);
tinkers.addMelting(<liquid:ceruclase> * 288, <sky_orchards:amber_ceruclase>);
tinkers.addMelting(<liquid:ceruclase> * 16, <sky_orchards:acorn_ceruclase>);

// Sapling Deep_Iron
recipes.addShaped(<sky_orchards:sapling_deepiron>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotDeepIron>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_deepiron>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_deepiron>, <sky_orchards:resin_deepiron>)
);
furnace.addRecipe(<metallurgy:deep_iron_ingot>, <sky_orchards:amber_deepiron>, 0.7);
tinkers.addMelting(<liquid:deep_iron> * 288, <sky_orchards:amber_deepiron>);
tinkers.addMelting(<liquid:deep_iron> * 16, <sky_orchards:acorn_deepiron>);

// Sapling Eximite
recipes.addShaped(<sky_orchards:sapling_eximite>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotEximite>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_eximite>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_eximite>, <sky_orchards:resin_eximite>)
);
furnace.addRecipe(<metallurgy:eximite_ingot>, <sky_orchards:amber_eximite>, 0.7);
tinkers.addMelting(<liquid:eximite> * 288, <sky_orchards:amber_eximite>);
tinkers.addMelting(<liquid:eximite> * 16, <sky_orchards:acorn_eximite>);

// Sapling Ignatius
recipes.addShaped(<sky_orchards:sapling_ignatius>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotIgnatius>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_ignatius>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_ignatius>, <sky_orchards:resin_ignatius>)
);
furnace.addRecipe(<metallurgy:ignatius_ingot>, <sky_orchards:amber_ignatius>, 0.7);
tinkers.addMelting(<liquid:ignatius> * 288, <sky_orchards:amber_ignatius>);
tinkers.addMelting(<liquid:ignatius> * 16, <sky_orchards:acorn_ignatius>);

// Sapling Infuscolium
recipes.addShaped(<sky_orchards:sapling_infuscolium>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotInfuscolium>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_infuscolium>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_infuscolium>, <sky_orchards:resin_infuscolium>)
);
furnace.addRecipe(<metallurgy:infuscolium_ingot>, <sky_orchards:amber_infuscolium>, 0.7);
tinkers.addMelting(<liquid:infuscolium> * 288, <sky_orchards:amber_infuscolium>);
tinkers.addMelting(<liquid:infuscolium> * 16, <sky_orchards:acorn_infuscolium>);

// Sapling Kalendrite
recipes.addShaped(<sky_orchards:sapling_kalendrite>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotKalendrite>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_kalendrite>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_kalendrite>, <sky_orchards:resin_kalendrite>)
);
furnace.addRecipe(<metallurgy:kalendrite_ingot>, <sky_orchards:amber_kalendrite>, 0.7);
tinkers.addMelting(<liquid:kalendrite> * 288, <sky_orchards:amber_kalendrite>);
tinkers.addMelting(<liquid:kalendrite> * 16, <sky_orchards:acorn_kalendrite>);

// Sapling Lemurite
recipes.addShaped(<sky_orchards:sapling_lemurite>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotLemurite>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_lemurite>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_lemurite>, <sky_orchards:resin_lemurite>)
);
furnace.addRecipe(<metallurgy:lemurite_ingot>, <sky_orchards:amber_lemurite>, 0.7);
tinkers.addMelting(<liquid:lemurite> * 288, <sky_orchards:amber_lemurite>);
tinkers.addMelting(<liquid:lemurite> * 16, <sky_orchards:acorn_lemurite>);

// Sapling Lutetium
recipes.addShaped(<sky_orchards:sapling_lutetium>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotLutetium>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_lutetium>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_lutetium>, <sky_orchards:resin_lutetium>)
);
furnace.addRecipe(<metallurgy:lutetium_ingot>, <sky_orchards:amber_lutetium>, 0.7);
tinkers.addMelting(<liquid:lutetium> * 288, <sky_orchards:amber_lutetium>);
tinkers.addMelting(<liquid:lutetium> * 16, <sky_orchards:acorn_lutetium>);

// Sapling Manganese
recipes.addShaped(<sky_orchards:sapling_manganese>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotManganese>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_manganese>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_manganese>, <sky_orchards:resin_manganese>)
);
furnace.addRecipe(<metallurgy:manganese_ingot>, <sky_orchards:amber_manganese>, 0.7);
tinkers.addMelting(<liquid:manganese> * 288, <sky_orchards:amber_manganese>);
tinkers.addMelting(<liquid:manganese> * 16, <sky_orchards:acorn_manganese>);

// Sapling Meutoite
recipes.addShaped(<sky_orchards:sapling_meutoite>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotMeutoite>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_meutoite>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_meutoite>, <sky_orchards:resin_meutoite>)
);
furnace.addRecipe(<metallurgy:meutoite_ingot>, <sky_orchards:amber_meutoite>, 0.7);
tinkers.addMelting(<liquid:meutoite> * 288, <sky_orchards:amber_meutoite>);
tinkers.addMelting(<liquid:meutoite> * 16, <sky_orchards:acorn_meutoite>);

// Sapling Midasium
recipes.addShaped(<sky_orchards:sapling_midasium>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotMidasium>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_midasium>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_midasium>, <sky_orchards:resin_midasium>)
);
furnace.addRecipe(<metallurgy:midasium_ingot>, <sky_orchards:amber_midasium>, 0.7);
tinkers.addMelting(<liquid:midasium> * 288, <sky_orchards:amber_midasium>);
tinkers.addMelting(<liquid:midasium> * 16, <sky_orchards:acorn_midasium>);

// Sapling Mithril
recipes.addShaped(<sky_orchards:sapling_mithril>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotMithril>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_mithril>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_mithril>, <sky_orchards:resin_mithril>)
);
furnace.addRecipe(<metallurgy:mithril_ingot>, <sky_orchards:amber_mithril>, 0.7);
tinkers.addMelting(<liquid:mithril> * 288, <sky_orchards:amber_mithril>);
tinkers.addMelting(<liquid:mithril> * 16, <sky_orchards:acorn_mithril>);

// Sapling Orichalcum
recipes.addShaped(<sky_orchards:sapling_orichalcum>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotOrichalcum>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_orichalcum>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_orichalcum>, <sky_orchards:resin_orichalcum>)
);
furnace.addRecipe(<metallurgy:orichalcum_ingot>, <sky_orchards:amber_orichalcum>, 0.7);
tinkers.addMelting(<liquid:orichalcum> * 288, <sky_orchards:amber_orichalcum>);
tinkers.addMelting(<liquid:orichalcum> * 16, <sky_orchards:acorn_orichalcum>);

// Sapling Osmium
recipes.addShaped(<sky_orchards:sapling_osmium>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotOsmium>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_osmium>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_osmium>, <sky_orchards:resin_osmium>)
);
furnace.addRecipe(<metallurgy:osmium_ingot>, <sky_orchards:amber_osmium>, 0.7);
tinkers.addMelting(<liquid:osmium> * 288, <sky_orchards:amber_osmium>);
tinkers.addMelting(<liquid:osmium> * 16, <sky_orchards:acorn_osmium>);

// Sapling Oureclase
recipes.addShaped(<sky_orchards:sapling_oureclase>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotOureclase>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_oureclase>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_oureclase>, <sky_orchards:resin_oureclase>)
);
furnace.addRecipe(<metallurgy:oureclase_ingot>, <sky_orchards:amber_oureclase>, 0.7);
tinkers.addMelting(<liquid:oureclase> * 288, <sky_orchards:amber_oureclase>);
tinkers.addMelting(<liquid:oureclase> * 16, <sky_orchards:acorn_oureclase>);

// Sapling Platinum
recipes.addShaped(<sky_orchards:sapling_platinum>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotPlatinum>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_platinum>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_platinum>, <sky_orchards:resin_platinum>)
);
furnace.addRecipe(<metallurgy:platinum_ingot>, <sky_orchards:amber_platinum>, 0.7);
tinkers.addMelting(<liquid:platinum> * 288, <sky_orchards:amber_platinum>);
tinkers.addMelting(<liquid:platinum> * 16, <sky_orchards:acorn_platinum>);

// Sapling Prometheum
recipes.addShaped(<sky_orchards:sapling_prometheum>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotPrometheum>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_prometheum>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_prometheum>, <sky_orchards:resin_prometheum>)
);
furnace.addRecipe(<metallurgy:prometheum_ingot>, <sky_orchards:amber_prometheum>, 0.7);
tinkers.addMelting(<liquid:prometheum> * 288, <sky_orchards:amber_prometheum>);
tinkers.addMelting(<liquid:prometheum> * 16, <sky_orchards:acorn_prometheum>);

// Sapling Rubracium
recipes.addShaped(<sky_orchards:sapling_rubracium>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotRubracium>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_rubracium>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_rubracium>, <sky_orchards:resin_rubracium>)
);
furnace.addRecipe(<metallurgy:rubracium_ingot>, <sky_orchards:amber_rubracium>, 0.7);
tinkers.addMelting(<liquid:rubracium> * 288, <sky_orchards:amber_rubracium>);
tinkers.addMelting(<liquid:rubracium> * 16, <sky_orchards:acorn_rubracium>);

// Sapling Sanguinite
recipes.addShaped(<sky_orchards:sapling_sanguinite>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotSanguinite>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_sanguinite>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_sanguinite>, <sky_orchards:resin_sanguinite>)
);
furnace.addRecipe(<metallurgy:sanguinite_ingot>, <sky_orchards:amber_sanguinite>, 0.7);
tinkers.addMelting(<liquid:sanguinite> * 288, <sky_orchards:amber_sanguinite>);
tinkers.addMelting(<liquid:sanguinite> * 16, <sky_orchards:acorn_sanguinite>);

// Sapling Shadow_Iron
recipes.addShaped(<sky_orchards:sapling_shadowiron>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotShadowIron>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_shadowiron>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_shadowiron>, <sky_orchards:resin_shadowiron>)
);
furnace.addRecipe(<metallurgy:shadow_iron_ingot>, <sky_orchards:amber_shadowiron>, 0.7);
tinkers.addMelting(<liquid:shadow_iron> * 288, <sky_orchards:amber_shadowiron>);
tinkers.addMelting(<liquid:shadow_iron> * 16, <sky_orchards:acorn_shadowiron>);

// Sapling Vulcanite
recipes.addShaped(<sky_orchards:sapling_vulcanite>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotVulcanite>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_vulcanite>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_vulcanite>, <sky_orchards:resin_vulcanite>)
);
furnace.addRecipe(<metallurgy:vulcanite_ingot>, <sky_orchards:amber_vulcanite>, 0.7);
tinkers.addMelting(<liquid:vulcanite> * 288, <sky_orchards:amber_vulcanite>);
tinkers.addMelting(<liquid:vulcanite> * 16, <sky_orchards:acorn_vulcanite>);

// Sapling Vyroxeres
recipes.addShaped(<sky_orchards:sapling_vyroxeres>, 
    craftingUtils.createSurroundedRecipe(<ore:ingotVyroxeres>, <ore:treeSapling>)
);
recipes.addShaped(<sky_orchards:amber_vyroxeres>,
    craftingUtils.createCheckerboardRecipe(<sky_orchards:acorn_vyroxeres>, <sky_orchards:resin_vyroxeres>)
);
furnace.addRecipe(<metallurgy:vyroxeres_ingot>, <sky_orchards:amber_vyroxeres>, 0.7);
tinkers.addMelting(<liquid:vyroxeres> * 288, <sky_orchards:amber_vyroxeres>);
tinkers.addMelting(<liquid:vyroxeres> * 16, <sky_orchards:acorn_vyroxeres>);


//
//
//


}
