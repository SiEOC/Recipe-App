//
//  RARecipe.h
//  Recipe App
//
//  Created by Gamaliel Tellez on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface Recipes : NSObject

+ (NSInteger)count;

+ (NSDictionary *)recipeAtIndex:(NSInteger)index;

+ (NSString *)titleAtIndex:(NSInteger)index;

+ (NSString *)descriptionAtIndex:(NSInteger)index;

+ (NSInteger)ingredientCountAtIndex:(NSInteger)index;

+ (NSString *)ingredientTypeAtIndex:(NSInteger)ingIndex inRecipeAtIndex:(NSInteger)recIndex;

+ (NSString *)ingredientVolumeAtIndex:(NSInteger)ingIndex inRecipeAtIndex:(NSInteger)recIndex;

@end