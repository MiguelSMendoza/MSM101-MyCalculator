//
//  ViewController.h
//  MyCalculator
//
//  Created by Miguel S. Mendoza on 30/11/14.
//  Copyright (c) 2014 NetRunners. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSString* operation;
    NSInteger value;
}

@property (weak, nonatomic) IBOutlet UILabel *numbersField;

-(IBAction)numberButtonDown:(id)sender;
-(IBAction)equalButtonDown:(id)sender;
-(IBAction)operationButtonDown:(id)sender;
-(IBAction)clearButtonDown:(id)sender;
-(IBAction)removeButtonDown:(id)sender;

@end

