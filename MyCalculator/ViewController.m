//
//  ViewController.m
//  MyCalculator
//
//  Created by Miguel S. Mendoza on 30/11/14.
//  Copyright (c) 2014 NetRunners. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    [[self numbersField] setText:@"0"];
}
-(IBAction)numberButtonDown:(id)sender {
    UIButton *button = (UIButton*) sender;
    NSInteger numberPressed = [[[button titleLabel] text] integerValue];
    NSInteger calculatorValue = [[[self numbersField] text] integerValue];
    calculatorValue = (calculatorValue * 10)+numberPressed;
    [[self numbersField] setText:[NSString stringWithFormat:@"%d",(int)calculatorValue]];
}
-(IBAction)operationButtonDown:(id)sender {
    UIButton *button = (UIButton*) sender;
    operation = [[button titleLabel] text];
    value = [[[self numbersField] text] integerValue];
    [[self numbersField] setText:@"0"];
}
-(IBAction)removeButtonDown:(id)sender {
    NSInteger calculatorValue = [[[self numbersField] text] integerValue];
    calculatorValue = calculatorValue / 10;
    [[self numbersField] setText:[NSString stringWithFormat:@"%d",(int)calculatorValue]];
}
-(IBAction)equalButtonDown:(id)sender {
    NSInteger result = 0;
    NSInteger calculatorValue = [[[self numbersField] text] integerValue];
    if([operation isEqualToString:@"+"]) result = value + calculatorValue;
    else if([operation isEqualToString:@"-"]) result = value - calculatorValue;
    else if([operation isEqualToString:@"*"]) result = value * calculatorValue;
    else if([operation isEqualToString:@"/"]) result = value / calculatorValue;
    [[self numbersField] setText:[NSString stringWithFormat:@"%d",(int)result]];
}
-(IBAction)clearButtonDown:(id)sender {
    [[self numbersField] setText:@"0"];
}

@end
