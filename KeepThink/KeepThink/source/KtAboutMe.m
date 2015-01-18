//
//  KtAboutMe.m
//  KeepThink
//
//  Created by Presley on 17/01/15.
//  Copyright (c) 2015 SlaaySourceCoders. All rights reserved.
//

#import "KtAboutMe.h"

@interface KtAboutMe ()

@end

@implementation KtAboutMe

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
    
    
    self.imgPresley.layer.cornerRadius = self.imgPresley.frame.size.width / 2;
    self.imgPresley.clipsToBounds = YES;
    self.imgPresley.layer.borderWidth = 3.0f;
    self.imgPresley.layer.borderColor = [UIColor greenColor].CGColor;
    
    self.imgVidel.layer.cornerRadius = self.imgPresley.frame.size.width / 2;
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

- (IBAction)btnFaceBook:(id)sender {
    
    NSURL *facebookURL;
    
    if ([sender tag] == 1) {
        //Presley
        NSLog(@"Lee");
        facebookURL = [NSURL URLWithString:@"fb://profile/379887218802553"];

    }
    else if ([sender tag] == 2) {
        //Videl
         NSLog(@"Videl");
        facebookURL = [NSURL URLWithString:@"fb://profile/379887218802553"];

    }
    

    if ([[UIApplication sharedApplication] canOpenURL:facebookURL]) {
        [[UIApplication sharedApplication] openURL:facebookURL];
    } else {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.facebook.com/slaaysourcecoders"]];
    }
  
}
@end
