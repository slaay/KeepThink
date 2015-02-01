//
//  KtAboutSlaayViewController.m
//  KeepThink
//
//  Created by Presley on 18/01/15.
//  Copyright (c) 2015 SlaaySourceCoders. All rights reserved.
//
//http://stackoverflow.com/questions/16589367/open-link-to-facebook-page-from-ios-app
//http://www.plungeinteractive.com/blog/2012/12/31/open-facebook-and-twitter-native-apps-from-your-ios-appgame/
//http://iosdevelopertips.com/cocoa/launching-the-browser-from-within-an-iphone-application.html
//https://graph.facebook.com/slaaysourcecoders
//http://stackoverflow.com/questions/7779672/best-method-to-determine-the-sender-of-an-event

#import "KtAboutSlaayViewController.h"
#import "SWRevealViewController.h"
#import <Twitter/Twitter.h>
#import <Social/Social.h>

@interface KtAboutSlaayViewController ()

@end

@implementation KtAboutSlaayViewController

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

    
    self.title = @"Team Slaay";
    // Change button color
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.1f alpha:0.9f];
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    // Load image
    self.photoImageView.image = [UIImage imageNamed:self.photoFilename];
    
    self.imgSanket.layer.cornerRadius = self.imgSanket.frame.size.width / 2;
    self.imgSanket.clipsToBounds = YES;
    self.imgSanket.layer.borderWidth = 3.0f;
    self.imgSanket.layer.borderColor = [UIColor greenColor].CGColor;

    
    self.imgCasburn.layer.cornerRadius = self.imgCasburn.frame.size.width / 2;
    self.imgCasburn.clipsToBounds = YES;
    self.imgCasburn.layer.borderWidth = 3.0f;
    self.imgCasburn.layer.borderColor = [UIColor greenColor].CGColor;
    
    self.imgAlison.layer.cornerRadius = self.imgAlison.frame.size.width / 2;
    self.imgAlison.clipsToBounds = YES;
    self.imgAlison.layer.borderWidth = 3.0f;
    self.imgAlison.layer.borderColor = [UIColor greenColor].CGColor;
    
    
    self.imgPresley.layer.cornerRadius = self.imgPresley.frame.size.width / 2;
    self.imgPresley.clipsToBounds = YES;
    self.imgPresley.layer.borderWidth = 3.0f;
    self.imgPresley.layer.borderColor = [UIColor greenColor].CGColor;
    
    
    self.imgVidel.layer.cornerRadius = self.imgVidel.frame.size.width / 2;
    self.imgVidel.clipsToBounds = YES;
    self.imgVidel.layer.borderWidth = 3.0f;
    self.imgVidel.layer.borderColor = [UIColor greenColor].CGColor;
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



- (IBAction)btnSocialShare:(id)sender {
   
   
//    if ([sender tag] == 1) {
//        //Sanket Malik
//        NSLog(@"Sanket Malik");
//        facebookURL = [NSURL URLWithString:@"fb://profile/379887218802553"];
//    }
//    else if ([sender tag] == 2) {
//        //Casburn
//        NSLog(@"Casburn");
//        facebookURL = [NSURL URLWithString:@"fb://profile/379887218802553"];
//    }
//    else if ([sender tag] == 3) {
//        //Alison
//        NSLog(@"Alison");
//        facebookURL = [NSURL URLWithString:@"fb://profile/379887218802553"];
//    }
    
    
    if ([sender tag] == 1){
        NSURL *facebookURL = [NSURL URLWithString:LINK_SlaayFB_Profile];
        if ([[UIApplication sharedApplication] canOpenURL:facebookURL]) {
            [[UIApplication sharedApplication] openURL:facebookURL];
        } else {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:LINK_Faceboook]];
        }
    } //Facebook share
    else if ([sender tag] == 2) {
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
    else if ([sender tag] == 3) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:LINK_Github_Profile]];
       
    } //Github
}
@end
