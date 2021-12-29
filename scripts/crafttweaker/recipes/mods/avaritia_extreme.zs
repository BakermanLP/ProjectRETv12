function init() {
    # Creative Energy Cell
//    mods.avaritia.ExtremeCrafting.addShaped("NAMEPLACEHOLDER", <enderio:block_cap_bank:0> * 1, [[<avaritia:singularity:0>, null, null, null, null, null, null, null, <avaritia:singularity:0>], [null, <avaritia:singularity:3>, null, null, null, null, null, <avaritia:singularity:3>, null],[null, null, <jaopca:item_singularitycobalt>, null, null, null, <jaopca:item_singularitycobalt>, null, null],[null, null, null, <avaritia:singularity:10>, null, <avaritia:singularity:10>, null, null, null],[null, null, null, null, <enderio:block_cap_bank:3>, null, null, null, null],[null, null, null, <avaritia:singularity:10>, null, <avaritia:singularity:10>, null, null, null],[null, null, <jaopca:item_singularitycobalt>, null, null, null, <jaopca:item_singularitycobalt>, null, null],[null, <avaritia:singularity:3>, null, null, null, null, null, <avaritia:singularity:3>, null],[<avaritia:singularity:0>, null, null, null, null, null, null, null, <avaritia:singularity:0>]]);

    recipes.remove(<projecte:item.pe_philosophers_stone>);

    mods.extendedcrafting.TableCrafting.addShaped(0, <projecte:item.pe_philosophers_stone>.withTag({}), [
        [<mekanism:energycube>, <ore:listAllwater>, <industrialforegoing:laser_drill>, <ore:feather>, <enderio:block_cap_bank:2>], 
        [<ore:listAllwater>, <ore:listAllwater>, <minecraft:diamond>, <ore:feather>, <ore:feather>], 
        [<industrialforegoing:laser_drill>, <minecraft:diamond>, <industrialforegoing:laser_base>, <minecraft:diamond>, <industrialforegoing:laser_drill>], 
        [<ore:dirt>, <ore:dirt>, <minecraft:diamond>, <minecraft:lava_bucket>, <minecraft:lava_bucket>], 
        [<techreborn:high_voltage_su>, <ore:dirt>, <industrialforegoing:laser_drill>, <minecraft:lava_bucket>, <thermalexpansion:cell>]
    ]);
}
