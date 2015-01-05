//
//  SunAndMoonViewController.m
//  SunAndMoon
//
//  Created by Berby on 2011/8/3.
//  Copyright 2011年 Berby Huang. All rights reserved.
//

#import "SunAndMoonViewController.h"

@implementation SunAndMoonViewController


- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];    
}

-(void) viewDidAppear:(BOOL)animated{
    [self.view resignFirstResponder];
	[self becomeFirstResponder];
    isDayLight = true;
    [self.view setBackgroundColor:[UIColor whiteColor]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
	if (event.type == UIEventSubtypeMotionShake) {
        UIView * view1 = [self.view viewWithTag:1];
        UIView * view2 = [self.view viewWithTag:2];
        CGPoint center1 = view1.center;
        CGPoint center2 = view2.center;
        
        [UIView animateWithDuration:1.0 animations:^(void) {
            view1.center = center2;
            view2.center = center1;
        }];
        if(isDayLight){
            isDayLight=false;
            [self.view setBackgroundColor:[UIColor blackColor]];
        }
        else
        {
            isDayLight=true;
            [self.view setBackgroundColor:[UIColor whiteColor]];
        }
            
        
	}
}

-(BOOL)canBecomeFirstResponder {
    return YES;
}

@end
