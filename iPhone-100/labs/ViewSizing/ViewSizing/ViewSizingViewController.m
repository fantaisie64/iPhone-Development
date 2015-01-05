//
//  ViewSizingViewController.m
//  ViewSizing
//
//  Created by FANTAISIE on 2011/3/20.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "ViewSizingViewController.h"

@implementation ViewSizingViewController

-(IBAction) originalButtonPressed
{
	NSLog(@"Original button pressed");
	targetView.bounds = orgSize;
}

-(IBAction) biggerButtonPressed
{
	NSLog(@"Bigger button pressed");
	CGRect newSize =  targetView.bounds;
	newSize = CGRectMake(0, 0, newSize.size.width*1.5, newSize.size.height*1.5);
	
	targetView.bounds = newSize;
}

-(IBAction) smallerButtonPressed
{
	NSLog(@"Smaller button pressed");
	CGRect newSize =  targetView.bounds;
	newSize = CGRectMake(0, 0, newSize.size.width/1.5, newSize.size.height/1.5);
	
	targetView.bounds = newSize;
}

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
    orgSize = targetView.bounds;
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

@end
