//
//  KtAppDelegate.h
//  KeepThink
//
//  Created by Presley on 15/01/15.
//  Copyright (c) 2015 SlaaySourceCoders. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KtAppDelegate : UIViewController <UITableViewDelegate, UITableViewDataSource, NSURLSessionDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, copy) void(^backgroundTransferCompletionHandler)();

@end
