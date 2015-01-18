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
    // Do any additional setup after loading the view.
    
    
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

- (IBAction)btnFacebook:(id)sender {
    
    
    NSURL *facebookURL;
    
    if ([sender tag] == 3) {
        //Sanket Malik
        NSLog(@"Sanket Malik");
        facebookURL = [NSURL URLWithString:@"fb://profile/379887218802553"];
    }
    else if ([sender tag] == 4) {
        //Casburn
        NSLog(@"Casburn");
        facebookURL = [NSURL URLWithString:@"fb://profile/379887218802553"];
    }
    else if ([sender tag] == 5) {
        //Alison
        NSLog(@"Alison");
        facebookURL = [NSURL URLWithString:@"fb://profile/379887218802553"];
    }
    
    
    if ([[UIApplication sharedApplication] canOpenURL:facebookURL]) {
        [[UIApplication sharedApplication] openURL:facebookURL];
    } else {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.facebook.com/slaaysourcecoders"]];
    }
}
@end
