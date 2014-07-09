//
//  MBFViewController.m
//  Count-Down
//
//  Created by McCawley on 6/26/14.
//  Copyright (c) 2014 Ryan McCawley. All rights reserved.
//

#import "MBFViewController.h"

@interface MBFViewController ()

@end

@implementation MBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //QUESTION #1//
    //[self printAllWholeNumbersBelow:5];
    //QUESTION #2//
    //[self printAllWholeNumbersBetweenFirstInteger:20 andSecondInteger:30];
    //QUESTION #3//
    int answerForFactorial = [self factorialOfInteger:9];
    NSLog(@"%i", answerForFactorial);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//QUESTION 1
-(void)printAllWholeNumbersBelow:(int)number
{
    if (number > 0) {
        for (int i = number; i > 0; i --){
            NSLog(@"%i", i);
        }
    }
}

-(void)printAllWholeNumbersBetweenFirstInteger:(int)firstNumber andSecondInteger:(int)secondNumber
{
    if (firstNumber == secondNumber){
        NSLog(@"Numbers are equal");
    }
    else if (firstNumber > secondNumber){
        for (int i = firstNumber; i >= secondNumber ; i --) {
            NSLog(@"%i", i);
        }
    }
    else{
        for (int i = secondNumber; i >= firstNumber; i --){
            NSLog(@"%i", i);
        }
    }
}

-(int)factorialOfInteger:(int)number
{
    int answer = number;
    for (int i = number; i >1; i --){
        answer = answer * (i -1);
        NSLog(@"i: %i answer: %i", i, answer);
    }
    return answer;
}

@end