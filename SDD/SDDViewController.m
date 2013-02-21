//
//  SDDViewController.m
//  SDD
//
//  Created by Iyengar, Karthik on 2/21/13.
//  Copyright (c) 2013 Ravikumar, Roshnee. All rights reserved.
//

#import "SDDViewController.h"

@interface SDDViewController ()
-(void) ClearTextBox;

@end

@implementation SDDViewController

@synthesize tbUserId;
@synthesize tbPassword;

-(void) ClearTextBox
{
    [tbUserId resignFirstResponder];
    [tbPassword resignFirstResponder];
}

-(IBAction)textFieldShouldReturn:(id)sender
{
    [sender resignFirstResponder];
}

-(IBAction)backgroundShouldBeTouched:(id)sender{
    [self ClearTextBox];
}

-(IBAction)Login:(id)sender
{
    [self ClearTextBox];
    NSString *userId = tbUserId.text;
    NSString *password = tbPassword.text;
    
    NSString *message =[[NSString alloc] initWithFormat:@"UserId = %@ \nPassword = %@",userId,password];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Login values" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    
}

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

@end
