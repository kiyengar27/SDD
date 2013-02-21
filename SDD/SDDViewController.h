//
//  SDDViewController.h
//  SDD
//
//  Created by Iyengar, Karthik on 2/21/13.
//  Copyright (c) 2013 Ravikumar, Roshnee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SDDViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tbUserId;
@property (weak, nonatomic) IBOutlet UITextField *tbPassword;
-(IBAction)textFieldShouldReturn:(id)sender;
-(IBAction)backgroundShouldBeTouched:(id)sender;

-(IBAction)Login:(id)sender;
@end
