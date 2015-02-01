//
//  KtSocialShareViewController.m
//  KeepThink
//
//  Created by Presley on 26/01/15.
//  Copyright (c) 2015 SlaaySourceCoders. All rights reserved.
//

#import "KtSocialShareViewController.h"
#import "SWRevealViewController.h"
#import "DWBubbleMenuButton.h"
#import <Twitter/Twitter.h>
#import <Social/Social.h>

@interface KtSocialShareViewController ()

@end

@implementation KtSocialShareViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Change button color
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.1f alpha:0.9f];
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    // Load image
    self.photoImageView.image = [UIImage imageNamed:self.photoFilename];
    
    
    
    
    
    // Create up menu button
    UILabel *homeLabel = [self createHomeButtonView];
    
    DWBubbleMenuButton *upMenuView = [[DWBubbleMenuButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width - homeLabel.frame.size.width - 20.f,
                                                                                          self.view.frame.size.height - homeLabel.frame.size.height - 20.f,
                                                                                          homeLabel.frame.size.width,
                                                                                          homeLabel.frame.size.height)
                                                            expansionDirection:DirectionUp];
    upMenuView.homeButtonView = homeLabel;
    
    [upMenuView addButtons:[self createDemoButtonArray]];
    
    [self.view addSubview:upMenuView];
}

- (UILabel *)createHomeButtonView {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0.f, 0.f, 120.f, 120.f)];
    
    label.text = @"Tap to share";
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.layer.cornerRadius = label.frame.size.height / 2.f;
    label.backgroundColor =[UIColor colorWithRed:0.f green:0.f blue:0.f alpha:0.5f];
    label.clipsToBounds = YES;
    
    return label;
}

- (NSArray *)createDemoButtonArray {
    NSMutableArray *buttonsMutable = [[NSMutableArray alloc] init];
    
    
    //facebook
    UIButton *btnFacebook = [UIButton buttonWithType:UIButtonTypeSystem];
    UIImage *btnImage = [UIImage imageNamed:@"facebook_.png"];
    
    [btnFacebook setTitle:@"" forState:UIControlStateNormal];
    btnFacebook.frame = CGRectMake(0.f, 0.f, 32.f, 32.f);
    btnFacebook.tag = 0;
    
    [btnFacebook setBackgroundImage:btnImage forState:UIControlStateNormal];
    [btnFacebook addTarget:self action:@selector(test:) forControlEvents:UIControlEventTouchUpInside];
    [buttonsMutable addObject:btnFacebook];
    
    //Twitter
    UIButton *btnTwitter = [UIButton buttonWithType:UIButtonTypeSystem];
    [btnTwitter setTitle:@"" forState:UIControlStateNormal];
    btnTwitter.frame = CGRectMake(0.f, 0.f, 32.f, 32.f);
    btnTwitter.tag = 1;
    btnImage = [UIImage imageNamed:@"twitter_.png"];
    [btnTwitter setBackgroundImage:btnImage forState:UIControlStateNormal];
    [btnTwitter addTarget:self action:@selector(test:) forControlEvents:UIControlEventTouchUpInside];
    [buttonsMutable addObject:btnTwitter];
    
    
    
    return [buttonsMutable copy];
}


- (void)test:(UIButton *)sender {
    NSLog(@"Button tapped, tag: %ld", (long)sender.tag);
    
    if ([sender tag] == 0){
        
        NSURL *facebookURL = [NSURL URLWithString:LINK_SlaayFB_Profile];
        if ([[UIApplication sharedApplication] canOpenURL:facebookURL]) {
            [[UIApplication sharedApplication] openURL:facebookURL];
        } else {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:LINK_Faceboook]];
        }
    } //Facebook share
    else if ([sender tag] == 1) {
        if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
        {
            SLComposeViewController *tweetSheet = [SLComposeViewController
                                                   composeViewControllerForServiceType:SLServiceTypeTwitter];
            if (tweetSheet){
                [tweetSheet addImage:[UIImage imageNamed:@"KeepThinkLogo.png"]];
                [tweetSheet addURL:[NSURL URLWithString:LINK_SLaaySourcecoders]];
                [tweetSheet setInitialText:SHARE_text];
                
                [tweetSheet setCompletionHandler:^(SLComposeViewControllerResult result) {
                    if (result == SLComposeViewControllerResultDone) {
                        NSLog(@"Posted");
                    } else if (result == SLComposeViewControllerResultCancelled) {
                        NSLog(@"Post Cancelled");
                    } else {
                        NSLog(@"Post Failed");
                    }
                }];
                
                [self presentViewController:tweetSheet animated:YES completion:nil];
                
            }
            
            
        } else {
            if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7)
            { SLComposeViewController *tweetSheet = [SLComposeViewController
                                                     composeViewControllerForServiceType:SLServiceTypeTwitter];
                [tweetSheet setInitialText:SHARE_text];
                
                [self presentViewController:tweetSheet animated:YES completion:nil];
                
                
                //inform the user that no account is configured with alarm view.
            }
            
        }
        
    } //Twitter share
   
}

- (UIButton *)createButtonWithName:(NSString *)imageName {
    UIButton *button = [[UIButton alloc] init];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button sizeToFit];
    
    [button addTarget:self action:@selector(test:) forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
