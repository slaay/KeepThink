//
//  KtAboutAppViewController.h
//  KeepThink
//
//  Created by Presley on 26/01/15.
//  Copyright (c) 2015 SlaaySourceCoders. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KtAboutAppViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (strong, nonatomic) NSString *photoFilename;
@end
