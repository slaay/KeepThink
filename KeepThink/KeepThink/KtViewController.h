//
//  KtViewController.h
//  KeepThink
//
//  Created by Presley on 15/01/15.
//  Copyright (c) 2015 SlaaySourceCoders. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KtJsonLogic.h"

@interface KtViewController : UIViewController

    @property (strong, nonatomic) IBOutlet UILabel *lblTimer;
    @property (strong, nonatomic) IBOutlet UIButton *btnResultColor;
    @property (strong, nonatomic) IBOutlet UILabel *lblQuestion;
    @property (strong, nonatomic) IBOutlet UILabel *lblCategory_1;
    @property (strong, nonatomic) IBOutlet UILabel *lblcategory_2;
    @property (strong, nonatomic) IBOutlet UIImageView *imgQuestion;



    - (IBAction)btnBarstartGame:(id)sender;
    - (IBAction)btnBarStopPressed:(id)sender;
    - (IBAction)btnLeft:(id)sender;
    - (IBAction)btnRight:(id)sender;

    @property (strong, nonatomic) IBOutlet UIButton *btnLeftOutLet;
    @property (strong, nonatomic) IBOutlet UIButton *btnRightOutLet;

    @property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
    @property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
    @property (strong, nonatomic) NSString *photoFilename;



@end
