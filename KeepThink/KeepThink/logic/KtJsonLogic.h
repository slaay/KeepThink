//
//  KtJsonLogic.h
//  KeepThink
//
//  Created by Presley on 22/01/15.
//  Copyright (c) 2015 SlaaySourceCoders. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KtSharedVariables.h"

@interface KtJsonLogic : NSObject

+(NSArray *)getNextQuestion:(int)questionByCount DiffTypeValue:(int)DifficultyType;

@end
