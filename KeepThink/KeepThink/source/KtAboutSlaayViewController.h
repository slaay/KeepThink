//
//  KtAboutSlaayViewController.h
//  KeepThink
//
//  Created by Presley on 18/01/15.
//  Copyright (c) 2015 SlaaySourceCoders. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KtAboutSlaayViewController : UIViewController
//@property (strong, nonatomic) IBOutlet UIImageView *imgSanket;
//@property (strong, nonatomic) IBOutlet UIImageView *imgCasburn;
//@property (strong, nonatomic) IBOutlet UIImageView *imgAlison;
    @property (strong, nonatomic) IBOutlet UIImageView *imgPresley;
    @property (strong, nonatomic) IBOutlet UIImageView *imgVidel;
    @property (strong, nonatomic) IBOutlet UIImageView *imgSanket;
    @property (strong, nonatomic) IBOutlet UIImageView *imgCasburn;
    @property (strong, nonatomic) IBOutlet UIImageView *imgAlison;




- (IBAction)btnFacebook:(id)sender;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (strong, nonatomic) NSString *photoFilename;

@end
