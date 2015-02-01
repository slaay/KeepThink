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
    NSString * const jsonFileText = @"testjson.json";
//    NSString * const jsonFileText = @"jsonTemplate.json";


    NSString * const keyQuestion = @"question";
    NSString * const keyCatgory_1 = @"category_1";
    NSString * const keyCategory_2 = @"category_2";
    NSString * const keyAnswer = @"answer";
    NSString * const keyImageName = @"image";
    NSString * const keySide = @"side";

    NSInteger const MAX_SECONDS_COUNT = 2;
    NSInteger const INDEX_QUESTION = 0;
    NSInteger const INDEX_CATEGORY_1 = 1;
    NSInteger const INDEX_CATEGORY_2 = 2;
    NSInteger const INDEX_IMAGE_NAME = 3;
    NSInteger const INDEX_ANSWER = 4;
    NSInteger const INDEX_SIDE = 5;

    NSString *LINK_Faceboook = @"https://www.facebook.com/slaaysourcecoders";
    NSString *LINK_Twitter = @"";
    NSString *LINK_GitHub = @"";
    NSString *LINK_SLaaySourcecoders = @"www.slaaysourcecoders.in";
    NSString *LINK_SlaayFB_Profile = @"fb://profile/379887218802553";
    NSString *LINK_Github_Profile = @"https://github.com/slaay";

    NSString *SHARE_text = @"KeepThink is Awesome!";
@end
