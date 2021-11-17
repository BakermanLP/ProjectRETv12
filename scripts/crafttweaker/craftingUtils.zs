#priority 4049

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.liquid.ILiquidDefinition;

/**
 * Creates a surrounded recipe.
 * 1 1 1
 * 1 2 1
 * 1 1 1
 * @param {IIngredient} surroundIngredient - The ingredient to surround the core
 * @param {IIngredient} coreIngredient - The core ingredient
 */
function createSurroundedRecipe(surroundIngredient as IIngredient, coreIngredient as IIngredient) as IIngredient[][] {
    return [
        [surroundIngredient, surroundIngredient, surroundIngredient],
        [surroundIngredient, coreIngredient, surroundIngredient],
        [surroundIngredient, surroundIngredient, surroundIngredient]
    ];
}

/**
 * Creates a checkerboard recipe.
 * 1 2 1
 * 2 1 2
 * 1 2 1
 * @param {IIngredient} firstIngedient - The ingredient in corners and center
 * @param {IIngredient} secondIngredient - The other ingredient
 */
function createCheckerboardRecipe(firstIngredient as IIngredient, secondIngredient as IIngredient) as IIngredient[][] {
    return [
        [firstIngredient, secondIngredient, firstIngredient],
        [secondIngredient, firstIngredient, secondIngredient],
        [firstIngredient, secondIngredient, firstIngredient]
    ];
}

/**
 * Creates a 3x3 recipe using a single ingredient
 */
function create3By3(singleIngredient as IIngredient) as IIngredient[][] {
    return [
        [singleIngredient, singleIngredient, singleIngredient],
        [singleIngredient, singleIngredient, singleIngredient],
        [singleIngredient, singleIngredient, singleIngredient]
    ];
}

/**
 * Creates a SkyOrchard Recipe Tier 0
 */
function createSkyOrchardTier0(singleIngredient as IIngredient) as IIngredient[][] {
    return [
        [singleIngredient, singleIngredient, singleIngredient],
        [singleIngredient, <ore:treeSapling>, singleIngredient],
        [singleIngredient, singleIngredient, singleIngredient]
    ];
}
/**
 * Creates a SkyOrchard Recipe Tier 1
 */
function createSkyOrchardTier1(singleIngredient as IIngredient) as IIngredient[][] {
    return [
        [singleIngredient, singleIngredient, singleIngredient],
        [<thermalfoundation:fertilizer:1>, <ore:treeSapling>, <thermalfoundation:fertilizer:1>],
        [singleIngredient, singleIngredient, singleIngredient]
    ];
}

/**
 * Creates a SkyOrchard Recipe Tier 2
 */
function createSkyOrchardTier2(singleIngredient as IIngredient) as IIngredient[][] {
    return [
        [singleIngredient, <mekanism:substrate>, singleIngredient],
        [<thermalfoundation:fertilizer:1>, <ore:treeSapling>, <thermalfoundation:fertilizer:1>],
        [singleIngredient, <mekanism:substrate>, singleIngredient]
    ];
}

/**
 * Creates a SkyOrchard Recipe Tier 3
 */
function createSkyOrchardTier3(singleIngredient as IIngredient) as IIngredient[][] {
    return [
        [singleIngredient, <mekanism:substrate>, singleIngredient],
        [<thermalfoundation:fertilizer:1>, <ore:treeSapling>, <thermalfoundation:fertilizer:1>],
        [<techreborn:part:46>, <mekanism:substrate>, <techreborn:part:46>],
    ];
}

function getLiquid(name as string) as ILiquidDefinition{
    for liquidDefinition in game.liquids {
        if(liquidDefinition.name == name) {
            print("FOUND LIQUID: " + liquidDefinition.name);
            return liquidDefinition;
        }
    }
    logger.logError("Could not find liquid " + name);
    return null;
}
