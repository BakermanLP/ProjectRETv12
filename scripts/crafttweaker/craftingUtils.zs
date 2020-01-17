#priority 4049

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

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

