//
//  KtThirdPartyViewController.m
//  KeepThink
//
//  Created by Presley on 18/01/15.
//  Copyright (c) 2015 SlaaySourceCoders. All rights reserved.
//

#import "KtThirdPartyViewController.h"

@interface KtThirdPartyViewController ()

@end

@implementation KtThirdPartyViewController

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

- (IBAction)btnWikipedia:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://en.wikipedia.org"];
    [[UIApplication sharedApplication] openURL:url];
   
}

- (IBAction)btnPixelLove:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://www.pixellove.com"];
    [[UIApplication sharedApplication] openURL:url];
}
@end
