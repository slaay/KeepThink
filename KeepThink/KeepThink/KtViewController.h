//
//  KtViewController.h
//  KeepThink
//
//  Created by Presley on 15/01/15.
//  Copyright (c) 2015 SlaaySourceCoders. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KtViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lblTimer;

- (IBAction)btnBarstartGame:(id)sender;
- (IBAction)btnBarStopPressed:(id)sender;

@end
