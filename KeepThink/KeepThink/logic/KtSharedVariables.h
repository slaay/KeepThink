//
//  KtSharedVariables.h
//  KeepThink
//
//  Created by Presley on 22/01/15.
//  Copyright (c) 2015 SlaaySourceCoders. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KtSharedVariables : NSObject
    extern NSString * const jsonFileEasy;
    extern NSString * const jsonFileMedium;
    extern NSString * const jsonFileDifficult;
    extern NSString * const jsonFileText;

    extern NSString * const keyQuestion;
    extern NSString * const keyCatgory_1;
    extern NSString * const keyCategory_2;
    extern NSString * const keyCategory_2;
    extern NSString * const keyAnswer;
    extern NSString * const keyImageName;
    extern NSString * const keySide;

    extern NSInteger const MAX_SECONDS_COUNT;

    // JSON values positions  @[_Question, _Category_1, _Category_2, _ImageName, _ImageAnswer];
    extern NSInteger const INDEX_QUESTION;
    extern NSInteger const INDEX_CATEGORY_1;
    extern NSInteger const INDEX_CATEGORY_2;
    extern NSInteger const INDEX_IMAGE_NAME;
    extern NSInteger const INDEX_ANSWER;
    extern NSInteger const INDEX_SIDE;


    extern NSString *LINK_Faceboook;
    extern NSString *LINK_Twitter;
    extern NSString *LINK_GitHub;
    extern NSString *LINK_SLaaySourcecoders;
    extern NSString *LINK_SlaayFB_Profile;
    extern NSString *LINK_Github_Profile;

    extern NSString *SHARE_text;
@end
