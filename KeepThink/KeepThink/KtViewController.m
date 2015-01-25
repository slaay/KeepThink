//
//  KtViewController.m
//  KeepThink
//
//  Created by Presley on 15/01/15.
//  Copyright (c) 2015 SlaaySourceCoders. All rights reserved.
//

#import "KtViewController.h"

@interface KtViewController ()


@property (strong, nonatomic) NSTimer *stopWatchTimer; // Store the timer that fires after a certain time
@property (strong, nonatomic) NSDate *startDate; // Stores the date of the click on the start button *
@property (strong, nonatomic) NSDate *startTimeValue;
@property(strong, nonatomic) NSDate *lastTimeTheQWasChanged;

@property (strong, nonatomic) NSString *currentSide;

@end





@implementation KtViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 // Get a current time for where you want to start measuring from
 NSDate *date = [NSDate date];
 
 // do work...
 
 // Find elapsed time and convert to milliseconds
 // Use (-) modifier to conversion since receiver is earlier than now
 double timePassed_ms = [date timeIntervalSinceNow] * -1000.0;
 
 
 
 */

- (void)updateTimer
{
    // Create date from the elapsed time
    NSDate *currentDate = [NSDate date];
    NSTimeInterval timeInterval = [currentDate timeIntervalSinceDate:self.startDate];
    NSDate *timerDate = [NSDate dateWithTimeIntervalSince1970:timeInterval];
  
   
    // Create a date formatter
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm:ss.SSS"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0.0]];
    
    // Format the elapsed time and set it to the label
    NSString *timeString = [dateFormatter stringFromDate:timerDate];
    self.lblTimer.text = timeString;
    
    //double timePassed_ms = [self.startTimeValue timeIntervalSinceNow] * -1000.0;
    
    
    NSTimeInterval timeInterValOfSeconds = [currentDate timeIntervalSinceDate:self.lastTimeTheQWasChanged];

    if (timeInterValOfSeconds > MAX_SECONDS_COUNT) {
        _btnLeftOutLet.enabled = TRUE;
        _btnRightOutLet.enabled = TRUE;
        
        
       self.lastTimeTheQWasChanged = [NSDate date];
        
       [_btnResultColor setBackgroundColor:[UIColor whiteColor]];
       
        
       NSArray * aNewQuestion = [KtJsonLogic getNextQuestion:1 DiffTypeValue:1];

        // @[_Question, _Category_1, _Category_2, _ImageName, _ImageAnswer];
        _lblQuestion.text = aNewQuestion[INDEX_QUESTION];
        _lblCategory_1.text = aNewQuestion[INDEX_CATEGORY_1];
        _lblcategory_2.text = aNewQuestion[INDEX_CATEGORY_2];
        self.currentSide = aNewQuestion[INDEX_SIDE];
        
        NSLog(@"         ");
        NSLog(@"         ");
        NSLog(@"Question : %@ , Cat 1 %@ , Cat 2 %@, Image %@, Answer %@ ", aNewQuestion[INDEX_QUESTION],aNewQuestion[INDEX_CATEGORY_1], aNewQuestion[INDEX_CATEGORY_2], aNewQuestion[INDEX_IMAGE_NAME], aNewQuestion[INDEX_ANSWER]);
        
        NSString *imgName = aNewQuestion[INDEX_IMAGE_NAME];
        NSString *trimmedImgName = [imgName stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
       
        if ((trimmedImgName.length == 0)) {
        } else {
            _imgQuestion.image = [UIImage imageNamed:trimmedImgName];
        }
        
    }
    
}
- (IBAction)btnBarstartGame:(id)sender {
    self.startDate = [NSDate date];

    // Create the stop watch timer that fires every 10 ms
    self.stopWatchTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/10.0
                                                           target:self
                                                         selector:@selector(updateTimer)
                                                         userInfo:nil
                                                          repeats:YES];
    self.startTimeValue = [NSDate date];
    self.lastTimeTheQWasChanged = [NSDate date];
    self.currentSide = @"";
}

- (IBAction)btnBarStopPressed:(id)sender {
    [self.stopWatchTimer invalidate];
    self.stopWatchTimer = nil;
    [self updateTimer];
    self.lastTimeTheQWasChanged = [NSDate date];
    self.currentSide = @"";
}

- (IBAction)btnLeft:(id)sender {
    if ([self.currentSide isEqualToString:@"1"]){
        [_btnResultColor setBackgroundColor:[UIColor greenColor]];
    } else {
        [_btnResultColor setBackgroundColor:[UIColor redColor]];
    }
    
    _btnLeftOutLet.enabled = FALSE;
    _btnRightOutLet.enabled = FALSE;
}

- (IBAction)btnRight:(id)sender {
    if ([self.currentSide isEqualToString:@"2"]){
        [_btnResultColor setBackgroundColor:[UIColor greenColor]];
    } else {
        [_btnResultColor setBackgroundColor:[UIColor redColor]];
    }
    
    _btnLeftOutLet.enabled = FALSE;
    _btnRightOutLet.enabled = FALSE;
}
@end
