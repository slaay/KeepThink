//
//  KtJsonLogic.m
//  KeepThink
//
//  Created by Presley on 22/01/15.
//  Copyright (c) 2015 SlaaySourceCoders. All rights reserved.
//

#import "KtJsonLogic.h"

@implementation KtJsonLogic





/*Lee : Use this function to drop number of pin based on the argument sent by the user*/
+(NSArray *)getNextQuestion:(int)questionByCount DiffTypeValue:(int)DifficultyType{
    
    //Read from the JSON file
   NSString *filePath = [[NSBundle mainBundle] pathForResource:jsonFileText ofType:nil];
   
    
    
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    

    
    //Drop the pins : Fire in the hole!
    NSString *randomQuestionIndex;
    
    for (NSString *outerKey in jsonDictionary.allKeys) {
        
        NSDictionary *slot = [jsonDictionary valueForKey:outerKey];
        
        //Q : How many random number shall i get?
        //A : As many as the object count for the inner array
        //create an array and fill the array with random numbers
        NSMutableArray *arrayOfRandomQuestions = [NSMutableArray array];
        for (int i = 0; i < 10; i++) {
            [arrayOfRandomQuestions addObject: [NSNumber numberWithInt: arc4random() % slot.count]];
        }
        
        
        for (int j=0; j <= arrayOfRandomQuestions.count -1; j++){
            
            randomQuestionIndex =  [NSString stringWithFormat:@"%@", [arrayOfRandomQuestions objectAtIndex:j]];
            
            if (randomQuestionIndex == 0) {
                continue;
            }
            
            
            NSLog(@"The random number at Position %d is %@", j, randomQuestionIndex);
            
            NSDictionary *innerDictionary = [slot valueForKey:randomQuestionIndex];
            
            // code
            NSString * _Question = [innerDictionary valueForKey:keyQuestion];
            NSString * _Category_1 = [innerDictionary valueForKey:keyCatgory_1];
            NSString * _Category_2 = [innerDictionary valueForKey:keyCategory_2];
            NSString * _ImageName = [innerDictionary valueForKey:keyImageName];
            NSString * _ImageAnswer = [innerDictionary valueForKey:keyAnswer];
            NSString * _Side = [innerDictionary valueForKey:keySide];
            
            
            NSLog(@"_Question : %@, _Category_1 : %@, _Category_2 %@ , _ImageName %@, _ImageAnswer %@ , _Side %@:",_Question, _Category_1, _Category_2, _ImageName, _ImageAnswer, _Side);
            
            NSString *trimmedQuestion = [_Question stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
            
            if ((trimmedQuestion.length == 0)) {
                //If the question is blank, well no point in asking nu?
                continue;
            } else {
                //Fill up the array
                NSArray *arrayOfQuestionDetails = @[_Question, _Category_1, _Category_2, _ImageName, _ImageAnswer, _Side];
                return arrayOfQuestionDetails;

            }
            
        }
        
    }
    
    return 0;
};


@end
