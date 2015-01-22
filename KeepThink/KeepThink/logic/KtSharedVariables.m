//
//  KtSharedVariables.m
//  KeepThink
//
//  Created by Presley on 22/01/15.
//  Copyright (c) 2015 SlaaySourceCoders. All rights reserved.
//

#import "KtSharedVariables.h"

@implementation KtSharedVariables

    //How the JSON looks like {"question":"", "category_1":"-", "category_2":"", "answer":"", "image":""},

    NSString * const jsonFileEasy = @"easy.json";
    NSString * const jsonFileMedium = @"medium.json";
    NSString * const jsonFileDifficult = @"difficult.json";
    NSString * const jsonFileText = @"jsonTemplate.json";


    NSString * const keyQuestion = @"question";
    NSString * const keyCatgory_1 = @"category_1";
    NSString * const keyCategory_2 = @"category_2";
    NSString * const keyAnswer = @"answer";
    NSString * const keyImageName = @"image";

@end
